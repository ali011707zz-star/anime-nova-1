import type { Request, Response, NextFunction } from "express";
type Waiter = { resolve: () => void; req: Request; cancelled: boolean; availability: boolean };
const maxActive = Math.max(1, Number(process.env.SCRAPER_CONCURRENCY || 4));
// Availability scans are useful picker hints, but must never occupy every slot
// needed by an explicit playback request.
const maxAvailabilityActive = Math.max(1, maxActive - 1);
const maxQueued = Math.max(1, Number(process.env.SCRAPER_QUEUE_MAX || 24));
let active = 0, availabilityActive = 0, accepted = 0, rejected = 0, completed = 0, cancelled = 0, peakQueued = 0;
const waiters: Waiter[] = [];
const availabilityWaiters: Waiter[] = [];
export function scraperQueueStats() {
  return {
    active,
    availabilityActive,
    queued: waiters.length + availabilityWaiters.length,
    maxActive,
    maxAvailabilityActive,
    maxQueued,
    accepted,
    rejected,
    completed,
    cancelled,
    peakQueued,
  };
}
export function scraperQueueMiddleware(req: Request, res: Response, next: NextFunction) {
  const queueStartedAt = Date.now();
  const playbackTrace = String(req.query.trace || "");
  const traceQueuedPlayback = req.path.endsWith("/anime/fetch-source")
    && /^[a-z0-9._:-]{1,96}$/i.test(playbackTrace);
  const availability = req.path.endsWith("/anime/sources-stream")
    && String(req.query.mode || "").toLowerCase() === "check";
  let waiter: Waiter;
  const removeWaiter = (queue: Waiter[]) => {
    const index = queue.indexOf(waiter);
    if (index >= 0) queue.splice(index, 1);
  };
  const cancel = () => {
    if (waiter.cancelled) return;
    waiter.cancelled = true;
    removeWaiter(waiters);
    removeWaiter(availabilityWaiters);
    cancelled++;
  };
  const enter = () => {
    if (waiter.cancelled) return;
    req.removeListener("close", cancel);
    if (traceQueuedPlayback) {
      console.info(
        `[playback-trace] id=${playbackTrace} route=fetch-source stage=queue_wait elapsed_ms=${Date.now() - queueStartedAt}`,
      );
    }
    active++;
    accepted++;
    if (waiter.availability) availabilityActive++;
    let released = false;
    const release = () => {
      if (released) return;
      released = true;
      active--;
      if (waiter.availability) availabilityActive--;
      completed++;
      dispatch();
    };
    res.once("finish", release); res.once("close", release); next();
  };
  waiter = { resolve: enter, req, cancelled: false, availability };

  const dispatch = () => {
    while (active < maxActive) {
      let candidate: Waiter | undefined;
      while (waiters.length && !candidate) {
        const item = waiters.shift()!;
        if (!item.cancelled) candidate = item;
      }
      if (candidate) {
        candidate.resolve();
        continue;
      }
      if (availabilityActive >= maxAvailabilityActive) return;
      while (availabilityWaiters.length && !candidate) {
        const item = availabilityWaiters.shift()!;
        if (!item.cancelled) candidate = item;
      }
      if (!candidate) return;
      candidate.resolve();
    }
  };

  const normalWaiting = waiters.some(item => !item.cancelled);
  const canEnterImmediately = active < maxActive
    && !normalWaiting
    && (!availability || availabilityActive < maxAvailabilityActive);
  if (canEnterImmediately) {
    enter();
  } else {
    if (waiters.length + availabilityWaiters.length >= maxQueued) {
      rejected++;
      res.setHeader("Retry-After", "5");
      res.status(429).json({
        error: "Scraper queue is busy",
        code: "SCRAPER_QUEUE_FULL",
        retryAfterSeconds: 5,
      });
      return;
    }
    req.once("close", cancel);
    (availability ? availabilityWaiters : waiters).push(waiter);
    const queued = waiters.length + availabilityWaiters.length;
    peakQueued = Math.max(peakQueued, queued);
  }
}

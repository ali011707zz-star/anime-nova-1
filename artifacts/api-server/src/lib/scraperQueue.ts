import type { Request, Response, NextFunction } from "express";
type Waiter = { resolve: () => void; req: Request; cancelled: boolean; priority: number; sequence: number };
const maxActive = Math.max(1, Number(process.env.SCRAPER_CONCURRENCY || 4));
const maxQueued = Math.max(1, Number(process.env.SCRAPER_QUEUE_MAX || 24));
let active = 0, accepted = 0, rejected = 0, completed = 0, cancelled = 0, peakQueued = 0;
let sequence = 0;
const waiters: Waiter[] = [];
const FAST_SOURCE_SITES = new Set(["megaplay", "sanime"]);
function requestPriority(req: Request): number {
  const path = req.path || "";
  const site = String(req.query?.site || "").trim().toLowerCase();
  return path.endsWith("/fetch-source") && FAST_SOURCE_SITES.has(site) ? 10 : 0;
}
export function scraperQueueStats() { return { active, queued: waiters.length, maxActive, maxQueued, accepted, rejected, completed, cancelled, peakQueued }; }
export function scraperQueueMiddleware(req: Request, res: Response, next: NextFunction) {
  if (active >= maxActive && waiters.length >= maxQueued) {
    rejected++; res.setHeader("Retry-After", "5");
    res.status(429).json({ error: "Scraper queue is busy", code: "SCRAPER_QUEUE_FULL", retryAfterSeconds: 5 }); return;
  }
  let waiter: Waiter;
  const cancel = () => { if (waiter.cancelled) return; waiter.cancelled = true; const i = waiters.indexOf(waiter); if (i >= 0) waiters.splice(i, 1); cancelled++; };
  const enter = () => {
    if (waiter.cancelled) return; res.removeListener("close", cancel); active++; accepted++;
    let released = false;
    const release = () => {
      if (released) return; released = true; active--; completed++;
      let nextWaiter: Waiter | undefined;
      while (waiters.length && !nextWaiter) { const candidate = waiters.shift()!; if (!candidate.cancelled) nextWaiter = candidate; }
      if (nextWaiter) nextWaiter.resolve();
    };
    res.once("finish", release); res.once("close", release); next();
  };
  waiter = { resolve: enter, req, cancelled: false, priority: requestPriority(req), sequence: sequence++ };
  if (active < maxActive) enter();
  else {
    res.once("close", cancel);
    waiters.push(waiter);
    // Keep normal scraper work bounded, but let the user's explicit MP/SA
    // click pass queued heavyweight providers first.
    waiters.sort((a, b) => b.priority - a.priority || a.sequence - b.sequence);
    peakQueued = Math.max(peakQueued, waiters.length);
  }
}

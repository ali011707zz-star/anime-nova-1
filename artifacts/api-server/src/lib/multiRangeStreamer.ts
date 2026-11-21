import type { Request as ExpressRequest, Response as ExpressResponse } from "express";
import { setMaxListeners } from "node:events";
import { Readable } from "node:stream";
import { pipeline } from "node:stream/promises";

export interface MultiRangeStreamOptions {
  url: string;
  upstreamHeaders: Record<string, string>;
  req: ExpressRequest;
  res: ExpressResponse;
  isDownload?: boolean;
  chunkSize?: number;
  workers?: number;
  maxAheadChunks?: number;
  fallbackCfFetch?: (rangeHeader?: string, signal?: AbortSignal) => Promise<Response | null>;
  onUpstreamCheck?: (r: Response, currentUrl: string, headers: Record<string, string>, signal: AbortSignal) => Promise<{ url: string; response: Response } | null>;
}

const TRANSIENT_STATUSES = new Set([408, 429, 500, 502, 503, 504, 520, 522, 524]);

function pickHostWorkers(url: string, explicitWorkers?: number): number {
  if (typeof explicitWorkers === "number" && explicitWorkers >= 1) return explicitWorkers;
  try {
    const host = new URL(url).hostname.toLowerCase();
    // SAnime rejects concurrent Range requests from one IP.
    if (host === "server.sanime.net" || host.endsWith(".sanime.net")) return 1;
    if (host.includes("pixeldrain.com")) return 20;
    if (host.includes("mediafire.com")) return 16;
    if (host.includes("mxcontent.net")) return 14;
    if (host.includes("krakencloud.net")) return 12;
  } catch {}
  return 14;
}

function normalizeContentType(rawCt: string | null, url: string): string {
  let ct = rawCt || "video/mp4";
  if (
    (ct === "application/octet-stream" || ct === "binary/octet-stream") &&
    (/\.mp4(\?|$)/i.test(url) || /pyramid\.surf|buzzheavier|buzzheav\.com|pixeldrain|mediafire|mxcontent/i.test(url))
  ) {
    ct = "video/mp4";
  }
  return ct;
}

async function fetchWithConnectTimeout(
  fetchFn: (signal: AbortSignal) => Promise<Response>,
  parentSignal: AbortSignal,
  timeoutMs: number,
): Promise<Response> {
  const ac = new AbortController();
  const onParentAbort = () => ac.abort();
  if (parentSignal.aborted) ac.abort();
  else parentSignal.addEventListener("abort", onParentAbort, { once: true });
  const tid = setTimeout(() => ac.abort(new Error("connect_timeout")), timeoutMs);
  try {
    return await fetchFn(ac.signal);
  } finally {
    clearTimeout(tid);
    parentSignal.removeEventListener("abort", onParentAbort);
  }
}

async function waitDrainOrAbort(res: ExpressResponse, signal: AbortSignal): Promise<void> {
  if (signal.aborted || res.destroyed || res.writableEnded) return;
  await new Promise<void>((resolve, reject) => {
    const onDrain = () => {
      cleanup();
      resolve();
    };
    const onClose = () => {
      cleanup();
      reject(new Error("client_closed"));
    };
    const onErr = (err: Error) => {
      cleanup();
      reject(err);
    };
    const onAbort = () => {
      cleanup();
      reject(new Error("aborted"));
    };
    const cleanup = () => {
      res.removeListener("drain", onDrain);
      res.removeListener("close", onClose);
      res.removeListener("error", onErr);
      signal.removeEventListener("abort", onAbort);
    };
    res.once("drain", onDrain);
    res.once("close", onClose);
    res.once("error", onErr);
    signal.addEventListener("abort", onAbort, { once: true });
  });
}

export async function streamMultiRangeMediaVPS(opts: MultiRangeStreamOptions): Promise<void> {
  const {
    upstreamHeaders,
    req,
    res,
    isDownload = false,
    chunkSize = 512 * 1024,
    maxAheadChunks = 24,
    fallbackCfFetch,
    onUpstreamCheck,
  } = opts;
  let targetUrl = opts.url;

  const clientAbort = new AbortController();
  try { setMaxListeners(64, clientAbort.signal); } catch {}
  const abortAll = () => clientAbort.abort();
  res.once("close", abortAll);
  req.once("aborted", abortAll);

  try {
    const rawRange = typeof req.headers.range === "string" ? req.headers.range.trim() : "";
    const rangeMatch = rawRange ? /^bytes=(\d+)-(\d*)$/i.exec(rawRange) : null;
    const isUnsupportedRangeSyntax = Boolean(rawRange && !rangeMatch);

    const workers = isUnsupportedRangeSyntax ? 1 : pickHostWorkers(targetUrl, opts.workers);

    const baseHeaders: Record<string, string> = { ...upstreamHeaders };
    delete baseHeaders.Range;
    delete baseHeaders.range;

    const reqStart = rangeMatch ? Number(rangeMatch[1]) : 0;
    const reqEnd = rangeMatch?.[2] ? Number(rangeMatch[2]) : null;
    const hasClientRange = Boolean(rangeMatch);

    const fetchUpstreamRange = async (rangeStr: string | undefined, timeoutMs: number): Promise<Response> => {
      const hdrs = rangeStr ? { ...baseHeaders, Range: rangeStr } : { ...baseHeaders };
      const attemptDirect = async () =>
        fetchWithConnectTimeout(
          (sig) => fetch(targetUrl, { headers: hdrs, signal: sig, redirect: "follow" }),
          clientAbort.signal,
          timeoutMs,
        );

      let resp: Response;
      try {
        resp = await attemptDirect();
        if ((TRANSIENT_STATUSES.has(resp.status) || resp.status === 403) && !clientAbort.signal.aborted && fallbackCfFetch) {
          try { await resp.body?.cancel(); } catch {}
          await new Promise((r) => setTimeout(r, 200));
          const cfResp = await fallbackCfFetch(rangeStr, clientAbort.signal);
          if (cfResp && (cfResp.ok || cfResp.status === 206)) return cfResp;
          try { await cfResp?.body?.cancel(); } catch {}
          resp = await attemptDirect();
        }
      } catch (err) {
        if (clientAbort.signal.aborted) throw err;
        if (fallbackCfFetch) {
          const cfResp = await fallbackCfFetch(rangeStr, clientAbort.signal);
          if (cfResp && (cfResp.ok || cfResp.status === 206)) return cfResp;
          try { await cfResp?.body?.cancel(); } catch {}
        }
        throw err;
      }
      return resp;
    };

    // Single-connection mode (e.g. Sanime or suffix byte-ranges)
    if (workers <= 1) {
      const hdrs = rawRange ? { ...baseHeaders, Range: rawRange } : { ...baseHeaders };
      let r = await fetchUpstreamRange(rawRange || undefined, 35_000);
      if (onUpstreamCheck) {
        const checked = await onUpstreamCheck(r, targetUrl, hdrs, clientAbort.signal);
        if (checked) {
          targetUrl = checked.url;
          r = checked.response;
        }
      }
      res.setHeader("Access-Control-Allow-Origin", "*");
      res.setHeader("Access-Control-Expose-Headers", "Content-Length,Content-Range,Content-Type,Content-Disposition");
      res.setHeader("Content-Type", normalizeContentType(r.headers.get("content-type"), targetUrl));
      const ar = r.headers.get("accept-ranges");
      if (ar) res.setHeader("Accept-Ranges", ar);
      const cl = r.headers.get("content-length");
      if (cl) res.setHeader("Content-Length", cl);
      if (r.status === 206) {
        const cr = r.headers.get("content-range");
        if (cr) res.setHeader("Content-Range", cr);
      }
      if (isDownload) {
        res.setHeader("Content-Disposition", 'attachment; filename="nova-episode.mp4"');
      }
      res.status(r.status === 206 ? 206 : (r.ok ? 200 : r.status));
      if (!r.body) {
        res.end();
        return;
      }
      await pipeline(Readable.fromWeb(r.body as any, { highWaterMark: 256 * 1024 }), res);
      return;
    }

    // Probe chunk 0 using Range to test partial-content acceleration support
    const firstRangeEnd = reqEnd !== null ? Math.min(reqEnd, reqStart + chunkSize - 1) : reqStart + chunkSize - 1;
    let r0 = await fetchUpstreamRange(`bytes=${reqStart}-${firstRangeEnd}`, 30_000);
    if (onUpstreamCheck) {
      const checked = await onUpstreamCheck(r0, targetUrl, { ...baseHeaders, Range: `bytes=${reqStart}-${firstRangeEnd}` }, clientAbort.signal);
      if (checked) {
        targetUrl = checked.url;
        r0 = checked.response;
      }
    }

    const ct = normalizeContentType(r0.headers.get("content-type"), targetUrl);
    const crHeader = r0.headers.get("content-range") || "";
    const crMatch = /^bytes\s+(\d+)-(\d+)\/(\d+)$/i.exec(crHeader.trim());
    const crStart = crMatch ? Number(crMatch[1]) : -1;
    const totalSize = crMatch ? Number(crMatch[3]) : -1;

    // Fallback to direct piping if server did not honor Range 206 or it's a playlist/non-range response
    if (
      r0.status !== 206 ||
      !crMatch ||
      crStart !== reqStart ||
      !Number.isSafeInteger(totalSize) ||
      totalSize <= 0 ||
      /m3u8|mpegurl/i.test(ct)
    ) {
      res.setHeader("Access-Control-Allow-Origin", "*");
      res.setHeader("Access-Control-Expose-Headers", "Content-Length,Content-Range,Content-Type,Content-Disposition");
      res.setHeader("Content-Type", ct);
      const ar = r0.headers.get("accept-ranges");
      if (ar) res.setHeader("Accept-Ranges", ar);
      const cl = r0.headers.get("content-length");
      if (cl) res.setHeader("Content-Length", cl);
      if (r0.status === 206 && crHeader) res.setHeader("Content-Range", crHeader);
      if (isDownload) {
        res.setHeader("Content-Disposition", 'attachment; filename="nova-episode.mp4"');
      }
      res.status(r0.status === 206 ? 206 : (r0.ok ? 200 : r0.status));
      if (!r0.body) {
        res.end();
        return;
      }
      await pipeline(Readable.fromWeb(r0.body as any, { highWaterMark: 256 * 1024 }), res);
      return;
    }

    const effectiveEnd = reqEnd !== null ? Math.min(reqEnd, totalSize - 1) : totalSize - 1;
    if (reqStart > effectiveEnd || reqStart >= totalSize) {
      try { await r0.body?.cancel(); } catch {}
      res.status(416).setHeader("Content-Range", `bytes */${totalSize}`).end();
      return;
    }

    const firstBuf = Buffer.from(await r0.arrayBuffer());
    const totalOutBytes = effectiveEnd - reqStart + 1;

    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Expose-Headers", "Content-Length,Content-Range,Content-Type,Content-Disposition");
    res.setHeader("Content-Type", ct);
    res.setHeader("Accept-Ranges", "bytes");
    res.setHeader("Content-Length", String(totalOutBytes));
    if (isDownload) {
      res.setHeader("Content-Disposition", 'attachment; filename="nova-episode.mp4"');
    }
    if (hasClientRange) {
      res.setHeader("Content-Range", `bytes ${reqStart}-${effectiveEnd}/${totalSize}`);
      res.status(206);
    } else {
      res.status(200);
    }

    if (firstBuf.length > 0) {
      const ok = res.write(firstBuf);
      if (!ok) await waitDrainOrAbort(res, clientAbort.signal);
    }

    const nextByte = reqStart + firstBuf.length;
    if (nextByte > effectiveEnd) {
      res.end();
      return;
    }

    const chunks: Array<{ start: number; end: number }> = [];
    for (let s = nextByte; s <= effectiveEnd; s += chunkSize) {
      chunks.push({ start: s, end: Math.min(effectiveEnd, s + chunkSize - 1) });
    }

    const ready = new Map<number, Buffer>();
    let nextFetchIdx = 0;
    let nextWriteIdx = 0;
    let fatalError: Error | null = null;
    let activeWorkersLimit = Math.min(workers, chunks.length);
    let throttleCount = 0;

    const spaceWaiters: Array<() => void> = [];
    const dataWaiters: Array<() => void> = [];

    const wakeSpace = () => {
      while (spaceWaiters.length) spaceWaiters.shift()?.();
    };
    const wakeData = () => {
      while (dataWaiters.length) dataWaiters.shift()?.();
    };

    const waitForWindowSpace = (idx: number) =>
      new Promise<void>((resolve) => {
        if (clientAbort.signal.aborted || fatalError || idx < nextWriteIdx + maxAheadChunks) {
          resolve();
          return;
        }
        const onAbort = () => resolve();
        clientAbort.signal.addEventListener("abort", onAbort, { once: true });
        spaceWaiters.push(() => {
          clientAbort.signal.removeEventListener("abort", onAbort);
          resolve();
        });
      });

    const waitForReadyChunk = (idx: number) =>
      new Promise<void>((resolve) => {
        if (clientAbort.signal.aborted || fatalError || ready.has(idx)) {
          resolve();
          return;
        }
        const onAbort = () => resolve();
        clientAbort.signal.addEventListener("abort", onAbort, { once: true });
        dataWaiters.push(() => {
          clientAbort.signal.removeEventListener("abort", onAbort);
          resolve();
        });
      });

    const fetchChunkWithRetry = async (start: number, end: number): Promise<Buffer> => {
      const expectedLen = end - start + 1;
      let lastErr: unknown = null;
      for (let attempt = 0; attempt < 4; attempt++) {
        if (clientAbort.signal.aborted) throw new Error("aborted");
        if (attempt > 0) {
          await new Promise((r) => setTimeout(r, 250 * attempt));
        }
        const ac = new AbortController();
        const onParentAbort = () => ac.abort();
        clientAbort.signal.addEventListener("abort", onParentAbort, { once: true });
        const tid = setTimeout(() => ac.abort(new Error("chunk_timeout")), 16_000);
        try {
          let r = await fetch(targetUrl, {
            headers: { ...baseHeaders, Range: `bytes=${start}-${end}` },
            signal: ac.signal,
            redirect: "follow",
          });
          if ((r.status === 403 || TRANSIENT_STATUSES.has(r.status)) && fallbackCfFetch && !clientAbort.signal.aborted) {
            try { await r.body?.cancel(); } catch {}
            if (r.status === 429 || r.status === 503) {
              throttleCount++;
              if (throttleCount % 3 === 0 && activeWorkersLimit > 4) {
                activeWorkersLimit = Math.max(4, Math.floor(activeWorkersLimit * 0.7));
              }
            }
            const cfR = await fallbackCfFetch(`bytes=${start}-${end}`, ac.signal);
            if (cfR && (cfR.ok || cfR.status === 206)) r = cfR;
          }
          if (r.status !== 206 && r.status !== 200) {
            try { await r.body?.cancel(); } catch {}
            throw new Error(`HTTP ${r.status}`);
          }
          const buf = Buffer.from(await r.arrayBuffer());
          if (buf.length === 0) throw new Error("empty_chunk");
          // If server returned 200 full body for a range request, slice just our window
          if (r.status === 200 && buf.length > expectedLen && start + expectedLen <= buf.length) {
            return buf.subarray(start, start + expectedLen);
          }
          return buf;
        } catch (err) {
          lastErr = err;
        } finally {
          clearTimeout(tid);
          clientAbort.signal.removeEventListener("abort", onParentAbort);
        }
      }
      throw lastErr instanceof Error ? lastErr : new Error(String(lastErr || "chunk_failed"));
    };

    const workerPool = Promise.all(
      Array.from({ length: Math.min(workers, chunks.length) }, async (_, workerId) => {
        while (!clientAbort.signal.aborted && !fatalError) {
          if (workerId >= activeWorkersLimit) {
            await new Promise((r) => setTimeout(r, 200));
            if (workerId >= activeWorkersLimit) continue;
          }
          const idx = nextFetchIdx++;
          if (idx >= chunks.length) break;
          while (!clientAbort.signal.aborted && !fatalError && idx >= nextWriteIdx + maxAheadChunks) {
            await waitForWindowSpace(idx);
          }
          if (clientAbort.signal.aborted || fatalError) break;
          try {
            const buf = await fetchChunkWithRetry(chunks[idx].start, chunks[idx].end);
            if (clientAbort.signal.aborted || fatalError) break;
            ready.set(idx, buf);
            wakeData();
          } catch (err) {
            if (!clientAbort.signal.aborted && !fatalError) {
              fatalError = err instanceof Error ? err : new Error(String(err));
              wakeData();
              wakeSpace();
            }
            break;
          }
        }
      }),
    );

    while (nextWriteIdx < chunks.length && !clientAbort.signal.aborted && !fatalError) {
      if (!ready.has(nextWriteIdx)) {
        await waitForReadyChunk(nextWriteIdx);
        continue;
      }
      const buf = ready.get(nextWriteIdx)!;
      ready.delete(nextWriteIdx);
      nextWriteIdx++;
      wakeSpace();
      const ok = res.write(buf);
      if (!ok) {
        await waitDrainOrAbort(res, clientAbort.signal);
      }
    }

    await workerPool;
    if (fatalError && !res.destroyed && !res.writableEnded) {
      res.destroy(fatalError);
      return;
    }
    if (!res.destroyed && !res.writableEnded) {
      res.end();
    }
  } finally {
    res.removeListener("close", abortAll);
    req.removeListener("aborted", abortAll);
  }
}

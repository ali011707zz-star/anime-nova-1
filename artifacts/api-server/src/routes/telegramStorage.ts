import { Router, type Request, type Response } from "express";
import { checkAppSecret } from "../lib/security.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { isWebAdmin } from "./webAdmin.js";
import {
  parseHttpByteRange,
  verifyTgStreamToken,
} from "../lib/telegramStorageLogic.mjs";
import {
  getTelegramEpisodeById,
  getTelegramSeriesById,
  getStreamSigningSecret,
  getEpisodeFileSizeFallback,
  streamTelegramEpisodeRange,
  getSubtitleVttForEpisode,
  downloadTelegramSmallFile,
  listTelegramMediaAdmin,
  softDeleteTelegramEpisode,
  softDeleteTelegramChapter,
  getTelegramChapterPageBuffer,
} from "../lib/telegramStorage.js";

const router = Router();

async function hasAdminAccess(req: Request): Promise<boolean> {
  const provided = (req.headers["x-relay-secret"] as string | undefined) || (req.query.s as string | undefined);
  if (checkAppSecret(provided)) return true;
  if (isWebAdmin(req)) return true;
  const eu = await getEmailUser(req);
  return eu?.plan === "admin";
}

function checkSignedAccess(epId: number, req: Request): boolean {
  const exp = String(req.query.exp || "");
  const sig = String(req.query.sig || "");
  const secret = getStreamSigningSecret();
  return verifyTgStreamToken(epId, exp, sig, secret);
}

/* ── HEAD / GET /api/tg-media/stream/:epId ────────────────────────────── */
async function handleStream(req: Request, res: Response, headOnly: boolean) {
  const epId = Number.parseInt(String(req.params.epId || "0"), 10);
  if (!Number.isFinite(epId) || epId <= 0) {
    res.status(400).json({ error: "invalid episode id" });
    return;
  }
  if (!checkSignedAccess(epId, req)) {
    res.status(401).json({ error: "invalid or expired stream signature" });
    return;
  }

  try {
    const ep = await getTelegramEpisodeById(epId);
    if (!ep) {
      res.status(404).json({ error: "episode not found" });
      return;
    }

    const totalSize = await getEpisodeFileSizeFallback(ep);
    if (!totalSize || totalSize <= 0) {
      res.status(502).json({ error: "unable to determine file size" });
      return;
    }

    const rangeHeader = typeof req.headers.range === "string" ? req.headers.range : undefined;
    const range = parseHttpByteRange(rangeHeader, totalSize);
    if (!range) {
      res.setHeader("Content-Range", `bytes */${totalSize}`);
      res.status(416).end();
      return;
    }

    const mime = ep.mime_type && ep.mime_type.startsWith("video/") ? ep.mime_type : "video/mp4";
    res.setHeader("Content-Type", mime);
    res.setHeader("Accept-Ranges", "bytes");
    res.setHeader("Content-Length", String(range.chunkLength));
    res.setHeader("Cache-Control", "private, max-age=3600");
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Expose-Headers", "Content-Length, Content-Range, Accept-Ranges, Content-Disposition");
    if (String(req.query.dl || "") === "1") {
      res.setHeader("Content-Disposition", `attachment; filename="nova-episode-${epId}.mp4"`);
    }

    if (range.isPartial) {
      res.setHeader("Content-Range", `bytes ${range.start}-${range.end}/${totalSize}`);
      res.status(206);
    } else {
      res.status(200);
    }

    if (headOnly) {
      res.end();
      return;
    }

    await streamTelegramEpisodeRange(ep, range, req, res);
  } catch (err: any) {
    console.error("[tg-stream] error:", err?.message || err);
    if (!res.headersSent) {
      res.status(502).json({ error: "stream failed" });
    } else if (!res.writableEnded) {
      res.end();
    }
  }
}

router.head("/api/tg-media/stream/:epId", (req, res) => { void handleStream(req, res, true); });
router.get("/api/tg-media/stream/:epId", (req, res) => { void handleStream(req, res, false); });

/* ── GET /api/tg-media/subtitle/:epId ─────────────────────────────────── */
router.get("/api/tg-media/subtitle/:epId", async (req: Request, res: Response) => {
  const epId = Number.parseInt(String(req.params.epId || "0"), 10);
  if (!Number.isFinite(epId) || epId <= 0 || !checkSignedAccess(epId, req)) {
    res.status(401).end();
    return;
  }
  try {
    const ep = await getTelegramEpisodeById(epId);
    if (!ep) { res.status(404).end(); return; }
    const vtt = await getSubtitleVttForEpisode(ep);
    if (!vtt) { res.status(404).end(); return; }
    res.setHeader("Content-Type", "text/vtt; charset=utf-8");
    res.setHeader("Cache-Control", "public, max-age=3600");
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.send(vtt);
  } catch {
    res.status(502).end();
  }
});

/* ── GET /api/tg-media/poster/:seriesId ───────────────────────────────── */
const _posterCache = new Map<number, { buf: Buffer; mime: string; ts: number }>();

router.get("/api/tg-media/poster/:seriesId", async (req: Request, res: Response) => {
  const seriesId = Number.parseInt(String(req.params.seriesId || "0"), 10);
  if (!Number.isFinite(seriesId) || seriesId <= 0) { res.status(400).end(); return; }
  try {
    const cached = _posterCache.get(seriesId);
    if (cached && Date.now() - cached.ts < 6 * 3600 * 1000) {
      res.setHeader("Content-Type", cached.mime);
      res.setHeader("Cache-Control", "public, max-age=86400");
      res.send(cached.buf);
      return;
    }
    const series = await getTelegramSeriesById(seriesId);
    if (!series) { res.status(404).end(); return; }
    if (series.poster_file_id) {
      const dl = await downloadTelegramSmallFile(series.poster_file_id);
      if (dl) {
        const mime = /\.png$/i.test(dl.filePath) ? "image/png" : /\.webp$/i.test(dl.filePath) ? "image/webp" : "image/jpeg";
        _posterCache.set(seriesId, { buf: dl.buffer, mime, ts: Date.now() });
        res.setHeader("Content-Type", mime);
        res.setHeader("Cache-Control", "public, max-age=86400");
        res.send(dl.buffer);
        return;
      }
    }
    if (series.poster_url) {
      res.redirect(302, series.poster_url);
      return;
    }
    res.status(404).end();
  } catch {
    res.status(502).end();
  }
});

/* ── Admin Management Routes ──────────────────────────────────────────── */
router.get("/api/tg-media/admin/list", async (req: Request, res: Response) => {
  if (!(await hasAdminAccess(req))) { res.status(401).json({ ok: false, error: "unauthorized" }); return; }
  try {
    const data = await listTelegramMediaAdmin();
    res.json({ ok: true, ...data });
  } catch (err: any) {
    res.status(500).json({ ok: false, error: err?.message || "failed" });
  }
});

/* ── GET /api/tg-media/manga-page/:chapterId/:pageIndex ───────────────── */
router.get("/api/tg-media/manga-page/:chapterId/:pageIndex", async (req: Request, res: Response) => {
  const chapterId = Number.parseInt(String(req.params.chapterId || "0"), 10);
  const pageIndex = Number.parseInt(String(req.params.pageIndex || "0"), 10);
  if (!Number.isFinite(chapterId) || chapterId <= 0 || !Number.isFinite(pageIndex) || pageIndex <= 0) {
    res.status(400).end();
    return;
  }
  try {
    const page = await getTelegramChapterPageBuffer(chapterId, pageIndex);
    if (!page) { res.status(404).end(); return; }
    res.setHeader("Content-Type", page.mime);
    res.setHeader("Cache-Control", "public, max-age=86400, immutable");
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.send(page.buffer);
  } catch (err: any) {
    console.error("[tg-manga-page] error:", err?.message || err);
    res.status(502).end();
  }
});

router.delete("/api/tg-media/admin/episode/:epId", async (req: Request, res: Response) => {
  if (!(await hasAdminAccess(req))) { res.status(401).json({ ok: false, error: "unauthorized" }); return; }
  const epId = Number.parseInt(String(req.params.epId || "0"), 10);
  if (!Number.isFinite(epId) || epId <= 0) { res.status(400).json({ ok: false, error: "invalid id" }); return; }
  const deleted = await softDeleteTelegramEpisode(epId);
  res.json({ ok: deleted });
});

router.delete("/api/tg-media/admin/chapter/:chId", async (req: Request, res: Response) => {
  if (!(await hasAdminAccess(req))) { res.status(401).json({ ok: false, error: "unauthorized" }); return; }
  const chId = Number.parseInt(String(req.params.chId || "0"), 10);
  if (!Number.isFinite(chId) || chId <= 0) { res.status(400).json({ ok: false, error: "invalid id" }); return; }
  const deleted = await softDeleteTelegramChapter(chId);
  res.json({ ok: deleted });
});

export default router;

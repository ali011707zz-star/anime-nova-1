import { Router } from "express";
import { logger } from "../lib/logger";

const router = Router();

const SA_API = "https://app.sanime.net/function/h10.php?page=";
const SA_CDN = "https://server.sanime.net/Video";
const SA_UA  = "IBRAHIMSEVEN";
const saImg  = (id: string | number) => `https://app.sanime.net/api/anime/${id}/image.jpg`;

const PAGE_SIZE = 24;

// ── In-memory catalog cache ───────────────────────────────────────────────────
let _catalogAll: any[] | null = null;
let _catalogTs  = 0;
const CATALOG_TTL = 6 * 3_600_000; // 6h

async function fetchFullCatalog(): Promise<any[]> {
  if (_catalogAll && Date.now() - _catalogTs < CATALOG_TTL) return _catalogAll;
  try {
    const r = await fetch(`${SA_API}genre&id=genre0`, {
      headers: { "User-Agent": SA_UA },
      signal: AbortSignal.timeout(20_000),
    });
    if (!r.ok) return _catalogAll || [];
    const data = await r.json() as any[];
    _catalogAll = Array.isArray(data) ? data : [];
    _catalogTs  = Date.now();
    logger.info({ count: _catalogAll.length }, "sanime catalog cached");
    return _catalogAll;
  } catch (e) {
    logger.warn({ err: e }, "sanime catalog fetch failed");
    return _catalogAll || [];
  }
}

// Pre-warm on startup (don't await)
fetchFullCatalog().catch(() => {});

// ── GET /api/sanime/catalog?page=1&q= ─────────────────────────────────────────
router.get("/sanime/catalog", async (req, res) => {
  try {
    const page = Math.max(1, parseInt(String(req.query.page || "1"), 10));
    const q    = String(req.query.q || "").trim().toLowerCase();

    let items = await fetchFullCatalog();

    if (q) {
      items = items.filter(i =>
        (i.name  || "").toLowerCase().includes(q)
      );
    }

    const total      = items.length;
    const totalPages = Math.ceil(total / PAGE_SIZE) || 1;
    const start      = (page - 1) * PAGE_SIZE;
    const results    = items.slice(start, start + PAGE_SIZE).map((i: any) => ({
      id:     i.id,
      name:   i.name,
      status: i.status,
      image:  i.image || saImg(i.id),
    }));

    res.json({ results, page, totalPages, total });
  } catch (e) {
    logger.error({ err: e }, "sanime /catalog error");
    res.status(500).json({ error: "catalog error" });
  }
});

// ── GET /api/sanime/latest ────────────────────────────────────────────────────
router.get("/sanime/latest", async (req, res) => {
  try {
    const r = await fetch(`${SA_API}latest`, {
      headers: { "User-Agent": SA_UA },
      signal: AbortSignal.timeout(15_000),
    });
    if (!r.ok) return void res.status(502).json({ error: "upstream error" });
    const data   = await r.json() as any;
    const latest = Array.isArray(data) ? data : (data.latest || []);
    const results = latest.map((i: any) => ({
      id:     i.id,
      name:   i.name,
      epName: i.epName,
      date:   i.date,
      image:  i.image || saImg(i.id),
    }));
    res.json({ results });
  } catch (e) {
    logger.error({ err: e }, "sanime /latest error");
    res.status(500).json({ error: "latest error" });
  }
});

// ── GET /api/sanime/info?id=653 ───────────────────────────────────────────────
router.get("/sanime/info", async (req, res) => {
  try {
    const id = String(req.query.id || "");
    if (!id) return void res.status(400).json({ error: "id required" });

    const r = await fetch(`${SA_API}info&id=${encodeURIComponent(id)}`, {
      headers: { "User-Agent": SA_UA },
      signal: AbortSignal.timeout(15_000),
    });
    if (!r.ok) return void res.status(502).json({ error: "upstream error" });
    const d = await r.json() as any;

    // Flatten 2-D ep array: ep[pageIdx][epIdx]
    const epRaw: any[][] = Array.isArray(d.ep) ? d.ep : [];
    const episodes = (epRaw.flat() as any[])
      .filter(Boolean)
      .map((e: any) => ({
        id:     e.id,
        epName: e.epName,
        name:   e.name,
        date:   e.date,
      }));

    res.json({
      id:            d.id,
      name:          d.name,
      story:         d.story,
      score:         d.score,
      type:          d.type,
      anime_status:  d.anime_status,
      anime_release: d.anime_release,
      genre:         d.genre,
      image:         d.tag || saImg(id),
      background:    d.animeBackground || d.background || saImg(id),
      total:         d.total,
      episodes,
    });
  } catch (e) {
    logger.error({ err: e }, "sanime /info error");
    res.status(500).json({ error: "info error" });
  }
});

// ── GET /api/sanime/src?id=653&ep=1  (روابط دائمة) ────────────────────────────
router.get("/sanime/src", async (req, res) => {
  try {
    const id    = String(req.query.id || "");
    const epStr = String(req.query.ep || "");
    if (!id || !epStr) return void res.status(400).json({ error: "id and ep required" });

    const epNum = parseInt(epStr, 10);
    if (isNaN(epNum)) return void res.status(400).json({ error: "invalid ep" });

    const hdUrl = `${SA_CDN}/${id}/${epNum}.mp4`;
    const sdUrl = `${SA_CDN}/${id}/${epNum}SD.mp4`;

    // Return direct URLs immediately — SA CDN URLs are permanent & predictable.
    // Skip slow HEAD/openAnd checks that added 5–13s latency; the player handles failures.
    res.json({ hdUrl, sdUrl, permanent: true });
  } catch (e) {
    logger.error({ err: e }, "sanime /src error");
    res.status(500).json({ error: "src error" });
  }
});

export default router;

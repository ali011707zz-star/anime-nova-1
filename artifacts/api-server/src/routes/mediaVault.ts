import { Router, type Request, type Response } from "express";
import {
  getMediaVaultDb,
  getMediaVaultReport,
  createVaultSnapshot,
  upsertMediaCatalogItem,
} from "../lib/mediaVault.js";

const router = Router();

router.get("/report", (_req: Request, res: Response) => {
  try {
    const report = getMediaVaultReport();
    res.json(report);
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to generate media vault report" });
  }
});

router.get("/titles", (req: Request, res: Response) => {
  try {
    const db = getMediaVaultDb();
    const mediaType = String(req.query.type || "").trim();
    const search = String(req.query.q || "").trim();
    const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
    const limit = Math.min(100, Math.max(1, Number.parseInt(String(req.query.limit || "40"), 10) || 40));
    const offset = (page - 1) * limit;

    const conditions: string[] = ["is_archived = 0"];
    const params: Array<string | number> = [];

    if (mediaType) {
      conditions.push("media_type = ?");
      params.push(mediaType);
    }
    if (search) {
      conditions.push("(title_ar LIKE ? OR title_en LIKE ?)");
      params.push(`%${search}%`, `%${search}%`);
    }

    const whereClause = `WHERE ${conditions.join(" AND ")}`;
    const countRow = db
      .prepare(`SELECT COUNT(*) as total FROM media_titles ${whereClause}`)
      .get(...params) as { total: number };

    const rows = db
      .prepare(
        `SELECT id, clean_series_key, title_ar, title_en, media_type, year, poster_url, synopsis, tmdb_id, imdb_rating, categories_json, season_count, episode_count, updated_at
         FROM media_titles
         ${whereClause}
         ORDER BY updated_at DESC, id DESC
         LIMIT ? OFFSET ?`,
      )
      .all(...params, limit, offset) as any[];

    res.json({
      page,
      limit,
      total: Number(countRow?.total || 0),
      totalPages: Math.ceil(Number(countRow?.total || 0) / limit),
      items: rows.map((r) => ({
        ...r,
        categories: (() => {
          try {
            return JSON.parse(r.categories_json || "[]");
          } catch {
            return [];
          }
        })(),
      })),
    });
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to query media vault titles" });
  }
});

router.get("/titles/:id", (req: Request, res: Response) => {
  try {
    const db = getMediaVaultDb();
    const titleId = Number.parseInt(String(req.params.id || "0"), 10);
    if (!titleId) {
      res.status(400).json({ error: "Invalid title ID" });
      return;
    }

    const title = db
      .prepare(`SELECT * FROM media_titles WHERE id = ? AND is_archived = 0`)
      .get(titleId) as any;

    if (!title) {
      res.status(404).json({ error: "Title not found" });
      return;
    }

    const episodes = db
      .prepare(
        `SELECT id, wp_post_id, slug, raw_title, season_number, episode_number, servers_json, download_url, source_url, published_at, updated_at
         FROM media_episodes
         WHERE title_id = ? AND is_archived = 0
         ORDER BY season_number ASC, episode_number ASC`,
      )
      .all(titleId) as any[];

    res.json({
      ...title,
      categories: (() => {
        try {
          return JSON.parse(title.categories_json || "[]");
        } catch {
          return [];
        }
      })(),
      episodes: episodes.map((ep) => ({
        ...ep,
        servers: (() => {
          try {
            return JSON.parse(ep.servers_json || "[]");
          } catch {
            return [];
          }
        })(),
      })),
    });
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to load media title details" });
  }
});

router.post("/backup", (req: Request, res: Response) => {
  try {
    const reason = String(req.body?.reason || "api_manual");
    const snap = createVaultSnapshot(reason);
    res.json({ ok: true, snapshot: snap });
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to create vault snapshot" });
  }
});

router.post("/upsert", (req: Request, res: Response) => {
  try {
    const adminSecret = process.env.APP_SECRET || process.env.SESSION_SECRET || "";
    const provided = String(req.headers["x-vault-key"] || "");
    if (!adminSecret || provided !== adminSecret) {
      res.status(401).json({ error: "Unauthorized" });
      return;
    }
    const items = Array.isArray(req.body?.items) ? req.body.items : [req.body];
    let saved = 0;
    for (const item of items) {
      if (item && Number(item.wpPostId) > 0 && item.rawTitle && item.mediaType) {
        upsertMediaCatalogItem(item);
        saved += 1;
      }
    }
    res.json({ ok: true, saved });
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to upsert items" });
  }
});

export default router;

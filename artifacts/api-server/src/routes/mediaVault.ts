import { Router, type Request, type Response } from "express";
import { pool } from "../lib/db.js";
import { createVaultSnapshot, getMediaVaultReport } from "../lib/mediaVault.js";

const router = Router();

router.get("/report", async (_req: Request, res: Response) => {
  try {
    const report = await getMediaVaultReport();
    res.json(report);
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to generate media vault report" });
  }
});

router.get("/titles", async (req: Request, res: Response) => {
  try {
    const mediaType = String(req.query.type || "").trim();
    const search = String(req.query.q || "").trim();
    const onlyLive = String(req.query.live || "1") !== "0";
    const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
    const limit = Math.min(100, Math.max(1, Number.parseInt(String(req.query.limit || "40"), 10) || 40));
    const offset = (page - 1) * limit;

    const conditions: string[] = ["is_archived = FALSE"];
    const params: any[] = [];

    if (onlyLive) {
      conditions.push("has_live_server = TRUE");
    }
    if (mediaType && mediaType !== "all") {
      params.push(mediaType);
      conditions.push(`media_type = $${params.length}`);
    }
    if (search) {
      params.push(`%${search}%`);
      conditions.push(`(title_ar ILIKE $${params.length} OR title_en ILIKE $${params.length})`);
    }

    const whereSql = `WHERE ${conditions.join(" AND ")}`;
    const countRes = await pool.query(`SELECT COUNT(*)::int AS total FROM film_vault_titles ${whereSql}`, params);
    const total = Number(countRes.rows[0]?.total || 0);

    const rowsRes = await pool.query(
      `SELECT id, clean_series_key, title_ar, title_en, media_type, tmdb_type, year, poster_url, backdrop_url, synopsis, tmdb_id, imdb_rating, quality_badge, audio_label, category_label, genres_json, categories_json, season_count, episode_count, playable_episode_count, has_live_server, updated_at
       FROM film_vault_titles
       ${whereSql}
       ORDER BY year DESC NULLS LAST, updated_at DESC, id DESC
       LIMIT $${params.length + 1} OFFSET $${params.length + 2}`,
      [...params, limit, offset],
    );

    res.json({
      page,
      limit,
      total,
      totalPages: Math.max(1, Math.ceil(total / limit)),
      items: rowsRes.rows.map((r: any) => ({
        ...r,
        genres: safeJsonArray(r.genres_json),
        categories: safeJsonArray(r.categories_json),
      })),
    });
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to query media vault titles" });
  }
});

router.get("/titles/:id", async (req: Request, res: Response) => {
  try {
    const titleId = Number.parseInt(String(req.params.id || "0"), 10);
    if (!titleId) {
      res.status(400).json({ error: "Invalid title ID" });
      return;
    }
    const tRes = await pool.query(`SELECT * FROM film_vault_titles WHERE id = $1 AND is_archived = FALSE`, [titleId]);
    const title = tRes.rows[0];
    if (!title) {
      res.status(404).json({ error: "Title not found" });
      return;
    }
    const epRes = await pool.query(
      `SELECT id, wp_post_id, slug, raw_title, season_number, episode_number, servers_json, has_live_server, download_url, source_url, updated_at
       FROM film_vault_episodes
       WHERE title_id = $1 AND is_archived = FALSE
       ORDER BY season_number ASC, episode_number ASC`,
      [titleId],
    );
    res.json({
      ...title,
      genres: safeJsonArray(title.genres_json),
      categories: safeJsonArray(title.categories_json),
      episodes: epRes.rows.map((ep: any) => ({
        ...ep,
        servers: safeJsonArray(ep.servers_json),
      })),
    });
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to load media title details" });
  }
});

router.post("/backup", async (req: Request, res: Response) => {
  try {
    const reason = String(req.body?.reason || "api_manual");
    const snapshot = await createVaultSnapshot(reason);
    res.json({ ok: true, snapshot });
  } catch (err: any) {
    res.status(500).json({ error: err?.message || "Failed to create vault snapshot" });
  }
});

function safeJsonArray(raw: any): any[] {
  if (Array.isArray(raw)) return raw;
  try {
    const p = JSON.parse(String(raw || "[]"));
    return Array.isArray(p) ? p : [];
  } catch {
    return [];
  }
}

export default router;

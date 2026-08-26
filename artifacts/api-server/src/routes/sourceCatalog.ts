import { Router, type Request, type Response } from "express";
import { sbSelect } from "../lib/supabaseClient.js";

const router = Router();
const PROVIDERS = new Set(["animeify", "anslayer", "sanime", "anifox"]);

function intParam(value: unknown, fallback: number, min: number, max: number): number {
  const n = Number.parseInt(String(value ?? ""), 10);
  return Number.isFinite(n) ? Math.min(max, Math.max(min, n)) : fallback;
}

function providerParam(value: unknown): string | undefined {
  const p = String(value ?? "").trim().toLowerCase();
  return PROVIDERS.has(p) ? p : undefined;
}

function encodedLike(value: string): string {
  return `ilike.*${value.replace(/[*%,]/g, " ").trim()}*`;
}

// Public metadata endpoints. No playback URL is read from or returned by these
// routes; clients use the existing source extractors only after the user picks
// an episode.
router.get("/source-catalog/providers", async (_req: Request, res: Response) => {
  const rows = await sbSelect<any>(
    "source_catalog_titles",
    {},
    { select: "provider", limit: 10000 },
  );
  const counts = Object.fromEntries([...PROVIDERS].map((p) => [
    p,
    rows.filter((row) => row.provider === p).length,
  ]));
  res.setHeader("Cache-Control", "public, max-age=300");
  res.json({ providers: counts });
});

router.get("/source-catalog/titles", async (req: Request, res: Response) => {
  const provider = providerParam(req.query.provider);
  const page = intParam(req.query.page, 1, 1, 100000);
  const limit = intParam(req.query.limit, 30, 1, 100);
  const q = String(req.query.q ?? "").trim();
  const filters: Record<string, string | number | undefined> = {
    provider: provider ? `eq.${provider}` : undefined,
    title: q ? encodedLike(q) : undefined,
    order: "title.asc",
    offset: (page - 1) * limit,
  };
  const rows = await sbSelect<any>("source_catalog_titles", filters, {
    limit,
    select: "id,provider,provider_title_id,title,title_en,title_ar,title_native,synonyms,genres,tags,media_type,status,release_year,episode_count,poster_url,backdrop_url,catalog_status,last_seen_at",
  });
  res.setHeader("Cache-Control", "public, max-age=300");
  res.json({ results: rows, page, limit, provider: provider ?? null, query: q });
});

router.get("/source-catalog/titles/:provider/:providerTitleId", async (req: Request, res: Response) => {
  const provider = providerParam(req.params.provider);
  if (!provider) return void res.status(400).json({ error: "invalid provider" });
  const titles = await sbSelect<any>("source_catalog_titles", {
    provider: `eq.${provider}`,
    provider_title_id: `eq.${req.params.providerTitleId}`,
  }, { limit: 1 });
  const title = titles[0];
  if (!title) return void res.status(404).json({ error: "catalog title not found" });
  const episodes = await sbSelect<any>("source_catalog_episodes", {
    title_id: `eq.${title.id}`,
    order: "episode_number.asc",
  }, {
    limit: 5000,
    select: "id,provider,provider_episode_id,season_number,episode_number,episode_label,title,air_date,episode_status,details_checked_at",
  });
  res.setHeader("Cache-Control", "public, max-age=300");
  res.json({ title, episodes });
});

router.get("/source-catalog/episodes/:episodeId/servers", async (req: Request, res: Response) => {
  const episodeId = Number.parseInt(req.params.episodeId, 10);
  if (!Number.isFinite(episodeId)) return void res.status(400).json({ error: "invalid episode id" });
  const rows = await sbSelect<any>("source_catalog_servers", {
    episode_id: `eq.${episodeId}`,
    order: "quality.desc",
  }, {
    limit: 100,
    select: "id,episode_id,provider,server_key,server_name,quality,language,source_kind,source_host,availability_status,last_checked_at",
  });
  res.setHeader("Cache-Control", "public, max-age=60");
  res.json({ servers: rows, playback: "resolve-on-demand" });
});

export default router;
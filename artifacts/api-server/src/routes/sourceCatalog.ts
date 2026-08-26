import { Router, type Request, type Response } from "express";
import { sbCount, sbSelect } from "../lib/supabaseClient.js";

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

function publicServerRow(row: any): any {
  const { provider_metadata: metadata, ...publicRow } = row;
  const metadataPageUrl = metadata && typeof metadata === "object"
    ? metadata.page_url
    : undefined;
  return {
    ...publicRow,
    page_url: row.page_url || metadataPageUrl || null,
  };
}

// Public catalog endpoints. These return provider/server page URLs, never
// resolved MP4/HLS URLs. Playback is still resolved by the existing extractors.
router.get("/source-catalog/providers", async (_req: Request, res: Response) => {
  const entries = await Promise.all([...PROVIDERS].map(async (provider) => [
    provider,
    await sbCount("source_catalog_titles", { provider: `eq.${provider}` }),
  ] as const));
  const counts = Object.fromEntries(entries);
  res.setHeader("Cache-Control", "public, max-age=300");
  res.json({
    providers: counts,
    total: entries.reduce((sum, [, count]) => sum + count, 0),
  });
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

// Fast path for clients that already know the provider title id and episode.
// It avoids downloading the full episode list before asking for server pages.
router.get("/source-catalog/lookup", async (req: Request, res: Response) => {
  const provider = providerParam(req.query.provider);
  const providerTitleId = String(req.query.providerTitleId ?? "").trim();
  const episode = Number(req.query.episode);
  const season = req.query.season === undefined ? undefined : intParam(req.query.season, 1, 1, 100);
  const quality = String(req.query.quality ?? "").trim();
  if (!provider) return void res.status(400).json({ error: "invalid provider" });
  if (!providerTitleId || providerTitleId.length > 200) {
    return void res.status(400).json({ error: "providerTitleId required" });
  }
  if (!Number.isFinite(episode)) return void res.status(400).json({ error: "episode required" });
  if (quality && quality.length > 30) return void res.status(400).json({ error: "invalid quality" });

  const titles = await sbSelect<any>("source_catalog_titles", {
    provider: `eq.${provider}`,
    provider_title_id: `eq.${providerTitleId}`,
  }, {
    limit: 1,
    select: "id,provider,provider_title_id,title,title_en,title_ar,title_native,media_type,episode_count,poster_url,backdrop_url,catalog_status",
  });
  const title = titles[0];
  if (!title) return void res.status(404).json({ error: "catalog title not found" });

  const episodeFilters: Record<string, string | number | undefined> = {
    title_id: `eq.${title.id}`,
    episode_number: `eq.${episode}`,
    season_number: season === undefined ? undefined : `eq.${season}`,
    order: "season_number.asc",
  };
  const episodes = await sbSelect<any>("source_catalog_episodes", episodeFilters, {
    limit: 1,
    select: "id,provider,provider_episode_id,season_number,episode_number,episode_label,title,air_date,episode_status,details_checked_at",
  });
  const episodeRow = episodes[0];
  if (!episodeRow) return void res.status(404).json({ error: "episode not found", title });

  const serverFilters: Record<string, string | number | undefined> = {
    episode_id: `eq.${episodeRow.id}`,
    quality: quality ? `eq.${quality}` : undefined,
    order: "quality.desc",
  };
  const servers = (await sbSelect<any>("source_catalog_servers", serverFilters, {
    limit: 100,
    // Production Supabase still has the legacy schema without page_url.
    // The importer keeps the same public contract in provider_metadata.page_url.
    select: "id,episode_id,provider,server_key,server_name,quality,language,source_kind,source_host,availability_status,last_checked_at,provider_metadata",
  })).map(publicServerRow).filter((server) => Boolean(server.page_url));

  res.setHeader("Cache-Control", "public, max-age=60");
  res.json({ title, episode: episodeRow, servers, pagesOnly: true });
});

router.get("/source-catalog/episodes/:episodeId/servers", async (req: Request, res: Response) => {
  const episodeId = Number.parseInt(req.params.episodeId, 10);
  if (!Number.isFinite(episodeId)) return void res.status(400).json({ error: "invalid episode id" });
  const quality = String(req.query.quality ?? "").trim();
  const rows = await sbSelect<any>("source_catalog_servers", {
    episode_id: `eq.${episodeId}`,
    quality: quality && quality.length <= 30 ? `eq.${quality}` : undefined,
    order: "quality.desc",
  }, {
    limit: 100,
    select: "id,episode_id,provider,server_key,server_name,quality,language,source_kind,source_host,availability_status,last_checked_at,provider_metadata",
  }).then((servers) => servers.map(publicServerRow).filter((server) => Boolean(server.page_url)));
  res.setHeader("Cache-Control", "public, max-age=60");
  res.json({ servers: rows, pagesOnly: true, playback: "resolve-on-demand" });
});

export default router;
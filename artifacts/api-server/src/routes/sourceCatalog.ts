import { Router, type Request, type Response } from "express";
import { sbCount, sbSelect } from "../lib/supabaseClient.js";

const router = Router();
const PROVIDERS = new Set(["animeify", "anslayer", "sanime", "anifox", "stardima_catalog"]);
const MEDIA_TYPES = new Set(["series", "movie"]);
const CATALOG_STATUSES = new Set(["catalogued", "details_checked", "partial", "failed"]);

function intParam(value: unknown, fallback: number, min: number, max: number): number {
  const n = Number.parseInt(String(value ?? ""), 10);
  return Number.isFinite(n) ? Math.min(max, Math.max(min, n)) : fallback;
}

function providerParam(value: unknown): string | undefined {
  const p = String(value ?? "").trim().toLowerCase();
  return PROVIDERS.has(p) ? p : undefined;
}

async function catalogQuery<T>(
  res: Response,
  message: string,
  run: () => Promise<T>,
): Promise<T | undefined> {
  try {
    return await run();
  } catch {
    if (!res.headersSent) res.status(503).json({ error: message });
    return undefined;
  }
}

async function selectAllCatalogEpisodes(titleId: number | string): Promise<any[]> {
  const pageSize = 500;
  const maxRows = 10_000;
  const episodes: any[] = [];
  for (let offset = 0; offset <= maxRows; offset += pageSize) {
    const page = await sbSelect<any>("source_catalog_episodes", {
      title_id: `eq.${titleId}`,
      order: "episode_number.asc",
    }, {
      limit: pageSize,
      offset,
      select: "id,provider,provider_episode_id,season_number,episode_number,episode_label,title,air_date,episode_status,details_checked_at",
      strict: true,
    });
    if (offset === maxRows) {
      if (page.length) throw new Error(`Source catalog episode list exceeds ${maxRows} rows`);
      return episodes;
    }
    episodes.push(...page);
    if (page.length < pageSize) return episodes;
  }
  throw new Error("Could not finish reading source catalog episodes");
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

function publicCatalogTitle(row: any): any {
  const { provider_metadata: metadata, ...publicRow } = row;
  const classification = metadata && typeof metadata === "object" && !Array.isArray(metadata)
    ? metadata.classification
    : null;
  const safeList = (value: unknown) =>
    Array.isArray(value) ? value.map((item) => String(item).trim()).filter(Boolean) : [];
  return {
    ...publicRow,
    classification: classification && typeof classification === "object" && !Array.isArray(classification)
      ? {
          version: Number(classification.version) || 1,
          status: String(classification.status || "source_labeled"),
          contentFamilies: safeList(classification.content_families),
          sourceCategories: safeList(classification.source_categories),
          sourceTags: safeList(classification.source_tags),
          localizationLabels: safeList(classification.localization_labels),
          source: String(classification.source || ""),
          detailCheckedAt: classification.detail_checked_at || null,
        }
      : null,
  };
}

// Public catalog endpoints. These return provider/server page URLs, never
// resolved MP4/HLS URLs. Playback is still resolved by the existing extractors.
router.get("/source-catalog/providers", async (_req: Request, res: Response) => {
  const entries = await catalogQuery(res, "source catalog counts unavailable", () => Promise.all([...PROVIDERS].map(async (provider) => [
    provider,
    await sbCount("source_catalog_titles", { provider: `eq.${provider}` }, { strict: true }),
  ] as const)));
  if (!entries) return;
  const counts = Object.fromEntries(entries.map(([provider, count]) => [provider, count]));
  res.setHeader("Cache-Control", "public, max-age=300");
  res.json({
    providers: counts,
    total: entries.reduce((sum, [, count]) => sum + count, 0),
  });
});

router.get("/source-catalog/categories", async (req: Request, res: Response) => {
  const provider = providerParam(req.query.provider);
  if (!provider) return void res.status(400).json({ error: "valid provider required" });

  const result = await catalogQuery(res, "source catalog categories unavailable", async () => {
    const categoryCounts = new Map<string, number>();
    const localizationCounts = new Map<string, number>();
    let classifiedTitles = 0;
    const pageSize = 1000;
    for (let offset = 0; offset < 50_000; offset += pageSize) {
      const rows = await sbSelect<any>("source_catalog_titles", {
        provider: `eq.${provider}`,
        order: "id.asc",
      }, {
        limit: pageSize,
        offset,
        select: "genres,provider_metadata",
        strict: true,
      });
      for (const row of rows) {
        const categories = Array.isArray(row.genres)
          ? [...new Set(row.genres.map((value: unknown) => String(value).trim()).filter(Boolean))]
          : [];
        if (categories.length) classifiedTitles++;
        for (const category of categories) {
          categoryCounts.set(category, (categoryCounts.get(category) || 0) + 1);
        }
        const classification = row.provider_metadata?.classification;
        const labels = Array.isArray(classification?.localization_labels)
          ? [...new Set(classification.localization_labels.map((value: unknown) => String(value).trim()).filter(Boolean))]
          : [];
        for (const label of labels) {
          localizationCounts.set(label, (localizationCounts.get(label) || 0) + 1);
        }
      }
      if (rows.length < pageSize) break;
    }

    const categories = [...categoryCounts.entries()]
      .map(([name, titleCount]) => ({ name, titleCount }))
      .sort((a, b) => b.titleCount - a.titleCount || a.name.localeCompare(b.name));
    const localizationLabels = [...localizationCounts.entries()]
      .map(([name, titleCount]) => ({ name, titleCount }))
      .sort((a, b) => b.titleCount - a.titleCount || a.name.localeCompare(b.name));
    const totalTitles = await sbCount("source_catalog_titles", { provider: `eq.${provider}` }, { strict: true });
    return {
      totalTitles,
      classifiedTitles,
      unclassifiedTitles: Math.max(0, totalTitles - classifiedTitles),
      categories,
      localizationLabels,
    };
  });
  if (!result) return;
  res.setHeader("Cache-Control", "public, max-age=300");
  res.json({ provider, ...result });
});

router.get("/source-catalog/titles", async (req: Request, res: Response) => {
  const provider = providerParam(req.query.provider);
  const page = intParam(req.query.page, 1, 1, 100000);
  const limit = intParam(req.query.limit, 30, 1, 100);
  const q = String(req.query.q ?? "").trim();
  const rawMediaType = String(req.query.mediaType ?? "").trim().toLowerCase();
  const rawCatalogStatus = String(req.query.catalogStatus ?? "").trim().toLowerCase();
  const category = String(req.query.category ?? "").trim();
  const tag = String(req.query.tag ?? "").trim();
  if (rawMediaType && !MEDIA_TYPES.has(rawMediaType)) {
    return void res.status(400).json({ error: "mediaType must be series or movie" });
  }
  if (rawCatalogStatus && !CATALOG_STATUSES.has(rawCatalogStatus)) {
    return void res.status(400).json({ error: "invalid catalogStatus" });
  }
  if (category.length > 120 || tag.length > 120) {
    return void res.status(400).json({ error: "category and tag must be 120 characters or fewer" });
  }
  const filters: Record<string, string | number | undefined> = {
    provider: provider ? `eq.${provider}` : undefined,
    // Search the localized and native aliases server-side without issuing
    // separate requests for each title field.
    or: q ? `(${["title", "title_en", "title_ar", "title_native"]
      .map((field) => `${field}.${encodedLike(q)}`)
      .join(",")})` : undefined,
    media_type: rawMediaType ? `eq.${rawMediaType}` : undefined,
    catalog_status: rawCatalogStatus ? `eq.${rawCatalogStatus}` : undefined,
    genres: category ? `cs.${JSON.stringify([category])}` : undefined,
    tags: tag ? `cs.${JSON.stringify([tag])}` : undefined,
    order: "title.asc",
  };
  const rows = await catalogQuery(res, "source catalog titles unavailable", () => sbSelect<any>("source_catalog_titles", filters, {
    limit,
    offset: (page - 1) * limit,
    select: "id,provider,provider_title_id,title,title_en,title_ar,title_native,synonyms,genres,tags,media_type,status,release_year,episode_count,poster_url,backdrop_url,provider_metadata,catalog_status,last_seen_at",
    strict: true,
  }));
  if (!rows) return;
  res.setHeader("Cache-Control", "public, max-age=300");
  res.json({
    results: rows.map(publicCatalogTitle),
    page,
    limit,
    provider: provider ?? null,
    query: q,
    mediaType: rawMediaType || null,
    category: category || null,
    tag: tag || null,
    catalogStatus: rawCatalogStatus || null,
  });
});

router.get("/source-catalog/titles/:provider/:providerTitleId", async (req: Request, res: Response) => {
  const provider = providerParam(req.params.provider);
  if (!provider) return void res.status(400).json({ error: "invalid provider" });
  const titles = await catalogQuery(res, "source catalog title unavailable", () => sbSelect<any>("source_catalog_titles", {
    provider: `eq.${provider}`,
    provider_title_id: `eq.${req.params.providerTitleId}`,
  }, { limit: 1, strict: true }));
  if (!titles) return;
  const title = titles[0];
  if (!title) return void res.status(404).json({ error: "catalog title not found" });
  const episodes = await catalogQuery(res, "source catalog episodes unavailable", () => selectAllCatalogEpisodes(title.id));
  if (!episodes) return;
  res.setHeader("Cache-Control", "public, max-age=300");
  res.json({ title: publicCatalogTitle(title), episodes });
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

  const titles = await catalogQuery(res, "source catalog title unavailable", () => sbSelect<any>("source_catalog_titles", {
    provider: `eq.${provider}`,
    provider_title_id: `eq.${providerTitleId}`,
  }, {
    limit: 1,
    select: "id,provider,provider_title_id,title,title_en,title_ar,title_native,media_type,episode_count,poster_url,backdrop_url,catalog_status,provider_metadata",
    strict: true,
  }));
  if (!titles) return;
  const title = titles[0];
  if (!title) return void res.status(404).json({ error: "catalog title not found" });

  const episodeFilters: Record<string, string | number | undefined> = {
    title_id: `eq.${title.id}`,
    episode_number: `eq.${episode}`,
    season_number: season === undefined ? undefined : `eq.${season}`,
    order: "season_number.asc",
  };
  const episodes = await catalogQuery(res, "source catalog episode unavailable", () => sbSelect<any>("source_catalog_episodes", episodeFilters, {
    limit: 1,
    select: "id,provider,provider_episode_id,season_number,episode_number,episode_label,title,air_date,episode_status,details_checked_at",
    strict: true,
  }));
  if (!episodes) return;
  const episodeRow = episodes[0];
  if (!episodeRow) return void res.status(404).json({ error: "episode not found", title: publicCatalogTitle(title) });

  const serverFilters: Record<string, string | number | undefined> = {
    episode_id: `eq.${episodeRow.id}`,
    quality: quality ? `eq.${quality}` : undefined,
    order: "quality.desc",
  };
  const servers = await catalogQuery(res, "source catalog servers unavailable", async () => (await sbSelect<any>("source_catalog_servers", serverFilters, {
    limit: 100,
    // Production Supabase still has the legacy schema without page_url.
    // The importer keeps the same public contract in provider_metadata.page_url.
    select: "id,episode_id,provider,server_key,server_name,quality,language,source_kind,source_host,availability_status,last_checked_at,provider_metadata",
    strict: true,
  })).map(publicServerRow).filter((server: any) => Boolean(server.page_url)));
  if (!servers) return;

  res.setHeader("Cache-Control", "public, max-age=60");
  res.json({ title: publicCatalogTitle(title), episode: episodeRow, servers, pagesOnly: true });
});

router.get("/source-catalog/episodes/:episodeId/servers", async (req: Request, res: Response) => {
  const episodeId = Number(String(req.params.episodeId ?? ""));
  if (!Number.isSafeInteger(episodeId) || episodeId <= 0) return void res.status(400).json({ error: "invalid episode id" });
  const quality = String(req.query.quality ?? "").trim();
  const rows = await catalogQuery(res, "source catalog servers unavailable", async () => (await sbSelect<any>("source_catalog_servers", {
    episode_id: `eq.${episodeId}`,
    quality: quality && quality.length <= 30 ? `eq.${quality}` : undefined,
    order: "quality.desc",
  }, {
    limit: 100,
    select: "id,episode_id,provider,server_key,server_name,quality,language,source_kind,source_host,availability_status,last_checked_at,provider_metadata",
    strict: true,
  })).map(publicServerRow).filter((server: any) => Boolean(server.page_url)));
  if (!rows) return;
  res.setHeader("Cache-Control", "public, max-age=60");
  res.json({ servers: rows, pagesOnly: true, playback: "resolve-on-demand" });
});

export default router;
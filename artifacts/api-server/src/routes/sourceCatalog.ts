import { Router, type Request, type Response } from "express";
import { isSupabaseReady, sbCount, sbSelect } from "../lib/supabaseClient.js";
import { filterSourceCatalogServerRows } from "../lib/sourceCatalogServerHealth.mjs";
import { sourceCatalogTitleBelongsInSection } from "../lib/sourceCatalogEligibility.mjs";

const router = Router();
const PROVIDERS = new Set(["animeify", "anslayer", "sanime", "anifox", "stardima_catalog"]);
const MEDIA_TYPES = new Set(["series", "movie"]);
const CATALOG_STATUSES = new Set(["catalogued", "details_checked", "partial", "failed"]);
const CATALOG_SECTIONS = new Set(["animation", "cartoon"]);
const SECTION_CACHE_TTL_MS = 60_000;
const sectionCache = new Map<string, { expiresAt: number; titles: any[]; providerTotal: number }>();
const sectionCachePending = new Map<string, Promise<{ titles: any[]; providerTotal: number }>>();
const PUBLIC_BASE = new URL(process.env.NOVA_PUBLIC_URL || "https://animenovaa.duckdns.org").origin;
const TMDB_IMAGE_SIZES = new Set(["w92", "w154", "w185", "w342", "w500", "w780", "w1280", "original"]);
const TMDB_IMAGE_FILE = /^[A-Za-z0-9_-]+\.(?:jpe?g|png|webp)$/i;

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
  const health = metadata && typeof metadata === "object" &&
      metadata.health && typeof metadata.health === "object" && !Array.isArray(metadata.health)
    ? metadata.health
    : null;
  return {
    ...publicRow,
    page_url: row.page_url || metadataPageUrl || null,
    health_state: health?.state || null,
    health_reason: health?.reason || null,
    health_checked_at: health?.checked_at || row.last_checked_at || null,
  };
}

function dedupeCatalogServerRows(rows: any[], provider: string) {
  return filterSourceCatalogServerRows(rows.map(publicServerRow), provider);
}

function publicCatalogImageUrl(value: unknown): string | null {
  const raw = String(value ?? "").trim();
  if (!raw) return null;
  try {
    const imageUrl = new URL(raw);
    const match = imageUrl.pathname.match(
      /^\/t\/p\/(w92|w154|w185|w342|w500|w780|w1280|original)\/([A-Za-z0-9_-]+\.(?:jpe?g|png|webp))$/i,
    );
    if (imageUrl.protocol !== "https:" || imageUrl.hostname !== "image.tmdb.org" || !match) return raw;
    return `${PUBLIC_BASE}/api/source-catalog/tmdb-poster/${match[1]}/${match[2]}`;
  } catch {
    return raw;
  }
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
    poster_url: publicCatalogImageUrl(publicRow.poster_url),
    backdrop_url: publicCatalogImageUrl(publicRow.backdrop_url),
    classification: classification && typeof classification === "object" && !Array.isArray(classification)
      ? {
          version: Number(classification.version) || 1,
          status: String(classification.status || "source_labeled"),
          contentFamilies: safeList(classification.content_families),
          familyEvidence: String(classification.family_evidence || ""),
          sourceCategories: safeList(classification.source_categories),
          sourceTags: safeList(classification.source_tags),
          localizationLabels: safeList(classification.localization_labels),
          source: String(classification.source || ""),
          detailCheckedAt: classification.detail_checked_at || null,
        }
      : null,
  };
}

async function loadQualifiedStardimaSection(
  section: "animation" | "cartoon",
): Promise<{ titles: any[]; providerTotal: number }> {
  const cached = sectionCache.get(section);
  if (cached && cached.expiresAt > Date.now()) {
    return { titles: cached.titles, providerTotal: cached.providerTotal };
  }
  const pending = sectionCachePending.get(section);
  if (pending) return pending;

  const request = (async () => {
    const family = section === "animation" ? "anime" : "animation";
    const candidates: any[] = [];
    const pageSize = 1000;
    const maxRows = 10_000;
    for (let offset = 0; offset < maxRows; offset += pageSize) {
      const filters: Record<string, string | number | undefined> = {
        provider: "eq.stardima_catalog",
        order: "title.asc",
      };
      if (isSupabaseReady()) {
        filters["provider_metadata->classification->>status"] =
          "in.(classified,manually_reviewed)";
        filters["provider_metadata->classification->content_families"] =
          `cs.${JSON.stringify([family])}`;
      }
      const rows = await sbSelect<any>("source_catalog_titles", filters, {
        limit: pageSize,
        offset,
        select: "id,provider,provider_title_id,title,title_en,title_ar,title_native,synonyms,genres,tags,media_type,release_year,episode_count,poster_url,backdrop_url,provider_metadata,catalog_status,last_seen_at",
        strict: true,
      });
      candidates.push(...rows);
      if (rows.length < pageSize) break;
    }
    if (candidates.length >= maxRows) {
      throw new Error("StarDima section scan exceeded the safe row limit");
    }

    const titles = candidates
      .map(publicCatalogTitle)
      .filter((item) => sourceCatalogTitleBelongsInSection(item, section))
      .sort((a, b) => String(a.title || "").localeCompare(String(b.title || "")));
    const providerTotal = await sbCount(
      "source_catalog_titles",
      { provider: "eq.stardima_catalog" },
    );
    sectionCache.set(section, {
      expiresAt: Date.now() + SECTION_CACHE_TTL_MS,
      titles,
      providerTotal,
    });
    return { titles, providerTotal };
  })();
  sectionCachePending.set(section, request);
  try {
    return await request;
  } finally {
    sectionCachePending.delete(section);
  }
}

// Public catalog endpoints. These return provider/server page URLs, never
// resolved MP4/HLS URLs. Playback is still resolved by the existing extractors.
router.get("/source-catalog/tmdb-poster/:size/:file", async (req: Request, res: Response) => {
  const size = String(req.params.size ?? "");
  const file = String(req.params.file ?? "");
  if (!TMDB_IMAGE_SIZES.has(size) || !TMDB_IMAGE_FILE.test(file)) {
    return void res.status(400).send("invalid poster path");
  }

  try {
    const upstream = await fetch(`https://image.tmdb.org/t/p/${size}/${file}`, {
      headers: {
        Accept: "image/avif,image/webp,image/apng,image/*,*/*;q=0.8",
        "User-Agent": "NovaAnime/1.0",
      },
      signal: AbortSignal.timeout(10_000),
    });
    if (!upstream.ok) {
      return void res.status(upstream.status === 404 ? 404 : 502).send("poster unavailable");
    }
    const contentType = (upstream.headers.get("content-type") || "").split(";")[0].trim().toLowerCase();
    if (!["image/jpeg", "image/png", "image/webp", "image/avif"].includes(contentType)) {
      return void res.status(502).send("invalid poster response");
    }
    const contentLength = Number(upstream.headers.get("content-length") || 0);
    if (contentLength > 8 * 1024 * 1024) return void res.status(502).send("poster too large");
    const image = Buffer.from(await upstream.arrayBuffer());
    if (!image.length || image.length > 8 * 1024 * 1024) {
      return void res.status(502).send("invalid poster size");
    }

    res.setHeader("Content-Type", contentType);
    res.setHeader("Cache-Control", "public, max-age=2592000, immutable");
    res.setHeader("X-Content-Type-Options", "nosniff");
    return void res.send(image);
  } catch {
    if (!res.headersSent && !res.destroyed) res.status(502).send("poster unavailable");
  }
});

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

const STARDIMA_ARCHIVE_FEED_HIDDEN = true;

router.get("/source-catalog/categories", async (req: Request, res: Response) => {
  const provider = providerParam(req.query.provider);
  if (!provider) return void res.status(400).json({ error: "valid provider required" });
  if (provider === "stardima_catalog" && STARDIMA_ARCHIVE_FEED_HIDDEN) {
    res.setHeader("Cache-Control", "no-store");
    return void res.json({
      provider,
      totalTitles: 0,
      classifiedTitles: 0,
      unclassifiedTitles: 0,
      categories: [],
      localizationLabels: [],
    });
  }

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
  const rawSection = String(req.query.section ?? "").trim().toLowerCase();
  const section = rawSection as "animation" | "cartoon";
  if (rawSection && (!CATALOG_SECTIONS.has(rawSection) || provider !== "stardima_catalog")) {
    return void res.status(400).json({ error: "section must be animation or cartoon for stardima_catalog" });
  }
  if (rawMediaType && !MEDIA_TYPES.has(rawMediaType)) {
    return void res.status(400).json({ error: "mediaType must be series or movie" });
  }
  if (rawCatalogStatus && !CATALOG_STATUSES.has(rawCatalogStatus)) {
    return void res.status(400).json({ error: "invalid catalogStatus" });
  }
  if (category.length > 120 || tag.length > 120) {
    return void res.status(400).json({ error: "category and tag must be 120 characters or fewer" });
  }
  if (provider === "stardima_catalog" && STARDIMA_ARCHIVE_FEED_HIDDEN && !section) {
    res.setHeader("Cache-Control", "no-store");
    return void res.json({
      results: [],
      page,
      limit,
      provider,
      query: q,
      mediaType: rawMediaType || null,
      category: category || null,
      tag: tag || null,
      catalogStatus: rawCatalogStatus || null,
      total: 0,
      providerTotal: 0,
    });
  }
  if (section) {
    const result = await catalogQuery(res, "source catalog titles unavailable", async () => {
      const qualified = await loadQualifiedStardimaSection(section);
      const needle = q.toLocaleLowerCase();
      const matching = needle
        ? qualified.titles.filter((item) => [
            item.title,
            item.title_en,
            item.title_ar,
            item.title_native,
            ...(Array.isArray(item.synonyms) ? item.synonyms : []),
          ].some((value) => String(value || "").toLocaleLowerCase().includes(needle)))
        : qualified.titles;
      return {
        results: matching.slice((page - 1) * limit, page * limit).map(publicCatalogTitle),
        total: matching.length,
        providerTotal: qualified.providerTotal,
      };
    });
    if (!result) return;
    res.setHeader("Cache-Control", "no-store");
    return void res.json({
      ...result,
      page,
      limit,
      provider,
      section,
      query: q,
      mediaType: rawMediaType || null,
      category: category || null,
      tag: tag || null,
      catalogStatus: rawCatalogStatus || null,
    });
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
  res.setHeader("Cache-Control", provider === "stardima_catalog" ? "no-store" : "public, max-age=300");
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
    select: "id,episode_id,provider,server_key,server_name,quality,language,source_kind,source_host,availability_status,last_checked_at,last_seen_at,provider_metadata",
    strict: true,
  })));
  if (!servers) return;
  const visible = dedupeCatalogServerRows(servers, String(title.provider || ""));

  res.setHeader("Cache-Control", provider === "stardima_catalog" ? "no-store" : "private, max-age=10");
  res.json({
    title: publicCatalogTitle(title),
    episode: episodeRow,
    servers: visible.servers,
    omittedServerCount: visible.omittedCount,
    pagesOnly: true,
  });
});

router.get("/source-catalog/episodes/:episodeId/servers", async (req: Request, res: Response) => {
  const episodeId = Number(String(req.params.episodeId ?? ""));
  if (!Number.isSafeInteger(episodeId) || episodeId <= 0) return void res.status(400).json({ error: "invalid episode id" });
  const quality = String(req.query.quality ?? "").trim();
  const episodes = await catalogQuery(res, "source catalog episode unavailable", () => sbSelect<any>("source_catalog_episodes", {
    id: `eq.${episodeId}`,
  }, {
    limit: 1,
    select: "id,provider",
    strict: true,
  }));
  if (!episodes) return;
  if (!episodes[0]) return void res.status(404).json({ error: "episode not found" });
  const provider = String(episodes[0].provider || "");
  const rows = await catalogQuery(res, "source catalog servers unavailable", async () => (await sbSelect<any>("source_catalog_servers", {
    episode_id: `eq.${episodeId}`,
    quality: quality && quality.length <= 30 ? `eq.${quality}` : undefined,
    order: "quality.desc",
  }, {
    limit: 100,
    select: "id,episode_id,provider,server_key,server_name,quality,language,source_kind,source_host,availability_status,last_checked_at,last_seen_at,provider_metadata",
    strict: true,
  })));
  if (!rows) return;
  const visible = dedupeCatalogServerRows(rows, provider);
  res.setHeader("Cache-Control", provider === "stardima_catalog" ? "no-store" : "private, max-age=10");
  res.json({
    servers: visible.servers,
    omittedServerCount: visible.omittedCount,
    pagesOnly: true,
    playback: provider === "stardima_catalog" ? "internal-resolve-and-verify" : "resolve-on-demand",
  });
});

export default router;
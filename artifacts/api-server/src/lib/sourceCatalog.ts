import { sbSelect } from "./supabaseClient.js";

export type CatalogProvider = "animeify" | "anslayer" | "sanime" | "anifox";

export type CatalogServer = {
  id?: number;
  server_key?: string;
  server_name?: string | null;
  quality?: string | null;
  language?: string | null;
  source_kind?: string | null;
  source_host?: string | null;
  availability_status?: string | null;
  last_checked_at?: string | null;
  page_url: string;
};

export type CatalogEpisodeHint = {
  provider: CatalogProvider;
  providerTitleId: string;
  titleId: number;
  episodeId: number;
  episodeNumber: number;
  episodeStatus: string;
  title: Record<string, any>;
  episode: Record<string, any>;
  servers: CatalogServer[];
};

type HintInput = {
  title: string;
  english?: string | null;
  titleAr?: string | null;
  variants?: string[];
  episode: number;
  season?: number | null;
  providerTitleId?: string | number | null;
};

const PROVIDERS: CatalogProvider[] = ["animeify", "anslayer", "sanime", "anifox"];
const HINT_TTL_MS = 10 * 60_000;
const hintCache = new Map<string, { value: CatalogEpisodeHint | null; expiresAt: number }>();

function normalized(value: unknown): string {
  return String(value ?? "")
    .toLowerCase()
    .normalize("NFKD")
    .replace(/\p{Diacritic}/gu, "")
    .replace(/[^\p{L}\p{N}\s]+/gu, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function titleScore(input: HintInput, row: Record<string, any>): number {
  const wanted = [
    input.title,
    input.english,
    input.titleAr,
    ...(input.variants || []),
  ].map(normalized).filter(Boolean);
  const available = [
    row.title,
    row.title_en,
    row.title_ar,
    row.title_native,
    ...(Array.isArray(row.synonyms) ? row.synonyms : []),
  ].map(normalized).filter(Boolean);
  let best = 0;
  for (const a of wanted) {
    for (const b of available) {
      if (a === b) best = Math.max(best, 1);
      else if (a.length > 3 && (a.includes(b) || b.includes(a))) best = Math.max(best, 0.82);
      else {
        const at = new Set(a.split(" "));
        const bt = new Set(b.split(" "));
        const overlap = [...at].filter((token) => bt.has(token)).length;
        best = Math.max(best, overlap / Math.max(at.size, bt.size, 1));
      }
    }
  }
  return best;
}

function pageUrl(row: Record<string, any>): string {
  const metadata = row.provider_metadata;
  return String(row.page_url || (metadata && typeof metadata === "object" ? metadata.page_url : "") || "").trim();
}

function cacheKey(provider: CatalogProvider, input: HintInput): string {
  return [
    provider,
    input.providerTitleId || "",
    normalized(input.english || input.title),
    input.season ?? "",
    input.episode,
  ].join(":");
}

async function findTitle(provider: CatalogProvider, input: HintInput): Promise<Record<string, any> | null> {
  const directId = String(input.providerTitleId ?? "").trim();
  if (directId) {
    const exact = await sbSelect<Record<string, any>>("source_catalog_titles", {
      provider: `eq.${provider}`,
      provider_title_id: `eq.${directId}`,
    }, { limit: 1 });
    if (exact[0]) return exact[0];
  }

  const queries = [...new Set([
    input.title,
    input.english,
    input.titleAr,
    ...(input.variants || []),
  ].map((value) => String(value || "").trim()).filter((value) => value.length > 2))].slice(0, 6);
  const batches = await Promise.allSettled(queries.map((query) =>
    sbSelect<Record<string, any>>("source_catalog_titles", {
      provider: `eq.${provider}`,
      title: `ilike.*${query.replace(/[*%,]/g, " ")}*`,
    }, { limit: 30 }),
  ));
  const rows = batches.flatMap((batch) => batch.status === "fulfilled" ? batch.value : []);
  const unique = [...new Map(rows.map((row) => [String(row.id), row])).values()];
  unique.sort((a, b) => titleScore(input, b) - titleScore(input, a));
  const best = unique[0];
  return best && titleScore(input, best) >= 0.45 ? best : null;
}

export async function getSourceCatalogHint(
  provider: CatalogProvider,
  input: HintInput,
): Promise<CatalogEpisodeHint | null> {
  const key = cacheKey(provider, input);
  const cached = hintCache.get(key);
  if (cached && cached.expiresAt > Date.now()) return cached.value;

  try {
    const title = await findTitle(provider, input);
    if (!title?.id || !title.provider_title_id) {
      hintCache.set(key, { value: null, expiresAt: Date.now() + 60_000 });
      return null;
    }

    const episodeFilters: Record<string, string | number | undefined> = {
      title_id: `eq.${title.id}`,
      episode_number: `eq.${input.episode}`,
      season_number: input.season ? `eq.${input.season}` : undefined,
      order: "season_number.asc",
    };
    const episodes = await sbSelect<Record<string, any>>("source_catalog_episodes", episodeFilters, {
      limit: 1,
    });
    const episode = episodes[0];
    if (!episode?.id) {
      hintCache.set(key, { value: null, expiresAt: Date.now() + 60_000 });
      return null;
    }

    const rows = await sbSelect<Record<string, any>>("source_catalog_servers", {
      episode_id: `eq.${episode.id}`,
      order: "quality.desc",
    }, {
      limit: 100,
      // page_url is kept in provider_metadata on legacy production schemas.
      select: "id,episode_id,provider,server_key,server_name,quality,language,source_kind,source_host,availability_status,last_checked_at,provider_metadata",
    });
    const servers = rows.map((row) => ({ ...row, page_url: pageUrl(row) }))
      .filter((row) => row.page_url)
      .filter((row) => !["dead", "unsupported"].includes(String(row.availability_status || "").toLowerCase()));

    const value: CatalogEpisodeHint = {
      provider,
      providerTitleId: String(title.provider_title_id),
      titleId: Number(title.id),
      episodeId: Number(episode.id),
      episodeNumber: Number(episode.episode_number),
      episodeStatus: String(episode.episode_status || "episode_found"),
      title,
      episode,
      servers,
    };
    hintCache.set(key, { value, expiresAt: Date.now() + HINT_TTL_MS });
    return value;
  } catch (error: any) {
    console.warn(`[sourceCatalog] ${provider} hint failed:`, error?.message || error);
    hintCache.set(key, { value: null, expiresAt: Date.now() + 30_000 });
    return null;
  }
}

export async function getSourceCatalogHints(input: HintInput): Promise<Partial<Record<CatalogProvider, CatalogEpisodeHint>>> {
  const values = await Promise.all(PROVIDERS.map(async (provider) => [
    provider,
    await getSourceCatalogHint(provider, {
      ...input,
      providerTitleId: provider === "anslayer" ? input.providerTitleId : undefined,
    }),
  ] as const));
  return Object.fromEntries(values.filter(([, value]) => value)) as Partial<Record<CatalogProvider, CatalogEpisodeHint>>;
}

export function catalogQualityRank(quality: unknown): number {
  const value = String(quality || "").toLowerCase();
  if (value.includes("2160") || value.includes("4k")) return 24;
  if (value.includes("1080") || value.includes("fhd")) return 18;
  if (value.includes("720") || value.includes("hd")) return 13;
  if (value.includes("480")) return 8;
  return 5;
}

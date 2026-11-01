import { getBaseUrl } from "@/utils/api";

export type LatestEpisodeItem = {
  animeId: number;
  anilistId?: number;
  anslayerId: number;
  awAnimeId?: string;
  anifoxId?: string;
  providerTitleId?: string;
  source: string;
  name: string;
  romaji?: string;
  english?: string;
  native?: string;
  titleVariants?: string[];
  titleAr?: string;
  episode: number;
  season?: number;
  cover: string;
  year?: string;
  averageScore?: number | null;
  updatedAt?: string | number | null;
  [key: string]: unknown;
};

export function normalizeLatestEpisodeItem(item: any, sourceOverride?: string): LatestEpisodeItem {
  /* Keep provider IDs distinct: AnimeSlayer IDs are not AniList IDs. */
  const source = String(sourceOverride || item?.source || "").trim().toLowerCase();
  const rawAniListId = Number(item?.anilistId ?? item?.anilist_id ?? 0);
  const rawAnimeSlayerId = Number(
    item?.anslayerId ??
      item?.anime_id ??
      (source === "anslayer" && !item?.anilistId && !item?.anilist_id ? item?.animeId : 0) ??
      0,
  );
  const rawAwAnimeId = item?.awAnimeId ?? item?.aw_anime_id ??
    (source === "animewitcher" ? item?.anime_id : "");
  const rawAnifoxId = item?.anifoxId ?? item?.providerTitleId ??
    (source === "anifox" ? item?.content_id : "");
  const animeId = Number.isInteger(rawAniListId) && rawAniListId > 0 ? rawAniListId : 0;
  const anslayerId = Number.isInteger(rawAnimeSlayerId) && rawAnimeSlayerId > 0
    ? rawAnimeSlayerId
    : 0;
  const name = String(item?.name ?? item?.title ?? "").trim();
  const titleVariants = Array.from(new Set([
    ...(Array.isArray(item?.titleVariants) ? item.titleVariants : []),
    item?.romaji,
    item?.english,
    item?.native,
    name,
  ].filter(
    (value: unknown): value is string =>
      typeof value === "string" && value.trim().length > 1,
  )));
  const titleAr =
    typeof item?.title_ar === "string" && /[\u0600-\u06FF]/.test(item.title_ar)
      ? item.title_ar.trim()
      : typeof item?.titleAr === "string" && /[\u0600-\u06FF]/.test(item.titleAr)
        ? item.titleAr.trim()
        : "";
  const updatedAt =
    item?.updatedAt ??
    item?.updated_at ??
    item?.latest_episode_at ??
    item?.latest_episode_date ??
    item?.published_at ??
    item?.imported_at ??
    null;

  return {
    ...item,
    animeId,
    anilistId: animeId || undefined,
    anslayerId,
    awAnimeId: String(rawAwAnimeId || "").trim(),
    anifoxId: String(rawAnifoxId || "").trim(),
    providerTitleId: String(rawAnifoxId || "").trim(),
    source,
    name,
    titleAr,
    title_ar: titleAr,
    cover: String(item?.cover ?? item?.poster ?? "").trim(),
    romaji: String(item?.romaji ?? "").trim(),
    english: String(item?.english ?? "").trim(),
    native: String(item?.native ?? "").trim(),
    titleVariants,
    averageScore: Number.isFinite(Number(item?.averageScore))
      ? Number(item.averageScore)
      : null,
    updatedAt,
  };
}

async function fetchSource(endpoint: string, source: string, signal?: AbortSignal): Promise<LatestEpisodeItem[]> {
  const response = await fetch(`${getBaseUrl()}/api/anime/${endpoint}`, {
    signal,
    cache: "no-store",
  });
  if (!response.ok) throw new Error(`${endpoint}_${response.status}`);
  const payload = await response.json();
  const rows = Array.isArray(payload) ? payload : payload?.items || [];
  return rows
    .map((item: unknown) => normalizeLatestEpisodeItem(item, source))
    .filter((item: LatestEpisodeItem) =>
      (item.animeId > 0 || item.anslayerId > 0 || Boolean(item.awAnimeId) || Boolean(item.anifoxId)) &&
      item.name &&
      Number(item.episode) > 0,
    );
}

export async function fetchLatestEpisodes(signal?: AbortSignal): Promise<LatestEpisodeItem[]> {
  const results = await Promise.allSettled([
    fetchSource("anifox-latest", "anifox", signal),
  ]);
  const fulfilled = results.filter(
    (result): result is PromiseFulfilledResult<LatestEpisodeItem[]> => result.status === "fulfilled",
  );
  if (fulfilled.length === 0) throw new Error("تعذّر تحميل أحدث الحلقات من المصادر");

  const items = fulfilled
    .flatMap((result) => result.value)
    .filter((item) => item.source === "anifox");
  if (items.length === 0) {
    throw new Error("لم تصل بيانات أحدث الحلقات من المصادر");
  }
  return items;
}

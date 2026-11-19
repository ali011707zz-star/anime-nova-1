import { getBaseUrl } from "./baseUrl";

export type DubbedLatestKind = "dubbed-anime" | "aw-dubbed" | "sd2";

export type LatestEpisodeItem = {
  animeId: number;
  anilistId?: number;
  anslayerId: number;
  awAnimeId: string;
  source: string;
  name: string;
  titleAr: string;
  title_ar: string;
  episode: number;
  cover: string;
  romaji: string;
  english: string;
  native: string;
  titleVariants: string[];
  year?: string | number;
  averageScore?: number | null;
  updatedAt?: string | number | null;
  // Dubbed metadata (present for dubbed-anime / aw-dubbed / sd2 items)
  dubbedKind?: DubbedLatestKind;
  sectionLabel?: string;
  isMovie?: boolean;
  dubbedSlug?: string;
  awKey?: string;
  awSeries?: string;
  awSeasons?: string;
  sd2Slug?: string;
  sd2Id?: number;
  languageLabel?: string;
};

export type MangaLatestItem = {
  id: string;
  slug: string;
  source: "manga" | "manhwa";
  typeLabel: string;
  title: string;
  arabicTitle: string;
  englishTitle: string;
  poster: string;
  description: string;
  latestChapter: number | null;
  latestChapterSlug: string;
  latestChapterLabel: string;
  updatedAt: string | null;
  scoreText: string;
  statusAr: string;
  genres: string[];
};

function positiveInt(value: unknown): number {
  const num = Number(value);
  return Number.isInteger(num) && num > 0 ? num : 0;
}

export function normalizeLatestEpisodeItem(raw: any, fallbackSource = "anslayer"): LatestEpisodeItem {
  const item = raw && typeof raw === "object" ? raw : {};
  const dubbedKindRaw = String(item?.dubbedKind || "").trim();
  const dubbedKind: DubbedLatestKind | undefined =
    dubbedKindRaw === "dubbed-anime" || dubbedKindRaw === "aw-dubbed" || dubbedKindRaw === "sd2"
      ? dubbedKindRaw
      : undefined;

  const source = dubbedKind || String(item?.source || fallbackSource || "anslayer").trim();
  const animeId = positiveInt(item?.animeId ?? item?.anilistId);
  const anslayerId = positiveInt(item?.anslayerId ?? item?.sourceId);
  const rawAwAnimeId = item?.awAnimeId ?? item?.awKey ?? item?.awSeries ?? "";
  const name = String(item?.name ?? item?.title ?? item?.english ?? item?.romaji ?? "").trim();
  const titleVariants = Array.from(
    new Set(
      [
        ...(Array.isArray(item?.titleVariants) ? item.titleVariants : []),
        item?.romaji,
        item?.english,
        item?.native,
        name,
      ].filter((value: unknown): value is string => typeof value === "string" && value.trim().length > 1),
    ),
  );
  const titleAr =
    typeof item?.title_ar === "string" && /[\u0600-\u06FF]/.test(item.title_ar)
      ? item.title_ar.trim()
      : typeof item?.titleAr === "string" && /[\u0600-\u06FF]/.test(item.titleAr)
        ? item.titleAr.trim()
        : dubbedKind
          ? name
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
    source,
    name,
    titleAr,
    title_ar: titleAr,
    episode: Math.max(1, Number(item?.episode || 1) || 1),
    cover: String(item?.cover ?? item?.poster ?? "").trim(),
    romaji: String(item?.romaji ?? "").trim(),
    english: String(item?.english ?? "").trim(),
    native: String(item?.native ?? "").trim(),
    titleVariants,
    averageScore: Number.isFinite(Number(item?.averageScore)) ? Number(item.averageScore) : null,
    updatedAt,
    dubbedKind,
    sectionLabel: item?.sectionLabel ? String(item.sectionLabel) : undefined,
    isMovie: Boolean(item?.isMovie),
    dubbedSlug: item?.dubbedSlug ? String(item.dubbedSlug) : undefined,
    awKey: item?.awKey ? String(item.awKey) : undefined,
    awSeries: item?.awSeries ? String(item.awSeries) : undefined,
    awSeasons: item?.awSeasons ? String(item.awSeasons) : undefined,
    sd2Slug: item?.sd2Slug ? String(item.sd2Slug) : undefined,
    sd2Id: positiveInt(item?.sd2Id) || undefined,
    languageLabel: item?.languageLabel ? String(item.languageLabel) : undefined,
  };
}

export function getLatestEpisodeRoute(
  item: LatestEpisodeItem,
): { pathname: string; params?: Record<string, string> } {
  if (item.dubbedKind === "dubbed-anime" && item.dubbedSlug) {
    return {
      pathname: "/dubbed-anime/[slug]",
      params: {
        slug: item.dubbedSlug,
        title: item.titleAr || item.name,
        poster: item.cover || "",
      },
    };
  }
  if (item.dubbedKind === "aw-dubbed" && (item.awKey || item.awSeries)) {
    const key = item.awKey || item.awSeries || item.name;
    const seasons = item.awSeasons || JSON.stringify([{ label: "الحلقات", animeId: item.awSeries || key }]);
    return {
      pathname: "/aw-dubbed/[key]",
      params: {
        key: encodeURIComponent(key),
        title: item.english || item.name,
        titleAr: item.titleAr || item.name,
        seasons: encodeURIComponent(seasons),
        poster: encodeURIComponent(item.cover || ""),
      },
    };
  }
  if (item.dubbedKind === "sd2" && item.sd2Slug) {
    return {
      pathname: "/dubbed/[id]",
      params: {
        id: `sd2-${item.sd2Slug}`,
        provider: "sd2",
        slug: item.sd2Slug,
        title: item.titleAr || item.name,
        img: item.cover || "",
        isMovie: item.isMovie ? "1" : "0",
        languageLabel: item.languageLabel || "",
      },
    };
  }

  const titles = Array.from(
    new Set(
      [
        ...(item.titleVariants || []),
        item.romaji,
        item.english,
        item.native,
        item.name,
      ].filter((value): value is string => typeof value === "string" && value.trim().length > 1),
    ),
  );
  return {
    pathname:
      `/watch?anime=${encodeURIComponent(String(item.animeId || 0))}` +
      `&anilistId=${encodeURIComponent(String(item.anilistId || item.animeId || 0))}` +
      `&anslayerId=${encodeURIComponent(String(item.anslayerId || ""))}` +
      `&awAnimeId=${encodeURIComponent(String(item.awAnimeId || ""))}` +
      `&ep=${encodeURIComponent(String(item.episode))}` +
      `&totalEps=${encodeURIComponent(String(item.episode))}` +
      `&title=${encodeURIComponent(item.romaji || item.name || "")}` +
      `&english=${encodeURIComponent(item.english || "")}` +
      `&native=${encodeURIComponent(item.native || "")}` +
      `&titles=${encodeURIComponent(JSON.stringify(titles))}` +
      `&cover=${encodeURIComponent(item.cover || "")}` +
      `&titleAr=${encodeURIComponent(item.titleAr || "")}` +
      `&site=${encodeURIComponent(item.source)}` +
      `&fromLatest=1&latestSource=${encodeURIComponent(item.source)}`,
  };
}

async function fetchSubbedLatest(signal?: AbortSignal): Promise<LatestEpisodeItem[]> {
  const response = await fetch(`${getBaseUrl()}/api/anime/anslayer-latest`, {
    signal,
    cache: "no-store",
  });
  if (!response.ok) throw new Error(`anslayer-latest_${response.status}`);
  const payload = await response.json();
  const rows = Array.isArray(payload) ? payload : payload?.items || [];
  return rows
    .map((item: unknown) => normalizeLatestEpisodeItem(item, "anslayer"))
    .filter(
      (item: LatestEpisodeItem) =>
        (item.animeId > 0 || item.anslayerId > 0 || Boolean(item.awAnimeId)) &&
        item.name &&
        Number(item.episode) > 0,
    );
}

export async function fetchDubbedLatestEpisodes(signal?: AbortSignal): Promise<LatestEpisodeItem[]> {
  try {
    const response = await fetch(`${getBaseUrl()}/api/dubbed/latest-episodes`, {
      signal,
      cache: "no-store",
    });
    if (!response.ok) return [];
    const payload = await response.json();
    const rows = Array.isArray(payload) ? payload : payload?.items || [];
    return rows
      .map((item: unknown) => normalizeLatestEpisodeItem(item, "dubbed-anime"))
      .filter((item: LatestEpisodeItem) => Boolean(item.dubbedKind && item.name));
  } catch {
    return [];
  }
}

/**
 * يجلب أحدث حلقات الأنمي المترجم مدمجة بسلاسة مع أحدث حلقات الأقسام المدبلجة:
 *   - قسم الأنمي المدبلج (dubbed-anime)
 *   - قسم الأنيميشن المدبلج (aw-dubbed)
 *   - قسم كرتون مدبلج 2 (sd2)
 */
export async function fetchLatestEpisodes(signal?: AbortSignal): Promise<LatestEpisodeItem[]> {
  const [subbedRes, dubbedItems] = await Promise.all([
    fetchSubbedLatest(signal).catch(() => [] as LatestEpisodeItem[]),
    fetchDubbedLatestEpisodes(signal),
  ]);

  if (!subbedRes.length && !dubbedItems.length) {
    return [];
  }
  if (!dubbedItems.length) return subbedRes;
  if (!subbedRes.length) return dubbedItems;

  // Interleave smoothly: every 2 subbed episodes, insert 1 dubbed release so both are prominent right away
  const merged: LatestEpisodeItem[] = [];
  let sIdx = 0;
  let dIdx = 0;
  while (sIdx < subbedRes.length || dIdx < dubbedItems.length) {
    if (sIdx < subbedRes.length) merged.push(subbedRes[sIdx++]);
    if (sIdx < subbedRes.length) merged.push(subbedRes[sIdx++]);
    if (dIdx < dubbedItems.length) merged.push(dubbedItems[dIdx++]);
  }
  return merged;
}

export async function fetchMangaLatestUpdates(signal?: AbortSignal): Promise<MangaLatestItem[]> {
  try {
    const response = await fetch(`${getBaseUrl()}/api/manga/latest-updates`, {
      signal,
      cache: "no-store",
    });
    if (!response.ok) return [];
    const payload = await response.json();
    const rows = Array.isArray(payload) ? payload : payload?.items || [];
    return rows.filter((x: any): x is MangaLatestItem => Boolean(x && x.id && (x.arabicTitle || x.title)));
  } catch {
    return [];
  }
}

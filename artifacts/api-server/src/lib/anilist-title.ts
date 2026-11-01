type AniListMedia = {
  id?: number;
  title?: {
    romaji?: string | null;
    english?: string | null;
    native?: string | null;
  } | null;
  synonyms?: string[] | null;
};

export type AniListTitleMatch = {
  id: number;
  titles: string[];
};

type CachedMatch = {
  value: AniListTitleMatch | null;
  expiresAt: number;
};

const CACHE_TTL_MS = 30 * 60_000;
const lookupCache = new Map<string, CachedMatch>();
const LOOKUP_TIMEOUT_MS = 12_000;

function normalizeTitle(value: string): string {
  return value
    .toLowerCase()
    .replace(/\([^)]*\)|\[[^\]]*\]/g, " ")
    .replace(/season\s+\d+|\b(?:s|part)\s*\d+\b/gi, " ")
    .replace(/[^a-z0-9\u0600-\u06ff]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function mediaTitles(media: AniListMedia): string[] {
  return [
    media.title?.romaji,
    media.title?.english,
    media.title?.native,
    ...(Array.isArray(media.synonyms) ? media.synonyms : []),
  ]
    .filter((value): value is string => typeof value === "string" && value.trim().length > 0)
    .map(value => value.trim())
    .filter((value, index, all) => all.indexOf(value) === index);
}

function titleScore(media: AniListMedia, queries: string[]): number {
  const titles = mediaTitles(media).map(normalizeTitle).filter(Boolean);
  let best = 0;
  for (const query of queries) {
    const target = normalizeTitle(query);
    if (!target) continue;
    for (const candidate of titles) {
      if (candidate === target) best = Math.max(best, 1);
      else if (candidate.includes(target) || target.includes(candidate)) best = Math.max(best, 0.86);
      else {
        const tokens = new Set(target.split(" ").filter(Boolean));
        const matching = candidate.split(" ").filter(token => tokens.has(token)).length;
        best = Math.max(best, tokens.size ? matching / tokens.size : 0);
      }
    }
  }
  return best;
}

export async function lookupAniListTitle(
  queries: string[],
  id?: number,
): Promise<AniListTitleMatch | null> {
  const cleanQueries = queries
    .filter(value => typeof value === "string")
    .map(value => value.trim())
    .filter(Boolean)
    .filter((value, index, all) => all.indexOf(value) === index)
    .slice(0, 5);
  if (!id && !cleanQueries.length) return null;

  const cacheKey = id ? `id:${id}` : `q:${cleanQueries.map(normalizeTitle).join("|")}`;
  const cached = lookupCache.get(cacheKey);
  if (cached && cached.expiresAt > Date.now()) return cached.value;

  const query = id
    ? `query($id:Int){Media(id:$id,type:ANIME){id title{romaji english native} synonyms}}`
    : `query($search:String){Page(perPage:8){media(search:$search,type:ANIME){id title{romaji english native} synonyms}}}`;
  const variables = id ? { id } : { search: cleanQueries[0] };

  try {
    const response = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
        Origin: "https://anilist.co",
        Referer: "https://anilist.co/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/125 Safari/537.36",
        "Accept-Language": "en-US,en;q=0.9,ar;q=0.8",
      },
      body: JSON.stringify({ query, variables }),
      signal: AbortSignal.timeout(LOOKUP_TIMEOUT_MS),
    });
    if (!response.ok) throw new Error(`AniList title lookup returned ${response.status}`);

    const payload = await response.json() as {
      data?: { Media?: AniListMedia | null; Page?: { media?: AniListMedia[] } };
      errors?: unknown[];
    };
    if (payload.errors?.length) throw new Error("AniList title lookup returned errors");

    const candidates = id
      ? (payload.data?.Media ? [payload.data.Media] : [])
      : (payload.data?.Page?.media || []);
    const best = candidates
      .filter(media => Number.isFinite(Number(media.id)) && Number(media.id) > 0)
      .map(media => ({ media, score: id ? 1 : titleScore(media, cleanQueries) }))
      .sort((a, b) => b.score - a.score)[0];
    const value = best && (id || best.score >= 0.5)
      ? { id: Number(best.media.id), titles: mediaTitles(best.media) }
      : null;

    lookupCache.set(cacheKey, { value, expiresAt: Date.now() + CACHE_TTL_MS });
    return value;
  } catch {
    lookupCache.set(cacheKey, { value: null, expiresAt: Date.now() + 5 * 60_000 });
    return null;
  }
}
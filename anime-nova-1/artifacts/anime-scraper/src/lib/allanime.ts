const BASE = "https://api.allanime.day/api";
const HEADERS = {
  "Content-Type": "application/json",
  Referer: "https://allanime.to",
  Origin: "https://allanime.to",
  "User-Agent":
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36",
};

async function gql(query: string, variables: Record<string, unknown>) {
  try {
    const r = await fetch(BASE, {
      method: "POST",
      headers: HEADERS,
      body: JSON.stringify({ query, variables }),
      signal: AbortSignal.timeout(14000),
    });
    if (!r.ok) return null;
    return r.json();
  } catch {
    return null;
  }
}

export interface AllAnimeShow {
  _id: string;
  name: string;
  englishName?: string;
  thumbnail?: string;
  episodeCount?: number;
}

export interface AllAnimeSource {
  url: string;
  type: string;
  sourceName: string;
  priority: number;
}

const SEARCH_Q = `
query ($search: SearchInput, $limit: Int, $page: Int, $translationType: VaildTranslationTypeEnumType, $countryOrigin: VaildCountryOriginEnumType) {
  shows(search: $search, limit: $limit, page: $page, translationType: $translationType, countryOrigin: $countryOrigin) {
    edges { _id name englishName thumbnail episodeCount score }
  }
}`;

export async function searchShows(query: string): Promise<AllAnimeShow[]> {
  const d = await gql(SEARCH_Q, {
    search: { query, sortBy: "Top" },
    limit: 10,
    page: 1,
    translationType: "sub",
    countryOrigin: "JP",
  });
  return d?.data?.shows?.edges || [];
}

// Updated query - sourceUrls is now a JSON scalar in newer AllAnime API
const EP_Q = `
query ($showId: String!, $episodeString: String!, $type: VaildTranslationTypeEnumType!) {
  episode(showId: $showId, episodeString: $episodeString, translationType: $type) {
    sourceUrls
  }
}`;

export async function fetchEpisodeSources(
  showId: string,
  epNum: number
): Promise<AllAnimeSource[]> {
  const d = await gql(EP_Q, {
    showId,
    episodeString: String(epNum),
    type: "sub",
  });

  const raw = d?.data?.episode?.sourceUrls;
  if (!raw) return [];

  // sourceUrls can be an array directly or a JSON string
  if (Array.isArray(raw)) return raw as AllAnimeSource[];
  if (typeof raw === "string") {
    try {
      const parsed = JSON.parse(raw);
      return Array.isArray(parsed) ? parsed : [];
    } catch {
      return [];
    }
  }
  return [];
}

function decodeUrl(raw: string): string {
  try {
    if (raw.startsWith("--")) {
      const b = raw.slice(2).replace(/-/g, "=");
      return atob(b);
    }
    if (/^[A-Za-z0-9+/=]{20,}$/.test(raw)) {
      return atob(raw);
    }
  } catch {}
  return raw;
}

export interface VideoSource {
  url: string;
  label: string;
  isM3U8: boolean;
  isEmbed: boolean;
}

export function processSourceUrls(sources: AllAnimeSource[]): VideoSource[] {
  const out: VideoSource[] = [];
  for (const s of sources) {
    try {
      const url = decodeUrl(s.url);
      if (!url || url.length < 5) continue;
      const isM3U8 = url.includes(".m3u8");
      const isEmbed =
        s.type === "embed" ||
        url.includes("iframe") ||
        url.includes("embed") ||
        url.includes("vidstreaming") ||
        url.includes("gogoanime") ||
        url.includes("ssbcontent") ||
        (!url.startsWith("http") && !isM3U8);
      out.push({
        url,
        label: s.sourceName || s.type || "سيرفر",
        isM3U8,
        isEmbed,
      });
    } catch {}
  }
  return out.sort((a, b) => {
    if (!a.isEmbed && b.isEmbed) return -1;
    if (a.isEmbed && !b.isEmbed) return 1;
    return 0;
  });
}

function normTitle(t: string) {
  return t
    .toLowerCase()
    .replace(/[^a-z0-9 ]/g, "")
    .trim();
}

function score(a: string, b: string) {
  a = normTitle(a);
  b = normTitle(b);
  if (a === b) return 1;
  if (a.includes(b) || b.includes(a)) return 0.85;
  const aw = new Set(a.split(" "));
  const bw = b.split(" ");
  const c = bw.filter((w) => aw.has(w)).length;
  return c / Math.max(aw.size, bw.length);
}

const SHOW_CACHE = "aa-show-";
const SRC_CACHE = "aa-src-";

export async function resolveShowId(
  anilistId: number,
  titles: string[]
): Promise<string | null> {
  const k = `${SHOW_CACHE}${anilistId}`;
  const c = localStorage.getItem(k);
  if (c) return c;

  for (const title of titles.filter(Boolean)) {
    const results = await searchShows(title);
    if (!results.length) continue;
    let best = results[0];
    let bestScore = 0;
    for (const r of results) {
      const s = Math.max(
        score(r.name, title),
        score(r.englishName || "", title)
      );
      if (s > bestScore) {
        bestScore = s;
        best = r;
      }
    }
    if (bestScore > 0.3) {
      localStorage.setItem(k, best._id);
      return best._id;
    }
  }
  return null;
}

export async function getEpisodeVideoSources(
  showId: string,
  epNum: number
): Promise<VideoSource[]> {
  const k = `${SRC_CACHE}${showId}-${epNum}`;
  const c = localStorage.getItem(k);
  if (c) {
    try {
      const p = JSON.parse(c);
      if (Date.now() - p.ts < 1800000) return p.srcs;
    } catch {}
  }
  const raw = await fetchEpisodeSources(showId, epNum);
  const srcs = processSourceUrls(raw);
  if (srcs.length) {
    localStorage.setItem(k, JSON.stringify({ srcs, ts: Date.now() }));
  }
  return srcs;
}

/** Build a direct AllAnime episode page URL (can be used as iframe fallback) */
export function getAllAnimeEpisodeUrl(
  showId: string,
  epNum: number,
  type: "sub" | "dub" = "sub"
): string {
  return `https://allanime.to/anime/${showId}/episodes/${type}/${epNum}`;
}

/** Build AllAnime embed URL (no subfields needed) */
export function getAllAnimeEmbedUrl(
  showId: string,
  epNum: number,
  sourceName = "Default"
): string {
  return (
    `https://embed.ssbcontent.site/?p=web` +
    `&sourceName=${encodeURIComponent(sourceName)}` +
    `&showId=${encodeURIComponent(showId)}` +
    `&episodeString=${epNum}` +
    `&isMobile=false&translationType=sub`
  );
}

const API_BASE = "/api";

export interface SearchResult {
  id: string;
  title: string;
  image?: string;
  url?: string;
}

export interface EpisodeItem {
  id: string;
  number: number;
  title?: string;
  isFiller?: boolean;
}

export interface VideoSource {
  url: string;
  quality: string;
  isM3U8: boolean;
}

export interface VideoData {
  sources: VideoSource[];
  subtitles?: any[];
  headers?: Record<string, string>;
}

async function apiFetch(path: string) {
  try {
    const res = await fetch(`${API_BASE}${path}`, { signal: AbortSignal.timeout(15000) });
    if (!res.ok) return null;
    return res.json();
  } catch {
    return null;
  }
}

export async function searchAnime(query: string): Promise<SearchResult[]> {
  const data = await apiFetch(`/anime/search?q=${encodeURIComponent(query)}`);
  return data?.results || [];
}

export async function getAnimeInfo(id: string): Promise<{ episodes: EpisodeItem[] } | null> {
  const data = await apiFetch(`/anime/info?id=${encodeURIComponent(id)}`);
  return data;
}

export async function getEpisodeSources(episodeId: string): Promise<VideoData | null> {
  const data = await apiFetch(`/anime/sources?epId=${encodeURIComponent(episodeId)}`);
  return data;
}

function similarity(a: string, b: string): number {
  a = a.toLowerCase().replace(/[^a-z0-9 ]/g, "").trim();
  b = b.toLowerCase().replace(/[^a-z0-9 ]/g, "").trim();
  if (a === b) return 1;
  if (a.includes(b) || b.includes(a)) return 0.8;
  const aW = new Set(a.split(" "));
  const bW = b.split(" ");
  const common = bW.filter((w) => aW.has(w)).length;
  return common / Math.max(aW.size, bW.length);
}

const ID_CACHE_KEY = "hianime-id-";
const EP_CACHE_KEY = "hianime-eps-";

export async function resolveHianimeId(
  anilistId: number,
  titles: string[]
): Promise<string | null> {
  const cached = localStorage.getItem(`${ID_CACHE_KEY}${anilistId}`);
  if (cached) return cached;

  for (const title of titles.filter(Boolean)) {
    const results = await searchAnime(title);
    if (!results.length) continue;
    let best = results[0];
    let bestScore = 0;
    for (const r of results) {
      const score = similarity(r.title, title);
      if (score > bestScore) { bestScore = score; best = r; }
    }
    if (bestScore > 0.3) {
      localStorage.setItem(`${ID_CACHE_KEY}${anilistId}`, best.id);
      return best.id;
    }
  }
  return null;
}

export async function getEpisodeList(hianimeId: string): Promise<EpisodeItem[]> {
  const cacheKey = `${EP_CACHE_KEY}${hianimeId}`;
  const cached = localStorage.getItem(cacheKey);
  if (cached) {
    try {
      const p = JSON.parse(cached);
      if (Date.now() - p.ts < 3_600_000) return p.eps;
    } catch {}
  }
  const info = await getAnimeInfo(hianimeId);
  const eps = info?.episodes || [];
  localStorage.setItem(cacheKey, JSON.stringify({ eps, ts: Date.now() }));
  return eps;
}

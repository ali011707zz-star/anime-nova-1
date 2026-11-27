/**
 * Direct on-phone OpenSubtitles REST client for human-made Arabic subtitles.
 * Works directly via `rest.opensubtitles.org` + `dl.opensubtitles.org` (without `.gz`)
 * so React Native fetches plain UTF-8 `.srt`/`.ass` text with 0% VPS load.
 */

import {
  selectBestOpenSubtitleMatch,
  type OpenSubtitleMatch,
} from "./donghuaLogic.mjs";

const OS_REST_BASE = "https://rest.opensubtitles.org/search";
const OS_HEADERS = {
  "User-Agent": "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36",
  "X-User-Agent": "TemporaryUserAgent",
  Accept: "application/json",
};

const sessionCache = new Map<string, OpenSubtitleMatch | null>();

function cleanQueryTitle(raw: string): { baseTitle: string; season: number } {
  let s = String(raw || "").trim();
  let season = 1;
  const seasonMatch =
    s.match(/\bseason\s*(\d+)\b/i) ||
    s.match(/\bs(\d+)\b/i) ||
    s.match(/\bpart\s*(\d+)\b/i) ||
    s.match(/\b(\d+)(?:nd|rd|th)\s+season\b/i);
  if (seasonMatch) {
    const parsed = parseInt(seasonMatch[1], 10);
    if (parsed >= 1 && parsed <= 30) season = parsed;
  }
  s = s
    .replace(/\bseason\s*\d+\b/gi, "")
    .replace(/\b\d+(?:nd|rd|th)\s+season\b/gi, "")
    .replace(/\bfinal\s+season\b/gi, "")
    .replace(/\b(?:the\s+)?animation\b/gi, "")
    .replace(/\([^)]*\)/g, " ")
    .replace(/[:\-–—_]+/g, " ")
    .replace(/[^a-zA-Z0-9\s']/g, " ")
    .replace(/\s+/g, " ")
    .trim();
  return { baseTitle: s, season };
}

async function queryOpenSubtitlesRest(path: string, signal?: AbortSignal): Promise<any[]> {
  const controller = new AbortController();
  const timeout = setTimeout(() => controller.abort(), 7500);
  const onAbort = () => controller.abort();
  signal?.addEventListener("abort", onAbort, { once: true });
  try {
    const res = await fetch(`${OS_REST_BASE}${path}`, {
      headers: OS_HEADERS,
      signal: controller.signal,
    });
    if (!res.ok) return [];
    const text = await res.text();
    if (!text || text[0] !== "[") return [];
    const data = JSON.parse(text);
    return Array.isArray(data) ? data : [];
  } catch {
    return [];
  } finally {
    clearTimeout(timeout);
    signal?.removeEventListener("abort", onAbort);
  }
}

export interface OpenSubtitleLookupParams {
  title?: string;
  englishTitle?: string;
  episode: number;
  season?: number;
  signal?: AbortSignal;
}

/**
 * Search OpenSubtitles directly on the phone for a human-translated Arabic subtitle
 * matching the given anime or donghua episode.
 */
export async function fetchHumanArabicSubtitleFromOpenSubtitles(
  params: OpenSubtitleLookupParams,
): Promise<OpenSubtitleMatch | null> {
  const candidates: { baseTitle: string; season: number }[] = [];
  for (const raw of [params.englishTitle, params.title]) {
    if (!raw) continue;
    const parsed = cleanQueryTitle(raw);
    if (parsed.baseTitle.length >= 2 && !candidates.some((c) => c.baseTitle.toLowerCase() === parsed.baseTitle.toLowerCase())) {
      candidates.push({
        baseTitle: parsed.baseTitle,
        season: params.season && params.season > 0 ? params.season : parsed.season,
      });
    }
  }
  if (candidates.length === 0) return null;

  const ep = Math.max(1, Math.floor(Number(params.episode) || 1));
  const cacheKey = `${candidates[0].baseTitle.toLowerCase()}|s${candidates[0].season}|e${ep}`;
  if (sessionCache.has(cacheKey)) {
    return sessionCache.get(cacheKey) ?? null;
  }

  for (const cand of candidates) {
    if (params.signal?.aborted) return null;
    const encoded = encodeURIComponent(cand.baseTitle.toLowerCase());

    // 1. Exact season + episode query (best for seasonal anime like Solo Leveling, JJK, AoT)
    const episodicResults = await queryOpenSubtitlesRest(
      `/episode-${ep}/query-${encoded}/season-${cand.season}/sublanguageid-ara`,
      params.signal,
    );
    const episodicBest = selectBestOpenSubtitleMatch(episodicResults, {
      title: cand.baseTitle,
      episode: ep,
      season: cand.season,
    });
    if (episodicBest) {
      sessionCache.set(cacheKey, episodicBest);
      return episodicBest;
    }

    // 2. Broader query without season (important for long-running anime & Donghua like Soul Land / BTTH)
    const broadResults = await queryOpenSubtitlesRest(
      `/query-${encoded}/sublanguageid-ara`,
      params.signal,
    );
    const broadBest = selectBestOpenSubtitleMatch(broadResults, {
      title: cand.baseTitle,
      episode: ep,
      season: cand.season,
    });
    if (broadBest) {
      sessionCache.set(cacheKey, broadBest);
      return broadBest;
    }
  }

  sessionCache.set(cacheKey, null);
  return null;
}

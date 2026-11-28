/**
 * Direct client-side EgyWatch playback & download provider (0% VPS bandwidth).
 *
 * Runs directly on the user's phone (so IP-bound CDN tokens match the phone's IP!):
 *   - Uses direct embed HTML fetch + built-in Dean Edwards JS unpacker (no slow PHP scrapers).
 *   - Omits Referer on playback (XFileSharing CDNs return HTTP 403 if Referer is sent).
 *   - Live-verifies every .m3u8 (#EXTM3U) / .mp4 (200/206 video) BEFORE emitting (0 dead servers!).
 *   - Reads real resolution (4K / 1080p / 720p / 480p) directly from #EXT-X-STREAM-INF.
 *   - Streams each verified server to the UI immediately (~0.5–1.2s first arrival).
 */
import { Platform } from "react-native";
import {
  EGYWATCH_API_CODE,
  EGYWATCH_BASES,
  EGYWATCH_BROWSER_UA,
  EGYWATCH_HEADERS,
  classifyEgyWatchServer,
  detectQualityFromM3u8,
  parseExtractedMediaLinks,
  pickBestEgyWatchMatch,
  type ClassifiedEgyWatchServer,
  type EgyWatchServerCode,
} from "./egyWatchLogic.mjs";
import type { FilmServerLink, TmdbMediaType } from "./filmCatalog";

const MATCH_CACHE_TTL_MS = 25 * 60_000;
const DETAIL_CACHE_TTL_MS = 15 * 60_000;

const matchCache = new Map<string, { ts: number; id: number; ewType: "movie" | "serie" | "anime" }>();
const movieVideosCache = new Map<number, { ts: number; videos: any[] }>();
const showSeasonsCache = new Map<string, { ts: number; seasons: any[] }>();
const seasonEpisodesCache = new Map<string, { ts: number; episodes: any[] }>();

const inflightMovie = new Map<number, Promise<any[]>>();
const inflightShow = new Map<string, Promise<any[] | null>>();
const inflightSeason = new Map<string, Promise<any[] | null>>();

async function fetchWithTimeout(
  url: string,
  init: RequestInit,
  timeoutMs: number,
  outerSignal?: AbortSignal,
): Promise<Response> {
  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), timeoutMs);
  const onOuterAbort = () => ctrl.abort();
  outerSignal?.addEventListener("abort", onOuterAbort, { once: true });
  try {
    return await fetch(url, { ...init, signal: ctrl.signal });
  } finally {
    clearTimeout(timer);
    outerSignal?.removeEventListener("abort", onOuterAbort);
  }
}

async function egyApiFetch(path: string, signal?: AbortSignal, timeoutMs = 4500): Promise<any | null> {
  for (let attempt = 0; attempt < 2; attempt++) {
    if (signal?.aborted) return null;
    const base = EGYWATCH_BASES[attempt % EGYWATCH_BASES.length];
    try {
      const res = await fetchWithTimeout(`${base}${path}`, { headers: EGYWATCH_HEADERS }, timeoutMs, signal);
      if (!res.ok) continue;
      const text = await res.text();
      if (!text || text === '{"message":""}') continue;
      const json = JSON.parse(text);
      if (json && Object.keys(json).length === 1 && json.message === "") continue;
      return json;
    } catch {
      // Fail over to secondary gateway mirror
    }
  }
  return null;
}

async function getCachedMovieVideos(ewId: number, signal?: AbortSignal): Promise<any[]> {
  const hit = movieVideosCache.get(ewId);
  if (hit && Date.now() - hit.ts < DETAIL_CACHE_TTL_MS) return hit.videos;
  const existing = inflightMovie.get(ewId);
  if (existing) return existing;
  const job = (async () => {
    const det = await egyApiFetch(`media/detail/${ewId}/${EGYWATCH_API_CODE}`, signal, 4500);
    const vids: any[] = Array.isArray(det?.videos) ? det.videos : [];
    if (vids.length > 0) {
      movieVideosCache.set(ewId, { ts: Date.now(), videos: vids });
    }
    return vids;
  })().finally(() => {
    inflightMovie.delete(ewId);
  });
  inflightMovie.set(ewId, job);
  return job;
}

async function getCachedShowSeasons(
  ewType: "serie" | "anime",
  ewId: number,
  signal?: AbortSignal,
): Promise<any[] | null> {
  const showKey = `${ewType}:${ewId}`;
  const hit = showSeasonsCache.get(showKey);
  if (hit && Date.now() - hit.ts < DETAIL_CACHE_TTL_MS) return hit.seasons;
  const existing = inflightShow.get(showKey);
  if (existing) return existing;
  const job = (async () => {
    const showPath = ewType === "anime" ? `animes/show/${ewId}` : `series/show/${ewId}`;
    const det = await egyApiFetch(`${showPath}/${EGYWATCH_API_CODE}`, signal, 4500);
    if (Array.isArray(det?.seasons)) {
      const fetchedSeasons: any[] = det.seasons;
      showSeasonsCache.set(showKey, { ts: Date.now(), seasons: fetchedSeasons });
      return fetchedSeasons;
    }
    return null;
  })().finally(() => {
    inflightShow.delete(showKey);
  });
  inflightShow.set(showKey, job);
  return job;
}

async function getCachedSeasonEpisodes(
  ewType: "serie" | "anime",
  seasonId: number,
  signal?: AbortSignal,
): Promise<any[] | null> {
  const sKey = `${ewType}:s:${seasonId}`;
  const hit = seasonEpisodesCache.get(sKey);
  if (hit && Date.now() - hit.ts < DETAIL_CACHE_TTL_MS) return hit.episodes;
  const existing = inflightSeason.get(sKey);
  if (existing) return existing;
  const job = (async () => {
    const seasonPath = ewType === "anime" ? "animes/season" : "series/season";
    const sData = await egyApiFetch(`${seasonPath}/${seasonId}/${EGYWATCH_API_CODE}`, signal, 4500);
    if (Array.isArray(sData?.episodes)) {
      const fetchedEps: any[] = sData.episodes;
      seasonEpisodesCache.set(sKey, { ts: Date.now(), episodes: fetchedEps });
      return fetchedEps;
    }
    return null;
  })().finally(() => {
    inflightSeason.delete(sKey);
  });
  inflightSeason.set(sKey, job);
  return job;
}

/**
 * Verify a candidate stream directly from the phone (NO Referer!) and extract its true resolution.
 */
async function verifyPlayableOnPhone(
  url: string,
  kind: "hls" | "direct",
  fallbackQuality: string,
  headers: Record<string, string>,
  signal?: AbortSignal,
): Promise<{ ok: boolean; quality: string }> {
  if (signal?.aborted) return { ok: false, quality: fallbackQuality };
  try {
    const reqHeaders: Record<string, string> = {
      ...headers,
      ...(kind === "direct" ? { Range: "bytes=0-511" } : {}),
    };
    const r = await fetchWithTimeout(url, { headers: reqHeaders }, 3200, signal);
    if (!r.ok && r.status !== 206) return { ok: false, quality: fallbackQuality };
    const ct = String(r.headers.get("content-type") || "").toLowerCase();
    if (kind === "hls") {
      const txt = await r.text();
      if (!txt.includes("#EXTM3U")) return { ok: false, quality: fallbackQuality };
      return { ok: true, quality: detectQualityFromM3u8(txt, fallbackQuality) };
    }
    if (ct.includes("text/html") || ct.includes("application/json")) {
      return { ok: false, quality: fallbackQuality };
    }
    return { ok: true, quality: fallbackQuality };
  } catch {
    return { ok: false, quality: fallbackQuality };
  }
}

async function extractOnPhone(
  srv: ClassifiedEgyWatchServer,
  signal?: AbortSignal,
): Promise<Array<{ url: string; quality: string; kind: "hls" | "direct"; headers: Record<string, string> }>> {
  if (signal?.aborted) return [];
  const fetchHeaders: Record<string, string> = {
    "User-Agent": srv.headers["User-Agent"] || EGYWATCH_BROWSER_UA,
  };
  // CRITICAL: Do NOT send Referer to XFileSharing CDNs (cdnz.quest, artrk.online, cdn-vids.xyz,
  // egybestvid.com, uqload.vc, 3isk.beauty) — they return HTTP 403 when Referer is present and HTTP 200 without it!
  const playHeaders: Record<string, string> = {
    "User-Agent": EGYWATCH_BROWSER_UA,
  };

  let candidates: Array<{ url: string; quality: string; kind: "hls" | "direct" }> = [];

  if (srv.mode === "direct") {
    candidates = [
      {
        url: srv.link,
        quality: /\b1080/i.test(srv.serverRaw + srv.link) ? "1080p" : /\b480/i.test(srv.serverRaw) ? "480p" : "720p",
        kind: srv.link.includes(".m3u8") ? "hls" : "direct",
      },
    ];
  } else if (srv.mode === "redirect_worker") {
    try {
      const r = await fetchWithTimeout(srv.link, { headers: fetchHeaders, redirect: "manual" }, 3800, signal);
      const loc = r.headers.get("location");
      if (loc && /^https?:\/\//i.test(loc)) {
        candidates = [{ url: loc, quality: "720p", kind: loc.includes(".m3u8") ? "hls" : "direct" }];
      }
    } catch {}
  } else {
    // turki_api, json_worker, embed (direct single-hop fetch + Dean Edwards JS unpacker)
    try {
      const r = await fetchWithTimeout(srv.link, { headers: fetchHeaders }, 4000, signal);
      if (r.ok) {
        const body = await r.text();
        candidates = parseExtractedMediaLinks(body);
      }
    } catch {}
  }

  if (candidates.length === 0 || signal?.aborted) return [];

  const verified: Array<{ url: string; quality: string; kind: "hls" | "direct"; headers: Record<string, string> }> = [];
  for (const c of candidates.slice(0, 2)) {
    if (signal?.aborted) break;
    const check = await verifyPlayableOnPhone(c.url, c.kind, c.quality, playHeaders, signal);
    if (check.ok) {
      verified.push({
        url: c.url,
        kind: c.kind,
        quality: check.quality,
        headers: playHeaders,
      });
    }
  }
  return verified;
}

/**
 * Background prewarm called on the film detail & episodes screens so metadata
 * (ewId, movie videos, series seasons & episodes) is already in phone RAM before the user taps Watch.
 */
export async function prewarmEgyWatchOnPhone(params: {
  tmdbId?: number | null;
  tmdbType: TmdbMediaType;
  titleAr?: string;
  titleEn?: string;
  year?: number | string;
  season?: number;
  preferDubbed?: boolean;
  egyWatchId?: number | null;
  egyWatchType?: "movie" | "serie" | "anime" | null;
}): Promise<void> {
  if (Platform.OS === "web") return;
  try {
    let ewId = Number(params.egyWatchId || 0) || 0;
    let ewType: "movie" | "serie" | "anime" | null = params.egyWatchType || null;
    const cacheKey = `${params.tmdbType}|${params.tmdbId || 0}|${params.titleAr || ""}|${params.titleEn || ""}|${params.preferDubbed ? "dub" : "sub"}`;
    if (!ewId) {
      const cached = matchCache.get(cacheKey);
      if (cached && Date.now() - cached.ts < MATCH_CACHE_TTL_MS) {
        ewId = cached.id;
        ewType = cached.ewType;
      }
    }
    if (!ewId) {
      const queries = Array.from(
        new Set([params.titleAr, params.titleEn].map((s) => String(s || "").trim()).filter((s) => s.length >= 2)),
      );
      for (const q of queries) {
        const sr = await egyApiFetch(`search/${encodeURIComponent(q)}/${EGYWATCH_API_CODE}`, undefined, 4000);
        const list = Array.isArray(sr?.search) ? sr.search : Array.isArray(sr?.data) ? sr.data : [];
        if (list.length === 0) continue;
        const best = pickBestEgyWatchMatch(list, {
          tmdbId: params.tmdbId,
          tmdbType: params.tmdbType,
          titleAr: params.titleAr,
          titleEn: params.titleEn,
          year: Number(params.year || 0) || undefined,
          preferDubbed: params.preferDubbed,
        });
        if (best) {
          ewId = best.id;
          ewType = best.ewType;
          matchCache.set(cacheKey, { ts: Date.now(), id: ewId, ewType });
          if (best.score >= 900) break;
        }
      }
    }
    if (!ewId || !ewType) return;
    if (ewType === "movie") {
      await getCachedMovieVideos(ewId);
    } else {
      const seasons = await getCachedShowSeasons(ewType, ewId);
      if (seasons && seasons.length > 0) {
        const sNum = Math.max(1, Number(params.season || 1));
        const target =
          seasons.find((s: any) => Number(s?.season_number) === sNum) ||
          seasons[Math.min(seasons.length - 1, sNum - 1)] ||
          seasons[0];
        if (target?.id) {
          await getCachedSeasonEpisodes(ewType, Number(target.id));
        }
      }
    }
  } catch {
    // Non-fatal prewarm
  }
}

export interface EgyWatchPhoneParams {
  tmdbId?: number | null;
  tmdbType: TmdbMediaType;
  titleAr?: string;
  titleEn?: string;
  year?: number | string;
  season: number;
  episode: number;
  preferDubbed?: boolean;
  egyWatchId?: number | null;
  egyWatchType?: "movie" | "serie" | "anime" | null;
  signal?: AbortSignal;
  onSource: (srv: FilmServerLink) => void;
}

/**
 * Resolves live-verified direct playable & downloadable EgyWatch streams (`EG`, `TK`, `UQ`, `EB`, `VS`)
 * straight on the user's phone with 0% VPS bandwidth and phone-IP-matched tokens.
 */
export async function resolveEgyWatchOnPhone(params: EgyWatchPhoneParams): Promise<number> {
  if (Platform.OS === "web" || params.signal?.aborted) return 0;

  let ewId = Number(params.egyWatchId || 0) || 0;
  let ewType: "movie" | "serie" | "anime" | null = params.egyWatchType || null;

  const cacheKey = `${params.tmdbType}|${params.tmdbId || 0}|${params.titleAr || ""}|${params.titleEn || ""}|${params.preferDubbed ? "dub" : "sub"}`;
  if (!ewId) {
    const cached = matchCache.get(cacheKey);
    if (cached && Date.now() - cached.ts < MATCH_CACHE_TTL_MS) {
      ewId = cached.id;
      ewType = cached.ewType;
    }
  }

  if (!ewId) {
    const queries = Array.from(
      new Set([params.titleAr, params.titleEn].map((s) => String(s || "").trim()).filter((s) => s.length >= 2)),
    );
    // Run Arabic & English searches in parallel for minimal latency
    const results = await Promise.all(
      queries.slice(0, 2).map(async (q) => {
        if (params.signal?.aborted) return null;
        const sr = await egyApiFetch(`search/${encodeURIComponent(q)}/${EGYWATCH_API_CODE}`, params.signal, 4200);
        const list = Array.isArray(sr?.search) ? sr.search : Array.isArray(sr?.data) ? sr.data : [];
        if (list.length === 0) return null;
        return pickBestEgyWatchMatch(list, {
          tmdbId: params.tmdbId,
          tmdbType: params.tmdbType,
          titleAr: params.titleAr,
          titleEn: params.titleEn,
          year: Number(params.year || 0) || undefined,
          preferDubbed: params.preferDubbed,
        });
      }),
    );
    let bestMatch = null as ReturnType<typeof pickBestEgyWatchMatch>;
    for (const r of results) {
      if (r && (!bestMatch || r.score > bestMatch.score)) bestMatch = r;
    }
    if (bestMatch) {
      ewId = bestMatch.id;
      ewType = bestMatch.ewType;
      matchCache.set(cacheKey, { ts: Date.now(), id: ewId, ewType });
    }
  }

  if (!ewId || !ewType || params.signal?.aborted) return 0;

  let rawVideos: any[] = [];
  if (ewType === "movie") {
    rawVideos = await getCachedMovieVideos(ewId, params.signal);
  } else {
    const seasons = await getCachedShowSeasons(ewType, ewId, params.signal);
    if (seasons && seasons.length > 0) {
      const seasonNum = Math.max(1, Number(params.season || 1));
      const epNum = Math.max(1, Number(params.episode || 1));
      const targetSeason =
        seasons.find((s: any) => Number(s?.season_number) === seasonNum) ||
        seasons[Math.min(seasons.length - 1, seasonNum - 1)] ||
        seasons[0];
      if (targetSeason?.id) {
        const eps = await getCachedSeasonEpisodes(ewType, Number(targetSeason.id), params.signal);
        if (eps && eps.length > 0) {
          const targetEp =
            eps.find((e: any) => Number(e?.episode_number) === epNum) ||
            eps[Math.min(eps.length - 1, epNum - 1)] ||
            null;
          rawVideos = Array.isArray(targetEp?.videos) ? targetEp.videos : [];
        }
      }
    }
  }

  if (rawVideos.length === 0 || params.signal?.aborted) return 0;

  const classified: ClassifiedEgyWatchServer[] = [];
  const perCode = new Map<EgyWatchServerCode, number>();
  const seenLinks = new Set<string>();
  for (const v of rawVideos) {
    const c = classifyEgyWatchServer(v);
    if (!c || c.uaBound || seenLinks.has(c.link)) continue;
    seenLinks.add(c.link);
    const cnt = perCode.get(c.code) || 0;
    if (cnt >= 3) continue;
    perCode.set(c.code, cnt + 1);
    classified.push(c);
  }
  classified.sort((a, b) => a.priority - b.priority);

  let emitted = 0;
  const seenUrls = new Set<string>();

  await Promise.all(
    classified.slice(0, 8).map(async (srv) => {
      const extracted = await extractOnPhone(srv, params.signal);
      if (params.signal?.aborted) return;
      for (const media of extracted.slice(0, 2)) {
        const key = media.url.includes(".m3u8") ? media.url.split("?")[0] : media.url;
        if (seenUrls.has(key)) continue;
        seenUrls.add(key);
        emitted++;
        const is4k = media.quality === "4K";
        const isFhd = media.quality === "1080p" || is4k;
        const isSd = media.quality === "480p" || media.quality === "360p";
        params.onSource({
          id: `${srv.site}-phone-${emitted}`,
          name: srv.label,
          label: srv.label,
          site: srv.site,
          url: media.url,
          directUrl: media.url,
          quality: media.quality,
          qualityTier: is4k ? "4K" : isFhd ? "FHD" : isSd ? "SD" : "HD",
          tier: is4k ? "4K UHD" : isFhd ? "1080p FHD" : isSd ? "480p SD" : "720p HD",
          kind: media.kind,
          type: media.kind,
          headers: media.headers,
          isArabic: true,
          isEmbed: false,
          hardsubbed: true,
          recommended: srv.code === "TK" || srv.code === "EG" || (srv.code === "EB" && !isSd),
          clientSideOnly: true,
        });
      }
    }),
  );

  return emitted;
}

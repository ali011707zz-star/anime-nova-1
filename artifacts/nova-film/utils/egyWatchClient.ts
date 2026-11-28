/**
 * Direct client-side EgyWatch playback & download provider (0% VPS bandwidth).
 *
 * Runs directly on the user's phone, matching by `tmdb_id` + Arabic/English title
 * (or instant `egyWatchId`), and extracts direct HLS (.m3u8) / MP4 URLs for:
 *   - `EG` (VIP Fast / Fasel — multi-quality direct HLS)
 *   - `TK` (Server Turki — direct Turkish HLS)
 *   - `UQ` (Uqload — direct HLS/MP4, fast phone download)
 *   - `EB` (Egybest / Server Egy / CimaBox — direct 720p/MP4, fast phone download)
 *   - `VS` (VidSpeed / Vidoba / HDUp20 / Liiivideo / StreamWish / Filelions)
 */
import { Platform } from "react-native";
import {
  EGYWATCH_API_CODE,
  EGYWATCH_BASES,
  EGYWATCH_BROWSER_UA,
  EGYWATCH_HEADERS,
  EGYWATCH_SCRAPER_BASE,
  classifyEgyWatchServer,
  parseExtractedMediaLinks,
  pickBestEgyWatchMatch,
  type ClassifiedEgyWatchServer,
  type EgyWatchServerCode,
} from "./egyWatchLogic.mjs";
import type { FilmServerLink, TmdbMediaType } from "./filmCatalog";

const MATCH_CACHE_TTL_MS = 20 * 60_000;
const SEASON_CACHE_TTL_MS = 15 * 60_000;

const matchCache = new Map<string, { ts: number; id: number; ewType: "movie" | "serie" | "anime" }>();
const showSeasonsCache = new Map<string, { ts: number; seasons: any[] }>();
const seasonEpisodesCache = new Map<string, { ts: number; episodes: any[] }>();

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

async function egyApiFetch(path: string, signal?: AbortSignal, timeoutMs = 7000): Promise<any | null> {
  for (let attempt = 0; attempt < 3; attempt++) {
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
      // Fail over to backup gateway mirror
    }
  }
  return null;
}

async function extractOnPhone(
  srv: ClassifiedEgyWatchServer,
  signal?: AbortSignal,
): Promise<Array<{ url: string; quality: string; kind: "hls" | "direct"; headers: Record<string, string> }>> {
  if (signal?.aborted) return [];
  const baseHeaders: Record<string, string> = {
    "User-Agent": srv.headers["User-Agent"] || EGYWATCH_BROWSER_UA,
    ...(srv.headers.Referer ? { Referer: srv.headers.Referer } : {}),
  };

  let originRef = "";
  try {
    originRef = `${new URL(srv.link).origin}/`;
  } catch {}
  const playHeaders: Record<string, string> = {
    "User-Agent": EGYWATCH_BROWSER_UA,
    ...(originRef ? { Referer: originRef } : {}),
  };

  if (srv.mode === "direct") {
    return [
      {
        url: srv.link,
        quality: /\b1080/i.test(srv.serverRaw + srv.link) ? "1080p" : /\b480/i.test(srv.serverRaw) ? "480p" : "720p",
        kind: srv.link.includes(".m3u8") ? "hls" : "direct",
        headers: playHeaders,
      },
    ];
  }

  if (srv.mode === "turki_api") {
    try {
      const r = await fetchWithTimeout(srv.link, { headers: baseHeaders }, 6500, signal);
      if (!r.ok) return [];
      const body = await r.text();
      return parseExtractedMediaLinks(body).map((m) => ({
        ...m,
        headers: { "User-Agent": EGYWATCH_BROWSER_UA, Referer: "https://3isk.news/" },
      }));
    } catch {
      return [];
    }
  }

  if (srv.mode === "json_worker") {
    try {
      const r = await fetchWithTimeout(srv.link, { headers: baseHeaders }, 6500, signal);
      if (!r.ok) return [];
      const body = await r.text();
      return parseExtractedMediaLinks(body).map((m) => ({
        ...m,
        headers: { "User-Agent": EGYWATCH_BROWSER_UA },
      }));
    } catch {
      return [];
    }
  }

  if (srv.mode === "redirect_worker") {
    try {
      const r = await fetchWithTimeout(srv.link, { headers: baseHeaders, redirect: "manual" }, 6500, signal);
      const loc = r.headers.get("location");
      if (loc && /^https?:\/\//i.test(loc)) {
        return [
          {
            url: loc,
            quality: "720p",
            kind: loc.includes(".m3u8") ? "hls" : "direct",
            headers: { "User-Agent": EGYWATCH_BROWSER_UA },
          },
        ];
      }
    } catch {}
    return [];
  }

  if (srv.mode === "scraper" && srv.rule) {
    const scraperUrl = `${EGYWATCH_SCRAPER_BASE}${srv.rule.endpoint}?${srv.rule.queryKey}=${encodeURIComponent(srv.link)}`;
    try {
      const r = await fetchWithTimeout(
        scraperUrl,
        { headers: { "User-Agent": EGYWATCH_BROWSER_UA, Referer: EGYWATCH_SCRAPER_BASE } },
        6500,
        signal,
      );
      if (r.ok) {
        const body = await r.text();
        const links = parseExtractedMediaLinks(body);
        if (links.length > 0) {
          return links.map((m) => ({ ...m, headers: playHeaders }));
        }
      }
    } catch {}

    if (srv.rule.method === "POST" && !signal?.aborted) {
      try {
        const embedRes = await fetchWithTimeout(srv.link, { headers: baseHeaders }, 5500, signal);
        if (embedRes.ok) {
          const html = await embedRes.text();
          const direct = parseExtractedMediaLinks(html);
          if (direct.length > 0) return direct.map((m) => ({ ...m, headers: playHeaders }));
          const formBody = `content=${encodeURIComponent(html)}&url=${encodeURIComponent(srv.link)}`;
          const postRes = await fetchWithTimeout(
            `${EGYWATCH_SCRAPER_BASE}${srv.rule.endpoint}`,
            {
              method: "POST",
              headers: {
                "Content-Type": "application/x-www-form-urlencoded",
                "User-Agent": EGYWATCH_BROWSER_UA,
                Referer: EGYWATCH_SCRAPER_BASE,
              },
              body: formBody,
            },
            6500,
            signal,
          );
          if (postRes.ok) {
            const pBody = await postRes.text();
            const links = parseExtractedMediaLinks(pBody);
            if (links.length > 0) return links.map((m) => ({ ...m, headers: playHeaders }));
          }
        }
      } catch {}
    }
  }

  // Fallback direct embed parse (e.g. anafast)
  try {
    const embedRes = await fetchWithTimeout(srv.link, { headers: baseHeaders }, 5500, signal);
    if (embedRes.ok) {
      const html = await embedRes.text();
      return parseExtractedMediaLinks(html).map((m) => ({ ...m, headers: playHeaders }));
    }
  } catch {}

  return [];
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
 * Resolves direct playable & downloadable EgyWatch streams (`EG`, `TK`, `UQ`, `EB`, `VS`)
 * straight on the user's phone with 0% VPS bandwidth.
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
    for (const q of queries) {
      if (params.signal?.aborted) return 0;
      const sr = await egyApiFetch(`search/${encodeURIComponent(q)}/${EGYWATCH_API_CODE}`, params.signal, 6500);
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

  if (!ewId || !ewType || params.signal?.aborted) return 0;

  let rawVideos: any[] = [];
  if (ewType === "movie") {
    const det = await egyApiFetch(`media/detail/${ewId}/${EGYWATCH_API_CODE}`, params.signal, 6500);
    rawVideos = Array.isArray(det?.videos) ? det.videos : [];
  } else {
    const showKey = `${ewType}:${ewId}`;
    let seasons: any[] | null = null;
    const cachedShow = showSeasonsCache.get(showKey);
    if (cachedShow && Date.now() - cachedShow.ts < SEASON_CACHE_TTL_MS) {
      seasons = cachedShow.seasons;
    } else {
      const showPath = ewType === "anime" ? `animes/show/${ewId}` : `series/show/${ewId}`;
      const det = await egyApiFetch(`${showPath}/${EGYWATCH_API_CODE}`, params.signal, 6500);
      if (Array.isArray(det?.seasons)) {
        const fetchedSeasons: any[] = det.seasons;
        seasons = fetchedSeasons;
        showSeasonsCache.set(showKey, { ts: Date.now(), seasons: fetchedSeasons });
      }
    }
    if (seasons && seasons.length > 0) {
      const seasonNum = Math.max(1, Number(params.season || 1));
      const epNum = Math.max(1, Number(params.episode || 1));
      const targetSeason =
        seasons.find((s: any) => Number(s?.season_number) === seasonNum) ||
        seasons[Math.min(seasons.length - 1, seasonNum - 1)] ||
        seasons[0];
      if (targetSeason?.id) {
        const sKey = `${ewType}:s:${targetSeason.id}`;
        let eps: any[] | null = null;
        const cachedEps = seasonEpisodesCache.get(sKey);
        if (cachedEps && Date.now() - cachedEps.ts < SEASON_CACHE_TTL_MS) {
          eps = cachedEps.episodes;
        } else {
          const seasonPath = ewType === "anime" ? "animes/season" : "series/season";
          const sData = await egyApiFetch(`${seasonPath}/${targetSeason.id}/${EGYWATCH_API_CODE}`, params.signal, 6500);
          if (Array.isArray(sData?.episodes)) {
            const fetchedEps: any[] = sData.episodes;
            eps = fetchedEps;
            seasonEpisodesCache.set(sKey, { ts: Date.now(), episodes: fetchedEps });
          }
        }
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
    if (!c || seenLinks.has(c.link)) continue;
    seenLinks.add(c.link);
    const cnt = perCode.get(c.code) || 0;
    if (cnt >= 2) continue;
    perCode.set(c.code, cnt + 1);
    classified.push(c);
  }
  classified.sort((a, b) => a.priority - b.priority);

  let emitted = 0;
  const seenUrls = new Set<string>();

  await Promise.all(
    classified.slice(0, 7).map(async (srv) => {
      const extracted = await extractOnPhone(srv, params.signal);
      if (params.signal?.aborted) return;
      for (const media of extracted.slice(0, 2)) {
        const key = media.url.includes(".m3u8") ? media.url.split("?")[0] : media.url;
        if (seenUrls.has(key)) continue;
        seenUrls.add(key);
        emitted++;
        const isFhd = media.quality === "1080p" || media.quality === "4K";
        params.onSource({
          id: `${srv.site}-phone-${emitted}`,
          name: srv.label,
          label: srv.label,
          site: srv.site,
          url: media.url,
          directUrl: media.url,
          quality: media.quality,
          qualityTier: media.quality === "4K" ? "4K" : isFhd ? "FHD" : media.quality === "480p" || media.quality === "360p" ? "SD" : "HD",
          tier: isFhd ? "1080p FHD" : "720p HD",
          kind: media.kind,
          type: media.kind,
          headers: media.headers,
          isArabic: true,
          isEmbed: false,
          hardsubbed: true,
          recommended: srv.code === "EG" || srv.code === "TK",
          clientSideOnly: true,
        });
      }
    }),
  );

  return emitted;
}

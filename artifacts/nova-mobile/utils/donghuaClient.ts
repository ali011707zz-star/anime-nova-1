/**
 * Direct on-phone Donghua availability probe & on-demand stream/subtitle resolver.
 * Mirrors the exact check-first, extract-on-tap lifecycle used across Anime servers:
 *  - `probeDonghuaAvailabilityOnPhone`: lightweight series + episode lookup & cache (zero video extraction)
 *  - `resolveDonghuaSiteOnPhone`: fast on-demand extraction ONLY when user taps Play or Download on DX 1 / DX 2,
 *    with cross-source Arabic subtitle lookup (OpenSubtitles human -> AX direct Arabic SRT -> translate-vtt).
 */

import {
  parseDonghuaCatalogHtml,
  parseDonghuaDetailHtml,
  parseDonghuaEpisodeMirrors,
  parseOkRuEmbedHtml,
  parseOdyseeEmbedHtml,
  parseStreamRubyEmbedHtml,
  extractDailymotionVideoId,
  parseDailymotionMetadata,
  rankDonghuaCatalogCandidates,
  pickDonghuaEpisodeByNumber,
  type DonghuaSourceId,
  type DonghuaCatalogItem,
  type DonghuaDetail,
  type DonghuaMirror,
} from "./donghuaLogic.mjs";
import { fetchHumanArabicSubtitleFromOpenSubtitles } from "./openSubtitlesClient";
import { getBaseUrl } from "./api";

const MOBILE_UA =
  "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

export type DonghuaSiteKey = "donghua_ax" | "donghua_ak";

const detailCache = new Map<string, { ts: number; detail: DonghuaDetail }>();
const episodeUrlCache = new Map<string, string | null>();
const epHtmlCache = new Map<string, { ts: number; html: string }>();
const axArabicSubCache = new Map<string, string | null>();
const CACHE_TTL = 10 * 60 * 1000;

async function fetchHtml(
  url: string,
  headers: Record<string, string> = {},
  signal?: AbortSignal,
  timeoutMs = 8000,
): Promise<string> {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  const onAbort = () => controller.abort();
  signal?.addEventListener("abort", onAbort, { once: true });
  try {
    const res = await fetch(url, {
      redirect: "follow",
      headers: {
        "User-Agent": MOBILE_UA,
        Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
        ...headers,
      },
      signal: controller.signal,
    });
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    return await res.text();
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onAbort);
  }
}

async function fetchEpisodeHtmlCached(url: string, signal?: AbortSignal): Promise<string> {
  const cached = epHtmlCache.get(url);
  if (cached && Date.now() - cached.ts < CACHE_TTL) return cached.html;
  const html = await fetchHtml(url, {}, signal, 8500);
  epHtmlCache.set(url, { ts: Date.now(), html });
  return html;
}

function withTimeout<T>(promise: Promise<T>, ms: number, fallback: T): Promise<T> {
  let timer: ReturnType<typeof setTimeout> | null = null;
  return Promise.race([
    promise.finally(() => { if (timer) clearTimeout(timer); }),
    new Promise<T>((resolve) => {
      timer = setTimeout(() => resolve(fallback), ms);
    }),
  ]);
}

function buildSearchQueries(title?: string, englishTitle?: string, synonyms?: string[]): string[] {
  const out: string[] = [];
  const seen = new Set<string>();
  const add = (raw?: string) => {
    const clean = String(raw || "")
      .replace(/\([^)]*\)/g, " ")
      .replace(/[:\-–—_]+/g, " ")
      .replace(/[^a-zA-Z0-9\s']/g, " ")
      .replace(/\s+/g, " ")
      .trim();
    if (clean.length < 2) return;
    const key = clean.toLowerCase();
    if (!seen.has(key)) {
      seen.add(key);
      out.push(clean);
    }
    const baseNoSeason = clean
      .replace(/\bseason\s*\d+\b|\bpart\s*\d+\b|\bfinal\s+season\b|\b\d+(?:nd|rd|th)\s+season\b/gi, "")
      .replace(/\s+/g, " ")
      .trim();
    if (baseNoSeason.length >= 2 && !seen.has(baseNoSeason.toLowerCase())) {
      seen.add(baseNoSeason.toLowerCase());
      out.push(baseNoSeason);
    }
    // Also try main title before colon (e.g. "Guimi Zhi Zhu: Xiaochou Pian" -> "Guimi Zhi Zhu")
    if (String(raw || "").includes(":")) {
      const beforeColon = String(raw || "").split(":")[0]
        .replace(/[^a-zA-Z0-9\s']/g, " ")
        .replace(/\s+/g, " ")
        .trim();
      if (beforeColon.length >= 3 && !seen.has(beforeColon.toLowerCase())) {
        seen.add(beforeColon.toLowerCase());
        out.push(beforeColon);
      }
    }
  };
  add(englishTitle);
  add(title);
  if (Array.isArray(synonyms)) {
    for (const syn of synonyms.slice(0, 6)) {
      if (/^[a-zA-Z0-9\s:'\-.,!?()]+$/.test(String(syn || ""))) {
        add(syn);
      }
    }
  }
  return out.slice(0, 5);
}

async function searchSourceCatalog(
  source: DonghuaSourceId,
  query: string,
  signal?: AbortSignal,
): Promise<DonghuaCatalogItem[]> {
  const url =
    source === "animekhor"
      ? `https://animekhor.org/?s=${encodeURIComponent(query)}`
      : `https://animexin.dev/?s=${encodeURIComponent(query)}`;
  const html = await fetchHtml(url, {}, signal, 7500);
  return parseDonghuaCatalogHtml(html, source);
}

async function fetchDetailCached(source: DonghuaSourceId, url: string, signal?: AbortSignal): Promise<DonghuaDetail> {
  const cached = detailCache.get(url);
  if (cached && Date.now() - cached.ts < CACHE_TTL) return cached.detail;
  const html = await fetchHtml(url, {}, signal, 7500);
  const detail = parseDonghuaDetailHtml(html, source, url);
  detailCache.set(url, { ts: Date.now(), detail });
  return detail;
}

async function findEpisodeUrlForSource(
  source: DonghuaSourceId,
  opts: { title?: string; englishTitle?: string; synonyms?: string[]; episode: number; signal?: AbortSignal },
): Promise<string | null> {
  const queries = buildSearchQueries(opts.title, opts.englishTitle, opts.synonyms);
  if (queries.length === 0) return null;
  const ep = Math.max(1, Math.floor(Number(opts.episode) || 1));
  const cacheKey = `${source}|${queries[0].toLowerCase()}|ep${ep}`;
  if (episodeUrlCache.has(cacheKey)) {
    return episodeUrlCache.get(cacheKey) ?? null;
  }

  for (const q of queries) {
    if (opts.signal?.aborted) return null;
    try {
      const items = await searchSourceCatalog(source, q, opts.signal);
      if (items.length === 0) continue;
      // Check up to top 3 ranked candidates so empty stub pages (0 episodes) don't block valid ones
      const ranked = rankDonghuaCatalogCandidates(items, queries);
      for (const candidate of ranked.slice(0, 3)) {
        if (opts.signal?.aborted) return null;
        try {
          const detail = await fetchDetailCached(source, candidate.url, opts.signal);
          const epItem = pickDonghuaEpisodeByNumber(detail.episodes, ep);
          if (epItem?.url) {
            episodeUrlCache.set(cacheKey, epItem.url);
            return epItem.url;
          }
        } catch {
          // Try next candidate
        }
      }
    } catch {
      // Try next query candidate
    }
  }

  episodeUrlCache.set(cacheKey, null);
  return null;
}

/**
 * Lightweight availability probe for Donghua servers (`donghua_ax` & `donghua_ak`).
 * Runs ONLY series/episode lookup (no video mirror extraction) so watch.tsx shows
 * available short-code slots (`DX 1`, `DX 2`) just like standard Anime check mode.
 */
export async function probeDonghuaAvailabilityOnPhone(opts: {
  title?: string;
  englishTitle?: string;
  synonyms?: string[];
  episode: number;
  signal?: AbortSignal;
}): Promise<{ donghua_ax?: Record<string, boolean>; donghua_ak?: Record<string, boolean> }> {
  const [axEpUrl, akEpUrl] = await Promise.all([
    findEpisodeUrlForSource("animexin", opts).catch(() => null),
    findEpisodeUrlForSource("animekhor", opts).catch(() => null),
  ]);

  const out: { donghua_ax?: Record<string, boolean>; donghua_ak?: Record<string, boolean> } = {};
  if (axEpUrl) out.donghua_ax = { "1080p": true, "720p": true, "480p": true };
  if (akEpUrl) out.donghua_ak = { "1080p": true, "720p": true, "480p": true };
  return out;
}

export interface DonghuaPhoneResolvedSource {
  url: string;
  quality: string;
  isHls: boolean;
  headers?: Record<string, string>;
  subtitleUrl?: string;
  isHumanSub?: boolean;
}

async function fetchDirectAxArabicSubtitle(
  opts: { title?: string; englishTitle?: string; synonyms?: string[]; episode: number; signal?: AbortSignal },
  knownAxHtml?: string,
): Promise<{ arabicSubUrl: string | null; englishSubUrl: string | null }> {
  const key = `${(opts.englishTitle || opts.title || "").toLowerCase()}|ep${opts.episode}`;
  if (!knownAxHtml && axArabicSubCache.has(key)) {
    return { arabicSubUrl: axArabicSubCache.get(key) ?? null, englishSubUrl: null };
  }
  try {
    let html = knownAxHtml || "";
    if (!html) {
      const epUrl = await findEpisodeUrlForSource("animexin", opts);
      if (!epUrl) {
        axArabicSubCache.set(key, null);
        return { arabicSubUrl: null, englishSubUrl: null };
      }
      html = await fetchEpisodeHtmlCached(epUrl, opts.signal);
    }
    const mirrors = parseDonghuaEpisodeMirrors(html);
    const dmMirrors = mirrors.filter((m) => m.host === "dailymotion_allsub" || m.host === "dailymotion");
    let englishSubUrl: string | null = null;
    for (const dm of dmMirrors.slice(0, 2)) {
      const vid = extractDailymotionVideoId(dm.embedUrl);
      if (!vid) continue;
      try {
        const metaText = await fetchHtml(
          `https://www.dailymotion.com/player/metadata/video/${vid}`,
          { Referer: "https://geo.dailymotion.com/", Accept: "application/json" },
          opts.signal,
          3500,
        );
        const meta = parseDailymotionMetadata(JSON.parse(metaText));
        if (meta.arabicSubUrl) {
          axArabicSubCache.set(key, meta.arabicSubUrl);
          return { arabicSubUrl: meta.arabicSubUrl, englishSubUrl: meta.englishSubUrl };
        }
        if (meta.englishSubUrl && !englishSubUrl) englishSubUrl = meta.englishSubUrl;
      } catch {}
    }
    axArabicSubCache.set(key, null);
    return { arabicSubUrl: null, englishSubUrl };
  } catch {
    return { arabicSubUrl: null, englishSubUrl: null };
  }
}

function qualityRank(q: string): number {
  const low = String(q || "").toLowerCase();
  if (low.includes("2160")) return 5;
  if (low.includes("1440")) return 4;
  if (low.includes("1080")) return 3;
  if (low.includes("720")) return 2;
  if (low.includes("480")) return 1;
  return 0;
}

/**
 * On-demand fast stream + Arabic subtitle extraction called ONLY when user taps Play/Download
 * on `DX 1` (`donghua_ax`) or `DX 2` (`donghua_ak`).
 */
export async function resolveDonghuaSiteOnPhone(opts: {
  site: DonghuaSiteKey;
  title?: string;
  englishTitle?: string;
  synonyms?: string[];
  episode: number;
  preferredQuality?: string;
  signal?: AbortSignal;
}): Promise<DonghuaPhoneResolvedSource[]> {
  const source: DonghuaSourceId = opts.site === "donghua_ak" ? "animekhor" : "animexin";
  const referer = source === "animekhor" ? "https://animekhor.org/" : "https://animexin.dev/";
  const epUrl = await findEpisodeUrlForSource(source, opts);
  if (!epUrl) return [];

  // Fetch episode HTML immediately + OpenSubtitles human Arabic subtitle capped at 2.8s so playback isn't stalled
  const osPromise = withTimeout(
    fetchHumanArabicSubtitleFromOpenSubtitles({
      title: opts.title,
      englishTitle: opts.englishTitle,
      episode: opts.episode,
      signal: opts.signal,
    }).catch(() => null),
    2800,
    null,
  );
  const epHtml = await fetchEpisodeHtmlCached(epUrl, opts.signal);

  const mirrors: DonghuaMirror[] = parseDonghuaEpisodeMirrors(epHtml).filter(
    (m) => !m.isIndoOnly && m.host !== "rumble",
  );
  const candidates: DonghuaPhoneResolvedSource[] = [];
  let directArabicSub: string | null = null;
  let isHumanSub = false;
  let englishFallbackSub: string | null = null;

  const extractMirror = async (mirror: DonghuaMirror): Promise<void> => {
    try {
      if (mirror.host === "okru") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 5500);
        const ok = parseOkRuEmbedHtml(html);
        let maxOkQuality = "720p";
        for (const q of ["1080p", "720p", "480p"]) {
          const v = ok.videos.find((x) => x.quality === q);
          if (v) {
            if (qualityRank(q) > qualityRank(maxOkQuality)) maxOkQuality = q;
            candidates.push({
              url: v.url,
              quality: q,
              isHls: false,
              headers: { Referer: "https://ok.ru/", "User-Agent": MOBILE_UA },
            });
          }
        }
        if (ok.hlsUrl) {
          candidates.push({
            url: ok.hlsUrl,
            quality: maxOkQuality,
            isHls: true,
            headers: { Referer: "https://ok.ru/", "User-Agent": MOBILE_UA },
          });
        }
        return;
      }

      if (mirror.host === "streamruby") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 5500);
        const parsed = parseStreamRubyEmbedHtml(html);
        for (const tr of parsed.tracks) {
          if (tr.isArabic && !directArabicSub) directArabicSub = tr.url;
          if (tr.isEnglish && !englishFallbackSub) englishFallbackSub = tr.url;
        }
        if (parsed.m3u8) {
          const origin = (() => {
            try { return `${new URL(mirror.embedUrl).origin}/`; } catch { return "https://nuvorel.top/"; }
          })();
          candidates.push({
            url: parsed.m3u8,
            quality: "1080p",
            isHls: true,
            headers: { Referer: origin, "User-Agent": MOBILE_UA },
          });
        }
        return;
      }

      if (mirror.host === "dailymotion_allsub" || mirror.host === "dailymotion") {
        const vid = extractDailymotionVideoId(mirror.embedUrl);
        if (!vid) return;
        const metaText = await fetchHtml(
          `https://www.dailymotion.com/player/metadata/video/${vid}`,
          { Referer: "https://geo.dailymotion.com/", Accept: "application/json" },
          opts.signal,
          4500,
        );
        const meta = parseDailymotionMetadata(JSON.parse(metaText));
        if (meta.arabicSubUrl && !directArabicSub) directArabicSub = meta.arabicSubUrl;
        if (meta.englishSubUrl && !englishFallbackSub) englishFallbackSub = meta.englishSubUrl;
        if (meta.hlsUrl) {
          candidates.push({
            url: meta.hlsUrl,
            quality: "1080p",
            isHls: true,
            headers: { Referer: "https://geo.dailymotion.com/", "User-Agent": MOBILE_UA },
          });
        }
        return;
      }

      if (mirror.host === "odysee") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 5500);
        const mediaUrl = parseOdyseeEmbedHtml(html);
        if (mediaUrl) {
          candidates.push({
            url: mediaUrl,
            quality: "1080p",
            isHls: /\.m3u8/i.test(mediaUrl),
            headers: { Referer: "https://odysee.com/", "User-Agent": MOBILE_UA },
          });
        }
      }
    } catch {
      // Ignore single mirror failure so backups proceed
    }
  };

  // Phase 1: Fast reliable hosts first (Ok.ru + StreamRuby — usually ~1s, avoids 6-8s Odysee block!)
  const fastMirrors = mirrors.filter((m) => m.host === "okru" || m.host === "streamruby");
  const fallbackMirrors = mirrors.filter((m) => m.host !== "okru" && m.host !== "streamruby");

  await Promise.allSettled(fastMirrors.map(extractMirror));

  // Phase 2: Only try slower fallback hosts (Dailymotion HLS / Odysee) if fast mirrors yielded nothing
  if (candidates.length === 0 && fallbackMirrors.length > 0 && !opts.signal?.aborted) {
    await Promise.allSettled(fallbackMirrors.map(extractMirror));
  }

  const osSub = await osPromise;
  if (osSub?.url && osSub.isHuman) {
    directArabicSub = osSub.url;
    isHumanSub = true;
  }

  // Cross-fetch direct Arabic SRT from AX if needed (capped at 2.6s so playback never drags)
  if (!directArabicSub && !opts.signal?.aborted) {
    const axSubRes = await withTimeout(
      fetchDirectAxArabicSubtitle(opts, source === "animexin" ? epHtml : undefined),
      2600,
      { arabicSubUrl: null, englishSubUrl: null },
    );
    if (axSubRes.arabicSubUrl) directArabicSub = axSubRes.arabicSubUrl;
    if (!englishFallbackSub && axSubRes.englishSubUrl) englishFallbackSub = axSubRes.englishSubUrl;
  }

  let finalSubtitleUrl: string | undefined = directArabicSub || undefined;
  if (!finalSubtitleUrl && osSub?.url) {
    finalSubtitleUrl = osSub.url;
  } else if (!finalSubtitleUrl && englishFallbackSub) {
    const base = getBaseUrl();
    if (base) {
      finalSubtitleUrl = `${base}/api/anime/translate-vtt?url=${encodeURIComponent(englishFallbackSub)}&from=en&to=ar`;
    }
  }

  // Sort by preferred quality first, preferring direct MP4 first at equal quality for instant startup & download
  const wantedQ = String(opts.preferredQuality || "1080p").toLowerCase();
  candidates.sort((a, b) => {
    const aExact = a.quality.toLowerCase() === wantedQ ? 1 : 0;
    const bExact = b.quality.toLowerCase() === wantedQ ? 1 : 0;
    if (aExact !== bExact) return bExact - aExact;
    const qa = qualityRank(a.quality);
    const qb = qualityRank(b.quality);
    if (qa !== qb) return qb - qa;
    return (a.isHls ? 1 : 0) - (b.isHls ? 1 : 0);
  });

  const seen = new Set<string>();
  const deduped: DonghuaPhoneResolvedSource[] = [];
  for (const c of candidates) {
    if (!c.url || seen.has(c.url)) continue;
    seen.add(c.url);
    deduped.push({
      ...c,
      subtitleUrl: finalSubtitleUrl,
      isHumanSub,
    });
  }
  return deduped;
}

/**
 * Direct on-phone Donghua availability probe & on-demand stream/subtitle resolver.
 * Mirrors the exact check-first, extract-on-tap lifecycle used across Anime servers:
 *  - `probeDonghuaAvailabilityOnPhone`: lightweight series + episode lookup & cache (zero video extraction)
 *  - `resolveDonghuaSiteOnPhone`: on-demand extraction ONLY when user taps Play or Download on AX / AK,
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
  matchDonghuaCatalogItemByTitle,
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
const axArabicSubCache = new Map<string, string | null>();
const CACHE_TTL = 10 * 60 * 1000;

async function fetchHtml(
  url: string,
  headers: Record<string, string> = {},
  signal?: AbortSignal,
  timeoutMs = 9000,
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
    const baseNoSeason = clean.replace(/\bseason\s*\d+\b|\bpart\s*\d+\b|\bfinal\s+season\b|\b\d+(?:nd|rd|th)\s+season\b/gi, "").replace(/\s+/g, " ").trim();
    if (baseNoSeason.length >= 2 && !seen.has(baseNoSeason.toLowerCase())) {
      seen.add(baseNoSeason.toLowerCase());
      out.push(baseNoSeason);
    }
  };
  add(englishTitle);
  add(title);
  if (Array.isArray(synonyms)) {
    for (const syn of synonyms.slice(0, 6)) {
      // Only ASCII/Latin synonyms work on AX/AK search
      if (/^[a-zA-Z0-9\s:'\-.,!?()]+$/.test(String(syn || ""))) {
        add(syn);
      }
    }
  }
  return out.slice(0, 4);
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
  const html = await fetchHtml(url, {}, signal, 8000);
  return parseDonghuaCatalogHtml(html, source);
}

async function fetchDetailCached(source: DonghuaSourceId, url: string, signal?: AbortSignal): Promise<DonghuaDetail> {
  const cached = detailCache.get(url);
  if (cached && Date.now() - cached.ts < CACHE_TTL) return cached.detail;
  const html = await fetchHtml(url, {}, signal, 8500);
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
      const matched = matchDonghuaCatalogItemByTitle(items, queries);
      if (!matched) continue;
      const detail = await fetchDetailCached(source, matched.url, opts.signal);
      const epItem = pickDonghuaEpisodeByNumber(detail.episodes, ep);
      if (epItem?.url) {
        episodeUrlCache.set(cacheKey, epItem.url);
        return epItem.url;
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
 * available short-code slots (`AX`, `AK`) just like standard Anime check mode.
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
      html = await fetchHtml(epUrl, {}, opts.signal, 8000);
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
          6500,
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

/**
 * On-demand stream + Arabic subtitle extraction called ONLY when user taps Play/Download
 * on `السيرفر AX` (`donghua_ax`) or `السيرفر AK` (`donghua_ak`).
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

  // Fetch episode HTML + OpenSubtitles human Arabic subtitle in parallel
  const [epHtml, osSub] = await Promise.all([
    fetchHtml(epUrl, {}, opts.signal, 10000),
    fetchHumanArabicSubtitleFromOpenSubtitles({
      title: opts.title,
      englishTitle: opts.englishTitle,
      episode: opts.episode,
      signal: opts.signal,
    }).catch(() => null),
  ]);

  const mirrors: DonghuaMirror[] = parseDonghuaEpisodeMirrors(epHtml).filter(
    (m) => !m.isIndoOnly && m.host !== "rumble",
  );

  const candidates: DonghuaPhoneResolvedSource[] = [];
  let directArabicSub: string | null = osSub?.url && osSub.isHuman ? osSub.url : null;
  let isHumanSub = Boolean(directArabicSub);
  let englishFallbackSub: string | null = null;

  // Cross-fetch direct Arabic SRT from AX if OpenSubtitles didn't have human Arabic
  const axSubPromise = !directArabicSub
    ? fetchDirectAxArabicSubtitle(opts, source === "animexin" ? epHtml : undefined)
    : Promise.resolve({ arabicSubUrl: null, englishSubUrl: null });

  const mirrorTasks = mirrors.map(async (mirror) => {
    try {
      if (mirror.host === "streamruby") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 8000);
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
            headers: { Referer: origin },
          });
        }
        return;
      }

      if (mirror.host === "okru") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 8000);
        const ok = parseOkRuEmbedHtml(html);
        if (ok.hlsUrl) {
          candidates.push({
            url: ok.hlsUrl,
            quality: "1080p",
            isHls: true,
            headers: { Referer: "https://ok.ru/" },
          });
        }
        for (const q of ["1080p", "720p", "480p"]) {
          const v = ok.videos.find((x) => x.quality === q);
          if (v) {
            candidates.push({
              url: v.url,
              quality: q,
              isHls: false,
              headers: { Referer: "https://ok.ru/" },
            });
          }
        }
        return;
      }

      if (mirror.host === "odysee") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 8000);
        const mediaUrl = parseOdyseeEmbedHtml(html);
        if (mediaUrl) {
          candidates.push({
            url: mediaUrl,
            quality: "1080p",
            isHls: /\.m3u8/i.test(mediaUrl),
            headers: { Referer: "https://odysee.com/" },
          });
        }
      }
    } catch {
      // Ignore single mirror failure so backups proceed
    }
  });

  const [axSubRes] = await Promise.all([axSubPromise, Promise.allSettled(mirrorTasks)]);
  if (!directArabicSub && axSubRes.arabicSubUrl) {
    directArabicSub = axSubRes.arabicSubUrl;
  }
  if (!englishFallbackSub && axSubRes.englishSubUrl) {
    englishFallbackSub = axSubRes.englishSubUrl;
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

  // Sort by preferred quality first, then HLS/1080p -> MP4
  const wantedQ = String(opts.preferredQuality || "1080p").toLowerCase();
  candidates.sort((a, b) => {
    const aExact = a.quality.toLowerCase() === wantedQ ? 1 : 0;
    const bExact = b.quality.toLowerCase() === wantedQ ? 1 : 0;
    if (aExact !== bExact) return bExact - aExact;
    const qRank = (q: string) => (q === "1080p" ? 3 : q === "720p" ? 2 : 1);
    if (qRank(a.quality) !== qRank(b.quality)) return qRank(b.quality) - qRank(a.quality);
    return (b.isHls ? 1 : 0) - (a.isHls ? 1 : 0);
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

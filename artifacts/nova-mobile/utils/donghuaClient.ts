/**
 * Direct on-phone Donghua availability probe & on-demand stream/subtitle resolver.
 * Mirrors the exact check-first, extract-on-tap lifecycle used across Anime servers:
 *  - `probeDonghuaAvailabilityOnPhone`: lightweight parallel series + episode lookup across
 *    DX 1 (AnimeXin), DX 2 (AnimeKhor), and DX 3 (DonghuaStream) with incremental `onSourceReady`
 *    callback so each server appears immediately without waiting for slower sites.
 *  - `resolveDonghuaSiteOnPhone`: fast on-demand extraction ONLY when user taps Play or Download
 *    on DX 1 / DX 2 / DX 3, supporting Ok.ru, StreamRuby/Nuvorel, GdrivePlayer XOR HLS,
 *    Dailymotion, Odysee, and directClientExtractor fallback (FileLions/StreamWish/Dood/VidHide),
 *    plus cross-source Arabic subtitle lookup (OpenSubtitles human -> AX direct Arabic SRT -> translate-vtt).
 */

import {
  parseDonghuaCatalogHtml,
  parseDonghuaDetailHtml,
  parseDonghuaEpisodeMirrors,
  parseOkRuEmbedHtml,
  parseOdyseeEmbedHtml,
  parseStreamRubyEmbedHtml,
  parseGdrivePlayerEmbedHtml,
  extractDailymotionVideoId,
  parseDailymotionMetadata,
  rankDonghuaCatalogCandidates,
  pickDonghuaEpisodeByNumber,
  type DonghuaSourceId,
  type DonghuaCatalogItem,
  type DonghuaDetail,
  type DonghuaMirror,
} from "./donghuaLogic.mjs";
import { extractDirectStreamOnPhone } from "./directClientExtractor";
import { fetchHumanArabicSubtitleFromOpenSubtitles } from "./openSubtitlesClient";
import { getBaseUrl } from "./api";

const MOBILE_UA =
  "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

export type DonghuaSiteKey = "donghua_ax" | "donghua_ak" | "donghua_ds";

const detailCache = new Map<string, { ts: number; detail: DonghuaDetail }>();
const episodeUrlCache = new Map<string, { ts: number; url: string }>();
const epHtmlCache = new Map<string, { ts: number; html: string }>();
const axArabicSubCache = new Map<string, { ts: number; url: string | null }>();
const CACHE_TTL = 10 * 60 * 1000;

function siteKeyToSource(site: DonghuaSiteKey): DonghuaSourceId {
  if (site === "donghua_ak") return "animekhor";
  if (site === "donghua_ds") return "donghuastream";
  return "animexin";
}

function sourceToBaseUrl(source: DonghuaSourceId): string {
  if (source === "animekhor") return "https://animekhor.org";
  if (source === "donghuastream") return "https://donghuastream.org";
  return "https://animexin.dev";
}

async function fetchHtml(
  url: string,
  headers: Record<string, string> = {},
  signal?: AbortSignal,
  timeoutMs = 10000,
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
        "Accept-Language": "en-US,en;q=0.9,ar;q=0.8",
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
  const html = await fetchHtml(url, {}, signal, 10000);
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

  // Prioritize English title AND clean English synonyms FIRST (Donghua sites index primarily by English name!)
  add(englishTitle);
  if (Array.isArray(synonyms)) {
    for (const syn of synonyms.slice(0, 8)) {
      const s = String(syn || "").trim();
      if (/^[a-zA-Z0-9\s:'\-.,!?()]+$/.test(s) && s.length >= 3 && s.length <= 70) {
        add(s);
      }
    }
  }
  add(title);
  return out.slice(0, 5);
}

async function searchSourceCatalog(
  source: DonghuaSourceId,
  query: string,
  signal?: AbortSignal,
): Promise<DonghuaCatalogItem[]> {
  const base = sourceToBaseUrl(source);
  const timeoutMs = source === "animekhor" ? 12000 : 8500;
  const html = await fetchHtml(`${base}/?s=${encodeURIComponent(query)}`, {}, signal, timeoutMs);
  return parseDonghuaCatalogHtml(html, source);
}

async function fetchDetailCached(source: DonghuaSourceId, url: string, signal?: AbortSignal): Promise<DonghuaDetail> {
  const cached = detailCache.get(url);
  if (cached && Date.now() - cached.ts < CACHE_TTL) return cached.detail;
  const timeoutMs = source === "animekhor" ? 12000 : 8500;
  const html = await fetchHtml(url, {}, signal, timeoutMs);
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
  const cacheKey = `${source}|${queries.slice(0, 2).join("+").toLowerCase()}|ep${ep}`;
  const cached = episodeUrlCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < CACHE_TTL) {
    return cached.url;
  }

  const isTargetMovie = queries.some((q) => /\bmovie\b|\bfilm\b/i.test(q));

  // Search up to top 3 distinct queries IN PARALLEL so slow sites (e.g. AnimeKhor) don't burn 3 serial round trips!
  const parallelQueries = queries.slice(0, 3);
  const settled = await Promise.allSettled(
    parallelQueries.map((q) => searchSourceCatalog(source, q, opts.signal)),
  );
  if (opts.signal?.aborted) return null;

  const combinedItems: DonghuaCatalogItem[] = [];
  const seenUrls = new Set<string>();
  for (const res of settled) {
    if (res.status !== "fulfilled") continue;
    for (const item of res.value) {
      if (item?.url && !seenUrls.has(item.url)) {
        seenUrls.add(item.url);
        combinedItems.push(item);
      }
    }
  }

  // Fallback to remaining queries only if first parallel wave returned nothing
  if (combinedItems.length === 0 && queries.length > 3) {
    for (const q of queries.slice(3)) {
      if (opts.signal?.aborted) return null;
      try {
        const extra = await searchSourceCatalog(source, q, opts.signal);
        for (const item of extra) {
          if (item?.url && !seenUrls.has(item.url)) {
            seenUrls.add(item.url);
            combinedItems.push(item);
          }
        }
        if (combinedItems.length > 0) break;
      } catch {}
    }
  }

  if (combinedItems.length === 0) return null;

  const ranked = rankDonghuaCatalogCandidates(combinedItems, queries);
  for (const candidate of ranked.slice(0, 3)) {
    if (opts.signal?.aborted) return null;
    try {
      const detail = await fetchDetailCached(source, candidate.url, opts.signal);
      const epItem = pickDonghuaEpisodeByNumber(detail.episodes, ep, {
        preferMovie: isTargetMovie,
        rejectMovie: !isTargetMovie && ranked.length > 1,
      });
      if (epItem?.url) {
        episodeUrlCache.set(cacheKey, { ts: Date.now(), url: epItem.url });
        return epItem.url;
      }
    } catch {
      // Try next candidate
    }
  }

  // Never permanently cache misses so transient timeouts or late-arriving synonyms can recover
  return null;
}

/**
 * Lightweight availability probe for Donghua servers (`donghua_ax`, `donghua_ak`, `donghua_ds`).
 * Runs ONLY series/episode lookup (no video mirror extraction) and invokes `onSourceReady`
 * incrementally for EACH server the instant it resolves so fast servers appear immediately.
 */
export async function probeDonghuaAvailabilityOnPhone(opts: {
  title?: string;
  englishTitle?: string;
  synonyms?: string[];
  episode: number;
  signal?: AbortSignal;
  onSourceReady?: (site: DonghuaSiteKey) => void;
}): Promise<{
  donghua_ax?: Record<string, boolean>;
  donghua_ak?: Record<string, boolean>;
  donghua_ds?: Record<string, boolean>;
}> {
  const out: {
    donghua_ax?: Record<string, boolean>;
    donghua_ak?: Record<string, boolean>;
    donghua_ds?: Record<string, boolean>;
  } = {};

  const probeOne = async (site: DonghuaSiteKey) => {
    const source = siteKeyToSource(site);
    const epUrl = await findEpisodeUrlForSource(source, opts).catch(() => null);
    if (epUrl && !opts.signal?.aborted) {
      out[site] = { "1080p": true, "720p": true, "480p": true };
      try {
        opts.onSourceReady?.(site);
      } catch {}
    }
  };

  await Promise.allSettled([
    probeOne("donghua_ax"),
    probeOne("donghua_ak"),
    probeOne("donghua_ds"),
  ]);

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
  const cached = axArabicSubCache.get(key);
  if (!knownAxHtml && cached && Date.now() - cached.ts < CACHE_TTL) {
    return { arabicSubUrl: cached.url, englishSubUrl: null };
  }
  try {
    let html = knownAxHtml || "";
    if (!html) {
      const epUrl = await findEpisodeUrlForSource("animexin", opts);
      if (!epUrl) {
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
          axArabicSubCache.set(key, { ts: Date.now(), url: meta.arabicSubUrl });
          return { arabicSubUrl: meta.arabicSubUrl, englishSubUrl: meta.englishSubUrl };
        }
        if (meta.englishSubUrl && !englishSubUrl) englishSubUrl = meta.englishSubUrl;
      } catch {}
    }
    axArabicSubCache.set(key, { ts: Date.now(), url: null });
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
 * on `DX 1` (`donghua_ax`), `DX 2` (`donghua_ak`), or `DX 3` (`donghua_ds`).
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
  const source = siteKeyToSource(opts.site);
  const referer = `${sourceToBaseUrl(source)}/`;
  const epUrl = await findEpisodeUrlForSource(source, opts);
  if (!epUrl) return [];

  // Fetch episode HTML immediately + OpenSubtitles human Arabic subtitle capped at 2.6s so playback isn't stalled
  const osPromise = withTimeout(
    fetchHumanArabicSubtitleFromOpenSubtitles({
      title: opts.title,
      englishTitle: opts.englishTitle,
      episode: opts.episode,
      signal: opts.signal,
    }).catch(() => null),
    2600,
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
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 6000);
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

      if (mirror.host === "gdriveplayer") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 6000);
        const parsed = parseGdrivePlayerEmbedHtml(html, mirror.embedUrl);
        if (parsed.mp4Url) {
          candidates.push({
            url: parsed.mp4Url,
            quality: "1080p",
            isHls: false,
            headers: { Referer: mirror.embedUrl, "User-Agent": MOBILE_UA },
          });
        }
        if (parsed.hlsUrl) {
          candidates.push({
            url: parsed.hlsUrl,
            quality: "1080p",
            isHls: true,
            headers: { Referer: mirror.embedUrl, "User-Agent": MOBILE_UA },
          });
        }
        return;
      }

      if (mirror.host === "streamruby") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 6000);
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
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, opts.signal, 6000);
        const mediaUrl = parseOdyseeEmbedHtml(html);
        if (mediaUrl) {
          candidates.push({
            url: mediaUrl,
            quality: "1080p",
            isHls: /\.m3u8/i.test(mediaUrl),
            headers: { Referer: "https://odysee.com/", "User-Agent": MOBILE_UA },
          });
        }
        return;
      }

      if (mirror.host === "direct_embed") {
        const extracted = await extractDirectStreamOnPhone(
          { embedUrl: mirror.embedUrl, referer, hostKind: "standard" },
          opts.signal,
          6000,
        );
        if (extracted?.url) {
          candidates.push({
            url: extracted.url,
            quality: "1080p",
            isHls: extracted.type === "hls" || /\.m3u8/i.test(extracted.url),
            headers: extracted.headers,
          });
        }
      }
    } catch {
      // Ignore single mirror failure so backups proceed
    }
  };

  // Phase 1: Fast direct hosts first (Ok.ru + StreamRuby + GdrivePlayer XOR HLS — usually ~0.5-1.2s)
  const fastMirrors = mirrors.filter(
    (m) => m.host === "okru" || m.host === "streamruby" || m.host === "gdriveplayer",
  );
  const fallbackMirrors = mirrors.filter(
    (m) => m.host !== "okru" && m.host !== "streamruby" && m.host !== "gdriveplayer",
  );

  await Promise.allSettled(fastMirrors.map(extractMirror));

  // Phase 2: Try fallback hosts (Dailymotion / Odysee / FileLions / StreamWish / Dood) only if Phase 1 yielded nothing
  if (candidates.length === 0 && fallbackMirrors.length > 0 && !opts.signal?.aborted) {
    await Promise.allSettled(fallbackMirrors.slice(0, 4).map(extractMirror));
  }

  const osSub = await osPromise;
  if (osSub?.url && osSub.isHuman) {
    directArabicSub = osSub.url;
    isHumanSub = true;
  }

  // Cross-fetch direct Arabic SRT from AX if needed (capped at 2.4s so playback never drags)
  if (!directArabicSub && !opts.signal?.aborted) {
    const axSubRes = await withTimeout(
      fetchDirectAxArabicSubtitle(opts, source === "animexin" ? epHtml : undefined),
      2400,
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

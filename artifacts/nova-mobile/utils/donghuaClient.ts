/**
 * Direct on-phone Donghua catalog, detail, stream, and Arabic subtitle client.
 * Fetches AnimeXin + AnimeKhor + Ok.ru + Odysee + StreamRuby + Dailymotion + OpenSubtitles
 * directly from the user's phone (0% VPS load, no headless browser required).
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
  type DonghuaSourceId,
  type DonghuaCatalogItem,
  type DonghuaDetail,
  type DonghuaMirror,
} from "./donghuaLogic.mjs";
import { fetchHumanArabicSubtitleFromOpenSubtitles } from "./openSubtitlesClient";
import { getBaseUrl } from "./api";

const MOBILE_UA =
  "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

const catalogCache = new Map<string, { ts: number; items: DonghuaCatalogItem[] }>();
const detailCache = new Map<string, { ts: number; detail: DonghuaDetail }>();
const CACHE_TTL = 5 * 60 * 1000;

async function fetchHtml(url: string, headers: Record<string, string> = {}, signal?: AbortSignal, timeoutMs = 10000): Promise<string> {
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

export async function fetchDonghuaCatalog(opts: {
  source: DonghuaSourceId;
  page?: number;
  order?: "update" | "popular" | "latest";
  query?: string;
  signal?: AbortSignal;
}): Promise<DonghuaCatalogItem[]> {
  const page = Math.max(1, opts.page || 1);
  const order = opts.order || "update";
  const query = (opts.query || "").trim();
  const key = `${opts.source}|${order}|${page}|${query.toLowerCase()}`;
  const cached = catalogCache.get(key);
  if (cached && Date.now() - cached.ts < CACHE_TTL) return cached.items;

  let url = "";
  if (opts.source === "animexin") {
    if (query) {
      url = page > 1
        ? `https://animexin.dev/page/${page}/?s=${encodeURIComponent(query)}`
        : `https://animexin.dev/?s=${encodeURIComponent(query)}`;
    } else {
      url = `https://animexin.dev/anime/?page=${page}&status=&type=&order=${order}`;
    }
  } else {
    if (query) {
      url = page > 1
        ? `https://animekhor.org/page/${page}/?s=${encodeURIComponent(query)}`
        : `https://animekhor.org/?s=${encodeURIComponent(query)}`;
    } else {
      url = page > 1
        ? `https://animekhor.org/donghua-series/page/${page}/?order=${order}`
        : `https://animekhor.org/donghua-series/?order=${order}`;
    }
  }

  const html = await fetchHtml(url, {}, opts.signal);
  const items = parseDonghuaCatalogHtml(html, opts.source);
  if (items.length > 0) {
    catalogCache.set(key, { ts: Date.now(), items });
  }
  return items;
}

export async function fetchDonghuaDetail(opts: {
  source: DonghuaSourceId;
  url: string;
  signal?: AbortSignal;
}): Promise<DonghuaDetail> {
  const cached = detailCache.get(opts.url);
  if (cached && Date.now() - cached.ts < CACHE_TTL) return cached.detail;
  const html = await fetchHtml(opts.url, {}, opts.signal);
  const detail = parseDonghuaDetailHtml(html, opts.source, opts.url);
  detailCache.set(opts.url, { ts: Date.now(), detail });
  return detail;
}

export interface DonghuaPlayableStream {
  id: string;
  label: string;
  serverTag: string;
  quality: string;
  url: string;
  isHls: boolean;
  isCleanVideo: boolean;
  canDirectDownload: boolean;
  headers?: Record<string, string>;
}

export interface DonghuaResolvedEpisode {
  streams: DonghuaPlayableStream[];
  subtitleUrl: string | null;
  subtitleSource: "animexin_ar" | "opensubtitles_human" | "auto_translated" | null;
  subtitleLabel: string;
}

async function extractMirrorsToStreams(
  mirrors: DonghuaMirror[],
  source: DonghuaSourceId,
  signal?: AbortSignal,
): Promise<{
  streams: DonghuaPlayableStream[];
  dmArabicSubUrl: string | null;
  dmEnglishSubUrl: string | null;
  srArabicSubUrl: string | null;
  srEnglishSubUrl: string | null;
}> {
  const streams: DonghuaPlayableStream[] = [];
  let dmArabicSubUrl: string | null = null;
  let dmEnglishSubUrl: string | null = null;
  let srArabicSubUrl: string | null = null;
  let srEnglishSubUrl: string | null = null;

  // Filter out Indonesian-only hardsubs & Cloudflare-blocked Rumble
  const usable = mirrors.filter((m) => !m.isIndoOnly && m.host !== "rumble");
  const referer = source === "animekhor" ? "https://animekhor.org/" : "https://animexin.dev/";

  const tasks = usable.map(async (mirror, idx) => {
    try {
      if (mirror.host === "dailymotion_allsub" || mirror.host === "dailymotion") {
        const vid = extractDailymotionVideoId(mirror.embedUrl);
        if (!vid) return;
        const metaText = await fetchHtml(
          `https://www.dailymotion.com/player/metadata/video/${vid}`,
          { Referer: "https://geo.dailymotion.com/", Accept: "application/json" },
          signal,
          7000,
        );
        const meta = parseDailymotionMetadata(JSON.parse(metaText));
        if (meta.arabicSubUrl && !dmArabicSubUrl) dmArabicSubUrl = meta.arabicSubUrl;
        if (meta.englishSubUrl && !dmEnglishSubUrl) dmEnglishSubUrl = meta.englishSubUrl;
        // Keep DM HLS as backup only (DM caps direct metadata to 380p without player session)
        if (meta.hlsUrl && mirror.host === "dailymotion_allsub") {
          streams.push({
            id: `dm-${idx}`,
            label: "Dailymotion (احتياطي)",
            serverTag: "DM",
            quality: "480p",
            url: meta.hlsUrl,
            isHls: true,
            isCleanVideo: true,
            canDirectDownload: false,
            headers: { Referer: "https://geo.dailymotion.com/" },
          });
        }
        return;
      }

      if (mirror.host === "streamruby") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, signal, 8000);
        const parsed = parseStreamRubyEmbedHtml(html);
        for (const tr of parsed.tracks) {
          if (tr.isArabic && !srArabicSubUrl) srArabicSubUrl = tr.url;
          if (tr.isEnglish && !srEnglishSubUrl) srEnglishSubUrl = tr.url;
        }
        if (parsed.m3u8) {
          const origin = (() => {
            try { return `${new URL(mirror.embedUrl).origin}/`; } catch { return "https://nuvorel.top/"; }
          })();
          streams.push({
            id: `sr-${idx}`,
            label: "StreamRuby (فيديو نظيف)",
            serverTag: "SR",
            quality: "1080p",
            url: parsed.m3u8,
            isHls: true,
            isCleanVideo: true,
            canDirectDownload: true,
            headers: { Referer: origin },
          });
        }
        return;
      }

      if (mirror.host === "okru") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, signal, 8000);
        const ok = parseOkRuEmbedHtml(html);
        if (ok.hlsUrl) {
          streams.push({
            id: `ok-hls-${idx}`,
            label: mirror.isMultiSub ? "Ok.ru (متعدد الجودات)" : "Ok.ru HD",
            serverTag: "OK",
            quality: "1080p",
            url: ok.hlsUrl,
            isHls: true,
            isCleanVideo: mirror.isMultiSub || !mirror.isHardsubEng,
            canDirectDownload: true,
            headers: { Referer: "https://ok.ru/" },
          });
        }
        // Pick top MP4 qualities (1080p, 720p, 480p) for reliable direct playback/download
        for (const q of ["1080p", "720p", "480p"]) {
          const v = ok.videos.find((x) => x.quality === q);
          if (v) {
            streams.push({
              id: `ok-mp4-${idx}-${q}`,
              label: `Ok.ru MP4 (${q})`,
              serverTag: "OK",
              quality: q,
              url: v.url,
              isHls: false,
              isCleanVideo: mirror.isMultiSub || !mirror.isHardsubEng,
              canDirectDownload: true,
              headers: { Referer: "https://ok.ru/" },
            });
          }
        }
        return;
      }

      if (mirror.host === "odysee") {
        const html = await fetchHtml(mirror.embedUrl, { Referer: referer }, signal, 8000);
        const mediaUrl = parseOdyseeEmbedHtml(html);
        if (mediaUrl) {
          streams.push({
            id: `odysee-${idx}`,
            label: "Odysee MP4 (مباشر)",
            serverTag: "OD",
            quality: "1080p",
            url: mediaUrl,
            isHls: /\.m3u8/i.test(mediaUrl),
            isCleanVideo: !mirror.isHardsubEng,
            canDirectDownload: !/\.m3u8/i.test(mediaUrl),
            headers: { Referer: "https://odysee.com/" },
          });
        }
      }
    } catch {
      // Ignore single mirror failures so other mirrors still succeed
    }
  });

  await Promise.allSettled(tasks);

  // Deduplicate by URL & sort best first: StreamRuby clean 1080p -> Ok.ru HLS -> Ok.ru MP4 1080p -> Odysee -> Ok.ru 720p -> DM backup
  const deduped: DonghuaPlayableStream[] = [];
  const seenUrls = new Set<string>();
  const rank = (s: DonghuaPlayableStream) => {
    let sc = 0;
    if (s.serverTag === "SR") sc += 100;
    else if (s.serverTag === "OK" && s.isHls) sc += 90;
    else if (s.serverTag === "OD") sc += 82;
    else if (s.serverTag === "OK") sc += 75;
    else sc += 20;
    if (s.quality === "1080p") sc += 15;
    else if (s.quality === "720p") sc += 10;
    if (s.isCleanVideo) sc += 8;
    return sc;
  };
  streams.sort((a, b) => rank(b) - rank(a));
  for (const s of streams) {
    if (!seenUrls.has(s.url)) {
      seenUrls.add(s.url);
      deduped.push(s);
    }
  }

  return { streams: deduped, dmArabicSubUrl, dmEnglishSubUrl, srArabicSubUrl, srEnglishSubUrl };
}

/**
 * Resolve streams + best Arabic subtitle for a Donghua episode directly on the phone.
 */
export async function resolveDonghuaEpisode(opts: {
  source: DonghuaSourceId;
  episodeUrl: string;
  seriesTitle: string;
  episodeNumber: number;
  signal?: AbortSignal;
}): Promise<DonghuaResolvedEpisode> {
  const [epHtml, osSub] = await Promise.all([
    fetchHtml(opts.episodeUrl, {}, opts.signal, 11000),
    fetchHumanArabicSubtitleFromOpenSubtitles({
      title: opts.seriesTitle,
      episode: opts.episodeNumber,
      signal: opts.signal,
    }).catch(() => null),
  ]);

  const mirrors = parseDonghuaEpisodeMirrors(epHtml);
  const extracted = await extractMirrorsToStreams(mirrors, opts.source, opts.signal);

  // Subtitle priority:
  // 1. OpenSubtitles human Arabic subtitle (if exact match found & human)
  // 2. Direct Arabic subtitle from AnimeXin Dailymotion / StreamRuby
  // 3. Machine-translated English subtitle via server translate-vtt fallback
  let subtitleUrl: string | null = null;
  let subtitleSource: DonghuaResolvedEpisode["subtitleSource"] = null;
  let subtitleLabel = "بدون ترجمة خارجية";

  if (osSub?.url && osSub.isHuman) {
    subtitleUrl = osSub.url;
    subtitleSource = "opensubtitles_human";
    subtitleLabel = "ترجمة عربية بشرية (OpenSubtitles)";
  } else if (extracted.dmArabicSubUrl || extracted.srArabicSubUrl) {
    subtitleUrl = extracted.dmArabicSubUrl || extracted.srArabicSubUrl;
    subtitleSource = "animexin_ar";
    subtitleLabel = "ترجمة عربية مباشرة (AnimeXin)";
  } else if (osSub?.url) {
    subtitleUrl = osSub.url;
    subtitleSource = "opensubtitles_human";
    subtitleLabel = "ترجمة عربية (OpenSubtitles)";
  } else if (extracted.dmEnglishSubUrl || extracted.srEnglishSubUrl) {
    const enUrl = extracted.dmEnglishSubUrl || extracted.srEnglishSubUrl || "";
    const base = getBaseUrl();
    subtitleUrl = `${base}/api/anime/translate-vtt?url=${encodeURIComponent(enUrl)}&from=en&to=ar`;
    subtitleSource = "auto_translated";
    subtitleLabel = "ترجمة عربية آلية";
  }

  return {
    streams: extracted.streams,
    subtitleUrl,
    subtitleSource,
    subtitleLabel,
  };
}

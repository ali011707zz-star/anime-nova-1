import Constants from "expo-constants";
import { Platform } from "react-native";
import {
  appendDirectStreamParams,
  buildDirectStreamHeaders,
  classifyDeliveryBadge,
  extractMediaFireDirectUrlFromHtml,
  extractMediaFireFileKey,
  extractMediaUrlFromHtml,
  extractSingleHopRedirect,
  isDirectStreamVersion,
} from "./directStreamModeLogic.mjs";
import {
  AD1_BASE_URL,
  buildAnime4upEpisodeCandidates,
  extractAnime4upEpisodeMeta,
  extractAnime4upEpisodeUrlFromSeriesHtml,
  extractAnime4upSeriesUrlFromSearchHtml,
  selectPreferredAd1Mirrors,
} from "./ad1ResolverLogic.mjs";

export const MOBILE_DIRECT_UA =
  "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

export const DESKTOP_DIRECT_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36";

export interface ClientExtractDescriptor {
  embedUrl: string;
  referer: string;
  hostKind?: "okru" | "standard";
}

export interface ExtractedPhoneStream {
  url: string;
  type: "hls" | "mp4";
  headers: Record<string, string>;
}

export interface MediaFireDirectResult {
  url: string;
  headers: Record<string, string>;
}

export interface Ad1PhoneResolvedSource {
  name: string;
  label: string;
  url: string;
  directType: "hls" | "mp4";
  quality: string;
  headers: Record<string, string>;
  clientExtract?: ClientExtractDescriptor;
}

export interface Ad2PhoneResolvedSource {
  name: string;
  label: string;
  url: string;
  directType: "hls";
  quality: string;
  headers: Record<string, string>;
  subtitleUrl?: string;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
}

export const APP_RUNTIME_VERSION: string = Constants.expoConfig?.version || "1.0.10";

export function isDirectStreamActive(): boolean {
  return Platform.OS !== "web" && isDirectStreamVersion(APP_RUNTIME_VERSION);
}

export function getDirectRequestHeaders(): Record<string, string> {
  if (!isDirectStreamActive()) return {};
  return buildDirectStreamHeaders(APP_RUNTIME_VERSION);
}

export function withDirectStreamParams<T extends string | URLSearchParams>(input: T): T {
  return appendDirectStreamParams(input, isDirectStreamActive());
}

export function getDeliveryBadge(url: string | null | undefined, deliveryModeHint?: string | null) {
  return classifyDeliveryBadge(url, deliveryModeHint);
}

const VOE_MIRROR_FALLBACKS = ["https://caseyseemavoid.com"];

function buildEmbedCandidates(embedUrl: string, referer: string): string[] {
  const voeMatch = embedUrl.match(/^https?:\/\/(?:www\.)?voe\.sx\/e\/([a-z0-9_-]+)/i);
  if (voeMatch?.[1]) {
    const voeId = voeMatch[1];
    const ordered: string[] = [];
    try {
      if (referer) {
        const refOrigin = new URL(referer).origin;
        if (!/voe\.sx$/i.test(new URL(referer).hostname)) {
          const mirrorUrl = `${refOrigin}/e/${voeId}`;
          if (!ordered.includes(mirrorUrl)) ordered.push(mirrorUrl);
        }
      }
    } catch { /* ignore invalid referer */ }
    for (const mirrorOrigin of VOE_MIRROR_FALLBACKS) {
      const mirrorUrl = `${mirrorOrigin}/e/${voeId}`;
      if (!ordered.includes(mirrorUrl)) ordered.push(mirrorUrl);
    }
    if (!ordered.includes(embedUrl)) ordered.push(embedUrl);
    return ordered;
  }
  return [embedUrl];
}

/**
 * Fast phone-side extraction (runs directly on the user's residential IP, 0% VPS video).
 * Returns null if the embed requires JS execution / Cloudflare challenge so callers
 * can seamlessly fall back to HiddenResolverWebView.
 */
export async function extractDirectStreamOnPhone(
  descriptor: ClientExtractDescriptor,
  signal?: AbortSignal,
  timeoutMs = 7500,
): Promise<ExtractedPhoneStream | null> {
  const embedUrl = String(descriptor?.embedUrl || "").trim();
  if (!/^https?:\/\//i.test(embedUrl)) return null;

  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), timeoutMs);
  const onOuterAbort = () => ctrl.abort();
  signal?.addEventListener("abort", onOuterAbort);

  try {
    const baseReferer = String(descriptor.referer || "").trim();
    const candidates = buildEmbedCandidates(embedUrl, baseReferer);

    for (const candidateUrl of candidates) {
      if (ctrl.signal.aborted) break;

      if (/mediafire\.com/i.test(candidateUrl)) {
        const mf = await resolveMediaFireDirectOnPhone(candidateUrl, "", ctrl.signal);
        if (mf?.url) {
          return { url: mf.url, type: "mp4", headers: mf.headers };
        }
        continue;
      }

      let origin = "";
      try { origin = new URL(candidateUrl).origin; } catch { /* ignore */ }
      const referer = baseReferer || (origin ? `${origin}/` : "");

      try {
        const res = await fetch(candidateUrl, {
          method: "GET",
          headers: {
            "User-Agent": MOBILE_DIRECT_UA,
            Accept: "text/html,application/xhtml+xml,*/*",
            ...(referer ? { Referer: referer } : {}),
          },
          redirect: "follow",
          signal: ctrl.signal,
        });
        if (!res.ok) continue;

        let finalUrl = res.url || candidateUrl;
        let html = await res.text();
        let found = extractMediaUrlFromHtml(html, finalUrl, descriptor.hostKind || "standard");
        if (!found?.url) {
          const hopUrl = extractSingleHopRedirect(html, finalUrl);
          if (hopUrl) {
            const res2 = await fetch(hopUrl, {
              method: "GET",
              headers: {
                "User-Agent": MOBILE_DIRECT_UA,
                Accept: "text/html,application/xhtml+xml,*/*",
                Referer: finalUrl,
              },
              redirect: "follow",
              signal: ctrl.signal,
            });
            if (res2.ok) {
              finalUrl = res2.url || hopUrl;
              html = await res2.text();
              found = extractMediaUrlFromHtml(html, finalUrl, descriptor.hostKind || "standard");
            }
          }
        }
        if (!found?.url) continue;

        let finalOrigin = origin;
        try { finalOrigin = new URL(finalUrl).origin; } catch { /* ignore */ }
        const playbackReferer = finalUrl || referer;
        return {
          url: found.url,
          type: found.type,
          headers: {
            "User-Agent": MOBILE_DIRECT_UA,
            ...(playbackReferer ? { Referer: playbackReferer } : {}),
            ...(finalOrigin ? { Origin: finalOrigin } : {}),
          },
        };
      } catch {
        if (ctrl.signal.aborted) break;
      }
    }

    return null;
  } catch {
    return null;
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onOuterAbort);
  }
}

/**
 * Resolves any MediaFire URL (/api/aw-dubbed/mf-stream?link=..., mediafire.com/file/...,
 * or VPS-IP-bound downloadXXXX.mediafire.com/<tok>/<key>/<file>) directly on the user's
 * phone using Desktop UA so the minted CDN token is bound to the phone's IP (no 403).
 */
export async function resolveMediaFireDirectOnPhone(
  rawUrl: string,
  _baseUrl = "",
  signal?: AbortSignal,
): Promise<MediaFireDirectResult | null> {
  const key = extractMediaFireFileKey(rawUrl);
  if (!key) return null;

  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), 6500);
  const onOuterAbort = () => ctrl.abort();
  signal?.addEventListener("abort", onOuterAbort);

  try {
    const pageUrl = `https://www.mediafire.com/file/${key}/`;
    const res = await fetch(pageUrl, {
      method: "GET",
      headers: {
        "User-Agent": DESKTOP_DIRECT_UA,
        Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "en-US,en;q=0.9",
        Referer: "https://www.mediafire.com/",
      },
      redirect: "follow",
      signal: ctrl.signal,
    });
    if (!res.ok) return null;
    const html = await res.text();
    const directUrl = extractMediaFireDirectUrlFromHtml(html);
    if (!directUrl) return null;
    return {
      url: directUrl,
      headers: {
        "User-Agent": DESKTOP_DIRECT_UA,
        Referer: "https://www.mediafire.com/",
        Origin: "https://www.mediafire.com",
      },
    };
  } catch {
    return null;
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onOuterAbort);
  }
}

async function resolveMalIdFromAnilistOnPhone(
  anilistId: number,
  signal: AbortSignal,
): Promise<number | null> {
  if (!anilistId || anilistId <= 0) return null;
  try {
    const r = await fetch(`https://api.ani.zip/mappings?anilist_id=${anilistId}`, {
      method: "GET",
      headers: { Accept: "application/json", "User-Agent": MOBILE_DIRECT_UA },
      signal,
    });
    if (r.ok) {
      const data = (await r.json()) as { mappings?: { mal_id?: number } };
      const mal = Number(data?.mappings?.mal_id || 0);
      if (Number.isFinite(mal) && mal > 0) return mal;
    }
  } catch { /* fall through to AniList GraphQL */ }

  if (signal.aborted) return null;
  try {
    const gqlRes = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json", Accept: "application/json" },
      body: JSON.stringify({
        query: "query ($id: Int) { Media(id: $id, type: ANIME) { idMal } }",
        variables: { id: anilistId },
      }),
      signal,
    });
    if (gqlRes.ok) {
      const json = (await gqlRes.json()) as { data?: { Media?: { idMal?: number } } };
      const mal = Number(json?.data?.Media?.idMal || 0);
      if (Number.isFinite(mal) && mal > 0) return mal;
    }
  } catch { /* ignore */ }
  return null;
}

const AD2_BASE = "https://w1.anime4up.rest";

function parseAd2VnxHtml(html: string, pageUrl: string, serverTag: string): Ad2PhoneResolvedSource | null {
  if (!html) return null;
  const streamMatch =
    html.match(/let\s+streamUrl\s*=\s*["'](https?:\/\/[^"']+)["']/i) ||
    html.match(/streamUrl\s*=\s*["'](https?:\/\/[^"']+)["']/i);
  if (!streamMatch?.[1]) return null;
  const streamUrl = streamMatch[1].trim();

  let subtitleUrl: string | undefined;
  const tracksMatch = html.match(/const\s+tracks\s*=\s*(\[[\s\S]*?\]);/i);
  if (tracksMatch?.[1]) {
    try {
      const parsedTracks = JSON.parse(tracksMatch[1]) as Array<{
        file?: string;
        label?: string;
        kind?: string;
        default?: boolean;
      }>;
      const valid = parsedTracks.filter((t) => Boolean(t?.file) && t?.kind !== "thumbnails");
      const arTrack =
        valid.find((t) => /arab|عرب/i.test(String(t?.label || "")) || /_ar\.vtt/i.test(String(t?.file || ""))) ||
        valid.find((t) => t?.default) ||
        valid[0];
      if (arTrack?.file) {
        try {
          subtitleUrl = new URL(arTrack.file, pageUrl).toString();
        } catch {
          subtitleUrl = arTrack.file;
        }
      }
    } catch { /* ignore */ }
  }

  let intro: { start: number; end: number } | undefined;
  let outro: { start: number; end: number } | undefined;
  const skipMatch = html.match(/let\s+skipSegments\s*=\s*(\{[\s\S]*?\});/i);
  if (skipMatch?.[1]) {
    try {
      const parsedSkip = JSON.parse(skipMatch[1]) as {
        intro?: { start?: number; end?: number };
        outro?: { start?: number; end?: number };
        ed?: { start?: number; end?: number };
        ending?: { start?: number; end?: number };
      };
      if (
        parsedSkip?.intro &&
        typeof parsedSkip.intro.start === "number" &&
        typeof parsedSkip.intro.end === "number" &&
        parsedSkip.intro.end > parsedSkip.intro.start
      ) {
        intro = { start: parsedSkip.intro.start, end: parsedSkip.intro.end };
      }
      const rawOutro = parsedSkip?.outro || parsedSkip?.ed || parsedSkip?.ending;
      if (
        rawOutro &&
        typeof rawOutro.start === "number" &&
        typeof rawOutro.end === "number" &&
        rawOutro.end > rawOutro.start
      ) {
        outro = { start: rawOutro.start, end: rawOutro.end };
      }
    } catch { /* ignore */ }
  }

  return {
    name: `أنمي فور أب · ${serverTag}`,
    label: `أنمي فور أب (${serverTag})`,
    url: streamUrl,
    directType: "hls",
    quality: "1080p",
    headers: {
      "User-Agent": MOBILE_DIRECT_UA,
      Referer: pageUrl,
      Origin: AD2_BASE,
    },
    ...(subtitleUrl ? { subtitleUrl } : {}),
    ...(intro ? { skipIntro: intro } : {}),
    ...(outro ? { skipOutro: outro } : {}),
  };
}

/**
 * Direct phone-side fallback for AD 2 (Anime4Up external sub) when the VPS
 * lookup fails or hits a proxy timeout. Resolves AniList -> MAL ID and fetches
 * S1/S2 VnxPlayer endpoints directly on the user's phone.
 */
export async function resolveAd2OnPhone(
  anilistId: number,
  epNum: number,
  signal?: AbortSignal,
): Promise<{ primary: Ad2PhoneResolvedSource; fallbacks: Ad2PhoneResolvedSource[] } | null> {
  if (!anilistId || anilistId <= 0 || !epNum || epNum <= 0) return null;

  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), 6000);
  const onOuterAbort = () => ctrl.abort();
  signal?.addEventListener("abort", onOuterAbort);

  try {
    const malId = await resolveMalIdFromAnilistOnPhone(anilistId, ctrl.signal);
    if (!malId || ctrl.signal.aborted) return null;

    const endpoints = [
      { url: `${AD2_BASE}/Anime4up-S1/mal/${malId}/${epNum}/sub/`, tag: "S1" },
      { url: `${AD2_BASE}/Anime4up-S2/mal/${malId}/${epNum}/sub/`, tag: "S2" },
    ];

    const resolved = await Promise.all(
      endpoints.map(async ({ url, tag }) => {
        try {
          const res = await fetch(url, {
            method: "GET",
            headers: {
              "User-Agent": MOBILE_DIRECT_UA,
              Referer: `${AD2_BASE}/`,
              Accept: "text/html,application/xhtml+xml,*/*;q=0.8",
            },
            signal: ctrl.signal,
          });
          if (!res.ok) return null;
          const html = await res.text();
          return parseAd2VnxHtml(html, url, tag);
        } catch {
          return null;
        }
      }),
    );

    const valid = resolved.filter((item): item is Ad2PhoneResolvedSource => Boolean(item));
    if (!valid.length) return null;
    return {
      primary: valid[0],
      fallbacks: valid.slice(1),
    };
  } catch {
    return null;
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onOuterAbort);
  }
}


const MEGAMAX_FALLBACK_INERTIA_VERSION = "51ce445f4bd9c3ec0b59998cbcc2cb40";

async function fetchTextSafe(
  url: string,
  headers: Record<string, string>,
  signal: AbortSignal,
  timeoutMs = 5500,
): Promise<string | null> {
  const localCtrl = new AbortController();
  const onOuter = () => localCtrl.abort();
  signal.addEventListener("abort", onOuter);
  const tid = setTimeout(() => localCtrl.abort(), timeoutMs);
  try {
    const res = await fetch(url, {
      method: "GET",
      headers,
      redirect: "follow",
      signal: localCtrl.signal,
    });
    if (!res.ok) return null;
    const html = await res.text();
    if (!html || /just a moment|cf-browser-verification|challenges\.cloudflare\.com/i.test(html.slice(0, 1500))) {
      return null;
    }
    return html;
  } catch {
    return null;
  } finally {
    clearTimeout(tid);
    signal.removeEventListener("abort", onOuter);
  }
}

async function resolveA4slWatchLink(
  epUrl: string,
  episodeId: string,
  watchId: string,
  signal: AbortSignal,
): Promise<string | null> {
  const localCtrl = new AbortController();
  const onOuter = () => localCtrl.abort();
  signal.addEventListener("abort", onOuter);
  const tid = setTimeout(() => localCtrl.abort(), 5000);
  try {
    const endpoint = new URL(epUrl);
    endpoint.hash = "";
    endpoint.searchParams.set("a4sl_media", "1");
    const body = `ep=${encodeURIComponent(episodeId)}&kind=watch&id=${encodeURIComponent(watchId)}`;
    const res = await fetch(endpoint.toString(), {
      method: "POST",
      headers: {
        "User-Agent": MOBILE_DIRECT_UA,
        Accept: "application/json",
        "Content-Type": "application/x-www-form-urlencoded",
        Referer: epUrl,
        Origin: AD1_BASE_URL,
      },
      body,
      signal: localCtrl.signal,
    });
    if (!res.ok) return null;
    const json = (await res.json()) as { play?: string };
    const play = String(json?.play || "").trim();
    return /^https?:\/\//i.test(play) ? play : null;
  } catch {
    return null;
  } finally {
    clearTimeout(tid);
    signal.removeEventListener("abort", onOuter);
  }
}

async function resolveMegaMaxMirrorsOnPhone(
  megaUrl: string,
  referer: string,
  preferredQuality: string | undefined,
  forDownload: boolean,
  signal: AbortSignal,
): Promise<Ad1PhoneResolvedSource[]> {
  const match = megaUrl.match(/^https?:\/\/([^/]+)\/(?:iframe|e)\/([^/?#]+)/i);
  if (!match?.[1] || !match?.[2]) return [];
  const host = match[1];
  const fileId = match[2];
  const iframeUrl = `https://${host}/iframe/${fileId}`;

  const localCtrl = new AbortController();
  const onOuter = () => localCtrl.abort();
  signal.addEventListener("abort", onOuter);
  const tid = setTimeout(() => localCtrl.abort(), 8000);
  try {
    const pageRes = await fetch(iframeUrl, {
      method: "GET",
      headers: {
        "User-Agent": MOBILE_DIRECT_UA,
        Referer: referer || `${AD1_BASE_URL}/`,
        Accept: "text/html,application/xhtml+xml,*/*;q=0.8",
      },
      redirect: "follow",
      signal: localCtrl.signal,
    });
    if (!pageRes.ok) return [];
    const pageHtml = await pageRes.text();
    const version =
      pageHtml.match(/"version"\s*:\s*"([a-f0-9]{20,})"/)?.[1] ||
      MEGAMAX_FALLBACK_INERTIA_VERSION;
    const setCookie = pageRes.headers.get("set-cookie") || "";
    const cookieHeader = setCookie
      .split(/,(?=\s*[A-Za-z0-9_.-]+=)/)
      .map((part) => part.split(";")[0]?.trim())
      .filter(Boolean)
      .join("; ");

    const inertiaRes = await fetch(iframeUrl, {
      method: "GET",
      headers: {
        "User-Agent": MOBILE_DIRECT_UA,
        "X-Inertia": "true",
        "X-Inertia-Version": version,
        "X-Inertia-Partial-Data": "streams",
        "X-Inertia-Partial-Component": "files/mirror/video",
        Referer: iframeUrl,
        Accept: "application/json, text/plain, */*",
        ...(cookieHeader ? { Cookie: cookieHeader } : {}),
      },
      signal: localCtrl.signal,
    });
    if (!inertiaRes.ok) return [];
    const data = (await inertiaRes.json()) as {
      props?: { streams?: { status?: string; data?: unknown[] } };
    };
    const streamsData = data?.props?.streams?.data;
    if (data?.props?.streams?.status !== "success" || !Array.isArray(streamsData) || !streamsData.length) {
      return [];
    }

    const mirrors = selectPreferredAd1Mirrors(streamsData, preferredQuality, forDownload);
    if (!mirrors.length) return [];

    // Try fast direct HTTP extraction on the top 2 mirrors first so playback/download can start instantly;
    // keep the remaining ranked mirrors as clientExtract descriptors (for extractDirectStreamOnPhone + HiddenResolverWebView).
    const resolved: Ad1PhoneResolvedSource[] = [];
    for (let i = 0; i < Math.min(mirrors.length, 6); i += 1) {
      const m = mirrors[i]!;
      const descriptor: ClientExtractDescriptor = {
        embedUrl: m.embedUrl,
        referer: iframeUrl,
        hostKind: m.hostKind,
      };
      if (i < 2 && !localCtrl.signal.aborted) {
        const fast = await extractDirectStreamOnPhone(descriptor, localCtrl.signal, 3500).catch(() => null);
        if (fast?.url) {
          resolved.push({
            name: `أنمي فور أب (مدمج) · ${m.quality}`,
            label: `AD 1 (${m.quality})`,
            url: fast.url,
            directType: fast.type,
            quality: m.quality,
            headers: fast.headers,
          });
          continue;
        }
      }
      resolved.push({
        name: `أنمي فور أب (مدمج) · ${m.quality}`,
        label: `AD 1 (${m.quality})`,
        url: m.embedUrl,
        directType: "hls",
        quality: m.quality,
        headers: {
          "User-Agent": MOBILE_DIRECT_UA,
          Referer: iframeUrl,
        },
        clientExtract: descriptor,
      });
    }
    return resolved;
  } catch {
    return [];
  } finally {
    clearTimeout(tid);
    signal.removeEventListener("abort", onOuter);
  }
}

const AD1_EPISODE_CACHE_TTL_MS = 10 * 60_000;
const ad1EpisodeCache = new Map<string, { epUrl: string; epHtml: string; cachedAt: number }>();

function makeAd1CacheKey(title?: string | null, english?: string | null, epNum?: number): string {
  const norm = (s?: string | null) => String(s || "").trim().toLowerCase().replace(/\s+/g, " ");
  return `${norm(english) || norm(title)}::${norm(title)}::${epNum || 0}`;
}

async function findAnime4upEpisodeHtmlOnPhone(opts: {
  title?: string | null;
  english?: string | null;
  epNum: number;
  signal: AbortSignal;
}): Promise<{ epUrl: string; epHtml: string } | null> {
  const { title, english, epNum, signal } = opts;
  if (!epNum || epNum <= 0 || signal.aborted) return null;

  const cacheKey = makeAd1CacheKey(title, english, epNum);
  const cached = ad1EpisodeCache.get(cacheKey);
  if (cached && Date.now() - cached.cachedAt < AD1_EPISODE_CACHE_TTL_MS) {
    return { epUrl: cached.epUrl, epHtml: cached.epHtml };
  }

  const pageHeaders = {
    "User-Agent": MOBILE_DIRECT_UA,
    Referer: `${AD1_BASE_URL}/`,
    Accept: "text/html,application/xhtml+xml,*/*;q=0.8",
  };

  const remember = (epUrl: string, epHtml: string) => {
    if (ad1EpisodeCache.size >= 24) {
      const oldestKey = ad1EpisodeCache.keys().next().value;
      if (oldestKey) ad1EpisodeCache.delete(oldestKey);
    }
    ad1EpisodeCache.set(cacheKey, { epUrl, epHtml, cachedAt: Date.now() });
    return { epUrl, epHtml };
  };

  // Step 1: Fast direct episode slug attempts in parallel
  const directCandidates = buildAnime4upEpisodeCandidates({ title, english, epNum });
  if (directCandidates.length > 0) {
    const results = await Promise.all(
      directCandidates.map(async (u) => {
        const html = await fetchTextSafe(u, pageHeaders, signal, 4000);
        if (!html) return null;
        const meta = extractAnime4upEpisodeMeta(html);
        if (!meta.servers.length) return null;
        return { url: u, html };
      }),
    );
    const hit = results.find(Boolean);
    if (hit) {
      return remember(hit.url, hit.html);
    }
  }

  // Step 2: Fallback search on Anime4Up if direct slug did not match
  if (!signal.aborted) {
    const seenQ = new Set<string>();
    const queries = [english, title]
      .map((q) => (q || "").trim())
      .filter((q) => {
        const k = q.toLowerCase();
        if (!k || seenQ.has(k)) return false;
        seenQ.add(k);
        return true;
      });
    for (const q of queries) {
      if (signal.aborted) break;
      const searchUrl = `${AD1_BASE_URL}/?search_param=animes&s=${encodeURIComponent(q)}`;
      const searchHtml = await fetchTextSafe(searchUrl, pageHeaders, signal, 4200);
      if (!searchHtml) continue;
      const seriesUrl = extractAnime4upSeriesUrlFromSearchHtml(searchHtml, title, english);
      if (!seriesUrl) continue;
      const seriesHtml = await fetchTextSafe(seriesUrl, pageHeaders, signal, 4200);
      if (!seriesHtml) continue;
      const foundEpUrl = extractAnime4upEpisodeUrlFromSeriesHtml(seriesHtml, epNum);
      if (!foundEpUrl) continue;
      const foundHtml = await fetchTextSafe(foundEpUrl, pageHeaders, signal, 4200);
      if (foundHtml) {
        const meta = extractAnime4upEpisodeMeta(foundHtml);
        if (meta.servers.length > 0) {
          return remember(foundEpUrl, foundHtml);
        }
      }
    }
  }

  return null;
}

/**
 * Lightweight phone-side availability probe for AD 1 (Anime4Up Arabic Hardsub).
 * Runs in parallel with server availability checks (0% VPS load) and caches the
 * resolved episode HTML so tapping AD 1 starts playback/download immediately.
 */
export async function probeAd1AvailabilityOnPhone(opts: {
  title?: string | null;
  english?: string | null;
  epNum: number;
  signal?: AbortSignal;
}): Promise<{ available: true; serverCount: number; epUrl: string } | null> {
  const { title, english, epNum, signal } = opts;
  if (!epNum || epNum <= 0 || signal?.aborted) return null;
  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), 8500);
  const onOuterAbort = () => ctrl.abort();
  signal?.addEventListener("abort", onOuterAbort);
  try {
    const found = await findAnime4upEpisodeHtmlOnPhone({ title, english, epNum, signal: ctrl.signal });
    if (!found || ctrl.signal.aborted) return null;
    const meta = extractAnime4upEpisodeMeta(found.epHtml);
    if (!meta.servers.length) return null;
    return {
      available: true,
      serverCount: meta.servers.length,
      epUrl: found.epUrl,
    };
  } catch {
    return null;
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onOuterAbort);
  }
}

/**
 * Direct phone-side resolver for AD 1 (Anime4Up Arabic Hardsub).
 * Supports Anime4Up's new A4SL 1.2 opaque data-watch POST protocol and MegaMax
 * Inertia mirror extraction directly from the user's phone (0% VPS load).
 */
export async function resolveAd1OnPhone(opts: {
  title?: string | null;
  english?: string | null;
  epNum: number;
  preferredQuality?: string;
  forDownload?: boolean;
  signal?: AbortSignal;
}): Promise<{ primary: Ad1PhoneResolvedSource; fallbacks: Ad1PhoneResolvedSource[] } | null> {
  const { title, english, epNum, preferredQuality, forDownload = false, signal } = opts;
  if (!epNum || epNum <= 0) return null;

  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), 13_000);
  const onOuterAbort = () => ctrl.abort();
  signal?.addEventListener("abort", onOuterAbort);

  try {
    const found = await findAnime4upEpisodeHtmlOnPhone({
      title,
      english,
      epNum,
      signal: ctrl.signal,
    });
    if (!found || ctrl.signal.aborted) return null;
    const { epUrl, epHtml } = found;

    const meta = extractAnime4upEpisodeMeta(epHtml);
    if (!meta.servers.length) return null;

    const collected: Ad1PhoneResolvedSource[] = [];

    for (const server of meta.servers.slice(0, 4)) {
      if (ctrl.signal.aborted) break;
      let embedUrl: string | null = server.isDirectUrl ? server.watchValue : null;
      if (!embedUrl && meta.episodeId) {
        embedUrl = await resolveA4slWatchLink(epUrl, meta.episodeId, server.watchValue, ctrl.signal);
      }
      if (!embedUrl) continue;

      if (/(?:megamax\.me|share4max\.com)\/(?:iframe|e)\//i.test(embedUrl)) {
        const megaSources = await resolveMegaMaxMirrorsOnPhone(
          embedUrl,
          epUrl,
          preferredQuality,
          forDownload,
          ctrl.signal,
        );
        if (megaSources.length > 0) {
          collected.push(...megaSources);
          break;
        }
      } else if (!/mp4upload|mega\.nz|mega\.co\.nz/i.test(embedUrl)) {
        collected.push({
          name: `أنمي فور أب (مدمج) · ${server.label}`,
          label: `AD 1 (${server.label})`,
          url: embedUrl,
          directType: "hls",
          quality: preferredQuality || "1080p",
          headers: {
            "User-Agent": MOBILE_DIRECT_UA,
            Referer: epUrl,
          },
          clientExtract: {
            embedUrl,
            referer: epUrl,
            hostKind: /ok\.ru/i.test(embedUrl) ? "okru" : "standard",
          },
        });
      }
    }

    if (!collected.length) return null;
    return {
      primary: collected[0]!,
      fallbacks: collected.slice(1),
    };
  } catch {
    return null;
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onOuterAbort);
  }
}

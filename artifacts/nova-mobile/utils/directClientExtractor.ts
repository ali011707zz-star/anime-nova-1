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

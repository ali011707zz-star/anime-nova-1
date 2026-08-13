import { encryptParam } from "./security.js";
import { isNonOriginalVideo } from "./source-policy.js";
import { probeHlsQuality, probeHlsVariants } from "./consumet.js";
import { decryptReanimeEmbed } from "./reanime-stream.js";
import { lookupAniListTitle } from "./anilist-title.js";

/**
 * Anivexa is intentionally kept as a separate VPS service. This adapter only
 * translates its direct stream response into Nova's existing source contract.
 *
 * The adapter deliberately requests the `sub` route (original audio), filters
 * Reanime's three known soft-sub servers, and ignores provider subtitle tracks
 * so Nova can overlay Kawaii's Arabic subtitle independently.
 */
export const ANIVEXA_SOURCES = [
  // Aggregate source used by the clients. The provider adapter resolves all
  // original Reanime soft-sub servers and the picker groups their variants
  // into one RE row per quality.
  { site: "anivexa_re", provider: "reanime", tag: "RE", label: "RE", server: "", aliases: [], aggregate: true },
  // RE is the original provider name. The current Anivexa API calls these
  // two servers HD-1/HD-2, while older responses used the Solaris names.
  { site: "anivexa_solaris_1", provider: "reanime", tag: "RE", label: "Solaris-1", server: "Solaris-1", aliases: ["HD-1"], aggregate: false },
  { site: "anivexa_solaris_2", provider: "reanime", tag: "RE", label: "Solaris-2", server: "Solaris-2", aliases: ["HD-2"], aggregate: false },
] as const;

type AnivexaSourceSite = (typeof ANIVEXA_SOURCES)[number]["site"];

type AnivexaStream = {
  url?: string;
  type?: string;
  server?: string;
  quality?: string;
  referer?: string;
  headers?: Record<string, string>;
  subtitle?: unknown;
  subtitles?: unknown;
  tracks?: unknown;
  hardsub?: unknown;
  burnedSub?: unknown;
  isDub?: unknown;
  audio?: unknown;
  language?: unknown;
  name?: unknown;
  label?: unknown;
};

type AnivexaServer = {
  name?: string;
  type?: string;
  embed?: string;
};

type AnivexaPayload = {
  stream_url?: string;
  server?: string;
  referer?: string;
  headers?: Record<string, string>;
  streams?: AnivexaStream[];
  allServers?: AnivexaServer[];
};

type NovaSource = {
  name: string;
  url: string;
  quality: string;
  qualityRank: number;
  site: string;
  directUrl: string;
  directType: "hls" | "mp4";
  isEmbed: boolean;
  hasBuiltinSub: false;
  headers?: Record<string, string>;
};

const REQUEST_TIMEOUT_MS = 26_000;
const REANIME_REFERER = "https://reanime.to/";
const REANIME_STREAM_REFERER = "https://flixcloud.cc/";
let warnedMissingUrl = false;

function anivexaBaseUrl(): string {
  return (process.env.ANIVEXA_API_URL || "").trim().replace(/\/+$/, "");
}

function providerForSite(site: string) {
  return ANIVEXA_SOURCES.find(item => item.site === site);
}

function qualityInfo(stream: AnivexaStream): { label: string; rank: number } {
  const raw = `${stream.quality || ""} ${stream.server || ""}`.toLowerCase();
  if (raw.includes("2160") || raw.includes("4k")) return { label: "4K", rank: 24 };
  if (raw.includes("1080") || raw.includes("fhd")) return { label: "1080p FHD", rank: 18 };
  if (raw.includes("720") || raw.includes("hd")) return { label: "720p HD", rank: 13 };
  if (raw.includes("480")) return { label: "480p", rank: 8 };
  if (raw.includes("360") || raw.includes("sd")) return { label: "360p SD", rank: 5 };
  // Reanime's current API names its original servers HD-1/HD-2. Older
  // Anivexa responses renamed those same servers Solaris-1/Solaris-2.
  // Treating them as Auto makes the frontend put a working HLS source in
  // the 360p bucket when the manifest probe is temporarily unavailable.
  if (/\bhd[-_ ]?[12]\b|\bsolaris[-_ ]?[12]\b/i.test(raw)) {
    return { label: "720p HD", rank: 13 };
  }
  return { label: "Auto", rank: 0 };
}

function resolveUpstreamUrl(baseUrl: string, value: string): string {
  try {
    return new URL(value, `${baseUrl}/`).toString();
  } catch {
    return "";
  }
}

function normalizeServerName(value: unknown): string {
  return String(value || "").toLowerCase().replace(/[^a-z0-9]/g, "");
}

function streamReferer(
  rawUrl: string,
  explicitReferer?: unknown,
  headers?: Record<string, string>,
): string {
  const explicit = typeof explicitReferer === "string" ? explicitReferer.trim() : "";
  if (explicit) return explicit;
  const headerReferer = headers?.Referer || headers?.referer || "";
  if (headerReferer.trim()) return headerReferer.trim();
  try {
    if (new URL(rawUrl).hostname.toLowerCase().endsWith("flixcloud.cc")) {
      return REANIME_STREAM_REFERER;
    }
  } catch {
    // Keep the provider page referer for malformed or relative upstream URLs.
  }
  return REANIME_REFERER;
}

function streamKind(stream: AnivexaStream, url: string): "hls" | "mp4" | null {
  const type = String(stream.type || "").toLowerCase();
  const lowerUrl = url.toLowerCase();
  if (
    type.includes("embed") ||
    type.includes("iframe") ||
    type.includes("hardsub") ||
    type.includes("burned")
  ) return null;
  if (
    type.includes("hls") ||
    lowerUrl.includes(".m3u8") ||
    lowerUrl.includes("/stream/") ||
    lowerUrl.includes("m3u8-proxy") ||
    lowerUrl.includes("hls-proxy") ||
    lowerUrl.includes("/manifest/")
  ) {
    return "hls";
  }
  if (type.includes("mp4") || type.includes("direct") || /\.(mp4|webm)(?:[?#]|$)/i.test(lowerUrl)) {
    return "mp4";
  }
  return null;
}

function novaProxyUrl(kind: "hls" | "mp4", rawUrl: string, referer: string): string {
  const route = kind === "hls" ? "hls-proxy" : "video-proxy";
  return `/api/anime/${route}?url=${encodeURIComponent(encryptParam(rawUrl))}&ref=${encodeURIComponent(encryptParam(referer))}`;
}

async function makeResolvedSources(
  provider: (typeof ANIVEXA_SOURCES)[number],
  resolved: { url: string; kind: "hls" | "mp4"; referer: string },
): Promise<NovaSource[]> {
  if (resolved.kind === "hls") {
    const variants = await probeHlsVariants(resolved.url, resolved.referer);
    if (variants.length) {
      return variants.map(variant => {
        const directUrl = novaProxyUrl("hls", variant.url, resolved.referer);
        return {
          name: `${provider.tag} · ${provider.label} · ${variant.label}`,
          url: directUrl,
          quality: variant.label,
          qualityRank: variant.rank,
          site: provider.site,
          directUrl,
          directType: "hls",
          isEmbed: false,
          hasBuiltinSub: false,
          headers: { Referer: resolved.referer },
        };
      });
    }
  }

  let quality = qualityInfo({ server: provider.server });
  if (resolved.kind === "hls") {
    const manifestQuality = await probeHlsQuality(resolved.url, resolved.referer);
    if (manifestQuality.rank > quality.rank) quality = manifestQuality;
  }
  const directUrl = novaProxyUrl(resolved.kind, resolved.url, resolved.referer);
  return [{
    name: `${provider.tag} · ${provider.label} · ${quality.label}`,
    url: directUrl,
    quality: quality.label,
    qualityRank: quality.rank,
    site: provider.site,
    directUrl,
    directType: resolved.kind,
    isEmbed: false,
    hasBuiltinSub: false,
    headers: { Referer: resolved.referer },
  }];
}

async function fetchReanimeServer(
  baseUrl: string,
  server: AnivexaServer,
): Promise<{ url: string; kind: "hls" | "mp4"; referer: string } | null> {
  const embed = typeof server.embed === "string"
    ? resolveUpstreamUrl(baseUrl, server.embed.trim())
    : "";
  if (!embed) return null;

  const response = await fetch(embed, {
    headers: {
      Accept: "text/html,*/*",
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
      Referer: REANIME_REFERER,
    },
    signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
  });
  if (!response.ok) throw new Error(`Reanime ${server.name || "server"} embed returned ${response.status}`);

  const decrypted = await decryptReanimeEmbed(await response.text());
  const lower = decrypted.url.toLowerCase();
  const kind = /\.(mp4|webm)(?:[?#]|$)/i.test(lower) ? "mp4" : "hls";
  return { url: decrypted.url, kind, referer: streamReferer(decrypted.url) };
}

/**
 * Fetch one provider lazily. The frontend already fans out one request per
 * source card, so this avoids making a slow provider block all other sources.
 */
export async function getAnivexaSources(
  site: string,
  anilistId: number | undefined,
  ep: number,
  title = "",
  english: string | null = null,
  titleVariants: string[] = [],
): Promise<NovaSource[]> {
  const provider = providerForSite(site);
  const baseUrl = anivexaBaseUrl();
  if (!provider || !baseUrl || !Number.isFinite(ep) || ep < 1) {
    if (provider && !baseUrl && !warnedMissingUrl) {
      warnedMissingUrl = true;
      console.warn("[Anivexa] ANIVEXA_API_URL is not configured; Anivexa sources are disabled");
    }
    return [];
  }

  const titleMatch = anilistId
    ? null
    : await lookupAniListTitle([title, english || "", ...titleVariants]);
  const resolvedAnilistId = anilistId || titleMatch?.id;
  if (!resolvedAnilistId) return [];

  const endpoint = `${baseUrl}/watch/${provider.provider}/${resolvedAnilistId}/sub/${provider.provider}-${ep}`;
  try {
    const response = await fetch(endpoint, {
      headers: { Accept: "application/json", "User-Agent": "Nova-Anivexa-Adapter/1.0" },
      signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
    });
    if (!response.ok) return [];

    const payload = await response.json() as AnivexaPayload;
    const serverNames = [provider.server, ...provider.aliases]
      .filter(Boolean)
      .map(normalizeServerName);
    const allServers = Array.isArray(payload.allServers) ? payload.allServers : [];
    const matchingServers = allServers.filter(server => {
      const name = normalizeServerName(server.name);
      const isSoftSub = !/hard.?sub|hardsub|dub/i.test(`${server.name || ""} ${server.type || ""}`);
      return isSoftSub && (provider.aggregate || serverNames.includes(name));
    });

    // The current Anivexa contract exposes the already-decrypted primary
    // stream as `stream_url`. Prefer it, then resolve every soft-sub embed as
    // a fallback. The old adapter ignored stream_url and only tried one
    // encrypted embed, which made RE appear red even when the API had a
    // playable stream and also discarded the second server.
    const candidates: Array<{ url: string; kind: "hls" | "mp4"; referer: string }> = [];
    const addDirectCandidate = (stream: AnivexaStream, rawValue: string, fallbackServer = "") => {
      const rawUrl = resolveUpstreamUrl(baseUrl, rawValue.trim());
      if (!rawUrl || isNonOriginalVideo(stream as Record<string, unknown>, rawUrl)) return;
      const kind = streamKind(stream, rawUrl);
      if (!kind) return;
      const referer = streamReferer(rawUrl, stream.referer, stream.headers);
      if (!candidates.some(candidate => candidate.url === rawUrl)) {
        candidates.push({ url: rawUrl, kind, referer });
      }
    };

    if (typeof payload.stream_url === "string" && payload.stream_url.trim()) {
      addDirectCandidate(
        { url: payload.stream_url, type: "hls", server: payload.server || provider.server },
        payload.stream_url,
        payload.server || provider.server,
      );
    }

    const directFallback = (Array.isArray(payload.streams) ? payload.streams : [])
      .filter(stream =>
        typeof stream.url === "string" &&
        (!stream.server || provider.aggregate || serverNames.includes(normalizeServerName(stream.server))) &&
        !isNonOriginalVideo(stream as Record<string, unknown>, stream.url),
      );
    for (const stream of directFallback) {
      if (stream.url) addDirectCandidate(stream, stream.url, stream.server || provider.server);
    }

    const resolvedEmbeds = await Promise.allSettled(
      matchingServers.slice(0, 6).map(server => fetchReanimeServer(baseUrl, server)),
    );
    for (const result of resolvedEmbeds) {
      if (result.status === "fulfilled" && result.value &&
          !candidates.some(candidate => candidate.url === result.value!.url)) {
        candidates.push(result.value);
      }
    }

    if (!candidates.length) return [];
    const sources: NovaSource[] = [];
    for (const candidate of candidates) {
      const resolved = await makeResolvedSources(provider, candidate);
      for (const source of resolved) {
        if (!sources.some(existing => existing.directUrl === source.directUrl)) {
          sources.push(source);
        }
      }
    }
    return sources;
  } catch (error: any) {
    console.warn(`[Anivexa] ${provider.provider} ep${ep} failed:`, error?.message || error);
    return [];
  }
}

export function isAnivexaSite(site: string): site is AnivexaSourceSite {
  return Boolean(providerForSite(site));
}
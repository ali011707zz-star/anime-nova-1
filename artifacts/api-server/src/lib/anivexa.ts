import { encryptParam } from "./security.js";
import { isNonOriginalVideo } from "./source-policy.js";
import { probeHlsQuality, probeHlsVariants } from "./consumet.js";
import { decryptReanimeEmbed } from "./reanime-stream.js";
import { lookupAniListTitle } from "./anilist-title.js";

/**
 * Anivexa is intentionally kept as a separate VPS service. This adapter only
 * translates its direct stream response into Nova's existing source contract.
 *
 * The adapter deliberately requests the `sub` route (original audio), folds
 * every Reanime soft-sub server into one RE source, and ignores provider
 * subtitle tracks so Nova can overlay Kawaii's Arabic subtitle independently.
 */
export const ANIVEXA_SOURCES = [
  // One public source only. The adapter resolves every Reanime soft-sub
  // server and expands the returned HLS master into one row per quality.
  { site: "anivexa_re", provider: "reanime", tag: "RE", label: "RE", server: "", aliases: [], aggregate: true },
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
  dataLink?: string;
  link?: string;
};

type AnivexaPayload = {
  stream_url?: string;
  server?: string;
  referer?: string;
  headers?: Record<string, string>;
  streams?: AnivexaStream[];
  allServers?: AnivexaServer[];
  servers?: AnivexaServer[];
  data?: {
    stream_url?: string;
    server?: string;
    referer?: string;
    headers?: Record<string, string>;
    streams?: AnivexaStream[];
    sources?: AnivexaStream[];
    allServers?: AnivexaServer[];
    servers?: AnivexaServer[];
  } | AnivexaStream[] | AnivexaStream;
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
  resolved: {
    url: string;
    kind: "hls" | "mp4";
    referer: string;
    qualityHint?: { label: string; rank: number };
  },
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

  // A few RE manifests are media playlists whose URL itself carries the
  // encoded quality, so keep that hint before falling back to "Auto".
  let quality = resolved.qualityHint || qualityInfo({ server: `${provider.server} ${resolved.url}` });
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
): Promise<{
  url: string;
  kind: "hls" | "mp4";
  referer: string;
  qualityHint: { label: string; rank: number };
} | null> {
  const rawEmbed = server.embed || server.dataLink || server.link;
  const embed = typeof rawEmbed === "string"
    ? resolveUpstreamUrl(baseUrl, rawEmbed.trim())
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
  return {
    url: decrypted.url,
    kind,
    referer: streamReferer(decrypted.url),
    qualityHint: qualityInfo({ server: server.name || server.type || "" }),
  };
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

  try {
    // Keep the canonical episode id first, but accept the short form used by
    // older Anivexa deployments. This avoids a false red source when only one
    // of the two compatible route shapes is enabled on the VPS service.
    const endpointBase = `${baseUrl}/watch/${provider.provider}/${resolvedAnilistId}/sub`;
    const endpoints = [
      `${endpointBase}/${provider.provider}-${ep}`,
      `${endpointBase}/${ep}`,
    ];
    let payload: AnivexaPayload | null = null;
    for (const endpoint of endpoints) {
      const response = await fetch(endpoint, {
        headers: { Accept: "application/json", "User-Agent": "Nova-Anivexa-Adapter/1.0" },
        signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
      });
      if (!response.ok) continue;
      const candidate = await response.json() as AnivexaPayload;
      if (candidate && typeof candidate === "object") {
        payload = candidate;
        break;
      }
    }
    if (!payload) return [];

    const nested: any = Array.isArray(payload.data) ? null : (payload.data || null);
    const payloadStreamUrl = payload.stream_url || nested?.stream_url;
    const payloadServer = payload.server || nested?.server || provider.server;
    const payloadReferer = payload.referer || nested?.referer;
    const payloadHeaders = payload.headers || nested?.headers;
    const streams = [
      ...(Array.isArray(payload.streams) ? payload.streams : []),
      ...(Array.isArray((payload as any).sources) ? (payload as any).sources : []),
      ...(Array.isArray(nested?.streams) ? nested.streams : []),
      ...(Array.isArray(nested?.sources) ? nested.sources : []),
      ...(Array.isArray(payload.data) ? payload.data : []),
      ...(payload.data && !Array.isArray(payload.data) && !Array.isArray(nested?.streams) &&
        !Array.isArray(nested?.sources) && typeof payload.data === "object"
        ? [payload.data as AnivexaStream]
        : []),
    ];

    const serverNames = [provider.server, ...provider.aliases]
      .filter(Boolean)
      .map(normalizeServerName);
    const allServers = [
      ...(Array.isArray(payload.allServers) ? payload.allServers : []),
      ...(Array.isArray(payload.servers) ? payload.servers : []),
      ...(Array.isArray(nested?.allServers) ? nested.allServers : []),
      ...(Array.isArray(nested?.servers) ? nested.servers : []),
    ];
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
    const candidates: Array<{
      url: string;
      kind: "hls" | "mp4";
      referer: string;
      qualityHint?: { label: string; rank: number };
    }> = [];
    const addDirectCandidate = (stream: AnivexaStream, rawValue: string, fallbackServer = "") => {
      const rawUrl = resolveUpstreamUrl(baseUrl, rawValue.trim());
      if (!rawUrl || isNonOriginalVideo(stream as Record<string, unknown>, rawUrl)) return;
      const kind = streamKind(stream, rawUrl);
      if (!kind) return;
      const streamType = String(stream.type || "").toLowerCase();
      // Anivexa exposes a local redirect helper alongside the real FlixCloud
      // URL. It is not a media playlist and must never be sent to hls-proxy.
      if (streamType.includes("redirect") && rawUrl.includes("/stream/")) return;
      const referer = streamReferer(rawUrl, stream.referer, stream.headers);
      const qualityHint = qualityInfo({ quality: stream.quality, server: stream.server || fallbackServer });
      if (!candidates.some(candidate => candidate.url === rawUrl)) {
        candidates.push({ url: rawUrl, kind, referer, qualityHint });
      }
    };

    if (typeof payloadStreamUrl === "string" && payloadStreamUrl.trim()) {
      addDirectCandidate(
        {
          url: payloadStreamUrl,
          type: "hls",
          server: payloadServer,
          referer: payloadReferer,
          headers: payloadHeaders,
        },
        payloadStreamUrl,
        payloadServer,
      );
    }

    const directFallback = streams
      .filter(stream =>
        typeof (stream.url || (stream as any).file || (stream as any).m3u8) === "string" &&
        (!stream.server || provider.aggregate || serverNames.includes(normalizeServerName(stream.server))) &&
        !isNonOriginalVideo(
          stream as Record<string, unknown>,
          String(stream.url || (stream as any).file || (stream as any).m3u8),
        ),
      );
    for (const stream of directFallback) {
      const rawUrl = stream.url || (stream as any).file || (stream as any).m3u8;
      if (typeof rawUrl === "string") addDirectCandidate(stream, rawUrl, stream.server || provider.server);
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
import { encryptParam } from "./security.js";
import { isNonOriginalVideo } from "./source-policy.js";
import { probeHlsManifest, probeHlsQuality, probeHlsVariants } from "./consumet.js";
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
  dataType?: string;
  data_type?: string;
  softsub?: boolean;
  hardsub?: boolean;
  isDub?: boolean;
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

function reanimeCfProxyBase(): string {
  const remoteBase = (process.env.NOVA_PROXY_BASE || "").trim().replace(/\/+$/, "");
  return remoteBase
    ? `${remoteBase}/api/cfproxy`
    : `http://localhost:${process.env.CF_PROXY_PORT || "8000"}`;
}

function looksLikeCloudflareChallenge(body: string): boolean {
  const lower = body.slice(0, 16_000).toLowerCase();
  return lower.includes("just a moment") ||
    lower.includes("cf-chl-") ||
    lower.includes("challenge-platform") ||
    lower.includes("turnstile");
}

/**
 * Reanime's embed and token endpoints can return a successful HTTP response
 * containing a Cloudflare challenge instead of the real payload. Use the VPS
 * curl_cffi proxy as a fallback, matching the legacy Reanime adapter, while
 * keeping a direct request as the fast path.
 */
async function fetchReanimeResponse(
  input: RequestInfo | URL,
  init: RequestInit = {},
): Promise<Response> {
  const target = typeof input === "string" ? input : input instanceof URL ? input.toString() : input.url;
  let direct: Response | null = null;

  try {
    direct = await fetch(input, init);
    if (direct.ok) {
      const body = await direct.clone().text();
      if (!looksLikeCloudflareChallenge(body)) return direct;
    }
  } catch {
    // Fall through to the VPS proxy.
  }

  try {
    const proxyUrl = new URL(`${reanimeCfProxyBase()}/fetch`);
    proxyUrl.searchParams.set("url", target);
    const headers = new Headers(init.headers);
    const referer = headers.get("Referer") || headers.get("referer");
    if (referer) proxyUrl.searchParams.set("ref", referer);
    proxyUrl.searchParams.set("timeout", String(Math.floor(REQUEST_TIMEOUT_MS / 1000)));

    const proxied = await fetch(proxyUrl, {
      signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS + 2_000),
    });
    if (proxied.ok) return proxied;
  } catch {
    // Preserve the original response below when it was at least available.
  }

  if (direct) return direct;
  throw new Error("Reanime upstream request failed");
}

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

function isEncryptedReanimeManifest(url: string, kind: "hls" | "mp4"): boolean {
  if (kind !== "hls") return false;
  try {
    const parsed = new URL(url);
    // Reanime/FlixCloud deliberately returns a base64/XOR payload from the
    // signed master URL. It becomes playable only after the embed page gives
    // us the per-embed manifest key.
    return parsed.hostname.toLowerCase().endsWith("flixcloud.cc");
  } catch {
    return false;
  }
}

function novaProxyUrl(
  kind: "hls" | "mp4",
  rawUrl: string,
  referer: string,
  manifestKey = "",
): string {
  const route = kind === "hls" ? "hls-proxy" : "video-proxy";
  const params = new URLSearchParams({
    url: encryptParam(rawUrl),
    ref: encryptParam(referer),
  });
  if (kind === "hls" && manifestKey) params.set("mk", encryptParam(manifestKey));
  return `/api/anime/${route}?${params.toString()}`;
}

async function makeResolvedSources(
  provider: (typeof ANIVEXA_SOURCES)[number],
  resolved: {
    url: string;
    kind: "hls" | "mp4";
    referer: string;
    qualityHint?: { label: string; rank: number };
    manifestKey?: string;
  },
): Promise<NovaSource[]> {
  if (resolved.kind === "hls") {
    // Probe the master once and use the parsed variants immediately. The old
    // flow fetched the same signed manifest twice for every RE server
    // (validity probe, then variant probe), which made a healthy source look
    // slow and often exceeded the mobile source budget.
    const variants = await probeHlsVariants(resolved.url, resolved.referer, resolved.manifestKey);
    if (variants.length) {
      return variants.map(variant => {
        const directUrl = novaProxyUrl(
          "hls",
          variant.url,
          resolved.referer,
          resolved.manifestKey,
        );
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

    // A media playlist has no #EXT-X-STREAM-INF rows, so it needs one
    // explicit validity check after the variant probe. This also rejects an
    // encrypted/HTML 200 response when no manifest key was available.
    if (!await probeHlsManifest(resolved.url, resolved.referer, resolved.manifestKey)) return [];
  }

  // A few RE manifests are media playlists whose URL itself carries the
  // encoded quality, so keep that hint before falling back to "Auto".
  let quality = resolved.qualityHint || qualityInfo({ server: `${provider.server} ${resolved.url}` });
  if (resolved.kind === "hls") {
    const manifestQuality = await probeHlsQuality(
      resolved.url,
      resolved.referer,
      resolved.manifestKey,
    );
    if (manifestQuality.rank > quality.rank) quality = manifestQuality;
  }
  const directUrl = novaProxyUrl(
    resolved.kind,
    resolved.url,
    resolved.referer,
    resolved.manifestKey,
  );
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
  manifestKey?: string;
} | null> {
  const rawEmbed = server.embed || server.dataLink || server.link;
  const embed = typeof rawEmbed === "string"
    ? resolveUpstreamUrl(baseUrl, rawEmbed.trim())
    : "";
  if (!embed) return null;

  const response = await fetchReanimeResponse(embed, {
    headers: {
      Accept: "text/html,*/*",
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
      Referer: REANIME_REFERER,
    },
    signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
  });
  if (!response.ok) throw new Error(`Reanime ${server.name || "server"} embed returned ${response.status}`);

  const decrypted = await decryptReanimeEmbed(await response.text(), fetchReanimeResponse);
  const lower = decrypted.url.toLowerCase();
  const kind = /\.(mp4|webm)(?:[?#]|$)/i.test(lower) ? "mp4" : "hls";
  return {
    url: decrypted.url,
    kind,
    referer: streamReferer(decrypted.url),
    qualityHint: qualityInfo({ server: server.name || server.type || "" }),
    manifestKey: decrypted.manifestKey,
  };
}

function isDubOrHardSubServer(server: AnivexaServer): boolean {
  const metadata = [
    server.name,
    server.type,
    server.dataType,
    server.data_type,
    server.isDub === true ? "dub" : "",
    server.hardsub === true ? "hardsub" : "",
  ].filter(Boolean).join(" ");
  return /(?:^|[\s_-])dub(?:bed)?(?:$|[\s_-])|hard.?sub|hardsub|burned/i.test(metadata);
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
      const isSoftSub = !isDubOrHardSubServer(server);
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
      manifestKey?: string;
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
      if (isEncryptedReanimeManifest(rawUrl, kind)) return;
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

    // Reanime returns one row per audio mode, and the same dataLink can appear
    // more than once (for example HD-1/sub and HD-1/dub).  De-duplicate the
    // embed URLs before decrypting so a dubbed row cannot delay the original
    // stream or consume another token request.
    const uniqueMatchingServers = Array.from(
      new Map(
        matchingServers
          .map(server => {
            const rawEmbed = server.embed || server.dataLink || server.link;
            return [typeof rawEmbed === "string" ? resolveUpstreamUrl(baseUrl, rawEmbed.trim()) : "", server] as const;
          })
          .filter(([embed]) => Boolean(embed)),
      ).values(),
    );
    // A playable RE source needs the key from its embed page. Resolve the
    // unique soft-sub servers concurrently and return as soon as one produces
    // a valid HLS playlist. The direct stream_url is intentionally not used
    // for FlixCloud because Anivexa does not return its manifest key.
    const embedCandidates = uniqueMatchingServers.slice(0, 4);
    const directResults = await Promise.allSettled(
      candidates.map(candidate => makeResolvedSources(provider, candidate)),
    );
    const firstEmbedSources = embedCandidates.length
      ? await Promise.any(
        embedCandidates.map(async server => {
          const resolved = await fetchReanimeServer(baseUrl, server);
          if (!resolved) throw new Error("Reanime embed did not resolve");
          const sources = await makeResolvedSources(provider, resolved);
          if (!sources.length) throw new Error("Reanime manifest was not playable");
          return sources;
        }),
      ).catch(() => null)
      : null;
    const sources: NovaSource[] = [];
    for (const result of directResults) {
      if (result.status !== "fulfilled") continue;
      for (const source of result.value) {
        if (!sources.some(existing => existing.directUrl === source.directUrl)) {
          sources.push(source);
        }
      }
    }
    if (firstEmbedSources) {
      for (const source of firstEmbedSources) {
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
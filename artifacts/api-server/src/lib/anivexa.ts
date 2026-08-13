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
  // RE is the original provider name. The current Anivexa API calls these
  // two servers HD-1/HD-2, while older responses used the Solaris names.
  { site: "anivexa_solaris_1", provider: "reanime", tag: "RE", label: "Solaris-1", server: "Solaris-1", aliases: ["HD-1"] },
  { site: "anivexa_solaris_2", provider: "reanime", tag: "RE", label: "Solaris-2", server: "Solaris-2", aliases: ["HD-2"] },
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
  return { url: decrypted.url, kind, referer: REANIME_REFERER };
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
    const serverNames = [provider.server, ...provider.aliases].map(normalizeServerName);
    const allServers = Array.isArray(payload.allServers) ? payload.allServers : [];
    const matchingServer = allServers.find(server =>
      serverNames.includes(normalizeServerName(server.name))
      && !/hard.?sub|hardsub|dub/i.test(`${server.name || ""} ${server.type || ""}`),
    );

    // Anivexa's Reanime endpoint returns one already-decrypted stream plus
    // the remaining server embeds. Resolve the requested Soft Sub embed here
    // so Nova receives a native HLS/MP4 source, not an iframe that the player
    // cannot use reliably on mobile.
    if (matchingServer) {
      const resolved = await fetchReanimeServer(baseUrl, matchingServer);
      if (!resolved) return [];

      return await makeResolvedSources(provider, resolved);
    }

    // Keep a safe fallback for older Anivexa deployments that do not expose
    // allServers yet. It only accepts an explicitly direct stream belonging
    // to the requested server; unnamed streams are never mislabeled.
    const directFallback = (Array.isArray(payload.streams) ? payload.streams : [])
      .find(stream =>
        serverNames.includes(normalizeServerName(stream.server))
        && typeof stream.url === "string"
        && !isNonOriginalVideo(stream as Record<string, unknown>, stream.url),
      );
    if (!directFallback?.url) return [];
    const rawUrl = resolveUpstreamUrl(baseUrl, directFallback.url.trim());
    const kind = streamKind(directFallback, rawUrl);
    if (!rawUrl || !kind) return [];
    const referer = typeof directFallback.referer === "string" && directFallback.referer
      ? directFallback.referer
      : REANIME_REFERER;
    return await makeResolvedSources(provider, { url: rawUrl, kind, referer });
  } catch (error: any) {
    console.warn(`[Anivexa] ${provider.provider} ep${ep} failed:`, error?.message || error);
    return [];
  }
}

export function isAnivexaSite(site: string): site is AnivexaSourceSite {
  return Boolean(providerForSite(site));
}
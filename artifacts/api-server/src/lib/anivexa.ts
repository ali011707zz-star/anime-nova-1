import { encryptParam } from "./security.js";

/**
 * Anivexa is intentionally kept as a separate VPS service. This adapter only
 * translates its direct stream response into Nova's existing source contract.
 *
 * Deliberately excluded:
 * - anineko: already exists as a first-party Nova source
 * - animenosub, anizone, animedunya: the upstream project marks these
 *   providers as subtitle-only
 */
export const ANIVEXA_SOURCES = [
  { site: "anivexa_mkissa", provider: "mkissa", label: "MKissa" },
  { site: "anivexa_reanime", provider: "reanime", label: "Reanime" },
  { site: "anivexa_anikoto", provider: "anikoto", label: "AniKoto" },
  { site: "anivexa_animegg", provider: "animegg", label: "AnimeGG" },
  { site: "anivexa_anidbapp", provider: "anidbapp", label: "AniDB App" },
  { site: "anivexa_2dhive", provider: "2dhive", label: "2dhive" },
  { site: "anivexa_anibd", provider: "anibd", label: "AniBD" },
  { site: "anivexa_senshi", provider: "senshi", label: "Senshi" },
  { site: "anivexa_kaa", provider: "kaa", label: "Kickassanime" },
] as const;

type AnivexaSourceSite = (typeof ANIVEXA_SOURCES)[number]["site"];

type AnivexaStream = {
  url?: string;
  type?: string;
  server?: string;
  quality?: string;
  referer?: string;
  // Optional external subtitle tracks are intentionally not copied to Nova.
  // Their presence does not mean the audio/video has burned-in subtitles.
};

type NovaSource = {
  name: string;
  url: string;
  quality: string;
  qualityRank: number;
  site: string;
  directUrl: string;
  directType: "hls" | "mp4";
  isEmbed: false;
  hasBuiltinSub: false;
  headers?: Record<string, string>;
};

const REQUEST_TIMEOUT_MS = 26_000;
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
  return { label: stream.quality || "HD", rank: 10 };
}

function resolveUpstreamUrl(baseUrl: string, value: string): string {
  try {
    return new URL(value, `${baseUrl}/`).toString();
  } catch {
    return "";
  }
}

function streamKind(stream: AnivexaStream, url: string): "hls" | "mp4" | null {
  const type = String(stream.type || "").toLowerCase();
  const lowerUrl = url.toLowerCase();
  if (type.includes("embed") || type.includes("iframe")) return null;
  if (type.includes("hls") || lowerUrl.includes(".m3u8") || lowerUrl.includes("/stream/")) {
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

/**
 * Fetch one provider lazily. The frontend already fans out one request per
 * source card, so this avoids making a slow provider block all other sources.
 */
export async function getAnivexaSources(
  site: string,
  anilistId: number | undefined,
  ep: number,
): Promise<NovaSource[]> {
  const provider = providerForSite(site);
  const baseUrl = anivexaBaseUrl();
  if (!provider || !baseUrl || !anilistId || !Number.isFinite(ep) || ep < 1) {
    if (provider && !baseUrl && !warnedMissingUrl) {
      warnedMissingUrl = true;
      console.warn("[Anivexa] ANIVEXA_API_URL is not configured; Anivexa sources are disabled");
    }
    return [];
  }

  const endpoint = `${baseUrl}/watch/${provider.provider}/${anilistId}/sub/${provider.provider}-${ep}`;
  try {
    const response = await fetch(endpoint, {
      headers: { Accept: "application/json", "User-Agent": "Nova-Anivexa-Adapter/1.0" },
      signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
    });
    if (!response.ok) return [];

    const payload = await response.json() as { streams?: AnivexaStream[] };
    const streams = Array.isArray(payload.streams) ? payload.streams : [];
    const seen = new Set<string>();
    const sources: NovaSource[] = [];

    for (const stream of streams) {
      const rawUrl = typeof stream.url === "string"
        ? resolveUpstreamUrl(baseUrl, stream.url.trim())
        : "";
      if (!rawUrl || seen.has(rawUrl)) continue;
      const kind = streamKind(stream, rawUrl);
      if (!kind) continue;
      seen.add(rawUrl);

      const referer = typeof stream.referer === "string" && stream.referer
        ? stream.referer
        : `${baseUrl}/`;
      const quality = qualityInfo(stream);
      const server = stream.server ? ` · ${stream.server}` : "";
      const directUrl = novaProxyUrl(kind, rawUrl, referer);

      sources.push({
        name: `${provider.label}${server} · ${quality.label}`,
        url: directUrl,
        quality: quality.label,
        qualityRank: quality.rank,
        site: provider.site,
        directUrl,
        directType: kind,
        isEmbed: false,
        hasBuiltinSub: false,
        headers: { Referer: referer },
      });
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
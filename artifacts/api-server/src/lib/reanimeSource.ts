import { encryptParam } from "./security.js";
import { probeHlsQuality, probeHlsVariants, probeHlsManifest } from "./consumet.js";
import { resolveReanimeEpisode } from "./reanimeCatalog.mjs";
import { runAp0dlGrab } from "./ap0dlReanime.mjs";

const FLIX_ORIGIN = "https://flixcloud.cc";
const DEFAULT_XOR_MASK = [157, 42, 241, 71, 179, 142, 92, 112, 166, 25, 228, 59, 216, 98, 15, 197];

type ReanimeSource = {
  name: string;
  url: string;
  quality: string;
  qualityRank: number;
  site: "reanime";
  directUrl: string;
  directType: "hls";
  isEmbed: false;
  hasBuiltinSub: false;
  headers: Record<string, string>;
};

export async function getReanimeSources(
  anilistId: number | undefined,
  ep: number,
  title = "",
  english: string | null = null,
  titleVariants: string[] = [],
): Promise<ReanimeSource[]> {
  if (!Number.isFinite(ep) || ep < 1) return [];

  try {
    const animeEpisode = await resolveReanimeEpisode({
      anilistId,
      episodeNumber: ep,
      titleCandidates: [title, english || "", ...titleVariants],
    });
    if (!animeEpisode) return [];

    const resolved = await runAp0dlGrab({
      watchUrl: animeEpisode.watchUrl,
      episodeNumber: animeEpisode.episodeNumber,
      timeoutMs: 70_000,
    });
    const streams = resolved.streams
      .filter(stream => stream.kind === "hls" && (stream.audio === "sub" || stream.audio === "raw"))
      .slice(0, 8);
    const batches = await Promise.allSettled(streams.map(async stream => {
      const flix = stream.flix;
      const masterUrl = typeof flix?.master_url === "string" ? flix.master_url.trim() : "";
      const wPayload = typeof flix?.w_payload === "string" ? flix.w_payload.trim() : "";
      if (!masterUrl || !wPayload) return [];

      let parsedMaster: URL;
      try {
        parsedMaster = new URL(masterUrl);
      } catch {
        return [];
      }
      if (
        parsedMaster.protocol !== "https:" ||
        !["enc-dec.app", "www.enc-dec.app"].includes(parsedMaster.hostname.toLowerCase()) ||
        !parsedMaster.pathname.includes("parse-flixcloud")
      ) return [];

      const masterReferer = `${parsedMaster.origin}/`;
      const variants = await probeHlsVariants(masterUrl, masterReferer);
      let usableVariants = variants;
      if (!usableVariants.length && await probeHlsManifest(masterUrl, masterReferer)) {
        const quality = await probeHlsQuality(masterUrl, masterReferer);
        usableVariants = [{ url: masterUrl, label: quality.label, rank: quality.rank }];
      }

      return usableVariants.map(variant => {
        let referer = "https://flixcloud.cc/";
        try {
          const host = new URL(variant.url).hostname.toLowerCase();
          if (host === "enc-dec.app" || host.endsWith(".enc-dec.app")) {
            referer = "https://enc-dec.app/";
          }
        } catch {
          return null;
        }
        const params = new URLSearchParams({
          url: encryptParam(variant.url),
          ref: encryptParam(referer),
        });
        const directUrl = `/api/anime/hls-proxy?${params.toString()}`;
        const quality = variant.label || (stream.quality ? `${stream.quality}p` : "Auto");
        const qualityRank = variant.rank || Number(stream.quality) || 0;
        return {
          name: `RE · ${stream.server || stream.title || "FlixCloud"} · ${quality}`,
          url: variant.url,
          quality,
          qualityRank,
          site: "reanime" as const,
          directUrl,
          directType: "hls" as const,
          isEmbed: false as const,
          hasBuiltinSub: false as const,
          headers: { Referer: referer },
        };
      }).filter((source): source is NonNullable<typeof source> => source !== null);
    }));

    const sources = batches.flatMap(result => result.status === "fulfilled" ? result.value : []);
    const unique = new Map<string, ReanimeSource>();
    for (const source of sources) {
      if (!unique.has(source.directUrl)) unique.set(source.directUrl, source);
    }
    return [...unique.values()].sort((a, b) => b.qualityRank - a.qualityRank);
  } catch (error) {
    console.warn("[Reanime] source resolution failed:", error instanceof Error ? error.message : "unknown error");
    return [];
  }
}

export async function checkReanimeEpisode(
  anilistId: number | undefined,
  ep: number,
  title = "",
  english: string | null = null,
  titleVariants: string[] = [],
): Promise<{ available: boolean; serverCount?: number }> {
  if (!Number.isFinite(ep) || ep < 1) return { available: false };
  try {
    const animeEpisode = await resolveReanimeEpisode({
      anilistId,
      episodeNumber: ep,
      titleCandidates: [title, english || "", ...titleVariants],
    });
    return animeEpisode
      ? { available: true, serverCount: 1 }
      : { available: false };
  } catch {
    return { available: false };
  }
}

let xorMaskCache: { value: Uint8Array; expiresAt: number } | null = null;

export async function getReanimeXorMask(): Promise<Uint8Array> {
  if (xorMaskCache && xorMaskCache.expiresAt > Date.now()) return xorMaskCache.value;
  let value = Uint8Array.from(DEFAULT_XOR_MASK);
  try {
    const response = await fetch(`${FLIX_ORIGIN}/artplayer-new/hls.js?v=104`, {
      headers: { Referer: `${FLIX_ORIGIN}/` },
      signal: AbortSignal.timeout(5_000),
    });
    if (response.ok) {
      const script = await response.text();
      const match = /for\(var f=\[([0-9]{1,3}(?:,[0-9]{1,3}){15})\]/.exec(script);
      const values = match?.[1]?.split(",").map(Number);
      if (values?.length === 16 && values.every(n => Number.isInteger(n) && n >= 0 && n <= 255)) {
        value = Uint8Array.from(values);
      }
    }
  } catch {
    // The current provider bundle may be unavailable; AP0DL's documented
    // default mask remains the compatibility fallback.
  }
  xorMaskCache = { value, expiresAt: Date.now() + 30 * 60_000 };
  return value;
}

export async function decodeReanimeImageSegment(raw: ArrayBuffer): Promise<Buffer | null> {
  const bytes = Buffer.from(raw);
  let offset = 0;
  if (
    bytes.length >= 12 &&
    bytes.toString("ascii", 0, 4) === "RIFF" &&
    bytes.toString("ascii", 8, 12) === "WEBP"
  ) {
    offset = 12;
  } else if (
    bytes.length >= 8 &&
    bytes.subarray(0, 8).equals(Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]))
  ) {
    offset = 8;
  } else {
    return null;
  }
  const mask = await getReanimeXorMask();
  if (!mask.length) return null;
  const decoded = Buffer.from(bytes.subarray(offset));
  for (let index = 0; index < decoded.length; index++) {
    decoded[index] ^= mask[index % mask.length]!;
  }
  return decoded;
}

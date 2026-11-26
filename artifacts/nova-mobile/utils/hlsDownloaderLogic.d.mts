export interface HlsVariant {
  uri: string;
  bandwidth: number;
  width: number;
  height: number;
  resolution: string;
  codecs: string;
}

export interface HlsSegment {
  uri: string;
  durationSec: number;
}

export interface ParsedMediaM3u8 {
  supported: boolean;
  reason: string;
  initUri?: string | null;
  segments: HlsSegment[];
  isVod: boolean;
  totalDurationSec: number;
}

export interface HlsManifestCandidate {
  url: string;
  headers?: Record<string, string>;
  mode: "direct" | "direct-unwrapped" | "vps-hls-proxy";
}

export function resolvePlaylistEntryUrl(value: string, baseUrl: string): string;
export function parseM3u8AttrList(attrString: string): Record<string, string>;
export function parseMasterM3u8(playlistText: string, baseUrl: string): { isMaster: boolean; variants: HlsVariant[] };
export function selectBestHlsVariant(variants: HlsVariant[], preferredQuality?: string): HlsVariant | null;
export function parseMediaM3u8(playlistText: string, baseUrl: string): ParsedMediaM3u8;
export function canPhoneFetchHlsDirectly(url: string): boolean;
export function buildHlsManifestCandidates(input: {
  manifestUrl?: string;
  fallbackUrl?: string;
  headers?: Record<string, string>;
  baseUrl?: string;
}): HlsManifestCandidate[];

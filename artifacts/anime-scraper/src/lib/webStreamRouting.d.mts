export declare const WEB_DIRECT_MODE_VERSION: string;
export declare const VPS_ONLY_SITES: Set<string>;

export interface WebStreamSourceInput {
  url?: string;
  directUrl?: string;
  rawUrl?: string;
  site?: string;
  directType?: string;
  deliveryMode?: string;
  isEmbed?: boolean;
  headers?: Record<string, string>;
}

export interface WebPlaybackPlan {
  primaryUrl: string;
  fallbackUrls: string[];
  isHls: boolean;
  isDirect: boolean;
  needsNoReferrer: boolean;
}

export declare function getWebDirectRequestHeaders(appToken?: string | null): Record<string, string>;
export declare function isOwnVpsProxyUrl(url: string): boolean;
export declare function isPreProxiedDirectVideoUrl(url: string): boolean;
export declare function stripDirectSegsParam(url: string): string;
export declare function isKawaiiCdnUrl(url: string): boolean;
export declare function isKawaiiHlsUrl(url: string, directType?: string): boolean;
export declare function isBrowserDirectMediaUrl(
  url: string,
  opts?: { site?: string; deliveryMode?: string },
): boolean;
export declare function isBrowserNonIframeMediaUrl(url: string): boolean;
export declare function buildWebPlaybackCandidates(src: WebStreamSourceInput): WebPlaybackPlan;

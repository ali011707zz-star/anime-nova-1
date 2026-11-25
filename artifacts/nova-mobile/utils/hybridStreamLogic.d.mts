export const DIRECT_PROBE_TIMEOUT_MS: number;
export const DIRECT_REBUFFER_TIMEOUT_MS: number;
export const DIRECT_STALL_TIMEOUT_MS: number;
export const DIRECT_STALL_RECOVERY_MS: number;

export interface ProxyFallbackDescriptor {
  url: string;
  contentType?: "hls" | "progressive";
  headers?: Record<string, string>;
}

export function isOwnVpsProxyUrl(url: string | null | undefined): boolean;
export function stripDirectSegsFlag(url: string | null | undefined): string;
export function inferContentType(
  url: string | null | undefined,
  hint?: string | null,
): "hls" | "progressive" | undefined;

export function buildVpsProxyFallbackUrl(input: {
  directUrl: string | null | undefined;
  existingProxyUrl?: string | null;
  referer?: string | null;
  baseUrl: string;
  contentType?: string | null;
  site?: string | null;
  deliveryMode?: string | null;
}): string | null;

export function buildHybridPlayerSource<T extends Record<string, any>>(
  input: T & {
    url: string;
    existingProxyUrl?: string | null;
    headers?: Record<string, string>;
    referer?: string | null;
    baseUrl: string;
    contentType?: "hls" | "progressive";
    site?: string;
    deliveryMode?: string;
  },
): T & {
  url: string;
  contentType?: "hls" | "progressive";
  headers?: Record<string, string>;
  proxyFallback?: ProxyFallbackDescriptor;
};

export function resolveHybridLoadTimeoutMs(input: {
  hasProxyFallback: boolean;
  hasStartedPlayback: boolean;
  animePlayback?: boolean;
}): number;

export function resolveHybridStallTimings(input: {
  hasProxyFallback: boolean;
}): {
  stallTimeoutMs: number;
  stallRecoveryMs: number;
};

export function applyProxyPromotion<T extends { url: string; contentType?: "hls" | "progressive"; headers?: Record<string, string>; proxyFallback?: ProxyFallbackDescriptor }>(
  source: T,
  promotedEntry: ProxyFallbackDescriptor | undefined,
): T;

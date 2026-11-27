export const DIRECT_PROBE_TIMEOUT_MS: number;
export const DIRECT_ASSIGN_GUARD_MS: number;
export const DIRECT_REBUFFER_TIMEOUT_MS: number;
export const DIRECT_STALL_TIMEOUT_MS: number;
export const DIRECT_STALL_RECOVERY_MS: number;
export const DIRECT_REBUFFER_BURST_COUNT: number;
export const DIRECT_REBUFFER_BURST_WINDOW_MS: number;
export const VPS_ONLY_SITES: Set<string>;

export interface ProxyFallbackDescriptor {
  url: string;
  contentType?: "hls" | "progressive";
  headers?: Record<string, string>;
}

export interface DirectInternalMp4DownloadResult {
  isDirect: boolean;
  url: string | null;
  headers: Record<string, string> | undefined;
  reason: string;
}

export function isOwnVpsProxyUrl(url: string | null | undefined): boolean;
export function isFirstPartyVpsUrl(targetUrl: string | null | undefined, baseUrl?: string): boolean;
export function stripDirectSegsFlag(url: string | null | undefined): string;
export function inferContentType(url: string | null | undefined, hint?: string): "hls" | "progressive" | undefined;
export function isFixedVpsPlaybackSource(input: {
  url: string | null | undefined;
  site?: string;
  deliveryMode?: string;
  contentType?: string;
  headers?: Record<string, string>;
  referer?: string | null;
  provider?: string;
}): boolean;
export function buildVpsProxyUrl(input: {
  url: string | null | undefined;
  referer?: string | null;
  baseUrl: string;
  contentType?: string;
  site?: string;
  deliveryMode?: string;
}): string;
export function buildVpsProxyFallbackUrl(input: {
  directUrl?: string | null;
  existingProxyUrl?: string | null;
  referer?: string | null;
  baseUrl?: string;
  contentType?: string;
  site?: string;
  deliveryMode?: string;
}): null;
export function buildDeterministicPlayerSource<T extends Record<string, any>>(
  input: T & {
    url: string;
    rawUrl?: string | null;
    existingProxyUrl?: string | null;
    headers?: Record<string, string>;
    referer?: string | null;
    baseUrl: string;
    contentType?: "hls" | "progressive";
    site?: string;
    deliveryMode?: string;
    provider?: string;
  },
): T & {
  url: string;
  contentType?: "hls" | "progressive";
  headers?: Record<string, string>;
  site?: string;
  proxyFallback?: undefined;
};
export function buildHybridPlayerSource<T extends Record<string, any>>(
  input: T & {
    url: string;
    rawUrl?: string | null;
    existingProxyUrl?: string | null;
    headers?: Record<string, string>;
    referer?: string | null;
    baseUrl: string;
    contentType?: "hls" | "progressive";
    site?: string;
    deliveryMode?: string;
    provider?: string;
  },
): T & {
  url: string;
  contentType?: "hls" | "progressive";
  headers?: Record<string, string>;
  site?: string;
  proxyFallback?: undefined;
};
export function resolveDirectInternalMp4Download(input?: {
  url?: string | null;
  rawUrl?: string | null;
  directUrl?: string | null;
  directType?: string | null;
  mediaType?: string | null;
  site?: string;
  provider?: string;
  deliveryMode?: string;
  headers?: Record<string, string>;
  baseUrl?: string;
}): DirectInternalMp4DownloadResult;
export function getHybridBufferProfile(): {
  preferredForwardBufferDuration: number;
  waitsToMinimizeStalling: boolean;
  minBufferForPlayback: number;
};
export function resolveHybridLoadTimeoutMs(input: {
  hasProxyFallback?: boolean;
  hasStartedPlayback: boolean;
  animePlayback: boolean;
}): number;
export function resolveHybridStallTimings(input?: {
  hasProxyFallback?: boolean;
}): {
  stallTimeoutMs: number;
  stallRecoveryMs: number;
};
export function shouldTriggerAssignGuard(input?: Record<string, unknown>): boolean;
export function shouldSkipStallNudge(input?: Record<string, unknown>): boolean;
export function shouldPromoteOnRebufferBurst(input?: Record<string, unknown>): boolean;
export function resolvePreservePosition(posSeconds: number): number;
export function applyProxyPromotion<T>(source: T, promotedEntry?: ProxyFallbackDescriptor): T;

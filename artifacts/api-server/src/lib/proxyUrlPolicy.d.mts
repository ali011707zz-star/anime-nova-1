export function readExpressDecodedQueryString(value: unknown): string;
export function sourceMediaUrl(value: unknown): string;
export function signedUrlExpiryMs(value: unknown): number | null;
export function hasExpiredSignedSource(sources: unknown[], now?: number): boolean;
export function isSourceCacheEntryStale(sources: unknown[], expiresAt: number, now?: number): boolean;

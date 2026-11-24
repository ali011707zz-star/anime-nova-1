export type DownloadMethodPref = "ask" | "internal" | "adm";

export const DOWNLOAD_METHOD_STORAGE_KEY: string;
export const ADM_PLAY_STORE_URL: string;
export const ADM_MARKET_URL: string;
export const ADM_PACKAGES: string[];

export function normalizeDownloadMethodPref(value: unknown): DownloadMethodPref;

export function isAdmAvailableOnDevice(params: {
  platformOs: string;
  tvMode: boolean;
}): boolean;

export function isSiteStaticallyEligibleForAdm(
  site?: string | null,
  provider?: string | null,
): boolean;

export interface AdmResolutionInput {
  url?: string | null;
  rawUrl?: string | null;
  directUrl?: string | null;
  directType?: string | null;
  mediaType?: string | null;
  site?: string | null;
  provider?: string | null;
  isEmbed?: boolean;
  headers?: Record<string, string> | null;
  apiBase?: string;
}

export interface AdmResolutionResult {
  eligible: boolean;
  directUrl: string | null;
  needsMfResolve: boolean;
  mfLink: string | null;
  reason: string;
  messageAr: string;
}

export function resolveAdmDirectMp4(input: AdmResolutionInput): AdmResolutionResult;

export function buildAdmFileName(params: {
  title?: string | null;
  ep?: number | string | null;
  quality?: string | null;
}): string;

export function buildAdmIntentUrls(directUrl: string, fileName?: string): string[];

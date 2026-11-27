export function isHlsDownloadCandidate(input: {
  url?: string;
  hlsManifestUrl?: string;
}): boolean;

export function shouldUseNativeDownloadManager(input: {
  platformOs: string;
  hasNativeModule: boolean;
  url: string;
  hlsManifestUrl?: string;
}): boolean;

export function canReconcileNativeRecordWithoutCancel(
  existingEntry: { nativeJobId?: number } | undefined | null,
  nativeRecord: { jobId: number } | undefined | null,
): boolean;

export function shouldFinalizeNativeDownload(input: {
  status: string;
  bytesWritten: number;
  totalBytes: number;
  diskBytes: number;
  stablePolls: number;
}): boolean;

export function pickQueuedEntriesToStart<T extends {
  status: string;
  queued?: boolean;
  nativeJobId?: number;
}>(entries: T[], maxConcurrent?: number): T[];
export function isDubbedStreamProxyUrl(rawUrl: string): boolean;
export function prepareDownloadRequestUrl(rawUrl: string): string;

import { requireOptionalNativeModule } from "expo-modules-core";

export type NativeDownloadStatus =
  | "pending"
  | "running"
  | "paused"
  | "successful"
  | "failed"
  | "unknown";

export type NativeDownloadRecord = {
  appId: string;
  jobId: number;
  status: NativeDownloadStatus;
  bytesWritten: number;
  totalBytes: number;
  localPath: string;
  metadataJson: string;
};

type NovaDownloadModule = {
  enqueue(
    appId: string,
    url: string,
    fileName: string,
    title: string,
    description: string,
    headersJson: string,
    metadataJson: string,
  ): Promise<{ jobId: number; localPath: string }>;
  list(): Promise<NativeDownloadRecord[]>;
  remove(appId: string): Promise<boolean>;
  forget(appId: string): Promise<boolean>;
};

const nativeModule = requireOptionalNativeModule<NovaDownloadModule>("NovaDownload");

export function isNativeDownloadAvailable(): boolean {
  return Boolean(nativeModule);
}

export async function enqueueNativeDownload(input: {
  appId: string;
  url: string;
  fileName: string;
  title: string;
  description: string;
  headers: Record<string, string>;
  metadata: Record<string, unknown>;
}): Promise<{ jobId: number; localPath: string }> {
  if (!nativeModule) {
    throw new Error("Native Android DownloadManager is unavailable");
  }
  return nativeModule.enqueue(
    input.appId,
    input.url,
    input.fileName,
    input.title,
    input.description,
    JSON.stringify(input.headers),
    JSON.stringify(input.metadata),
  );
}

export async function listNativeDownloads(): Promise<NativeDownloadRecord[]> {
  if (!nativeModule) return [];
  return nativeModule.list();
}

export async function removeNativeDownload(appId: string): Promise<boolean> {
  if (!nativeModule) return false;
  return nativeModule.remove(appId);
}

export async function forgetNativeDownload(appId: string): Promise<boolean> {
  if (!nativeModule) return false;
  return nativeModule.forget(appId);
}
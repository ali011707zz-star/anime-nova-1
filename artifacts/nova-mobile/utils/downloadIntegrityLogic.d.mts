export declare const MIN_VALID_VIDEO_BYTES: number;

export declare function looksLikeErrorTextPayload(bytes: Uint8Array | null | undefined): boolean;
export declare function isIsoBmffMp4Header(bytes: Uint8Array | null | undefined): boolean;
export declare function isMpegTsBuffer(bytes: Uint8Array | null | undefined): boolean;
export declare function isMatroskaHeader(bytes: Uint8Array | null | undefined): boolean;
export declare function stripFakeImagePrefixFromTsSegment(bytes: Uint8Array): Uint8Array;
export declare function detectHlsContainerExtension(
  firstBytes: Uint8Array | null | undefined,
  hasInitSegment?: boolean,
): ".mp4" | ".ts";
export declare function replaceVideoExtension(filePath: string, targetExt: ".mp4" | ".ts"): string;

export interface MediaValidationResult {
  ok: boolean;
  reason: string;
  messageAr: string;
}

export declare function validateCompletedMediaFile(opts: {
  fileSize: number;
  expectedTotalBytes?: number;
  headBytes?: Uint8Array | null;
}): MediaValidationResult;

export type DownloadButtonState = "idle" | "fetching" | "downloading" | "done" | "error";

export declare function reconcileDownloadButtonStates(opts: {
  prevStates: Record<string, DownloadButtonState>;
  activeStatusByKey: Record<string, string>;
  completedKeys: Set<string>;
  allKeys?: string[];
}): Record<string, DownloadButtonState>;

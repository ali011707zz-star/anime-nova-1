export interface MediaRequestHeaderOptions {
  baseHeaders?: Record<string, string>;
  referer?: string;
  range?: string;
  ifRange?: string;
  userAgent?: string;
}

export interface MediaResponseCallbacks {
  mp4Hint?: boolean;
  onFirstChunk?: (bytes: number) => void;
  onEnd?: (bytes: number) => void;
  onError?: (errorName: string, bytes: number) => void;
}

export function buildMediaRequestHeaders(options?: MediaRequestHeaderOptions): Record<string, string>;
export function copyMediaResponse(
  upstream: Response,
  res: unknown,
  options?: MediaResponseCallbacks,
): Promise<{
  status: number;
  contentType: string;
  contentRange: string | null;
  acceptRanges: string | null;
}>;

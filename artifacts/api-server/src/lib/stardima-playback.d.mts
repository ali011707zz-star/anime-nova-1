export type StardimaProbeResult = {
  ok: boolean;
  state: "verified" | "expired" | "dead" | "blocked" | "unsupported" | "unreachable";
  reason: string | null;
  status: number | null;
  finalUrl: string | null;
  type?: "hls" | "mp4";
  contentType?: string;
};
export function isSafeExternalHttpUrl(value: string): boolean;
export function isAllowedStardimaPageUrl(value: string): boolean;
export function fetchSafeExternalResponse(
  value: string,
  options?: {
    safeUrl?: (value: string) => boolean;
    fetchImpl?: typeof fetch;
    method?: string;
    headers?: Record<string, string>;
    timeoutMs?: number;
  },
): Promise<{ response: Response | null; url: string; error?: string }>;
export function probeStardimaMediaUrl(
  value: string,
  options?: {
    safeUrl?: (value: string) => boolean;
    fetchImpl?: typeof fetch;
    referer?: string;
    maxBytes?: number;
    timeoutMs?: number;
  },
): Promise<StardimaProbeResult>;

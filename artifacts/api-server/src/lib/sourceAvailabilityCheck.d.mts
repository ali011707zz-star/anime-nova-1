export type SourceQuality = {
  quality: "1080p" | "720p" | "480p" | "360p" | "unknown";
  qualityRank: number;
};

export function classifySourceQuality(source: any): SourceQuality;

export type HlsAvailabilityResult = {
  state: "available" | "dead" | "unknown";
  isMaster: boolean;
  variants: Array<{
    quality: "1080p" | "720p" | "480p" | "360p";
    qualityRank: number;
    state: "available" | "dead" | "unknown";
    url: string;
  }>;
};

export function inspectHlsAvailability(
  url: string,
  referer?: string,
  options?: {
    fetchImpl?: typeof fetch;
    timeoutMs?: number;
    maxVariantsPerQuality?: number;
  },
): Promise<HlsAvailabilityResult>;

export function probeDirectMediaAvailability(
  url: string,
  referer?: string,
  options?: { fetchImpl?: typeof fetch; timeoutMs?: number },
): Promise<"available" | "dead" | "unknown">;

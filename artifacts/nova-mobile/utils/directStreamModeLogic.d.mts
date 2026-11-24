export declare const DIRECT_STREAM_MIN_VERSION: readonly [number, number, number];
export declare function parseAppVersion(raw: string | null | undefined): [number, number, number] | null;
export declare function isDirectStreamVersion(appVersion: string | null | undefined): boolean;
export declare function buildDirectStreamHeaders(appVersion: string | null | undefined): Record<string, string>;
export declare function appendDirectStreamParams<T extends string | URLSearchParams>(
  urlOrParams: T,
  enabled: boolean,
): T;
export declare function classifyDeliveryBadge(
  url: string | null | undefined,
  deliveryModeHint?: string | null,
): {
  mode: "direct" | "client-extract" | "vps-vip" | "vps-proxy";
  shortLabel: string;
  badgeLabel: string;
};
export declare function unpackPackerBlocks(html: string): string[];
export declare function extractMediaUrlFromHtml(
  html: string,
  baseUrl?: string,
  hostKind?: "okru" | "standard",
): { url: string; type: "hls" | "mp4" } | null;
export function extractSingleHopRedirect(html: string, baseUrl?: string): string | null;

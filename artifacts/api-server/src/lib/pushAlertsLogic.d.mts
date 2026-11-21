export declare const DEFAULT_LEGACY_CHANNEL_ID: string;
export declare const UPGRADED_ALERT_CHANNEL_ID: string;
export declare function sanitizeChannelId(raw: unknown): string | null;
export declare function resolveDeviceChannelId(deviceChannelId: unknown, fallback?: string): string;
export declare function parseCartoonAlertKey(
  contentKey: unknown,
): { provider: "sp" | "carateen"; showId: string } | { provider: "sd2"; slug: string } | null;
export declare function detectNewEpisodesByWatermark(
  prevState: { knownIds?: string[]; maxNumber?: number; count?: number } | null,
  episodes: Array<{ epId?: string; id?: string; number?: number; title?: string; thumbnail?: string }>,
): {
  isSeed: boolean;
  newEpisodes: Array<{ key: string; epId: string | null; number: number; title: string; thumbnail: string }>;
  nextState: { knownIds: string[]; maxNumber: number; count: number };
};
export declare function buildFcmAndroidConfig(payload: {
  channelId?: unknown;
  sound?: unknown;
  tag?: unknown;
  richContent?: { image?: unknown };
}): Record<string, unknown>;

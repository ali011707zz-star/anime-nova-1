export type EpisodeAlertKind = "anime" | "dubbed-anime" | "dubbed" | "aw-dubbed" | "stardima";

export declare const ALLOWED_ALERT_KINDS: Set<string>;
export declare function normalizeAlertKind(kind: unknown): EpisodeAlertKind;
export declare function normalizeAlertContentKey(contentKind: unknown, contentKey: unknown): string;
export declare function makeAlertKey(contentKind: unknown, contentKey: unknown): string;
export declare function normalizeAlertTitle(raw: unknown): string;
export declare function matchesAlertRecord(
  alert: {
    content_kind?: string;
    contentKind?: string;
    content_key?: string;
    contentKey?: string;
    anime_id?: number | null;
    animeId?: number | null;
    title?: string | null;
    title_ar?: string | null;
    titleAr?: string | null;
    normalized_title?: string | null;
    normalizedTitle?: string | null;
  },
  event: {
    contentKind: string;
    contentKey?: string | null;
    animeId?: number | null;
    title?: string | null;
    titleAr?: string | null;
    english?: string | null;
    titles?: string[];
  },
): boolean;

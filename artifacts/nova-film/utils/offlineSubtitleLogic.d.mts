export interface HlsSubtitleRendition {
  url: string;
  lang: string;
  label: string;
  isDefault: boolean;
}

export interface ExternalSubtitleCandidate {
  lang: string;
  url: string;
  label: string;
}

export interface NormalizedOfflineSubtitleTrack {
  lang: string;
  label: string;
  uri: string;
}

export function normalizeSubLang(rawLang?: string | null, rawName?: string | null): string;
export function isLikelyArabicSubtitleUrl(url?: string | null): boolean;
export function extractInnerSubtitleUrl(rawUrl?: string | null): string;
export function extractSubtitleTracksFromHlsManifest(playlistText: string, baseUrl: string): HlsSubtitleRendition[];
export function collectExternalSubtitleCandidates(params: {
  subtitleUrl?: string;
  englishSubtitleUrl?: string;
  subtitleTracks?: Array<{ lang?: string; label?: string; url?: string }>;
  baseUrl?: string;
  site?: string;
}): ExternalSubtitleCandidate[];
export function subtitleTrackPathForVideo(videoPath: string, lang?: string): string;
export function normalizeOfflineSubtitleTracks(
  tracks?: Array<{ lang?: string; label?: string; localPath?: string; url?: string }>,
  fallbackSinglePath?: string,
): NormalizedOfflineSubtitleTrack[];
export function getAvailableOfflineSubLangs(
  tracks?: Array<{ lang?: string; label?: string; localPath?: string; url?: string }>,
  fallbackSinglePath?: string,
): string[];
export function selectOfflineSubtitleTrack(
  tracks?: Array<{ lang?: string; label?: string; localPath?: string; url?: string }>,
  fallbackSinglePath?: string,
  requestedLang?: "ar" | "en" | string,
  exactOnly?: boolean,
): NormalizedOfflineSubtitleTrack | null;

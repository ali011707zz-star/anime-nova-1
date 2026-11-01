export const SANIME_API_PREFIX: string;
export const SANIME_USER_AGENT: string;
export const SANIME_CDN_BASES: readonly string[];

export interface SanimeEpisodeVariant {
  family: "Video3";
  hdUrl: string;
  sdUrl: string;
}

export function sanimeEpisodeVariants(id: string | number, episode: number): SanimeEpisodeVariant[];

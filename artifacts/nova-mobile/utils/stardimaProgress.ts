export function getStardimaProgressKey(providerTitleId: string, episodeId: string | number): string {
  return `stardima-progress:${providerTitleId}:${episodeId}`;
}

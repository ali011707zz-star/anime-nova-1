export interface HlsManifestRewriteOptions {
  rewriteSegment: (absoluteUrl: string) => string;
  rewritePlaylist: (absoluteUrl: string) => string;
}

export function rewriteHlsManifest(
  manifest: string,
  baseUrl: string,
  options: HlsManifestRewriteOptions,
): string;

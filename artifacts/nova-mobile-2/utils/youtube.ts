/**
 * YouTube trailer helpers.
 *
 * YouTube's embedded player requires a meaningful referrer. Keep this derived
 * from the build/deployment domain so WebView requests work in both preview
 * and production without embedding credentials or server-specific state.
 */
export function getYoutubeReferer(): string {
  const configured = (
    process.env.EXPO_PUBLIC_DOMAIN ||
    process.env.EXPO_PUBLIC_API_URL ||
    "https://animenovaa.duckdns.org"
  ).trim();
  return configured.startsWith("http://") || configured.startsWith("https://")
    ? configured.replace(/\/+$/, "")
    : `https://${configured.replace(/\/+$/, "")}`;
}

export function getYoutubeEmbedUrl(videoId: string): string {
  return `https://www.youtube-nocookie.com/embed/${encodeURIComponent(videoId)}?autoplay=1&playsinline=1&rel=0&modestbranding=1&fs=1`;
}
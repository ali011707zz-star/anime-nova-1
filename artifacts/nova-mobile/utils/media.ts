import { getBaseUrl } from "./baseUrl";

export type MediaWithImages = {
  poster?: unknown;
  image?: unknown;
  cover?: unknown;
  thumbnail?: unknown;
  coverImage?: { large?: unknown; extraLarge?: unknown };
  images?: { jpg?: { large_image_url?: unknown; image_url?: unknown } };
};

export function proxyPosterUrl(raw: unknown): string {
  if (typeof raw !== "string") return "";
  const trimmed = raw.trim();
  if (!trimmed) return "";
  const base = getBaseUrl().replace(/\/+$/, "");
  if (trimmed.startsWith("/api/")) return `${base}${trimmed}`;
  if (!/^https?:\/\//i.test(trimmed)) return "";

  const tmdbMatch = trimmed.match(
    /^https?:\/\/image\.tmdb\.org\/t\/p\/(w\d+|original)\/([A-Za-z0-9_-]+\.(?:jpe?g|png|webp))(?:\?[^#]*)?(?:#.*)?$/i,
  );
  if (tmdbMatch) {
    const size = tmdbMatch[1] === "w500" || tmdbMatch[1] === "w300" ? "w342" : tmdbMatch[1];
    return `${base}/api/source-catalog/tmdb-poster/${size}/${tmdbMatch[2]}`;
  }
  if (/^https?:\/\/watch-\d+\.stardima\.com\.im\/storage\//i.test(trimmed)) {
    return `${base}/api/dubbed/sd2/poster?url=${encodeURIComponent(trimmed)}`;
  }
  if (/^https?:\/\/(?:(?:www\.)?carateen\.tv|cdn\.spacetoongo\.com)\//i.test(trimmed)) {
    return `${base}/api/dubbed/carateen/poster?url=${encodeURIComponent(trimmed)}`;
  }
  if (/^https?:\/\/(?:[a-z0-9-]+\.)*animezid\.org\//i.test(trimmed)) {
    return `${base}/api/dubbed/animezid/poster?url=${encodeURIComponent(trimmed)}`;
  }
  return trimmed;
}

function asUrl(value: unknown): string {
  return proxyPosterUrl(value);
}

/** Keep poster selection consistent across AniList and source catalogs. */
export function getPosterUri(item: MediaWithImages | null | undefined, fallback?: string): string {
  const candidates = [
    item?.poster,
    item?.image,
    item?.cover,
    item?.thumbnail,
    item?.coverImage?.extraLarge,
    item?.coverImage?.large,
    item?.images?.jpg?.large_image_url,
    item?.images?.jpg?.image_url,
    fallback,
  ];
  return candidates.map(asUrl).find(Boolean) || "";
}

/** Prefer the smaller AniList image on ten-foot screens. */
export function getTvPosterUri(item: MediaWithImages | null | undefined, fallback?: string): string {
  const candidates = [
    item?.poster,
    item?.image,
    item?.cover,
    item?.thumbnail,
    item?.coverImage?.large,
    item?.images?.jpg?.image_url,
    item?.images?.jpg?.large_image_url,
    item?.coverImage?.extraLarge,
    fallback,
  ];
  return candidates.map(asUrl).find(Boolean) || "";
}

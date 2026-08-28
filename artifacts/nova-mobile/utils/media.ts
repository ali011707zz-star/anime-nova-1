export type MediaWithImages = {
  poster?: unknown;
  image?: unknown;
  cover?: unknown;
  thumbnail?: unknown;
  coverImage?: { large?: unknown; extraLarge?: unknown };
  images?: { jpg?: { large_image_url?: unknown; image_url?: unknown } };
};

function asUrl(value: unknown): string {
  return typeof value === "string" && /^https?:\/\//i.test(value.trim()) ? value.trim() : "";
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

/** Prefer the smaller AniList image on ten-foot screens.
 * The TV rails are much wider than phone rails, but do not need the
 * extraLarge asset for a row of posters. Keep the original helper untouched
 * so the phone image selection remains exactly the same. */
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
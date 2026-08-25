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
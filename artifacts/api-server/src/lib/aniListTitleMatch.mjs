export function normalizeAniListTitle(value) {
  return String(value || "")
    .toLowerCase()
    .normalize("NFKD")
    .replace(/\p{Diacritic}/gu, "")
    .replace(/[^\p{Letter}\p{Number}]+/gu, " ")
    .trim();
}

export function findExactAniListTitleMatch(candidate, media) {
  const normalizedCandidate = normalizeAniListTitle(candidate);
  if (!normalizedCandidate || !Array.isArray(media)) return undefined;

  return media.find((item) =>
    [
      item?.title?.romaji,
      item?.title?.english,
      item?.title?.native,
      item?.title?.userPreferred,
    ]
      .filter((name) => typeof name === "string" && name.trim())
      .some((name) => normalizeAniListTitle(name) === normalizedCandidate),
  );
}

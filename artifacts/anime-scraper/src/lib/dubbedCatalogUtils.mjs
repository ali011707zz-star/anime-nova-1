const DUBBED_PATTERN = /(?:^|[^a-z0-9])(?:dub(?:bed)?|voice[ _-]?over)(?:$|[^a-z0-9])|دبلج|دبلجة|مدبلج/iu;
const TRANSLATED_PATTERN = /(?:^|[^a-z0-9])(?:subbed|subtitled|subtitles?|translated|translation|captioned)(?:$|[^a-z0-9])|ترجم|مترجم/iu;
const ANIMATION_PATTERN = /animation|animated|cartoons?|anime|كرتون|رسوم[\s_-]*متحركة|انيميشن|انمي/i;
const ANIMATION_TAXONOMY_KEYS = new Set([
  "category", "categories", "genre", "genres", "genreid", "genreids",
  "genre_ids", "tmdbgenreids", "tmdb_genre_ids", "tag", "tags",
  "family", "contentfamily", "contentfamilies", "content_family",
]);

function asList(value) {
  return Array.isArray(value) ? value : value == null ? [] : [value];
}

function normalizedTitle(value) {
  return String(value ?? "")
    .normalize("NFKC")
    .toLowerCase()
    .replace(/[\u200e\u200f\u202a-\u202e\u2066-\u2069]/g, "")
    .replace(/[\u064b-\u065f\u0670\u0640]/g, "")
    .replace(/[أإآٱ]/g, "ا")
    .replace(/ى/g, "ي")
    .replace(/[^\p{L}\p{N}]+/gu, " ")
    .trim();
}

function titleAliases(item) {
  return [
    item?.title,
    item?.titleAr,
    item?.title_ar,
    item?.title_en,
    item?.title_native,
    ...asList(item?.synonyms),
  ].map(normalizedTitle).filter(Boolean);
}

export function catalogBadge(item) {
  const classification = item?.classification || {};
  const labels = [
    ...asList(classification.localizationLabels),
    ...asList(classification.sourceTags),
    ...asList(classification.sourceCategories),
    ...asList(item?.localizationLabels),
    ...asList(item?.localization_labels),
    ...asList(item?.tags),
  ].map((label) => String(label).trim()).filter(Boolean);
  const dubbed = labels.some((label) => DUBBED_PATTERN.test(label));
  const translated = labels.some((label) => TRANSLATED_PATTERN.test(label));
  if (dubbed && translated) return "مدبلج ومترجم";
  if (dubbed) return "مدبلج";
  if (translated) return "مترجم";
  return undefined;
}

export function mergeCatalogRows(legacyRows, catalogRows) {
  const legacyAliases = new Set(legacyRows.flatMap((row) => titleAliases(row?.item)));
  const uniqueCatalogRows = catalogRows.filter((row) => {
    if (row?.item?.media_type === "movie") return true;
    return !titleAliases(row?.item).some((alias) => legacyAliases.has(alias));
  });

  const merged = [];
  let catalogIndex = 0;
  for (let index = 0; index < legacyRows.length; index += 1) {
    merged.push(legacyRows[index]);
    if ((index + 1) % 2 === 0 && catalogIndex < uniqueCatalogRows.length) {
      merged.push(uniqueCatalogRows[catalogIndex++]);
    }
  }
  merged.push(...uniqueCatalogRows.slice(catalogIndex));
  return merged;
}

function collectTaxonomyLabels(value, output, depth = 0) {
  if (depth > 4 || value == null) return;
  if (typeof value === "string" || typeof value === "number") {
    output.push(String(value));
    return;
  }
  if (Array.isArray(value)) {
    for (const entry of value) collectTaxonomyLabels(entry, output, depth + 1);
    return;
  }
  if (typeof value !== "object") return;
  for (const key of ["name", "label", "title", "value", "id"]) {
    if (key in value) collectTaxonomyLabels(value[key], output, depth + 1);
  }
}

function isVerifiedArabicToons(item) {
  const seasons = Array.isArray(item?.seasons) ? item.seasons : [];
  return seasons.some((season) => {
    const raw = String(season?.arabicToonsId || "").trim();
    try {
      const url = new URL(raw);
      return ["arabic-toons.com", "www.arabic-toons.com"].includes(url.hostname.toLowerCase()) &&
        /-anime-streaming\.html$/i.test(url.pathname);
    } catch {
      return false;
    }
  });
}

export function isLegacyCartoonEntry(item) {
  if (!item || typeof item !== "object") return false;
  if (isVerifiedArabicToons(item)) return true;

  const sources = [item, item.metadata, item.tmdb, item.media, item.classification]
    .filter((value) => value && typeof value === "object");
  const labels = [];
  for (const source of sources) {
    for (const [key, value] of Object.entries(source)) {
      const normalizedKey = key.toLowerCase().replace(/[^a-z0-9_]/g, "");
      if (ANIMATION_TAXONOMY_KEYS.has(normalizedKey)) {
        collectTaxonomyLabels(value, labels);
      }
    }
  }
  return labels.some((label) => {
    const normalized = String(label).trim().toLowerCase();
    return normalized === "16" || ANIMATION_PATTERN.test(normalized);
  });
}

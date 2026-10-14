const DUBBED_PATTERN = /dub|voice.?over|دبل|مدبلج|فصحى/i;
const TRANSLATED_PATTERN = /sub|subtitle|translat|caption|ترجم|مترجم/i;
const ANIMATION_PATTERN = /animation|animated|cartoons?|anime|كرتون|رسوم[\s_-]*متحركة|انيميشن|انمي/i;
const ANIMATION_TAXONOMY_KEYS = new Set([
  "category",
  "categories",
  "genre",
  "genres",
  "genreid",
  "genreids",
  "genre_ids",
  "tmdbgenreids",
  "tmdb_genre_ids",
  "tag",
  "tags",
  "family",
  "contentfamily",
  "contentfamilies",
  "content_family",
]);

function asList(value) {
  if (Array.isArray(value)) return value;
  return value == null ? [] : [value];
}

function labelsFor(item) {
  return [
    ...asList(item?.classification?.localizationLabels),
    ...asList(item?.classification?.sourceTags),
    ...asList(item?.classification?.sourceCategories),
    ...asList(item?.tags),
  ].map((label) => String(label).trim()).filter(Boolean);
}

export function normalizedLocalizationLabel(label) {
  const dubbed = DUBBED_PATTERN.test(label);
  const translated = TRANSLATED_PATTERN.test(label);
  if (dubbed && translated) return /فصحى/i.test(label) ? "مدبلج فصحى ومترجم" : "مدبلج ومترجم";
  if (dubbed) return /فصحى/i.test(label) ? "مدبلج فصحى" : "مدبلج";
  if (translated) return "مترجم";
  return undefined;
}

export function catalogBadge(item, section) {
  const labels = labelsFor(item);
  const dubbedLabels = labels.filter((label) => DUBBED_PATTERN.test(label));
  const translated = labels.some((label) => TRANSLATED_PATTERN.test(label));
  if (dubbedLabels.length && translated) {
    return dubbedLabels.some((label) => /فصحى/i.test(label))
      ? "مدبلج فصحى ومترجم"
      : "مدبلج ومترجم";
  }
  if (dubbedLabels.length) {
    return dubbedLabels.some((label) => /فصحى/i.test(label)) ? "مدبلج فصحى" : "مدبلج";
  }
  return translated ? "مترجم" : undefined;
}

export function belongsInSection(item, section) {
  const classification = item?.classification;
  const families = (classification?.contentFamilies || [])
    .map((value) => String(value).trim().toLowerCase());
  const labels = labelsFor(item);
  const localized = labels.some((label) =>
    DUBBED_PATTERN.test(label) || TRANSLATED_PATTERN.test(label),
  );
  const reviewed = classification?.status === "manually_reviewed";
  const detailVerified = classification?.status === "classified" &&
    classification?.familyEvidence === "title_detail" &&
    typeof classification?.detailCheckedAt === "string" &&
    classification.detailCheckedAt.length > 0;
  if (!reviewed && !detailVerified) return false;
  if (!localized) return false;

  if (section === "animation") {
    return families.includes("anime");
  }
  if (section === "cartoon") {
    return families.includes("animation");
  }
  return false;
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

function isArabicToonsSeries(item) {
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

/**
 * Legacy dubbed feeds can also contain live-action films and series. Keep only
 * records with explicit animation taxonomy; Arabic-Toons' dedicated cartoon
 * episode-page URL is itself a trusted family signal.
 */
export function isLegacyCartoonEntry(item) {
  if (!item || typeof item !== "object") return false;
  if (isArabicToonsSeries(item)) return true;

  const sources = [item, item.metadata, item.tmdb, item.media, item.classification].filter(
    (value) => value && typeof value === "object",
  );
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

const DUBBED_PATTERN = /(?:^|[^a-z0-9])(?:dub(?:bed)?|voice[ _-]?over)(?:$|[^a-z0-9])|دبلج|دبلجة|مدبلج/iu;
const TRANSLATED_PATTERN = /(?:^|[^a-z0-9])(?:subbed|subtitled|subtitles?|translated|translation|captioned)(?:$|[^a-z0-9])|ترجم|مترجم/iu;
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
  const classification = item?.classification || {};
  return [
    ...asList(classification.localizationLabels),
    ...asList(classification.sourceTags),
    ...asList(classification.sourceCategories),
    ...asList(item?.localizationLabels),
    ...asList(item?.localization_labels),
    ...asList(item?.tags),
  ]
    .map((label) => String(label).trim())
    .filter((label) => label && (DUBBED_PATTERN.test(label) || TRANSLATED_PATTERN.test(label)));
}

export function normalizedLocalizationLabel(label) {
  const value = String(label ?? "");
  const dubbed = DUBBED_PATTERN.test(value);
  const translated = TRANSLATED_PATTERN.test(value);
  if (dubbed && translated) return "مدبلج ومترجم";
  if (dubbed) return "مدبلج";
  if (translated) return "مترجم";
  return undefined;
}

export function catalogBadge(item, _section) {
  const labels = labelsFor(item);
  const dubbed = labels.some((label) => DUBBED_PATTERN.test(label));
  const translated = labels.some((label) => TRANSLATED_PATTERN.test(label));
  if (dubbed && translated) return "مدبلج ومترجم";
  if (dubbed) return "مدبلج";
  return translated ? "مترجم" : undefined;
}

/**
 * A legacy card gets a language badge only when its playback record carries
 * provenance from a known dubbed feed. The AW feed marks rows individually
 * from `content_type=dubbed` or the dedicated dubbed_anim_links table; the
 * Arabic-Toons route is accepted only for its verified episode-page URL.
 */
export function trustedLegacyBadge(item, feed) {
  const explicit = catalogBadge(item);
  if (explicit) return explicit;
  if (feed === "animewitcher" && item?.dubbedConfirmed === true) return "مدبلج";
  if (feed === "arabic-toons" && isArabicToonsSeries(item)) return "مدبلج";
  return undefined;
}

function normalizedFamilyLabel(value) {
  return String(value ?? "")
    .normalize("NFKC")
    .toLowerCase()
    .replace(/[\u064b-\u065f\u0670\u0640]/g, "")
    .replace(/[أإآٱ]/g, "ا")
    .replace(/ى/g, "ي")
    .replace(/[^\p{L}\p{N}]+/gu, " ")
    .trim();
}

function familiesFromLabels(values) {
  const families = new Set();
  for (const value of values) {
    const label = normalizedFamilyLabel(value);
    if (["anime", "انمي", "انيمي", "رسوم متحركة يابانية"].includes(label)) {
      families.add("anime");
    } else if (
      ["cartoon", "cartoons", "animation", "animated", "كرتون", "رسوم متحركة", "انيميشن"].includes(label)
    ) {
      families.add("animation");
    }
  }
  return families;
}

function hasTrustedFamilyEvidence(classification, family) {
  if (classification?.status === "manually_reviewed") return true;
  if (classification?.status !== "classified") return false;
  const evidence = String(classification.familyEvidence || "");
  if (evidence === "title_detail" && classification.detailCheckedAt) return true;
  if (evidence === "title_detail_taxonomy" && classification.detailCheckedAt) {
    return familiesFromLabels(classification.sourceTags).has(family);
  }
  if (evidence === "source_category") {
    return familiesFromLabels(classification.sourceCategories).has(family);
  }
  return false;
}

export function belongsInSection(item, section) {
  const classification = item?.classification;
  const families = (classification?.contentFamilies || [])
    .map((value) => String(value).trim().toLowerCase());
  const labels = labelsFor(item);
  const localized = labels.some((label) =>
    DUBBED_PATTERN.test(label) || TRANSLATED_PATTERN.test(label),
  );
  if (!localized) return false;

  if (section === "animation") {
    return families.includes("anime") && hasTrustedFamilyEvidence(classification, "anime");
  }
  if (section === "cartoon") {
    return families.includes("animation") && hasTrustedFamilyEvidence(classification, "animation");
  }
  return false;
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
    item?.title_ar,
    item?.titleAr,
    item?.title_en,
    item?.title_native,
    ...asList(item?.synonyms),
  ].map(normalizedTitle).filter(Boolean);
}

/**
 * Keep the existing playable legacy card when the same series is also in the
 * StarDima catalog, and interleave distinct StarDima titles near the top.
 * Matching is exact across verified aliases only; no fuzzy/title-only guesses.
 */
export function mergeCatalogRows(legacyRows, catalogRows) {
  const legacyAliases = new Set(legacyRows.flatMap((row) => titleAliases(row?.item)));
  const uniqueCatalogRows = catalogRows.filter((row) => {
    const mediaType = row?.item?.media_type;
    if (mediaType === "movie") return true;
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

export function mergeDubbedCatalogFeedTitles(current, incoming) {
  const merged = current.slice();
  const indexByKey = new Map(
    merged.map((item, index) => [
      String(item?.id || item?.provider_title_id || ""),
      index,
    ]),
  );

  for (const item of incoming) {
    const key = String(item?.id || item?.provider_title_id || "");
    const existingIndex = indexByKey.get(key);
    if (existingIndex === undefined) {
      indexByKey.set(key, merged.length);
      merged.push(item);
      continue;
    }

    const existing = merged[existingIndex];
    merged[existingIndex] = {
      ...existing,
      ...item,
      poster_url: item?.poster_url || existing?.poster_url || null,
      backdrop_url: item?.backdrop_url || existing?.backdrop_url || null,
    };
  }

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

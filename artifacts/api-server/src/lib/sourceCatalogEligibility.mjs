const DUBBED_PATTERN = /(?:^|[^a-z0-9])(?:dub(?:bed)?|voice[ _-]?over)(?:$|[^a-z0-9])|دبلج|دبلجة|مدبلج/iu;
const TRANSLATED_PATTERN = /(?:^|[^a-z0-9])(?:subbed|subtitled|subtitles?|translated|translation|captioned)(?:$|[^a-z0-9])|ترجم|مترجم/iu;

function asList(value) {
  return Array.isArray(value) ? value : value == null ? [] : [value];
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
  for (const value of asList(values)) {
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

export function sourceCatalogBadge(item) {
  const classification = item?.classification || {};
  const labels = [
    ...asList(classification.localizationLabels),
    ...asList(classification.sourceTags),
    ...asList(classification.sourceCategories),
    ...asList(item?.tags),
  ].map((value) => String(value).trim()).filter(Boolean);
  const dubbed = labels.some((value) => DUBBED_PATTERN.test(value));
  const translated = labels.some((value) => TRANSLATED_PATTERN.test(value));
  if (dubbed && translated) return "مدبلج ومترجم";
  if (dubbed) return "مدبلج";
  if (translated) return "مترجم";
  return undefined;
}

export function sourceCatalogTitleBelongsInSection(item, section) {
  const classification = item?.classification;
  const family = section === "animation" ? "anime" : section === "cartoon" ? "animation" : "";
  if (!classification || !family) return false;
  if (!(classification.contentFamilies || []).includes(family)) return false;
  if (!sourceCatalogBadge(item)) return false;

  if (classification.status === "manually_reviewed") return true;
  if (classification.status !== "classified") return false;

  if (classification.familyEvidence === "title_detail" && classification.detailCheckedAt) {
    return true;
  }
  if (
    classification.familyEvidence === "title_detail_taxonomy" &&
    classification.detailCheckedAt
  ) {
    return familiesFromLabels(classification.sourceTags).has(family);
  }
  if (classification.familyEvidence === "source_category") {
    return familiesFromLabels(classification.sourceCategories).has(family);
  }
  return false;
}

export function explicitContentFamilies(labels) {
  return [...familiesFromLabels(labels)].sort();
}

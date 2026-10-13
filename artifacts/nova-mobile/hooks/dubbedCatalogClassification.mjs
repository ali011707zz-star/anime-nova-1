const DUBBED_PATTERN = /dub|voice.?over|دبل|مدبلج|فصحى/i;
const TRANSLATED_PATTERN = /sub|subtitle|translat|caption|ترجم|مترجم/i;

function labelsFor(item) {
  return [
    ...(item?.classification?.localizationLabels || []),
    ...(item?.classification?.sourceTags || []),
    ...(item?.tags || []),
  ].map((label) => String(label).trim()).filter(Boolean);
}

export function normalizedLocalizationLabel(label) {
  if (DUBBED_PATTERN.test(label)) {
    return /فصحى/i.test(label) ? "مدبلج فصحى" : "مدبلج";
  }
  if (TRANSLATED_PATTERN.test(label)) return "مترجم";
  return undefined;
}

export function catalogBadge(item, section) {
  const labels = labelsFor(item);
  const expected = section === "cartoon" ? DUBBED_PATTERN : TRANSLATED_PATTERN;
  const match = labels.find((label) => expected.test(label));
  return match ? normalizedLocalizationLabel(match) : undefined;
}

export function belongsInSection(item, section) {
  const families = (item?.classification?.contentFamilies || [])
    .map((value) => String(value).trim().toLowerCase());
  const labels = labelsFor(item);
  const dubbed = labels.some((label) => DUBBED_PATTERN.test(label));
  const translated = labels.some((label) => TRANSLATED_PATTERN.test(label));

  if (section === "animation") {
    return families.includes("anime") && translated;
  }
  if (section === "cartoon") {
    return families.includes("animation") && dubbed;
  }
  return false;
}

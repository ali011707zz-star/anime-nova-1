import {
  explicitContentFamilies,
  sourceCatalogBadge,
} from "../lib/sourceCatalogEligibility.mjs";

function list(value) {
  return Array.isArray(value) ? value.map((entry) => String(entry).trim()).filter(Boolean) : [];
}

function object(value) {
  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
}

/**
 * Produce a narrowly scoped metadata-only repair. This never infers from a
 * title/poster/channel, and never changes catalog fields or episode records.
 */
export function planStardimaClassificationRepair(row) {
  if (!row || row.provider !== "stardima_catalog") return null;
  const metadata = object(row.provider_metadata);
  const previous = object(metadata.classification);
  const sourceCategories = [
    ...list(previous.source_categories),
    ...list(row.genres),
  ];
  const sourceTags = [
    ...list(previous.source_tags),
    ...list(row.tags),
  ];
  const currentFamilies = list(previous.content_families);
  const categoryFamilies = explicitContentFamilies(sourceCategories);
  const detailFamilies = explicitContentFamilies(sourceTags);
  const classification = { ...previous };
  let changed = false;

  if (!previous.family_evidence && currentFamilies.some((family) => categoryFamilies.includes(family))) {
    classification.family_evidence = "source_category";
    changed = true;
  }

  const detailChecked = typeof previous.detail_checked_at === "string" &&
    previous.detail_checked_at.length > 0;
  const hasDetailProvenance = previous.source === "stardima_detail_api" && detailChecked;
  const hasExplicitLanguage = !!sourceCatalogBadge({
    classification: {
      localizationLabels: list(previous.localization_labels),
      sourceTags,
    },
  });
  const needsReview = previous.status === "needs_review" || previous.status === "source_labeled";

  if (
    hasDetailProvenance &&
    needsReview &&
    hasExplicitLanguage &&
    detailFamilies.length === 1
  ) {
    classification.status = "classified";
    classification.content_families = detailFamilies;
    classification.family_evidence = "title_detail_taxonomy";
    changed = true;
  }

  if (!changed) return null;
  return {
    provider_metadata: {
      ...metadata,
      classification,
    },
    changes: {
      status: classification.status || null,
      contentFamilies: list(classification.content_families),
      familyEvidence: classification.family_evidence || null,
    },
  };
}

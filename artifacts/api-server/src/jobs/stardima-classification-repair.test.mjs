import assert from "node:assert/strict";
import test from "node:test";
import { planStardimaClassificationRepair } from "./stardima-classification-repair.mjs";

test("repair uses explicit StarDima detail taxonomy and language tags without guessing from the title", () => {
  const row = {
    provider: "stardima_catalog",
    title: "أطلانتس∶ الإمبراطورية المفقودة",
    provider_metadata: {
      page_url: "https://example.test/title/1",
      classification: {
        version: 1,
        status: "needs_review",
        content_families: [],
        family_evidence: null,
        source: "stardima_detail_api",
        detail_checked_at: "2026-10-13T14:43:39.868Z",
        source_categories: [],
        source_tags: ["cartoon", "مدبلج مصري"],
        localization_labels: [],
      },
    },
    tags: ["cartoon", "مدبلج مصري"],
    genres: [],
  };
  const patch = planStardimaClassificationRepair(row);
  assert.equal(patch.changes.status, "classified");
  assert.deepEqual(patch.changes.contentFamilies, ["animation"]);
  assert.equal(patch.changes.familyEvidence, "title_detail_taxonomy");
  assert.equal(patch.provider_metadata.page_url, row.provider_metadata.page_url);
  assert.equal(row.provider_metadata.classification.status, "needs_review");
});

test("repair fills missing evidence only when an existing family agrees with an explicit source category", () => {
  const patch = planStardimaClassificationRepair({
    provider: "stardima_catalog",
    provider_metadata: {
      classification: {
        status: "classified",
        content_families: ["animation"],
        source_categories: ["كرتون"],
        source_tags: [],
      },
    },
    genres: ["كرتون"],
    tags: [],
  });
  assert.equal(patch.changes.status, "classified");
  assert.deepEqual(patch.changes.contentFamilies, ["animation"]);
  assert.equal(patch.changes.familyEvidence, "source_category");
});

test("repair does not infer family or language from a title, channel, or generic genre", () => {
  assert.equal(planStardimaClassificationRepair({
    provider: "stardima_catalog",
    title: "مدبلج — سبيستون",
    genres: ["سبيستون", "مغامرات"],
    tags: ["MBC3"],
    provider_metadata: {
      classification: {
        status: "needs_review",
        source: "stardima_detail_api",
        detail_checked_at: "2026-10-13T14:43:39.868Z",
        content_families: [],
        source_categories: ["سبيستون", "مغامرات"],
        source_tags: ["MBC3"],
        localization_labels: [],
      },
    },
  }), null);
});

test("detail taxonomy repair requires a completed detail check and one unambiguous family", () => {
  const base = {
    provider: "stardima_catalog",
    genres: [],
    tags: ["anime", "مدبلج"],
    provider_metadata: {
      classification: {
        status: "needs_review",
        source: "stardima_detail_api",
        content_families: [],
        source_categories: [],
        source_tags: ["anime", "مدبلج"],
        localization_labels: [],
      },
    },
  };
  assert.equal(planStardimaClassificationRepair(base), null);
  assert.equal(planStardimaClassificationRepair({
    ...base,
    provider_metadata: {
      classification: {
        ...base.provider_metadata.classification,
        detail_checked_at: "2026-10-13T14:43:39.868Z",
        source_tags: ["anime", "cartoon", "مدبلج"],
      },
    },
  }), null);
});

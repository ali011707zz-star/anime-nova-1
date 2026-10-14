import assert from "node:assert/strict";
import test from "node:test";
import { classificationTitlePatch } from "./stardima-catalog-client.mjs";

test("list categories stay review-only until the title detail confirms the content family", () => {
  const title = {
    genres: ["Cartoon"],
    tags: ["مدبلج"],
    provider_metadata: {},
  };

  const fromList = classificationTitlePatch(title);
  const listClassification = fromList.provider_metadata.classification;
  assert.deepEqual(listClassification.content_families, []);
  assert.equal(listClassification.status, "source_labeled");
  assert.equal(listClassification.family_evidence, "catalog_list");

  const fromDetail = classificationTitlePatch(title, { categories: ["Cartoon"] }, true);
  const detailClassification = fromDetail.provider_metadata.classification;
  assert.deepEqual(detailClassification.content_families, ["animation"]);
  assert.equal(detailClassification.status, "classified");
  assert.equal(detailClassification.family_evidence, "title_detail");
});

test("a list refresh preserves already detail-verified family data", () => {
  const title = {
    genres: ["Cartoon"],
    provider_metadata: {
      classification: {
        version: 1,
        status: "classified",
        family_evidence: "title_detail",
        content_families: ["animation"],
        detail_checked_at: "2026-10-14T00:00:00.000Z",
      },
    },
  };
  const refreshed = classificationTitlePatch(title);
  const classification = refreshed.provider_metadata.classification;
  assert.deepEqual(classification.content_families, ["animation"]);
  assert.equal(classification.family_evidence, "title_detail");
  assert.equal(classification.detail_checked_at, "2026-10-14T00:00:00.000Z");
});

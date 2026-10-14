import assert from "node:assert/strict";
import test from "node:test";
import {
  sourceCatalogBadge,
  sourceCatalogTitleBelongsInSection,
} from "./sourceCatalogEligibility.mjs";

const detail = (overrides = {}) => ({
  status: "classified",
  contentFamilies: ["animation"],
  familyEvidence: "title_detail_taxonomy",
  detailCheckedAt: "2026-10-13T14:43:39.868Z",
  sourceTags: ["cartoon", "مدبلج مصري"],
  sourceCategories: [],
  localizationLabels: [],
  ...overrides,
});

test("a real StarDima detail record with explicit cartoon and dubbing tags is eligible as dubbed only", () => {
  const atlantis = {
    title: "أطلانتس∶ الإمبراطورية المفقودة",
    media_type: "movie",
    tags: ["cartoon", "مدبلج مصري"],
    classification: detail(),
  };
  assert.equal(sourceCatalogBadge(atlantis), "مدبلج");
  assert.equal(sourceCatalogTitleBelongsInSection(atlantis, "cartoon"), true);
  assert.equal(sourceCatalogTitleBelongsInSection(atlantis, "animation"), false);
});

test("a real translated-only catalog record retains its language label but is not admitted without family evidence", () => {
  const ben10 = {
    title: "بن 10 : أومنيفرس",
    tags: ["ben 10 omniverse مترجم"],
    classification: detail({
      status: "needs_review",
      contentFamilies: [],
      familyEvidence: "",
      sourceTags: ["ben 10", "ben 10 omniverse مترجم"],
    }),
  };
  assert.equal(sourceCatalogBadge(ben10), "مترجم");
  assert.equal(sourceCatalogTitleBelongsInSection(ben10, "cartoon"), false);
});

test("a combined label is shown only when source metadata explicitly contains both signals", () => {
  const combined = {
    classification: detail({
      localizationLabels: ["مدبلج"],
      sourceTags: ["anime", "مترجم"],
    }),
  };
  assert.equal(sourceCatalogBadge(combined), "مدبلج ومترجم");
});

test("generic channels, genres, and title text never produce a language badge", () => {
  const unknown = {
    title: "100 % ذئب مدبلج",
    tags: ["سبيستون", "مغامرات", "loup garou"],
    classification: detail({
      status: "needs_review",
      contentFamilies: [],
      familyEvidence: "",
      sourceTags: ["loup garou", "loup", "caniche"],
      sourceCategories: ["سبيستون", "مغامرات"],
      localizationLabels: [],
    }),
  };
  assert.equal(sourceCatalogBadge(unknown), undefined);
  assert.equal(sourceCatalogTitleBelongsInSection(unknown, "cartoon"), false);
});

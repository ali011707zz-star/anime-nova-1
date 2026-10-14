import assert from "node:assert/strict";
import test from "node:test";
import {
  belongsInSection,
  catalogBadge,
  isLegacyCartoonEntry,
} from "./dubbedCatalogClassification.mjs";

test("a detail-verified dubbed anime stays in the animation feed, not dubbed cartoons", () => {
  const title = {
    classification: {
      status: "classified",
      familyEvidence: "title_detail",
      detailCheckedAt: "2026-10-14T00:00:00.000Z",
      contentFamilies: ["anime"],
      localizationLabels: ["مدبلج"],
    },
  };
  assert.equal(belongsInSection(title, "animation"), true);
  assert.equal(belongsInSection(title, "cartoon"), false);
  assert.equal(catalogBadge(title, "animation"), "مدبلج");
});

test("a detail-verified dubbed cartoon stays in the cartoon feed", () => {
  const title = {
    classification: {
      status: "classified",
      familyEvidence: "title_detail",
      detailCheckedAt: "2026-10-14T00:00:00.000Z",
      contentFamilies: ["animation"],
      localizationLabels: ["مدبلج فصحى"],
    },
  };
  assert.equal(belongsInSection(title, "cartoon"), true);
  assert.equal(belongsInSection(title, "animation"), false);
  assert.equal(catalogBadge(title, "cartoon"), "مدبلج فصحى");
});

test("unverified family or missing localization stays out of the official feeds", () => {
  assert.equal(belongsInSection({ title: "Unknown" }, "cartoon"), false);
  assert.equal(belongsInSection({
    classification: {
      status: "classified",
      familyEvidence: "title_detail",
      detailCheckedAt: "2026-10-14T00:00:00.000Z",
      contentFamilies: ["animation"],
      localizationLabels: [],
    },
  }, "cartoon"), false);
  assert.equal(belongsInSection({
    classification: {
      status: "needs_review",
      contentFamilies: ["animation"],
      localizationLabels: ["مدبلج"],
    },
  }, "cartoon"), false);
  assert.equal(belongsInSection({
    classification: {
      status: "classified",
      familyEvidence: "title_detail",
      detailCheckedAt: "2026-10-14T00:00:00.000Z",
      contentFamilies: ["animation"],
      localizationLabels: ["مترجم"],
    },
  }, "cartoon"), true);
  assert.equal(catalogBadge({
    classification: {
      status: "classified",
      familyEvidence: "title_detail",
      detailCheckedAt: "2026-10-14T00:00:00.000Z",
      contentFamilies: ["animation"],
      localizationLabels: ["مترجم"],
    },
  }, "cartoon"), "مترجم");
});

test("manual review can confirm a dubbed title without a detail timestamp", () => {
  assert.equal(belongsInSection({
    classification: {
      status: "manually_reviewed",
      contentFamilies: ["animation"],
      localizationLabels: ["مدبلج"],
    },
  }, "cartoon"), true);
});

test("a movie is allowed only when its source-confirmed family is animation and its audio is dubbed", () => {
  const animatedMovie = {
    media_type: "movie",
    classification: {
      status: "classified",
      familyEvidence: "title_detail",
      detailCheckedAt: "2026-10-14T00:00:00.000Z",
      contentFamilies: ["animation"],
      localizationLabels: ["مدبلج"],
    },
  };
  const uncertainLiveActionMovie = {
    media_type: "movie",
    classification: {
      status: "source_labeled",
      familyEvidence: "catalog_list",
      contentFamilies: [],
      localizationLabels: ["مدبلج"],
    },
  };
  assert.equal(belongsInSection(animatedMovie, "cartoon"), true);
  assert.equal(belongsInSection(uncertainLiveActionMovie, "cartoon"), false);
});

test("a title with both dubbing and subtitles receives an explicit combined badge", () => {
  const title = {
    classification: {
      status: "manually_reviewed",
      contentFamilies: ["animation"],
      localizationLabels: ["مدبلج فصحى"],
      sourceTags: ["مترجم"],
    },
  };
  assert.equal(belongsInSection(title, "cartoon"), true);
  assert.equal(catalogBadge(title, "cartoon"), "مدبلج فصحى ومترجم");
});

test("legacy cartoon rows require explicit animation taxonomy or a trusted Arabic-Toons episode URL", () => {
  assert.equal(isLegacyCartoonEntry({
    title: "Shrek",
    genres: [{ id: 16, name: "Animation" }],
  }), true);
  assert.equal(isLegacyCartoonEntry({
    title: "Shrek",
    genre_ids: [16],
  }), true);
  assert.equal(isLegacyCartoonEntry({
    title: "300",
    genres: [{ id: 28, name: "Action" }, { id: 10752, name: "War" }],
  }), false);
  assert.equal(isLegacyCartoonEntry({
    title: "17 Again",
    media_type: "movie",
  }), false);
  assert.equal(isLegacyCartoonEntry({
    title: "Arabic-Toons cartoon",
    seasons: [{
      label: "الموسم الأول",
      arabicToonsId: "https://www.arabic-toons.com/fixture-anime-streaming.html",
    }],
  }), true);
});

import assert from "node:assert/strict";
import test from "node:test";
import { belongsInSection, catalogBadge } from "./dubbedCatalogClassification.mjs";

test("a source-labeled translated anime stays in the animation feed, not dubbed cartoons", () => {
  const title = {
    classification: {
      contentFamilies: ["anime"],
      localizationLabels: ["مترجم"],
    },
  };
  assert.equal(belongsInSection(title, "animation"), true);
  assert.equal(belongsInSection(title, "cartoon"), false);
  assert.equal(catalogBadge(title, "animation"), "مترجم");
});

test("a source-labeled dubbed cartoon stays in the cartoon feed", () => {
  const title = {
    classification: {
      contentFamilies: ["animation"],
      localizationLabels: ["مدبلج فصحى"],
    },
  };
  assert.equal(belongsInSection(title, "cartoon"), true);
  assert.equal(belongsInSection(title, "animation"), false);
  assert.equal(catalogBadge(title, "cartoon"), "مدبلج فصحى");
});

test("missing family or language evidence never gets inferred into an official feed", () => {
  assert.equal(belongsInSection({ title: "Unknown" }, "cartoon"), false);
  assert.equal(belongsInSection({
    classification: { contentFamilies: ["animation"], localizationLabels: [] },
  }, "cartoon"), false);
  assert.equal(belongsInSection({
    classification: { contentFamilies: [], localizationLabels: ["مدبلج"] },
  }, "cartoon"), false);
});

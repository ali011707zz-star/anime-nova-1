import assert from "node:assert/strict";
import test from "node:test";
import {
  findExactAniListTitleMatch,
  normalizeAniListTitle,
} from "./aniListTitleMatch.mjs";

test("normalizes Arabic and Japanese title scripts without collapsing them to empty", () => {
  assert.equal(normalizeAniListTitle("進撃の巨人"), "進撃の巨人");
  assert.equal(normalizeAniListTitle("هجوم العمالقة"), "هجوم العمالقة");
});

test("selects an exact AniList alias instead of an unrelated first search result", () => {
  const media = [
    { id: 1, title: { english: "Unrelated Show", native: "別作品" } },
    { id: 16498, title: { english: "Attack on Titan", native: "進撃の巨人" } },
  ];
  assert.equal(findExactAniListTitleMatch("Attack on Titan", media)?.id, 16498);
  assert.equal(findExactAniListTitleMatch("進撃の巨人", media)?.id, 16498);
  assert.equal(findExactAniListTitleMatch("Unknown Anime", media), undefined);
});

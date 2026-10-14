import test from "node:test";
import assert from "node:assert/strict";
import {
  catalogBadge,
  isLegacyCartoonEntry,
  mergeCatalogRows,
} from "./dubbedCatalogUtils.mjs";

test("localized StarDima titles receive the correct dubbed and translated badge", () => {
  assert.equal(catalogBadge({ classification: { localizationLabels: ["مدبلج مصري"] } }), "مدبلج");
  assert.equal(catalogBadge({ classification: { localizationLabels: ["مترجم للعربية"] } }), "مترجم");
  assert.equal(
    catalogBadge({ classification: { localizationLabels: ["مدبلج", "مترجم"] } }),
    "مدبلج ومترجم",
  );
  assert.equal(catalogBadge({ classification: { localizationLabels: [] } }), undefined);
});

test("catalog rows are deduplicated by verified title aliases while preserving legacy cards", () => {
  const legacy = [
    { kind: "aw", item: { title: "مغامرات آفا", titleAr: "مغامرات آفا" } },
    { kind: "aw", item: { title: "آخر" } },
  ];
  const catalog = [
    { kind: "catalog", item: { title_ar: "مغامرات آفا", provider_title_id: "duplicate" } },
    { kind: "catalog", item: { title: "عنوان جديد", provider_title_id: "new" } },
  ];
  const merged = mergeCatalogRows(legacy, catalog);
  assert.deepEqual(merged.map((row) => `${row.kind}:${row.item.title || row.item.title_ar}`), [
    "aw:مغامرات آفا",
    "aw:آخر",
    "catalog:عنوان جديد",
  ]);
});

test("legacy cartoon filtering accepts verified Arabic-Toons episodes or explicit animation taxonomy", () => {
  assert.equal(isLegacyCartoonEntry({
    seasons: [{ arabicToonsId: "https://www.arabic-toons.com/example-anime-streaming.html" }],
  }), true);
  assert.equal(isLegacyCartoonEntry({ genres: ["Animation"] }), true);
  assert.equal(isLegacyCartoonEntry({ genres: ["Action", "Drama"] }), false);
  assert.equal(isLegacyCartoonEntry(null), false);
});

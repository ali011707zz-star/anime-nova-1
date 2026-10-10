import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";

const catalogUrl = new URL("../artifacts/api-server/src/data/anime-titles-ar.json", import.meta.url);
const rows = JSON.parse(await readFile(catalogUrl, "utf8"));
const byId = new Map(rows.map((row) => [row.anilistId, row]));

assert.equal(byId.size, rows.length, "AniList IDs must be unique");

const normalize = (title) => title.normalize("NFKC")
  .replace(/[\u064B-\u065F\u0670]/g, "")
  .replace(/[أإآٱ]/g, "ا")
  .replace(/[ى]/g, "ي")
  .replace(/[ة]/g, "ه")
  .replace(/ـ/g, "")
  .replace(/\s+/g, " ")
  .trim();

const normalizedTitles = rows.map((row) => normalize(row.title_ar));
assert.equal(new Set(normalizedTitles).size, normalizedTitles.length, "Arabic titles must not duplicate");
for (const row of rows) {
  assert.ok(Number.isSafeInteger(row.anilistId) && row.anilistId > 0, "each entry needs a stable AniList ID");
  assert.match(row.title_ar, /[\u0600-\u06FF]/, `Arabic title missing for AniList ${row.anilistId}`);
  assert.ok(row.englishTitle && Number.isInteger(row.firstAired), "each entry needs an auditable identity");
  assert.match(row.sourceUrl, /^https:\/\//, "each entry needs a source URL");
}

const verifiedSamples = [
  [20, "Naruto", "ناروتو", 2002],
  [136, "Hunter x Hunter", "القناص", 1999],
  [170, "Slam Dunk", "سلام دانك", 1993],
  [235, "Detective Conan", "المحقق كونان", 1996],
  [21459, "My Hero Academia", "أكاديمية بطلي", 2016],
];
for (const [id, englishTitle, titleAr, firstAired] of verifiedSamples) {
  assert.deepEqual(
    [byId.get(id)?.englishTitle, byId.get(id)?.title_ar, byId.get(id)?.firstAired],
    [englishTitle, titleAr, firstAired],
    `verified AniList identity mismatch for ${englishTitle}`,
  );
}

// These titles were reviewed but no distinct, sufficiently sourced Arabic
// localization was found; they must stay absent rather than be guessed.
for (const id of [151807, 154587]) {
  assert.equal(byId.has(id), false, `unverified title ${id} must remain blank`);
}

console.log(`Arabic title catalog checks passed: ${rows.length} unique, source-linked entries; 2 unverified modern examples remain blank.`);

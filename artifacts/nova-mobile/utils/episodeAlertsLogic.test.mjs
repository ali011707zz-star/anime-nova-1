import test from "node:test";
import assert from "node:assert/strict";
import {
  makeAlertKey,
  normalizeAlertTitle,
  matchesAlertRecord,
} from "./episodeAlertsLogic.mjs";

test("normalizeAlertTitle strips Arabic diacritics and normalizes alef/taa/yaa", () => {
  assert.equal(normalizeAlertTitle("أَفَاتَارُ الملاذات السبعة!"), "افاتار الملاذات السبعه");
  assert.equal(normalizeAlertTitle("إينوياشا — الموسم الأول"), "اينوياشا الموسم الاول");
  assert.equal(normalizeAlertTitle("Shingeki no Kyojin: Season 3"), "shingeki no kyojin season 3");
});

test("makeAlertKey builds stable composite keys", () => {
  assert.equal(makeAlertKey("anime", 16498), "anime::16498");
  assert.equal(makeAlertKey("dubbed-anime", "Dragon-Ball-Super-AR"), "dubbed-anime::dragon-ball-super-ar");
  assert.equal(makeAlertKey("dubbed", "sd2:6b01958fb6b2e"), "dubbed::sd2:6b01958fb6b2e");
  assert.equal(makeAlertKey("aw-dubbed", "Zootopia 1"), "aw-dubbed::zootopia 1");
});

test("matchesAlertRecord matches anime by animeId and normalized title", () => {
  const alert = {
    content_kind: "anime",
    content_key: "16498",
    anime_id: 16498,
    title: "Attack on Titan",
    title_ar: "هجوم العمالقة",
    normalized_title: normalizeAlertTitle("هجوم العمالقة"),
  };
  assert.equal(matchesAlertRecord(alert, { contentKind: "anime", animeId: 16498, title: "Shingeki no Kyojin" }), true);
  assert.equal(matchesAlertRecord(alert, { contentKind: "anime", animeId: 99999, title: "هجوم العمالقه" }), true);
  assert.equal(matchesAlertRecord(alert, { contentKind: "anime", animeId: 99999, title: "One Piece" }), false);
  // Anime alert must not accidentally match a dubbed cartoon title
  assert.equal(matchesAlertRecord(alert, { contentKind: "dubbed", contentKey: "sd2:xyz", title: "هجوم العمالقة" }), false);
});

test("matchesAlertRecord matches dubbed-anime, sd2 cartoons, and aw-dubbed accurately", () => {
  const dubbedAnimeAlert = {
    content_kind: "dubbed-anime",
    content_key: "dragon-ball-super-beerus-ar",
    title: "دراغون بول سوبر",
    normalized_title: normalizeAlertTitle("دراغون بول سوبر"),
  };
  assert.equal(
    matchesAlertRecord(dubbedAnimeAlert, {
      contentKind: "dubbed-anime",
      contentKey: "dragon-ball-super-beerus-ar",
      title: "Dragon Ball Super",
    }),
    true,
  );

  const sd2Alert = {
    content_kind: "dubbed",
    content_key: "sd2:6b01958fb6b2e",
    title: "أفاتار الملاذات السبعة",
    normalized_title: normalizeAlertTitle("أفاتار الملاذات السبعة"),
  };
  assert.equal(
    matchesAlertRecord(sd2Alert, {
      contentKind: "dubbed",
      contentKey: "6b01958fb6b2e",
      title: "Avatar Seven Havens",
    }),
    true,
  );

  const awAlert = {
    content_kind: "aw-dubbed",
    content_key: "Zootopia 1",
    title: "زوتوبيا",
    normalized_title: normalizeAlertTitle("زوتوبيا"),
  };
  assert.equal(
    matchesAlertRecord(awAlert, {
      contentKind: "aw-dubbed",
      contentKey: "zootopia 1",
      title: "Zootopia",
    }),
    true,
  );
});

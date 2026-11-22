import test from "node:test";
import assert from "node:assert/strict";
import {
  parseChannelCaption,
  parseHttpByteRange,
  signTgStreamToken,
  verifyTgStreamToken,
  convertSrtToVtt,
  normalizeMediaTitle,
} from "./telegramStorageLogic.mjs";

test("parses structured Arabic anime episode caption", () => {
  const res = parseChannelCaption(`#انمي
الاسم: Attack on Titan
الحلقة: 5
الجودة: 1080p
اللغة: انجليزي
anilist: 16498`);
  assert.equal(res.section, "anime");
  assert.equal(res.title, "Attack on Titan");
  assert.equal(res.episode, 5);
  assert.equal(res.quality, "1080p");
  assert.equal(res.audioLang, "dub_en");
  assert.equal(res.anilistId, 16498);
});

test("parses Arabic cartoon caption with Arabic-Indic digits and season", () => {
  const res = parseChannelCaption(`#كرتون
الاسم: بن 10
الموسم: ٢
الحلقة: ١٤`, "", { height: 720 });
  assert.equal(res.section, "cartoon");
  assert.equal(res.title, "بن 10");
  assert.equal(res.season, 2);
  assert.equal(res.episode, 14);
  assert.equal(res.quality, "720p");
  assert.equal(res.audioLang, "dub_ar");
});

test("parses single-line fallback and film hashtag", () => {
  const r1 = parseChannelCaption("One Piece - E1120 - 1080p #انمي");
  assert.equal(r1.title, "One Piece");
  assert.equal(r1.episode, 1120);
  assert.equal(r1.quality, "1080p");

  const r2 = parseChannelCaption(`#فيلم
الاسم: Spirited Away
اللغة: مترجم`, "", { height: 1080 });
  assert.equal(r2.section, "film");
  assert.equal(r2.episode, 1);
  assert.equal(r2.quality, "1080p");
  assert.equal(r2.audioLang, "sub");
});

test("parses #عمل_جديد series card", () => {
  const res = parseChannelCaption(`#عمل_جديد
القسم: كرتون
الاسم: كابتن ماجد
القصة: قصة لاعب كرة قدم
التصنيف: رياضة، مغامرة`);
  assert.equal(res.isSeriesCard, true);
  assert.equal(res.section, "cartoon");
  assert.equal(res.title, "كابتن ماجد");
  assert.deepEqual(res.genres, ["رياضة", "مغامرة"]);
});

test("parses HTTP byte ranges accurately", () => {
  assert.deepEqual(parseHttpByteRange(undefined, 1000), { start: 0, end: 999, chunkLength: 1000, isPartial: false });
  assert.deepEqual(parseHttpByteRange("bytes=0-99", 1000), { start: 0, end: 99, chunkLength: 100, isPartial: true });
  assert.deepEqual(parseHttpByteRange("bytes=500-", 1000), { start: 500, end: 999, chunkLength: 500, isPartial: true });
  assert.deepEqual(parseHttpByteRange("bytes=-200", 1000), { start: 800, end: 999, chunkLength: 200, isPartial: true });
  assert.equal(parseHttpByteRange("bytes=1000-1200", 1000), null);
  assert.equal(parseHttpByteRange("bytes=500-200", 1000), null);
});

test("signs and verifies stream tokens with expiry", () => {
  const secret = "test-secret-123456";
  const { exp, sig } = signTgStreamToken(42, secret, 600);
  assert.equal(verifyTgStreamToken(42, exp, sig, secret), true);
  assert.equal(verifyTgStreamToken(43, exp, sig, secret), false);
  assert.equal(verifyTgStreamToken(42, exp, sig, "wrong-secret"), false);
  assert.equal(verifyTgStreamToken(42, exp, sig, secret, exp + 10), false);
});

test("converts SRT to WebVTT and normalizes Arabic titles", () => {
  const vtt = convertSrtToVtt("1\n00:00:01,500 --> 00:00:04,200\nمرحباً بكم\n");
  assert.ok(vtt.startsWith("WEBVTT\n\n"));
  assert.ok(vtt.includes("00:00:01.500 --> 00:00:04.200"));
  assert.equal(normalizeMediaTitle("أبطال الديجيتال — الحلقة"), normalizeMediaTitle("ابطال الديجيتال الحلقه"));
});

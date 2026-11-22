import test from "node:test";
import assert from "node:assert/strict";
import {
  parseChannelCaption,
  validateParsedCaption,
  evaluateTitleMatch,
  mergeAdminFixIntoDraft,
  formatPendingReminderMessage,
  buildPendingInlineKeyboard,
  parseHttpByteRange,
  signTgStreamToken,
  verifyTgStreamToken,
  convertSrtToVtt,
} from "./telegramStorageLogic.mjs";

test("parses structured Arabic anime & cartoon captions cleanly", () => {
  const anime = parseChannelCaption("#انمي\nالاسم: Attack on Titan\nالحلقة: 5\nالجودة: 1080p\nاللغة: مترجم");
  assert.equal(anime.section, "anime");
  assert.equal(anime.explicitSection, true);
  assert.equal(anime.title, "Attack on Titan");
  assert.equal(anime.episode, 5);
  assert.equal(anime.quality, "1080p");
  assert.equal(anime.audioLang, "sub");
  assert.equal(validateParsedCaption(anime, "episode").isValid, true);

  const cartoon = parseChannelCaption("#كرتون\nالاسم: بن 10\nالموسم: 2\nالحلقة: ٧\nالجودة: 720p");
  assert.equal(cartoon.section, "cartoon");
  assert.equal(cartoon.title, "بن 10");
  assert.equal(cartoon.season, 2);
  assert.equal(cartoon.episode, 7);
  assert.equal(cartoon.audioLang, "dub_ar");
  assert.equal(validateParsedCaption(cartoon, "episode").isValid, true);
});

test("parses pipe-separated single-line captions including #انمي_انجليزي and م1 ح1", () => {
  const p1 = parseChannelCaption("One Piece | 1120 | 1080p #انمي");
  assert.equal(p1.section, "anime");
  assert.equal(p1.title, "One Piece");
  assert.equal(p1.episode, 1120);
  assert.equal(p1.quality, "1080p");
  assert.equal(validateParsedCaption(p1, "episode").isValid, true);

  const p2 = parseChannelCaption("Solo Leveling | S02E05 | 1080p #انمي_انجليزي");
  assert.equal(p2.section, "anime");
  assert.equal(p2.explicitSection, true);
  assert.equal(p2.audioLang, "dub_en");
  assert.equal(p2.title, "Solo Leveling");
  assert.equal(p2.season, 2);
  assert.equal(p2.episode, 5);
  assert.equal(validateParsedCaption(p2, "episode").isValid, true);

  const p3 = parseChannelCaption("بن 10 | م1 ح3 | 720p #كرتون");
  assert.equal(p3.section, "cartoon");
  assert.equal(p3.title, "بن 10");
  assert.equal(p3.season, 1);
  assert.equal(p3.episode, 3);
  assert.equal(validateParsedCaption(p3, "episode").isValid, true);

  const p4 = parseChannelCaption("Spirited Away | 2001 | 1080p #فيلم");
  assert.equal(p4.section, "film");
  assert.equal(p4.title, "Spirited Away");
  assert.equal(p4.year, 2001);
  assert.equal(p4.episode, 1);
  assert.equal(validateParsedCaption(p4, "episode").isValid, true);
});

test("detects empty caption, missing section, missing episode, and explicitly blank fields", () => {
  const empty = parseChannelCaption("", "VID_20261122.mp4");
  const vEmpty = validateParsedCaption(empty, "episode");
  assert.equal(vEmpty.isValid, false);
  const fieldsEmpty = vEmpty.issues.map((i) => i.field);
  assert.ok(fieldsEmpty.includes("section"));
  assert.ok(fieldsEmpty.includes("title"));
  assert.ok(fieldsEmpty.includes("episode"));

  const blankFields = parseChannelCaption("#انمي\nالاسم: One Piece\nالحلقة:\nالجودة:\nاللغة:");
  assert.deepEqual(blankFields.emptyFields.sort(), ["audioLang", "episode", "quality"]);
  const vBlank = validateParsedCaption(blankFields, "episode");
  assert.equal(vBlank.isValid, false);
  assert.ok(vBlank.issues.some((i) => i.field === "episode" && i.code === "empty"));
  assert.ok(vBlank.issues.some((i) => i.field === "quality" && i.code === "empty"));
  assert.ok(vBlank.issues.some((i) => i.field === "audioLang" && i.code === "empty"));
});

test("detects invalid field values, unknown hashtag, and suspicious placeholder title", () => {
  const bad = parseChannelCaption("#انميي\nالاسم: VID_12345\nالحلقة: صفر\nالجودة: عالية\nاللغة: فرنسي");
  const v = validateParsedCaption(bad, "episode");
  assert.equal(v.isValid, false);
  assert.ok(v.issues.some((i) => i.field === "section" && i.message.includes("#انميي")));
  assert.ok(v.issues.some((i) => i.field === "title" && i.code === "invalid"));
  assert.ok(v.issues.some((i) => i.field === "episode" && i.code === "invalid"));
  assert.ok(v.issues.some((i) => i.field === "quality" && i.code === "invalid"));
  assert.ok(v.issues.some((i) => i.field === "audioLang" && i.code === "invalid"));
});

test("evaluateTitleMatch accepts exact/prefix/synonym matches and catches typos", () => {
  const anilistCandidates = [
    { anilistId: 16498, title: "Shingeki no Kyojin", titleEn: "Attack on Titan", titleRomaji: "Shingeki no Kyojin", synonyms: ["AoT"], source: "anilist" },
    { anilistId: 101922, title: "Kimetsu no Yaiba", titleEn: "Demon Slayer: Kimetsu no Yaiba", titleRomaji: "Kimetsu no Yaiba", synonyms: [], source: "anilist" },
  ];

  // Exact match
  const exact = evaluateTitleMatch("Attack on Titan", anilistCandidates, { section: "anime" });
  assert.equal(exact.status, "exact");
  assert.equal(exact.matched?.anilistId, 16498);

  // Prefix before colon match
  const prefix = evaluateTitleMatch("Demon Slayer", anilistCandidates, { section: "anime" });
  assert.equal(prefix.status, "exact");
  assert.equal(prefix.matched?.anilistId, 101922);

  // Misspelled anime -> suggest!
  const typo = evaluateTitleMatch("Atack on Titn", anilistCandidates, { section: "anime" });
  assert.equal(typo.status, "suggest");
  assert.equal(typo.suggestions[0].anilistId, 16498);

  // Unknown anime -> not_found!
  const missing = evaluateTitleMatch("انمي غير موجود اطلاقا", [], { section: "anime" });
  assert.equal(missing.status, "not_found");

  // Cartoon typo vs existing series -> suggest!
  const cartoonExisting = [{ id: 7, title: "سبونج بوب", source: "existing_series" }];
  const cTypo = evaluateTitleMatch("سبونج بوبب", cartoonExisting, { section: "cartoon" });
  assert.equal(cTypo.status, "suggest");
  assert.equal(cTypo.suggestions[0].id, 7);

  // Brand-new cartoon -> ok_new!
  const cNew = evaluateTitleMatch("بن 10", cartoonExisting, { section: "cartoon" });
  assert.equal(cNew.status, "ok_new");
});

test("mergeAdminFixIntoDraft handles single-value replies and multi-field replies cleanly", () => {
  const draft1 = parseChannelCaption("#انمي\nالاسم: One Piece\nالحلقة:");
  const v1 = validateParsedCaption(draft1, "episode");
  assert.equal(v1.isValid, false);

  // Admin simply replies "1120"
  const fixed1 = mergeAdminFixIntoDraft(draft1, "1120", v1.issues);
  assert.equal(fixed1.episode, 1120);
  assert.equal(validateParsedCaption(fixed1, "episode").isValid, true);

  // Multi-field fix
  const draft2 = parseChannelCaption("الاسم: بن 10");
  const v2 = validateParsedCaption(draft2, "episode");
  const fixed2 = mergeAdminFixIntoDraft(draft2, "#كرتون\nالحلقة: 4\nالموسم: 2", v2.issues);
  assert.equal(fixed2.section, "cartoon");
  assert.equal(fixed2.episode, 4);
  assert.equal(fixed2.season, 2);
  assert.equal(validateParsedCaption(fixed2, "episode").isValid, true);
});

test("reminder formatter and inline keyboard generate valid buttons under 64 bytes", () => {
  const draft = parseChannelCaption("الاسم: Atack on Titn\nالحلقة:");
  const v = validateParsedCaption(draft, "episode");
  const suggestions = [{ anilistId: 16498, title: "Shingeki no Kyojin", titleEn: "Attack on Titan", source: "anilist" }];
  const issues = [...v.issues, { field: "title", code: "suggest", message: "الاسم قد يحتوي خطأ إملائياً" }];
  const msg = formatPendingReminderMessage(draft, issues, suggestions);
  assert.ok(msg.includes("تم إيقاف نشر الحلقة مؤقتاً"));
  assert.ok(msg.includes("Attack on Titan"));
  const kb = buildPendingInlineKeyboard(42, issues, suggestions, draft);
  assert.ok(kb.inline_keyboard.length >= 4);
  for (const row of kb.inline_keyboard) {
    for (const btn of row) {
      assert.ok(Buffer.byteLength(btn.callback_data, "utf8") <= 64, `callback_data too long: ${btn.callback_data}`);
    }
  }
});

test("HTTP byte ranges, stream signing, and SRT->VTT stay rock-solid", () => {
  assert.deepEqual(parseHttpByteRange("bytes=0-1023", 5000), { start: 0, end: 1023, chunkLength: 1024, isPartial: true });
  assert.deepEqual(parseHttpByteRange("bytes=-500", 5000), { start: 4500, end: 4999, chunkLength: 500, isPartial: true });
  assert.equal(parseHttpByteRange("bytes=6000-7000", 5000), null);

  const { exp, sig } = signTgStreamToken(99, "super-secret", 300);
  assert.equal(verifyTgStreamToken(99, exp, sig, "super-secret"), true);
  assert.equal(verifyTgStreamToken(100, exp, sig, "super-secret"), false);
  assert.ok(convertSrtToVtt("1\n00:00:01,500 --> 00:00:03,000\nمرحباً").startsWith("WEBVTT"));
});

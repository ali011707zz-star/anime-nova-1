import test from "node:test";
import assert from "node:assert/strict";
import { deflateRawSync } from "node:zlib";
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
  extractAuthorizedAdminIds,
  isPrivateSenderAuthorized,
  getSectionDisplayInfo,
  normalizeSection,
  listZipImageEntries,
  extractZipImageByIndex,
  formatChapterLabel,
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

test("strict bot access control allows only owner and non-bot channel admins in private chats", () => {
  const allowed = extractAuthorizedAdminIds({
    ownerChatId: "5477879129",
    channelMemberLists: [
      [
        { status: "creator", user: { id: 5477879129, is_bot: false } },
        { status: "administrator", user: { id: 7881366553, is_bot: false } },
        { status: "administrator", user: { id: 7564669894, is_bot: false } },
        { status: "administrator", user: { id: 9052295740, is_bot: true } },
        { status: "member", user: { id: 111111111, is_bot: false } },
      ],
    ],
  });
  assert.deepEqual([...allowed].sort(), ["5477879129", "7564669894", "7881366553"]);
  // Authorized private DM passes
  assert.equal(isPrivateSenderAuthorized({ from: { id: 5477879129, is_bot: false }, chat: { id: 5477879129, type: "private" } }, allowed), true);
  assert.equal(isPrivateSenderAuthorized({ from: { id: 7564669894, is_bot: false }, chat: { id: 7564669894, type: "private" } }, allowed), true);
  // Stranger private DM blocked
  assert.equal(isPrivateSenderAuthorized({ from: { id: 999888777, is_bot: false }, chat: { id: 999888777, type: "private" } }, allowed), false);
  // Bot sender blocked
  assert.equal(isPrivateSenderAuthorized({ from: { id: 9052295740, is_bot: true }, chat: { id: 9052295740, type: "private" } }, allowed), false);
  // Group chat blocked even if admin sends it
  assert.equal(isPrivateSenderAuthorized({ from: { id: 5477879129, is_bot: false }, chat: { id: -100123456, type: "supergroup" } }, allowed), false);
  // Authorized callback_query (no top-level chat) passes, stranger blocked
  assert.equal(isPrivateSenderAuthorized({ from: { id: 7881366553, is_bot: false } }, allowed), true);
  assert.equal(isPrivateSenderAuthorized({ from: { id: 123456789, is_bot: false } }, allowed), false);
});

test("supports both cartoon sections (cartoon & cartoon2), dubbed anime, and duplicate action buttons", () => {
  const c2 = parseChannelCaption("#كرتون2\nالاسم: النمر الوردي\nالموسم: 1\nالحلقة: 2\nالجودة: 1080p");
  assert.equal(c2.section, "cartoon2");
  assert.equal(c2.explicitSection, true);
  assert.equal(c2.audioLang, "dub_ar");
  assert.equal(validateParsedCaption(c2, "episode").isValid, true);
  assert.ok(getSectionDisplayInfo("cartoon2", "dub_ar").appLocationAr.includes("كرتون مدبلج 2"));
  assert.ok(getSectionDisplayInfo("cartoon", "dub_ar").appLocationAr.includes("كرتون مدبلج"));
  assert.ok(getSectionDisplayInfo("dubbed", "dub_ar").appLocationAr.includes("أنمي مدبلج"));

  const dupKb = buildPendingInlineKeyboard(77, [{ field: "duplicate", code: "duplicate_tg", message: "مكرر" }], [], c2);
  const cbs = dupKb.inline_keyboard.flat().map((b) => b.callback_data);
  assert.ok(cbs.includes("tg_pend_replace:77"));
  assert.ok(cbs.includes("tg_pend_keep_dup:77"));
  assert.ok(cbs.includes("tg_pend_cancel:77"));

  const secKb = buildPendingInlineKeyboard(78, [{ field: "section", code: "missing", message: "missing" }], [], c2);
  const secCbs = secKb.inline_keyboard.flat().map((b) => b.callback_data);
  assert.ok(secCbs.includes("tg_pend_sec:78:cartoon:dub_ar"));
  assert.ok(secCbs.includes("tg_pend_sec:78:cartoon2:dub_ar"));
  assert.ok(secCbs.includes("tg_pend_sec:78:dubbed:dub_ar"));
});


// Helper to craft a minimal real ZIP archive in memory (supports stored & deflate entries)
function buildTestZip(files) {
  const localChunks = [];
  const centralChunks = [];
  let offset = 0;

  for (const f of files) {
    const nameBuf = Buffer.from(f.name, "utf8");
    const rawData = Buffer.isBuffer(f.data) ? f.data : Buffer.from(f.data, "utf8");
    const method = f.deflate ? 8 : 0;
    const compData = method === 8 ? deflateRawSync(rawData) : rawData;

    const lh = Buffer.alloc(30);
    lh.writeUInt32LE(0x04034b50, 0);
    lh.writeUInt16LE(20, 4);
    lh.writeUInt16LE(0, 6);
    lh.writeUInt16LE(method, 8);
    lh.writeUInt32LE(0, 14);
    lh.writeUInt32LE(compData.length, 18);
    lh.writeUInt32LE(rawData.length, 22);
    lh.writeUInt16LE(nameBuf.length, 26);
    lh.writeUInt16LE(0, 28);
    localChunks.push(lh, nameBuf, compData);

    const ch = Buffer.alloc(46);
    ch.writeUInt32LE(0x02014b50, 0);
    ch.writeUInt16LE(20, 4);
    ch.writeUInt16LE(20, 6);
    ch.writeUInt16LE(0, 8);
    ch.writeUInt16LE(method, 10);
    ch.writeUInt32LE(0, 16);
    ch.writeUInt32LE(compData.length, 20);
    ch.writeUInt32LE(rawData.length, 24);
    ch.writeUInt16LE(nameBuf.length, 28);
    ch.writeUInt16LE(0, 30);
    ch.writeUInt16LE(0, 32);
    ch.writeUInt32LE(offset, 42);
    centralChunks.push(ch, nameBuf);

    offset += lh.length + nameBuf.length + compData.length;
  }

  const cdBuf = Buffer.concat(centralChunks);
  const eocd = Buffer.alloc(22);
  eocd.writeUInt32LE(0x06054b50, 0);
  eocd.writeUInt16LE(files.length, 8);
  eocd.writeUInt16LE(files.length, 10);
  eocd.writeUInt32LE(cdBuf.length, 12);
  eocd.writeUInt32LE(offset, 16);
  return Buffer.concat([...localChunks, cdBuf, eocd]);
}

test("animation, aw_animation, manga, and manhwa sections normalize distinctly", () => {
  assert.equal(normalizeSection("انميشن"), "animation");
  assert.equal(normalizeSection("أنيميشن"), "animation");
  assert.equal(normalizeSection("انميشن_مدبلج"), "aw_animation");
  assert.equal(normalizeSection("أنيميشن مدبلج"), "aw_animation");
  assert.equal(normalizeSection("كرتون"), "cartoon");
  assert.equal(normalizeSection("كرتون2"), "cartoon2");
  assert.equal(normalizeSection("انمي_مدبلج"), "dubbed");
  assert.equal(normalizeSection("مانجا"), "manga");
  assert.equal(normalizeSection("مانهوا"), "manhwa");
  assert.equal(normalizeSection("مانها"), "manhwa");

  assert.match(getSectionDisplayInfo("animation").appLocationAr, /قسم الأنيميشن/);
  assert.match(getSectionDisplayInfo("aw_animation").appLocationAr, /أنيميشن مدبلج/);
  assert.match(getSectionDisplayInfo("manga").appLocationAr, /قسم المانجا/);
  assert.match(getSectionDisplayInfo("manhwa").appLocationAr, /قسم المانهوا/);
});

test("parseChannelCaption supports #فيلم_انميشن and decimal manga/manhwa chapters", () => {
  const animMovie = parseChannelCaption("#فيلم_انميشن\nالاسم: Inside Out 2\nالجودة: 1080p");
  assert.equal(animMovie.section, "animation");
  assert.equal(animMovie.episode, 1);
  assert.equal(validateParsedCaption(animMovie, "episode").isValid, true);

  const manhwaPipe = parseChannelCaption("Solo Leveling | ف15.5 #مانهوا");
  assert.equal(manhwaPipe.section, "manhwa");
  assert.equal(manhwaPipe.title, "Solo Leveling");
  assert.equal(manhwaPipe.episode, 15.5);
  assert.equal(formatChapterLabel(manhwaPipe.episode), "15.5");
  assert.equal(validateParsedCaption(manhwaPipe, "manga_chapter").isValid, true);

  const mangaKv = parseChannelCaption("#مانجا\nالاسم: One Piece\nالفصل: ١١٢٥");
  assert.equal(mangaKv.section, "manga");
  assert.equal(mangaKv.episode, 1125);
  assert.equal(validateParsedCaption(mangaKv, "manga_chapter").isValid, true);

  // Missing chapter number on manga_chapter yields Arabic chapter prompt
  const missingCh = parseChannelCaption("#مانهوا\nالاسم: Solo Leveling");
  const check = validateParsedCaption(missingCh, "manga_chapter");
  assert.equal(check.isValid, false);
  assert.match(check.issues[0].message, /رقم الفصل/);

  // Zip chapter missing section offers ONLY manga/manhwa buttons
  const missingSecZip = parseChannelCaption("الاسم: Solo Leveling\nالفصل: 15");
  const checkZip = validateParsedCaption(missingSecZip, "manga_chapter");
  const kb = buildPendingInlineKeyboard(99, checkZip.issues, [], missingSecZip, { kind: "manga_chapter" });
  const secCallbacks = kb.inline_keyboard.flat().map((b) => b.callback_data).filter((c) => c.startsWith("tg_pend_sec:"));
  assert.deepEqual(secCallbacks, ["tg_pend_sec:99:manga:sub", "tg_pend_sec:99:manhwa:sub"]);
});

test("listZipImageEntries & extractZipImageByIndex naturally sort pages, decompress deflate, and block traversal/junk", () => {
  const zip = buildTestZip([
    { name: "__MACOSX/._01.jpg", data: "junk" },
    { name: "../evil.jpg", data: "traversal" },
    { name: "readme.txt", data: "not an image" },
    { name: "ch15/10.png", data: Buffer.from([0x89, 0x50, 0x4e, 0x47, 10]), deflate: true },
    { name: "ch15/2.jpg", data: Buffer.from([0xff, 0xd8, 0xff, 2]), deflate: false },
    { name: "ch15/1.webp", data: Buffer.from("RIFFpage1"), deflate: true },
  ]);

  const entries = listZipImageEntries(zip);
  assert.equal(entries.length, 3);
  assert.deepEqual(entries.map((e) => e.name), ["ch15/1.webp", "ch15/2.jpg", "ch15/10.png"]);
  assert.deepEqual(entries.map((e) => e.mime), ["image/webp", "image/jpeg", "image/png"]);

  const p0 = extractZipImageByIndex(zip, 0);
  assert.equal(p0.data.toString("utf8"), "RIFFpage1");
  const p2 = extractZipImageByIndex(zip, 2);
  assert.deepEqual([...p2.data], [0x89, 0x50, 0x4e, 0x47, 10]);
  assert.equal(extractZipImageByIndex(zip, 99), null);
});

import test from "node:test";
import assert from "node:assert/strict";
import {
  DEFAULT_GLOBAL_READER_SETTINGS,
  MAX_SAVED_MANGA_MODES,
  READING_MODES,
  getReaderLayoutFamily,
  getReaderThemePalette,
  isHorizontalReadingMode,
  isManhwaWork,
  isPagedReadingMode,
  isReadingModeAllowedForWork,
  READING_MODE_META,
  resolveEffectiveReadingMode,
  sanitizeGlobalReaderSettings,
  sanitizePerMangaReadingModes,
  updatePerMangaReadingModesMap,
} from "./mangaReaderSettings.mjs";
import {
  buildApplyReaderSettingsScript,
  buildMangaReaderHtml,
  buildReloadReaderPageScript,
  buildScrollReaderScript,
  buildThemedTextReaderHtml,
} from "./mangaReaderHtml.mjs";

test("resolveEffectiveReadingMode defaults manhwa/manhua to webtoon and Japanese manga to continuous_vertical", () => {
  assert.equal(resolveEffectiveReadingMode("default", "manhwa", "KR"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("default", "manga", "KR"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("default", "manga", "CN"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("default", "manga", "TW"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("default", "manga", "JP"), "continuous_vertical");
  assert.equal(resolveEffectiveReadingMode(undefined, "manga", undefined), "continuous_vertical");
});

test("resolveEffectiveReadingMode respects explicit per-manga overrides and guards manhwa from paged/horizontal modes", () => {
  assert.equal(resolveEffectiveReadingMode("webtoon", "manga", "JP"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("continuous_vertical", "manhwa", "KR"), "continuous_vertical");
  assert.equal(resolveEffectiveReadingMode("webtoon", "manhwa", "KR"), "webtoon");
  // Paged / horizontal modes are manga-only: manhwa safely falls back to webtoon
  assert.equal(resolveEffectiveReadingMode("rtl", "manhwa", "KR"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("ltr", "manhwa", "KR"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("vertical", "manga", "KR"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("continuous_rtl", "manga", "CN"), "webtoon");
  assert.equal(resolveEffectiveReadingMode("continuous_ltr", "manga", "TW"), "webtoon");
  // Japanese manga still supports every mode
  assert.equal(resolveEffectiveReadingMode("rtl", "manga", "JP"), "rtl");
  assert.equal(resolveEffectiveReadingMode("ltr", "manga", "JP"), "ltr");
  assert.equal(resolveEffectiveReadingMode("vertical", "manga", "JP"), "vertical");
  assert.equal(resolveEffectiveReadingMode("continuous_rtl", "manga", "JP"), "continuous_rtl");
  assert.equal(resolveEffectiveReadingMode("continuous_ltr", "manga", "JP"), "continuous_ltr");
  // Unknown mode falls back cleanly to auto-detection
  assert.equal(resolveEffectiveReadingMode("unknown_mode", "manhwa", "KR"), "webtoon");
});

test("isManhwaWork and isReadingModeAllowedForWork distinguish manhwa/manhua from manga", () => {
  assert.equal(isManhwaWork("manhwa", undefined), true);
  assert.equal(isManhwaWork("manga", "KR"), true);
  assert.equal(isManhwaWork("manga", "cn"), true);
  assert.equal(isManhwaWork("manga", "TW"), true);
  assert.equal(isManhwaWork("manga", "JP"), false);
  assert.equal(isManhwaWork("manga", undefined), false);

  assert.equal(isReadingModeAllowedForWork("default", "manhwa", "KR"), true);
  assert.equal(isReadingModeAllowedForWork("webtoon", "manhwa", "KR"), true);
  assert.equal(isReadingModeAllowedForWork("continuous_vertical", "manhwa", "KR"), true);
  assert.equal(isReadingModeAllowedForWork("rtl", "manhwa", "KR"), false);
  assert.equal(isReadingModeAllowedForWork("ltr", "manhwa", "KR"), false);
  assert.equal(isReadingModeAllowedForWork("vertical", "manhwa", "KR"), false);
  assert.equal(isReadingModeAllowedForWork("continuous_rtl", "manhwa", "KR"), false);
  assert.equal(isReadingModeAllowedForWork("continuous_ltr", "manhwa", "KR"), false);

  for (const mode of READING_MODES) {
    assert.equal(isReadingModeAllowedForWork(mode, "manga", "JP"), true);
  }
  for (const item of READING_MODE_META) {
    assert.equal(/[←→]/.test(item.shortDesc), false, "No broken Cairo arrow glyphs in shortDesc");
  }
});

test("sanitizeGlobalReaderSettings validates all fields and rejects invalid values", () => {
  const clean = sanitizeGlobalReaderSettings({
    rotation: "landscape",
    background: "white",
    showPageNumber: false,
    fullscreen: true,
    keepScreenOn: false,
    longPressInfo: false,
    color32Bit: false,
    cropBorders: true,
    sidePadding: 20,
  });
  assert.deepEqual(clean, {
    rotation: "landscape",
    background: "white",
    showPageNumber: false,
    fullscreen: true,
    keepScreenOn: false,
    longPressInfo: false,
    color32Bit: false,
    cropBorders: true,
    sidePadding: 20,
  });

  const fallback = sanitizeGlobalReaderSettings({
    rotation: "upside_down",
    background: "neon_pink",
    sidePadding: 99,
    color32Bit: "yes",
  });
  assert.deepEqual(fallback, { ...DEFAULT_GLOBAL_READER_SETTINGS });
});

test("per-manga mode map removes default overrides and caps size safely", () => {
  let map = {};
  map = updatePerMangaReadingModesMap(map, "manga-1", "rtl");
  assert.equal(map["manga-1"], "rtl");
  map = updatePerMangaReadingModesMap(map, "manga-1", "default");
  assert.equal("manga-1" in map, false);

  const oversized = {};
  for (let i = 0; i < MAX_SAVED_MANGA_MODES + 25; i++) {
    oversized[`m-${i}`] = "webtoon";
  }
  const trimmed = sanitizePerMangaReadingModes(oversized);
  assert.equal(Object.keys(trimmed).length, MAX_SAVED_MANGA_MODES);
});

test("layout family shares vstrip between webtoon and continuous_vertical for zero-reload toggling", () => {
  assert.equal(getReaderLayoutFamily("webtoon"), "vstrip");
  assert.equal(getReaderLayoutFamily("continuous_vertical"), "vstrip");
  assert.notEqual(getReaderLayoutFamily("rtl"), getReaderLayoutFamily("ltr"));
  assert.equal(isPagedReadingMode("rtl"), true);
  assert.equal(isPagedReadingMode("webtoon"), false);
  assert.equal(isHorizontalReadingMode("continuous_rtl"), true);
  assert.equal(isHorizontalReadingMode("vertical"), false);
});

test("getReaderThemePalette produces distinct palettes for black, gray, white", () => {
  const black = getReaderThemePalette("black");
  const gray = getReaderThemePalette("gray");
  const white = getReaderThemePalette("white");
  assert.equal(black.bg, "#050507");
  assert.equal(black.isLight, false);
  assert.equal(gray.bg, "#24262B");
  assert.equal(gray.isLight, false);
  assert.equal(white.bg, "#F5F5F7");
  assert.equal(white.isLight, true);
});

test("buildMangaReaderHtml renders all reading modes, settings flags, and escapes HTML safely", () => {
  const effectiveModes = READING_MODES.filter((m) => m !== "default");
  for (const mode of effectiveModes) {
    const html = buildMangaReaderHtml({
      pages: [{ url: "https://cdn.example.com/1.jpg" }, { url: "https://cdn.example.com/2.jpg" }],
      chapterLabel: 'الفصل <script>alert("xss")</script>',
      nextChapterLabel: "102",
      apiBase: "https://api.example.com",
      settings: {
        ...DEFAULT_GLOBAL_READER_SETTINGS,
        background: "gray",
        color32Bit: true,
        cropBorders: true,
        sidePadding: 15,
      },
      effectiveMode: mode,
      initialPage: 1,
    });
    assert.ok(html.includes(`mode-${mode}`), `Expected mode class for ${mode}`);
    assert.ok(html.includes('data-color-depth="32bit"'));
    assert.ok(html.includes("crop-borders"));
    assert.ok(html.includes("--side-pad: 15%"));
    assert.ok(html.includes("--bg: #24262B"));
    assert.ok(!html.includes('<script>alert("xss")</script>'), "XSS payload must be escaped");
    assert.ok(html.includes("&lt;script&gt;alert(&quot;xss&quot;)&lt;/script&gt;"));
  }
});

test("runtime helper scripts and themed text reader emit valid output", () => {
  const applyJs = buildApplyReaderSettingsScript(
    { ...DEFAULT_GLOBAL_READER_SETTINGS, background: "white", sidePadding: 25, color32Bit: false },
    "continuous_vertical",
  );
  assert.ok(applyJs.includes("__applyReaderSettings"));
  assert.ok(applyJs.includes("#F5F5F7"));
  assert.ok(applyJs.endsWith("true;"));

  assert.equal(
    buildReloadReaderPageScript(4),
    "if (window.__reloadReaderPage) { window.__reloadReaderPage(4); } true;",
  );
  assert.ok(buildScrollReaderScript("down").includes("540"));

  const textHtml = buildThemedTextReaderHtml({
    contentHtml: "<p>محتوى الفصل النصي</p>",
    chapterLabel: "الفصل 12",
    nextChapterLabel: "13",
    settings: { ...DEFAULT_GLOBAL_READER_SETTINGS, background: "white", sidePadding: 10 },
  });
  assert.ok(textHtml.includes("#F5F5F7"));
  assert.ok(textHtml.includes("TOGGLE_CHROME"));
});

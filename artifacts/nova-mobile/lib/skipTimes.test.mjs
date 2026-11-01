import assert from "node:assert/strict";
import test from "node:test";
import {
  buildSkipScopeKey,
  isSkipInRange,
  parseAniSkipTimes,
  resolveSkipTimes,
  validateSkipInterval,
} from "./skipTimes.mjs";

test("case 1: uses independent intro and outro timings together", () => {
  const intro = { start: 82, end: 113 };
  const outro = { start: 1320, end: 1410 };
  assert.deepEqual(
    resolveSkipTimes({ sourceIntroProp: intro, fetchedOutro: outro }),
    { intro, outro },
  );
});

test("case 2: supports intro timing without outro timing", () => {
  const intro = { start: 82, end: 113 };
  assert.deepEqual(resolveSkipTimes({ sourceIntroProp: intro }), { intro, outro: null });
});

test("case 3: supports outro timing without intro timing", () => {
  const outro = { start: 1320, end: 1410 };
  assert.deepEqual(resolveSkipTimes({ sourceOutro: outro }), { intro: null, outro });
});

test("case 4: shows no skip button when neither timing exists", () => {
  assert.deepEqual(resolveSkipTimes({}), { intro: null, outro: null });
  assert.equal(isSkipInRange(null, 90, 1_400), false);
});

test("case 5: consecutive episodes keep their own timings and fetch scope", () => {
  const ep1 = { start: 80, end: 110 };
  const ep2 = { start: 92, end: 123 };
  assert.notDeepEqual(
    resolveSkipTimes({ fetchedIntro: ep1 }),
    resolveSkipTimes({ fetchedIntro: ep2 }),
  );
  assert.notEqual(
    buildSkipScopeKey({ anilistId: 10, episode: 1 }),
    buildSkipScopeKey({ anilistId: 10, episode: 2 }),
  );
});

test("case 6: changing anime creates a separate timing scope", () => {
  assert.notEqual(
    buildSkipScopeKey({ anilistId: 10, episode: 1 }),
    buildSkipScopeKey({ anilistId: 11, episode: 1 }),
  );
});

test("case 7: changing source for the same episode resets its scope", () => {
  assert.notEqual(
    buildSkipScopeKey({
      anilistId: 10,
      episode: 1,
      sourceSite: "source-a",
      sourceUrl: "https://cdn.test/episode.mp4",
    }),
    buildSkipScopeKey({
      anilistId: 10,
      episode: 1,
      sourceSite: "source-b",
      sourceUrl: "https://cdn.test/episode.m3u8",
    }),
  );
});

test("case 8: HLS timings work without changing source playback type", () => {
  const sourceUrl = "https://cdn.test/master.m3u8";
  const timing = { start: 82, end: 113 };
  assert.equal(/\.m3u8(?:[?#]|$)/i.test(sourceUrl), true);
  assert.deepEqual(resolveSkipTimes({ sourceIntro: timing }), { intro: timing, outro: null });
});

test("case 9: MP4 timings work without changing source playback type", () => {
  const sourceUrl = "https://cdn.test/episode.mp4";
  const timing = { start: 82, end: 113 };
  assert.equal(/\.mp4(?:[?#]|$)/i.test(sourceUrl), true);
  assert.deepEqual(resolveSkipTimes({ sourceIntro: timing }), { intro: timing, outro: null });
});

test("case 10: start from the beginning reveals the opening skip at its lead window", () => {
  const intro = { start: 30, end: 60 };
  assert.equal(isSkipInRange(intro, 0, 1_400), false);
  assert.equal(isSkipInRange(intro, 27, 1_400), true);
});

test("case 11: resuming inside the opening reveals its skip button", () => {
  const intro = { start: 30, end: 60 };
  assert.equal(isSkipInRange(intro, 42, 1_400), true);
});

test("case 12: forward and backward seeking uses the current playback position", () => {
  const outro = { start: 1_320, end: 1_380 };
  assert.equal(isSkipInRange(outro, 900, 1_400), false);
  assert.equal(isSkipInRange(outro, 1_350, 1_400), true);
  assert.equal(isSkipInRange(outro, 1_000, 1_400), false);
});

test("validates AniSkip partial responses without relying on found", () => {
  const intro = { start: 82, end: 113 };
  const outro = { start: 1320, end: 1410 };
  assert.deepEqual(
    resolveSkipTimes({ sourceIntro: intro, fetchedOutro: outro }),
    { intro, outro },
  );
  assert.deepEqual(
    resolveSkipTimes({ sourceOutro: outro, fetchedIntro: intro }),
    { intro, outro },
  );
});

test("source and explicit prop timings take priority per segment", () => {
  const propIntro = { start: 12, end: 28 };
  const sourceIntro = { start: 20, end: 36 };
  const fetchedIntro = { start: 25, end: 40 };
  const sourceOutro = { start: 1_300, end: 1_340 };
  const fetchedOutro = { start: 1_310, end: 1_350 };
  assert.deepEqual(
    resolveSkipTimes({
      sourceIntroProp: propIntro,
      sourceIntro,
      fetchedIntro,
      sourceOutro,
      fetchedOutro,
    }),
    { intro: propIntro, outro: sourceOutro },
  );
});

test("parses partial AniSkip results without relying on found", () => {
  assert.deepEqual(
    parseAniSkipTimes({
      found: true,
      results: [{ skipType: "op", interval: { startTime: 82, endTime: 113 } }],
    }),
    { intro: { start: 82, end: 113 }, outro: null },
  );
  assert.deepEqual(
    parseAniSkipTimes({
      found: true,
      results: [{ skip_type: "ed", timestamps: { start_time: 1320, end_time: 1410 } }],
    }),
    { intro: null, outro: { start: 1320, end: 1410 } },
  );
  assert.deepEqual(
    parseAniSkipTimes({
      found: false,
      results: [
        { type: "opening", interval: { start: 82, end: 113 } },
        { type: "ending", time: { start: 1320, end: 1410 } },
      ],
    }),
    { intro: { start: 82, end: 113 }, outro: { start: 1320, end: 1410 } },
  );
  assert.deepEqual(
    parseAniSkipTimes({ results: [{ type: "intro", start: 82, end: 113 }] }),
    { intro: { start: 82, end: 113 }, outro: null },
  );
  assert.deepEqual(
    parseAniSkipTimes({ results: [{ type: "outro", start: 1320, end: 1410 }] }),
    { intro: null, outro: { start: 1320, end: 1410 } },
  );
});

test("rejects invalid and out-of-duration timing values", () => {
  for (const timing of [
    { start: -1, end: 10 },
    { start: 10, end: 0 },
    { start: 10, end: 9 },
    { start: Number.NaN, end: 15 },
    { start: 10, end: Number.POSITIVE_INFINITY },
    { start: "", end: 15 },
    null,
  ]) {
    assert.equal(validateSkipInterval(timing), undefined);
  }
  assert.equal(validateSkipInterval({ start: 90, end: 110 }, 100), undefined);
  assert.equal(validateSkipInterval({ start: 90, end: 101.1 }, 100), undefined);
  assert.deepEqual(validateSkipInterval({ start: 90, end: 101 }, 100), {
    start: 90,
    end: 101,
  });
  assert.deepEqual(validateSkipInterval({ start: 90, end: 100.5 }, 100), {
    start: 90,
    end: 100.5,
  });
});

test("keeps overlapping skip buttons independent and range-aware", () => {
  const intro = { start: 10, end: 40 };
  const outro = { start: 35, end: 55 };
  assert.equal(isSkipInRange(intro, 0, 60), false);
  assert.equal(isSkipInRange(intro, 8, 60), true);
  assert.equal(isSkipInRange(outro, 34, 60), true);
  assert.equal(isSkipInRange(intro, 20, 60, true), false);
  assert.equal(isSkipInRange(outro, 50, 60), true);
  assert.equal(isSkipInRange(intro, 20, 60), true);
  assert.equal(isSkipInRange(intro, 20, 10), false);
  assert.equal(isSkipInRange(intro, 10, 60), true);
  assert.equal(isSkipInRange(outro, 45, 60), true);
});

test("skip scope changes with anime, episode, or source", () => {
  const base = {
    anilistId: 10,
    episode: 1,
    title: "Series",
    sourceSite: "source-a",
    sourceUrl: "https://example.test/a.mp4",
  };
  assert.notEqual(
    buildSkipScopeKey(base),
    buildSkipScopeKey({ ...base, episode: 2 }),
  );
  assert.notEqual(
    buildSkipScopeKey(base),
    buildSkipScopeKey({ ...base, anilistId: 11 }),
  );
  assert.notEqual(
    buildSkipScopeKey(base),
    buildSkipScopeKey({ ...base, sourceUrl: "https://example.test/b.m3u8" }),
  );
});
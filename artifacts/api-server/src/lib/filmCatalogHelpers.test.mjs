import test from "node:test";
import assert from "node:assert/strict";
import {
  getDigitalReleaseCutoffIso,
  hasUntranslatedCjkTitle,
  encodeSyntheticTmdbId,
  decodeSyntheticTmdbId,
  isOfficialAnimationCategory,
  normalizeArabicSearchVariants,
  buildTmdbDiscoverSpec,
  mapTmdbItemToFilmSummary,
  mergeTvSeasons,
  mergeSeasonEpisodes,
  formatMergedSeriesDuration,
} from "./filmCatalogHelpers.mjs";

test("synthetic TMDB IDs round-trip cleanly for movie and tv", () => {
  const mId = encodeSyntheticTmdbId("movie", 875828);
  const tId = encodeSyntheticTmdbId("tv", 60574);
  assert.deepEqual(decodeSyntheticTmdbId(mId), { realTmdbId: 875828, tmdbType: "movie" });
  assert.deepEqual(decodeSyntheticTmdbId(tId), { realTmdbId: 60574, tmdbType: "tv" });
  assert.equal(decodeSyntheticTmdbId(3744), null);
});

test("Arabic search variants normalize leading ال and common spelling typos like البيكي بيلاندرز", () => {
  const v1 = normalizeArabicSearchVariants("البيكي بلايندرز");
  assert.ok(v1.includes("بيكي بلايندرز"), `Expected بيكي بلايندرز in ${JSON.stringify(v1)}`);

  const v2 = normalizeArabicSearchVariants("مسلسل البيكي بيلاندرز");
  assert.ok(v2.includes("بيكي بلايندرز"), `Expected بيكي بلايندرز in ${JSON.stringify(v2)}`);
});

test("all previously empty categories produce valid official TMDB discover specs", () => {
  const categories = [
    "arabic_movies",
    "arabic_series",
    "turkish_movies",
    "turkish_series",
    "indian_movies",
    "indian_series",
    "dubbed_series",
    "foreign_movies",
    "western_movies",
    "asian_movies",
    "asian_series",
    "animation_movies",
    "animation_series",
    "animation",
  ];
  for (const cat of categories) {
    const spec = buildTmdbDiscoverSpec(cat, { page: 1 });
    assert.ok(spec, `Missing discover spec for ${cat}`);
    assert.ok(spec.path.startsWith("/discover/"), `Bad path for ${cat}: ${spec.path}`);
  }
  const animTv = buildTmdbDiscoverSpec("animation_series", { page: 1 });
  assert.ok(animTv.path.includes("with_genres=16"));
  assert.ok(animTv.path.includes("without_keywords=210024"));
  assert.equal(isOfficialAnimationCategory("animation_movies"), true);
  assert.equal(isOfficialAnimationCategory("animation_series"), true);
  assert.equal(isOfficialAnimationCategory("movie"), false);
});

test("mapTmdbItemToFilmSummary enforces official TMDB posters and skips missing poster_path", () => {
  const noPoster = mapTmdbItemToFilmSummary({ id: 100, title: "No Poster" });
  assert.equal(noPoster, null);

  const ok = mapTmdbItemToFilmSummary(
    {
      id: 1084244,
      title: "حكاية لعبة ٥",
      original_title: "Toy Story 5",
      poster_path: "/b9yODva86tl5Em8cOoKSQQzzAy4.jpg",
      backdrop_path: "/back.jpg",
      release_date: "2026-06-19",
      vote_average: 8.2,
      genre_ids: [16, 10751],
    },
    buildTmdbDiscoverSpec("animation_movies"),
  );
  assert.equal(ok.id, 1_501_084_244);
  assert.equal(ok.posterUrl, "https://image.tmdb.org/t/p/w342/b9yODva86tl5Em8cOoKSQQzzAy4.jpg");
  assert.equal(ok.mediaType, "animation");
});

test("mergeTvSeasons restores missing Season 3 and partial episode counts for Peaky Blinders", () => {
  const partialVault = [
    { season_number: 1, ep_count: 6 },
    { season_number: 2, ep_count: 3 },
    { season_number: 4, ep_count: 1 },
    { season_number: 5, ep_count: 6 },
    { season_number: 6, ep_count: 6 },
  ];
  const officialTmdb = [
    { season_number: 0, episode_count: 2 }, // specials skipped
    { season_number: 1, episode_count: 6, name: "الموسم 1" },
    { season_number: 2, episode_count: 6, name: "الموسم 2" },
    { season_number: 3, episode_count: 6, name: "الموسم 3" },
    { season_number: 4, episode_count: 6, name: "الموسم 4" },
    { season_number: 5, episode_count: 6, name: "الموسم 5" },
    { season_number: 6, episode_count: 6, name: "الموسم 6" },
  ];
  const merged = mergeTvSeasons(partialVault, officialTmdb, "https://image.tmdb.org/t/p/w780/p.jpg");
  assert.equal(merged.length, 6);
  assert.deepEqual(merged.map((s) => [s.seasonNumber, s.episodeCount]), [
    [1, 6],
    [2, 6],
    [3, 6],
    [4, 6],
    [5, 6],
    [6, 6],
  ]);
  assert.equal(formatMergedSeriesDuration(merged), "6 مواسم · 36 حلقة");
});

test("mergeSeasonEpisodes fills missing episodes 4..6 in Season 2 while keeping order", () => {
  const vaultEps = [
    { episode_number: 1 },
    { episode_number: 2 },
    { episode_number: 3 },
  ];
  const tmdbEps = [1, 2, 3, 4, 5, 6].map((n) => ({
    episodeNumber: n,
    titleAr: `الحلقة ${n}`,
    titleEn: `Episode ${n}`,
    stillUrl: `https://image.tmdb.org/t/p/w1280/s2e${n}.jpg`,
  }));
  const merged = mergeSeasonEpisodes(vaultEps, tmdbEps, 3744, 2, null);
  assert.equal(merged.length, 6);
  assert.deepEqual(merged.map((e) => e.episodeNumber), [1, 2, 3, 4, 5, 6]);
  assert.equal(merged[5].stillUrl, "https://image.tmdb.org/t/p/w1280/s2e6.jpg");
});

test("animation specs exclude Japanese anime and unreleased future movies", () => {
  const animSpec = buildTmdbDiscoverSpec("animation_movies", { page: 1 });
  assert.ok(animSpec.path.includes("without_keywords=210024"));
  assert.ok(animSpec.path.includes("primary_release_date.lte="));

  const animeBlocked = mapTmdbItemToFilmSummary(
    {
      id: 129,
      title: "المخطوفة",
      original_title: "千と千尋の神隠し",
      original_language: "ja",
      poster_path: "/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg",
      release_date: "2001-07-20",
      genre_ids: [16, 10751],
    },
    animSpec,
  );
  assert.equal(animeBlocked, null);

  const futureBlocked = mapTmdbItemToFilmSummary(
    {
      id: 9999999,
      title: "Future Movie",
      original_title: "Future Movie",
      original_language: "en",
      poster_path: "/future.jpg",
      release_date: "2029-12-25",
      genre_ids: [16, 10751],
    },
    animSpec,
  );
  assert.equal(futureBlocked, null);
});

test("top_rated enforces vote_count>=2000 and theatrical movies enforce 45-day digital release cutoff", () => {
  const tr = buildTmdbDiscoverSpec("top_rated", { page: 1 });
  assert.ok(tr);
  assert.ok(tr.path.includes("vote_count.gte=2000"));

  const fm = buildTmdbDiscoverSpec("foreign_movies", { page: 1 });
  assert.ok(fm);
  const cutoff = getDigitalReleaseCutoffIso(45);
  assert.ok(fm.path.includes("primary_release_date.lte=" + cutoff));
  assert.ok(fm.path.includes("vote_count.gte=80"));

  // Unreleased/theatrical 2026 movie released 10 days ago with low votes must be rejected
  const tenDaysAgo = getDigitalReleaseCutoffIso(10);
  const rejected = mapTmdbItemToFilmSummary(
    { id: 999111, title: "Cinema Only Movie", original_language: "en", poster_path: "/x.jpg", release_date: tenDaysAgo, vote_count: 120, vote_average: 7.5 },
    { tmdbType: "movie", mediaType: "movie" }
  );
  assert.equal(rejected, null);

  // Older digital movie (>45 days ago) passes cleanly
  const oldDate = getDigitalReleaseCutoffIso(90);
  const accepted = mapTmdbItemToFilmSummary(
    { id: 999112, title: "Digital Movie", original_language: "en", poster_path: "/x.jpg", release_date: oldDate, vote_count: 120, vote_average: 7.5 },
    { tmdbType: "movie", mediaType: "movie" }
  );
  assert.ok(accepted);

  assert.equal(hasUntranslatedCjkTitle("시카고 타자기"), true);
  assert.equal(hasUntranslatedCjkTitle("Chicago Typewriter"), false);
  assert.equal(hasUntranslatedCjkTitle("لعبة الحبار"), false);
});

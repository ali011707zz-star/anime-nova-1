import test from "node:test";
import assert from "node:assert/strict";
import {
  ANIMERIFT_SITE_CR2,
  ANIMERIFT_SITE_BBZ,
  ANIMERIFT_SITE_CR2_DUB,
  isAnimeRiftSite,
  extractSeasonNumber,
  normalizeRiftTitle,
  buildRiftSearchQueries,
  pickBestAnimeRiftCandidate,
  pickAnimeRiftEpisode,
  parseAnimeRiftEpisodeSources,
  selectRiftHostForQuality,
  normalizeRiftDirectLink,
  parseRiftRetryAfterMs,
  computeRiftCooldownUntil,
} from "./animeRiftLogic.mjs";

test("isAnimeRiftSite identifies only the 3 supported AnimeRift slots", () => {
  assert.equal(isAnimeRiftSite("animerift_cr2"), true);
  assert.equal(isAnimeRiftSite("animerift_bbz"), true);
  assert.equal(isAnimeRiftSite("animerift_cr2_dub"), true);
  assert.equal(isAnimeRiftSite("animewitcher"), false);
  assert.equal(isAnimeRiftSite(""), false);
});

test("extractSeasonNumber & normalizeRiftTitle unify season variants", () => {
  assert.equal(extractSeasonNumber("Black Clover 2nd Season"), 2);
  assert.equal(extractSeasonNumber("Black Clover: Season 2"), 2);
  assert.equal(extractSeasonNumber("Overlord III"), 3);
  assert.equal(extractSeasonNumber("Boku no Hero Academia 7"), 7);
  assert.equal(extractSeasonNumber("One Piece (1999)"), null);
  assert.equal(
    normalizeRiftTitle("Black Clover 2nd Season"),
    normalizeRiftTitle("Black Clover: Season 2"),
  );
});

test("pickBestAnimeRiftCandidate picks main One Piece TV over earlier specials/OVAs", () => {
  const items = [
    {
      _id: "special-1992",
      title: "uchida shungicu no noroi no one-piece",
      release_year: 1992,
      content_type: "special",
      available_episodes: 3,
      myAnimeList_votes: 400,
    },
    {
      _id: "ova-1998",
      title: "one piece: taose! kaizoku ganzack",
      release_year: 1998,
      content_type: "ova",
      available_episodes: 1,
      myAnimeList_votes: 12000,
    },
    {
      _id: "tv-1999",
      title: "one piece",
      release_year: 1999,
      content_type: "tv",
      available_episodes: 1122,
      myAnimeList_votes: 1500000,
    },
  ];
  const best = pickBestAnimeRiftCandidate(items, {
    title: "ONE PIECE",
    english: "One Piece",
    format: "TV",
    year: 1999,
    epNum: 1000,
  });
  assert.equal(best?.item._id, "tv-1999");
});

test("pickBestAnimeRiftCandidate distinguishes Black Clover Season 2 from Season 1", () => {
  const items = [
    {
      _id: "bc-s1",
      title: "black clover",
      release_year: 2017,
      content_type: "tv",
      available_episodes: 170,
      myAnimeList_votes: 1100000,
    },
    {
      _id: "bc-movie",
      title: "black clover: mahou tei no ken",
      release_year: 2023,
      content_type: "movie",
      available_episodes: 1,
      myAnimeList_votes: 120000,
    },
    {
      _id: "bc-s2",
      title: "black clover 2nd season",
      release_year: 2026,
      content_type: "tv",
      available_episodes: 9,
      myAnimeList_votes: 50000,
    },
  ];
  const s2 = pickBestAnimeRiftCandidate(items, {
    title: "Black Clover: Season 2",
    english: "Black Clover 2nd Season",
    format: "TV",
    year: 2026,
    epNum: 9,
  });
  assert.equal(s2?.item._id, "bc-s2");

  const s1 = pickBestAnimeRiftCandidate(items, {
    title: "Black Clover",
    english: "Black Clover",
    format: "TV",
    year: 2017,
    epNum: 50,
  });
  assert.equal(s1?.item._id, "bc-s1");
});

test("buildRiftSearchQueries deduplicates and skips pure CJK titles", () => {
  const qs = buildRiftSearchQueries({
    title: "Ore dake Level Up na Ken",
    english: "Solo Leveling",
    titles: ["俺だけレベルアップな件", "Solo Leveling"],
  });
  assert.deepEqual(qs, ["Ore dake Level Up na Ken", "Solo Leveling"]);
});

test("parseAnimeRiftEpisodeSources extracts CR2 sub, BBZ sub, and CR2 dub while ignoring STP/foreign", () => {
  const payload = {
    sources: [
      { _id: "h1", provider: "cr2", server_name: "CR2", sub_title: "ar_sub", qualities: ["1080P"] },
      { _id: "h2", provider: "cr2", server_name: "CR2", sub_title: "ar_sub", qualities: ["720P"] },
      { _id: "h3", provider: "cr2", server_name: "CR2", sub_title: "ar_sub", qualities: ["360P"] },
      { _id: "h4", provider: "bkbz", server_name: "BBZ", sub_title: "ar_sub", qualities: ["720P"] },
      { _id: "h5", provider: "cr2", server_name: "CR2", sub_title: "ar_dub", qualities: ["1080P", "720P"] },
      { _id: "h6", provider: "streamtape", server_name: "STP", sub_title: "ar_sub", qualities: ["720P"] },
      { _id: "h7", provider: "animeworld_realtime", server_name: "ANW", sub_title: "it_sub", qualities: ["1080P"] },
    ],
  };
  const parsed = parseAnimeRiftEpisodeSources(payload);
  assert.deepEqual(parsed.availableQualities, {
    [ANIMERIFT_SITE_CR2]: ["1080p", "720p", "360p"],
    [ANIMERIFT_SITE_BBZ]: ["720p"],
    [ANIMERIFT_SITE_CR2_DUB]: ["1080p", "720p"],
  });
  assert.equal(selectRiftHostForQuality(parsed.bySite[ANIMERIFT_SITE_CR2], "720p")?.hostId, "h2");
  assert.equal(selectRiftHostForQuality(parsed.bySite[ANIMERIFT_SITE_CR2], "480p")?.hostId, "h3");
});

test("normalizeRiftDirectLink handles MP4 vs HLS and strips empty headers", () => {
  const mp4 = normalizeRiftDirectLink({
    site: ANIMERIFT_SITE_CR2,
    directLinkJson: {
      videoUrl: "https://videos.seznamzoho.xyz/abc/9/ar_sub/720p/v1/master.mp4",
      http_headers: null,
    },
    requestedQuality: "720p",
  });
  assert.equal(mp4?.directType, "mp4");
  assert.equal(mp4?.isHls, false);
  assert.equal(mp4?.quality, "720p");
  assert.equal(mp4?.headers, undefined);

  const hls = normalizeRiftDirectLink({
    site: ANIMERIFT_SITE_BBZ,
    directLinkJson: {
      videoUrl: "https://bksegs.randomblackout.xyz/abc/9/ar_sub/1080p/v1/index.m3u8",
      http_headers: { Referer: "https://example.com/", Empty: "" },
    },
    requestedQuality: "1080p",
  });
  assert.equal(hls?.directType, "hls");
  assert.equal(hls?.isHls, true);
  assert.deepEqual(hls?.headers, { Referer: "https://example.com/" });
});

test("pickAnimeRiftEpisode matches exact episode number and movie fallback", () => {
  const eps = [
    { _id: "e1", episode_number: 1 },
    { _id: "e9", episode_number: 9 },
  ];
  assert.equal(pickAnimeRiftEpisode(eps, 9)?._id, "e9");
  assert.equal(pickAnimeRiftEpisode(eps, 12), null);
  assert.equal(pickAnimeRiftEpisode([{ _id: "m1", episode_number: 0 }], 1)?._id, "m1");
});

test("rate limit Retry-After and 403 ACCESS_DENIED cooldown behave safely", () => {
  assert.equal(parseRiftRetryAfterMs("12", ""), 12_000);
  assert.equal(parseRiftRetryAfterMs(null, "Please wait 2 minutes"), 60_000);
  assert.equal(parseRiftRetryAfterMs(null, ""), 5_000);
  const now = 1_700_000_000_000;
  assert.equal(computeRiftCooldownUntil(403, '{"errorCode":"ACCESS_DENIED"}', now), now + 3_600_000);
  assert.equal(computeRiftCooldownUntil(403, '{"errorCode":"DEVICE_INVALID"}', now), 0);
});

import test from "node:test";
import assert from "node:assert/strict";
import {
  extractInnerSubtitleUrl,
  extractSubtitleTracksFromHlsManifest,
  collectExternalSubtitleCandidates,
  subtitleTrackPathForVideo,
  selectOfflineSubtitleTrack,
  getAvailableOfflineSubLangs,
} from "./offlineSubtitleLogic.mjs";

test("extractInnerSubtitleUrl unwraps translate-vtt wrapper to raw English URL", () => {
  const inner = "https://cdn.example.com/subs/ep1-en.vtt";
  const wrapped = `https://animenovaa.duckdns.org/api/anime/translate-vtt?url=${encodeURIComponent(inner)}&from=en&to=ar`;
  assert.equal(extractInnerSubtitleUrl(wrapped), inner);
  assert.equal(extractInnerSubtitleUrl(inner), inner);
});

test("extractSubtitleTracksFromHlsManifest discovers BOTH Arabic and English HLS renditions", () => {
  const m3u8 = `#EXTM3U
#EXT-X-MEDIA:TYPE=SUBTITLES,GROUP-ID="subs",NAME="English",LANGUAGE="en",DEFAULT=YES,URI="subs/en/index.m3u8"
#EXT-X-MEDIA:TYPE=SUBTITLES,GROUP-ID="subs",NAME="Arabic",LANGUAGE="ara",DEFAULT=NO,URI="subs/ar/index.m3u8"
#EXT-X-MEDIA:TYPE=SUBTITLES,GROUP-ID="subs",NAME="Spanish",LANGUAGE="es",URI="subs/es/index.m3u8"
#EXT-X-STREAM-INF:BANDWIDTH=1200000,SUBTITLES="subs"
video/720p.m3u8`;
  const tracks = extractSubtitleTracksFromHlsManifest(m3u8, "https://cdn.site/hls/master.m3u8");
  assert.equal(tracks.length, 3);
  assert.equal(tracks[0].lang, "ar");
  assert.equal(tracks[0].url, "https://cdn.site/hls/subs/ar/index.m3u8");
  assert.equal(tracks[1].lang, "en");
  assert.equal(tracks[1].url, "https://cdn.site/hls/subs/en/index.m3u8");
});

test("collectExternalSubtitleCandidates gathers both Arabic translated and raw English tracks", () => {
  const rawEn = "https://cdn.site/en.vtt";
  const translated = `https://animenovaa.duckdns.org/api/anime/translate-vtt?url=${encodeURIComponent(rawEn)}&from=en&to=ar`;
  const list = collectExternalSubtitleCandidates({
    subtitleUrl: translated,
    baseUrl: "https://animenovaa.duckdns.org",
  });
  assert.equal(list.length, 2);
  assert.equal(list[0].lang, "ar");
  assert.equal(list[0].url, translated);
  assert.equal(list[1].lang, "en");
  assert.equal(list[1].url, rawEn);
});

test("collectExternalSubtitleCandidates handles separate arabic + englishSubtitleUrl", () => {
  const list = collectExternalSubtitleCandidates({
    subtitleUrl: "https://dl.opensubtitles.org/ar/123",
    englishSubtitleUrl: "https://cdn.site/ep-en.vtt",
    baseUrl: "https://animenovaa.duckdns.org",
  });
  assert.deepEqual(list.map((c) => c.lang), ["ar", "en"]);
  assert.equal(list[0].url, "https://dl.opensubtitles.org/ar/123");
  assert.equal(list[1].url, "https://cdn.site/ep-en.vtt");
});

test("subtitleTrackPathForVideo builds per-language sidecar paths cleanly", () => {
  assert.equal(subtitleTrackPathForVideo("file:///dl/ep1.ts", "ar"), "file:///dl/ep1_ar.vtt");
  assert.equal(subtitleTrackPathForVideo("file:///dl/ep1.mp4", "en"), "file:///dl/ep1_en.vtt");
});

test("selectOfflineSubtitleTrack switches between offline ar and en cleanly", () => {
  const tracks = [
    { lang: "ar", label: "عربي", localPath: "file:///dl/ep1_ar.vtt" },
    { lang: "en", label: "English", localPath: "file:///dl/ep1_en.vtt" },
  ];
  assert.deepEqual(getAvailableOfflineSubLangs(tracks), ["ar", "en"]);
  assert.equal(selectOfflineSubtitleTrack(tracks, undefined, "ar")?.uri, "file:///dl/ep1_ar.vtt");
  assert.equal(selectOfflineSubtitleTrack(tracks, undefined, "en")?.uri, "file:///dl/ep1_en.vtt");
  assert.equal(selectOfflineSubtitleTrack(undefined, "file:///dl/legacy.vtt", "ar")?.uri, "file:///dl/legacy.vtt");
  assert.equal(selectOfflineSubtitleTrack(undefined, "file:///dl/legacy.vtt", "en", true), null);
});

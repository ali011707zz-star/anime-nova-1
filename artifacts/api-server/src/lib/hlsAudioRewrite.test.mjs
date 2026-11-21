import test from "node:test";
import assert from "node:assert/strict";
import { hasEnglishHlsAudio, selectHlsPreferredAudio } from "./hlsAudioRewrite.mjs";

const SAMPLE_FLIXCLOUD_M3U8 = [
  "#EXTM3U",
  "#EXT-X-VERSION:3",
  '#EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="audio",LANGUAGE="jpn",NAME="Native",DEFAULT=YES,AUTOSELECT=YES,URI="https://cdn.example/jpn.m3u8"',
  '#EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="audio",LANGUAGE="eng",NAME="English",DEFAULT=NO,AUTOSELECT=YES,URI="https://cdn.example/eng.m3u8"',
  '#EXT-X-STREAM-INF:BANDWIDTH=5184,RESOLUTION=1920x1080,AUDIO="audio"',
  "https://cdn.example/video1080.m3u8",
].join("\n");

test("hasEnglishHlsAudio detects English dub audio track", () => {
  assert.equal(hasEnglishHlsAudio(SAMPLE_FLIXCLOUD_M3U8), true);
  assert.equal(
    hasEnglishHlsAudio('#EXTM3U\n#EXT-X-MEDIA:TYPE=AUDIO,LANGUAGE="jpn",NAME="Native",DEFAULT=YES,URI="jpn.m3u8"'),
    false,
  );
});

test("selectHlsPreferredAudio promotes English track to first & DEFAULT=YES and demotes Japanese", () => {
  const rewritten = selectHlsPreferredAudio(SAMPLE_FLIXCLOUD_M3U8, "eng");
  const lines = rewritten.split("\n");
  assert.match(lines[2], /LANGUAGE="eng"/);
  assert.match(lines[2], /DEFAULT=YES/);
  assert.match(lines[2], /AUTOSELECT=YES/);
  assert.match(lines[3], /LANGUAGE="jpn"/);
  assert.match(lines[3], /DEFAULT=NO/);
  assert.match(lines[3], /AUTOSELECT=NO/);
});

test("selectHlsPreferredAudio leaves manifest untouched when preferredAudio is empty or missing", () => {
  assert.equal(selectHlsPreferredAudio(SAMPLE_FLIXCLOUD_M3U8, ""), SAMPLE_FLIXCLOUD_M3U8);
  assert.equal(selectHlsPreferredAudio(SAMPLE_FLIXCLOUD_M3U8, "sub"), SAMPLE_FLIXCLOUD_M3U8);
});

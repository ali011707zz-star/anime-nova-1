import test from "node:test";
import assert from "node:assert/strict";
import {
  classifyEgyWatchServer,
  pickBestEgyWatchMatch,
  parseExtractedMediaLinks,
  isJapaneseAnimeRaw,
  isUnreleasedDate,
  isAsianSeriesSummary,
  normalizeEgyTitle,
} from "./egyWatchLogic.mjs";

test("classifyEgyWatchServer maps servers to approved EG/TK/UQ/EB/VS codes and skips dead Google hosts", () => {
  assert.equal(classifyEgyWatchServer({ server: "VIP Fast", link: "https://faselhd.io/player?x=1" })?.code, "EG");
  assert.equal(classifyEgyWatchServer({ server: "Server Turki", link: "https://eisk.badmoussi.com/api/servers?id=54856&type=episode" })?.code, "TK");
  assert.equal(classifyEgyWatchServer({ server: "Server Turki", link: "https://eisk.badmoussi.com/api/servers?id=54856&type=episode" })?.mode, "turki_api");
  assert.equal(classifyEgyWatchServer({ server: "Uqload", link: "https://uqload.net/embed-abc.html" })?.code, "UQ");
  assert.equal(classifyEgyWatchServer({ server: "Egybest 720p", link: "https://egybestvid.com/xy8kl.m3u8", hls: 1 })?.code, "EB");
  assert.equal(classifyEgyWatchServer({ server: "Egybest 720p", link: "https://egybestvid.com/xy8kl.m3u8", hls: 1 })?.mode, "direct");
  assert.equal(classifyEgyWatchServer({ server: "vidspeed سرفر", link: "https://vidspeed.org/embed-abc.html" })?.code, "VS");
  assert.equal(classifyEgyWatchServer({ server: "Server Google", link: "https://googlefasV.com/abc" }), null);
  assert.equal(classifyEgyWatchServer({ server: "Egybest MP4", link: "https://googlefasD.com/abc" }), null);
});

test("pickBestEgyWatchMatch prioritizes exact tmdb_id and respects dubbed vs subbed preference", () => {
  const candidates = [
    { id: 5676, name: "حب بلا حدود مترجم", type: "Serie", tmdb_id: 231100 },
    { id: 536, name: "حب بلا حدود مدبلج", type: "Anime", tmdb_id: 231100 },
    { id: 9999, name: "مسلسل مختلف", type: "Serie", tmdb_id: 11111 },
  ];
  const subPick = pickBestEgyWatchMatch(candidates, {
    tmdbId: 231100,
    tmdbType: "tv",
    titleAr: "حب بلا حدود",
    preferDubbed: false,
  });
  assert.equal(subPick?.id, 5676);
  assert.equal(subPick?.ewType, "serie");

  const dubPick = pickBestEgyWatchMatch(candidates, {
    tmdbId: 231100,
    tmdbType: "tv",
    titleAr: "حب بلا حدود",
    preferDubbed: true,
  });
  assert.equal(dubPick?.id, 536);
  assert.equal(dubPick?.ewType, "anime");
});

test("parseExtractedMediaLinks handles Server Turki double-encoded JSON, mawdhou3 JSON, and JWPlayer HTML", () => {
  const turkiRaw = JSON.stringify({
    data: [
      {
        id: 0,
        name: "سيرفر سريع",
        data: JSON.stringify({ url: "https://hls.3isk.beauty/abc/master.m3u8" }),
      },
    ],
  });
  const turkiLinks = parseExtractedMediaLinks(turkiRaw);
  assert.equal(turkiLinks.length, 1);
  assert.equal(turkiLinks[0].url, "https://hls.3isk.beauty/abc/master.m3u8");
  assert.equal(turkiLinks[0].kind, "hls");

  const mawdhou3Raw = JSON.stringify({
    filtered_content: ["https://cdn.example.com/1080.m3u8", "https://cdn.example.com/720.mp4"],
    Quality: ["1080p", "720p"],
  });
  const mLinks = parseExtractedMediaLinks(mawdhou3Raw);
  assert.equal(mLinks.length, 2);
  assert.equal(mLinks[0].quality, "1080p");
  assert.equal(mLinks[1].kind, "direct");

  const jwHtml = `sources: [{file:"https://s1.example.com/video.mp4",label:"720p"}]`;
  const jwLinks = parseExtractedMediaLinks(jwHtml);
  assert.equal(jwLinks.length, 1);
  assert.equal(jwLinks[0].url, "https://s1.example.com/video.mp4");
});

test("content hygiene helpers block Japanese anime, unreleased movies, and Asian dramas in Western series", () => {
  assert.equal(isJapaneseAnimeRaw({ original_language: "ja", original_title: "千と千尋の神隠し" }), true);
  assert.equal(isJapaneseAnimeRaw({ original_language: "en", origin_country: ["JP"], original_title: "Demon Slayer" }), true);
  assert.equal(isJapaneseAnimeRaw({ original_language: "en", origin_country: ["US"], original_title: "Coco" }), false);

  assert.equal(isUnreleasedDate("2026-12-19", "2026-11-28"), true);
  assert.equal(isUnreleasedDate("2027-06-15", "2026-11-28"), true);
  assert.equal(isUnreleasedDate("2026-11-28", "2026-11-28"), false);
  assert.equal(isUnreleasedDate("2024-05-01", "2026-11-28"), false);

  assert.equal(isAsianSeriesSummary({ categoryLabel: "مسلسلات آسيوية", titleAr: "فخ يدعى الرغبة" }), true);
  assert.equal(isAsianSeriesSummary({ categoryLabel: "مسلسلات أجنبية", titleAr: "가족관계증명서" }), true);
  assert.equal(isAsianSeriesSummary({ categoryLabel: "مسلسلات أجنبية", titleAr: "Breaking Bad", originalLanguage: "en" }), false);

  assert.equal(normalizeEgyTitle("مسلسل الطائر الرفراف مترجم"), "الطائر الرفراف");
});

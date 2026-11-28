import test from "node:test";
import assert from "node:assert/strict";
import {
  classifyEgyWatchServer,
  detectQualityFromM3u8,
  isAsianSeriesSummary,
  isDirectPlayableMediaUrl,
  isJapaneseAnimeRaw,
  isUnreleasedDate,
  normalizeEgyTitle,
  parseExtractedMediaLinks,
  pickBestEgyWatchMatch,
  unpackPackedJs,
} from "./egyWatchLogic.mjs";

test("classifyEgyWatchServer blocks dead hosts and NEVER marks HTML pages as direct even when hls=1", () => {
  // Dead / CF-blocked / 404 hosts must return null
  assert.equal(classifyEgyWatchServer({ server: "VIP Fast", link: "https://www.fasel-hd.com/?p=221937", hls: 1 }), null);
  assert.equal(classifyEgyWatchServer({ server: "Server Egy", link: "https://vidtube.one/82mw4oact3ya.html", hls: 1 }), null);
  assert.equal(classifyEgyWatchServer({ server: "StreamWish", link: "https://streamwish.fun/e/abc", hls: 1 }), null);
  assert.equal(classifyEgyWatchServer({ server: "Filelions", link: "https://earnvids.xyz/v/abc", hls: 1 }), null);
  assert.equal(classifyEgyWatchServer({ server: "Server Google", link: "https://googlefasV.com/xyz", hls: 0 }), null);

  // Working HTML embeds with hls=1 MUST be mode="embed", NOT mode="direct"
  const ebEmbed = classifyEgyWatchServer({ server: "CimaBox 720p", link: "https://egybestvid.com/embed-xy8kl4et0ghw.html", hls: 1 });
  assert.equal(ebEmbed?.code, "EB");
  assert.equal(ebEmbed?.mode, "embed");

  const vsEmbed = classifyEgyWatchServer({ server: "Server Fast", link: "https://v.vidsp.net/zsbalvsok35x.html", hls: 1 });
  assert.equal(vsEmbed?.code, "VS");
  assert.equal(vsEmbed?.mode, "embed");

  // True .m3u8 direct URL IS mode="direct"
  const ebDirect = classifyEgyWatchServer({ server: "Egybest 720p", link: "https://egybestvid.com/xy8kl4et0ghw.m3u8", hls: 1 });
  assert.equal(ebDirect?.code, "EB");
  assert.equal(ebDirect?.mode, "direct");

  // Working high-quality hosts
  assert.equal(classifyEgyWatchServer({ server: "Server StreamRuby", link: "https://stmruby.com/e/abc" })?.code, "EG");
  assert.equal(classifyEgyWatchServer({ server: "Server 1Vid", link: "https://1vid.xyz/embed-abc.html" })?.code, "EB");
  assert.equal(classifyEgyWatchServer({ server: "Mp4plus", link: "https://mp4plus.org/embed-abc.html" })?.code, "EB");
  assert.equal(classifyEgyWatchServer({ server: "Server Turki", link: "https://eisk.badmoussi.com/api/servers?id=1" })?.code, "TK");
  assert.equal(classifyEgyWatchServer({ server: "Uqload", link: "https://uqload.is/embed-abc.html" })?.code, "UQ");
});

test("parseExtractedMediaLinks skips Server Turki isDirect:false embeds and unpacks p,a,c,k,e,d JS", () => {
  const turkiJson = JSON.stringify({
    data: [
      { name: "سيرفر سريع", data: JSON.stringify({ url: "https://hls.3isk.beauty/abc/master.m3u8", isDirect: true }) },
      { name: "سيرفر 1", data: JSON.stringify({ url: "https://3iskk.xyz/embed/1/72146/2/", isDirect: false }) },
    ],
  });
  const turkiLinks = parseExtractedMediaLinks(turkiJson);
  assert.equal(turkiLinks.length, 1);
  assert.equal(turkiLinks[0].url, "https://hls.3isk.beauty/abc/master.m3u8");
  assert.equal(turkiLinks[0].kind, "hls");

  // Unpack Dean Edwards packed block containing JWPlayer sources
  const packed = `eval(function(p,a,c,k,e,d){while(c--)if(k[c])p=p.replace(new RegExp('\\\\b'+c.toString(a)+'\\\\b','g'),k[c]);return p;}('0:[{1:"2://3.4/5/6.7"}]',8,8,'sources|file|https|cdn|test|hls2|master|m3u8'.split('|')))`;
  assert.match(unpackPackedJs(packed), /https:\/\/cdn\.test\/hls2\/master\.m3u8/);
  const unpackedLinks = parseExtractedMediaLinks(packed);
  assert.equal(unpackedLinks.length, 1);
  assert.equal(unpackedLinks[0].url, "https://cdn.test/hls2/master.m3u8");
  assert.equal(isDirectPlayableMediaUrl("https://3iskk.xyz/embed/1/2/"), false);
  assert.equal(isDirectPlayableMediaUrl("https://vidtube.one/abc.html"), false);
});

test("detectQualityFromM3u8 accurately distinguishes 4K, 1080p (incl. CinemaScope), 720p, and 480p", () => {
  assert.equal(detectQualityFromM3u8("#EXTM3U\n#EXT-X-STREAM-INF:RESOLUTION=1920x1080\na.m3u8"), "1080p");
  assert.equal(detectQualityFromM3u8("#EXTM3U\n#EXT-X-STREAM-INF:RESOLUTION=1920x800\na.m3u8"), "1080p");
  assert.equal(detectQualityFromM3u8("#EXTM3U\n#EXT-X-STREAM-INF:RESOLUTION=1280x720\na.m3u8"), "720p");
  assert.equal(detectQualityFromM3u8("#EXTM3U\n#EXT-X-STREAM-INF:RESOLUTION=854x480\na.m3u8\n#EXT-X-STREAM-INF:RESOLUTION=640x360\nb.m3u8"), "480p");
  assert.equal(detectQualityFromM3u8("#EXTM3U\n#EXT-X-STREAM-INF:RESOLUTION=640x360\na.m3u8"), "480p");
});

test("normalizeEgyTitle, matching, and content hygiene helpers work", () => {
  assert.equal(normalizeEgyTitle("مسلسل الطائر الرفراف مترجم"), "الطائر الرفراف");
  const best = pickBestEgyWatchMatch(
    [
      { id: 74, type: "serie", name: "المؤسس عثمان", tmdb_id: 95603 },
      { id: 69, type: "anime", name: "المؤسس عثمان مدبلج", tmdb_id: 95603 },
    ],
    { tmdbId: 95603, tmdbType: "tv", titleAr: "المؤسس عثمان", preferDubbed: true },
  );
  assert.equal(best?.id, 69);
  assert.equal(isJapaneseAnimeRaw({ original_language: "ja" }), true);
  assert.equal(isJapaneseAnimeRaw({ original_language: "en" }), false);
  assert.equal(isUnreleasedDate("2027-05-01", "2026-11-28"), true);
  assert.equal(isAsianSeriesSummary({ categoryLabel: "مسلسلات آسيوية" }), true);
});

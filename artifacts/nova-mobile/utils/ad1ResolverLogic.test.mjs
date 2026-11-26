import test from "node:test";
import assert from "node:assert/strict";
import {
  buildAnime4upEpisodeCandidates,
  extractAnime4upEpisodeMeta,
  extractAnime4upEpisodeUrlFromSeriesHtml,
  extractAnime4upSeriesUrlFromSearchHtml,
  selectPreferredAd1Mirrors,
} from "./ad1ResolverLogic.mjs";

test("extractAnime4upEpisodeMeta extracts episodeId and prioritizes megamax over other servers while skipping AD 2", () => {
  const html = `
    <script>const episodeId = 7888;</script>
    <ul id="episode-servers">
      <li data-watch="d08c7cfcc987e857"><a href="#">anime4up1 متعدد الجودات</a></li>
      <li data-watch="fed899c90658a825"><a href="#">anime4up2 متعدد الجودات</a></li>
      <li data-watch="ce5cc81f0e668b94"><a href="#">megamax 2 متعدد الجودات</a></li>
      <li data-watch="f1267c63807010be"><a href="#">megamax FHD</a></li>
      <li data-watch="8d63d5c38b468e56"><a href="#">uqload FHD</a></li>
    </ul>
  `;
  const meta = extractAnime4upEpisodeMeta(html);
  assert.equal(meta.episodeId, "7888");
  assert.equal(meta.servers.length, 3);
  assert.equal(meta.servers[0].watchValue, "ce5cc81f0e668b94");
  assert.equal(meta.servers[0].isDirectUrl, false);
  assert.equal(meta.servers[1].watchValue, "f1267c63807010be");
});

test("buildAnime4upEpisodeCandidates generates deduplicated episode URLs", () => {
  const urls = buildAnime4upEpisodeCandidates({ title: "One Piece", english: "One Piece", epNum: 7 });
  assert.equal(urls.length, 2);
  assert.ok(urls[0].includes("one-piece-"));
});

test("extractAnime4upSeriesUrlFromSearchHtml and EpisodeUrl resolve series -> episode", () => {
  const searchHtml = '<a href="https://old.anime4up.site/anime/one-piece/">One Piece</a>';
  const seriesUrl = extractAnime4upSeriesUrlFromSearchHtml(searchHtml, "One Piece", "One Piece");
  assert.equal(seriesUrl, "https://w1.anime4up.rest/anime/one-piece/");

  const seriesHtml = '<a href="https://old.anime4up.site/episode/one-piece-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9-7/">Ep 7</a>';
  const epUrl = extractAnime4upEpisodeUrlFromSeriesHtml(seriesHtml, 7);
  assert.equal(epUrl, "https://w1.anime4up.rest/episode/one-piece-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9-7/");
});

test("selectPreferredAd1Mirrors ranks requested quality & reliable mirrors first", () => {
  const streams = [
    {
      label: "1080p (source)",
      mirrors: [
        { driver: "streamhg", link: "//streamwish.to/e/abc" },
        { driver: "voe", link: "//voe.sx/e/xyz" },
        { driver: "fileupload", link: "//file-upload.org/e/bad" },
      ],
    },
    {
      label: "720p",
      mirrors: [
        { driver: "ok", link: "//ok.ru/videoembed/12345" },
      ],
    },
  ];
  const ranked1080 = selectPreferredAd1Mirrors(streams, "1080p", false);
  assert.equal(ranked1080[0].embedUrl, "https://voe.sx/e/xyz");
  assert.equal(ranked1080[0].quality, "1080p");

  const ranked720 = selectPreferredAd1Mirrors(streams, "720p", true);
  assert.equal(ranked720[0].embedUrl, "https://ok.ru/videoembed/12345");
  assert.equal(ranked720[0].hostKind, "okru");
});

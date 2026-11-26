import test from "node:test";
import assert from "node:assert/strict";
import {
  parseDonghuaCatalogHtml,
  parseDonghuaDetailHtml,
  parseDonghuaEpisodeMirrors,
  parseOkRuEmbedHtml,
  parseOdyseeEmbedHtml,
  parseStreamRubyEmbedHtml,
  extractDailymotionVideoId,
  parseDailymotionMetadata,
  selectBestOpenSubtitleMatch,
  convertSubtitleToVtt,
} from "./donghuaLogic.mjs";

test("parseDonghuaCatalogHtml parses AnimeXin and AnimeKhor series cards", () => {
  const html = `
    <article class="bs">
      <div class="bsx">
        <a href="https://animexin.dev/renegade-immortal/" title="Renegade Immortal">
          <div class="limit">
            <div class="typez ONA">ONA</div>
            <div class="bt"><span class="epx">Ongoing</span></div>
            <img src="https://animexin.dev/img/ri.jpg" />
          </div>
          <div class="tt">Renegade Immortal</div>
        </a>
      </div>
    </article>
  `;
  const items = parseDonghuaCatalogHtml(html, "animexin");
  assert.equal(items.length, 1);
  assert.equal(items[0].slug, "renegade-immortal");
  assert.equal(items[0].title, "Renegade Immortal");
  assert.equal(items[0].poster, "https://animexin.dev/img/ri.jpg");
  assert.equal(items[0].status, "Ongoing");
});

test("parseDonghuaDetailHtml extracts episodes, genres, and clean synopsis", () => {
  const html = `
    <h1 class="entry-title">Renegade Immortal - AnimeXin</h1>
    <div class="thumb"><img src="https://animexin.dev/ri.jpg" /></div>
    <div class="entry-content"><p>English</p><p>Wang Lin seeks immortality.</p><p>Indonesian</p><p>Indo text</p></div>
    <div class="genxed"><a href="#">Action</a><a href="#">Fantasy</a></div>
    <div class="eplister"><ul>
      <li><a href="https://animexin.dev/renegade-immortal-episode-168-sub/"><div class="epl-num">168</div><div class="epl-title">Episode 168</div><div class="epl-date">Nov 22</div></a></li>
    </ul></div>
  `;
  const detail = parseDonghuaDetailHtml(html, "animexin", "https://animexin.dev/renegade-immortal/");
  assert.equal(detail.title, "Renegade Immortal");
  assert.equal(detail.synopsis, "Wang Lin seeks immortality.");
  assert.deepEqual(detail.genres, ["Action", "Fantasy"]);
  assert.equal(detail.episodes.length, 1);
  assert.equal(detail.episodes[0].number, 168);
});

test("parseDonghuaEpisodeMirrors decodes base64 iframes and classifies hosts", () => {
  const dm = Buffer.from('<iframe src="https://geo.dailymotion.com/player/xhojl.html?video=k2xex5qq"></iframe>').toString("base64");
  const ok = Buffer.from('<iframe src="//ok.ru/videoembed/123456?nochat=1"></iframe>').toString("base64");
  const sr = Buffer.from('<iframe src="https://nuvorel.top/embed-abc.html"></iframe>').toString("base64");
  const html = `
    <option value="${dm}">All Sub Player Dailymotion AX</option>
    <option value="${ok}">Hardsub English Ok.ru AX</option>
    <option value="${sr}">Player [MULTI SUB]</option>
  `;
  const mirrors = parseDonghuaEpisodeMirrors(html);
  assert.equal(mirrors.length, 3);
  assert.equal(mirrors[0].host, "dailymotion_allsub");
  assert.equal(extractDailymotionVideoId(mirrors[0].embedUrl), "k2xex5qq");
  assert.equal(mirrors[1].host, "okru");
  assert.equal(mirrors[1].embedUrl, "https://ok.ru/videoembed/123456?nochat=1");
  assert.equal(mirrors[2].host, "streamruby");
});

test("parseOkRuEmbedHtml, parseOdyseeEmbedHtml, parseStreamRubyEmbedHtml, parseDailymotionMetadata extract direct media & subs", () => {
  const okPayload = JSON.stringify({
    flashvars: {
      metadata: JSON.stringify({
        hlsManifestUrl: "https://vd.okcdn.ru/hls.m3u8",
        videos: [{ name: "full", url: "https://vd.okcdn.ru/1080.mp4" }, { name: "hd", url: "https://vd.okcdn.ru/720.mp4" }],
      }),
    },
  }).replace(/"/g, "&quot;");
  const ok = parseOkRuEmbedHtml(`<div data-options="${okPayload}"></div>`);
  assert.equal(ok.hlsUrl, "https://vd.okcdn.ru/hls.m3u8");
  assert.equal(ok.videos[0].quality, "1080p");

  const od = parseOdyseeEmbedHtml(`{"contentUrl":"https:\\/\\/player.odycdn.com\\/api\\/v3\\/streams\\/free\\/ep1.mp4"}`);
  assert.equal(od, "https://player.odycdn.com/api/v3/streams/free/ep1.mp4");

  const sr = parseStreamRubyEmbedHtml(`sources:[{file:"https://cdn.streamruby.net/master.m3u8"}],tracks:[{file:"https://cdn.streamruby.net/ar.vtt",label:"Arabic"}]`);
  assert.equal(sr.m3u8, "https://cdn.streamruby.net/master.m3u8");
  assert.equal(sr.tracks[0].isArabic, true);

  const dm = parseDailymotionMetadata({
    qualities: { auto: [{ url: "https://cdn.dm.com/master.m3u8" }] },
    subtitles: { data: { ar: { urls: ["https://static.dm.net/sub_ar.srt"] } } },
  });
  assert.equal(dm.arabicSubUrl, "https://static.dm.net/sub_ar.srt");
});

test("selectBestOpenSubtitleMatch prefers human Arabic subtitles and strips .gz", () => {
  const results = [
    {
      SubFileName: "LEGO.ONE.PIECE.S01E01.srt",
      MovieName: '"Lego One Piece" Ep 1',
      SubFormat: "srt",
      SubEncoding: "UTF-8",
      SubLanguageID: "ara",
      SubAutoTranslation: "0",
      SeriesSeason: "1",
      SeriesEpisode: "1",
      SubDownloadsCnt: "200",
      SubDownloadLink: "https://dl.opensubtitles.org/en/download/filead/111.gz",
    },
    {
      SubFileName: "Solo.Leveling.S01E01.AR.srt",
      MovieName: '"Solo Leveling" I\'m Used to It',
      SubFormat: "srt",
      SubEncoding: "UTF-8",
      SubLanguageID: "ara",
      SubAutoTranslation: "0",
      SubFromTrusted: "1",
      SeriesSeason: "1",
      SeriesEpisode: "1",
      SubDownloadsCnt: "91000",
      SubDownloadLink: "https://dl.opensubtitles.org/en/download/filead/222.gz",
    },
    {
      SubFileName: "Solo.Leveling.S01E01.AUTO.srt",
      MovieName: '"Solo Leveling"',
      SubFormat: "srt",
      SubEncoding: "UTF-8",
      SubLanguageID: "ara",
      SubAutoTranslation: "1",
      SeriesSeason: "1",
      SeriesEpisode: "1",
      SubDownloadsCnt: "50",
      SubDownloadLink: "https://dl.opensubtitles.org/en/download/filead/333.gz",
    },
  ];
  const best = selectBestOpenSubtitleMatch(results, { title: "Solo Leveling", episode: 1, season: 1 });
  assert.ok(best);
  assert.equal(best.url, "https://dl.opensubtitles.org/en/download/filead/222");
  assert.equal(best.isHuman, true);
});

test("convertSubtitleToVtt converts both SRT (comma timestamps) and ASS/SSA to valid WEBVTT", () => {
  const srt = "1\n00:00:02,060 --> 00:00:05,480\nقبل 3 سنوات\n\n2\n00:00:10,290 --> 00:00:12,200\nمرحباً";
  const vttFromSrt = convertSubtitleToVtt(srt);
  assert.ok(vttFromSrt.startsWith("WEBVTT"));
  assert.ok(vttFromSrt.includes("00:00:02.060 --> 00:00:05.480\nقبل 3 سنوات"));

  const ass = "[Script Info]\n[Events]\nDialogue: 0,0:00:01.02,0:00:04.50,Default,,0,0,0,,{\\an8}سطر أول\\Nسطر ثاني";
  const vttFromAss = convertSubtitleToVtt(ass);
  assert.ok(vttFromAss.startsWith("WEBVTT"));
  assert.ok(vttFromAss.includes("00:00:01.020 --> 00:00:04.500\nسطر أول\nسطر ثاني"));
});

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

import {
  matchDonghuaCatalogItemByTitle,
  pickDonghuaEpisodeByNumber,
  normalizeAndSortSubtitleCues,
} from "./donghuaLogic.mjs";

test("matchDonghuaCatalogItemByTitle matches AniList title/synonym and avoids movie mismatch", () => {
  const items = [
    { id: "ax:1", source: "animexin", slug: "renegade-immortal-movie", url: "https://animexin.dev/renegade-immortal-movie/", title: "Renegade Immortal Movie: Slaying the Blood Progenitor", poster: "", status: "Completed", type: "Movie" },
    { id: "ax:2", source: "animexin", slug: "renegade-immortal", url: "https://animexin.dev/renegade-immortal/", title: "Renegade Immortal", poster: "", status: "Ongoing", type: "ONA" },
  ];
  const matched = matchDonghuaCatalogItemByTitle(items, ["Xian Ni", "Renegade Immortal"]);
  assert.ok(matched);
  assert.equal(matched.slug, "renegade-immortal");
});

test("pickDonghuaEpisodeByNumber selects exact episode or single movie entry", () => {
  const eps = [
    { number: 3, numberLabel: "3", title: "Ep 3", date: "", url: "u3" },
    { number: 2, numberLabel: "2", title: "Ep 2", date: "", url: "u2" },
    { number: 1, numberLabel: "1", title: "Ep 1", date: "", url: "u1" },
  ];
  assert.equal(pickDonghuaEpisodeByNumber(eps, 2)?.url, "u2");
  assert.equal(pickDonghuaEpisodeByNumber(eps, 99), null);
});

test("normalizeAndSortSubtitleCues sorts out-of-order ASS cues and keeps ranges binary-search safe", () => {
  const cues = [
    { start: 10, end: 13, text: "السطر الثاني" },
    { start: 2, end: 6, text: "السطر الأول" },
    { start: 2.05, end: 5, text: "ملاحظة متزامنة" },
    { start: 5, end: 8, text: "السطر المتداخل" },
  ];
  const sorted = normalizeAndSortSubtitleCues(cues);
  assert.equal(sorted.length, 3);
  assert.equal(sorted[0].start, 2);
  assert.ok(sorted[0].text.includes("السطر الأول") && sorted[0].text.includes("ملاحظة متزامنة"));
  assert.equal(sorted[0].end, 5);
  assert.equal(sorted[1].start, 5);
  assert.equal(sorted[2].start, 10);
});
import {
  DONGHUA_EXCLUDED_ANIME_SITES,
  isAllowedSlotForDonghua,
  filterReleasedBrowseMedia,
  formatMediaTitleHierarchy,
  rankDonghuaCatalogCandidates,
} from "./donghuaLogic.mjs";

test("isAllowedSlotForDonghua blocks fuzzy Arabic-anime scrapers (AF/AW/SA/FX/AD1/AD2) and allows DX 1/DX 2/KW/MP/RE", () => {
  assert.equal(isAllowedSlotForDonghua("animeify"), false);
  assert.equal(isAllowedSlotForDonghua("animewitcher"), false);
  assert.equal(isAllowedSlotForDonghua("sanime"), false);
  assert.equal(isAllowedSlotForDonghua("anifox"), false);
  assert.equal(isAllowedSlotForDonghua("anime4up2_hard"), false);
  assert.equal(isAllowedSlotForDonghua("anime4up2"), false);
  assert.equal(isAllowedSlotForDonghua("donghua_ax"), true);
  assert.equal(isAllowedSlotForDonghua("donghua_ak"), true);
  assert.equal(isAllowedSlotForDonghua("kawaii"), true);
  assert.equal(isAllowedSlotForDonghua("megaplay"), true);
  assert.equal(isAllowedSlotForDonghua("reflix"), true);
});

test("filterReleasedBrowseMedia excludes NOT_YET_RELEASED, CANCELLED, and future 2027 titles", () => {
  const input = [
    { id: 1, status: "RELEASING", startDate: { year: 2025 } },
    { id: 2, status: "NOT_YET_RELEASED", startDate: { year: 2027 } },
    { id: 3, status: "FINISHED", startDate: { year: 2027 } },
    { id: 4, status: "CANCELLED", startDate: { year: 2024 } },
  ];
  const released = filterReleasedBrowseMedia(input, { currentYear: 2026 });
  assert.deepEqual(released.map((x) => x.id), [1]);
  assert.equal(filterReleasedBrowseMedia(input, { allowUnreleased: true }).length, 4);
});

test("formatMediaTitleHierarchy orders English primary, Arabic middle, Original bottom", () => {
  const h = formatMediaTitleHierarchy({
    english: "Lord of Mysteries",
    romaji: "Guimi Zhi Zhu: Xiaochou Pian",
    native: "诡秘之主",
    arabic: "لورد الغوامض",
  });
  assert.equal(h.primary, "Lord of Mysteries");
  assert.equal(h.arabic, "لورد الغوامض");
  assert.equal(h.original, "Guimi Zhi Zhu: Xiaochou Pian · 诡秘之主");
});

test("rankDonghuaCatalogCandidates returns multiple ranked matches and rejects movie hijacks", () => {
  const items = [
    { id: "ax:1", source: "animexin", slug: "kings-avatar-movie", url: "u1", title: "The King's Avatar Movie For The Glory", poster: "", status: "", type: "Movie" },
    { id: "ak:2", source: "animekhor", slug: "immortal-king-2", url: "u2", title: "The Daily Life of the Immortal King Season 2", poster: "", status: "", type: "ONA" },
  ];
  const ka = rankDonghuaCatalogCandidates(items, ["The King's Avatar"]);
  assert.equal(ka.length, 0);
  const ik = rankDonghuaCatalogCandidates(items, ["The Daily Life of the Immortal King Season 2"]);
  assert.equal(ik.length, 1);
  assert.equal(ik[0].slug, "immortal-king-2");
});

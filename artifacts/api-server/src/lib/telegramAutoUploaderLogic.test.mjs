import test from "node:test";
import assert from "node:assert/strict";
import {
  isSafePublicMediaUrl,
  parseBatchCommand,
  parseLeechCommand,
  parseImportCommand,
  detectImplicitAutoCommand,
  extractCandidateEpisodeLinksFromHtml,
  extractDirectMediaFromEpisodeHtml,
  classifyPullErrorArabic,
  formatReplacementAlertMessage,
  buildReplacementInlineKeyboard,
} from "./telegramAutoUploaderLogic.mjs";

test("isSafePublicMediaUrl allows public HTTPS and blocks localhost/private IPs/non-http", () => {
  assert.equal(isSafePublicMediaUrl("https://cdn.example.com/ep1.mp4"), true);
  assert.equal(isSafePublicMediaUrl("http://127.0.0.1:5000/api/secret"), false);
  assert.equal(isSafePublicMediaUrl("http://localhost/admin"), false);
  assert.equal(isSafePublicMediaUrl("http://192.168.1.5/video.mp4"), false);
  assert.equal(isSafePublicMediaUrl("http://169.254.169.254/latest/meta-data/"), false);
  assert.equal(isSafePublicMediaUrl("file:///etc/passwd"), false);
});

test("parseBatchCommand parses pipe syntax, Arabic digits, and rejects missing section/suspicious title", () => {
  const ok = parseBatchCommand("/دفعة #سبيستون | دري لاند | م1 | 720p | من ٢");
  assert.equal(ok.ok, true);
  assert.equal(ok.session.section, "spacetoon");
  assert.equal(ok.session.title, "دري لاند");
  assert.equal(ok.session.season, 1);
  assert.equal(ok.session.nextEpisode, 2);
  assert.equal(ok.session.quality, "720p");
  assert.equal(ok.session.audioLang, "dub_ar");

  const badTitle = parseBatchCommand("/batch #سبيستون | تم | من 1");
  assert.equal(badTitle.ok, false);

  const noSection = parseBatchCommand("/batch دري لاند | من 2");
  assert.equal(noSection.ok, false);
});

test("parseLeechCommand parses sequential & explicitly numbered URLs and strips private URLs", () => {
  const res = parseLeechCommand(
    "/سحب #سبيستون | دري لاند | م1 | 720p | من 2\n" +
    "https://cdn.example.com/ep2.mp4\n" +
    "5: https://cdn.example.com/ep5.mp4\n" +
    "http://127.0.0.1/bad.mp4"
  );
  assert.equal(res.ok, true);
  assert.equal(res.job.section, "spacetoon");
  assert.equal(res.job.title, "دري لاند");
  assert.equal(res.job.items.length, 2);
  assert.equal(res.job.items[0].episodeNumber, 2);
  assert.equal(res.job.items[1].episodeNumber, 5);
  assert.equal(res.job.skippedInvalidCount, 1);
});

test("parseImportCommand parses built-in source range and external series URL", () => {
  const builtin = parseImportCommand("/استيراد #سبيستون | دري لاند | من 1 الى 10");
  assert.equal(builtin.ok, true);
  assert.equal(builtin.request.section, "spacetoon");
  assert.equal(builtin.request.title, "دري لاند");
  assert.equal(builtin.request.fromEp, 1);
  assert.equal(builtin.request.toEp, 10);
  assert.equal(builtin.request.sourceUrl, null);

  const ext = parseImportCommand("/import #كرتون | بن 10 | https://example.com/ben10 | 3-8");
  assert.equal(ext.ok, true);
  assert.equal(ext.request.section, "cartoon");
  assert.equal(ext.request.sourceUrl, "https://example.com/ben10");
  assert.equal(ext.request.fromEp, 3);
  assert.equal(ext.request.toEp, 8);
});

test("extractCandidateEpisodeLinksFromHtml finds numbered episode links and direct MP4/host links", () => {
  const html = `
    <a href="/watch/ep-2">الحلقة 2</a>
    <a href="/watch/ep-1">الحلقة 1</a>
    <a href="/about">عن الموقع</a>
  `;
  const links = extractCandidateEpisodeLinksFromHtml(html, "https://example.com/show");
  assert.equal(links.length, 2);
  assert.equal(links[0].episodeNumber, 1);
  assert.equal(links[0].url, "https://example.com/watch/ep-1");
  assert.equal(links[1].episodeNumber, 2);
});

test("classifyPullErrorArabic & replacement alert produce clear Arabic messages and valid callback_data", () => {
  assert.match(classifyPullErrorArabic("HTTP 403 Cloudflare challenge"), /Cloudflare/);
  assert.match(classifyPullErrorArabic("404 Not Found"), /404/);
  const msg = formatReplacementAlertMessage(
    { section: "spacetoon", title: "دري لاند", season_number: 1, episode_number: 3, source_url: "https://bad.example/ep3" },
    classifyPullErrorArabic("403"),
    4
  );
  assert.match(msg, /فشل السحب/);
  assert.match(msg, /رابطاً بديلاً/);
  const kb = buildReplacementInlineKeyboard(42);
  for (const row of kb.inline_keyboard) {
    for (const btn of row) {
      assert.ok(Buffer.byteLength(btn.callback_data, "utf8") <= 64);
    }
  }
});

test("supports mobile newline format without /import prefix and 'الي' spelling + arabic-toons #sets HTML extraction", () => {
  const userMsg = [
    "#سبيستون",
    "دري لاند",
    "من 5 الي 37",
    "https://www.arabic-toons.com/driland-1437356611-anime-streaming.html",
  ].join("\n");

  assert.equal(detectImplicitAutoCommand(userMsg), "import");

  const imp = parseImportCommand("/استيراد " + userMsg);
  assert.equal(imp.ok, true);
  assert.equal(imp.request.section, "spacetoon");
  assert.equal(imp.request.title, "دري لاند");
  assert.equal(imp.request.fromEp, 5);
  assert.equal(imp.request.toEp, 37);
  assert.equal(imp.request.sourceUrl, "https://www.arabic-toons.com/driland-1437356611-anime-streaming.html");

  const leechMsg = "#سبيستون\nدري لاند\nمن 2\nhttps://example.com/ep2.mp4";
  assert.equal(detectImplicitAutoCommand(leechMsg), "leech");

  const sampleSeriesHtml = `
    <a href="driland-1437356611-9504.html#sets">الحلقة 2</a>
    <a href="driland-1437356611-9503.html#sets"><div>1</div><span>الحلقة 1</span></a>
    <a href="driland-1437356611-9504.html#sets"><div>2</div><span>الحلقة 2</span></a>
    <a href="driland-1437356611-9507.html#sets"><div>5</div><span>الحلقة 5</span></a>
  `;
  const eps = extractCandidateEpisodeLinksFromHtml(
    sampleSeriesHtml,
    "https://www.arabic-toons.com/driland-1437356611-anime-streaming.html"
  );
  assert.equal(eps.length, 3);
  assert.deepEqual(
    eps.map((e) => [e.episodeNumber, e.url]),
    [
      [1, "https://www.arabic-toons.com/driland-1437356611-9503.html"],
      [2, "https://www.arabic-toons.com/driland-1437356611-9504.html"],
      [5, "https://www.arabic-toons.com/driland-1437356611-9507.html"],
    ]
  );

  const epHtml = `<video><source src="https://stream.foupix.com:8443/animeios_4/1437356611/driland_05.mp4?tkn=abc&amp;ua=123" type="video/mp4"></video>`;
  const media = extractDirectMediaFromEpisodeHtml(epHtml, "https://www.arabic-toons.com/driland-1437356611-9507.html");
  assert.equal(media?.kind, "mp4");
  assert.equal(media?.url, "https://stream.foupix.com:8443/animeios_4/1437356611/driland_05.mp4?tkn=abc&ua=123");
});

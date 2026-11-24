import test from "node:test";
import assert from "node:assert/strict";
import {
  normalizeDownloadMethodPref,
  isAdmAvailableOnDevice,
  isSiteStaticallyEligibleForAdm,
  resolveAdmDirectMp4,
  buildAdmFileName,
  buildAdmIntentUrls,
} from "./admDownloadLogic.mjs";

test("isAdmAvailableOnDevice hides ADM on TV mode, iOS, and Web", () => {
  assert.equal(isAdmAvailableOnDevice({ platformOs: "android", tvMode: false }), true);
  assert.equal(isAdmAvailableOnDevice({ platformOs: "android", tvMode: true }), false);
  assert.equal(isAdmAvailableOnDevice({ platformOs: "ios", tvMode: false }), false);
  assert.equal(isAdmAvailableOnDevice({ platformOs: "web", tvMode: false }), false);
});

test("normalizeDownloadMethodPref defaults safely to ask", () => {
  assert.equal(normalizeDownloadMethodPref("adm"), "adm");
  assert.equal(normalizeDownloadMethodPref("internal"), "internal");
  assert.equal(normalizeDownloadMethodPref("ask"), "ask");
  assert.equal(normalizeDownloadMethodPref("unknown"), "ask");
  assert.equal(normalizeDownloadMethodPref(null), "ask");
});

test("isSiteStaticallyEligibleForAdm blocks NOVA VIP, Spacetoon/Carateen, SAnime, Kawaii", () => {
  assert.equal(isSiteStaticallyEligibleForAdm("nova_tg"), false);
  assert.equal(isSiteStaticallyEligibleForAdm("nova_tg_dub"), false);
  assert.equal(isSiteStaticallyEligibleForAdm("nova_vip"), false);
  assert.equal(isSiteStaticallyEligibleForAdm("sanime"), false);
  assert.equal(isSiteStaticallyEligibleForAdm("kawaii"), false);
  assert.equal(isSiteStaticallyEligibleForAdm("dubbed_sp_1080", "sp"), false);
  assert.equal(isSiteStaticallyEligibleForAdm("dubbed_carateen_720", "carateen"), false);
  assert.equal(isSiteStaticallyEligibleForAdm("any", "arabic-toons"), false);

  assert.equal(isSiteStaticallyEligibleForAdm("animewitcher"), true);
  assert.equal(isSiteStaticallyEligibleForAdm("anifox"), true);
  assert.equal(isSiteStaticallyEligibleForAdm("animeify"), true);
  assert.equal(isSiteStaticallyEligibleForAdm("anime4up2_hard"), true);
  assert.equal(isSiteStaticallyEligibleForAdm("dubbed_sd2_1", "sd2"), true);
  assert.equal(isSiteStaticallyEligibleForAdm("dubbed_az_1", "az"), true);
  assert.equal(isSiteStaticallyEligibleForAdm("stardima_42"), true);
});

test("resolveAdmDirectMp4 allows external Pixeldrain & MediaFire CDN & direct MP4 via unwrapped video-proxy", () => {
  // AW Dubbed Pixeldrain wrapped in video-proxy -> unwraps to external pixeldrain with 0 VPS load
  const pd = resolveAdmDirectMp4({
    site: "animewitcher",
    url: "https://animenovaa.duckdns.org/api/anime/video-proxy?url=https%3A%2F%2Fpixeldrain.com%2Fapi%2Ffile%2FAbC123xy&ref=https%3A%2F%2Fanimenovaa.duckdns.org",
    directType: "mp4",
  });
  assert.equal(pd.eligible, true);
  assert.equal(pd.directUrl, "https://pixeldrain.com/api/file/AbC123xy");

  // MediaFire direct CDN MP4
  const mf = resolveAdmDirectMp4({
    site: "animeify",
    url: "https://animenovaa.duckdns.org/api/anime/video-proxy?url=https%3A%2F%2Fdownload2391.mediafire.com%2Fabcdef123456%2Fxyz%2Fep10.mp4&ref=https%3A%2F%2Fwww.mediafire.com%2F",
    directType: "mp4",
  });
  assert.equal(mf.eligible, true);
  assert.equal(mf.directUrl, "https://download2391.mediafire.com/abcdef123456/xyz/ep10.mp4");

  // Archive.org direct MP4
  const arch = resolveAdmDirectMp4({
    site: "anifox",
    rawUrl: "https://archive.org/download/anime-ep-1/episode1.mp4",
    directType: "mp4",
  });
  assert.equal(arch.eligible, true);
  assert.equal(arch.directUrl, "https://archive.org/download/anime-ep-1/episode1.mp4");
});

test("resolveAdmDirectMp4 detects /api/aw-dubbed/mf-stream for zero-load JSON resolve", () => {
  const res = resolveAdmDirectMp4({
    site: "animewitcher",
    url: "https://animenovaa.duckdns.org/api/aw-dubbed/mf-stream?link=https%3A%2F%2Fwww.mediafire.com%2Ffile%2Fabc123%2Fep1.mp4%2Ffile",
  });
  assert.equal(res.eligible, false);
  assert.equal(res.needsMfResolve, true);
  assert.equal(res.mfLink, "https://www.mediafire.com/file/abc123/ep1.mp4/file");
});

test("resolveAdmDirectMp4 strictly rejects VPS streams, HLS, IP-bound CDNs, custom UA, and HTML pages", () => {
  // 1. NOVA VIP Telegram stream
  assert.equal(
    resolveAdmDirectMp4({
      site: "nova_vip",
      url: "https://animenovaa.duckdns.org/api/tg-media/stream/42?dl=1",
    }).eligible,
    false,
  );
  // Even without site tag, /api/tg-media/ is strictly rejected
  assert.equal(
    resolveAdmDirectMp4({
      url: "https://animenovaa.duckdns.org/api/tg-media/stream/42",
    }).eligible,
    false,
  );

  // 2. HLS .m3u8
  assert.equal(
    resolveAdmDirectMp4({
      site: "anime4up2_hard",
      url: "https://cdn.example.com/master.m3u8",
      directType: "hls",
    }).eligible,
    false,
  );
  assert.equal(
    resolveAdmDirectMp4({
      site: "dubbed_sd2_1",
      rawUrl: "https://cdn.example.com/hls/ep1/index.m3u8",
    }).eligible,
    false,
  );

  // 3. Arabic-Toons foupix IP-bound MP4
  assert.equal(
    resolveAdmDirectMp4({
      site: "dubbed_1",
      rawUrl: "https://stream.foupix.com:8443/v/driland_05.mp4?tkn=abc&ips=95.182.93.105",
      directType: "mp4",
    }).eligible,
    false,
  );

  // 4. SAnime custom UA video-proxy
  assert.equal(
    resolveAdmDirectMp4({
      site: "animewitcher", // even if site weren't sanime, &ua= rejects it
      url: "https://animenovaa.duckdns.org/api/anime/video-proxy?url=https%3A%2F%2Fcdn.other.com%2Fep1.mp4&ua=CustomAppUA",
      directType: "mp4",
    }).eligible,
    false,
  );

  // 5. Encrypted opaque video-proxy URL
  assert.equal(
    resolveAdmDirectMp4({
      site: "dubbed_sd2_1",
      url: "https://animenovaa.duckdns.org/api/anime/video-proxy?url=enc_a1b2c3d4e5f6&ref=enc_9988",
      directType: "mp4",
    }).eligible,
    false,
  );

  // 6. MediaFire HTML landing page (not direct download CDN)
  assert.equal(
    resolveAdmDirectMp4({
      site: "anifox",
      rawUrl: "https://www.mediafire.com/file/xyz123/video.mp4/file",
      directType: "mp4",
    }).eligible,
    false,
  );

  // 7. Embed page
  assert.equal(
    resolveAdmDirectMp4({
      site: "animeify",
      rawUrl: "https://filemoon.sx/e/abc123",
      isEmbed: true,
    }).eligible,
    false,
  );

  // 8. Own VPS /api/anime/download-mp4
  assert.equal(
    resolveAdmDirectMp4({
      site: "dubbed_az_1",
      url: "https://animenovaa.duckdns.org/api/anime/download-mp4?url=https%3A%2F%2Fcdn.example.com%2Fep1.mp4",
    }).eligible,
    false,
  );
});

test("buildAdmFileName & buildAdmIntentUrls produce clean filenames and ADM standard+pro intents", () => {
  const fn = buildAdmFileName({ title: "One Piece: Egghead / Arc", ep: 1100, quality: "1080p FHD" });
  assert.equal(fn, "One_Piece_Egghead_Arc_EP1100_1080PFHD.mp4");

  const intents = buildAdmIntentUrls("https://pixeldrain.com/api/file/AbC123xy", fn);
  assert.equal(intents.length, 2);
  assert.match(intents[0], /^intent:\/\/pixeldrain\.com\/api\/file\/AbC123xy#Intent;scheme=https;action=android\.intent\.action\.VIEW;type=video\/mp4;package=com\.dv\.adm;/);
  assert.match(intents[1], /package=com\.dv\.adm\.pay;/);
  assert.match(intents[0], /S\.com\.android\.extra\.filename=One_Piece_Egghead_Arc_EP1100_1080PFHD\.mp4;/);
});

test("resolveAdmDirectMp4 strictly rejects Streamtape/host HTML landing pages even when URL ends in .mp4", () => {
  const st = resolveAdmDirectMp4({
    site: "animewitcher",
    url: "https://animenovaa.duckdns.org/api/anime/video-proxy?url=https%3A%2F%2Fstreamtape.com%2Fv%2Fz7rZjrdKVBhyOA%2F10_Lives_2024_1080p.mp4&ref=https%3A%2F%2Fanimenovaa.duckdns.org",
    directType: "mp4",
  });
  assert.equal(st.eligible, false);

  const vPage = resolveAdmDirectMp4({
    site: "anifox",
    rawUrl: "https://somehost.example/v/abc123/episode_1.mp4",
    directType: "mp4",
  });
  assert.equal(vPage.eligible, false);
});

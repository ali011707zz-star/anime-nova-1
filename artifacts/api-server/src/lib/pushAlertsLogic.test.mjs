import test from "node:test";
import assert from "node:assert/strict";
import {
  DEFAULT_LEGACY_CHANNEL_ID,
  UPGRADED_ALERT_CHANNEL_ID,
  resolveDeviceChannelId,
  parseCartoonAlertKey,
  detectNewEpisodesByWatermark,
  buildFcmAndroidConfig,
} from "./pushAlertsLogic.mjs";

test("resolveDeviceChannelId preserves upgraded channel and falls back safely for legacy devices", () => {
  assert.equal(resolveDeviceChannelId("nova-alerts-v2"), UPGRADED_ALERT_CHANNEL_ID);
  assert.equal(resolveDeviceChannelId(null), DEFAULT_LEGACY_CHANNEL_ID);
  assert.equal(resolveDeviceChannelId("invalid channel!"), DEFAULT_LEGACY_CHANNEL_ID);
});

test("parseCartoonAlertKey parses sp, carateen, and sd2 keys cleanly", () => {
  assert.deepEqual(parseCartoonAlertKey("sp:1251"), { provider: "sp", showId: "1251" });
  assert.deepEqual(parseCartoonAlertKey("carateen:99"), { provider: "carateen", showId: "99" });
  assert.deepEqual(parseCartoonAlertKey("sd2:happy-hammer"), { provider: "sd2", slug: "happy-hammer" });
  assert.equal(parseCartoonAlertKey("16498"), null);
});

test("detectNewEpisodesByWatermark seeds silently first, then detects brand-new epIds including specials", () => {
  const initial = [
    { epId: "101", number: 1, title: "Ep 1" },
    { epId: "102", number: 2, title: "Ep 2" },
  ];
  const seed = detectNewEpisodesByWatermark(null, initial);
  assert.equal(seed.isSeed, true);
  assert.equal(seed.newEpisodes.length, 0);

  const same = detectNewEpisodesByWatermark(seed.nextState, initial);
  assert.equal(same.isSeed, false);
  assert.equal(same.newEpisodes.length, 0);

  const updated = detectNewEpisodesByWatermark(seed.nextState, [
    ...initial,
    { epId: "999", number: 1, title: "Special" },
    { epId: "103", number: 3, title: "Ep 3" },
  ]);
  assert.equal(updated.newEpisodes.length, 2);
  assert.deepEqual(updated.newEpisodes.map((e) => e.epId), ["999", "103"]);
});

test("buildFcmAndroidConfig uses default_sound without conflicting sound=default and honors channelId+tag", () => {
  const cfg = buildFcmAndroidConfig({
    channelId: "nova-alerts-v2",
    sound: "default",
    tag: "bell:dubbed:sp:1251:3",
    richContent: { image: "https://cdn.example.com/poster.jpg" },
  });
  assert.equal(cfg.priority, "HIGH");
  assert.equal(cfg.direct_boot_ok, true);
  assert.equal(cfg.notification.channel_id, "nova-alerts-v2");
  assert.equal(cfg.notification.default_sound, true);
  assert.equal("sound" in cfg.notification, false);
  assert.equal(cfg.notification.default_vibrate_timings, true);
  assert.equal(cfg.notification.default_light_settings, true);
  assert.equal(cfg.notification.notification_priority, "PRIORITY_MAX");
  assert.equal(cfg.notification.visibility, "PUBLIC");
  assert.equal(cfg.notification.tag, "bell:dubbed:sp:1251:3");
});

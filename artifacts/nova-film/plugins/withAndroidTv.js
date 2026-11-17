const { withAndroidManifest } = require("@expo/config-plugins");

/**
 * Keep the regular Android phone build unchanged while making the same APK
 * discoverable on Android TV. Leanback is optional so phones and tablets can
 * still install the app, and the runtime chooses the landscape TV layout.
 */
module.exports = function withAndroidTv(config) {
  return withAndroidManifest(config, (modConfig) => {
    const manifest = modConfig.modResults.manifest;
    const features = manifest["uses-feature"] || [];

    const upsertFeature = (name, required) => {
      const existing = features.find(
        (feature) => feature?.$?.["android:name"] === name,
      );
      if (existing) {
        existing.$["android:required"] = required;
      } else {
        features.push({
          $: {
            "android:name": name,
            "android:required": required,
          },
        });
      }
    };

    upsertFeature("android.software.leanback", "false");
    upsertFeature("android.hardware.touchscreen", "false");
    manifest["uses-feature"] = features;

    const app = manifest.application?.[0];
    if (app) {
      app.$ = app.$ || {};
      if (!app.$["android:banner"]) {
        app.$["android:banner"] = "@mipmap/ic_launcher";
      }

      const activities = app.activity || [];
      const mainActivity =
        activities.find((act) =>
          String(act?.$?.["android:name"] || "").endsWith("MainActivity"),
        ) || activities[0];

      if (mainActivity) {
        mainActivity["intent-filter"] = mainActivity["intent-filter"] || [];
        let mainLauncherFilter = mainActivity["intent-filter"].find((filter) =>
          (filter.action || []).some(
            (a) => a?.$?.["android:name"] === "android.intent.action.MAIN",
          ),
        );

        if (!mainLauncherFilter) {
          mainLauncherFilter = {
            action: [{ $: { "android:name": "android.intent.action.MAIN" } }],
            category: [],
          };
          mainActivity["intent-filter"].push(mainLauncherFilter);
        }

        mainLauncherFilter.category = mainLauncherFilter.category || [];
        const ensureCategory = (catName) => {
          const hasCat = mainLauncherFilter.category.some(
            (c) => c?.$?.["android:name"] === catName,
          );
          if (!hasCat) {
            mainLauncherFilter.category.push({
              $: { "android:name": catName },
            });
          }
        };

        ensureCategory("android.intent.category.LAUNCHER");
        ensureCategory("android.intent.category.LEANBACK_LAUNCHER");
      }
    }

    return modConfig;
  });
};
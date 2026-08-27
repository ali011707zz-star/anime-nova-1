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
    return modConfig;
  });
};
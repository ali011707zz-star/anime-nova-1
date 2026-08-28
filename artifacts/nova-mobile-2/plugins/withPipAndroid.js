const { withAndroidManifest } = require("@expo/config-plugins");

module.exports = function withPipAndroid(config) {
  return withAndroidManifest(config, (config) => {
    const application = config.modResults.manifest.application?.[0];
    if (!application) return config;
    application.$ = application.$ || {};
    application.$["android:supportsPictureInPicture"] = "true";
    application.$["android:resizeableActivity"] = "true";
    return config;
  });
};
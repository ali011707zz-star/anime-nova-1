const { withMainApplication } = require("@expo/config-plugins");

const MARKER = "NovaBroadcastGuard";

const KOTLIN_GUARD = `    // ${MARKER}: Prevent background SDK thread exceptions (Firebase, LevelPlay, Android 12 broadcast bug)
    // from terminating the main application process.
    val novaPreviousUncaughtHandler = Thread.getDefaultUncaughtExceptionHandler()
    Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
      val isMainThread = thread === android.os.Looper.getMainLooper().thread
      val isAndroidBroadcastDeliveryBug =
        throwable.javaClass.simpleName == "CannotDeliverBroadcastException" &&
          throwable.message?.lowercase(java.util.Locale.ROOT)?.contains("can't deliver broadcast") == true
      if (isAndroidBroadcastDeliveryBug || (!isMainThread && throwable !is java.lang.Error)) {
        android.util.Log.w(
          "${MARKER}",
          "Ignored non-fatal or background thread exception on " + thread.name,
          throwable,
        )
      } else {
        novaPreviousUncaughtHandler?.uncaughtException(thread, throwable) ?: throw throwable
      }
    }`;

module.exports = function withAndroidBroadcastGuard(config) {
  return withMainApplication(config, (modConfig) => {
    let contents = modConfig.modResults.contents;
    if (contents.includes(MARKER)) return modConfig;
    if (contents.includes("super.onCreate()")) {
      contents = contents.replace("super.onCreate()", `super.onCreate()\n${KOTLIN_GUARD}`);
    }
    modConfig.modResults.contents = contents;
    return modConfig;
  });
};

const { withMainApplication } = require("@expo/config-plugins");

const MARKER = "NovaBroadcastDeliveryGuard";

const KOTLIN_GUARD = `
    // ${MARKER}: Android 12 Pixel can report a framework-only broadcast
    // delivery failure as an uncaught app exception. Do not hide any other
    // exception from the original handler.
    val novaPreviousUncaughtHandler = Thread.getDefaultUncaughtExceptionHandler()
    Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
      val isAndroidBroadcastDeliveryBug =
        throwable.javaClass.simpleName == "CannotDeliverBroadcastException" &&
          throwable.message?.contains("can't deliver broadcast", ignoreCase = true) == true
      if (isAndroidBroadcastDeliveryBug) {
        android.util.Log.w(
          "${MARKER}",
          "Ignored Android framework broadcast delivery failure",
          throwable,
        )
      } else {
        novaPreviousUncaughtHandler?.uncaughtException(thread, throwable) ?: throw throwable
      }
    }
`;

const JAVA_GUARD = `
    // ${MARKER}: Android 12 Pixel can report a framework-only broadcast
    // delivery failure as an uncaught app exception. Do not hide any other
    // exception from the original handler.
    final Thread.UncaughtExceptionHandler novaPreviousUncaughtHandler =
        Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
      @Override
      public void uncaughtException(Thread thread, Throwable throwable) {
        boolean isAndroidBroadcastDeliveryBug =
            "CannotDeliverBroadcastException".equals(throwable.getClass().getSimpleName()) &&
            throwable.getMessage() != null &&
            throwable.getMessage().toLowerCase(java.util.Locale.ROOT)
                .contains("can't deliver broadcast");
        if (isAndroidBroadcastDeliveryBug) {
          android.util.Log.w(
              "${MARKER}",
              "Ignored Android framework broadcast delivery failure",
              throwable);
        } else if (novaPreviousUncaughtHandler != null) {
          novaPreviousUncaughtHandler.uncaughtException(thread, throwable);
        } else {
          throw new RuntimeException(throwable);
        }
      }
    });
`;

module.exports = function withAndroidBroadcastGuard(config) {
  return withMainApplication(config, (modConfig) => {
    let contents = modConfig.modResults.contents;
    if (contents.includes(MARKER)) return modConfig;

    if (contents.includes("super.onCreate()")) {
      contents = contents.replace("super.onCreate()", `super.onCreate()\n${KOTLIN_GUARD}`);
    } else if (contents.includes("super.onCreate();")) {
      contents = contents.replace("super.onCreate();", `super.onCreate();\n${JAVA_GUARD}`);
    } else {
      throw new Error(
        "withAndroidBroadcastGuard: could not find MainApplication.onCreate()",
      );
    }

    modConfig.modResults.contents = contents;
    return modConfig;
  });
};
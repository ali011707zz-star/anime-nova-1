const fs = require("fs");
const path = require("path");
const {
  withAndroidManifest,
  withDangerousMod,
  withMainApplication,
} = require("@expo/config-plugins");

const MAIN_APP_MARKER = "NovaMainProcessGuard";
const SENTRY_NATIVE_MARKER = "NovaNativeBackgroundAnrGuard";

const IS_MAIN_PROCESS_HELPER_KT = `  // ${MAIN_APP_MARKER}: Secondary processes (such as :player for IsolatedPlayerActivity)
  // must not initialize React Native, Hermes, or Expo ApplicationLifecycleDispatcher,
  // avoiding wasted RAM and background startup ANRs on low-memory devices.
  private fun novaIsMainProcess(): Boolean {
    val procName = if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.P) {
      android.app.Application.getProcessName()
    } else {
      try {
        val pid = android.os.Process.myPid()
        val am = getSystemService(android.content.Context.ACTIVITY_SERVICE) as? android.app.ActivityManager
        am?.runningAppProcesses?.firstOrNull { it.pid == pid }?.processName
      } catch (_: Throwable) {
        null
      }
    }
    return procName.isNullOrEmpty() || procName == packageName
  }
`;

function patchMainApplicationKt(contents) {
  if (contents.includes(MAIN_APP_MARKER)) return contents;

  // Guard heavy React Native & Expo initialization inside onCreate()
  const onCreateBodyRegex =
    /(override\s+fun\s+onCreate\s*\(\s*\)\s*\{[\s\S]*?super\.onCreate\(\)(?:[ \t]*\n(?:[ \t]*\/\/.*\n|[ \t]*val\s+novaPreviousUncaughtHandler[\s\S]*?\n[ \t]*\}\n)?))([\s\S]*?)(\n\s*\}\s*\n\s*override\s+fun\s+onConfigurationChanged)/;

  if (onCreateBodyRegex.test(contents)) {
    contents = contents.replace(
      onCreateBodyRegex,
      (_, prefix, body, suffix) => {
        const trimmedBody = body.trim();
        if (!trimmedBody) return prefix + body + suffix;
        const indented = trimmedBody
          .split("\n")
          .map((line) => (line.trim() ? "      " + line.replace(/^\s{4}/, "") : ""))
          .join("\n");
        return `${prefix}
    if (novaIsMainProcess()) {
${indented}
    }${suffix}`;
      },
    );
  } else if (contents.includes("loadReactNative(this)")) {
    contents = contents.replace(
      "loadReactNative(this)",
      "if (novaIsMainProcess()) {\n      loadReactNative(this)",
    );
    contents = contents.replace(
      "ApplicationLifecycleDispatcher.onApplicationCreate(this)",
      "ApplicationLifecycleDispatcher.onApplicationCreate(this)\n    }",
    );
  }

  // Guard onConfigurationChanged for secondary processes too
  contents = contents.replace(
    /(\n\s*)(ApplicationLifecycleDispatcher\.onConfigurationChanged\(this,\s*newConfig\))/,
    "$1if (novaIsMainProcess()) {\n$1  $2\n$1}",
  );

  // Add novaIsMainProcess() helper before class closing brace
  const classEnd = contents.lastIndexOf("}");
  if (classEnd >= 0) {
    contents =
      contents.slice(0, classEnd) +
      "\n" +
      IS_MAIN_PROCESS_HELPER_KT +
      contents.slice(classEnd);
  }

  return contents;
}

function patchSentryNativeStart(projectRoot) {
  const target = path.resolve(
    projectRoot,
    "node_modules/@sentry/react-native/android/src/main/java/io/sentry/react/RNSentryStart.java",
  );
  if (!fs.existsSync(target)) return;

  let contents = fs.readFileSync(target, "utf8");
  if (contents.includes(SENTRY_NATIVE_MARKER)) return;

  const anchor = "setEventOriginTag(event);";
  if (!contents.includes(anchor)) return;

  const guardSnippet = `setEventOriginTag(event);
          // ${SENTRY_NATIVE_MARKER}: Native AppExitInfo (AnrV2Integration) events
          // are submitted directly by SentryAndroid on SentryExecutorServiceThreadFactory
          // and bypass JavaScript beforeSend(). Filter OS Background ANRs here.
          java.util.List<io.sentry.protocol.SentryException> novaExceptions = event.getExceptions();
          if (novaExceptions != null) {
            for (io.sentry.protocol.SentryException novaEx : novaExceptions) {
              if (novaEx != null
                  && "ApplicationNotResponding".equals(novaEx.getType())
                  && novaEx.getValue() != null
                  && novaEx.getValue().contains("Background ANR")) {
                return null;
              }
            }
          }
          io.sentry.protocol.App novaAppCtx = event.getContexts().getApp();
          if (novaAppCtx != null
              && Boolean.FALSE.equals(novaAppCtx.getInForeground())
              && novaExceptions != null) {
            for (io.sentry.protocol.SentryException novaEx : novaExceptions) {
              if (novaEx != null && "ApplicationNotResponding".equals(novaEx.getType())) {
                return null;
              }
            }
          }`;

  contents = contents.replace(anchor, guardSnippet);
  fs.writeFileSync(target, contents, "utf8");
}

module.exports = function withAndroidAnrGuard(config) {
  let cfg = withMainApplication(config, (modConfig) => {
    if (modConfig.modResults?.language === "kt") {
      modConfig.modResults.contents = patchMainApplicationKt(
        modConfig.modResults.contents,
      );
    }
    return modConfig;
  });

  cfg = withAndroidManifest(cfg, (modConfig) => {
    const app = modConfig.modResults.manifest.application?.[0];
    if (app) {
      app.$ = app.$ || {};
      app.$["android:largeHeap"] = "true";

      app["meta-data"] = app["meta-data"] || [];
      const upsertMeta = (name, value) => {
        const existing = app["meta-data"].find(
          (item) => item?.$?.["android:name"] === name,
        );
        if (existing) {
          existing.$["android:value"] = value;
        } else {
          app["meta-data"].push({
            $: {
              "android:name": name,
              "android:value": value,
            },
          });
        }
      };
      upsertMeta("io.sentry.anr.timeout-interval-millis", "8000");
    }
    return modConfig;
  });

  cfg = withDangerousMod(cfg, [
    "android",
    (modConfig) => {
      try {
        patchSentryNativeStart(modConfig.modRequest.projectRoot);
      } catch (err) {
        console.warn("[withAndroidAnrGuard] skipped RNSentryStart patch:", err?.message || err);
      }
      return modConfig;
    },
  ]);

  return cfg;
};

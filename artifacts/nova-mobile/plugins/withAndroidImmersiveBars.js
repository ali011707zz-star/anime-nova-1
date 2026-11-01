const { withMainActivity } = require("@expo/config-plugins");

const MARKER = "NOVA_PHONE_IMMERSIVE_SYSTEM_BARS";

const KOTLIN_METHODS = `
  // ${MARKER}: Keep phone system bars hidden; swipe gestures may reveal them temporarily.
  private fun novaIsTvDevice(): Boolean {
    if (packageManager.hasSystemFeature(android.content.pm.PackageManager.FEATURE_LEANBACK)) {
      return true
    }

    val uiModeType = resources.configuration.uiMode and
      android.content.res.Configuration.UI_MODE_TYPE_MASK
    if (uiModeType == android.content.res.Configuration.UI_MODE_TYPE_TELEVISION) {
      return true
    }

    val metrics = resources.displayMetrics
    val density = metrics.density.coerceAtLeast(1f)
    val widthDp = metrics.widthPixels / density
    val heightDp = metrics.heightPixels / density
    return maxOf(widthDp, heightDp) >= 900f && minOf(widthDp, heightDp) >= 500f
  }

  @Suppress("DEPRECATION")
  private fun novaHidePhoneSystemBars() {
    if (novaIsTvDevice()) return

    if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
      window.insetsController?.let { controller ->
        controller.hide(android.view.WindowInsets.Type.systemBars())
        controller.systemBarsBehavior =
          android.view.WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
      }
    } else {
      window.decorView.systemUiVisibility = (
        android.view.View.SYSTEM_UI_FLAG_LAYOUT_STABLE
          or android.view.View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
          or android.view.View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
          or android.view.View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
          or android.view.View.SYSTEM_UI_FLAG_FULLSCREEN
          or android.view.View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
      )
    }
  }

  override fun onWindowFocusChanged(hasFocus: Boolean) {
    super.onWindowFocusChanged(hasFocus)
    if (hasFocus) novaHidePhoneSystemBars()
  }
`;

const JAVA_METHODS = `
  // ${MARKER}: Keep phone system bars hidden; swipe gestures may reveal them temporarily.
  private boolean novaIsTvDevice() {
    if (getPackageManager().hasSystemFeature(android.content.pm.PackageManager.FEATURE_LEANBACK)) {
      return true;
    }

    int uiModeType = getResources().getConfiguration().uiMode
        & android.content.res.Configuration.UI_MODE_TYPE_MASK;
    if (uiModeType == android.content.res.Configuration.UI_MODE_TYPE_TELEVISION) {
      return true;
    }

    android.util.DisplayMetrics metrics = getResources().getDisplayMetrics();
    float density = Math.max(metrics.density, 1f);
    float widthDp = metrics.widthPixels / density;
    float heightDp = metrics.heightPixels / density;
    return Math.max(widthDp, heightDp) >= 900f && Math.min(widthDp, heightDp) >= 500f;
  }

  @SuppressWarnings("deprecation")
  private void novaHidePhoneSystemBars() {
    if (novaIsTvDevice()) return;

    if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
      android.view.WindowInsetsController controller = getWindow().getInsetsController();
      if (controller != null) {
        controller.hide(android.view.WindowInsets.Type.systemBars());
        controller.setSystemBarsBehavior(
            android.view.WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE);
      }
    } else {
      getWindow().getDecorView().setSystemUiVisibility(
          android.view.View.SYSTEM_UI_FLAG_LAYOUT_STABLE
              | android.view.View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
              | android.view.View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
              | android.view.View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
              | android.view.View.SYSTEM_UI_FLAG_FULLSCREEN
              | android.view.View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
    }
  }

  @Override
  public void onWindowFocusChanged(boolean hasFocus) {
    super.onWindowFocusChanged(hasFocus);
    if (hasFocus) novaHidePhoneSystemBars();
  }
`;

function patchMainActivity(modResults) {
  let contents = modResults.contents;
  if (contents.includes(MARKER)) return contents;

  const isKotlin =
    modResults.language === "kt" || /\bfun\s+onCreate\s*\(/.test(contents);
  const isJava =
    modResults.language === "java" || /\bvoid\s+onCreate\s*\(/.test(contents);
  if (!isKotlin && !isJava) {
    throw new Error("withAndroidImmersiveBars: unsupported MainActivity language");
  }

  if (/onWindowFocusChanged\s*\(/.test(contents)) {
    throw new Error(
      "withAndroidImmersiveBars: MainActivity already overrides onWindowFocusChanged",
    );
  }

  const onCreateCall = /super\.onCreate\((?:null|savedInstanceState)\)(;?)/;
  if (!onCreateCall.test(contents)) {
    throw new Error("withAndroidImmersiveBars: could not find MainActivity.onCreate()");
  }

  const methods = isKotlin ? KOTLIN_METHODS : JAVA_METHODS;
  const call = isKotlin ? "novaHidePhoneSystemBars()" : "novaHidePhoneSystemBars();";
  contents = contents.replace(
    onCreateCall,
    (match) => `${match}\n    ${call}`,
  );

  const classEnd = contents.lastIndexOf("}");
  if (classEnd < 0) {
    throw new Error("withAndroidImmersiveBars: could not find MainActivity class end");
  }

  return `${contents.slice(0, classEnd)}${methods}\n${contents.slice(classEnd)}`;
}

module.exports = function withAndroidImmersiveBars(config) {
  return withMainActivity(config, (modConfig) => {
    modConfig.modResults.contents = patchMainActivity(modConfig.modResults);
    return modConfig;
  });
};
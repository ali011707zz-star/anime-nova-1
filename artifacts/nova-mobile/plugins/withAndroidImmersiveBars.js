const { withMainActivity } = require("@expo/config-plugins");

const MARKER = "NOVA_PHONE_IMMERSIVE_SYSTEM_BARS";

const KOTLIN_METHODS = `
  // ${MARKER}: Keep phone system bars hidden; fast TV focus & remote key engine.
  private var novaTvEngineInstalled = false
  private var novaDpadMode = false
  private var novaCurrentFocusedView: android.view.View? = null
  private var novaLastKeyRepeatMs = 0L
  private var novaCenterConsumed = false

  private fun novaIsTvDevice(): Boolean {
    if (packageManager.hasSystemFeature(android.content.pm.PackageManager.FEATURE_LEANBACK) ||
        packageManager.hasSystemFeature("android.hardware.type.television")) {
      return true
    }

    val uiModeType = resources.configuration.uiMode and
      android.content.res.Configuration.UI_MODE_TYPE_MASK
    if (uiModeType == android.content.res.Configuration.UI_MODE_TYPE_TELEVISION) {
      return true
    }

    val info = "${android.os.Build.MODEL ?: ""} ${android.os.Build.BRAND ?: ""} ${android.os.Build.MANUFACTURER ?: ""} ${android.os.Build.DEVICE ?: ""}".lowercase()
    return Regex("\\b(aft[a-z0-9]*|shield|mibox|mi\\s*box|chromecast|bravia|android\\s*tv|google\\s*tv|smart\\s*tv|tv\\s*box|mecool|h96|x96|tx3|t95|tanix|beelink|ugoos|onn\\.?\\s*tv)\\b").containsMatchIn(info)
  }

  private class NovaRnFocusEvent(
    surfaceId: Int,
    viewId: Int,
    private val evtName: String
  ) : com.facebook.react.uimanager.events.Event<NovaRnFocusEvent>(surfaceId, viewId) {
    override fun getEventName(): String = evtName
    override fun canCoalesce(): Boolean = false
    override fun getEventData(): com.facebook.react.bridge.WritableMap {
      return com.facebook.react.bridge.Arguments.createMap().apply {
        putInt("target", viewTag)
      }
    }
  }

  private fun novaDispatchRnFocusEvent(view: android.view.View?, isFocus: Boolean) {
    if (view == null || view.id == android.view.View.NO_ID) return
    try {
      var ctx = view.context
      while (ctx is android.content.ContextWrapper && ctx !is com.facebook.react.uimanager.ThemedReactContext) {
        ctx = ctx.baseContext
      }
      val themedCtx = ctx as? com.facebook.react.uimanager.ThemedReactContext ?: return
      val surfaceId = com.facebook.react.uimanager.UIManagerHelper.getSurfaceId(themedCtx)
      val dispatcher = com.facebook.react.uimanager.UIManagerHelper.getEventDispatcherForReactTag(themedCtx, view.id) ?: return
      val evtName = if (isFocus) "topFocus" else "topBlur"
      dispatcher.dispatchEvent(NovaRnFocusEvent(surfaceId, view.id, evtName))
    } catch (_: Throwable) {}
  }

  private fun novaScrollFocusedIntoView(view: android.view.View) {
    try {
      val rect = android.graphics.Rect(0, 0, view.width, view.height)
      val padY = (view.height * 0.25f).toInt().coerceIn(20, 72)
      rect.inset(0, -padY)
      view.requestRectangleOnScreen(rect, true)
    } catch (_: Throwable) {}
  }

  private fun novaInstallTvFocusEngine() {
    if (novaTvEngineInstalled) return
    val decor = window?.decorView as? android.view.ViewGroup ?: return
    novaTvEngineInstalled = true
    if (novaIsTvDevice()) {
      novaDpadMode = true
      decor.isFocusableInTouchMode = false
    }

    decor.viewTreeObserver.addOnGlobalFocusChangeListener { oldFocus, newFocus ->
      if (oldFocus != null) {
        novaDispatchRnFocusEvent(oldFocus, false)
      }
      novaCurrentFocusedView = newFocus
      if (newFocus != null) {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
          try { newFocus.defaultFocusHighlightEnabled = false } catch (_: Throwable) {}
        }
        novaDispatchRnFocusEvent(newFocus, true)
        if (novaDpadMode || novaIsTvDevice()) {
          novaScrollFocusedIntoView(newFocus)
        }
      }
    }
  }

  private fun novaEmitKeyEventToJs(keyCode: Int, action: Int, repeatCount: Int) {
    try {
      val app = application as? com.facebook.react.ReactApplication ?: return
      val reactContext = app.reactNativeHost.reactInstanceManager.currentReactContext ?: return
      val params = com.facebook.react.bridge.Arguments.createMap().apply {
        putInt("keyCode", keyCode)
        putInt("action", action)
        putInt("repeatCount", repeatCount)
      }
      reactContext
        .getJSModule(com.facebook.react.modules.core.DeviceEventManagerModule.RCTDeviceEventEmitter::class.java)
        ?.emit("novaTvKeyEvent", params)
    } catch (_: Throwable) {}
  }

  override fun dispatchKeyEvent(event: android.view.KeyEvent): Boolean {
    val keyCode = event.keyCode
    val isDpadOrMedia =
      keyCode == android.view.KeyEvent.KEYCODE_DPAD_UP ||
      keyCode == android.view.KeyEvent.KEYCODE_DPAD_DOWN ||
      keyCode == android.view.KeyEvent.KEYCODE_DPAD_LEFT ||
      keyCode == android.view.KeyEvent.KEYCODE_DPAD_RIGHT ||
      keyCode == android.view.KeyEvent.KEYCODE_DPAD_CENTER ||
      keyCode == android.view.KeyEvent.KEYCODE_ENTER ||
      keyCode == android.view.KeyEvent.KEYCODE_NUMPAD_ENTER ||
      keyCode == android.view.KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE ||
      keyCode == android.view.KeyEvent.KEYCODE_MEDIA_PLAY ||
      keyCode == android.view.KeyEvent.KEYCODE_MEDIA_PAUSE ||
      keyCode == android.view.KeyEvent.KEYCODE_MEDIA_FAST_FORWARD ||
      keyCode == android.view.KeyEvent.KEYCODE_MEDIA_REWIND

    if (isDpadOrMedia) {
      if (!novaDpadMode) {
        novaDpadMode = true
        window?.decorView?.isFocusableInTouchMode = false
      }
      if (event.action == android.view.KeyEvent.ACTION_DOWN) {
        val now = android.os.SystemClock.uptimeMillis()
        if (event.repeatCount == 0 || now - novaLastKeyRepeatMs >= 65L) {
          novaLastKeyRepeatMs = now
          novaEmitKeyEventToJs(keyCode, event.action, event.repeatCount)
        }
      }
      val focused = currentFocus
      val desc = focused?.contentDescription?.toString() ?: ""
      if (
        (desc == "شريط تقدم الحلقة" || desc == "مشغل الفيديو النشط" || desc == "إظهار أدوات المشغل") &&
        (keyCode == android.view.KeyEvent.KEYCODE_DPAD_LEFT || keyCode == android.view.KeyEvent.KEYCODE_DPAD_RIGHT)
      ) {
        return true
      }
      if (
        keyCode == android.view.KeyEvent.KEYCODE_DPAD_CENTER ||
        keyCode == android.view.KeyEvent.KEYCODE_ENTER ||
        keyCode == android.view.KeyEvent.KEYCODE_NUMPAD_ENTER
      ) {
        if (focused != null && focused !is android.widget.EditText) {
          if (event.action == android.view.KeyEvent.ACTION_DOWN) {
            if (event.repeatCount == 0) {
              var target: android.view.View? = focused
              var clicked = false
              while (target != null && target !== window?.decorView) {
                if (target.isClickable && target.performClick()) {
                  clicked = true
                  break
                }
                target = target.parent as? android.view.View
              }
              if (clicked) {
                novaCenterConsumed = true
                return true
              }
            } else if (novaCenterConsumed) {
              return true
            }
          } else if (event.action == android.view.KeyEvent.ACTION_UP && novaCenterConsumed) {
            novaCenterConsumed = false
            return true
          }
        }
      }
    }
    return super.dispatchKeyEvent(event)
  }

  override fun dispatchTouchEvent(ev: android.view.MotionEvent?): Boolean {
    if (ev?.action == android.view.MotionEvent.ACTION_DOWN && !novaIsTvDevice()) {
      if (novaDpadMode) {
        novaDpadMode = false
      }
    }
    return super.dispatchTouchEvent(ev)
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
    if (hasFocus) {
      novaHidePhoneSystemBars()
      novaInstallTvFocusEngine()
    }
  }
`;

function patchMainActivity(modResults) {
  let contents = modResults.contents;
  if (contents.includes(MARKER)) return contents;

  const isKotlin =
    modResults.language === "kt" || /\bfun\s+onCreate\s*\(/.test(contents);
  if (!isKotlin) {
    throw new Error("withAndroidImmersiveBars: expected Kotlin MainActivity");
  }

  const onCreateCall = /super\.onCreate\((?:null|savedInstanceState)\)(;?)/;
  if (!onCreateCall.test(contents)) {
    throw new Error("withAndroidImmersiveBars: could not find MainActivity.onCreate()");
  }

  contents = contents.replace(
    onCreateCall,
    (match) => `${match}\n    novaHidePhoneSystemBars()\n    novaInstallTvFocusEngine()`,
  );

  const classEnd = contents.lastIndexOf("}");
  if (classEnd < 0) {
    throw new Error("withAndroidImmersiveBars: could not find MainActivity class end");
  }

  return `${contents.slice(0, classEnd)}${KOTLIN_METHODS}\n${contents.slice(classEnd)}`;
}

module.exports = function withAndroidImmersiveBars(config) {
  return withMainActivity(config, (modConfig) => {
    modConfig.modResults.contents = patchMainActivity(modConfig.modResults);
    return modConfig;
  });
};
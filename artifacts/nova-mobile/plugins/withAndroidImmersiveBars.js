const { withMainActivity } = require("@expo/config-plugins");

const MARKER = "// [nova-immersive-bars-marker]";

const KOTLIN_METHODS = `
  ${MARKER}
  private var novaDpadMode = false
  private var novaTvEngineInstalled = false
  private var novaLastKeyRepeatMs = 0L
  private var novaCenterConsumed = false
  private var novaCurrentFocusedView: android.view.View? = null

  private fun novaIsTvDevice(): Boolean {
    val uiMode = (resources.configuration.uiMode and android.content.res.Configuration.UI_MODE_TYPE_MASK)
    if (uiMode == android.content.res.Configuration.UI_MODE_TYPE_TELEVISION) return true
    val pm = packageManager
    if (pm.hasSystemFeature(android.content.pm.PackageManager.FEATURE_LEANBACK)) return true
    if (pm.hasSystemFeature(android.content.pm.PackageManager.FEATURE_TELEVISION)) return true
    val device = (android.os.Build.MODEL + " " + android.os.Build.BRAND + " " + android.os.Build.MANUFACTURER).lowercase()
    return device.contains("aft") ||
      device.contains("shield") ||
      device.contains("mibox") ||
      device.contains("mi box") ||
      device.contains("chromecast") ||
      device.contains("bravia") ||
      device.contains("android tv") ||
      device.contains("google tv") ||
      device.contains("smart tv") ||
      device.contains("tv box") ||
      device.contains("mecool") ||
      device.contains("h96") ||
      device.contains("x96") ||
      device.contains("tx3") ||
      device.contains("t95") ||
      device.contains("tanix") ||
      device.contains("beelink") ||
      device.contains("ugoos") ||
      device.contains("onn")
  }

  private fun novaDispatchRnFocusEvent(view: android.view.View, focused: Boolean) {
    try {
      val app = application as? com.facebook.react.ReactApplication ?: return
      val reactContext = app.reactNativeHost.reactInstanceManager.currentReactContext ?: return
      val targetId = view.id
      if (targetId <= 0) return
      val event = if (focused) {
        com.facebook.react.views.view.ReactViewFocusEvent(
          com.facebook.react.uimanager.UIManagerHelper.getSurfaceId(reactContext),
          targetId
        )
      } else {
        com.facebook.react.views.view.ReactViewBlurEvent(
          com.facebook.react.uimanager.UIManagerHelper.getSurfaceId(reactContext),
          targetId
        )
      }
      com.facebook.react.uimanager.UIManagerHelper
        .getEventDispatcherForReactTag(reactContext, targetId)
        ?.dispatchEvent(event)
    } catch (_: Throwable) {}
  }

  private fun novaScrollFocusedIntoView(focused: android.view.View) {
    try {
      var current: android.view.ViewParent? = focused.parent
      while (current != null) {
        if (current is android.widget.ScrollView) {
          val childRect = android.graphics.Rect()
          focused.getDrawingRect(childRect)
          (current as android.view.ViewGroup).offsetDescendantRectToMyCoords(focused, childRect)
          current.requestChildRectangleOnScreen(focused, childRect, false)
          break
        }
        if (current is android.view.ViewGroup && current.javaClass.name.contains("ReactHorizontalScrollView")) {
          val childRect = android.graphics.Rect()
          focused.getDrawingRect(childRect)
          current.offsetDescendantRectToMyCoords(focused, childRect)
          current.requestChildRectangleOnScreen(focused, childRect, false)
          break
        }
        current = current.parent
      }
    } catch (_: Throwable) {}
  }

  private fun novaIsDescendantOf(child: android.view.View, parent: android.view.View): Boolean {
    var p = child.parent
    while (p != null) {
      if (p === parent) return true
      p = p.parent
    }
    return false
  }

  private fun novaFindViewByTag(root: android.view.View?, tagVal: String): android.view.View? {
    if (root == null || root.visibility != android.view.View.VISIBLE) return null
    if (tagVal == root.tag?.toString()) return root
    if (root is android.view.ViewGroup) {
      for (i in 0 until root.childCount) {
        val found = novaFindViewByTag(root.getChildAt(i), tagVal)
        if (found != null) return found
      }
    }
    return null
  }

  private fun novaFindFirstFocusable(root: android.view.View?): android.view.View? {
    if (root == null || root.visibility != android.view.View.VISIBLE) return null
    if (root.isFocusable && root.isClickable) return root
    if (root is android.view.ViewGroup) {
      for (i in 0 until root.childCount) {
        val found = novaFindFirstFocusable(root.getChildAt(i))
        if (found != null) return found
      }
    }
    return null
  }

  private fun novaEnsureModalFocus(): Boolean {
    val decor = window?.decorView as? android.view.ViewGroup ?: return false
    val modalRoot = novaFindViewByTag(decor, "nova-tv-modal-root") ?: return false
    val cur = currentFocus
    if (cur != null && novaIsDescendantOf(cur, modalRoot)) return true
    val preferred = novaFindViewByTag(modalRoot, "nova-tv-preferred-focus") ?: novaFindFirstFocusable(modalRoot)
    if (preferred != null) {
      preferred.post {
        try {
          preferred.requestFocus()
        } catch (_: Throwable) {}
      }
      return true
    }
    return false
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

      val modalHandled = novaEnsureModalFocus()
      if (!modalHandled) {
        val cur = currentFocus
        val decor = window?.decorView as? android.view.ViewGroup
        if (cur == null || cur === decor) {
          val preferred = novaFindViewByTag(decor, "nova-tv-preferred-focus") ?: novaFindFirstFocusable(decor)
          if (preferred != null) {
            preferred.post {
              try { preferred.requestFocus() } catch (_: Throwable) {}
            }
          }
        } else if (keyCode == android.view.KeyEvent.KEYCODE_DPAD_DOWN && event.action == android.view.KeyEvent.ACTION_DOWN) {
          val desc = cur.contentDescription?.toString() ?: ""
          val tag = cur.tag?.toString() ?: ""
          if (tag == "nova-tv-header-action" || desc.contains("رجوع") || desc.contains("السابقة") || desc.contains("التالية") || desc.contains("تحديث")) {
            val preferred = novaFindViewByTag(decor, "nova-tv-preferred-focus")
            if (preferred != null && cur !== preferred) {
              preferred.post {
                try { preferred.requestFocus() } catch (_: Throwable) {}
              }
            }
          }
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
    modResults.language === "kt" || /\\bfun\\s+onCreate\\s*\\(/.test(contents);
  if (!isKotlin) {
    throw new Error("withAndroidImmersiveBars: expected Kotlin MainActivity");
  }

  const onCreateCall = /super\\.onCreate\\((?:null|savedInstanceState)\\)(;?)/;
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
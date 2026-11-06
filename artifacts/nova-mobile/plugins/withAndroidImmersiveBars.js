const { withMainActivity } = require("@expo/config-plugins");

const MARKER = "NOVA_PHONE_IMMERSIVE_SYSTEM_BARS";

const KOTLIN_METHODS = `
  // ${MARKER}: Keep phone system bars hidden & provide native 0ms Android TV Focus + Remote Engine.
  private var novaTvEngineInstalled = false
  private var novaDpadMode = false
  private var novaCurrentFocusedView: android.view.View? = null
  private var novaOverlayView: android.view.View? = null
  private var novaLastKeyRepeatMs = 0L

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
    return widthDp >= heightDp && maxOf(widthDp, heightDp) >= 720f && minOf(widthDp, heightDp) >= 400f
  }

  private fun novaShouldDrawFocusRing(view: android.view.View?, rootW: Int, rootH: Int): Boolean {
    if (view == null || !view.isShown || !view.isAttachedToWindow) return false
    if (!novaDpadMode && !novaIsTvDevice()) return false
    val desc = view.contentDescription?.toString() ?: ""
    if (desc == "مشغل الفيديو النشط" || desc == "إظهار أدوات المشغل") return false
    val vw = view.width
    val vh = view.height
    if (vw <= 6 || vh <= 6) return false
    if (rootW > 0 && rootH > 0 && vw >= (rootW * 0.92f).toInt() && vh >= (rootH * 0.84f).toInt()) {
      return false
    }
    val cls = view.javaClass.name
    if (cls.contains("ReactRootView") || cls.contains("ContentFrameLayout") || cls.contains("DecorView") || cls.contains("ScrollView")) {
      return false
    }
    return true
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
      if (surfaceId != android.view.View.NO_ID) return
      val dispatcher = com.facebook.react.uimanager.UIManagerHelper.getEventDispatcherForReactTag(themedCtx, view.id) ?: return
      val evtName = if (isFocus) "topFocus" else "topBlur"
      dispatcher.dispatchEvent(NovaRnFocusEvent(-1, view.id, evtName))
    } catch (_: Throwable) {}
  }

  private fun novaScrollFocusedIntoView(view: android.view.View) {
    try {
      val rect = android.graphics.Rect(0, 0, view.width, view.height)
      val padX = (view.width * 0.35f).toInt().coerceAtLeast(32)
      val padY = (view.height * 0.35f).toInt().coerceAtLeast(32)
      rect.inset(-padX, -padY)
      view.requestRectangleOnScreen(rect, false)
    } catch (_: Throwable) {}
  }

  private fun novaFindFirstFocusable(root: android.view.View?): android.view.View? {
    if (root == null || root.visibility != android.view.View.VISIBLE || root.alpha <= 0.05f) return null
    if (root === novaOverlayView) return null
    val decor = window?.decorView
    val rw = decor?.width ?: 0
    val rh = decor?.height ?: 0
    if (root.isFocusable && root.isShown && root.width > 16 && root.height > 16) {
      val cls = root.javaClass.name
      val isFullScreen = rw > 0 && rh > 0 && root.width >= (rw * 0.92f).toInt() && root.height >= (rh * 0.84f).toInt()
      if (!isFullScreen && !cls.contains("ReactRootView") && !cls.contains("DecorView") && !cls.contains("ContentFrameLayout") && !cls.contains("ScrollView")) {
        return root
      }
    }
    if (root is android.view.ViewGroup) {
      for (i in 0 until root.childCount) {
        val found = novaFindFirstFocusable(root.getChildAt(i))
        if (found != null) return found
      }
    }
    return null
  }

  private fun novaInstallTvFocusEngine() {
    if (novaTvEngineInstalled) return
    val decor = window?.decorView as? android.view.ViewGroup ?: return
    novaTvEngineInstalled = true
    if (novaIsTvDevice()) {
      novaDpadMode = true
      decor.isFocusableInTouchMode = false
    }

    val overlay = object : android.view.View(this) {
      private val fillPaint = android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG).apply {
        style = android.graphics.Paint.Style.FILL
        color = 0x00000000
      }
      private val outerHaloPaint = android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG).apply {
        style = android.graphics.Paint.Style.STROKE
        color = 0x60000000.toInt()
      }
      private val cyanStrokePaint = android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG).apply {
        style = android.graphics.Paint.Style.STROKE
        color = 0xFF38BDF8.toInt()
      }
      private val whiteInnerPaint = android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG).apply {
        style = android.graphics.Paint.Style.STROKE
        color = 0xC0FFFFFF.toInt()
      }

      override fun onDraw(canvas: android.graphics.Canvas) {
        super.onDraw(canvas)
        val v = novaCurrentFocusedView ?: return
        if (!novaShouldDrawFocusRing(v, width, height)) return
        val visRect = android.graphics.Rect()
        if (!v.getGlobalVisibleRect(visRect)) return
        val decorLoc = IntArray(2)
        getLocationOnScreen(decorLoc)
        val targetLoc = IntArray(2)
        v.getLocationOnScreen(targetLoc)
        val d = resources.displayMetrics.density.coerceAtLeast(1f)
        val pad = 1.5f * d
        val wScaled = v.width * v.scaleX
        val hScaled = v.height * v.scaleY
        val dx = (wScaled - v.width) * 0.5f
        val dy = (hScaled - v.height) * 0.5f
        val left = (targetLoc[0] - decorLoc[0]).toFloat() - dx - pad
        val top = (targetLoc[1] - decorLoc[1]).toFloat() - dy - pad
        val right = left + wScaled + pad * 2f
        val bottom = top + hScaled + pad * 2f
        val rectF = android.graphics.RectF(left, top, right, bottom)
        val corner = (12f * d).coerceAtMost(minOf(rectF.width(), rectF.height()) * 0.45f)

        canvas.drawRoundRect(rectF, corner, corner, fillPaint)
        outerHaloPaint.strokeWidth = 3.2f * d
        canvas.drawRoundRect(rectF, corner, corner, outerHaloPaint)
        cyanStrokePaint.strokeWidth = 2.4f * d
        canvas.drawRoundRect(rectF, corner, corner, cyanStrokePaint)

        val innerInset = 1.2f * d
        val innerRect = android.graphics.RectF(
          rectF.left + innerInset,
          rectF.top + innerInset,
          rectF.right - innerInset,
          rectF.bottom - innerInset
        )
        val innerCorner = (corner - innerInset).coerceAtLeast(2f * d)
        whiteInnerPaint.strokeWidth = 1.0f * d
        canvas.drawRoundRect(innerRect, innerCorner, innerCorner, whiteInnerPaint)
      }
    }.apply {
      isClickable = false
      isFocusable = false
      importantForAccessibility = android.view.View.IMPORTANT_FOR_ACCESSIBILITY_NO
      translationZ = 999f
    }

    decor.addView(
      overlay,
      android.widget.FrameLayout.LayoutParams(
        android.view.ViewGroup.LayoutParams.MATCH_PARENT,
        android.view.ViewGroup.LayoutParams.MATCH_PARENT
      )
    )
    novaOverlayView = overlay

    decor.viewTreeObserver.addOnGlobalFocusChangeListener { oldFocus, newFocus ->
      if (oldFocus != null) {
        try {
          oldFocus.animate().cancel()
          oldFocus.scaleX = 1.0f
          oldFocus.scaleY = 1.0f
          oldFocus.overlay.clear()
        } catch (_: Throwable) {}
        novaDispatchRnFocusEvent(oldFocus, false)
      }
      novaCurrentFocusedView = newFocus
      if (newFocus != null) {
        novaDispatchRnFocusEvent(newFocus, true)
        if (novaDpadMode || novaIsTvDevice()) {
          novaScrollFocusedIntoView(newFocus)
          if (novaShouldDrawFocusRing(newFocus, decor.width, decor.height)) {
            /* overlay ring removed */
            try {
              newFocus.animate()
                .scaleX(1.035f)
                .scaleY(1.035f)
                .setDuration(75)
                .setUpdateListener { novaOverlayView?.invalidate() }
                .start()
            } catch (_: Throwable) {}
          }
        }
      }
      novaOverlayView?.bringToFront()
      novaOverlayView?.invalidate()
    }

    decor.viewTreeObserver.addOnScrollChangedListener {
      if (novaCurrentFocusedView != null) {
        novaOverlayView?.invalidate()
      }
    }

    decor.viewTreeObserver.addOnGlobalLayoutListener {
      if (novaDpadMode || novaIsTvDevice()) {
        val cur = novaCurrentFocusedView
        if (cur == null || !cur.isShown || !cur.isAttachedToWindow) {
          val candidate = novaFindFirstFocusable(decor)
          if (candidate != null) {
            /* do not hijack focus */
          }
        } else {
          novaOverlayView?.bringToFront()
          novaOverlayView?.invalidate()
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
      keyCode == android.view.KeyEvent.KEYCODE_MEDIA_FAST_FORWARD ||
      keyCode == android.view.KeyEvent.KEYCODE_MEDIA_REWIND

    if (isDpadOrMedia) {
      if (!novaDpadMode) {
        novaDpadMode = true
        window?.decorView?.isFocusableInTouchMode = false
        novaOverlayView?.invalidate()
      }
      if (event.action == android.view.KeyEvent.ACTION_DOWN) {
        val now = android.os.SystemClock.uptimeMillis()
        if (event.repeatCount == 0 || now - novaLastKeyRepeatMs >= 100L) {
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
        event.action == android.view.KeyEvent.ACTION_DOWN &&
        (keyCode == android.view.KeyEvent.KEYCODE_DPAD_UP ||
         keyCode == android.view.KeyEvent.KEYCODE_DPAD_DOWN ||
         keyCode == android.view.KeyEvent.KEYCODE_DPAD_LEFT ||
         keyCode == android.view.KeyEvent.KEYCODE_DPAD_RIGHT)
      ) {
        val decor = window?.decorView
        if (focused == null || !focused.isShown || (decor != null && !novaShouldDrawFocusRing(focused, decor.width, decor.height) && desc != "مشغل الفيديو النشط" && desc != "إظهار أدوات المشغل")) {
          val first = novaFindFirstFocusable(decor)
          if (first != null) {
            /* do not hijack focus */
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
        novaOverlayView?.invalidate()
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

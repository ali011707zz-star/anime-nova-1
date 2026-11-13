const { withMainActivity } = require("@expo/config-plugins");

const MARKER = "// [nova-immersive-bars-marker]";

const KOTLIN_METHODS = `
  ${MARKER}
  private var novaDpadMode = false
  private var novaTvEngineInstalled = false
  private var novaLastKeyRepeatMs = 0L
  private var novaCenterConsumed = false
  private var novaCurrentFocusedView: android.view.View? = null
  private var novaFocusRecoveryPosted = false
  private var novaFocusedForegroundView: android.view.View? = null
  private var novaPrevForeground: android.graphics.drawable.Drawable? = null
  private val novaHookedDecorViews = java.util.Collections.newSetFromMap(java.util.WeakHashMap<android.view.View, Boolean>())

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
      device.contains("mitv") ||
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
      device.contains("tcl") ||
      device.contains("hisense") ||
      device.contains("skyworth") ||
      device.contains("haier") ||
      device.contains("toshiba") ||
      device.contains("changhong") ||
      device.contains("coocaa") ||
      device.contains("konka") ||
      device.contains("onn")
  }

  private fun novaGetViewTag(view: android.view.View?): String {
    if (view == null) return ""
    val direct = view.tag?.toString()
    if (!direct.isNullOrEmpty()) return direct
    try {
      val testId = view.getTag(com.facebook.react.R.id.react_test_id)?.toString()
      if (!testId.isNullOrEmpty()) return testId
    } catch (_: Throwable) {}
    try {
      val nativeId = view.getTag(com.facebook.react.R.id.view_tag_native_id)?.toString()
      if (!nativeId.isNullOrEmpty()) return nativeId
    } catch (_: Throwable) {}
    return ""
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
    if (view == null || view.id == android.view.View.NO_ID || view.id <= 0) return
    try {
      var ctx = view.context
      while (ctx is android.content.ContextWrapper && ctx !is com.facebook.react.bridge.ReactContext) {
        ctx = ctx.baseContext
      }
      val reactCtx = (ctx as? com.facebook.react.bridge.ReactContext)
        ?: (application as? com.facebook.react.ReactApplication)?.reactNativeHost?.reactInstanceManager?.currentReactContext
        ?: return
      val surfaceId = com.facebook.react.uimanager.UIManagerHelper.getSurfaceId(reactCtx)
      val dispatcher = com.facebook.react.uimanager.UIManagerHelper.getEventDispatcherForReactTag(reactCtx, view.id) ?: return
      val evtName = if (isFocus) "topFocus" else "topBlur"
      dispatcher.dispatchEvent(NovaRnFocusEvent(surfaceId, view.id, evtName))
    } catch (_: Throwable) {}
  }

  private fun novaEmitFocusChangedToJs(viewId: Int) {
    try {
      val app = application as? com.facebook.react.ReactApplication ?: return
      val reactContext = app.reactNativeHost.reactInstanceManager.currentReactContext ?: return
      val params = com.facebook.react.bridge.Arguments.createMap().apply {
        putInt("viewTag", viewId)
      }
      reactContext
        .getJSModule(com.facebook.react.modules.core.DeviceEventManagerModule.RCTDeviceEventEmitter::class.java)
        ?.emit("novaTvFocusChanged", params)
    } catch (_: Throwable) {}
  }

  private fun novaApplyNativeFocusRing(newFocus: android.view.View?) {
    try {
      val prev = novaFocusedForegroundView
      if (prev != null) {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {
          try { prev.foreground = novaPrevForeground } catch (_: Throwable) {}
        }
        try {
          prev.translationZ = 0f
          prev.scaleX = 1f
          prev.scaleY = 1f
        } catch (_: Throwable) {}
        novaFocusedForegroundView = null
        novaPrevForeground = null
      }

      if (newFocus == null || newFocus === window?.decorView) return
      if (!novaDpadMode && !novaIsTvDevice()) return
      val clsName = newFocus.javaClass.name
      if (
        newFocus is android.widget.ScrollView ||
        newFocus is android.widget.HorizontalScrollView ||
        clsName.contains("ScrollView") ||
        clsName.contains("ReactRootView")
      ) {
        return
      }

      if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {
        novaFocusedForegroundView = newFocus
        novaPrevForeground = newFocus.foreground
        val d = resources.displayMetrics.density
        val minDim = kotlin.math.min(newFocus.width, newFocus.height).toFloat()
        val radius = if (minDim > 0f) kotlin.math.min(12f * d, minDim / 2.2f) else 12f * d
        val ring = android.graphics.drawable.GradientDrawable().apply {
          shape = android.graphics.drawable.GradientDrawable.RECTANGLE
          cornerRadius = radius
          setStroke((2.5f * d).toInt().coerceAtLeast(3), android.graphics.Color.parseColor("#00F0FF"))
          setColor(android.graphics.Color.argb(26, 0, 240, 255))
        }
        newFocus.foreground = ring
      }
      try {
        newFocus.translationZ = 10f
      } catch (_: Throwable) {}
    } catch (_: Throwable) {}
  }

  private fun novaScrollFocusedIntoView(focused: android.view.View) {
    try {
      var current: android.view.ViewParent? = focused.parent
      while (current != null) {
        if (current is android.widget.ScrollView) {
          val scrollView = current
          scrollView.isFocusable = false
          scrollView.isFocusableInTouchMode = false
          val childRect = android.graphics.Rect()
          focused.getDrawingRect(childRect)
          scrollView.offsetDescendantRectToMyCoords(focused, childRect)
          val pad = (44 * resources.displayMetrics.density).toInt()
          val visibleTop = scrollView.scrollY + pad
          val visibleBottom = scrollView.scrollY + scrollView.height - pad
          if (childRect.top < visibleTop || childRect.bottom > visibleBottom) {
            childRect.inset(0, -pad)
            scrollView.requestChildRectangleOnScreen(focused, childRect, false)
          }
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

  private fun novaDisableScrollContainerFocus(root: android.view.View?) {
    if (root == null) return
    if (root is android.widget.ScrollView || root is android.widget.HorizontalScrollView) {
      root.isFocusable = false
      root.isFocusableInTouchMode = false
    }
    if (root is android.view.ViewGroup) {
      for (i in 0 until root.childCount) {
        novaDisableScrollContainerFocus(root.getChildAt(i))
      }
    }
  }

  private fun novaFindViewByTag(root: android.view.View?, tagVal: String): android.view.View? {
    if (root == null || root.visibility != android.view.View.VISIBLE) return null
    if (tagVal == novaGetViewTag(root)) {
      if (tagVal == "nova-tv-preferred-focus" && !root.isFocusable) {
        return novaFindFirstFocusable(root) ?: root
      }
      return root
    }
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
    if (
      root.isFocusable &&
      root.isEnabled &&
      root !is android.widget.ScrollView &&
      root !is android.widget.HorizontalScrollView &&
      (root.isClickable || root is android.widget.EditText)
    ) {
      return root
    }
    if (root is android.view.ViewGroup) {
      for (i in 0 until root.childCount) {
        val found = novaFindFirstFocusable(root.getChildAt(i))
        if (found != null) return found
      }
    }
    return null
  }

  private fun novaCollectFocusableViews(root: android.view.View?, out: java.util.ArrayList<android.view.View>) {
    if (root == null || root.visibility != android.view.View.VISIBLE || !root.isEnabled) return
    if (
      root.isFocusable &&
      root.width > 0 &&
      root.height > 0 &&
      root !is android.widget.ScrollView &&
      root !is android.widget.HorizontalScrollView &&
      !root.javaClass.name.contains("ScrollView") &&
      !root.javaClass.name.contains("ReactRootView")
    ) {
      val tag = novaGetViewTag(root)
      if (tag != "nova-tv-scan-exit") {
        out.add(root)
      }
    }
    if (root is android.view.ViewGroup) {
      for (i in 0 until root.childCount) {
        novaCollectFocusableViews(root.getChildAt(i), out)
      }
    }
  }

  private fun novaFindScrollViewAncestor(view: android.view.View?): android.widget.ScrollView? {
    var p = view?.parent
    while (p != null) {
      if (p is android.widget.ScrollView) return p
      p = p.parent
    }
    return null
  }

  private fun novaFindHorizontalScrollViewAncestor(view: android.view.View?): android.widget.HorizontalScrollView? {
    var p = view?.parent
    while (p != null) {
      if (p is android.widget.HorizontalScrollView) return p
      p = p.parent
    }
    return null
  }

  private fun novaHandleScrollViewDirectionalNavigation(keyCode: Int): Boolean {
    if (
      keyCode != android.view.KeyEvent.KEYCODE_DPAD_UP &&
      keyCode != android.view.KeyEvent.KEYCODE_DPAD_DOWN
    ) {
      return false
    }
    val decor = window?.decorView as? android.view.ViewGroup ?: return false
    val modalRoot = novaFindViewByTag(decor, "nova-tv-modal-root")
    val searchScope = (modalRoot as? android.view.ViewGroup) ?: decor
    val cur = currentFocus ?: return false
    val isUp = keyCode == android.view.KeyEvent.KEYCODE_DPAD_UP
    val direction = if (isUp) android.view.View.FOCUS_UP else android.view.View.FOCUS_DOWN

    val scrollView = novaFindScrollViewAncestor(cur)
    if (scrollView == null || !novaIsDescendantOf(scrollView, searchScope)) {
      if (!isUp) {
        val ff = try {
          android.view.FocusFinder.getInstance().findNextFocus(searchScope, cur, direction)
        } catch (_: Throwable) { null }
        if (ff != null && ff !== cur && ff !is android.widget.ScrollView && ff !is android.widget.HorizontalScrollView) {
          return false
        }
        val allFocusables = java.util.ArrayList<android.view.View>()
        novaCollectFocusableViews(searchScope, allFocusables)
        val curLoc = IntArray(2)
        cur.getLocationOnScreen(curLoc)
        val curBottom = curLoc[1] + cur.height
        val curCenterX = curLoc[0] + cur.width / 2
        var best: android.view.View? = null
        var bestVDist = Int.MAX_VALUE
        var bestHDist = Int.MAX_VALUE
        val rowTol = (24 * resources.displayMetrics.density).toInt()
        for (cand in allFocusables) {
          if (cand === cur) continue
          val loc = IntArray(2)
          cand.getLocationOnScreen(loc)
          val candTop = loc[1]
          val candCenterY = loc[1] + cand.height / 2
          if (candCenterY <= curBottom - 4) continue
          val vDist = (candTop - curBottom).coerceAtLeast(0)
          val hDist = kotlin.math.abs((loc[0] + cand.width / 2) - curCenterX)
          if (vDist < bestVDist - rowTol || (kotlin.math.abs(vDist - bestVDist) <= rowTol && hDist < bestHDist)) {
            best = cand
            if (vDist < bestVDist) bestVDist = vDist
            bestHDist = hDist
          }
        }
        if (best != null) {
          try {
            if (best.requestFocus(direction) || best.requestFocus()) return true
          } catch (_: Throwable) {}
        }
      }
      return false
    }

    scrollView.isFocusable = false
    scrollView.isFocusableInTouchMode = false

    val curRect = android.graphics.Rect()
    cur.getDrawingRect(curRect)
    scrollView.offsetDescendantRectToMyCoords(cur, curRect)
    val curHScroll = novaFindHorizontalScrollViewAncestor(cur)
    val d = resources.displayMetrics.density

    var target: android.view.View? = null
    val candidates = java.util.ArrayList<android.view.View>()
    novaCollectFocusableViews(scrollView, candidates)
    val tol = (10 * d).toInt()
    val rowTol = (26 * d).toInt()
    var bestVDist = Int.MAX_VALUE
    var bestHDist = Int.MAX_VALUE
    for (cand in candidates) {
      if (cand === cur) continue
      if (novaIsDescendantOf(cand, cur) || novaIsDescendantOf(cur, cand)) continue
      if (curHScroll != null && novaFindHorizontalScrollViewAncestor(cand) === curHScroll) continue
      val candRect = android.graphics.Rect()
      cand.getDrawingRect(candRect)
      scrollView.offsetDescendantRectToMyCoords(cand, candRect)
      if (isUp) {
        if (candRect.bottom > curRect.top + tol || candRect.centerY() >= curRect.top) continue
        val vDist = (curRect.top - candRect.bottom).coerceAtLeast(0)
        val hDist = kotlin.math.abs(candRect.centerX() - curRect.centerX())
        if (vDist < bestVDist - rowTol || (kotlin.math.abs(vDist - bestVDist) <= rowTol && hDist < bestHDist)) {
          target = cand
          if (vDist < bestVDist) bestVDist = vDist
          bestHDist = hDist
        }
      } else {
        if (candRect.top < curRect.bottom - tol || candRect.centerY() <= curRect.bottom) continue
        val vDist = (candRect.top - curRect.bottom).coerceAtLeast(0)
        val hDist = kotlin.math.abs(candRect.centerX() - curRect.centerX())
        if (vDist < bestVDist - rowTol || (kotlin.math.abs(vDist - bestVDist) <= rowTol && hDist < bestHDist)) {
          target = cand
          if (vDist < bestVDist) bestVDist = vDist
          bestHDist = hDist
        }
      }
    }

    val contentHeight = scrollView.getChildAt(0)?.height ?: 0
    val maxScroll = (contentHeight - scrollView.height).coerceAtLeast(0)
    val scrollStep = (scrollView.height * 0.52f).toInt().coerceAtLeast((140 * d).toInt())

    if (target != null) {
      val targetRect = android.graphics.Rect()
      target.getDrawingRect(targetRect)
      scrollView.offsetDescendantRectToMyCoords(target, targetRect)
      val pad = (44 * d).toInt()
      val viewTop = scrollView.scrollY
      val viewBottom = viewTop + scrollView.height

      // If target is far outside the current viewport (e.g. non-focusable cards between cur and target),
      // scroll progressively first so non-focusable sections remain readable without sudden jumps.
      if (!isUp && targetRect.top > viewBottom + (30 * d).toInt() && viewTop < maxScroll) {
        val nextScroll = (viewTop + scrollStep).coerceAtMost(maxScroll)
        scrollView.smoothScrollTo(0, nextScroll)
        if (targetRect.top <= nextScroll + scrollView.height - pad) {
          try { target.requestFocus(direction) || target.requestFocus() } catch (_: Throwable) {}
        }
        return true
      }
      if (isUp && targetRect.bottom < viewTop - (30 * d).toInt() && viewTop > 0) {
        val nextScroll = (viewTop - scrollStep).coerceAtLeast(0)
        scrollView.smoothScrollTo(0, nextScroll)
        if (targetRect.bottom >= nextScroll + pad) {
          try { target.requestFocus(direction) || target.requestFocus() } catch (_: Throwable) {}
        }
        return true
      }

      var desiredScrollY = viewTop
      if (targetRect.top < viewTop + pad) {
        desiredScrollY = (targetRect.top - pad).coerceAtLeast(0)
      } else if (targetRect.bottom > viewBottom - pad) {
        desiredScrollY = (targetRect.bottom - scrollView.height + pad).coerceAtMost(maxScroll).coerceAtLeast(0)
      }
      if (desiredScrollY != viewTop) {
        scrollView.smoothScrollTo(0, desiredScrollY)
      }
      try {
        if (target.requestFocus(direction) || target.requestFocus()) return true
      } catch (_: Throwable) {}
    }

    if (isUp) {
      if (scrollView.scrollY > 0) {
        val nextScroll = (scrollView.scrollY - scrollStep).coerceAtLeast(0)
        scrollView.smoothScrollTo(0, nextScroll)
        return true
      }
      val outsideCandidates = java.util.ArrayList<android.view.View>()
      novaCollectFocusableViews(searchScope, outsideCandidates)
      val scrollLoc = IntArray(2)
      scrollView.getLocationOnScreen(scrollLoc)
      var bestOutside: android.view.View? = null
      var bestOutsideBottom = -1
      for (cand in outsideCandidates) {
        if (novaIsDescendantOf(cand, scrollView)) continue
        val loc = IntArray(2)
        cand.getLocationOnScreen(loc)
        val candBottom = loc[1] + cand.height
        if (candBottom <= scrollLoc[1] + (80 * d).toInt()) {
          if (candBottom > bestOutsideBottom) {
            bestOutsideBottom = candBottom
            bestOutside = cand
          }
        }
      }
      if (bestOutside != null) {
        try {
          if (bestOutside.requestFocus(direction) || bestOutside.requestFocus()) return true
        } catch (_: Throwable) {}
      }
      return true
    } else {
      if (scrollView.scrollY < maxScroll) {
        val nextScroll = (scrollView.scrollY + scrollStep).coerceAtMost(maxScroll)
        scrollView.smoothScrollTo(0, nextScroll)
        return true
      }
      val outsideCandidates = java.util.ArrayList<android.view.View>()
      novaCollectFocusableViews(searchScope, outsideCandidates)
      val scrollLoc = IntArray(2)
      scrollView.getLocationOnScreen(scrollLoc)
      val scrollBottom = scrollLoc[1] + scrollView.height
      var bestOutside: android.view.View? = null
      var bestOutsideTop = Int.MAX_VALUE
      for (cand in outsideCandidates) {
        if (novaIsDescendantOf(cand, scrollView)) continue
        val loc = IntArray(2)
        cand.getLocationOnScreen(loc)
        if (loc[1] >= scrollBottom - (80 * d).toInt()) {
          if (loc[1] < bestOutsideTop) {
            bestOutsideTop = loc[1]
            bestOutside = cand
          }
        }
      }
      if (bestOutside != null) {
        try {
          if (bestOutside.requestFocus(direction) || bestOutside.requestFocus()) return true
        } catch (_: Throwable) {}
      }
      return true
    }
  }

  private fun novaEnsureModalFocus(): Boolean {
    val decor = window?.decorView as? android.view.ViewGroup ?: return false
    val modalRoot = novaFindViewByTag(decor, "nova-tv-modal-root") ?: return false
    val cur = currentFocus
    if (cur != null && cur.isAttachedToWindow && novaIsDescendantOf(cur, modalRoot)) return true
    val preferred = novaFindViewByTag(modalRoot, "nova-tv-preferred-focus") ?: novaFindFirstFocusable(modalRoot)
    if (preferred != null) {
      try {
        if (preferred.requestFocus()) return true
      } catch (_: Throwable) {}
      preferred.post {
        try {
          preferred.requestFocus()
        } catch (_: Throwable) {}
      }
      return true
    }
    return false
  }

  private fun novaScheduleFocusRecovery() {
    if (novaFocusRecoveryPosted) return
    val decor = window?.decorView as? android.view.ViewGroup ?: return
    novaFocusRecoveryPosted = true
    decor.postDelayed({
      novaFocusRecoveryPosted = false
      if (!novaDpadMode && !novaIsTvDevice()) return@postDelayed
      novaDisableScrollContainerFocus(decor)
      if (novaEnsureModalFocus()) return@postDelayed
      val cur = currentFocus
      val curTag = novaGetViewTag(cur)
      if (
        cur == null ||
        cur === decor ||
        !cur.isAttachedToWindow ||
        cur is android.widget.ScrollView ||
        cur is android.widget.HorizontalScrollView ||
        curTag == "nova-tv-scan-exit"
      ) {
        val preferred = novaFindViewByTag(decor, "nova-tv-preferred-focus") ?: novaFindFirstFocusable(decor)
        if (preferred != null && preferred !== cur) {
          try {
            preferred.requestFocus()
          } catch (_: Throwable) {}
        }
      }
    }, 55L)
  }

  private fun novaEmitTvDetectedToJs() {
    try {
      val app = application as? com.facebook.react.ReactApplication ?: return
      val reactContext = app.reactNativeHost.reactInstanceManager.currentReactContext ?: return
      val params = com.facebook.react.bridge.Arguments.createMap().apply {
        putBoolean("isTv", true)
      }
      reactContext
        .getJSModule(com.facebook.react.modules.core.DeviceEventManagerModule.RCTDeviceEventEmitter::class.java)
        ?.emit("novaTvDetected", params)
    } catch (_: Throwable) {}
  }

  private fun novaHookDecorView(rootView: android.view.View) {
    if (novaHookedDecorViews.contains(rootView)) return
    novaHookedDecorViews.add(rootView)
    rootView.viewTreeObserver.addOnGlobalFocusChangeListener { oldFocus, newFocus ->
      val prevFocused = novaCurrentFocusedView
      if (oldFocus != null && oldFocus !== newFocus) {
        novaDispatchRnFocusEvent(oldFocus, false)
      }
      if (prevFocused != null && prevFocused !== oldFocus && prevFocused !== newFocus) {
        novaDispatchRnFocusEvent(prevFocused, false)
      }
      novaCurrentFocusedView = newFocus
      if (newFocus != null && newFocus !== rootView && newFocus !== window?.decorView) {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
          try { newFocus.defaultFocusHighlightEnabled = false } catch (_: Throwable) {}
        }
        novaEmitFocusChangedToJs(newFocus.id)
        if (newFocus !== oldFocus) {
          novaDispatchRnFocusEvent(newFocus, true)
        }
        novaApplyNativeFocusRing(newFocus)
        if (novaDpadMode || novaIsTvDevice()) {
          novaScrollFocusedIntoView(newFocus)
        }
      } else {
        novaEmitFocusChangedToJs(-1)
        novaApplyNativeFocusRing(null)
        if (novaDpadMode || novaIsTvDevice()) {
          novaScheduleFocusRecovery()
        }
      }
    }
  }

  private fun novaHookAllWindowDecorViews() {
    val mainDecor = window?.decorView
    if (mainDecor != null) {
      novaHookDecorView(mainDecor)
    }
    if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.Q) {
      try {
        val views = android.view.inspector.WindowInspector.getGlobalWindowViews()
        for (v in views) {
          if (v != null) {
            if (novaDpadMode || novaIsTvDevice()) {
              v.isFocusableInTouchMode = false
            }
            novaHookDecorView(v)
          }
        }
      } catch (_: Throwable) {}
    }
  }

  private fun novaInstallTvFocusEngine() {
    val decor = window?.decorView as? android.view.ViewGroup ?: return
    novaHookAllWindowDecorViews()
    if (novaTvEngineInstalled) return
    novaTvEngineInstalled = true
    if (novaIsTvDevice()) {
      novaDpadMode = true
      decor.isFocusableInTouchMode = false
      decor.postDelayed({
        novaEmitTvDetectedToJs()
        novaScheduleFocusRecovery()
      }, 80L)
      decor.postDelayed({
        novaEmitTvDetectedToJs()
        novaScheduleFocusRecovery()
      }, 300L)
    }

    decor.viewTreeObserver.addOnGlobalLayoutListener {
      if (!novaDpadMode && !novaIsTvDevice()) return@addOnGlobalLayoutListener
      novaHookAllWindowDecorViews()
      val cur = currentFocus
      val curTag = novaGetViewTag(cur)
      if (
        cur == null ||
        cur === decor ||
        !cur.isAttachedToWindow ||
        cur is android.widget.ScrollView ||
        cur is android.widget.HorizontalScrollView ||
        curTag == "nova-tv-scan-exit"
      ) {
        novaScheduleFocusRecovery()
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
        novaEmitTvDetectedToJs()
      }
      if (event.action == android.view.KeyEvent.ACTION_DOWN) {
        val now = android.os.SystemClock.uptimeMillis()
        val isDirKey =
          keyCode == android.view.KeyEvent.KEYCODE_DPAD_UP ||
          keyCode == android.view.KeyEvent.KEYCODE_DPAD_DOWN ||
          keyCode == android.view.KeyEvent.KEYCODE_DPAD_LEFT ||
          keyCode == android.view.KeyEvent.KEYCODE_DPAD_RIGHT
        if (isDirKey && event.repeatCount > 0 && now - novaLastKeyRepeatMs < 110L) {
          return true
        }
        novaLastKeyRepeatMs = now
      }

      val modalHandled = novaEnsureModalFocus()
      if (!modalHandled) {
        val cur = currentFocus
        val decor = window?.decorView as? android.view.ViewGroup
        if (
          cur == null ||
          cur === decor ||
          !cur.isAttachedToWindow ||
          cur is android.widget.ScrollView ||
          cur is android.widget.HorizontalScrollView
        ) {
          if (event.action == android.view.KeyEvent.ACTION_DOWN) {
            val preferred = novaFindViewByTag(decor, "nova-tv-preferred-focus") ?: novaFindFirstFocusable(decor)
            if (preferred != null) {
              try {
                if (preferred.requestFocus()) return true
              } catch (_: Throwable) {}
            }
          }
        } else if (keyCode == android.view.KeyEvent.KEYCODE_DPAD_DOWN && event.action == android.view.KeyEvent.ACTION_DOWN) {
          val tag = novaGetViewTag(cur)
          if (tag == "nova-tv-header-action") {
            val preferred = novaFindViewByTag(decor, "nova-tv-preferred-focus")
            if (preferred != null && cur !== preferred) {
              try {
                if (preferred.requestFocus()) return true
              } catch (_: Throwable) {}
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
        event.action == android.view.KeyEvent.ACTION_DOWN &&
        (keyCode == android.view.KeyEvent.KEYCODE_DPAD_UP || keyCode == android.view.KeyEvent.KEYCODE_DPAD_DOWN)
      ) {
        if (novaHandleScrollViewDirectionalNavigation(keyCode)) {
          return true
        }
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

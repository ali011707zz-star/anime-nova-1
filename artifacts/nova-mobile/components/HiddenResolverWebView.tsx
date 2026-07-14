/**
 * HiddenResolverWebView — WebView مخفي تماماً (لا يُعرض للمستخدم أبداً).
 *
 * الغرض: بعض المواقع (Animelek, Animedar, AnimePhoenix, Anime3rb, RistoAnime...)
 * محمية بـ Cloudflare/Turnstile وتحجب طلبات الخادم (VPS)، لكنها تعمل بشكل طبيعي
 * من متصفح حقيقي بـ IP سكني (جهاز المستخدم). هذا المكوّن يفتح صفحة المصدر داخل
 * WebView بحجم 1×1 وشفافية صفر (خارج الشاشة تماماً)، يحل التحدي تلقائياً كمتصفح
 * حقيقي، ثم يستنشق رابط الفيديو الحقيقي (mp4/m3u8) من الشبكة أو من عنصر <video>،
 * ويرسله للتطبيق عبر postMessage. بعد الاستخراج (أو الفشل/انتهاء الوقت) يُزال
 * المكوّن كلياً من الشجرة — لا تُعرض صفحة الموقع للمستخدم في أي لحظة، فقط الفيديو
 * النهائي يُشغَّل داخل RiftPlayer (مشغلنا الداخلي).
 */
import React, { useCallback, useRef } from "react";
import { StyleSheet } from "react-native";
import WebView, { WebViewMessageEvent } from "react-native-webview";

export interface ResolvedStream {
  url: string;
  headers?: Record<string, string>;
  type?: "hls" | "mp4";
}

interface Props {
  /** رابط صفحة المصدر (embed أو صفحة الحلقة) المطلوب زيارتها خفيةً */
  pageUrl: string;
  /** رابط أساسي إضافي يُقبل كـ Referer عند تشكيل الطلب (اختياري) */
  refererOverride?: string;
  /** مهلة الانتظار القصوى بالميلي ثانية قبل اعتبار المحاولة فاشلة */
  timeoutMs?: number;
  onResolved: (stream: ResolvedStream) => void;
  onFailed: (reason: string) => void;
}

/**
 * سكربت يُحقن داخل صفحة الموقع المحمي. يعترض:
 * 1) أي src يُعيَّن لعنصر <video> أو <source>
 * 2) أي طلب fetch()/XHR لرابط m3u8 أو mp4
 * ثم يبلّغ التطبيق فوراً عبر postMessage بأول رابط فيديو حقيقي يجده.
 */
/**
 * حظر مبكر للصور/الإعلانات — الصفحة أصلاً غير مرئية (WebView مخفي 1×1) لذا لا حاجة
 * لتحميل أي صورة إطلاقاً، وحظر شبكات الإعلانات المعروفة يقلّل حجم/زمن التحميل بشكل
 * كبير قبل وصولنا لرابط الفيديو الحقيقي.
 */
const AD_BLOCK_SCRIPT = `
(function () {
  if (window.__novaAdBlockInstalled) return;
  window.__novaAdBlockInstalled = true;

  var AD_PATTERNS = [
    "doubleclick.net","googlesyndication","google-analytics","googletagmanager",
    "adservice.", "adsystem", "/ads/", "popads", "propellerads", "juicyads",
    "exoclick", "adnxs.com", "taboola", "outbrain", "criteo", "moatads",
    "histats.com", "yandex.ru/metrika", "facebook.net/tr", "hotjar.com",
  ];
  function isAdUrl(u) {
    if (!u || typeof u !== "string") return false;
    var s = u.toLowerCase();
    for (var i = 0; i < AD_PATTERNS.length; i++) if (s.indexOf(AD_PATTERNS[i]) !== -1) return true;
    return false;
  }
  function isImageUrl(u) {
    if (!u || typeof u !== "string") return false;
    return /\\.(jpe?g|png|gif|webp|bmp|svg|ico)(\\?|$)/i.test(u);
  }

  // امنع تحميل الصور كلياً (الصفحة غير مرئية أساساً)
  try {
    var imgDesc = Object.getOwnPropertyDescriptor(HTMLImageElement.prototype, "src");
    if (imgDesc && imgDesc.set) {
      Object.defineProperty(HTMLImageElement.prototype, "src", {
        get: imgDesc.get,
        set: function (v) { if (isImageUrl(v)) return; return imgDesc.set.call(this, v); },
        configurable: true,
      });
    }
  } catch (e) {}

  // امنع إنشاء عناصر <img> جديدة من التحميل + احظر iframes/سكربتات الإعلانات
  var origCreateElement = document.createElement;
  document.createElement = function (tag) {
    var el = origCreateElement.apply(document, arguments);
    try {
      var t = String(tag).toLowerCase();
      if (t === "img") {
        Object.defineProperty(el, "src", { set: function (v) { if (!isImageUrl(v)) el.setAttribute("data-blocked-src", v); }, get: function () { return ""; }, configurable: true });
      } else if (t === "iframe" || t === "script") {
        var origSetAttr = el.setAttribute.bind(el);
        el.setAttribute = function (name, value) {
          if (name === "src" && isAdUrl(value)) return;
          return origSetAttr(name, value);
        };
      }
    } catch (e) {}
    return el;
  };

  // احظر fetch/XHR لشبكات الإعلانات (لا يمس روابط الفيديو)
  var origFetchAd = window.fetch;
  if (origFetchAd) {
    window.fetch = function (input, init) {
      var url = typeof input === "string" ? input : (input && input.url) || "";
      if (isAdUrl(url)) return Promise.reject(new Error("blocked"));
      return origFetchAd.apply(this, arguments);
    };
  }
  var origOpenAd = XMLHttpRequest.prototype.open;
  XMLHttpRequest.prototype.open = function (method, url) {
    if (isAdUrl(url)) { this.__blocked = true; url = "about:blank"; }
    return origOpenAd.apply(this, arguments);
  };

  // CSS: أخفِ أي صور/iframes متبقية فوراً (احتياطي)
  try {
    var st = document.createElement("style");
    st.textContent = "img,iframe[src*='ads']{display:none!important}";
    (document.head || document.documentElement).appendChild(st);
  } catch (e) {}

  true;
})();
`;

const SNIFF_SCRIPT = `
(function () {
  if (window.__novaHiddenSniffInstalled) return;
  window.__novaHiddenSniffInstalled = true;

  function isVideoUrl(u) {
    if (!u || typeof u !== "string") return false;
    var s = u.toLowerCase();
    return s.includes(".m3u8") || s.includes(".mp4") || s.includes(".mkv");
  }

  var reported = false;
  function report(url, type) {
    if (reported || !url) return;
    reported = true;
    try {
      window.ReactNativeWebView.postMessage(JSON.stringify({
        kind: "resolved",
        url: url,
        type: type || (url.toLowerCase().includes(".m3u8") ? "hls" : "mp4"),
        referer: location.href,
        origin: location.origin,
      }));
    } catch (e) {}
  }

  // 1) اعترض تعيين src على أي <video>/<source> موجود أو يُنشأ لاحقاً
  function watchEl(el) {
    if (!el || el.__novaWatched) return;
    el.__novaWatched = true;
    try {
      var proto = Object.getPrototypeOf(el);
      var desc = Object.getOwnPropertyDescriptor(proto, "src") ||
                 Object.getOwnPropertyDescriptor(HTMLMediaElement.prototype, "src");
      if (desc && desc.set) {
        Object.defineProperty(el, "src", {
          get: desc.get,
          set: function (v) { if (isVideoUrl(v)) report(v); return desc.set.call(this, v); },
          configurable: true,
        });
      }
    } catch (e) {}
    if (el.currentSrc && isVideoUrl(el.currentSrc)) report(el.currentSrc);
  }
  document.querySelectorAll("video,source").forEach(watchEl);
  var mo = new MutationObserver(function (muts) {
    muts.forEach(function (m) {
      (m.addedNodes || []).forEach(function (n) {
        if (n.tagName === "VIDEO" || n.tagName === "SOURCE") watchEl(n);
        if (n.querySelectorAll) n.querySelectorAll("video,source").forEach(watchEl);
      });
    });
  });
  mo.observe(document.documentElement, { childList: true, subtree: true });

  // 2) اعترض fetch()
  var origFetch = window.fetch;
  if (origFetch) {
    window.fetch = function (input, init) {
      var url = typeof input === "string" ? input : (input && input.url) || "";
      if (isVideoUrl(url)) report(url);
      return origFetch.apply(this, arguments);
    };
  }

  // 3) اعترض XMLHttpRequest
  var origOpen = XMLHttpRequest.prototype.open;
  XMLHttpRequest.prototype.open = function (method, url) {
    if (isVideoUrl(url)) report(url);
    return origOpen.apply(this, arguments);
  };

  // 4) fallback: افحص أداء الشبكة كل 500ms لأي مورد فيديو (لبعض المشغّلات المُخصّصة)
  var pollCount = 0;
  var poll = setInterval(function () {
    pollCount++;
    if (reported || pollCount > 40) { clearInterval(poll); return; }
    try {
      var entries = performance.getEntriesByType("resource");
      for (var i = 0; i < entries.length; i++) {
        if (isVideoUrl(entries[i].name)) { report(entries[i].name); break; }
      }
    } catch (e) {}
  }, 500);

  true;
})();
`;

export function HiddenResolverWebView({ pageUrl, refererOverride, timeoutMs = 16000, onResolved, onFailed }: Props) {
  const doneRef = useRef(false);
  const webRef = useRef<WebView>(null);

  const finish = useCallback((fn: () => void) => {
    if (doneRef.current) return;
    doneRef.current = true;
    fn();
  }, []);

  const handleMessage = useCallback((e: WebViewMessageEvent) => {
    try {
      const data = JSON.parse(e.nativeEvent.data);
      if (data?.kind === "resolved" && data.url) {
        finish(() => onResolved({
          url: data.url,
          type: data.type,
          headers: data.referer ? { Referer: data.referer, Origin: data.origin || data.referer } : undefined,
        }));
      }
    } catch {
      // رسالة غير متوقعة — تُتجاهل
    }
  }, [finish, onResolved]);

  // مهلة قصوى — إن لم يُستخرج رابط فيديو، اعتبرها فاشلة وأزل الـWebView
  React.useEffect(() => {
    const t = setTimeout(() => {
      finish(() => onFailed("timeout"));
    }, timeoutMs);
    return () => clearTimeout(t);
  }, [timeoutMs, finish, onFailed]);

  return (
    <WebView
      ref={webRef}
      source={{ uri: pageUrl, headers: refererOverride ? { Referer: refererOverride } : undefined }}
      style={styles.hidden}
      containerStyle={styles.hidden}
      pointerEvents="none"
      injectedJavaScript={SNIFF_SCRIPT}
      injectedJavaScriptBeforeContentLoaded={AD_BLOCK_SCRIPT + SNIFF_SCRIPT}
      onMessage={handleMessage}
      onError={() => finish(() => onFailed("load-error"))}
      onHttpError={() => { /* لا نفشل فوراً — قد تكون صفحة وسيطة قبل التحدي */ }}
      javaScriptEnabled
      domStorageEnabled
      thirdPartyCookiesEnabled
      sharedCookiesEnabled
      mediaPlaybackRequiresUserAction={false}
      allowsInlineMediaPlayback
      originWhitelist={["*"]}
      mixedContentMode="always"
    />
  );
}

const styles = StyleSheet.create({
  hidden: {
    position: "absolute",
    top: -10000,
    left: -10000,
    width: 1,
    height: 1,
    opacity: 0,
  },
});

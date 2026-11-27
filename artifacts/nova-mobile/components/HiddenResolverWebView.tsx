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

  function isDecoyUrl(u) {
    var s = String(u || "").toLowerCase();
    return (
      s.indexOf("test-videos.co.uk") !== -1 ||
      s.indexOf("big_buck_bunny") !== -1 ||
      s.indexOf("samplelib.com") !== -1 ||
      s.indexOf("commondatastorage.googleapis.com/gtv-videos-bucket") !== -1
    );
  }
  function isVideoUrl(u) {
    if (!u || typeof u !== "string") return false;
    if (isDecoyUrl(u)) return false;
    var s = u.toLowerCase();
    return (
      s.includes(".m3u8") ||
      s.includes(".mp4") ||
      s.includes(".mkv") ||
      s.includes("/get_video?") ||
      s.includes("mxcontent.net/")
    );
  }

  // مواقع وسيطة (relay) تحتوي على iframe داخلها يخدم الفيديو الحقيقي
  var RELAY_DOMAINS = [
    "ifrom.net", "myframe.to", "vidsrc.in", "vidsrc.xyz", "vidsrc.rip",
    "vidsrc.me", "filemoon", "streamwish", "embedsb", "embed.su",
    "vidplay", "smashystream", "novembed", "4dsply", "play.streamhd",
    "uqload", "mixdrop", "doodstream", "voe.sx", "streamtape",
    "caseyseemavoid", "tapecontent",
  ];
  function isRelayDomain(u) {
    if (!u || typeof u !== "string") return false;
    var s = u.toLowerCase();
    for (var i = 0; i < RELAY_DOMAINS.length; i++) {
      if (s.indexOf(RELAY_DOMAINS[i]) !== -1) return true;
    }
    return false;
  }

  var reported = false;
  var iframeFollowed = false;

  function sendMsg(obj) {
    try { window.ReactNativeWebView.postMessage(JSON.stringify(obj)); } catch (e) {}
  }

  function report(url, type) {
    if (reported || !url) return;
    var clean = String(url).trim();
    if (clean.indexOf("//") === 0) clean = "https:" + clean;
    if (!/^https?:\\/\\//i.test(clean)) return;
    reported = true;
    sendMsg({
      kind: "resolved",
      url: clean,
      type: type || (clean.toLowerCase().includes(".m3u8") ? "hls" : "mp4"),
      referer: location.href,
      origin: location.origin,
      ua: navigator.userAgent || "",
    });
  }

  // اكتشاف iframes تشير لمواقع وسيطة — أرسل follow_iframe ليُتابعها المكوّن
  function checkIframeSrc(src) {
    if (!src || iframeFollowed || reported) return;
    if (isRelayDomain(src)) {
      iframeFollowed = true;
      sendMsg({ kind: "follow_iframe", url: src });
    }
  }
  function watchIframe(el) {
    if (!el || el.__novaIframeWatched) return;
    el.__novaIframeWatched = true;
    try {
      var cur = el.getAttribute("src") || el.src || "";
      if (cur) checkIframeSrc(cur);
    } catch (e) {}
  }
  document.querySelectorAll("iframe").forEach(watchIframe);
  // اعترض setAttribute لالتقاط iframes المُحمَّلة كسولاً
  var origSetAttr = Element.prototype.setAttribute;
  Element.prototype.setAttribute = function(name, value) {
    if (name === "src" && this.tagName === "IFRAME") checkIframeSrc(value);
    return origSetAttr.apply(this, arguments);
  };
  var iframeObs = new MutationObserver(function(muts) {
    muts.forEach(function(m) {
      (m.addedNodes || []).forEach(function(n) {
        if (n.tagName === "IFRAME") watchIframe(n);
        if (n.querySelectorAll) n.querySelectorAll("iframe").forEach(watchIframe);
      });
    });
  });
  iframeObs.observe(document.documentElement, { childList: true, subtree: true });

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

  function decodeB64Utf8(str) {
    try {
      var clean = String(str || "").replace(/-/g, "+").replace(/_/g, "/").replace(/[^A-Za-z0-9+/=]/g, "");
      var bin = atob(clean);
      var bytes = new Uint8Array(bin.length);
      for (var i = 0; i < bin.length; i++) bytes[i] = bin.charCodeAt(i);
      if (typeof TextDecoder === "function") return new TextDecoder("utf-8", { fatal: false }).decode(bytes);
      return bin;
    } catch (e) { return ""; }
  }
  function scanVoeJsonScripts() {
    try {
      var scripts = document.querySelectorAll('script[type="application/json"]');
      for (var i = 0; i < scripts.length; i++) {
        try {
          var arr = JSON.parse((scripts[i].textContent || "").trim());
          var raw = Array.isArray(arr) ? arr[0] : null;
          if (typeof raw !== "string" || raw.length < 40) continue;
          var s = raw.replace(/[a-zA-Z]/g, function(c) {
            var base = c <= "Z" ? 65 : 97;
            return String.fromCharCode(((c.charCodeAt(0) - base + 13) % 26) + base);
          });
          var junks = ["@$", "^^", "~@", "%?", "*~", "!!", "#&"];
          for (var j = 0; j < junks.length; j++) s = s.split(junks[j]).join("");
          s = decodeB64Utf8(s);
          var shifted = "";
          for (var k = 0; k < s.length; k++) shifted += String.fromCharCode(s.charCodeAt(k) - 3);
          s = shifted.split("").reverse().join("");
          s = decodeB64Utf8(s);
          var parsed = JSON.parse(s);
          var media = (parsed && (parsed.source || parsed.hls)) || "";
          if (media && isVideoUrl(media)) {
            report(media, media.toLowerCase().indexOf(".m3u8") !== -1 ? "hls" : "mp4");
            return true;
          }
        } catch (e2) {}
      }
    } catch (e) {}
    return false;
  }
  function scanPackedScripts() {
    try {
      var sc = document.scripts;
      for (var i = 0; i < sc.length; i++) {
        var txt = sc[i].textContent || "";
        if (txt.indexOf("eval(function(p,a,c,k,e,") === -1) continue;
        var re = /eval\\(function\\(p,a,c,k,e,[dr]\\)\\{[\\s\\S]*?\\}\\'?\\('([\\s\\S]*?)',\\s*(\\d+),\\s*(\\d+),\\s*'([\\s\\S]*?)'\\.split\\('\\|'\\)/;
        var reExact = /eval\\(function\\(p,a,c,k,e,[dr]\\)\\{[\\s\\S]*?\\}\\('([\\s\\S]*?)',\\s*(\\d+),\\s*(\\d+),\\s*'([\\s\\S]*?)'\\.split\\('\\|'\\)/;
        var m = reExact.exec(txt) || re.exec(txt);
        if (!m) continue;
        var bs = String.fromCharCode(92);
        var payload = m[1].split(bs + "'").join("'").split(bs + bs).join(bs);
        var radix = Number(m[2]), count = Number(m[3]), symtab = m[4].split("|");
        var enc = function(num) {
          var first = num < radix ? "" : enc(Math.floor(num / radix));
          var rem = num % radix;
          return first + (rem > 35 ? String.fromCharCode(rem + 29) : rem.toString(36));
        };
        var unpacked = payload;
        while (count--) if (symtab[count]) unpacked = unpacked.replace(new RegExp(bs + "b" + enc(count) + bs + "b", "g"), symtab[count]);
        var uMatch = unpacked.match(/(https?:\\/\\/[^"'\\s<>]+\\.(?:m3u8|mp4)[^"'\\s<>]*)/i);
        if (uMatch && uMatch[1] && isVideoUrl(uMatch[1])) {
          report(uMatch[1]);
          return true;
        }
      }
    } catch (e) {}
    return false;
  }
  function triggerAutoPlay() {
    try {
      if (window.jwplayer && typeof window.jwplayer === "function") {
        try { window.jwplayer().play(true); } catch (e) {}
      }
      var btns = document.querySelectorAll('.vjs-big-play-button,.plyr__control--overlaid,.play-button,[aria-label*="Play"]');
      for (var i = 0; i < btns.length; i++) { try { btns[i].click(); } catch (e) {} }
      var vids = document.querySelectorAll("video");
      for (var j = 0; j < vids.length; j++) { try { vids[j].muted = true; vids[j].play && vids[j].play(); } catch (e) {} }
    } catch (e) {}
  }

  // 4) fallback: افحص أداء الشبكة كل 500ms لأي مورد فيديو (لبعض المشغّلات المُخصّصة)
  var pollCount = 0;
  var poll = setInterval(function () {
    pollCount++;
    if (reported || pollCount > 40) { clearInterval(poll); return; }
    try {
      if (scanVoeJsonScripts()) return;
      if (pollCount === 1 && scanPackedScripts()) return;
      if (pollCount === 1 || pollCount === 4) triggerAutoPlay();
      if (window.MDCore && typeof window.MDCore.wurl === "string" && window.MDCore.wurl.length > 8) {
        report(window.MDCore.wurl, "mp4");
        return;
      }
      var stIds = ["robotlink", "ideoolink", "norobotlink"];
      for (var sIdx = 0; sIdx < stIds.length; sIdx++) {
        var stEl = document.getElementById(stIds[sIdx]);
        var stTxt = stEl && (stEl.textContent || stEl.innerText || "").trim();
        if (stTxt && stTxt.indexOf("get_video?") !== -1 && stTxt.indexOf("token=") !== -1) {
          var stUrl = stTxt.indexOf("http") === 0 ? stTxt : "https://" + stTxt.replace(/^\\/+/, "");
          if (stUrl.indexOf("stream=1") === -1) stUrl += "&stream=1";
          report(stUrl, "mp4");
          return;
        }
      }
      if (window.sources && typeof window.sources.hls === "string" && isVideoUrl(window.sources.hls)) {
        report(window.sources.hls, "hls");
        return;
      }
      var vids = document.querySelectorAll("video,source");
      for (var vIdx = 0; vIdx < vids.length; vIdx++) {
        var vSrc = vids[vIdx].currentSrc || vids[vIdx].src || vids[vIdx].getAttribute("src") || "";
        if (isVideoUrl(vSrc)) { report(vSrc); return; }
      }
      var entries = performance.getEntriesByType("resource");
      for (var i = 0; i < entries.length; i++) {
        if (isVideoUrl(entries[i].name)) { report(entries[i].name); break; }
      }
    } catch (e) {}
  }, 250);
  setTimeout(function () {
    if (reported) return;
    try {
      if (scanVoeJsonScripts()) return;
      scanPackedScripts();
      triggerAutoPlay();
    } catch (e) {}
  }, 120);

  true;
})();
`;

function resolveInitialEmbedUrl(rawUrl: string, referer?: string): string {
  const m = rawUrl.match(/^https?:\/\/(?:www\.)?voe\.sx\/e\/([a-z0-9_-]+)/i);
  if (m?.[1]) {
    if (referer) {
      try {
        const refOrigin = new URL(referer).origin;
        if (!/voe\.sx$/i.test(new URL(referer).hostname)) {
          return `${refOrigin}/e/${m[1]}`;
        }
      } catch {}
    }
    return `https://caseyseemavoid.com/e/${m[1]}`;
  }
  return rawUrl;
}

export function HiddenResolverWebView({ pageUrl, refererOverride, timeoutMs = 12000, onResolved, onFailed }: Props) {
  const doneRef       = useRef(false);
  const followedRef   = useRef(false);
  const webRef        = useRef<WebView>(null);
  // currentUrl يتغيّر عند متابعة iframe وسيط — يُعيد تحميل WebView للصفحة الداخلية
  const [currentUrl, setCurrentUrl] = React.useState(() => resolveInitialEmbedUrl(pageUrl, refererOverride));

  const finish = useCallback((fn: () => void) => {
    if (doneRef.current) return;
    doneRef.current = true;
    fn();
  }, []);

  const handleMessage = useCallback((e: WebViewMessageEvent) => {
    try {
      const data = JSON.parse(e.nativeEvent.data);
      if (data?.kind === "resolved" && data.url) {
        const hdrs: Record<string, string> = {};
        if (data.referer) {
          hdrs.Referer = data.referer;
          hdrs.Origin = data.origin || data.referer;
        }
        if (data.ua) hdrs["User-Agent"] = data.ua;
        finish(() => onResolved({
          url: data.url,
          type: data.type,
          headers: Object.keys(hdrs).length > 0 ? hdrs : undefined,
        }));
      } else if (data?.kind === "follow_iframe" && data.url && !followedRef.current && !doneRef.current) {
        // رابط iframe وسيط (مثل ifrom.net) — تابعه ليتمكن SNIFF_SCRIPT من الاعتراض داخله
        followedRef.current = true;
        setCurrentUrl(data.url);
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
      source={{ uri: currentUrl, headers: refererOverride ? { Referer: refererOverride } : undefined }}
      style={styles.hidden}
      containerStyle={styles.hidden}
      pointerEvents="none"
      injectedJavaScript={SNIFF_SCRIPT}
      injectedJavaScriptBeforeContentLoaded={AD_BLOCK_SCRIPT + SNIFF_SCRIPT}
      onMessage={handleMessage}
      onError={() => finish(() => onFailed("load-error"))}
      onHttpError={(ev) => {
        const status = ev?.nativeEvent?.statusCode;
        const m = currentUrl.match(/^https?:\/\/(?:www\.)?voe\.sx\/e\/([a-z0-9_-]+)/i);
        if (m?.[1] && status === 403 && !followedRef.current && !doneRef.current) {
          followedRef.current = true;
          let mirrorOrigin = "https://caseyseemavoid.com";
          if (refererOverride) {
            try {
              const rOrigin = new URL(refererOverride).origin;
              if (!/voe\.sx$/i.test(rOrigin)) mirrorOrigin = rOrigin;
            } catch {}
          }
          setCurrentUrl(`${mirrorOrigin}/e/${m[1]}`);
        }
      }}
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

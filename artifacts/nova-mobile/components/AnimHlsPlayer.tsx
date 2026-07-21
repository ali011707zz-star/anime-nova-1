/**
 * AnimHlsPlayer — مشغّل HLS مخصص للأنيميشن عبر WebView + hls.js
 *
 * المشكلة: ExoPlayer يُرسِل الـ segments عبر VPS proxy → CDN يحجب IP الـ VPS.
 * الحل: WebView (Chromium on Android) يجلب الـ segments مباشرةً بـ IP الجهاز → CDN يسمح.
 *
 * البنية:
 *  • WebView (pointerEvents="none") — يشغّل hls.js فقط، لا يستقبل لمسات
 *  • RN overlay — يتحكم بالإيماءات (سحب للبحث، نقر للتحكم، نقر مزدوج للتخطي)
 *  • Bridge: injectJavaScript (RN→WebView) + onMessage (WebView→RN)
 */
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  Animated, Dimensions, Easing, PanResponder, Platform,
  Pressable, StyleSheet, Text, View,
} from "react-native";
import { WebView } from "react-native-webview";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { StatusBar } from "expo-status-bar";
import * as ScreenOrientation from "expo-screen-orientation";
import { useSafeAreaInsets } from "react-native-safe-area-context";

const { width: W, height: H } = Dimensions.get("window");

/* ── Types ── */
export interface AnimHlsSource {
  url: string;           // raw M3U8 URL — هاتف يجلب مباشرة
  label: string;
  quality: "1080p FHD" | "720p HD" | "360p SD";
  headers?: Record<string, string>;
  subtitleUrl?: string;
}

interface SubCue { start: number; end: number; text: string }

interface Props {
  sources: AnimHlsSource[];
  initialSourceIndex?: number;
  title?: string;
  episode?: number;
  episodeTitle?: string;
  initialPosition?: number;
  onBack: () => void;
  onProgress?: (pos: number, dur: number) => void;
  onError?: () => void;
  onNextEpisode?: () => void;
  onPrevEpisode?: () => void;
}

/* ── Utilities ── */
function fmtTime(s: number): string {
  if (!isFinite(s) || s < 0) return "0:00";
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = Math.floor(s % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(sec).padStart(2, "0")}`;
  return `${m}:${String(sec).padStart(2, "0")}`;
}

function parseVTTTime(s: string): number {
  const parts = s.replace(",", ".").split(":");
  let sec = 0;
  for (const p of parts) sec = sec * 60 + parseFloat(p);
  return isNaN(sec) ? 0 : sec;
}

function parseVTT(text: string): SubCue[] {
  const cues: SubCue[] = [];
  let tsOffset = 0;
  const tsMapM = text.match(/X-TIMESTAMP-MAP=MPEGTS:(\d+),LOCAL:([\d:.]+)/i);
  if (tsMapM) {
    const mpegts = parseInt(tsMapM[1], 10) / 90000;
    const local = parseVTTTime(tsMapM[2].trim());
    tsOffset = Math.max(0, mpegts - local);
  }
  const blocks = text.split(/\n\n+/);
  for (const block of blocks) {
    const lines = block.trim().split("\n");
    let ti = 0;
    if (ti < lines.length && !lines[ti].includes("-->")) ti++;
    if (ti >= lines.length) continue;
    const m = lines[ti].match(/(\d[\d:.]*)\s*-->\s*(\d[\d:.]*)/);
    if (!m) continue;
    const start = Math.max(0, parseVTTTime(m[1]) - tsOffset);
    const end = Math.max(0, parseVTTTime(m[2]) - tsOffset);
    const textLines = lines.slice(ti + 1)
      .map(l => l.replace(/<[^>]*>/g, "")
        .replace(/&amp;/g, "&").replace(/&lt;/g, "<")
        .replace(/&gt;/g, ">").replace(/&nbsp;/g, " ").trim())
      .filter(Boolean);
    if (textLines.length > 0) cues.push({ start, end, text: textLines.join("\n") });
  }
  return cues;
}

function bisectCue(cues: SubCue[], ct: number): SubCue | null {
  let lo = 0, hi = cues.length - 1;
  while (lo <= hi) {
    const mid = (lo + hi) >>> 1;
    if (cues[mid].start <= ct) lo = mid + 1;
    else hi = mid - 1;
  }
  if (hi >= 0 && cues[hi].end >= ct) return cues[hi];
  return null;
}

/* ── hls.js HTML — يُشغَّل داخل WebView ── */
const HLS_HTML = `<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:100%;height:100%;background:#000;overflow:hidden}
#v{width:100%;height:100%;object-fit:contain;display:block}
</style>
</head>
<body>
<video id="v" playsinline autoplay webkit-playsinline x5-playsinline x5-video-player-type="h5"></video>
<script src="https://cdn.jsdelivr.net/npm/hls.js@1.6.2/dist/hls.min.js"></script>
<script>
var v=document.getElementById('v');
var hls=null;
var currentUrl='';

function post(o){
  try{
    if(window.ReactNativeWebView)window.ReactNativeWebView.postMessage(JSON.stringify(o));
  }catch(e){}
}

v.addEventListener('timeupdate',function(){
  post({k:'t',t:v.currentTime,d:isFinite(v.duration)?v.duration:0});
});
v.addEventListener('ended',function(){post({k:'ended'})});
v.addEventListener('waiting',function(){post({k:'buf',v:true})});
v.addEventListener('canplay',function(){post({k:'buf',v:false})});
v.addEventListener('playing',function(){post({k:'buf',v:false});post({k:'play',v:true})});
v.addEventListener('pause',function(){post({k:'play',v:false})});
v.addEventListener('loadedmetadata',function(){post({k:'ready',d:isFinite(v.duration)?v.duration:0})});
v.addEventListener('error',function(){
  post({k:'err',msg:'video_error:'+(v.error?v.error.code:'?')});
});

function loadSrc(url,ref){
  currentUrl=url;
  if(hls){hls.destroy();hls=null;}
  post({k:'buf',v:true});

  /* MP4 — تشغيل مباشر عبر عنصر video بدون hls.js */
  if(/\.mp4(\?|$|#)/i.test(url)||(url.indexOf('.mp4')!==-1&&url.indexOf('.m3u8')===-1)){
    v.src=url;
    v.load();
    v.play().catch(function(){});
    return;
  }

  if(typeof Hls!=='undefined'&&Hls.isSupported()){
    var cfg={
      enableWorker:false,
      maxBufferLength:30,
      maxMaxBufferLength:60,
      startLevel:-1,
      abrEwmaDefaultEstimate:500000,
      fragLoadingTimeOut:20000,
      manifestLoadingTimeOut:15000,
      levelLoadingTimeOut:15000,
    };
    hls=new Hls(cfg);
    hls.loadSource(url);
    hls.attachMedia(v);
    hls.on(Hls.Events.ERROR,function(ev,data){
      if(data.fatal){
        post({k:'err',msg:data.type+':'+data.details});
        if(data.type===Hls.ErrorTypes.NETWORK_ERROR){
          try{hls.startLoad();}catch(e){}
        } else if(data.type===Hls.ErrorTypes.MEDIA_ERROR){
          try{hls.recoverMediaError();}catch(e){}
        }
      }
    });
    hls.on(Hls.Events.MANIFEST_PARSED,function(ev,data){
      post({k:'levels',n:data.levels.length});
      v.play().catch(function(){});
    });
  } else if(v.canPlayType('application/vnd.apple.mpegurl')){
    /* iOS native HLS */
    v.src=url;
    v.load();
    v.play().catch(function(){});
  } else {
    post({k:'err',msg:'hls_not_supported'});
  }
}

/* ── دوال مكشوفة لـ injectJavaScript (أكثر موثوقية من MessageEvent) ── */
window.NOVA_load  = function(url,ref){ loadSrc(url,ref||''); };
window.NOVA_seek  = function(t){ v.currentTime=t; post({k:'seeked',t:t}); };
window.NOVA_play  = function(){ v.play().catch(function(){}); };
window.NOVA_pause = function(){ v.pause(); };
window.NOVA_speed = function(s){ v.playbackRate=s; };

/* إشعار React Native أن الـ WebView جاهز لاستقبال الأوامر */
post({k:'webview_init'});
</script>
</body>
</html>`;

/* ── Spinning loader ── */
function SpinRing() {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    Animated.loop(Animated.timing(rot, { toValue: 1, duration: 900, easing: Easing.linear, useNativeDriver: true })).start();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  return (
    <View style={{ width: 48, height: 48 }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: 24, borderWidth: 2.5, borderColor: "rgba(139,92,246,0.15)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, { borderRadius: 24, borderWidth: 2.5, borderColor: "transparent", borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.5)", transform: [{ rotate }] }]} />
    </View>
  );
}

/* ══════════════ المكوّن الرئيسي ══════════════ */
export default function AnimHlsPlayer({
  sources,
  initialSourceIndex = 0,
  title = "",
  episode,
  episodeTitle,
  initialPosition = 0,
  onBack,
  onProgress,
  onError,
  onNextEpisode,
  onPrevEpisode,
}: Props) {
  const insets = useSafeAreaInsets();
  const webRef = useRef<WebView>(null);

  /* ── Player state ── */
  const [srcIdx, setSrcIdx] = useState(initialSourceIndex);
  const [position, setPosition] = useState(0);
  const [duration, setDuration] = useState(0);
  const [isPlaying, setIsPlaying] = useState(true);
  const [isBuffering, setIsBuffering] = useState(true);
  const [isEnded, setIsEnded] = useState(false);
  const [errorCount, setErrorCount] = useState(0);

  /* ── UI state ── */
  const [showControls, setShowControls] = useState(true);
  const [showSrcPanel, setShowSrcPanel] = useState(false);
  const [seekPreview, setSeekPreview] = useState<number | null>(null); // drag preview position

  /* ── Subtitle state ── */
  const [cues, setCues] = useState<SubCue[]>([]);
  const [activeCue, setActiveCue] = useState<SubCue | null>(null);
  const [subOn, setSubOn] = useState(true);
  const subFetchedRef = useRef<string>("");

  /* ── Orientation ── */
  const [isLandscape, setIsLandscape] = useState(false);

  /* ── Refs ── */
  const posRef = useRef(0);
  const durRef = useRef(0);
  const seekingRef = useRef(false);
  const gestureStartXRef = useRef(0);
  const gestureStartPosRef = useRef(0);
  const controlsTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const loadTimeoutRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const consecutiveErrRef = useRef(0);
  const loadedRef = useRef(false); // هل تم الإرسال للـ WebView؟
  const positionLoadedRef = useRef(false); // هل تم seek للـ initialPosition؟

  const currentSrc = sources[srcIdx];

  /* ── Lock to landscape on mount ── */
  useEffect(() => {
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_LEFT).catch(() => {});
    setIsLandscape(true);
    return () => {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    };
  }, []);

  /* ── Send load command to WebView (via direct NOVA_load call — more reliable than MessageEvent) ── */
  const sendLoad = useCallback((src: AnimHlsSource, seekTo?: number) => {
    if (!webRef.current) return;
    const url = src.url;
    const ref = src.headers?.Referer || "";
    /* Call exposed window function directly — avoids Android WebView MessageEvent quirks */
    webRef.current.injectJavaScript(
      `(function(){if(window.NOVA_load){window.NOVA_load(${JSON.stringify(url)},${JSON.stringify(ref)});}true;})();`
    );
    setIsBuffering(true);
    setIsEnded(false);
    setIsPlaying(true);
    loadedRef.current = true;
    positionLoadedRef.current = false;
    /* Start load timeout — if no readyToPlay in 25s, try next source */
    if (loadTimeoutRef.current) clearTimeout(loadTimeoutRef.current);
    loadTimeoutRef.current = setTimeout(() => {
      loadTimeoutRef.current = null;
      console.warn(`[AnimHlsPlayer] ⏱ timeout 25s — ${src.label}`);
      handleError();
    }, 25000);
    /* Seek to saved position after load */
    if (seekTo && seekTo > 5) {
      setTimeout(() => {
        webRef.current?.injectJavaScript(`(function(){if(window.NOVA_seek)window.NOVA_seek(${seekTo});true;})();`);
        positionLoadedRef.current = true;
      }, 2500);
    }
  }, []); // eslint-disable-line

  /* ── WebView onLoad (fallback — in case webview_init message is missed) ── */
  const handleWebViewLoad = useCallback(() => {
    /* نؤجل 800ms إضافية بعد onLoad للتأكد من تنفيذ scripts الخارجية */
    setTimeout(() => {
      if (!loadedRef.current && currentSrc) {
        sendLoad(currentSrc, initialPosition > 5 ? initialPosition : undefined);
      }
    }, 800);
  }, [currentSrc, initialPosition, sendLoad]);

  /* ── Messages from WebView ── */
  const handleMessage = useCallback((event: any) => {
    try {
      const msg = JSON.parse(event.nativeEvent.data);
      /* WebView أعلن جهوزيته — أرسل الـ load فوراً (هذا أكثر موثوقية من onLoad) */
      if (msg.k === "webview_init") {
        if (currentSrc) sendLoad(currentSrc, initialPosition > 5 ? initialPosition : undefined);
        return;
      }
      if (msg.k === "t") {
        const t = msg.t as number;
        const d = msg.d as number;
        posRef.current = t;
        durRef.current = d;
        if (!seekingRef.current) {
          setPosition(t);
          setDuration(d > 0 ? d : durRef.current);
        }
        onProgress?.(t, d);
        /* subtitle */
        if (cues.length > 0) setActiveCue(bisectCue(cues, t));
        /* Resume to saved position (fallback if timeout-based seek failed) */
        if (!positionLoadedRef.current && initialPosition > 5 && t < 3) {
          positionLoadedRef.current = true;
          webRef.current?.injectJavaScript(`(function(){if(window.NOVA_seek)window.NOVA_seek(${initialPosition});true;})();`);
        }
      } else if (msg.k === "ready") {
        if (loadTimeoutRef.current) { clearTimeout(loadTimeoutRef.current); loadTimeoutRef.current = null; }
        consecutiveErrRef.current = 0;
        setIsBuffering(false);
        if (msg.d > 0) setDuration(msg.d);
        console.log(`[AnimHlsPlayer] ✅ ready: ${currentSrc?.label} → ${currentSrc?.url?.slice(0, 80)}`);
      } else if (msg.k === "buf") {
        setIsBuffering(!!msg.v);
      } else if (msg.k === "play") {
        setIsPlaying(!!msg.v);
      } else if (msg.k === "ended") {
        setIsEnded(true);
        setIsPlaying(false);
        autoShowControls();
        if (onNextEpisode) onNextEpisode();
      } else if (msg.k === "err") {
        console.warn(`[AnimHlsPlayer] ❌ err: ${msg.msg} (${currentSrc?.label})`);
        handleError();
      } else if (msg.k === "levels") {
        console.log(`[AnimHlsPlayer] HLS levels: ${msg.n}`);
      }
    } catch {}
  }, [cues, currentSrc, initialPosition, onProgress, onNextEpisode]); // eslint-disable-line

  /* ── Error handling: try next source ── */
  const handleError = useCallback(() => {
    if (loadTimeoutRef.current) { clearTimeout(loadTimeoutRef.current); loadTimeoutRef.current = null; }
    setIsBuffering(false);
    consecutiveErrRef.current += 1;
    const nextIdx = srcIdx + 1;
    if (nextIdx >= sources.length || consecutiveErrRef.current > sources.length) {
      setErrorCount(e => e + 1);
      onError?.();
      return;
    }
    console.log(`[AnimHlsPlayer] trying next: ${sources[nextIdx]?.label}`);
    setSrcIdx(nextIdx);
    sendLoad(sources[nextIdx]);
  }, [srcIdx, sources, sendLoad, onError]);

  /* ── Change source manually ── */
  const switchSource = useCallback((idx: number) => {
    const saved = posRef.current;
    consecutiveErrRef.current = 0;
    setSrcIdx(idx);
    setShowSrcPanel(false);
    sendLoad(sources[idx], saved > 5 ? saved : undefined);
    /* load subtitles for new source */
    subFetchedRef.current = "";
  }, [sources, sendLoad]);

  /* ── Controls auto-hide ── */
  const autoShowControls = useCallback(() => {
    setShowControls(true);
    if (controlsTimerRef.current) clearTimeout(controlsTimerRef.current);
    controlsTimerRef.current = setTimeout(() => setShowControls(false), 4000);
  }, []);

  /* ── Auto-hide controls when playing ── */
  useEffect(() => {
    if (isPlaying && !showSrcPanel) {
      controlsTimerRef.current = setTimeout(() => setShowControls(false), 3500);
    }
    return () => { if (controlsTimerRef.current) clearTimeout(controlsTimerRef.current); };
  }, [isPlaying, showSrcPanel]);

  /* ── Subtitle loading ── */
  useEffect(() => {
    const subUrl = currentSrc?.subtitleUrl;
    if (!subUrl || subUrl === subFetchedRef.current) return;
    subFetchedRef.current = subUrl;
    setCues([]);
    setActiveCue(null);
    fetch(subUrl).then(r => r.text()).then(text => {
      const parsed = parseVTT(text);
      if (parsed.length > 0) setCues(parsed);
    }).catch(() => {});
  }, [currentSrc?.subtitleUrl]);

  /* ── Cleanup ── */
  useEffect(() => {
    return () => {
      if (loadTimeoutRef.current) clearTimeout(loadTimeoutRef.current);
      if (controlsTimerRef.current) clearTimeout(controlsTimerRef.current);
    };
  }, []);

  /* ── Seek helper ── */
  const seek = useCallback((t: number) => {
    const clamped = Math.max(0, Math.min(durRef.current || 999999, t));
    setPosition(clamped);
    posRef.current = clamped;
    webRef.current?.injectJavaScript(`(function(){if(window.NOVA_seek)window.NOVA_seek(${clamped});true;})();`);
  }, []);

  const togglePlay = useCallback(() => {
    if (isEnded) {
      seek(0);
      setIsEnded(false);
      webRef.current?.injectJavaScript(`(function(){if(window.NOVA_play)window.NOVA_play();true;})();`);
      setIsPlaying(true);
      return;
    }
    if (isPlaying) {
      webRef.current?.injectJavaScript(`(function(){if(window.NOVA_pause)window.NOVA_pause();true;})();`);
    } else {
      webRef.current?.injectJavaScript(`(function(){if(window.NOVA_play)window.NOVA_play();true;})();`);
    }
    setIsPlaying(p => !p);
  }, [isPlaying, isEnded, seek]);

  /* ── Seek bar progress (0–1) ── */
  const progress = duration > 0 ? (seekPreview !== null ? seekPreview : position) / duration : 0;

  /* ── PanResponder for gestures ── */
  const doubleTapTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastTapRef = useRef(0);

  const panResponder = useRef(
    PanResponder.create({
      onStartShouldSetPanResponder: () => true,
      onMoveShouldSetPanResponder: (_e, gs) => Math.abs(gs.dx) > 8,
      onPanResponderGrant: (e, gs) => {
        gestureStartXRef.current = gs.x0;
        gestureStartPosRef.current = posRef.current;
        seekingRef.current = false;
      },
      onPanResponderMove: (_e, gs) => {
        if (Math.abs(gs.dx) < 12) return;
        seekingRef.current = true;
        const d = durRef.current;
        if (!d) return;
        const delta = (gs.dx / W) * Math.min(d, 120); // 120s max per full swipe
        const newPos = Math.max(0, Math.min(d, gestureStartPosRef.current + delta));
        setSeekPreview(newPos);
      },
      onPanResponderRelease: (_e, gs) => {
        if (seekingRef.current) {
          const d = durRef.current;
          if (d) {
            const delta = (gs.dx / W) * Math.min(d, 120);
            seek(Math.max(0, Math.min(d, gestureStartPosRef.current + delta)));
          }
          seekingRef.current = false;
          setSeekPreview(null);
        } else {
          /* Tap — show controls or double-tap seek */
          const now = Date.now();
          const side = gs.x0 < W / 2 ? "right" : "left"; // RTL: right side = forward in RN coord
          if (now - lastTapRef.current < 300) {
            /* Double tap */
            if (doubleTapTimerRef.current) { clearTimeout(doubleTapTimerRef.current); doubleTapTimerRef.current = null; }
            seek(posRef.current + (side === "left" ? -10 : 10));
          } else {
            lastTapRef.current = now;
            doubleTapTimerRef.current = setTimeout(() => {
              doubleTapTimerRef.current = null;
              setShowControls(v => {
                if (!v) {
                  if (controlsTimerRef.current) clearTimeout(controlsTimerRef.current);
                  controlsTimerRef.current = setTimeout(() => setShowControls(false), 4000);
                }
                return !v;
              });
            }, 300);
          }
        }
      },
      onPanResponderTerminate: () => {
        seekingRef.current = false;
        setSeekPreview(null);
      },
    })
  ).current;

  /* ── Seek bar interaction ── */
  const seekBarWidth = W - 100; // approximate
  const handleSeekBarPress = useCallback((evt: any) => {
    const x = evt.nativeEvent.locationX;
    const ratio = Math.min(1, Math.max(0, x / seekBarWidth));
    seek(ratio * (durRef.current || 0));
    autoShowControls();
  }, [seekBarWidth, seek, autoShowControls]);

  const hasSub = cues.length > 0;

  return (
    /* direction:'ltr' — يمنع RTL الخاص بالتطبيق العربي من عكس layout المشغّل */
    <View style={[s.root, { direction: "ltr" }]}>
      <StatusBar hidden />

      {/* ── WebView — الفيديو الفعلي ── */}
      <WebView
        ref={webRef}
        source={{ html: HLS_HTML, baseUrl: "https://nova-player.local/" }}
        style={StyleSheet.absoluteFill}
        mediaPlaybackRequiresUserAction={false}
        allowsInlineMediaPlayback
        allowsFullscreenVideo
        javaScriptEnabled
        domStorageEnabled
        originWhitelist={["*"]}
        mixedContentMode="always"
        pointerEvents="none"
        scrollEnabled={false}
        bounces={false}
        cacheEnabled={false}
        incognito
        onLoad={handleWebViewLoad}
        onMessage={handleMessage}
        onError={(e) => { console.error("[AnimHlsPlayer] WebView error:", e.nativeEvent); handleError(); }}
        renderError={() => <View style={{ flex: 1, backgroundColor: "#000" }} />}
      />

      {/* ── Gesture overlay ── */}
      <View
        style={StyleSheet.absoluteFill}
        {...panResponder.panHandlers}
      >
        {/* ── Buffering indicator ── */}
        {isBuffering && (
          <View style={s.bufferingWrap} pointerEvents="none">
            <SpinRing />
          </View>
        )}

        {/* ── Seek preview badge ── */}
        {seekPreview !== null && (
          <View style={s.seekBadge} pointerEvents="none">
            <Text style={s.seekBadgeTime}>{fmtTime(seekPreview)}</Text>
            <Text style={s.seekBadgeDelta}>{seekPreview > gestureStartPosRef.current ? "+" : ""}{fmtTime(Math.abs(seekPreview - gestureStartPosRef.current))}</Text>
          </View>
        )}

        {/* ── Controls overlay — shown conditionally ── */}
        {showControls && (
          <View style={StyleSheet.absoluteFill} pointerEvents="box-none">
            {/* Top gradient */}
            <LinearGradient
              colors={["rgba(0,0,0,0.75)", "transparent"]}
              style={s.topGrad}
              pointerEvents="none"
            />
            {/* Bottom gradient */}
            <LinearGradient
              colors={["transparent", "rgba(0,0,0,0.82)"]}
              style={s.bottomGrad}
              pointerEvents="none"
            />

            {/* ── Top bar ── */}
            <View style={[s.topBar, { paddingRight: insets.right + 12, paddingLeft: insets.left + 12 }]}>
              <Pressable onPress={onBack} style={s.backBtn} hitSlop={12}>
                <Ionicons name="arrow-back" size={20} color="#fff" />
              </Pressable>
              <View style={s.titleWrap}>
                <Text style={s.titleText} numberOfLines={1}>{title}</Text>
                {episode !== undefined && (
                  <Text style={s.epText}>الحلقة {episode}</Text>
                )}
              </View>
              {/* Source selector button */}
              <Pressable onPress={() => { setShowSrcPanel(v => !v); autoShowControls(); }} style={s.srcBtn} hitSlop={8}>
                <Ionicons name="layers" size={16} color="#fff" />
                <Text style={s.srcBtnText}>{currentSrc?.quality?.split(" ")[0] || "HD"}</Text>
              </Pressable>
              {/* Subtitle toggle */}
              {hasSub && (
                <Pressable onPress={() => setSubOn(v => !v)} style={[s.srcBtn, { marginLeft: 6 }]} hitSlop={8}>
                  <Ionicons name="logo-closed-captioning" size={16} color={subOn ? "#a78bfa" : "rgba(255,255,255,0.4)"} />
                </Pressable>
              )}
            </View>

            {/* ── Center play/pause ── */}
            <View style={s.centerWrap} pointerEvents="none">
              <View style={s.playBtn}>
                <Ionicons name={isEnded ? "reload" : isPlaying ? "pause" : "play"} size={32} color="#fff" />
              </View>
            </View>
            {/* Invisible pressable on center for play/pause */}
            <Pressable style={s.centerPressable} onPress={togglePlay} />

            {/* ── Episode nav ── */}
            {(onPrevEpisode || onNextEpisode) && (
              <View style={s.episodeNav}>
                {onPrevEpisode && (
                  <Pressable onPress={onPrevEpisode} style={s.epNavBtn}>
                    <Ionicons name="play-skip-forward" size={18} color="rgba(255,255,255,0.8)" />
                    <Text style={s.epNavText}>السابقة</Text>
                  </Pressable>
                )}
                {onNextEpisode && (
                  <Pressable onPress={onNextEpisode} style={s.epNavBtn}>
                    <Text style={s.epNavText}>التالية</Text>
                    <Ionicons name="play-skip-back" size={18} color="rgba(255,255,255,0.8)" />
                  </Pressable>
                )}
              </View>
            )}

            {/* ── Bottom seek bar ── */}
            <View style={[s.bottomBar, { paddingRight: insets.right + 12, paddingLeft: insets.left + 12 }]}>
              <Text style={s.timeText}>{fmtTime(seekPreview ?? position)}</Text>
              {/* Seek bar */}
              <Pressable style={s.seekTrack} onPress={handleSeekBarPress}>
                <View style={s.seekBg} />
                <View style={[s.seekFill, { width: `${Math.min(100, progress * 100)}%` }]} />
                <View style={[s.seekThumb, { left: `${Math.min(100, progress * 100)}%` }]} />
              </Pressable>
              <Text style={s.timeText}>{fmtTime(duration)}</Text>
            </View>
          </View>
        )}

        {/* ── Source picker panel ── */}
        {showSrcPanel && (
          <View style={s.srcPanel}>
            <LinearGradient colors={["rgba(7,5,20,0.97)", "rgba(7,5,20,0.93)"]} style={StyleSheet.absoluteFill} />
            <View style={s.srcPanelHeader}>
              <Text style={s.srcPanelTitle}>اختر المصدر</Text>
              <Pressable onPress={() => setShowSrcPanel(false)} style={s.srcPanelClose}>
                <Ionicons name="close" size={18} color="rgba(255,255,255,0.7)" />
              </Pressable>
            </View>
            {sources.map((src, i) => (
              <Pressable key={i} onPress={() => switchSource(i)} style={[s.srcItem, i === srcIdx && s.srcItemActive]}>
                <View style={[s.srcItemDot, i === srcIdx && s.srcItemDotActive]} />
                <Text style={[s.srcItemLabel, i === srcIdx && s.srcItemLabelActive]}>
                  {`سيرفر ${i + 1} — ${src.quality}`}
                </Text>
                <Text style={s.srcItemTag} numberOfLines={1}>{src.label || "—"}</Text>
              </Pressable>
            ))}
          </View>
        )}

        {/* ── Subtitle overlay ── */}
        {subOn && activeCue && !showSrcPanel && (
          <View style={s.subWrap} pointerEvents="none">
            {activeCue.text.split(/\r?\n/).map((line, i) => (
              <Text key={i} style={s.subText}>{line || " "}</Text>
            ))}
          </View>
        )}
      </View>
    </View>
  );
}

const s = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#000" },
  bufferingWrap: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", zIndex: 5 } as any,
  seekBadge: { position: "absolute", top: "40%", left: "50%", transform: [{ translateX: -56 }, { translateY: -32 }], backgroundColor: "rgba(0,0,0,0.72)", borderRadius: 16, paddingHorizontal: 18, paddingVertical: 10, alignItems: "center" },
  seekBadgeTime: { fontSize: 22, fontFamily: "Cairo_700Bold", color: "#fff" },
  seekBadgeDelta: { fontSize: 13, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.6)", marginTop: 2 },

  topGrad: { position: "absolute", top: 0, left: 0, right: 0, height: 110 },
  bottomGrad: { position: "absolute", bottom: 0, left: 0, right: 0, height: 130 },

  topBar: { position: "absolute", top: 0, left: 0, right: 0, flexDirection: "row", alignItems: "center", paddingVertical: 14, gap: 10 },
  backBtn: { width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.4)", alignItems: "center", justifyContent: "center" },
  titleWrap: { flex: 1, gap: 2 },
  titleText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "#fff" },
  epText: { fontSize: 10, color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular" },
  srcBtn: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(139,92,246,0.25)", borderRadius: 10, paddingHorizontal: 10, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(139,92,246,0.4)" },
  srcBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

  centerWrap: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" } as any,
  centerPressable: { position: "absolute", width: 90, height: 90, left: "50%", top: "50%", transform: [{ translateX: -45 }, { translateY: -45 }] },
  playBtn: { width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(0,0,0,0.55)", borderWidth: 1.5, borderColor: "rgba(255,255,255,0.25)", alignItems: "center", justifyContent: "center" },

  episodeNav: { position: "absolute", right: 20, top: "50%", transform: [{ translateY: -30 }], gap: 10 },
  epNavBtn: { flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: "rgba(0,0,0,0.45)", borderRadius: 10, paddingHorizontal: 10, paddingVertical: 7, borderWidth: 1, borderColor: "rgba(255,255,255,0.15)" },
  epNavText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.85)" },

  bottomBar: { position: "absolute", bottom: 0, left: 0, right: 0, flexDirection: "row", alignItems: "center", paddingBottom: 18, paddingTop: 10, gap: 10 },
  timeText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.8)", minWidth: 36, textAlign: "center" },
  seekTrack: { flex: 1, height: 32, justifyContent: "center" },
  seekBg: { position: "absolute", left: 0, right: 0, height: 3, borderRadius: 2, backgroundColor: "rgba(255,255,255,0.22)" },
  seekFill: { position: "absolute", left: 0, height: 3, borderRadius: 2, backgroundColor: "#8B5CF6" },
  seekThumb: { position: "absolute", width: 14, height: 14, borderRadius: 7, backgroundColor: "#fff", marginLeft: -7, top: 9, shadowColor: "#000", shadowOpacity: 0.5, shadowRadius: 4, elevation: 4 },

  /* Source panel */
  srcPanel: { position: "absolute", bottom: 0, left: 0, right: 0, borderTopLeftRadius: 20, borderTopRightRadius: 20, overflow: "hidden", paddingBottom: 24 },
  srcPanelHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 20, paddingVertical: 14, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.08)" },
  srcPanelTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "#fff" },
  srcPanelClose: { width: 30, height: 30, borderRadius: 15, backgroundColor: "rgba(255,255,255,0.08)", alignItems: "center", justifyContent: "center" },
  srcItem: { flexDirection: "row", alignItems: "center", gap: 12, paddingHorizontal: 20, paddingVertical: 12, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  srcItemActive: { backgroundColor: "rgba(139,92,246,0.12)" },
  srcItemDot: { width: 8, height: 8, borderRadius: 4, backgroundColor: "rgba(255,255,255,0.2)" },
  srcItemDotActive: { backgroundColor: "#8B5CF6" },
  srcItemLabel: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.7)" },
  srcItemLabelActive: { color: "#fff" },
  srcItemTag: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(139,92,246,0.8)", backgroundColor: "rgba(139,92,246,0.15)", paddingHorizontal: 8, paddingVertical: 3, borderRadius: 6 },

  /* Subtitles */
  subWrap: { position: "absolute", bottom: 80, left: 20, right: 20, alignItems: "center" },
  subText: { fontSize: 16, fontFamily: "Cairo_700Bold", color: "#fff", textAlign: "center", textShadowColor: "rgba(0,0,0,0.95)", textShadowRadius: 8, textShadowOffset: { width: 0, height: 1 }, lineHeight: 24 },
});

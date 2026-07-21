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
  Animated, Dimensions, Easing, I18nManager, PanResponder, Platform,
  Pressable, StyleSheet, Text, View, ActivityIndicator,
} from "react-native";
import { WebView } from "react-native-webview";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { StatusBar } from "expo-status-bar";
import * as ScreenOrientation from "expo-screen-orientation";
import { useSafeAreaInsets } from "react-native-safe-area-context";

const { width: W, height: H } = Dimensions.get("window");
const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];

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

/* ── hls.js HTML — يُشغَّل داخل WebView ──
   ⚠️ الإصلاح الأساسي: post({k:'webview_init'}) يُرسَل داخل window.addEventListener('load', ...)
      بعد اكتمال تحميل hls.js من CDN وليس قبله — هذا يمنع "hls_not_supported" الناتج
      عن استدعاء NOVA_load قبل أن يُعرَّف كائن Hls. */
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
  if(/\\.mp4(\\?|$|#)/i.test(url)||(url.indexOf('.mp4')!==-1&&url.indexOf('.m3u8')===-1)){
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
window.NOVA_load    = function(url,ref){ loadSrc(url,ref||''); };
window.NOVA_seek    = function(t){ v.currentTime=t; post({k:'seeked',t:t}); };
window.NOVA_play    = function(){ v.play().catch(function(){}); };
window.NOVA_pause   = function(){ v.pause(); };
window.NOVA_speed   = function(s){ v.playbackRate=s; };
window.NOVA_volume  = function(val){ v.volume=Math.max(0,Math.min(1,val)); };
window.NOVA_mute    = function(m){ v.muted=!!m; };

/* ── إشعار React Native بعد اكتمال تحميل hls.js (window.load) ──
   ملاحظة: 'load' يُطلَق بعد تحميل جميع الـ resources الخارجية (بما فيها hls.js CDN)
   على عكس DOMContentLoaded الذي يُطلَق قبل الـ scripts — هذا يضمن وجود Hls كائن عند
   استدعاء NOVA_load لاحقاً. */
window.addEventListener('load', function(){
  post({k:'webview_init'});
});
</script>
</body>
</html>`;

/* ── Spinning loader ── */
function SpinRing({ size = 52 }: { size?: number }) {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    const anim = Animated.loop(
      Animated.timing(rot, { toValue: 1, duration: 900, easing: Easing.linear, useNativeDriver: true })
    );
    anim.start();
    return () => anim.stop();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  const r = size / 2;
  return (
    <View style={{ width: size, height: size }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: r, borderWidth: 2.5, borderColor: "rgba(139,92,246,0.18)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, {
        borderRadius: r, borderWidth: 2.5, borderColor: "transparent",
        borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.45)",
        transform: [{ rotate }],
      }]} />
    </View>
  );
}

/* ── PulseRing (نبض أرجواني حول زر التشغيل عند الإيقاف المؤقت) ── */
function PulseRing() {
  const scale1 = useRef(new Animated.Value(1)).current;
  const opacity1 = useRef(new Animated.Value(0.65)).current;
  const scale2 = useRef(new Animated.Value(1)).current;
  const opacity2 = useRef(new Animated.Value(0.35)).current;
  useEffect(() => {
    const pulse = (sc: Animated.Value, op: Animated.Value, delay: number) =>
      Animated.loop(Animated.sequence([
        Animated.delay(delay),
        Animated.parallel([
          Animated.timing(sc, { toValue: 1.85, duration: 1200, easing: Easing.out(Easing.quad), useNativeDriver: true }),
          Animated.timing(op, { toValue: 0, duration: 1200, easing: Easing.out(Easing.quad), useNativeDriver: true }),
        ]),
        Animated.parallel([
          Animated.timing(sc, { toValue: 1, duration: 0, useNativeDriver: true }),
          Animated.timing(op, { toValue: delay === 0 ? 0.65 : 0.35, duration: 0, useNativeDriver: true }),
        ]),
      ]));
    const a1 = pulse(scale1, opacity1, 0);
    const a2 = pulse(scale2, opacity2, 550);
    a1.start(); a2.start();
    return () => { a1.stop(); a2.stop(); };
  }, []);
  return (
    <>
      <Animated.View pointerEvents="none" style={{
        position: "absolute", width: 90, height: 90, borderRadius: 45,
        borderWidth: 2, borderColor: "#8B5CF6",
        transform: [{ scale: scale1 }], opacity: opacity1,
      }} />
      <Animated.View pointerEvents="none" style={{
        position: "absolute", width: 90, height: 90, borderRadius: 45,
        borderWidth: 1.5, borderColor: "#a78bfa",
        transform: [{ scale: scale2 }], opacity: opacity2,
      }} />
    </>
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
  const [seekPreview, setSeekPreview] = useState<number | null>(null);
  const [isLocked, setIsLocked] = useState(false);
  const [showUnlock, setShowUnlock] = useState(false);
  const [isMuted, setIsMuted] = useState(false);
  const [speed, setSpeed] = useState(1);
  const [showSpeedMenu, setShowSpeedMenu] = useState(false);

  /* ── Volume / Brightness ── */
  const [volume, setVolume] = useState(1);
  const [brightness, setBrightness] = useState(0); // 0 = full bright; 0.8 = very dim (overlay opacity)
  const volumeRef = useRef(1);
  const brightnessRef = useRef(0);
  const brightnessStartRef = useRef(0);
  const volumeStartRef = useRef(1);

  /* ── Gesture feedback ── */
  const [feedback, setFeedback] = useState<{ type: "volume" | "brightness" | "seek"; value: number; delta?: number } | null>(null);
  const feedbackTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  /* ── Subtitle state ── */
  const [cues, setCues] = useState<SubCue[]>([]);
  const [activeCue, setActiveCue] = useState<SubCue | null>(null);
  const [subOn, setSubOn] = useState(true);
  const subFetchedRef = useRef<string>("");

  /* ── Controls animation ── */
  const controlsOpacity = useRef(new Animated.Value(1)).current;

  /* ── Refs ── */
  const posRef = useRef(0);
  const durRef = useRef(0);
  const seekingRef = useRef(false);
  const gestureStartXRef = useRef(0);
  const gestureStartYRef = useRef(0);
  const gestureStartPosRef = useRef(0);
  const gestureTypeRef = useRef<"seek" | "vol" | "bri" | null>(null);
  const gestureSideRef = useRef<"L" | "R" | null>(null);
  const controlsTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const loadTimeoutRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const consecutiveErrRef = useRef(0);
  const loadedRef = useRef(false);
  const positionLoadedRef = useRef(false);
  const unlockTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  /* Seekbar refs */
  const barRef = useRef<View>(null);
  const barWidth = useRef(W);
  const barPageX = useRef(0);
  const lastMoveX = useRef(0);
  const grantLocationXRef = useRef(0);
  const [isDragging, setIsDragging] = useState(false);
  const isDraggingRef = useRef(false);
  const [dragPct, setDragPct] = useState(0);
  const [postSeekPct, setPostSeekPct] = useState<number | null>(null);
  const postSeekTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  /* Double tap */
  const doubleTapTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastTapRef = useRef<{ time: number; side: "L" | "R" } | null>(null);

  const _nRTL = Platform.OS !== "web" && I18nManager.isRTL;

  const currentSrc = sources[srcIdx];

  /* ── Lock to LANDSCAPE_RIGHT on mount ── */
  useEffect(() => {
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT).catch(() => {});
    return () => {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    };
  }, []);

  /* ── Controls show/hide ── */
  const schedHide = useCallback(() => {
    if (controlsTimerRef.current) clearTimeout(controlsTimerRef.current);
    controlsTimerRef.current = setTimeout(() => {
      Animated.timing(controlsOpacity, { toValue: 0, duration: 350, useNativeDriver: true }).start(() => setShowControls(false));
    }, 5000);
  }, []);

  const fadeIn = useCallback(() => {
    if (controlsTimerRef.current) clearTimeout(controlsTimerRef.current);
    Animated.timing(controlsOpacity, { toValue: 1, duration: 200, useNativeDriver: true }).start();
    setShowControls(true);
    schedHide();
  }, [schedHide]);

  useEffect(() => { fadeIn(); }, []); // eslint-disable-line

  /* ── Send load command to WebView ── */
  const sendLoad = useCallback((src: AnimHlsSource, seekTo?: number) => {
    if (!webRef.current) return;
    const url = src.url;
    const ref = src.headers?.Referer || "";
    webRef.current.injectJavaScript(
      `(function(){if(window.NOVA_load){window.NOVA_load(${JSON.stringify(url)},${JSON.stringify(ref)});}true;})();`
    );
    setIsBuffering(true);
    setIsEnded(false);
    setIsPlaying(true);
    loadedRef.current = true;
    positionLoadedRef.current = false;
    if (loadTimeoutRef.current) clearTimeout(loadTimeoutRef.current);
    loadTimeoutRef.current = setTimeout(() => {
      loadTimeoutRef.current = null;
      console.warn(`[AnimHlsPlayer] ⏱ timeout 25s — ${src.label}`);
      handleError();
    }, 25000);
    if (seekTo && seekTo > 5) {
      setTimeout(() => {
        webRef.current?.injectJavaScript(`(function(){if(window.NOVA_seek)window.NOVA_seek(${seekTo});true;})();`);
        positionLoadedRef.current = true;
      }, 2500);
    }
  }, []); // eslint-disable-line

  /* ── WebView onLoad (fallback — in case webview_init is missed) ── */
  const handleWebViewLoad = useCallback(() => {
    setTimeout(() => {
      if (!loadedRef.current && currentSrc) {
        sendLoad(currentSrc, initialPosition > 5 ? initialPosition : undefined);
      }
    }, 1200); // 1.2s fallback — after hls.js should be loaded
  }, [currentSrc, initialPosition, sendLoad]);

  /* ── Messages from WebView ── */
  const handleMessage = useCallback((event: any) => {
    try {
      const msg = JSON.parse(event.nativeEvent.data);
      if (msg.k === "webview_init") {
        /* ✅ hls.js is now loaded — safe to call NOVA_load */
        if (currentSrc) sendLoad(currentSrc, initialPosition > 5 ? initialPosition : undefined);
        return;
      }
      if (msg.k === "t") {
        const t = msg.t as number;
        const d = msg.d as number;
        posRef.current = t;
        durRef.current = d;
        if (!seekingRef.current && !isDraggingRef.current) {
          setPosition(t);
          setDuration(d > 0 ? d : durRef.current);
        }
        onProgress?.(t, d);
        if (cues.length > 0) setActiveCue(bisectCue(cues, t));
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
        fadeIn();
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
    sendLoad(sources[idx], saved > 5 ? saved : undefined);
    subFetchedRef.current = "";
  }, [sources, sendLoad]);

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
      if (feedbackTimer.current) clearTimeout(feedbackTimer.current);
      if (unlockTimer.current) clearTimeout(unlockTimer.current);
    };
  }, []);

  /* ── Seek helper ── */
  const seek = useCallback((t: number) => {
    const clamped = Math.max(0, Math.min(durRef.current || 999999, t));
    setPosition(clamped);
    posRef.current = clamped;
    webRef.current?.injectJavaScript(`(function(){if(window.NOVA_seek)window.NOVA_seek(${clamped});true;})();`);
    /* postSeek: يُبقي الـ thumb على الموضع الصحيح 800ms ريثما يُحدَّث الـ polling */
    if (postSeekTimer.current) clearTimeout(postSeekTimer.current);
    const pct = durRef.current > 0 ? clamped / durRef.current : 0;
    setPostSeekPct(pct);
    postSeekTimer.current = setTimeout(() => setPostSeekPct(null), 800);
    fadeIn();
  }, [fadeIn]);

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
    fadeIn();
  }, [isPlaying, isEnded, seek, fadeIn]);

  const toggleMute = useCallback(() => {
    setIsMuted(m => {
      const next = !m;
      webRef.current?.injectJavaScript(`(function(){if(window.NOVA_mute)window.NOVA_mute(${next});true;})();`);
      return next;
    });
    fadeIn();
  }, [fadeIn]);

  const changeSpeed = useCallback((s: number) => {
    setSpeed(s);
    setShowSpeedMenu(false);
    webRef.current?.injectJavaScript(`(function(){if(window.NOVA_speed)window.NOVA_speed(${s});true;})();`);
    fadeIn();
  }, [fadeIn]);

  const handleBack = useCallback(() => {
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    onBack();
  }, [onBack]);

  /* ── Show feedback ── */
  const showFeedback = useCallback((fb: typeof feedback) => {
    setFeedback(fb);
    if (feedbackTimer.current) clearTimeout(feedbackTimer.current);
    feedbackTimer.current = setTimeout(() => setFeedback(null), 900);
  }, []);

  /* ── Seek bar progress (0–1) ── */
  const rawFill = isDragging ? dragPct : postSeekPct !== null ? postSeekPct : duration > 0 ? position / duration : 0;
  const progress = Math.min(Math.max(isFinite(rawFill) ? rawFill : 0, 0), 1);

  /* ── RTL calc ── */
  const _calcPctFromAbsolute = (absoluteX: number): number => {
    const localX = absoluteX - barPageX.current;
    const raw = Math.min(1, Math.max(0, localX) / Math.max(1, barWidth.current));
    return _nRTL ? 1 - raw : raw;
  };

  /* ── Seekbar PanResponder ── */
  const seekBarPan = useRef(
    PanResponder.create({
      onStartShouldSetPanResponder: () => true,
      onMoveShouldSetPanResponder: () => true,
      onPanResponderGrant: (e) => {
        const grantPageX = e.nativeEvent.pageX;
        const grantLocX = e.nativeEvent.locationX;
        lastMoveX.current = grantPageX;
        grantLocationXRef.current = grantLocX;
        if (postSeekTimer.current) { clearTimeout(postSeekTimer.current); postSeekTimer.current = null; }
        setPostSeekPct(null);
        isDraggingRef.current = true;
        setIsDragging(true);
        const bw = barWidth.current;
        if (grantLocX >= 0 && grantLocX <= bw + 4) {
          const raw = Math.min(1, Math.max(0, grantLocX / Math.max(1, bw)));
          setDragPct(_nRTL ? 1 - raw : raw);
        } else {
          setDragPct(Math.max(0, Math.min(1, _calcPctFromAbsolute(grantPageX))));
        }
        barRef.current?.measureInWindow((px, _py, pw) => {
          if (px >= 0) barPageX.current = px;
          if (pw > 1) barWidth.current = pw;
        });
      },
      onPanResponderMove: (_, gs) => {
        const x = gs.moveX;
        if (x > 0) lastMoveX.current = x;
        setDragPct(Math.max(0, Math.min(1, _calcPctFromAbsolute(x > 0 ? x : lastMoveX.current))));
      },
      onPanResponderRelease: (_, gs) => {
        isDraggingRef.current = false;
        setIsDragging(false);
        const isPureTap = Math.abs(gs.dx) < 8 && Math.abs(gs.dy) < 8;
        let finalPct: number;
        if (isPureTap) {
          const loc = grantLocationXRef.current;
          const bw = barWidth.current;
          const isEdgeTap = lastMoveX.current <= barPageX.current + 4;
          const locValid = loc > 0 || (loc === 0 && isEdgeTap);
          finalPct = locValid
            ? (_nRTL ? 1 - Math.min(1, Math.max(0, loc / Math.max(1, bw))) : Math.min(1, Math.max(0, loc / Math.max(1, bw))))
            : _calcPctFromAbsolute(lastMoveX.current);
        } else {
          finalPct = _calcPctFromAbsolute(gs.moveX > 0 ? gs.moveX : lastMoveX.current);
        }
        finalPct = Math.max(0, Math.min(1, finalPct));
        const dur = durRef.current;
        if (dur > 0) seek(finalPct * dur);
      },
    })
  ).current;

  /* ── Main gesture PanResponder (volume / brightness / seek) ── */
  const panResponder = useRef(
    PanResponder.create({
      onStartShouldSetPanResponder: () => !isLocked,
      onMoveShouldSetPanResponder: (_, gs) => {
        const adx = Math.abs(gs.dx), ady = Math.abs(gs.dy);
        return (ady > 8 && ady > adx * 1.3) || (adx > 10 && adx > ady * 1.3);
      },
      onPanResponderGrant: (evt, gs) => {
        const side: "L" | "R" = evt.nativeEvent.pageX < W / 2 ? "L" : "R";
        gestureSideRef.current = side;
        gestureTypeRef.current = null;
        gestureStartYRef.current = gs.y0;
        gestureStartXRef.current = gs.x0;
        gestureStartPosRef.current = posRef.current;
        volumeStartRef.current = volumeRef.current;
        brightnessStartRef.current = brightnessRef.current;
        seekingRef.current = false;
      },
      onPanResponderMove: (_, gs) => {
        const side = gestureSideRef.current;
        if (!side) return;
        if (!gestureTypeRef.current) {
          const adx = Math.abs(gs.dx), ady = Math.abs(gs.dy);
          if (adx < 8 && ady < 8) return;
          gestureTypeRef.current = adx > ady * 1.3 ? "seek"
            : side === "R" ? "vol" : "bri";
        }
        if (gestureTypeRef.current === "seek") {
          seekingRef.current = true;
          const seekDelta = (gs.dx / W) * 120;
          const newPos = Math.max(0, Math.min(durRef.current, gestureStartPosRef.current + seekDelta));
          setFeedback({ type: "seek", value: newPos, delta: seekDelta });
        } else if (gestureTypeRef.current === "vol") {
          const delta = -(gs.moveY - gestureStartYRef.current) / (H * 0.65);
          const newVol = Math.max(0, Math.min(1, volumeStartRef.current + delta));
          volumeRef.current = newVol;
          setVolume(newVol);
          webRef.current?.injectJavaScript(`(function(){if(window.NOVA_volume)window.NOVA_volume(${newVol.toFixed(3)});true;})();`);
          setFeedback({ type: "volume", value: newVol });
        } else if (gestureTypeRef.current === "bri") {
          const delta = -(gs.moveY - gestureStartYRef.current) / (H * 0.65);
          const newBri = Math.max(0, Math.min(0.85, brightnessStartRef.current - delta));
          brightnessRef.current = newBri;
          setBrightness(newBri);
          setFeedback({ type: "brightness", value: newBri });
        }
      },
      onPanResponderRelease: (_, gs) => {
        if (gestureTypeRef.current === "seek" && seekingRef.current) {
          const seekDelta = (gs.dx / W) * 120;
          const newPos = Math.max(0, Math.min(durRef.current, gestureStartPosRef.current + seekDelta));
          seek(newPos);
        }
        seekingRef.current = false;
        gestureTypeRef.current = null;
        gestureSideRef.current = null;
        if (feedbackTimer.current) clearTimeout(feedbackTimer.current);
        feedbackTimer.current = setTimeout(() => setFeedback(null), 900);
      },
      onPanResponderTerminate: () => {
        seekingRef.current = false;
        gestureTypeRef.current = null;
      },
    })
  ).current;

  /* ── Tap / double-tap ── */
  const handleTap = useCallback((pageX: number) => {
    if (isLocked) {
      setShowUnlock(true);
      if (unlockTimer.current) clearTimeout(unlockTimer.current);
      unlockTimer.current = setTimeout(() => setShowUnlock(false), 2500);
      return;
    }
    const side: "L" | "R" = pageX < W / 2 ? "L" : "R";
    const now = Date.now();
    const last = lastTapRef.current;
    if (last && now - last.time < 300 && last.side === side) {
      if (doubleTapTimerRef.current) { clearTimeout(doubleTapTimerRef.current); doubleTapTimerRef.current = null; }
      lastTapRef.current = null;
      seek(posRef.current + (side === "L" ? -10 : 10));
    } else {
      lastTapRef.current = { time: now, side };
      doubleTapTimerRef.current = setTimeout(() => {
        doubleTapTimerRef.current = null;
        if (showControls) {
          Animated.timing(controlsOpacity, { toValue: 0, duration: 200, useNativeDriver: true }).start(() => setShowControls(false));
        } else {
          fadeIn();
        }
      }, 300);
    }
  }, [isLocked, showControls, seek, fadeIn]);

  const hasSub = cues.length > 0;
  const fillPct = Math.min(100, progress * 100);

  return (
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

      {/* ── Brightness dimming overlay ── */}
      {brightness > 0 && (
        <View
          pointerEvents="none"
          style={[StyleSheet.absoluteFill, { backgroundColor: "#000", opacity: brightness, zIndex: 1 }]}
        />
      )}

      {/* ── Buffering indicator ── */}
      {isBuffering && (
        <View style={s.bufferingWrap} pointerEvents="none">
          <SpinRing size={52} />
        </View>
      )}

      {/* ── Subtitle overlay ── */}
      {subOn && activeCue && (
        <View style={s.subWrap} pointerEvents="none">
          {activeCue.text.split(/\r?\n/).map((line, i) => (
            <Text key={i} style={s.subText}>{line || " "}</Text>
          ))}
        </View>
      )}

      {/* ── Gesture layer ── */}
      <View
        style={[StyleSheet.absoluteFill, { zIndex: isLocked ? 15 : 5 }]}
        {...(!isLocked ? panResponder.panHandlers : {})}
      >
        <Pressable style={s.halfLeft} onPress={(e) => handleTap(e.nativeEvent.pageX)} />
        <Pressable style={s.halfRight} onPress={(e) => handleTap(e.nativeEvent.pageX)} />
      </View>

      {/* ── Volume feedback ── */}
      {feedback?.type === "volume" && (
        <View style={s.feedbackRight} pointerEvents="none">
          <View style={s.feedbackBarWrap}>
            <View style={[s.feedbackBarFill, { height: `${Math.round(feedback.value * 100)}%` as any }]} />
          </View>
          <View style={s.feedbackPill}>
            <Ionicons name={feedback.value === 0 ? "volume-mute" : "volume-high"} size={12} color="rgba(255,255,255,0.75)" />
            <Text style={s.feedbackPillText}>{Math.round(feedback.value * 100)}%</Text>
          </View>
        </View>
      )}

      {/* ── Brightness feedback ── */}
      {feedback?.type === "brightness" && (
        <View style={s.feedbackLeft} pointerEvents="none">
          <View style={s.feedbackBarWrap}>
            <View style={[s.feedbackBarFill, { height: `${Math.round((1 - feedback.value / 0.85) * 100)}%` as any }]} />
          </View>
          <View style={s.feedbackPill}>
            <Ionicons name="sunny" size={12} color="rgba(253,224,71,0.85)" />
            <Text style={s.feedbackPillText}>{Math.round((1 - feedback.value / 0.85) * 100)}%</Text>
          </View>
        </View>
      )}

      {/* ── Seek feedback ── */}
      {feedback?.type === "seek" && (
        <View style={s.feedbackCenter} pointerEvents="none">
          <View style={s.seekFeedbackBox}>
            <Ionicons name={(feedback.delta ?? 0) >= 0 ? "play-forward" : "play-back"} size={20} color="rgba(255,255,255,0.65)" />
            <Text style={s.seekFeedbackTime}>{fmtTime(feedback.value)}</Text>
            <Text style={s.seekFeedbackDelta}>
              {(feedback.delta ?? 0) >= 0 ? "+" : ""}{Math.round(feedback.delta ?? 0)}ث
            </Text>
          </View>
        </View>
      )}

      {/* ── Lock: mini dot ── */}
      {isLocked && !showUnlock && (
        <View style={s.lockDot} pointerEvents="none">
          <Ionicons name="lock-closed" size={13} color="rgba(251,191,36,0.65)" />
        </View>
      )}

      {/* ── Lock: unlock button ── */}
      {isLocked && showUnlock && (
        <Pressable style={s.swipeUnlockBar} onPress={() => { setIsLocked(false); setShowUnlock(false); }}>
          <Ionicons name="lock-open-outline" size={20} color="#fbbf24" />
          <Text style={s.swipeUnlockLabel}>اضغط لفتح القفل</Text>
        </Pressable>
      )}

      {/* ════════════════════════════════════════
          CONTROLS OVERLAY
      ════════════════════════════════════════ */}
      {showControls && !isLocked && (
        <Animated.View
          style={[StyleSheet.absoluteFill, { opacity: controlsOpacity, zIndex: 10 }]}
          pointerEvents="box-none"
        >
          {/* ── Top gradient ── */}
          <LinearGradient colors={["rgba(0,0,0,0.82)", "transparent"]} style={s.topGrad} pointerEvents="none" />

          {/* ── Top bar ── */}
          <View style={[s.topBar, {
            paddingTop: Platform.OS === "web" ? 12 : insets.top + 6,
            paddingLeft: insets.left + 14,
            paddingRight: insets.right + 14,
          }]}>
            {/* ← رجوع أقصى اليسار */}
            <Pressable onPress={handleBack} style={s.backBtn} hitSlop={12}>
              <Ionicons name="arrow-back" size={20} color="#fff" />
            </Pressable>

            {/* العنوان في المنتصف */}
            <View style={s.titleWrap}>
              <Text style={s.titleText} numberOfLines={1}>{title}</Text>
              {episode !== undefined && (
                <Text style={s.epText}>الحلقة {episode}{episodeTitle ? ` — ${episodeTitle}` : ""}</Text>
              )}
            </View>

            {/* أزرار اليمين: CC + speed */}
            <View style={s.topRightRow}>
              {/* زر الترجمة */}
              {hasSub && (
                <Pressable onPress={() => setSubOn(v => !v)} style={[s.topIconBtn, subOn && s.topIconBtnActive]} hitSlop={10}>
                  <Ionicons name="logo-closed-captioning" size={15} color={subOn ? "#c4b5fd" : "rgba(255,255,255,0.75)"} />
                </Pressable>
              )}
              {/* زر السرعة */}
              <View>
                {showSpeedMenu && (
                  <View style={s.speedDropdown}>
                    {SPEEDS.map(sp => (
                      <Pressable key={sp} onPress={() => changeSpeed(sp)} style={[s.dropItem, speed === sp && s.dropItemActive]}>
                        <Text style={[s.dropSpeedNum, speed === sp && s.dropItemTextActive]}>{sp}x</Text>
                        {speed === sp && <Ionicons name="checkmark" size={11} color="#c4b5fd" />}
                      </Pressable>
                    ))}
                  </View>
                )}
                <Pressable onPress={() => { setShowSpeedMenu(v => !v); fadeIn(); }} style={[s.topIconBtn, showSpeedMenu && s.topIconBtnActive]} hitSlop={10}>
                  <Text style={[s.speedLabel, speed !== 1 && s.speedLabelActive]}>{speed}x</Text>
                </Pressable>
              </View>
            </View>
          </View>

          {/* ── Center play/pause (landscape: show when paused/buffering) ── */}
          <View style={s.centerOverlay} pointerEvents="box-none">
            {!isPlaying && !isBuffering && <PulseRing />}
            {(!isPlaying || isBuffering) && (
              <Pressable onPress={togglePlay} style={s.centerPlayBtn} hitSlop={16}>
                {isBuffering
                  ? <ActivityIndicator size={32} color="#fff" />
                  : <Ionicons name="play" size={36} color="#fff" style={{ transform: [{ translateX: 3 }] }} />}
              </Pressable>
            )}
          </View>

          {/* ── Bottom section ── */}
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.60)", "rgba(0,0,0,0.96)"]}
            style={[s.bottomSection, {
              paddingBottom: Platform.OS === "web" ? 16 : insets.bottom + 10,
              paddingLeft: insets.left + 14,
              paddingRight: insets.right + 14,
            }]}
          >
            {/* وقت / شريط / وقت كلي */}
            <View style={{ position: "relative", height: 18, marginBottom: 4 }}>
              <Text style={[s.timeText, { position: "absolute", [_nRTL ? "right" : "left"]: 0 }]}>
                {fmtTime(isDragging ? dragPct * (durRef.current || duration) : position)}
              </Text>
              <Text style={[s.timeText, { position: "absolute", [_nRTL ? "left" : "right"]: 0, opacity: 0.45 }]}>
                {fmtTime(duration)}
              </Text>
            </View>

            {/* شريط التقدم */}
            <View
              ref={barRef}
              style={[s.progressWrap, isDragging && s.progressWrapDragging, _nRTL && { transform: [{ scaleX: -1 }] }]}
              onLayout={(e) => {
                barWidth.current = e.nativeEvent.layout.width || 1;
                barRef.current?.measureInWindow((px) => { if (px >= 0) barPageX.current = px; });
              }}
              {...seekBarPan.panHandlers}
            >
              <View style={s.progressBg} />
              <LinearGradient
                colors={["#6D28D9", "#8B5CF6", "#a78bfa"]}
                start={{ x: 0, y: 0 }} end={{ x: 1, y: 0 }}
                style={[s.progressFill, { left: 0, width: `${fillPct}%` as any }]}
              />
              <View style={[s.thumb, { left: `${fillPct}%` as any }, isDragging && s.thumbDragging]} />
              {isDragging && (
                <View style={[s.dragTooltip, { left: `${Math.max(4, Math.min(88, fillPct - 6))}%` as any }]}>
                  <Text style={s.dragTooltipText}>{fmtTime(dragPct * (durRef.current || duration))}</Text>
                </View>
              )}
            </View>

            {/* صف أزرار التحكم السفلي */}
            <View style={s.bottomCtrlRow}>
              {/* يسار: قفل */}
              <View style={s.bottomSide}>
                <Pressable onPress={() => { setIsLocked(true); fadeIn(); }} style={s.ctrlIconBtn} hitSlop={10}>
                  <Ionicons name="lock-closed-outline" size={16} color="rgba(255,255,255,0.80)" />
                </Pressable>
              </View>

              {/* وسط: -10 + play + +10 */}
              <View style={s.bottomCenter}>
                {onPrevEpisode && (
                  <Pressable onPress={onPrevEpisode} style={s.ctrlIconBtn} hitSlop={10}>
                    <Ionicons name="play-skip-back" size={18} color="rgba(255,255,255,0.80)" />
                  </Pressable>
                )}
                <View style={{ alignItems: "center", gap: 2 }}>
                  <Pressable onPress={() => seek(posRef.current - 10)} style={s.seekCtrlBtn} hitSlop={10}>
                    <Ionicons name="play-back" size={17} color="rgba(255,255,255,0.90)" />
                  </Pressable>
                  <Text style={s.seekCtrlLabel}>10</Text>
                </View>
                <Pressable onPress={togglePlay} style={s.bottomPlayBtn} hitSlop={10}>
                  <Ionicons name={isPlaying ? "pause" : "play"} size={23} color="#fff" style={isPlaying ? undefined : { transform: [{ translateX: 2 }] }} />
                </Pressable>
                <View style={{ alignItems: "center", gap: 2 }}>
                  <Pressable onPress={() => seek(posRef.current + 10)} style={s.seekCtrlBtn} hitSlop={10}>
                    <Ionicons name="play-forward" size={17} color="rgba(255,255,255,0.90)" />
                  </Pressable>
                  <Text style={s.seekCtrlLabel}>10</Text>
                </View>
                {onNextEpisode && (
                  <Pressable onPress={onNextEpisode} style={s.ctrlIconBtn} hitSlop={10}>
                    <Ionicons name="play-skip-forward" size={18} color="rgba(255,255,255,0.80)" />
                  </Pressable>
                )}
              </View>

              {/* يمين: كتم + جودة الحالي */}
              <View style={[s.bottomSide, { justifyContent: "flex-end" }]}>
                <Pressable onPress={toggleMute} style={[s.ctrlIconBtn, isMuted && s.ctrlIconBtnMuted]} hitSlop={10}>
                  <Ionicons name={isMuted ? "volume-mute-outline" : "volume-high-outline"} size={16} color={isMuted ? "#fca5a5" : "rgba(255,255,255,0.80)"} />
                </Pressable>
                {currentSrc?.quality && (
                  <View style={s.qualityBadge}>
                    <Text style={s.qualityBadgeText}>{currentSrc.quality.split(" ")[0]}</Text>
                  </View>
                )}
              </View>
            </View>
          </LinearGradient>
        </Animated.View>
      )}
    </View>
  );
}

const s = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#000" },
  bufferingWrap: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", zIndex: 5 } as any,

  halfLeft:  { position: "absolute", top: 0, left: 0, width: "50%", height: "100%" },
  halfRight: { position: "absolute", top: 0, right: 0, width: "50%", height: "100%" },

  /* ── Feedback overlays ── */
  feedbackRight: {
    position: "absolute", right: 24, top: "20%", alignItems: "center", gap: 8, zIndex: 20,
  },
  feedbackLeft: {
    position: "absolute", left: 24, top: "20%", alignItems: "center", gap: 8, zIndex: 20,
  },
  feedbackCenter: {
    ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", zIndex: 20,
  },
  feedbackBarWrap: {
    width: 4, height: 80, backgroundColor: "rgba(255,255,255,0.15)", borderRadius: 2,
    overflow: "hidden", justifyContent: "flex-end",
  },
  feedbackBarFill: { width: "100%", backgroundColor: "#8B5CF6", borderRadius: 2 },
  feedbackPill: {
    flexDirection: "row", alignItems: "center", gap: 4,
    backgroundColor: "rgba(0,0,0,0.65)", borderRadius: 10,
    paddingHorizontal: 8, paddingVertical: 4,
    borderWidth: 1, borderColor: "rgba(255,255,255,0.12)",
  },
  feedbackPillText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.85)" },
  seekFeedbackBox: {
    backgroundColor: "rgba(0,0,0,0.72)", borderRadius: 16,
    paddingHorizontal: 18, paddingVertical: 10, alignItems: "center", gap: 2,
  },
  seekFeedbackTime: { fontSize: 22, fontFamily: "Cairo_700Bold", color: "#fff" },
  seekFeedbackDelta: { fontSize: 13, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.6)" },

  /* ── Lock ── */
  lockDot: {
    position: "absolute", top: 18, left: "50%", marginLeft: -12,
    width: 24, height: 24, borderRadius: 12,
    backgroundColor: "rgba(0,0,0,0.55)", alignItems: "center", justifyContent: "center", zIndex: 20,
  },
  swipeUnlockBar: {
    position: "absolute", top: "50%", left: "50%",
    transform: [{ translateX: -80 }, { translateY: -22 }],
    flexDirection: "row", alignItems: "center", gap: 8,
    backgroundColor: "rgba(0,0,0,0.72)", borderRadius: 20,
    paddingHorizontal: 18, paddingVertical: 10,
    borderWidth: 1, borderColor: "rgba(251,191,36,0.4)",
    zIndex: 20,
  },
  swipeUnlockLabel: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#fbbf24" },

  /* ── Top ── */
  topGrad: { position: "absolute", top: 0, left: 0, right: 0, height: 120, zIndex: 10 },
  topBar: {
    position: "absolute", top: 0, left: 0, right: 0,
    flexDirection: "row", alignItems: "center", zIndex: 11, gap: 8,
  },
  backBtn: {
    width: 36, height: 36, borderRadius: 18,
    backgroundColor: "rgba(0,0,0,0.4)", alignItems: "center", justifyContent: "center",
  },
  titleWrap: { flex: 1, gap: 2 },
  titleText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#fff" },
  epText: { fontSize: 10, color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular" },
  topRightRow: { flexDirection: "row", alignItems: "center", gap: 6 },
  topIconBtn: {
    width: 32, height: 32, borderRadius: 8,
    backgroundColor: "rgba(0,0,0,0.35)", alignItems: "center", justifyContent: "center",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
  },
  topIconBtnActive: { backgroundColor: "rgba(139,92,246,0.3)", borderColor: "rgba(139,92,246,0.5)" },
  speedLabel: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.75)" },
  speedLabelActive: { color: "#c4b5fd" },
  speedDropdown: {
    position: "absolute", bottom: 38, right: 0,
    backgroundColor: "rgba(10,8,25,0.95)", borderRadius: 12,
    paddingVertical: 4, minWidth: 72,
    borderWidth: 1, borderColor: "rgba(255,255,255,0.1)",
    zIndex: 50,
  },
  dropItem: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 12, paddingVertical: 8 },
  dropItemActive: { backgroundColor: "rgba(139,92,246,0.15)" },
  dropSpeedNum: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.70)", flex: 1 },
  dropItemTextActive: { color: "#c4b5fd" },

  /* ── Center ── */
  centerOverlay: {
    ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", zIndex: 10,
  } as any,
  centerPlayBtn: {
    width: 72, height: 72, borderRadius: 36,
    backgroundColor: "rgba(0,0,0,0.55)", borderWidth: 1.5,
    borderColor: "rgba(255,255,255,0.25)", alignItems: "center", justifyContent: "center",
  },

  /* ── Bottom ── */
  bottomSection: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    paddingTop: 20, gap: 6,
  },
  timeText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.8)" },
  progressWrap: {
    height: 28, justifyContent: "center", position: "relative",
    marginVertical: 2,
  },
  progressWrapDragging: { height: 36 },
  progressBg: {
    position: "absolute", left: 0, right: 0, height: 3, borderRadius: 2,
    backgroundColor: "rgba(255,255,255,0.22)",
  },
  progressFill: { position: "absolute", height: 3, borderRadius: 2 },
  thumb: {
    position: "absolute", width: 13, height: 13, borderRadius: 6.5,
    backgroundColor: "#fff", marginLeft: -6.5, top: 7.5,
    shadowColor: "#000", shadowOpacity: 0.5, shadowRadius: 4, elevation: 4,
  },
  thumbDragging: { width: 17, height: 17, borderRadius: 8.5, marginLeft: -8.5, top: 5.5 },
  dragTooltip: {
    position: "absolute", bottom: 22,
    backgroundColor: "rgba(0,0,0,0.80)", borderRadius: 6,
    paddingHorizontal: 7, paddingVertical: 3,
  },
  dragTooltipText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#fff" },

  bottomCtrlRow: {
    flexDirection: "row", alignItems: "center",
    justifyContent: "space-between", marginTop: 2,
  },
  bottomSide: { flexDirection: "row", alignItems: "center", gap: 6, flex: 1 },
  bottomCenter: { flexDirection: "row", alignItems: "center", gap: 10, justifyContent: "center" },
  ctrlIconBtn: {
    width: 34, height: 34, alignItems: "center", justifyContent: "center",
    borderRadius: 8,
  },
  ctrlIconBtnMuted: { backgroundColor: "rgba(239,68,68,0.15)" },
  seekCtrlBtn: { width: 32, height: 32, alignItems: "center", justifyContent: "center" },
  seekCtrlLabel: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.55)" },
  bottomPlayBtn: {
    width: 46, height: 46, borderRadius: 23,
    backgroundColor: "rgba(139,92,246,0.25)", borderWidth: 1.5,
    borderColor: "rgba(139,92,246,0.5)", alignItems: "center", justifyContent: "center",
  },
  qualityBadge: {
    backgroundColor: "rgba(139,92,246,0.2)", borderRadius: 6,
    paddingHorizontal: 7, paddingVertical: 3,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.35)",
  },
  qualityBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

  /* ── Subtitles ── */
  subWrap: {
    position: "absolute", bottom: 90, left: 20, right: 20,
    alignItems: "center", zIndex: 8,
  },
  subText: {
    fontSize: 16, fontFamily: "Cairo_700Bold", color: "#fff", textAlign: "center",
    textShadowColor: "rgba(0,0,0,0.95)", textShadowRadius: 8,
    textShadowOffset: { width: 0, height: 1 }, lineHeight: 24,
  },
});

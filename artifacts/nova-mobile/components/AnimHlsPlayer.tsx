/**
 * AnimHlsPlayer — مشغّل HLS للأنيميشن مبني على تصميم AniPlay
 * https://github.com/SahilKumar337/AniPlay
 *
 * البنية:
 *  • WebView كاملة الشاشة — تشغيل الفيديو + UI كامل (بـ AniPlayer CSS/JS)
 *  • bridge: injectJavaScript (RN→WebView) + onMessage (WebView→RN)
 *  • RN wrapper يُدير: landscape lock + StatusBar فقط
 */
import React, { useCallback, useEffect, useRef, useState } from "react";
import { StyleSheet, View } from "react-native";
import { WebView } from "react-native-webview";
import { StatusBar } from "expo-status-bar";
import * as ScreenOrientation from "expo-screen-orientation";

/* ── Types ── */
export interface AnimHlsSource {
  url: string;
  label: string;
  quality: "1080p FHD" | "720p HD" | "360p SD";
  headers?: Record<string, string>;
  subtitleUrl?: string;
}

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

/* ═══════════════════════════════════════════════════════════
   HTML — AniPlay player (vanilla JS + hls.js)
   تصميم AniPlay مع ألوان Nova البنفسجية
   ═══════════════════════════════════════════════════════════ */
const buildHtml = (
  sources: AnimHlsSource[],
  title: string,
  episode: number | undefined,
  initialPosition: number,
) => {
  const srcJson = JSON.stringify(
    sources.map((s) => ({
      url: s.url,
      label: s.label,
      quality: s.quality,
      referer: s.headers?.Referer || s.headers?.referer || "",
      subtitleUrl: s.subtitleUrl || "",
    })),
  );
  const titleJson = JSON.stringify(title || "");
  const epJson = JSON.stringify(episode ?? null);
  const initPos = initialPosition > 5 ? initialPosition : 0;

  return `<!DOCTYPE html>
<html lang="ar" dir="ltr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<style>
:root{--accent:#8B5CF6;--accent-glow:rgba(139,92,246,0.35);}
*{margin:0;padding:0;box-sizing:border-box;}
html,body{width:100%;height:100%;background:#000;overflow:hidden;}

/* ── Wrapper ── */
.anip{position:relative;width:100%;height:100%;background:#000;overflow:hidden;user-select:none;-webkit-user-select:none;touch-action:none;-webkit-tap-highlight-color:transparent;font-family:system-ui,-apple-system,sans-serif;}

/* ── Video ── */
.anip__video{width:100%;height:100%;display:block;object-fit:contain;background:#000;-webkit-appearance:none;appearance:none;touch-action:none;}
.anip__video::-webkit-media-controls,.anip__video::-webkit-media-controls-panel,.anip__video::-webkit-media-controls-play-button,.anip__video::-webkit-media-controls-overlay-play-button,.anip__video::-webkit-media-controls-start-playback-button{display:none!important;-webkit-appearance:none!important;}

/* ── Loading bg ── */
.anip__loading-bg{position:absolute;inset:0;background:#000;z-index:9;pointer-events:auto;touch-action:none;}

/* ── Spinner ── */
.anip__spinner{position:absolute;inset:0;display:flex;align-items:center;justify-content:center;pointer-events:none;z-index:10;}
.anip__spinner-ring{width:48px;height:48px;border-radius:50%;border:3px solid rgba(139,92,246,0.18);border-top-color:var(--accent);animation:anip-spin 0.9s linear infinite;}
@keyframes anip-spin{to{transform:rotate(360deg)}}

/* ── Error ── */
.anip__error{position:absolute;inset:0;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:14px;z-index:15;background:rgba(0,0,0,0.85);padding:24px;text-align:center;}
.anip__error-icon{font-size:40px;}
.anip__error-msg{color:#fff;font-size:14px;font-weight:600;line-height:1.5;}
.anip__error-btn{background:var(--accent);color:#fff;border:none;border-radius:10px;padding:10px 28px;font-size:14px;font-weight:700;cursor:pointer;}
.anip__error-btn:active{opacity:0.8;}

/* ── Overlay ── */
.anip__overlay{position:absolute;inset:0;z-index:20;display:flex;flex-direction:column;pointer-events:none;transition:opacity 0.25s ease;}
.anip__overlay--hidden{opacity:0;}
.anip__overlay>*{pointer-events:auto;}

/* Gradients */
.anip__grad-top{position:absolute;top:0;left:0;right:0;height:120px;background:linear-gradient(to bottom,rgba(0,0,0,0.78),transparent);pointer-events:none;}
.anip__grad-bot{position:absolute;bottom:0;left:0;right:0;height:140px;background:linear-gradient(to top,rgba(0,0,0,0.82),transparent);pointer-events:none;}

/* ── Top bar ── */
.anip__top-bar{position:absolute;top:0;left:0;right:0;display:flex;align-items:center;gap:10px;padding:16px 16px 0;z-index:21;}
.anip__back-btn{width:36px;height:36px;border-radius:18px;background:rgba(0,0,0,0.45);border:1px solid rgba(255,255,255,0.18);display:flex;align-items:center;justify-content:center;cursor:pointer;color:#fff;font-size:18px;flex-shrink:0;}
.anip__back-btn:active{opacity:0.7;}
.anip__title-wrap{flex:1;min-width:0;}
.anip__title{display:block;font-size:14px;font-weight:700;color:#fff;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}
.anip__ep-label{display:block;font-size:10px;color:rgba(255,255,255,0.45);margin-top:1px;}
.anip__top-right{display:flex;align-items:center;gap:6px;}

/* ── Pill buttons ── */
.anip__pill{display:flex;align-items:center;gap:5px;background:rgba(139,92,246,0.2);border:1px solid rgba(139,92,246,0.38);border-radius:10px;padding:5px 10px;cursor:pointer;color:#c4b5fd;font-size:11px;font-weight:700;flex-shrink:0;white-space:nowrap;}
.anip__pill:active{opacity:0.75;}
.anip__pill--active{background:rgba(139,92,246,0.38);border-color:var(--accent);}
.anip__pill-sub{background:rgba(0,0,0,0.35);border-color:rgba(255,255,255,0.2);color:rgba(255,255,255,0.75);}
.anip__pill-sub.anip__pill--active{background:rgba(139,92,246,0.25);border-color:var(--accent);color:#c4b5fd;}

/* ── Center play ── */
.anip__center-wrap{position:absolute;inset:0;display:flex;align-items:center;justify-content:center;pointer-events:none;z-index:21;}
.anip__play-btn{width:72px;height:72px;border-radius:36px;background:rgba(0,0,0,0.55);border:1.5px solid rgba(255,255,255,0.28);display:flex;align-items:center;justify-content:center;cursor:pointer;pointer-events:auto;}
.anip__play-btn:active{background:rgba(139,92,246,0.4);}
.anip__play-icon{color:#fff;font-size:28px;line-height:1;margin-left:3px;}
.anip__play-icon--pause{margin-left:0;}
.anip__play-icon--replay{margin-left:0;}

/* ── Episode nav ── */
.anip__ep-nav{position:absolute;right:18px;top:50%;transform:translateY(-50%);display:flex;flex-direction:column;gap:8px;z-index:21;}
.anip__ep-btn{display:flex;align-items:center;gap:6px;background:rgba(0,0,0,0.5);border:1px solid rgba(255,255,255,0.18);border-radius:10px;padding:8px 11px;cursor:pointer;color:rgba(255,255,255,0.88);font-size:11px;font-weight:700;}
.anip__ep-btn:active{opacity:0.7;}

/* ── Bottom bar ── */
.anip__bottom-bar{position:absolute;bottom:0;left:0;right:0;padding:0 16px 18px;z-index:21;}

/* ── Seek ── */
.anip__seek-row{display:flex;align-items:center;gap:10px;margin-bottom:10px;}
.anip__time{font-size:11px;font-weight:700;color:rgba(255,255,255,0.82);white-space:nowrap;min-width:36px;}
.anip__seek-wrap{flex:1;padding:8px 0;cursor:pointer;position:relative;}
.anip__seek-track{height:3px;border-radius:99px;background:rgba(255,255,255,0.22);position:relative;transition:height 0.15s ease;}
.anip__seek-buf{position:absolute;left:0;top:0;bottom:0;background:rgba(255,255,255,0.3);border-radius:99px;}
.anip__seek-played{position:absolute;left:0;top:0;bottom:0;background:var(--accent);border-radius:99px;}
.anip__seek-knob{position:absolute;right:-7px;top:50%;transform:translateY(-50%) scale(1);width:13px;height:13px;border-radius:50%;background:#fff;border:2px solid var(--accent);box-shadow:0 0 6px var(--accent-glow);}

/* ── Controls row ── */
.anip__ctrl-row{display:flex;align-items:center;justify-content:space-between;}
.anip__cluster{display:flex;align-items:center;gap:6px;}
.anip__btn{background:none;border:none;color:#fff;cursor:pointer;display:flex;align-items:center;justify-content:center;padding:6px;border-radius:8px;}
.anip__btn:active{background:rgba(255,255,255,0.1);}
.anip__skip-btn{font-size:11px;font-weight:700;color:rgba(255,255,255,0.82);}

/* ── Menus ── */
.anip__menu-wrap{position:absolute;z-index:30;}
.anip__menu{background:rgba(15,10,30,0.95);border:1px solid rgba(139,92,246,0.25);border-radius:12px;min-width:120px;overflow:hidden;backdrop-filter:blur(12px);}
.anip__menu-item{padding:10px 16px;font-size:13px;font-weight:600;color:rgba(255,255,255,0.8);cursor:pointer;display:flex;align-items:center;justify-content:space-between;gap:8px;}
.anip__menu-item:hover{background:rgba(139,92,246,0.15);}
.anip__menu-item.active{color:var(--accent);}
.anip__menu-item.active::after{content:"✓";font-size:11px;}

/* ── Source panel (bottom sheet) ── */
.anip__src-panel{position:absolute;bottom:0;left:0;right:0;z-index:35;background:rgba(8,6,22,0.97);border-top:1px solid rgba(139,92,246,0.22);border-radius:20px 20px 0 0;padding-bottom:20px;}
.anip__src-header{display:flex;align-items:center;justify-content:space-between;padding:14px 20px;border-bottom:1px solid rgba(255,255,255,0.07);}
.anip__src-title{font-size:14px;font-weight:700;color:#fff;}
.anip__src-close{background:rgba(255,255,255,0.08);border:none;color:rgba(255,255,255,0.7);width:28px;height:28px;border-radius:14px;font-size:16px;cursor:pointer;display:flex;align-items:center;justify-content:center;}
.anip__src-item{display:flex;align-items:center;gap:12px;padding:12px 20px;border-bottom:1px solid rgba(255,255,255,0.05);cursor:pointer;}
.anip__src-item.active{background:rgba(139,92,246,0.1);}
.anip__src-dot{width:8px;height:8px;border-radius:50%;background:rgba(255,255,255,0.2);flex-shrink:0;}
.anip__src-item.active .anip__src-dot{background:var(--accent);}
.anip__src-info{flex:1;min-width:0;}
.anip__src-label{font-size:13px;font-weight:700;color:rgba(255,255,255,0.7);}
.anip__src-item.active .anip__src-label{color:#fff;}
.anip__src-tag{font-size:11px;font-weight:700;color:rgba(139,92,246,0.85);background:rgba(139,92,246,0.15);padding:2px 8px;border-radius:6px;white-space:nowrap;}

/* ── Skip ripple ── */
.anip-ripple{position:absolute;top:0;bottom:0;width:35%;display:flex;align-items:center;justify-content:center;pointer-events:none;z-index:22;}
.anip-ripple--left{left:0;}
.anip-ripple--right{right:0;}
.anip-ripple__inner{display:flex;flex-direction:column;align-items:center;gap:6px;color:#fff;font-size:11px;font-weight:700;}
.anip-ripple__ring{position:absolute;inset:0;border-radius:999px;border:2px solid rgba(255,255,255,0.25);animation:ripple-out 0.7s ease-out forwards;}
.anip-ripple__ring--2{animation-delay:0.15s;}
@keyframes ripple-out{from{opacity:0.8;transform:scale(0.7)}to{opacity:0;transform:scale(1.1)}}

/* ── Subtitle ── */
.anip__sub-overlay{position:absolute;bottom:14%;left:5%;right:5%;text-align:center;z-index:23;pointer-events:none;}
.anip__sub-overlay.anip__sub-overlay--up{bottom:22%;}
.anip__sub-text{background:rgba(0,0,0,0.38);color:#fff;font-size:17px;font-weight:600;padding:4px 12px;border-radius:5px;text-shadow:0 1px 4px rgba(0,0,0,0.95);white-space:pre-wrap;display:inline-block;line-height:1.45;letter-spacing:0.1px;}

/* ── Swipe indicator ── */
.anip__swipe{position:absolute;top:50%;transform:translateY(-50%);display:flex;flex-direction:column;align-items:center;gap:8px;background:rgba(0,0,0,0.55);border-radius:12px;padding:12px 10px;z-index:24;pointer-events:none;opacity:0;transition:opacity 0.2s;}
.anip__swipe--on{opacity:1;}
.anip__swipe--brightness{left:18px;}
.anip__swipe--volume{right:18px;}
.anip__swipe-icon{font-size:18px;}
.anip__swipe-track{width:6px;height:80px;background:rgba(255,255,255,0.2);border-radius:3px;position:relative;overflow:hidden;}
.anip__swipe-fill{position:absolute;bottom:0;left:0;right:0;background:var(--accent);border-radius:3px;}
.anip__swipe-pct{font-size:11px;font-weight:700;color:#fff;}

/* ── Toast ── */
.anip__toast{position:absolute;top:12%;left:50%;transform:translateX(-50%);background:rgba(0,0,0,0.75);color:#fff;padding:7px 18px;border-radius:20px;font-size:12px;font-weight:600;white-space:nowrap;pointer-events:none;backdrop-filter:blur(8px);border:1px solid rgba(255,255,255,0.12);z-index:30;animation:anip-fade-in 0.2s ease;}
@keyframes anip-fade-in{from{opacity:0;transform:translateX(-50%) translateY(-6px)}to{opacity:1;transform:translateX(-50%) translateY(0)}}
</style>
</head>
<body>
<div class="anip" id="player">
  <!-- Video element -->
  <video class="anip__video" id="v" playsinline webkit-playsinline x5-playsinline autoplay></video>

  <!-- Loading bg (hidden once video starts) -->
  <div class="anip__loading-bg" id="loadBg"></div>

  <!-- Buffering spinner -->
  <div class="anip__spinner" id="spinner" style="display:none">
    <div class="anip__spinner-ring"></div>
  </div>

  <!-- Error overlay -->
  <div class="anip__error" id="errOverlay" style="display:none">
    <div class="anip__error-icon">⚠️</div>
    <div class="anip__error-msg" id="errMsg">تعذّر تشغيل المصدر</div>
    <button class="anip__error-btn" onclick="retryNext()">المصدر التالي</button>
    <button class="anip__error-btn" style="background:rgba(255,255,255,0.12);margin-top:4px" onclick="post({k:'back'})">العودة</button>
  </div>

  <!-- Controls overlay -->
  <div class="anip__overlay" id="overlay">
    <div class="anip__grad-top"></div>
    <div class="anip__grad-bot"></div>

    <!-- Top bar -->
    <div class="anip__top-bar">
      <div class="anip__back-btn" onclick="post({k:'back'})">&#8592;</div>
      <div class="anip__title-wrap">
        <span class="anip__title" id="titleEl"></span>
        <span class="anip__ep-label" id="epEl"></span>
      </div>
      <div class="anip__top-right">
        <!-- Subtitle toggle -->
        <div class="anip__pill anip__pill-sub" id="subBtn" onclick="toggleSub()" style="display:none">CC</div>
        <!-- Quality / Source picker -->
        <div class="anip__pill" id="qualPill" onclick="toggleSrcPanel()">
          <span id="qualLabel">HD</span>
          <span>&#9776;</span>
        </div>
      </div>
    </div>

    <!-- Center play/pause button -->
    <div class="anip__center-wrap" id="centerWrap">
      <div class="anip__play-btn" id="playBtn" onclick="togglePlay()">
        <span class="anip__play-icon" id="playIcon">&#9654;</span>
      </div>
    </div>

    <!-- Episode navigation -->
    <div class="anip__ep-nav" id="epNav" style="display:none">
      <div class="anip__ep-btn" id="prevEpBtn" onclick="post({k:'prev_ep'})" style="display:none">
        <span>&#9654;</span><span>السابقة</span>
      </div>
      <div class="anip__ep-btn" id="nextEpBtn" onclick="post({k:'next_ep'})" style="display:none">
        <span>التالية</span><span>&#9654;</span>
      </div>
    </div>

    <!-- Bottom bar -->
    <div class="anip__bottom-bar">
      <!-- Seek row -->
      <div class="anip__seek-row">
        <span class="anip__time" id="curTimeEl">0:00</span>
        <div class="anip__seek-wrap" id="seekWrap">
          <div class="anip__seek-track" id="seekTrack">
            <div class="anip__seek-buf" id="seekBuf" style="width:0%"></div>
            <div class="anip__seek-played" id="seekPlayed" style="width:0%"></div>
            <div class="anip__seek-knob" id="seekKnob" style="left:0%"></div>
          </div>
        </div>
        <span class="anip__time" id="durEl">0:00</span>
      </div>
      <!-- Controls row -->
      <div class="anip__ctrl-row">
        <div class="anip__cluster">
          <button class="anip__btn anip__skip-btn" onclick="skip(-10)">&#8635; 10</button>
          <button class="anip__btn anip__skip-btn" onclick="skip(10)">10 &#8634;</button>
        </div>
        <div class="anip__cluster">
          <button class="anip__btn" onclick="toggleSpeed()" style="font-size:11px;font-weight:700;color:rgba(255,255,255,0.75);" id="speedBtn">1x</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Source picker panel -->
  <div class="anip__src-panel" id="srcPanel" style="display:none">
    <div class="anip__src-header">
      <span class="anip__src-title">اختر المصدر</span>
      <button class="anip__src-close" onclick="closeSrcPanel()">&#10005;</button>
    </div>
    <div id="srcList"></div>
  </div>

  <!-- Skip ripples -->
  <div class="anip-ripple anip-ripple--left" id="rippleL" style="display:none">
    <div class="anip-ripple__ring"></div>
    <div class="anip-ripple__ring anip-ripple__ring--2"></div>
    <div class="anip-ripple__inner">&#8635; <span>10s</span></div>
  </div>
  <div class="anip-ripple anip-ripple--right" id="rippleR" style="display:none">
    <div class="anip-ripple__ring"></div>
    <div class="anip-ripple__ring anip-ripple__ring--2"></div>
    <div class="anip-ripple__inner">&#8634; <span>10s</span></div>
  </div>

  <!-- Swipe indicators -->
  <div class="anip__swipe anip__swipe--brightness" id="swipeBri">
    <span class="anip__swipe-icon">&#9728;</span>
    <div class="anip__swipe-track"><div class="anip__swipe-fill" id="briFill" style="height:100%"></div></div>
    <span class="anip__swipe-pct" id="briPct">100%</span>
  </div>
  <div class="anip__swipe anip__swipe--volume" id="swipeVol">
    <span class="anip__swipe-icon">&#128266;</span>
    <div class="anip__swipe-track"><div class="anip__swipe-fill" id="volFill" style="height:100%"></div></div>
    <span class="anip__swipe-pct" id="volPct">100%</span>
  </div>

  <!-- Subtitle overlay -->
  <div class="anip__sub-overlay" id="subOverlay" style="display:none">
    <span class="anip__sub-text" id="subText"></span>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/hls.js@1.6.2/dist/hls.min.js"></script>
<script>
/* ════════════════════════════════════════════════════════
   AniPlay-style vanilla JS player — Nova Anime Mobile
   ════════════════════════════════════════════════════════ */

/* ── Constants ── */
var SOURCES      = ${srcJson};
var TITLE        = ${titleJson};
var EPISODE      = ${epJson};
var INIT_POS     = ${initPos};
var HAS_PREV_EP  = false;
var HAS_NEXT_EP  = false;
var SPEEDS       = [0.5, 0.75, 1, 1.25, 1.5, 2];

/* ── State ── */
var srcIdx       = 0;
var hls          = null;
var dur          = 0;
var ctrlVisible  = true;
var hideTimer    = null;
var subOn        = true;
var cues         = [];
var activeCue    = null;
var speedIdx     = 2; // index into SPEEDS → default 1x
var bright       = 1;
var volume       = 1;
var seekDrag     = false;
var seekDragPct  = 0;
var lastTap      = 0;
var tapTimer     = null;
var retryCount   = 0;
var loadTimeout  = null;
var initPosDone  = false;
var hasStarted   = false;
var gesture      = null;
var swipeTimeout = null;

/* ── Elements ── */
var v            = document.getElementById('v');
var spinner      = document.getElementById('spinner');
var loadBg       = document.getElementById('loadBg');
var overlay      = document.getElementById('overlay');
var errOverlay   = document.getElementById('errOverlay');
var errMsg       = document.getElementById('errMsg');
var titleEl      = document.getElementById('titleEl');
var epEl         = document.getElementById('epEl');
var qualLabel    = document.getElementById('qualLabel');
var qualPill     = document.getElementById('qualPill');
var subBtn       = document.getElementById('subBtn');
var centerWrap   = document.getElementById('centerWrap');
var playBtn      = document.getElementById('playBtn');
var playIcon     = document.getElementById('playIcon');
var epNav        = document.getElementById('epNav');
var prevEpBtn    = document.getElementById('prevEpBtn');
var nextEpBtn    = document.getElementById('nextEpBtn');
var curTimeEl    = document.getElementById('curTimeEl');
var durEl        = document.getElementById('durEl');
var seekWrap     = document.getElementById('seekWrap');
var seekBuf      = document.getElementById('seekBuf');
var seekPlayed   = document.getElementById('seekPlayed');
var seekKnob     = document.getElementById('seekKnob');
var srcPanel     = document.getElementById('srcPanel');
var srcList      = document.getElementById('srcList');
var rippleL      = document.getElementById('rippleL');
var rippleR      = document.getElementById('rippleR');
var swipeBri     = document.getElementById('swipeBri');
var swipeVol     = document.getElementById('swipeVol');
var briFill      = document.getElementById('briFill');
var volFill      = document.getElementById('volFill');
var briPct       = document.getElementById('briPct');
var volPct       = document.getElementById('volPct');
var subOverlay   = document.getElementById('subOverlay');
var subText      = document.getElementById('subText');
var speedBtn     = document.getElementById('speedBtn');

/* ── RN bridge ── */
function post(o) {
  try {
    if (window.ReactNativeWebView) window.ReactNativeWebView.postMessage(JSON.stringify(o));
  } catch(e) {}
}

/* ── Format time ── */
function fmt(s) {
  if (!isFinite(s) || s < 0) return '0:00';
  var h = Math.floor(s / 3600);
  var m = Math.floor((s % 3600) / 60);
  var sec = Math.floor(s % 60);
  if (h > 0) return h + ':' + pad(m) + ':' + pad(sec);
  return m + ':' + pad(sec);
}
function pad(n) { return n < 10 ? '0' + n : '' + n; }
function clamp(v, lo, hi) { return Math.min(Math.max(v, lo), hi); }

/* ── Init title ── */
titleEl.textContent = TITLE || '';
if (EPISODE !== null) epEl.textContent = 'الحلقة ' + EPISODE;

/* ── Build source list ── */
function buildSrcList() {
  srcList.innerHTML = '';
  SOURCES.forEach(function(src, i) {
    var item = document.createElement('div');
    item.className = 'anip__src-item' + (i === srcIdx ? ' active' : '');
    item.innerHTML =
      '<div class="anip__src-dot"></div>' +
      '<div class="anip__src-info">' +
        '<div class="anip__src-label">سيرفر ' + (i + 1) + '</div>' +
      '</div>' +
      '<div class="anip__src-tag">' + (src.quality || src.label || 'HD') + '</div>';
    item.onclick = function() { switchSrc(i); };
    srcList.appendChild(item);
  });
  // Update quality pill
  var cur = SOURCES[srcIdx];
  qualLabel.textContent = cur ? (cur.quality || cur.label || 'HD').split(' ')[0] : 'HD';
}

/* ── HLS loader with Referer ── */
function makeRefLoader(ref) {
  function L(cfg) { this.stats = {trequest:0,tfirst:0,tload:0,loaded:0}; }
  L.prototype.load = function(ctx, cfg, cb) {
    var self = this;
    var hdrs = { 'Accept': '*/*' };
    if (ref) {
      hdrs['Referer'] = ref;
      try { hdrs['Origin'] = new URL(ref).origin; } catch(e) {}
    }
    self.stats.trequest = performance.now();
    self._ctl = new AbortController();
    fetch(ctx.url, { headers: hdrs, signal: self._ctl.signal, credentials: 'omit' })
      .then(function(r) {
        if (!r.ok) throw new Error('HTTP ' + r.status);
        self.stats.tfirst = performance.now();
        return ctx.responseType === 'arraybuffer' ? r.arrayBuffer() : r.text();
      })
      .then(function(data) {
        self.stats.tload = performance.now();
        self.stats.loaded = data.byteLength || data.length || 0;
        cb.onSuccess({ data: data, url: ctx.url, code: 200 }, self.stats, ctx, null);
      })
      .catch(function(err) {
        if (err.name === 'AbortError') return;
        cb.onError({ code: 0, text: err.message }, ctx, null, self.stats);
      });
  };
  L.prototype.abort   = function() { try { this._ctl && this._ctl.abort(); } catch(e) {} };
  L.prototype.destroy = function() { this.abort(); };
  return L;
}

/* ── Load source ── */
function loadSrc(idx, seekTo) {
  srcIdx = idx;
  retryCount = 0;
  initPosDone = false;
  hasStarted = false;
  showSpinner(true);
  hideErr();
  buildSrcList();

  var src = SOURCES[idx];
  if (!src) { showErr('لا توجد مصادر متاحة'); return; }

  var url = src.url;
  var ref = src.referer || '';

  if (hls) { hls.destroy(); hls = null; }

  // Start load timeout
  clearTimeout(loadTimeout);
  loadTimeout = setTimeout(function() {
    loadTimeout = null;
    handleErr('timeout loading source');
  }, 25000);

  function doLoad() {
    if (/\\.mp4(\\?|$|#)/i.test(url) || (url.indexOf('.mp4') !== -1 && url.indexOf('.m3u8') === -1)) {
      // MP4
      v.src = url;
      v.load();
      v.play().catch(function() {});
    } else if (typeof Hls !== 'undefined' && Hls.isSupported()) {
      var cfg = {
        enableWorker: false,
        maxBufferLength: 30,
        maxMaxBufferLength: 60,
        startLevel: -1,
        fragLoadingTimeOut: 20000,
        manifestLoadingTimeOut: 15000,
        levelLoadingTimeOut: 15000,
        loader: ref ? makeRefLoader(ref) : undefined,
      };
      hls = new Hls(cfg);
      hls.loadSource(url);
      hls.attachMedia(v);
      hls.on(Hls.Events.MANIFEST_PARSED, function() {
        v.play().catch(function() {});
      });
      hls.on(Hls.Events.ERROR, function(ev, data) {
        if (data.fatal) {
          if (data.type === Hls.ErrorTypes.NETWORK_ERROR && retryCount < 2) {
            retryCount++;
            setTimeout(function() { try { hls.startLoad(); } catch(e) {} }, 1000);
          } else if (data.type === Hls.ErrorTypes.MEDIA_ERROR && retryCount < 2) {
            retryCount++;
            setTimeout(function() { try { hls.recoverMediaError(); } catch(e) {} }, 500);
          } else {
            handleErr(data.type + ':' + data.details);
          }
        }
      });
    } else if (v.canPlayType('application/vnd.apple.mpegurl')) {
      v.src = url;
      v.load();
      v.play().catch(function() {});
    } else {
      handleErr('hls_not_supported');
    }
  }

  if (seekTo && seekTo > 5) {
    doLoad();
    setTimeout(function() {
      if (!initPosDone) { initPosDone = true; v.currentTime = seekTo; }
    }, 3000);
  } else {
    doLoad();
  }

  // Load subtitles
  loadSubtitles(src.subtitleUrl);
}

/* ── Error handling ── */
function handleErr(msg) {
  clearTimeout(loadTimeout);
  post({ k: 'err', msg: msg });
  // Try next source automatically
  var next = srcIdx + 1;
  if (next < SOURCES.length) {
    console.warn('[Nova] trying next source:', next);
    loadSrc(next);
  } else {
    showErr('فشلت جميع المصادر');
  }
}

function retryNext() {
  var next = srcIdx + 1;
  if (next < SOURCES.length) { loadSrc(next); }
  else { post({ k: 'err', msg: 'all_sources_failed' }); }
}

function showErr(msg) {
  showSpinner(false);
  errMsg.textContent = msg || 'خطأ في التشغيل';
  errOverlay.style.display = 'flex';
}
function hideErr() { errOverlay.style.display = 'none'; }

function switchSrc(idx) {
  closeSrcPanel();
  var savedPos = v.currentTime;
  loadSrc(idx, savedPos > 5 ? savedPos : 0);
}

/* ── Video events ── */
v.addEventListener('loadedmetadata', function() {
  dur = v.duration;
  durEl.textContent = fmt(dur);
  if (!initPosDone && INIT_POS > 5) { initPosDone = true; v.currentTime = INIT_POS; }
  clearTimeout(loadTimeout);
  showSpinner(false);
  if (loadBg) { loadBg.style.display = 'none'; loadBg = null; }
  post({ k: 'ready', d: dur });
});

v.addEventListener('timeupdate', function() {
  if (seekDrag) return;
  var ct = v.currentTime;
  curTimeEl.textContent = fmt(ct);
  if (dur > 0) {
    var pct = ct / dur;
    seekPlayed.style.width = (pct * 100) + '%';
    seekKnob.style.left = (pct * 100) + '%';
    if (v.buffered.length) {
      seekBuf.style.width = (v.buffered.end(v.buffered.length - 1) / dur * 100) + '%';
    }
  }
  updateSubtitle(ct);
  if (!initPosDone && INIT_POS > 5 && ct < 3) {
    initPosDone = true; v.currentTime = INIT_POS;
  }
  post({ k: 't', t: ct, d: dur });
});

v.addEventListener('waiting', function() { showSpinner(true); post({ k: 'buf', v: true }); });
v.addEventListener('canplay', function() { showSpinner(false); post({ k: 'buf', v: false }); });
v.addEventListener('playing', function() {
  showSpinner(false);
  hasStarted = true;
  setPlayIcon(true);
  post({ k: 'buf', v: false });
  post({ k: 'play', v: true });
});
v.addEventListener('pause', function() { setPlayIcon(false); post({ k: 'play', v: false }); });
v.addEventListener('ended', function() {
  setPlayIcon(false);
  post({ k: 'ended' });
  showCtrl(true);
});
v.addEventListener('error', function() {
  handleErr('video_error:' + (v.error ? v.error.code : '?'));
});

function setPlayIcon(playing) {
  if (playing) {
    playIcon.innerHTML = '&#9646;&#9646;';
    playIcon.className = 'anip__play-icon anip__play-icon--pause';
  } else {
    playIcon.innerHTML = '&#9654;';
    playIcon.className = 'anip__play-icon';
    playIcon.style.marginLeft = '3px';
  }
}

/* ── Play/pause ── */
function togglePlay() {
  if (v.paused) { v.play().catch(function(){}); }
  else { v.pause(); }
  showCtrl(true);
}

/* ── Spinner ── */
function showSpinner(on) {
  spinner.style.display = on ? 'flex' : 'none';
}

/* ── Controls visibility ── */
function showCtrl(temporary) {
  overlay.classList.remove('anip__overlay--hidden');
  ctrlVisible = true;
  subOverlay.classList.add('anip__sub-overlay--up');
  clearTimeout(hideTimer);
  if (temporary && !v.paused) {
    hideTimer = setTimeout(function() { hideCtrl(); }, 3500);
  }
}
function hideCtrl() {
  overlay.classList.add('anip__overlay--hidden');
  ctrlVisible = false;
  subOverlay.classList.remove('anip__sub-overlay--up');
}

/* ── Skip ── */
function skip(s) {
  v.currentTime = clamp(v.currentTime + s, 0, dur || 999999);
  var el = s < 0 ? rippleL : rippleR;
  el.style.display = 'flex';
  setTimeout(function() { el.style.display = 'none'; }, 750);
  showCtrl(true);
}

/* ── Speed ── */
function toggleSpeed() {
  speedIdx = (speedIdx + 1) % SPEEDS.length;
  var s = SPEEDS[speedIdx];
  v.playbackRate = s;
  speedBtn.textContent = s + 'x';
  showCtrl(true);
}

/* ── Source panel ── */
function toggleSrcPanel() {
  if (srcPanel.style.display === 'none') {
    buildSrcList();
    srcPanel.style.display = 'block';
    clearTimeout(hideTimer);
  } else {
    closeSrcPanel();
  }
}
function closeSrcPanel() { srcPanel.style.display = 'none'; }

/* ── Subtitle handling ── */
var subUrl = '';
function loadSubtitles(url) {
  cues = []; activeCue = null; updateSubDisplay();
  if (!url) { subBtn.style.display = 'none'; return; }
  subUrl = url;
  fetch(url).then(function(r) { return r.text(); }).then(function(text) {
    var parsed = parseVTT(text);
    cues = parsed;
    if (parsed.length) { subBtn.style.display = 'flex'; }
  }).catch(function() {});
}

function parseVTT(text) {
  var result = [];
  var blocks = text.split(/\\n\\n+/);
  for (var i = 0; i < blocks.length; i++) {
    var lines = blocks[i].trim().split('\\n');
    var tsIdx = -1;
    for (var j = 0; j < lines.length; j++) {
      if (lines[j].indexOf('-->') !== -1) { tsIdx = j; break; }
    }
    if (tsIdx === -1) continue;
    var parts = lines[tsIdx].split('-->');
    if (parts.length < 2) continue;
    var t = parts[1].trim().split(/\\s+/)[0];
    result.push({
      start: parseTime(parts[0]),
      end: parseTime(t),
      text: lines.slice(tsIdx + 1).join('\\n').replace(/<[^>]*>/g, '').trim()
    });
  }
  return result;
}

function parseTime(s) {
  var p = s.trim().replace(',', '.').split(':');
  var sec = 0;
  for (var i = 0; i < p.length; i++) sec = sec * 60 + parseFloat(p[i]);
  return isNaN(sec) ? 0 : sec;
}

function updateSubtitle(ct) {
  if (!subOn || !cues.length) { updateSubDisplay(); return; }
  var found = null;
  for (var i = 0; i < cues.length; i++) {
    if (cues[i].start <= ct && cues[i].end >= ct) { found = cues[i]; break; }
  }
  if (found !== activeCue) {
    activeCue = found;
    updateSubDisplay();
  }
}

function updateSubDisplay() {
  if (subOn && activeCue) {
    subText.textContent = activeCue.text;
    subOverlay.style.display = 'block';
  } else {
    subOverlay.style.display = 'none';
  }
}

function toggleSub() {
  subOn = !subOn;
  if (subOn) subBtn.classList.add('anip__pill--active');
  else subBtn.classList.remove('anip__pill--active');
  updateSubDisplay();
}

/* ── Seek bar ── */
function seekFromX(clientX) {
  var r = seekWrap.getBoundingClientRect();
  var pct = clamp((clientX - r.left) / r.width, 0, 1);
  v.currentTime = pct * (dur || 0);
}

seekWrap.addEventListener('touchstart', function(e) {
  seekDrag = true;
  e.stopPropagation();
  seekFromX(e.touches[0].clientX);
  showCtrl(false);
}, { passive: true });

seekWrap.addEventListener('touchmove', function(e) {
  if (!seekDrag) return;
  e.stopPropagation();
  var r = seekWrap.getBoundingClientRect();
  var pct = clamp((e.touches[0].clientX - r.left) / r.width, 0, 1);
  seekDragPct = pct;
  seekPlayed.style.width = (pct * 100) + '%';
  seekKnob.style.left = (pct * 100) + '%';
  curTimeEl.textContent = fmt(pct * (dur || 0));
}, { passive: true });

seekWrap.addEventListener('touchend', function(e) {
  if (!seekDrag) return;
  seekDrag = false;
  e.stopPropagation();
  seekFromX(e.changedTouches[0].clientX);
  showCtrl(true);
}, { passive: true });

/* ── Gestures (tap / double-tap / swipe) ── */
var player = document.getElementById('player');

function isCtrlTarget(el) {
  if (!el) return false;
  return el.closest('.anip__play-btn') || el.closest('.anip__top-bar') ||
    el.closest('.anip__bottom-bar') || el.closest('.anip__ep-nav') ||
    el.closest('.anip__seek-wrap') || el.closest('.anip__src-panel') ||
    el.closest('button') || el.tagName === 'BUTTON';
}

player.addEventListener('touchstart', function(e) {
  if (isCtrlTarget(e.target)) return;
  var t = e.touches[0];
  gesture = {
    startX: t.clientX, startY: t.clientY,
    isLeft: t.clientX / window.innerWidth < 0.5,
    startVol: volume, startBri: bright,
    moved: false, startTime: Date.now()
  };
}, { passive: true });

player.addEventListener('touchmove', function(e) {
  if (!gesture || isCtrlTarget(e.target)) return;
  var t = e.touches[0];
  var dx = Math.abs(t.clientX - gesture.startX);
  var dy = Math.abs(t.clientY - gesture.startY);
  if (!gesture.moved) {
    if (dx > 12 || dy > 12) {
      if (dx > dy) { gesture = null; return; } // horizontal = skip (handled by double-tap)
      gesture.moved = true;
    } else return;
  }
  // Vertical swipe: volume or brightness
  var delta = (gesture.startY - t.clientY) / 180;
  if (gesture.isLeft) {
    bright = clamp(gesture.startBri + delta, 0.15, 2);
    v.style.filter = 'brightness(' + bright + ')';
    briFill.style.height = (clamp(bright / 2, 0, 1) * 100) + '%';
    briPct.textContent = Math.round(clamp(bright / 2, 0, 1) * 100) + '%';
    showSwipe(swipeBri);
  } else {
    volume = clamp(gesture.startVol + delta, 0, 1);
    v.volume = volume;
    volFill.style.height = (volume * 100) + '%';
    volPct.textContent = Math.round(volume * 100) + '%';
    showSwipe(swipeVol);
  }
}, { passive: true });

player.addEventListener('touchend', function(e) {
  if (!gesture || isCtrlTarget(e.target)) return;
  var g = gesture;
  gesture = null;
  if (g.moved) {
    hideSwipe(swipeBri); hideSwipe(swipeVol);
    return;
  }
  // Tap logic
  var t = e.changedTouches[0];
  var now = Date.now();
  var xPct = t.clientX / window.innerWidth;
  if (now - lastTap < 280) {
    clearTimeout(tapTimer);
    lastTap = 0;
    // Double tap — skip
    if (xPct < 0.35) skip(-10);
    else if (xPct > 0.65) skip(10);
    else togglePlay();
  } else {
    lastTap = now;
    tapTimer = setTimeout(function() {
      lastTap = 0;
      // Single tap — toggle controls
      if (!ctrlVisible) showCtrl(true);
      else if (!v.paused) hideCtrl();
    }, 280);
  }
}, { passive: true });

function showSwipe(el) {
  el.classList.add('anip__swipe--on');
  clearTimeout(swipeTimeout);
  swipeTimeout = setTimeout(function() {
    el.classList.remove('anip__swipe--on');
  }, 1200);
}
function hideSwipe(el) { el.classList.remove('anip__swipe--on'); }

/* ── Episode nav setup (called from RN) ── */
window.NOVA_setEpNav = function(hasPrev, hasNext) {
  HAS_PREV_EP = hasPrev;
  HAS_NEXT_EP = hasNext;
  var any = hasPrev || hasNext;
  epNav.style.display = any ? 'flex' : 'none';
  prevEpBtn.style.display = hasPrev ? 'flex' : 'none';
  nextEpBtn.style.display = hasNext ? 'flex' : 'none';
};

/* ── Exposed functions for RN bridge ── */
window.NOVA_load  = function(url, ref, seekTo) {
  // Load a specific URL directly (used when RN wants to override a source URL)
  SOURCES[srcIdx].url = url;
  if (ref) SOURCES[srcIdx].referer = ref;
  loadSrc(srcIdx, seekTo || 0);
};
window.NOVA_seek  = function(t) { v.currentTime = t; };
window.NOVA_play  = function() { v.play().catch(function(){}); };
window.NOVA_pause = function() { v.pause(); };

/* ── Start ── */
if (SOURCES.length > 0) {
  loadSrc(0, INIT_POS);
} else {
  showErr('لا توجد مصادر');
}

// Show controls initially, then auto-hide
showCtrl(true);

post({ k: 'webview_init' });
</script>
</body>
</html>`;
};

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
  const webRef = useRef<WebView>(null);
  const loadedRef = useRef(false);

  /* ── Lock to landscape on mount ── */
  useEffect(() => {
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_LEFT).catch(() => {});
    return () => {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    };
  }, []);

  /* ── Set episode nav after WebView ready ── */
  const setEpNav = useCallback(() => {
    const hasPrev = !!onPrevEpisode;
    const hasNext = !!onNextEpisode;
    webRef.current?.injectJavaScript(
      `(function(){if(window.NOVA_setEpNav)window.NOVA_setEpNav(${hasPrev},${hasNext});true;})();`
    );
  }, [onPrevEpisode, onNextEpisode]);

  /* ── Messages from WebView ── */
  const handleMessage = useCallback(
    (event: any) => {
      try {
        const msg = JSON.parse(event.nativeEvent.data);
        if (msg.k === "webview_init") {
          loadedRef.current = true;
          setEpNav();
        } else if (msg.k === "back") {
          onBack();
        } else if (msg.k === "prev_ep") {
          onPrevEpisode?.();
        } else if (msg.k === "next_ep") {
          onNextEpisode?.();
        } else if (msg.k === "t") {
          onProgress?.(msg.t, msg.d);
        } else if (msg.k === "err") {
          console.warn("[AnimHlsPlayer] err:", msg.msg);
        } else if (msg.k === "ended") {
          onNextEpisode?.();
        }
      } catch {}
    },
    [onBack, onProgress, onError, onNextEpisode, onPrevEpisode, setEpNav],
  );

  /* ── Fallback: if webview_init missed ── */
  const handleWebViewLoad = useCallback(() => {
    setTimeout(() => {
      if (!loadedRef.current) {
        loadedRef.current = true;
        setEpNav();
      }
    }, 1200);
  }, [setEpNav]);

  /* ── Build HTML once ── */
  const html = buildHtml(
    sources,
    `${title}${episode !== undefined ? ` - الحلقة ${episode}` : ""}`,
    episode,
    initialPosition,
  );

  return (
    <View style={styles.root}>
      <StatusBar hidden />
      <WebView
        ref={webRef}
        source={{ html, baseUrl: "https://nova-player.local/" }}
        style={StyleSheet.absoluteFill}
        mediaPlaybackRequiresUserAction={false}
        allowsInlineMediaPlayback
        allowsFullscreenVideo
        javaScriptEnabled
        domStorageEnabled
        originWhitelist={["*"]}
        mixedContentMode="always"
        scrollEnabled={false}
        bounces={false}
        cacheEnabled={false}
        incognito
        onLoad={handleWebViewLoad}
        onMessage={handleMessage}
        onError={(e) => {
          console.error("[AnimHlsPlayer] WebView error:", e.nativeEvent);
          onError?.();
        }}
        renderError={() => <View style={{ flex: 1, backgroundColor: "#000" }} />}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#000" },
});

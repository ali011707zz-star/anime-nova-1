/**
 * WebVideoPlayer — نفس مشغل الويب بالضبط داخل WebView
 * ينقل كود RiftPlayer الويب كاملاً إلى التطبيق
 */
import React, { useRef, useCallback } from "react";
import { View, StyleSheet, StatusBar, Platform } from "react-native";
import WebView, { WebViewMessageEvent } from "react-native-webview";

export interface WebPlayerProps {
  url: string;
  title?: string;
  episode?: number;
  totalEps?: number;
  subtitleUrl?: string;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
  initialPosition?: number;
  qualityLabel?: string;
  onBack?: () => void;
  onNextEpisode?: () => void;
  onPrevEpisode?: () => void;
  onProgress?: (pos: number, dur: number) => void;
}

/* ─── build self-contained HTML player ─── */
function buildHtml(p: WebPlayerProps): string {
  const {
    url = "", title = "", episode = 1, totalEps = 999,
    subtitleUrl = "", qualityLabel = "",
    skipIntro, skipOutro, initialPosition = 0,
  } = p;

  const introJson  = skipIntro  ? JSON.stringify(skipIntro)  : "null";
  const outroJson  = skipOutro  ? JSON.stringify(skipOutro)  : "null";
  const safeTitle  = title.replace(/'/g, "\\'");
  const safeSubUrl = subtitleUrl.replace(/'/g, "\\'");
  const safeQuality = qualityLabel.replace(/'/g, "\\'");

  return `<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no,viewport-fit=cover">
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;700;900&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/hls.js@1.6.2/dist/hls.min.js"></script>
<style>
*{margin:0;padding:0;box-sizing:border-box;-webkit-tap-highlight-color:transparent;outline:none}
html,body{width:100%;height:100%;overflow:hidden;background:#000;font-family:'Cairo',sans-serif;user-select:none}
#player{position:fixed;inset:0;background:#000;touch-action:none}
video{position:absolute;inset:0;width:100%;height:100%;object-fit:contain;z-index:1;background:#000}

/* ── controls overlay ── */
#ctrl{position:absolute;inset:0;z-index:10;display:flex;flex-direction:column;transition:opacity .25s ease}
#ctrl.hidden{opacity:0;pointer-events:none}

/* ── top bar ── */
#top{display:flex;align-items:flex-start;justify-content:space-between;padding:env(safe-area-inset-top,12px) 12px 0;padding-top:max(env(safe-area-inset-top,0px),12px);background:linear-gradient(180deg,rgba(0,0,0,0.75) 0%,transparent 100%);gap:8px}
#top-left{display:flex;flex-direction:column;gap:4px;flex:1;min-width:0}
#back-btn{width:36px;height:36px;border-radius:50%;background:rgba(255,255,255,0.10);border:1px solid rgba(255,255,255,0.16);display:flex;align-items:center;justify-content:center;cursor:pointer;flex-shrink:0}
.top-row{display:flex;align-items:center;gap:8px}
#anime-title{font-size:13px;font-weight:900;color:rgba(255,255,255,0.92);text-shadow:0 1px 8px rgba(0,0,0,0.9);white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:200px}
#ep-badge{padding:2px 8px;border-radius:6px;background:linear-gradient(135deg,rgba(139,92,246,0.32),rgba(109,40,217,0.22));border:1px solid rgba(167,139,250,0.3);font-size:11px;font-weight:900;color:rgba(221,214,254,0.95);flex-shrink:0}
#quality-badge{padding:2px 7px;border-radius:5px;background:rgba(251,191,36,0.14);border:1px solid rgba(251,191,36,0.30);font-size:10px;font-weight:900;color:rgba(253,224,71,0.95)}
#top-right{display:flex;align-items:center;gap:6px;flex-shrink:0}
.top-btn{width:34px;height:34px;border-radius:50%;background:rgba(255,255,255,0.10);border:1px solid rgba(255,255,255,0.15);display:flex;align-items:center;justify-content:center;cursor:pointer;transition:background .15s}
.top-btn.active{background:rgba(139,92,246,0.30);border-color:rgba(139,92,246,0.55)}
.top-btn svg{width:15px;height:15px;stroke:rgba(255,255,255,0.65);fill:none;stroke-width:1.8;stroke-linecap:round;stroke-linejoin:round}
.top-btn.active svg{stroke:#c4b5fd}
#close-btn{width:34px;height:34px;border-radius:50%;background:rgba(239,68,68,0.14);border:1px solid rgba(239,68,68,0.28);display:flex;align-items:center;justify-content:center;cursor:pointer}
#close-btn svg{width:15px;height:15px;stroke:rgba(248,113,113,0.85);fill:none;stroke-width:2;stroke-linecap:round}

/* ── center play/pause ── */
#center{flex:1;display:flex;align-items:center;justify-content:center;pointer-events:none}
#play-btn{width:80px;height:80px;border-radius:50%;background:rgba(0,0,0,0.50);border:2px solid rgba(255,255,255,0.50);box-shadow:0 8px 32px rgba(0,0,0,0.60),0 0 0 6px rgba(255,255,255,0.04);display:flex;align-items:center;justify-content:center;cursor:pointer;pointer-events:auto;transition:transform .1s;flex-shrink:0}
#play-btn:active{transform:scale(0.92)}
#play-btn svg{width:32px;height:32px;fill:#fff;stroke:none}
#spinner{width:28px;height:28px;border-radius:50%;border:2px solid rgba(255,255,255,0.25);border-top-color:rgba(255,255,255,0.80);animation:spin .8s linear infinite;display:none}
@keyframes spin{to{transform:rotate(360deg)}}

/* ── bottom section ── */
#bottom{background:linear-gradient(0deg,rgba(0,0,0,0.72) 0%,rgba(0,0,0,0.28) 70%,transparent 100%);padding:6px 14px;padding-bottom:max(env(safe-area-inset-bottom,14px),14px)}
/* progress bar */
#progress-area{padding:4px 0 8px;position:relative}
#time-row{display:flex;align-items:center;margin-bottom:4px;direction:ltr}
#cur-time{font-size:12px;font-weight:700;color:rgba(255,255,255,0.70);font-variant-numeric:tabular-nums}
#skip-center{flex:1;display:flex;justify-content:center}
#skip-center-btn{display:none;align-items:center;gap:5px;padding:4px 12px;border-radius:10px;background:rgba(250,204,21,0.88);border:1px solid rgba(253,224,71,0.70);color:#1a1200;font-size:11px;font-weight:900;font-family:'Cairo',sans-serif;cursor:pointer;box-shadow:0 0 14px rgba(250,204,21,0.55)}
#tot-time{font-size:12px;font-weight:700;color:rgba(255,255,255,0.70);font-variant-numeric:tabular-nums}
#progress-wrap{position:relative;height:22px;display:flex;align-items:center;touch-action:none;cursor:pointer}
#progress-bg{position:absolute;left:0;right:0;height:4px;background:rgba(255,255,255,0.15);border-radius:2px;overflow:hidden;transition:height .15s}
#progress-buf{position:absolute;left:0;height:100%;background:rgba(255,255,255,0.28);border-radius:2px;transition:width .3s}
#progress-fill{position:absolute;left:0;height:100%;background:linear-gradient(90deg,#7C3AED,#8B5CF6,#a78bfa);border-radius:2px}
.skip-tick{position:absolute;width:2.5px;height:14px;background:#facc15;border-radius:1.5px;top:50%;transform:translateY(-50%);z-index:6;box-shadow:0 0 6px rgba(250,204,21,0.9)}
#progress-thumb{position:absolute;width:14px;height:14px;background:#a78bfa;border-radius:50%;top:50%;transform:translate(-50%,-50%);box-shadow:0 0 0 2px rgba(167,139,250,0.30),0 1px 6px rgba(0,0,0,0.6);transition:width .12s,height .12s,box-shadow .12s}
#progress-wrap:active #progress-bg,#progress-wrap.dragging #progress-bg{height:6px}
#progress-wrap:active #progress-thumb,#progress-wrap.dragging #progress-thumb{width:18px;height:18px;box-shadow:0 0 0 4px rgba(167,139,250,0.40),0 0 18px rgba(167,139,250,0.85)}

/* ── controls row ── */
#ctrl-row{display:flex;align-items:center;padding-top:4px}
#ctrl-left{display:flex;align-items:center;gap:6px;flex:1}
#ctrl-center{display:flex;align-items:center;gap:8px}
#ctrl-right{display:flex;align-items:center;gap:6px;flex:1;justify-content:flex-end}
.ctrl-btn{width:40px;height:40px;border-radius:12px;background:rgba(20,20,40,0.65);border:1px solid rgba(255,255,255,0.14);display:flex;flex-direction:column;align-items:center;justify-content:center;cursor:pointer;gap:2px;transition:transform .1s}
.ctrl-btn:active{transform:scale(0.90)}
.ctrl-btn svg{width:17px;height:17px;fill:none;stroke:rgba(255,255,255,0.80);stroke-width:1.8;stroke-linecap:round;stroke-linejoin:round}
.ctrl-btn .sub-label{font-size:9px;font-weight:700;color:rgba(255,255,255,0.60);line-height:1}
#play-mini{width:54px;height:54px;border-radius:12px;background:rgba(139,92,246,0.22);border:1px solid rgba(139,92,246,0.50);box-shadow:0 4px 16px rgba(124,58,237,0.28);display:flex;align-items:center;justify-content:center;cursor:pointer;transition:transform .1s}
#play-mini:active{transform:scale(0.92)}
#play-mini svg{width:22px;height:22px;fill:rgba(196,181,253,0.95);stroke:none}
#speed-btn span{padding:3px 7px;border-radius:7px;font-size:11px;font-weight:900;background:rgba(255,255,255,0.07);color:rgba(255,255,255,0.45);border:1px solid rgba(255,255,255,0.10);font-family:'Cairo',sans-serif}
#speed-btn.active span{background:rgba(251,191,36,0.22);color:#fde68a;border-color:rgba(251,191,36,0.40)}
#lock-btn{background:rgba(251,191,36,0.11);border-color:rgba(251,191,36,0.26)}
#lock-btn svg{stroke:rgba(251,191,36,0.70)}

/* ── speed popup ── */
#speed-popup{position:absolute;bottom:90px;left:14px;background:rgba(0,0,0,0.82);border:1px solid rgba(255,255,255,0.10);backdrop-filter:blur(28px);border-radius:16px;overflow:hidden;min-width:100px;z-index:50;display:none}
#speed-popup.open{display:block}
.speed-item{display:flex;align-items:center;justify-content:space-between;padding:10px 16px;cursor:pointer;transition:background .1s;border-bottom:1px solid rgba(255,255,255,0.06)}
.speed-item:last-child{border-bottom:none}
.speed-item:hover,.speed-item:active{background:rgba(255,255,255,0.05)}
.speed-item.active{background:rgba(139,92,246,0.18)}
.speed-item .speed-val{font-size:12px;font-weight:900;font-family:monospace;color:rgba(255,255,255,0.40)}
.speed-item.active .speed-val{color:#c4b5fd}
.speed-dot{width:6px;height:6px;border-radius:50%;background:#8B5CF6;display:none}
.speed-item.active .speed-dot{display:block}

/* ── skip intro/outro floating buttons ── */
#skip-intro-btn,#skip-outro-btn{position:absolute;right:16px;display:none;align-items:center;gap:5px;padding:9px 14px;border-radius:12px;font-family:'Cairo',sans-serif;font-size:13px;font-weight:900;cursor:pointer;z-index:35;backdrop-filter:blur(14px);transition:background .2s,border .2s,color .2s,box-shadow .2s,bottom .25s ease;pointer-events:auto}
#skip-intro-btn{background:rgba(12,10,2,0.82);border:1.5px solid rgba(250,204,21,0.55);color:rgba(253,224,71,0.95);box-shadow:0 2px 12px rgba(0,0,0,0.65)}
#skip-intro-btn.in-range{background:rgba(250,204,21,0.95);border-color:rgba(253,224,71,0.85);color:#110d00;box-shadow:0 0 24px rgba(250,204,21,0.60),0 4px 16px rgba(0,0,0,0.70)}
#skip-outro-btn{background:rgba(8,6,20,0.82);border:1.5px solid rgba(167,139,250,0.55);color:rgba(196,181,253,0.95);box-shadow:0 2px 12px rgba(0,0,0,0.65)}
#skip-outro-btn.in-range{background:rgba(167,139,250,0.95);border-color:rgba(196,181,253,0.85);color:#fff;box-shadow:0 0 24px rgba(139,92,246,0.55),0 4px 16px rgba(0,0,0,0.70)}
.skip-arrow{display:inline-block;transform:rotate(-90deg);font-size:12px}

/* ── skip notification ── */
#skip-notif{position:absolute;top:56px;right:12px;display:none;align-items:center;gap:5px;padding:5px 12px;border-radius:10px;background:rgba(0,0,0,0.72);border:1px solid rgba(250,204,21,0.4);color:#fde047;font-size:11px;font-weight:900;z-index:50;pointer-events:none;backdrop-filter:blur(8px)}

/* ── feedback overlays ── */
#fb-right,#fb-left{position:absolute;top:50%;transform:translateY(-50%);display:none;flex-direction:column;align-items:center;gap:10px;pointer-events:none;z-index:20}
#fb-right{right:18px}
#fb-left{left:18px}
.fb-bar-wrap{width:4px;height:100px;background:rgba(255,255,255,0.15);border-radius:2px;overflow:hidden;position:relative}
.fb-bar-fill{position:absolute;bottom:0;left:0;right:0;border-radius:2px;transition:height .06s}
#fb-right .fb-bar-fill{background:rgba(255,255,255,0.85)}
#fb-right.boosted .fb-bar-fill{background:rgba(167,139,250,0.90)}
#fb-left .fb-bar-fill{background:rgba(253,224,71,0.85)}
.fb-pill{display:flex;align-items:center;gap:4px;padding:3px 10px;border-radius:20px;background:rgba(0,0,0,0.65);border:1px solid rgba(255,255,255,0.12);font-size:11px;font-weight:700;color:rgba(255,255,255,0.85);font-variant-numeric:tabular-nums}
#fb-right.boosted .fb-pill{border-color:rgba(139,92,246,0.50);background:rgba(15,10,30,0.85);color:#c4b5fd}
.fb-icon{font-size:11px}
#fb-center{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);display:none;flex-direction:column;align-items:center;gap:4px;pointer-events:none;z-index:20}
.fb-seek-box{background:rgba(0,0,0,0.72);border:1px solid rgba(255,255,255,0.10);backdrop-filter:blur(12px);border-radius:14px;padding:10px 18px;display:flex;flex-direction:column;align-items:center;gap:3px}
.fb-seek-icon{font-size:20px;color:rgba(255,255,255,0.65)}
.fb-seek-time{font-size:22px;font-weight:900;color:#fff;font-variant-numeric:tabular-nums}
.fb-seek-delta{font-size:12px;font-weight:700;color:rgba(255,255,255,0.55)}

/* ── double-tap ripple ── */
#dbl-left,#dbl-right{position:absolute;top:0;bottom:0;width:50%;display:flex;flex-direction:column;align-items:center;justify-content:center;pointer-events:none;z-index:15;opacity:0;transition:opacity .1s}
#dbl-left{left:0}
#dbl-right{right:0}
.dbl-ripple{position:absolute;width:120px;height:120px;border-radius:60px;transform:scale(0.4)}
.dbl-icon{font-size:30px}
.dbl-secs{font-size:13px;font-weight:900;color:rgba(196,181,253,0.95);text-shadow:0 1px 8px rgba(0,0,0,0.9)}
#dbl-left .dbl-secs{color:rgba(253,186,116,0.95)}

/* ── long press 2x badge ── */
#long-badge{position:absolute;top:70px;left:50%;transform:translateX(-50%);display:none;align-items:center;gap:6px;padding:7px 18px;border-radius:20px;background:rgba(0,0,0,0.70);border:1px solid rgba(251,191,36,0.30);backdrop-filter:blur(12px);pointer-events:none;z-index:30}
#long-badge span{color:rgba(253,224,71,0.90);font-size:12px;font-weight:900}

/* ── loading overlay ── */
#loading-overlay{position:absolute;inset:0;background:rgba(0,0,0,0.65);display:flex;align-items:center;justify-content:center;z-index:30}
#loading-overlay.hidden{display:none}
.spin-ring{width:40px;height:40px;border-radius:50%;border:3px solid rgba(139,92,246,0.15);border-top-color:#8B5CF6;border-right-color:rgba(139,92,246,0.4);animation:spin .9s linear infinite}

/* ── lock overlay ── */
#lock-overlay{position:absolute;inset:0;z-index:40;display:none}
#lock-overlay.active{display:block}
#unlock-btn{position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);display:none;align-items:center;gap:6px;padding:8px 22px;border-radius:12px;background:rgba(0,0,0,0.75);border:1px solid rgba(251,191,36,0.45);color:rgba(251,191,36,0.90);font-size:13px;font-weight:900;cursor:pointer}
#unlock-btn.visible{display:flex}

/* ── subtitle display ── */
#sub-display{position:absolute;left:12px;right:12px;bottom:130px;display:flex;justify-content:center;align-items:flex-end;pointer-events:none;z-index:12}
#sub-text{background:rgba(0,0,0,0.82);color:#fff;font-size:17px;font-weight:700;padding:6px 14px;border-radius:10px;text-align:center;text-shadow:0 1px 6px rgba(0,0,0,0.9);line-height:1.5;display:none}

/* ── error display ── */
#error-overlay{position:absolute;inset:0;background:rgba(0,0,0,0.82);display:none;flex-direction:column;align-items:center;justify-content:center;gap:14px;z-index:50}
#error-overlay.show{display:flex}
#error-msg{color:#fca5a5;font-size:15px;font-weight:700;text-align:center;padding:0 32px}
#retry-btn{padding:9px 24px;border-radius:12px;background:rgba(139,92,246,0.25);border:1px solid rgba(139,92,246,0.45);color:#c4b5fd;font-size:14px;font-weight:900;font-family:'Cairo',sans-serif;cursor:pointer}

/* ── auto-play countdown ── */
#autoplay-box{position:absolute;bottom:120px;right:16px;display:none;align-items:center;gap:8px;padding:10px 16px;border-radius:14px;background:rgba(0,0,0,0.82);border:1px solid rgba(139,92,246,0.35);backdrop-filter:blur(12px);z-index:36;flex-direction:column}
#autoplay-box.show{display:flex}
#autoplay-box .ap-txt{font-size:12px;font-weight:700;color:rgba(255,255,255,0.65)}
#autoplay-box .ap-count{font-size:24px;font-weight:900;color:#c4b5fd;text-align:center}
#autoplay-box .ap-btn{padding:6px 18px;border-radius:10px;background:rgba(139,92,246,0.30);border:1px solid rgba(139,92,246,0.50);color:#c4b5fd;font-size:12px;font-weight:900;font-family:'Cairo',sans-serif;cursor:pointer}
</style>
</head>
<body>
<div id="player">
  <video id="vid" playsinline webkit-playsinline preload="metadata" crossorigin="anonymous"></video>

  <!-- Loading overlay -->
  <div id="loading-overlay"><div class="spin-ring"></div></div>

  <!-- Error overlay -->
  <div id="error-overlay">
    <div style="font-size:36px">⚠️</div>
    <div id="error-msg">فشل تشغيل الفيديو</div>
    <button id="retry-btn" onclick="retryPlay()">إعادة المحاولة</button>
    <button onclick="goBack()" style="color:rgba(255,255,255,0.40);font-size:13px;background:none;border:none;font-family:'Cairo',sans-serif;cursor:pointer">رجوع</button>
  </div>

  <!-- Controls overlay -->
  <div id="ctrl">
    <!-- TOP BAR -->
    <div id="top">
      <div class="top-row">
        <div id="back-btn" onclick="goBack()">
          <svg viewBox="0 0 24 24"><polyline points="15 18 9 12 15 6"/></svg>
        </div>
        <div id="top-left">
          <div class="top-row">
            <span id="anime-title">${safeTitle}</span>
          </div>
          <div class="top-row" style="gap:5px">
            <span id="ep-badge">الحلقة ${episode}</span>
            ${safeQuality ? `<span id="quality-badge">${safeQuality}</span>` : ""}
          </div>
        </div>
      </div>
      <div id="top-right">
        ${safeSubUrl ? `
        <div class="top-btn" id="sub-btn" onclick="toggleSub()" title="ترجمة">
          <svg viewBox="0 0 24 24"><rect x="2" y="5" width="20" height="14" rx="3"/><path d="M7 10h2.5M7 14h2.5"/><path d="M12 10h2.5M12 14h2.5"/></svg>
        </div>` : ""}
        <div class="top-btn" id="flip-btn" onclick="toggleBrightness()" title="السطوع">
          <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="5"/><line x1="12" y1="1" x2="12" y2="3"/><line x1="12" y1="21" x2="12" y2="23"/><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"/><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"/><line x1="1" y1="12" x2="3" y2="12"/><line x1="21" y1="12" x2="23" y2="12"/><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"/><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"/></svg>
        </div>
        <div class="top-btn" id="screenshot-btn" onclick="takeScreenshot()" title="لقطة">
          <svg viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
        </div>
        <div id="close-btn" onclick="goBack()">
          <svg viewBox="0 0 24 24"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
        </div>
      </div>
    </div>

    <!-- CENTER -->
    <div id="center">
      <div id="play-btn" onclick="togglePlay()">
        <div id="spinner"></div>
        <svg id="play-icon" viewBox="0 0 24 24"><polygon points="5,3 19,12 5,21"/></svg>
        <svg id="pause-icon" viewBox="0 0 24 24" style="display:none"><rect x="6" y="4" width="4" height="16"/><rect x="14" y="4" width="4" height="16"/></svg>
        <svg id="replay-icon" viewBox="0 0 24 24" style="display:none"><polyline points="1,4 1,10 7,10"/><path d="M3.51 15a9 9 0 1 0 .49-4.39"/></svg>
      </div>
    </div>

    <!-- BOTTOM -->
    <div id="bottom">
      <div id="progress-area">
        <!-- time row -->
        <div id="time-row">
          <span id="cur-time">0:00</span>
          <div id="skip-center">
            <div id="skip-center-btn" onclick="skipActive()">
              <span class="skip-arrow">›</span>
              <span id="skip-center-label">تخطي المقدمة</span>
            </div>
          </div>
          <span id="tot-time">0:00</span>
        </div>
        <!-- progress bar -->
        <div id="progress-wrap">
          <div id="progress-bg">
            <div id="progress-buf"></div>
          </div>
          <div id="progress-fill"></div>
          <div id="progress-thumb"></div>
        </div>
      </div>
      <!-- controls row -->
      <div id="ctrl-row">
        <div id="ctrl-left">
          <div class="ctrl-btn" id="speed-btn" onclick="toggleSpeedMenu()">
            <span>×<span id="speed-val">1</span></span>
          </div>
        </div>
        <div id="ctrl-center">
          <div class="ctrl-btn" onclick="skip(10)" title="+10ث">
            <svg viewBox="0 0 24 24"><polyline points="15,18 21,12 15,6"/><polyline points="9,18 15,12 9,6"/></svg>
            <span class="sub-label">+10ث</span>
          </div>
          <div id="play-mini" onclick="togglePlay()">
            <svg id="pm-play" viewBox="0 0 24 24"><polygon points="5,3 19,12 5,21"/></svg>
            <svg id="pm-pause" viewBox="0 0 24 24" style="display:none"><rect x="6" y="4" width="4" height="16"/><rect x="14" y="4" width="4" height="16"/></svg>
            <svg id="pm-replay" viewBox="0 0 24 24" style="display:none"><polyline points="1,4 1,10 7,10"/><path d="M3.51 15a9 9 0 1 0 .49-4.39"/></svg>
          </div>
          <div class="ctrl-btn" onclick="skip(-10)" title="-10ث">
            <svg viewBox="0 0 24 24"><polyline points="9,18 3,12 9,6"/><polyline points="15,18 9,12 15,6"/></svg>
            <span class="sub-label">-10ث</span>
          </div>
        </div>
        <div id="ctrl-right">
          <div class="ctrl-btn" onclick="toggleMute()" id="vol-btn">
            <svg id="vol-icon" viewBox="0 0 24 24"><polygon points="11,5 6,9 2,9 2,15 6,15 11,19 11,5"/><path d="M19.07 4.93a10 10 0 0 1 0 14.14"/><path d="M15.54 8.46a5 5 0 0 1 0 7.07"/></svg>
            <svg id="mute-icon" viewBox="0 0 24 24" style="display:none"><polygon points="11,5 6,9 2,9 2,15 6,15 11,19 11,5"/><line x1="23" y1="9" x2="17" y2="15"/><line x1="17" y1="9" x2="23" y2="15"/></svg>
          </div>
          <div class="ctrl-btn" id="lock-btn" onclick="lockScreen()">
            <svg viewBox="0 0 24 24"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg>
          </div>
        </div>
      </div>
    </div>
  </div><!-- /ctrl -->

  <!-- Speed popup -->
  <div id="speed-popup">
    <div class="speed-item" data-speed="0.5" onclick="setSpeed(0.5)"><span class="speed-val">×0.5</span><div class="speed-dot"></div></div>
    <div class="speed-item" data-speed="0.75" onclick="setSpeed(0.75)"><span class="speed-val">×0.75</span><div class="speed-dot"></div></div>
    <div class="speed-item active" data-speed="1" onclick="setSpeed(1)"><span class="speed-val">×1</span><div class="speed-dot"></div></div>
    <div class="speed-item" data-speed="1.25" onclick="setSpeed(1.25)"><span class="speed-val">×1.25</span><div class="speed-dot"></div></div>
    <div class="speed-item" data-speed="1.5" onclick="setSpeed(1.5)"><span class="speed-val">×1.5</span><div class="speed-dot"></div></div>
    <div class="speed-item" data-speed="2" onclick="setSpeed(2)"><span class="speed-val">×2</span><div class="speed-dot"></div></div>
  </div>

  <!-- Skip intro/outro floating buttons -->
  <div id="skip-intro-btn" onclick="doSkipIntro()">
    <span class="skip-arrow">›</span><span>تخطي المقدمة</span>
  </div>
  <div id="skip-outro-btn" onclick="doSkipOutro()">
    <span class="skip-arrow">›</span><span>تخطي النهاية</span>
  </div>

  <!-- Skip notification -->
  <div id="skip-notif">⏭ <span>توقيتات التخطي متاحة</span></div>

  <!-- Subtitle display -->
  <div id="sub-display"><div id="sub-text"></div></div>

  <!-- Feedback: volume (right) -->
  <div id="fb-right" class="fb-side">
    <div class="fb-bar-wrap"><div class="fb-bar-fill" id="vol-bar-fill"></div></div>
    <div class="fb-pill"><span class="fb-icon">🔊</span><span id="vol-pct">100%</span></div>
  </div>
  <!-- Feedback: brightness (left) -->
  <div id="fb-left" class="fb-side">
    <div class="fb-bar-wrap"><div class="fb-bar-fill" id="bri-bar-fill"></div></div>
    <div class="fb-pill"><span class="fb-icon">☀️</span><span id="bri-pct">100%</span></div>
  </div>
  <!-- Feedback: seek (center) -->
  <div id="fb-center">
    <div class="fb-seek-box">
      <div class="fb-seek-icon" id="seek-icon">⏩</div>
      <div class="fb-seek-time" id="seek-time">0:00</div>
      <div class="fb-seek-delta" id="seek-delta">+0ث</div>
    </div>
  </div>

  <!-- Double tap indicators -->
  <div id="dbl-left"><div class="dbl-icon">⏪</div><div class="dbl-secs" id="dbl-left-secs">-10ث</div></div>
  <div id="dbl-right"><div class="dbl-icon">⏩</div><div class="dbl-secs" id="dbl-right-secs">+10ث</div></div>

  <!-- Long press badge -->
  <div id="long-badge">⚡ <span>تشغيل سريع ×2</span></div>

  <!-- Auto-play countdown -->
  <div id="autoplay-box">
    <div class="ap-txt">الحلقة التالية</div>
    <div class="ap-count" id="ap-count">5</div>
    <button class="ap-btn" onclick="cancelAutoPlay()">إلغاء</button>
  </div>

  <!-- Lock overlay -->
  <div id="lock-overlay">
    <div id="unlock-btn" onclick="unlockScreen()">🔒 <span>اضغط للفتح</span></div>
  </div>

</div><!-- /player -->

<script>
'use strict';
// ─── Config ───────────────────────────────────
const SRC         = ${JSON.stringify(url)};
const SKIP_INTRO  = ${introJson};
const SKIP_OUTRO  = ${outroJson};
const RESUME_TIME = ${initialPosition};
const SUB_URL     = ${JSON.stringify(subtitleUrl)};
const EP_NUM      = ${episode};
const TOTAL_EPS   = ${totalEps};

// ─── State ────────────────────────────────────
let playing     = false;
let isEnded     = false;
let dur         = 0;
let curPos      = 0;
let buffered    = 0;
let volume      = 1.0;
let brightness  = 1.0;
let muted       = false;
let speed       = 1;
let isLocked    = false;
let showCtrl    = true;
let subOn       = false;
let subCues     = [];
let hideTimer   = null;
let fbTimer     = null;
let longTimer   = null;
let longActive  = false;
let prevSpeed   = 1;
let autoTimer   = null;
let apCountdown = 0;
let skipNotifShown = false;
let resumeDone  = false;
let hlsRef      = null;

// ─── DOM refs ────────────────────────────────
const vid           = document.getElementById('vid');
const ctrl          = document.getElementById('ctrl');
const loadingOvl    = document.getElementById('loading-overlay');
const errorOvl      = document.getElementById('error-overlay');
const errorMsg      = document.getElementById('error-msg');
const playBtn       = document.getElementById('play-btn');
const playIcon      = document.getElementById('play-icon');
const pauseIcon     = document.getElementById('pause-icon');
const replayIcon    = document.getElementById('replay-icon');
const pmPlay        = document.getElementById('pm-play');
const pmPause       = document.getElementById('pm-pause');
const pmReplay      = document.getElementById('pm-replay');
const playMini      = document.getElementById('play-mini');
const spinner       = document.getElementById('spinner');
const curTimeEl     = document.getElementById('cur-time');
const totTimeEl     = document.getElementById('tot-time');
const progressFill  = document.getElementById('progress-fill');
const progressBuf   = document.getElementById('progress-buf');
const progressThumb = document.getElementById('progress-thumb');
const progressWrap  = document.getElementById('progress-wrap');
const speedValEl    = document.getElementById('speed-val');
const speedBtn      = document.getElementById('speed-btn');
const speedPopup    = document.getElementById('speed-popup');
const fbRight       = document.getElementById('fb-right');
const fbLeft        = document.getElementById('fb-left');
const fbCenter      = document.getElementById('fb-center');
const volBarFill    = document.getElementById('vol-bar-fill');
const briBarFill    = document.getElementById('bri-bar-fill');
const volPct        = document.getElementById('vol-pct');
const briPct        = document.getElementById('bri-pct');
const seekIcon      = document.getElementById('seek-icon');
const seekTime      = document.getElementById('seek-time');
const seekDelta     = document.getElementById('seek-delta');
const dblLeft       = document.getElementById('dbl-left');
const dblRight      = document.getElementById('dbl-right');
const longBadge     = document.getElementById('long-badge');
const lockOverlay   = document.getElementById('lock-overlay');
const unlockBtn     = document.getElementById('unlock-btn');
const subText       = document.getElementById('sub-text');
const skipIntroBtn  = document.getElementById('skip-intro-btn');
const skipOutroBtn  = document.getElementById('skip-outro-btn');
const skipNotifEl   = document.getElementById('skip-notif');
const skipCenterBtn = document.getElementById('skip-center-btn');
const skipCenterLbl = document.getElementById('skip-center-label');
const apBox         = document.getElementById('autoplay-box');
const apCount       = document.getElementById('ap-count');
const volIcon       = document.getElementById('vol-icon');
const muteIcon      = document.getElementById('mute-icon');

// ─── Helpers ─────────────────────────────────
function fmtTime(s) {
  if (!isFinite(s) || s < 0) return '0:00';
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = Math.floor(s % 60);
  if (h > 0) return h + ':' + String(m).padStart(2,'0') + ':' + String(sec).padStart(2,'0');
  return m + ':' + String(sec).padStart(2,'0');
}
function postRN(type, data) {
  try { window.ReactNativeWebView.postMessage(JSON.stringify(Object.assign({ type }, data || {}))); } catch(e) {}
}
function schedHide() {
  if (hideTimer) clearTimeout(hideTimer);
  hideTimer = setTimeout(() => { if (playing && !isLocked) { ctrl.classList.add('hidden'); showCtrl = false; } }, 3500);
}
function showControls() {
  ctrl.classList.remove('hidden');
  showCtrl = true;
  schedHide();
}
function hideFeedback() {
  if (fbTimer) clearTimeout(fbTimer);
  fbTimer = setTimeout(() => {
    fbRight.style.display = 'none';
    fbLeft.style.display = 'none';
    fbCenter.style.display = 'none';
  }, 900);
}

// ─── Player icons update ──────────────────────
function updatePlayIcons() {
  if (isEnded) {
    playIcon.style.display = 'none'; pauseIcon.style.display = 'none'; replayIcon.style.display = '';
    pmPlay.style.display = 'none'; pmPause.style.display = 'none'; pmReplay.style.display = '';
    spinner.style.display = 'none';
  } else if (playing) {
    playIcon.style.display = 'none'; pauseIcon.style.display = ''; replayIcon.style.display = 'none';
    pmPlay.style.display = 'none'; pmPause.style.display = ''; pmReplay.style.display = 'none';
    spinner.style.display = 'none';
  } else {
    playIcon.style.display = ''; pauseIcon.style.display = 'none'; replayIcon.style.display = 'none';
    pmPlay.style.display = ''; pmPause.style.display = 'none'; pmReplay.style.display = 'none';
    spinner.style.display = 'none';
  }
}

// ─── Progress update ─────────────────────────
function updateProgress() {
  if (!dur) return;
  const pct = curPos / dur;
  const bpct = Math.min(buffered / dur, 1);
  progressFill.style.width = (pct * 100) + '%';
  progressBuf.style.width = (bpct * 100) + '%';
  progressThumb.style.left = (pct * 100) + '%';
  curTimeEl.textContent = fmtTime(curPos);
  totTimeEl.textContent = fmtTime(dur);
  // Skip tick marks
  if (!document.getElementById('intro-tick-s')) addSkipTicks();
  // Update skip buttons
  updateSkipButtons();
  // Subtitle
  if (subOn && subCues.length) updateSub();
}

function addSkipTicks() {
  const pw = progressWrap;
  [SKIP_INTRO, SKIP_OUTRO].forEach((seg, si) => {
    if (!seg || !dur) return;
    ['start','end'].forEach(k => {
      const tick = document.createElement('div');
      tick.className = 'skip-tick';
      tick.id = (si===0?'intro':'outro') + '-tick-' + k;
      tick.style.left = Math.min((seg[k]/dur)*100, 99.5) + '%';
      pw.appendChild(tick);
    });
  });
}

function updateSkipButtons() {
  const inIntro = SKIP_INTRO && curPos >= SKIP_INTRO.start && curPos < SKIP_INTRO.end;
  const inOutro = SKIP_OUTRO && curPos >= SKIP_OUTRO.start && curPos < SKIP_OUTRO.end;

  if (SKIP_INTRO) {
    skipIntroBtn.style.display = 'flex';
    skipIntroBtn.style.bottom = showCtrl ? '110px' : '24px';
    skipIntroBtn.classList.toggle('in-range', inIntro);
  }
  if (SKIP_OUTRO) {
    skipOutroBtn.style.display = 'flex';
    skipOutroBtn.style.bottom = showCtrl ? (SKIP_INTRO ? '158px' : '110px') : (SKIP_INTRO ? '72px' : '24px');
    skipOutroBtn.classList.toggle('in-range', inOutro);
  }
  // Center skip button
  const hasSkip = SKIP_INTRO || SKIP_OUTRO;
  if (hasSkip) {
    if (inIntro) {
      skipCenterBtn.style.display = 'flex';
      skipCenterLbl.textContent = 'تخطي المقدمة';
    } else if (inOutro) {
      skipCenterBtn.style.display = 'flex';
      skipCenterLbl.textContent = 'تخطي النهاية';
    } else if (SKIP_INTRO && curPos < SKIP_INTRO.start) {
      skipCenterBtn.style.display = 'flex';
      skipCenterLbl.textContent = 'تخطي المقدمة';
    } else if (SKIP_OUTRO && curPos < SKIP_OUTRO.start) {
      skipCenterBtn.style.display = 'flex';
      skipCenterLbl.textContent = 'تخطي النهاية';
    } else {
      skipCenterBtn.style.display = 'none';
    }
  }
  // Show skip notification once when skip data becomes available
  if (!skipNotifShown && hasSkip && dur > 0) {
    skipNotifShown = true;
    skipNotifEl.style.display = 'flex';
    setTimeout(() => { skipNotifEl.style.display = 'none'; }, 2500);
  }
}

function skipActive() {
  const inIntro = SKIP_INTRO && curPos >= SKIP_INTRO.start && curPos < SKIP_INTRO.end;
  const inOutro = SKIP_OUTRO && curPos >= SKIP_OUTRO.start && curPos < SKIP_OUTRO.end;
  if (inIntro) doSkipIntro();
  else if (inOutro) doSkipOutro();
  else if (SKIP_INTRO && curPos < SKIP_OUTRO?.start || SKIP_INTRO && !SKIP_OUTRO) doSkipIntro();
  else doSkipOutro();
}
function doSkipIntro() { if (SKIP_INTRO) { vid.currentTime = SKIP_INTRO.end; showControls(); } }
function doSkipOutro() { if (SKIP_OUTRO) { vid.currentTime = SKIP_OUTRO.end; showControls(); } }

// ─── Subtitles ───────────────────────────────
function loadSubs(url) {
  if (!url) return;
  fetch(url).then(r => r.text()).then(txt => {
    subCues = parseVTT(txt);
    subOn = true;
    const btn = document.getElementById('sub-btn');
    if (btn) btn.classList.add('active');
  }).catch(() => {});
}
function parseVTT(txt) {
  const cues = [];
  const blocks = txt.replace(/\r\n/g,'\n').split(/\n\n+/);
  for (const block of blocks) {
    const lines = block.trim().split('\n');
    const tLine = lines.find(l => l.includes('-->'));
    if (!tLine) continue;
    const [start, end] = tLine.split('-->').map(s => parseTs(s.trim().split(' ')[0]));
    const text = lines.slice(lines.indexOf(tLine)+1).join('\n').replace(/<[^>]+>/g,'').trim();
    if (text) cues.push({ start, end, text });
  }
  return cues.sort((a,b) => a.start - b.start);
}
function parseTs(s) {
  const parts = s.split(':').map(parseFloat);
  if (parts.length === 3) return parts[0]*3600 + parts[1]*60 + parts[2];
  if (parts.length === 2) return parts[0]*60 + parts[1];
  return 0;
}
function updateSub() {
  const ct = curPos;
  let found = null;
  let lo = 0, hi = subCues.length - 1;
  while (lo <= hi) {
    const mid = (lo + hi) >> 1;
    if (subCues[mid].start <= ct) lo = mid + 1; else hi = mid - 1;
  }
  if (hi >= 0 && subCues[hi].end >= ct) found = subCues[hi];
  if (found) { subText.textContent = found.text; subText.style.display = 'block'; }
  else { subText.style.display = 'none'; }
}
function toggleSub() {
  subOn = !subOn;
  const btn = document.getElementById('sub-btn');
  if (btn) btn.classList.toggle('active', subOn);
  if (!subOn) subText.style.display = 'none';
  if (subOn && !subCues.length && SUB_URL) loadSubs(SUB_URL);
}

// ─── Volume / Mute ────────────────────────────
function toggleMute() {
  muted = !muted;
  vid.muted = muted;
  volIcon.style.display = muted ? 'none' : '';
  muteIcon.style.display = muted ? '' : 'none';
  showControls();
}
function setVolume(v) {
  volume = Math.max(0, Math.min(2, v));
  vid.volume = Math.min(1, volume);
  if (volume > 0) { muted = false; vid.muted = false; }
  volIcon.style.display = (muted || volume === 0) ? 'none' : '';
  muteIcon.style.display = (muted || volume === 0) ? '' : 'none';
}

// ─── Brightness ──────────────────────────────
function setBrightness(b) {
  brightness = Math.max(0.15, Math.min(1.5, b));
  vid.style.filter = 'brightness(' + brightness + ')';
}
function toggleBrightness() {
  // cycle between 0.5, 1.0, 1.3
  if (brightness >= 1.2) setBrightness(0.5);
  else if (brightness >= 0.9) setBrightness(1.3);
  else setBrightness(1.0);
  showControls();
}

// ─── Play / Pause ─────────────────────────────
function togglePlay() {
  if (isEnded) { vid.currentTime = 0; isEnded = false; vid.play().catch(()=>{}); return; }
  if (playing) vid.pause(); else vid.play().catch(()=>{});
  showControls();
}
function goBack() { postRN('back'); }

// ─── Seek ─────────────────────────────────────
function skip(secs) {
  const newT = Math.max(0, Math.min(dur, vid.currentTime + secs));
  vid.currentTime = newT;
  showControls();
}

// ─── Speed ───────────────────────────────────
function toggleSpeedMenu() {
  speedPopup.classList.toggle('open');
  showControls();
}
function setSpeed(s) {
  speed = s;
  vid.playbackRate = s;
  speedValEl.textContent = s;
  speedBtn.classList.toggle('active', s !== 1);
  document.querySelectorAll('.speed-item').forEach(el => {
    const v = parseFloat(el.dataset.speed);
    el.classList.toggle('active', v === s);
  });
  speedPopup.classList.remove('open');
  showControls();
}

// ─── Lock screen ─────────────────────────────
function lockScreen() {
  isLocked = true;
  lockOverlay.classList.add('active');
  ctrl.classList.add('hidden');
  showCtrl = false;
}
function unlockScreen() {
  isLocked = false;
  lockOverlay.classList.remove('active');
  unlockBtn.classList.remove('visible');
  showControls();
}
let unlockHideTimer = null;

// ─── Screenshot ──────────────────────────────
function takeScreenshot() {
  const canvas = document.createElement('canvas');
  canvas.width = vid.videoWidth; canvas.height = vid.videoHeight;
  canvas.getContext('2d').drawImage(vid, 0, 0);
  try { postRN('screenshot', { dataUrl: canvas.toDataURL('image/png') }); } catch {}
  showControls();
}

// ─── Retry ───────────────────────────────────
function retryPlay() { errorOvl.classList.remove('show'); loadSrc(); }

// ─── Auto-play countdown ──────────────────────
function startAutoPlay() {
  if (EP_NUM >= TOTAL_EPS) return;
  apBox.classList.add('show');
  apCountdown = 5;
  apCount.textContent = '5';
  if (autoTimer) clearInterval(autoTimer);
  autoTimer = setInterval(() => {
    apCountdown--;
    apCount.textContent = apCountdown;
    if (apCountdown <= 0) { clearInterval(autoTimer); postRN('next'); }
  }, 1000);
}
function cancelAutoPlay() {
  if (autoTimer) clearInterval(autoTimer);
  apBox.classList.remove('show');
}

// ─── HLS / Source loading ─────────────────────
function loadSrc() {
  if (!SRC) return;
  loadingOvl.classList.remove('hidden');
  if (Hls.isSupported()) {
    if (hlsRef) hlsRef.destroy();
    // ─── تقدير النطاق الترددي الأولي من Network Information API ───
    let bwEstimate = 3000000;
    try {
      const conn = navigator.connection || navigator.mozConnection || navigator.webkitConnection;
      if (conn && conn.downlink > 0) bwEstimate = Math.min(conn.downlink * 1000000, 20000000);
    } catch(e) {}

    const hls = new Hls({
      enableWorker: true,
      startLevel: -1,
      abrEwmaDefaultEstimate: bwEstimate,
      abrEwmaFastLive: 3,
      abrBandWidthFactor: 0.90,
      abrBandWidthUpFactor: 0.80,
      capLevelToPlayerSize: true,
      // ── Buffer: مُحسَّن للجوال مع VPS proxy ──
      maxBufferLength: 30,
      maxMaxBufferLength: 120,
      backBufferLength: 15,
      maxBufferSize: 80 * 1024 * 1024, // 80MB
      maxBufferHole: 0.5,
      // ── Prefetch: يبدأ تحميل السيقمنت القادم مبكراً ──
      startFragPrefetch: true,
      progressive: true,
      // ── Retry: يعيد المحاولة تلقائياً عند فشل الشبكة ──
      fragLoadingMaxRetry: 5,
      fragLoadingRetryDelay: 500,
      fragLoadingMaxRetryTimeout: 12000,
      manifestLoadingMaxRetry: 4,
      manifestLoadingRetryDelay: 800,
      maxStarvationDelay: 6,
      maxLoadingDelay: 6,
      nudgeMaxRetry: 20,
      enableCEA708Captions: false,
      xhrSetup: function(xhr) { xhr.timeout = 20000; },
    });
    hlsRef = hls;
    hls.loadSource(SRC);
    hls.attachMedia(vid);
    hls.on(Hls.Events.MANIFEST_PARSED, () => {
      loadingOvl.classList.add('hidden');
      vid.play().catch(() => {});
    });
    hls.on(Hls.Events.LEVEL_LOADED, (e, d) => {
      if (!dur) dur = d.details.totalduration || 0;
    });
    hls.on(Hls.Events.ERROR, (e, d) => {
      if (!d.fatal) return;
      if (d.type === Hls.ErrorTypes.MEDIA_ERROR) { hls.recoverMediaError(); return; }
      if (d.type === Hls.ErrorTypes.NETWORK_ERROR) {
        const retries = (hls._netRetry = (hls._netRetry || 0) + 1);
        if (retries <= 6) { setTimeout(() => hls.startLoad(), Math.min(800 * retries, 6000)); return; }
      }
      loadingOvl.classList.add('hidden');
      errorMsg.textContent = 'فشل تحميل الفيديو — ' + (d.details || '');
      errorOvl.classList.add('show');
      postRN('error', { msg: d.details });
    });
  } else if (vid.canPlayType('application/vnd.apple.mpegurl')) {
    vid.src = SRC;
    loadingOvl.classList.add('hidden');
    vid.play().catch(() => {});
  } else {
    vid.src = SRC;
    loadingOvl.classList.add('hidden');
    vid.play().catch(() => {});
  }
}

// ─── Video events ─────────────────────────────
vid.addEventListener('play', () => {
  playing = true; isEnded = false;
  updatePlayIcons();
  schedHide();
  postRN('playing');
});
vid.addEventListener('pause', () => {
  playing = false;
  updatePlayIcons();
  if (!isEnded) { ctrl.classList.remove('hidden'); showCtrl = true; }
});
vid.addEventListener('ended', () => {
  playing = false; isEnded = true;
  updatePlayIcons();
  ctrl.classList.remove('hidden'); showCtrl = true;
  startAutoPlay();
});
vid.addEventListener('loadedmetadata', () => {
  dur = vid.duration;
  totTimeEl.textContent = fmtTime(dur);
  if (RESUME_TIME > 5 && !resumeDone && dur > 30) {
    resumeDone = true;
    vid.currentTime = RESUME_TIME;
  }
  loadingOvl.classList.add('hidden');
});
vid.addEventListener('durationchange', () => {
  if (vid.duration && isFinite(vid.duration)) {
    dur = vid.duration;
    totTimeEl.textContent = fmtTime(dur);
    if (!resumeDone && RESUME_TIME > 5 && dur > 30) { resumeDone = true; vid.currentTime = RESUME_TIME; }
  }
});
vid.addEventListener('timeupdate', () => {
  curPos = vid.currentTime;
  if (vid.buffered.length) buffered = vid.buffered.end(vid.buffered.length - 1);
  updateProgress();
  postRN('progress', { pos: curPos, dur });
});
vid.addEventListener('waiting', () => {
  if (curPos > 1) { spinner.style.display = ''; playIcon.style.display = 'none'; pauseIcon.style.display = 'none'; replayIcon.style.display = 'none'; }
  else loadingOvl.classList.remove('hidden');
});
vid.addEventListener('playing', () => { spinner.style.display = 'none'; loadingOvl.classList.add('hidden'); updatePlayIcons(); });
vid.addEventListener('error', () => { loadingOvl.classList.add('hidden'); errorMsg.textContent = 'خطأ في تشغيل الفيديو'; errorOvl.classList.add('show'); });
vid.addEventListener('ratechange', () => {});
vid.addEventListener('volumechange', () => {
  muted = vid.muted;
  volIcon.style.display = (muted || vid.volume === 0) ? 'none' : '';
  muteIcon.style.display = (muted || vid.volume === 0) ? '' : 'none';
});

// ─── Progress bar drag ────────────────────────
let barDragging = false;
function getBarPct(e) {
  const rect = progressWrap.getBoundingClientRect();
  const x = (e.touches ? e.touches[0].clientX : e.clientX) - rect.left;
  return Math.max(0, Math.min(1, x / rect.width));
}
progressWrap.addEventListener('touchstart', e => {
  e.stopPropagation();
  barDragging = true;
  progressWrap.classList.add('dragging');
  const pct = getBarPct(e);
  progressFill.style.width = (pct*100)+'%';
  progressThumb.style.left = (pct*100)+'%';
  showControls();
}, { passive: false });
progressWrap.addEventListener('touchmove', e => {
  e.preventDefault(); e.stopPropagation();
  if (!barDragging) return;
  const pct = getBarPct(e);
  progressFill.style.width = (pct*100)+'%';
  progressThumb.style.left = (pct*100)+'%';
  curTimeEl.textContent = fmtTime(pct * dur);
}, { passive: false });
progressWrap.addEventListener('touchend', e => {
  e.stopPropagation();
  if (!barDragging) return;
  barDragging = false;
  progressWrap.classList.remove('dragging');
  const pct = getBarPct(e.changedTouches[0] ? { clientX: e.changedTouches[0].clientX, touches: null } : e);
  const newT = Math.max(0, Math.min(dur, pct * dur));
  vid.currentTime = newT;
  curPos = newT;
}, { passive: true });

// ─── Touch gestures ──────────────────────────
let gestActive = 'none'; // 'none' | 'seek' | 'vol' | 'bri'
let gestStartX = 0, gestStartY = 0, gestStartVal = 0, gestLastY = 0, gestMoved = false;
let tapTimer = null, lastTap = null;
const GTHRESH = 18;

document.getElementById('player').addEventListener('touchstart', e => {
  if (isLocked) {
    if (unlockHideTimer) clearTimeout(unlockHideTimer);
    unlockBtn.classList.add('visible');
    unlockHideTimer = setTimeout(() => unlockBtn.classList.remove('visible'), 3000);
    return;
  }
  if (e.target.closest('#ctrl-row') || e.target.closest('#top') || e.target.closest('#skip-intro-btn') ||
      e.target.closest('#skip-outro-btn') || e.target.closest('#speed-popup') || e.target.closest('#progress-wrap') ||
      e.target.closest('#play-btn') || e.target.closest('#play-mini') || e.target.closest('#close-btn') ||
      e.target.closest('#back-btn')) return;
  const t = e.touches[0];
  gestStartX = t.clientX; gestStartY = t.clientY; gestLastY = t.clientY;
  gestMoved = false; gestActive = 'none';
  // Long press (2x speed)
  longTimer = setTimeout(() => {
    longActive = true;
    prevSpeed = speed;
    vid.playbackRate = 2;
    longBadge.style.display = 'flex';
    postRN('longpress', {});
  }, 600);
}, { passive: true });

document.getElementById('player').addEventListener('touchmove', e => {
  if (isLocked || longActive) return;
  if (e.target.closest('#ctrl-row') || e.target.closest('#top') || e.target.closest('#progress-wrap')) return;
  const t = e.touches[0];
  const dx = t.clientX - gestStartX, dy = t.clientY - gestStartY;
  const dist = Math.hypot(dx, dy);
  if (dist > 8 && longTimer) { clearTimeout(longTimer); longTimer = null; }
  if (gestActive === 'none' && dist > GTHRESH) {
    gestMoved = true;
    if (Math.abs(dx) > Math.abs(dy) * 1.3) {
      gestActive = 'seek'; gestStartVal = vid.currentTime || 0;
    } else {
      const W = window.innerWidth;
      gestActive = (t.clientX > W / 2) ? 'vol' : 'bri';
      gestStartVal = gestActive === 'vol' ? volume : brightness;
    }
  }
  if (gestActive === 'seek') {
    const maxD = Math.min(dur * 0.25, 90);
    const delta = (dx / window.innerWidth) * maxD;
    const seekVal = Math.max(0, Math.min(dur, gestStartVal + delta));
    seekIcon.textContent = delta >= 0 ? '⏩' : '⏪';
    seekTime.textContent = fmtTime(seekVal);
    seekDelta.textContent = (delta >= 0 ? '+' : '') + Math.round(delta) + 'ث';
    fbCenter.style.display = 'flex';
    hideFeedback();
  } else if (gestActive === 'vol') {
    const dV = (gestLastY - t.clientY) / (window.innerHeight * 0.55);
    const nV = Math.max(0, Math.min(2, volume + dV));
    gestLastY = t.clientY;
    setVolume(nV);
    const pct = Math.round(nV / 2 * 100);
    volBarFill.style.height = Math.min(nV / 2 * 100, 100) + '%';
    volPct.textContent = Math.round(nV * 100) + '%';
    fbRight.style.display = 'flex';
    fbRight.classList.toggle('boosted', nV > 1);
    hideFeedback();
  } else if (gestActive === 'bri') {
    const dV = (gestLastY - t.clientY) / (window.innerHeight * 0.55);
    const nB = Math.max(0.15, Math.min(1.5, brightness + dV));
    gestLastY = t.clientY;
    setBrightness(nB);
    const pct = Math.round((nB / 1.5) * 100);
    briBarFill.style.height = pct + '%';
    briPct.textContent = Math.round(nB * 100) + '%';
    fbLeft.style.display = 'flex';
    hideFeedback();
  }
  e.preventDefault();
}, { passive: false });

document.getElementById('player').addEventListener('touchend', e => {
  if (longTimer) { clearTimeout(longTimer); longTimer = null; }
  if (longActive) {
    vid.playbackRate = prevSpeed;
    longActive = false;
    longBadge.style.display = 'none';
    fbTimer = setTimeout(() => { fbRight.style.display = 'none'; fbLeft.style.display = 'none'; fbCenter.style.display = 'none'; }, 200);
    return;
  }
  if (isLocked) return;
  if (e.target.closest('#ctrl-row') || e.target.closest('#top') || e.target.closest('#progress-wrap') ||
      e.target.closest('#play-btn') || e.target.closest('#play-mini')) return;
  if (gestActive === 'seek') {
    const dx = e.changedTouches[0].clientX - gestStartX;
    const maxD = Math.min(dur * 0.25, 90);
    const delta = (dx / window.innerWidth) * maxD;
    const seekVal = Math.max(0, Math.min(dur, gestStartVal + delta));
    vid.currentTime = seekVal;
    curPos = seekVal;
    setTimeout(() => { fbCenter.style.display = 'none'; }, 300);
    gestActive = 'none'; return;
  }
  if (gestActive !== 'none') {
    setTimeout(() => { fbRight.style.display = 'none'; fbLeft.style.display = 'none'; }, 800);
    gestActive = 'none'; return;
  }
  if (gestMoved) return;
  // single / double tap
  const touch = e.changedTouches[0];
  const side = touch.clientX < window.innerWidth / 2 ? 'L' : 'R';
  const now = Date.now();
  if (lastTap && (now - lastTap.time) < 350 && lastTap.side === side) {
    // double tap
    if (tapTimer) { clearTimeout(tapTimer); tapTimer = null; }
    const delta = side === 'R' ? 10 : -10;
    skip(delta);
    const dblEl = side === 'L' ? dblLeft : dblRight;
    dblEl.style.opacity = '1';
    setTimeout(() => { dblEl.style.opacity = '0'; }, 700);
    lastTap = null;
    showControls();
  } else {
    lastTap = { time: now, side };
    if (tapTimer) clearTimeout(tapTimer);
    tapTimer = setTimeout(() => {
      tapTimer = null; lastTap = null;
      if (showCtrl) { ctrl.classList.add('hidden'); showCtrl = false; }
      else { showControls(); }
    }, 260);
  }
}, { passive: true });

// ─── Close speed menu on outside tap ──────────
document.addEventListener('touchstart', e => {
  if (!e.target.closest('#speed-popup') && !e.target.closest('#speed-btn')) {
    speedPopup.classList.remove('open');
  }
});

// ─── Init ─────────────────────────────────────
loadSrc();
if (SUB_URL) loadSubs(SUB_URL);
schedHide();
</script>
</body>
</html>`;
}

/* ─── React Native component ─── */
export default function WebVideoPlayer(props: WebPlayerProps) {
  const webRef = useRef<WebView>(null);

  const onMessage = useCallback((e: WebViewMessageEvent) => {
    try {
      const msg = JSON.parse(e.nativeEvent.data);
      switch (msg.type) {
        case "back":     props.onBack?.(); break;
        case "next":     props.onNextEpisode?.(); break;
        case "prev":     props.onPrevEpisode?.(); break;
        case "progress": props.onProgress?.(msg.pos ?? 0, msg.dur ?? 0); break;
      }
    } catch {}
  }, [props.onBack, props.onNextEpisode, props.onPrevEpisode, props.onProgress]);

  const html = buildHtml(props);

  return (
    <View style={StyleSheet.absoluteFill}>
      {Platform.OS !== "web" && <StatusBar hidden />}
      <WebView
        ref={webRef}
        source={{ html, baseUrl: "https://nova-player.local" }}
        style={s.webview}
        javaScriptEnabled
        domStorageEnabled
        allowsFullscreenVideo
        allowsInlineMediaPlayback
        mediaPlaybackRequiresUserAction={false}
        onMessage={onMessage}
        mixedContentMode="always"
        originWhitelist={["*"]}
        allowFileAccess
        allowFileAccessFromFileURLs
        scrollEnabled={false}
        bounces={false}
        overScrollMode="never"
        contentInsetAdjustmentBehavior="never"
        automaticallyAdjustContentInsets={false}
        userAgent="Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"
      />
    </View>
  );
}

const s = StyleSheet.create({
  webview: { flex: 1, backgroundColor: "#000" },
});

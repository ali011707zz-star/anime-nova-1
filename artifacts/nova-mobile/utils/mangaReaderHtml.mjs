import {
  DEFAULT_GLOBAL_READER_SETTINGS,
  getReaderThemePalette,
  isPagedReadingMode,
  sanitizeGlobalReaderSettings,
} from "./mangaReaderSettings.mjs";

function escapeHtml(str) {
  return String(str ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#39;");
}

function safeJsonForScript(value) {
  return JSON.stringify(value)
    .replace(/</g, "\\u003c")
    .replace(/>/g, "\\u003e")
    .replace(/&/g, "\\u0026")
    .replace(/\u2028/g, "\\u2028")
    .replace(/\u2029/g, "\\u2029");
}

export function buildApplyReaderSettingsScript(settings, effectiveMode) {
  const safe = sanitizeGlobalReaderSettings(settings);
  const palette = getReaderThemePalette(safe.background);
  const payload = safeJsonForScript({
    settings: safe,
    effectiveMode: String(effectiveMode || "webtoon"),
    palette,
  });
  return `if (window.__applyReaderSettings) { window.__applyReaderSettings(${payload}); } true;`;
}

export function buildReloadReaderPageScript(pageNumber) {
  const num = Math.max(1, Math.floor(Number(pageNumber) || 1));
  return `if (window.__reloadReaderPage) { window.__reloadReaderPage(${num}); } true;`;
}

export function buildScrollReaderScript(direction) {
  const delta = direction === "up" ? -540 : 540;
  return `if (window.__scrollReaderStep) { window.__scrollReaderStep(${delta}); } else { window.scrollBy({ top: ${delta}, behavior: "smooth" }); } true;`;
}

export function buildMangaReaderHtml({
  pages = [],
  chapterLabel = "الفصل",
  nextChapterLabel = null,
  apiBase = "",
  settings = DEFAULT_GLOBAL_READER_SETTINGS,
  effectiveMode = "webtoon",
  initialPage = 1,
}) {
  const safeSettings = sanitizeGlobalReaderSettings(settings);
  const palette = getReaderThemePalette(safeSettings.background);
  const mode = String(effectiveMode || "webtoon");
  const isPaged = isPagedReadingMode(mode);
  const pageUrls = Array.isArray(pages)
    ? pages.map((p) => (typeof p === "string" ? p : String(p?.url || ""))).filter(Boolean)
    : [];
  const startPage = Math.min(Math.max(1, Math.floor(Number(initialPage) || 1)), Math.max(1, pageUrls.length));

  const safeChapterLabel = escapeHtml(chapterLabel || "الفصل");
  const safeNextLabel = nextChapterLabel ? escapeHtml(nextChapterLabel) : "";
  const pagesJson = safeJsonForScript(pageUrls);
  const apiBaseJson = safeJsonForScript(String(apiBase || ""));
  const initialConfigJson = safeJsonForScript({
    settings: safeSettings,
    effectiveMode: mode,
    palette,
    startPage,
  });

  const bodyClasses = [
    `mode-${mode}`,
    isPaged ? "layout-paged" : "layout-continuous",
    safeSettings.color32Bit ? "color-32bit" : "color-saver",
    safeSettings.cropBorders ? "crop-borders" : "",
  ]
    .filter(Boolean)
    .join(" ");

  return `<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=3.0, user-scalable=yes" />
  <style>
    :root {
      --bg: ${palette.bg};
      --surface: ${palette.surface};
      --surface-elevated: ${palette.surfaceElevated};
      --text: ${palette.text};
      --muted: ${palette.muted};
      --border: ${palette.border};
      --accent: ${palette.accent};
      --accent-text: ${palette.accentText};
      --spinner-track: ${palette.spinnerTrack};
      --side-pad: ${safeSettings.sidePadding}%;
    }
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      -webkit-tap-highlight-color: transparent;
      user-select: none;
      -webkit-user-select: none;
    }
    html, body {
      width: 100%;
      min-height: 100%;
      background-color: var(--bg);
      color: var(--text);
      font-family: system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
      transition: background-color 0.22s ease, color 0.22s ease;
    }

    /* ── Vertical Continuous Strips (Webtoon & Continuous Vertical) ── */
    body.mode-webtoon,
    body.mode-continuous_vertical {
      overflow-x: hidden;
      overflow-y: auto;
      -webkit-overflow-scrolling: touch;
    }
    body.mode-webtoon #reader-container,
    body.mode-continuous_vertical #reader-container {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: stretch;
      padding-left: var(--side-pad);
      padding-right: var(--side-pad);
      transition: padding 0.22s ease;
    }
    body.mode-webtoon #reader-container {
      gap: 0px;
    }
    body.mode-continuous_vertical #reader-container {
      gap: 14px;
      padding-top: 8px;
      padding-bottom: 16px;
    }
    body.mode-continuous_vertical .page-slot {
      border-top: 1px solid var(--border);
      border-bottom: 1px solid var(--border);
      background: var(--surface);
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.22);
    }

    /* ── Horizontal Continuous Strips (Continuous RTL & Continuous LTR) ── */
    body.mode-continuous_rtl,
    body.mode-continuous_ltr {
      height: 100vh;
      overflow-x: auto;
      overflow-y: hidden;
      -webkit-overflow-scrolling: touch;
      display: flex;
      flex-direction: row;
      align-items: center;
    }
    body.mode-continuous_rtl {
      direction: rtl;
    }
    body.mode-continuous_ltr {
      direction: ltr;
    }
    body.mode-continuous_rtl #reader-container,
    body.mode-continuous_ltr #reader-container {
      display: flex;
      flex-direction: row;
      align-items: center;
      height: 100vh;
      gap: 12px;
      padding: 0 12px;
      flex-shrink: 0;
    }
    body.mode-continuous_rtl .page-slot,
    body.mode-continuous_ltr .page-slot {
      height: 100vh;
      width: auto;
      min-width: 72vw;
      flex: 0 0 auto;
      display: flex;
      align-items: center;
      justify-content: center;
      background: var(--bg);
    }
    body.mode-continuous_rtl .page-img,
    body.mode-continuous_ltr .page-img {
      height: 100vh !important;
      width: auto !important;
      max-width: none !important;
      object-fit: contain;
    }
    body.mode-continuous_rtl .end-footer,
    body.mode-continuous_ltr .end-footer {
      height: 100vh;
      min-width: 82vw;
      flex: 0 0 auto;
      border-top: 0;
      border-inline-start: 1px solid var(--border);
    }

    /* ── Paged Modes (RTL, LTR, Vertical Snap) ── */
    body.layout-paged {
      width: 100vw;
      height: 100vh;
      overflow: hidden;
      position: relative;
    }
    body.layout-paged #reader-container {
      width: 100vw;
      height: 100vh;
      position: relative;
      overflow: hidden;
    }
    body.layout-paged .page-slot {
      position: absolute;
      inset: 0;
      width: 100vw;
      height: 100vh;
      display: none;
      align-items: center;
      justify-content: center;
      padding-left: var(--side-pad);
      padding-right: var(--side-pad);
      background: var(--bg);
    }
    body.layout-paged .page-slot.active-page {
      display: flex;
    }
    body.layout-paged .page-img {
      max-width: 100% !important;
      max-height: 100% !important;
      width: auto !important;
      height: auto !important;
      object-fit: contain;
    }
    body.layout-paged .end-footer {
      position: absolute;
      inset: 0;
      display: none;
      border-top: 0;
      z-index: 5;
    }
    body.layout-paged .end-footer.active-end {
      display: flex;
    }

    /* ── Shared Page Slot & Images ── */
    .page-slot {
      width: 100%;
      position: relative;
      font-size: 0;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background: var(--bg);
    }
    .page-slot.loading {
      min-height: 300px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 10px;
      border-bottom: 1px solid var(--border);
    }
    body.layout-paged .page-slot.loading {
      display: none;
      border-bottom: 0;
    }
    body.layout-paged .page-slot.loading.active-page {
      display: flex;
    }
    .page-slot.lp-feedback::after {
      content: "";
      position: absolute;
      inset: 0;
      background: rgba(245, 158, 11, 0.12);
      pointer-events: none;
      animation: lpPulse 0.35s ease;
    }
    @keyframes lpPulse {
      from { opacity: 1; }
      to { opacity: 0; }
    }
    .spinner {
      width: 28px;
      height: 28px;
      border: 3px solid var(--spinner-track);
      border-top-color: var(--accent);
      border-radius: 50%;
      animation: spin 0.75s linear infinite;
    }
    @keyframes spin {
      to { transform: rotate(360deg); }
    }
    .page-status {
      font-size: 12px;
      line-height: 1.4;
      color: var(--muted);
      font-weight: 600;
    }
    .page-img {
      width: 100% !important;
      max-width: 100% !important;
      height: auto !important;
      display: block !important;
      margin: 0 !important;
      padding: 0 !important;
      border: 0 !important;
      transition: transform 0.2s ease, clip-path 0.2s ease;
    }
    /* 32-bit True Color vs Memory Saver Rendering Hints */
    body.color-32bit .page-img {
      image-rendering: high-quality;
      image-rendering: auto;
      filter: none;
    }
    body.color-saver .page-img {
      image-rendering: optimizeSpeed;
      image-rendering: -webkit-optimize-contrast;
    }
    /* Border Crop Fallback when cross-origin image blocks canvas pixel read */
    body.crop-borders .page-slot.crop-fallback .page-img {
      transform: scale(1.055);
      transform-origin: center center;
    }
    .retry-btn {
      margin-top: 8px;
      padding: 9px 18px;
      border-radius: 12px;
      border: 0;
      background: var(--accent);
      color: var(--accent-text);
      font-weight: 700;
      font-size: 12.5px;
      line-height: 1.4;
      cursor: pointer;
    }
    .end-footer {
      width: 100%;
      padding: 40px 20px 56px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 14px;
      background: var(--surface);
      border-top: 1px solid var(--border);
      text-align: center;
    }
    .end-badge {
      color: var(--accent);
      font-size: 15px;
      font-weight: 700;
    }
    .end-sub {
      color: var(--muted);
      font-size: 12px;
      font-weight: 500;
    }
    .next-btn {
      padding: 13px 24px;
      border-radius: 14px;
      border: 0;
      background: var(--accent);
      color: var(--accent-text);
      font-weight: 800;
      font-size: 14px;
      box-shadow: 0 8px 22px rgba(245, 158, 11, 0.24);
      cursor: pointer;
    }
    .back-page-btn {
      padding: 9px 18px;
      border-radius: 12px;
      border: 1px solid var(--border);
      background: var(--surface-elevated);
      color: var(--text);
      font-weight: 600;
      font-size: 12.5px;
      cursor: pointer;
    }
  </style>
</head>
<body class="${bodyClasses}" data-mode="${escapeHtml(mode)}" data-color-depth="${safeSettings.color32Bit ? "32bit" : "saver"}">
  <div id="reader-container"></div>
  <div class="end-footer" id="end-footer">
    <div class="end-badge">✓ نهاية ${safeChapterLabel}</div>
    <div class="end-sub">${pageUrls.length > 0 ? `${pageUrls.length} صفحة` : ""}</div>
    ${
      safeNextLabel
        ? `<button class="next-btn" id="next-chapter-btn" onclick="goNextChapter()">الانتقال إلى الفصل التالي (${safeNextLabel}) ←</button>`
        : ""
    }
    ${
      isPaged
        ? `<button class="back-page-btn" onclick="goPrevPage()">العودة لآخر صفحة</button>`
        : ""
    }
  </div>
  <script>
    (function () {
      const pages = ${pagesJson};
      const apiBase = ${apiBaseJson};
      const initCfg = ${initialConfigJson};
      let currentSettings = initCfg.settings;
      let currentMode = initCfg.effectiveMode;
      const isPaged = ${isPaged ? "true" : "false"};
      const container = document.getElementById("reader-container");
      const endFooter = document.getElementById("end-footer");
      const slotEntries = [];
      let currentPage = initCfg.startPage || 1;
      let showingEndScreen = false;
      let wakeLockSentinel = null;

      function postNative(payload) {
        try {
          if (window.ReactNativeWebView && window.ReactNativeWebView.postMessage) {
            window.ReactNativeWebView.postMessage(
              typeof payload === "string" ? payload : JSON.stringify(payload)
            );
          }
        } catch (e) {}
      }

      window.goNextChapter = function () {
        postNative({ type: "NEXT_CHAPTER" });
      };

      async function syncWakeLock(enabled) {
        try {
          if (!("wakeLock" in navigator) || !navigator.wakeLock) return;
          if (enabled) {
            if (!wakeLockSentinel) {
              wakeLockSentinel = await navigator.wakeLock.request("screen");
              wakeLockSentinel.addEventListener("release", function () {
                wakeLockSentinel = null;
              });
            }
          } else if (wakeLockSentinel) {
            await wakeLockSentinel.release();
            wakeLockSentinel = null;
          }
        } catch (e) {}
      }

      document.addEventListener("visibilitychange", function () {
        if (document.visibilityState === "visible" && currentSettings.keepScreenOn) {
          syncWakeLock(true);
        }
      });

      function detectAndApplyCrop(entry) {
        const img = entry.img;
        const slot = entry.slot;
        slot.classList.remove("crop-fallback");
        img.style.clipPath = "";
        img.style.transform = "";
        if (!currentSettings.cropBorders || !entry.loaded) return;

        // Try exact uniform-border scan on a downsampled offscreen canvas
        try {
          const nw = img.naturalWidth || 0;
          const nh = img.naturalHeight || 0;
          if (nw < 20 || nh < 20) return;
          const cw = Math.min(140, nw);
          const ch = Math.min(200, Math.max(20, Math.round((nh / nw) * cw)));
          const canvas = document.createElement("canvas");
          canvas.width = cw;
          canvas.height = ch;
          const ctx = canvas.getContext("2d", { willReadFrequently: true });
          if (!ctx) throw new Error("noctx");
          ctx.drawImage(img, 0, 0, cw, ch);
          const data = ctx.getImageData(0, 0, cw, ch).data;

          function isUniformCol(x) {
            let whiteCount = 0;
            let blackCount = 0;
            const step = Math.max(1, Math.floor(ch / 32));
            let samples = 0;
            for (let y = 0; y < ch; y += step) {
              const i = (y * cw + x) * 4;
              const r = data[i], g = data[i + 1], b = data[i + 2];
              samples++;
              if (r >= 240 && g >= 240 && b >= 240) whiteCount++;
              else if (r <= 16 && g <= 16 && b <= 16) blackCount++;
            }
            return whiteCount / samples > 0.94 || blackCount / samples > 0.94;
          }

          const maxTrimX = Math.floor(cw * 0.14);
          let leftTrim = 0;
          while (leftTrim < maxTrimX && isUniformCol(leftTrim)) leftTrim++;
          let rightTrim = 0;
          while (rightTrim < maxTrimX && isUniformCol(cw - 1 - rightTrim)) rightTrim++;

          if (leftTrim > 0) leftTrim = Math.min(maxTrimX, leftTrim + 1);
          if (rightTrim > 0) rightTrim = Math.min(maxTrimX, rightTrim + 1);
          const leftPct = (leftTrim / cw) * 100;
          const rightPct = (rightTrim / cw) * 100;
          if (leftPct >= 1 || rightPct >= 1) {
            const visibleWidthRatio = Math.max(0.72, 1 - (leftPct + rightPct) / 100);
            const scale = 1 / visibleWidthRatio;
            const shiftPct = ((rightPct - leftPct) / 2);
            img.style.transform = "scale(" + scale.toFixed(3) + ") translateX(" + shiftPct.toFixed(2) + "%)";
          } else {
            slot.classList.add("crop-fallback");
          }
        } catch (err) {
          // Cross-origin image tainted canvas -> apply subtle safe CSS margin crop
          slot.classList.add("crop-fallback");
        }
      }

      function applyAllCrops() {
        for (let i = 0; i < slotEntries.length; i++) {
          detectAndApplyCrop(slotEntries[i]);
        }
      }

      function notifyPageChange(pageNum) {
        const clamped = Math.min(Math.max(1, pageNum), Math.max(1, pages.length));
        currentPage = clamped;
        postNative({
          type: "PAGE_CHANGE",
          page: clamped,
          total: pages.length,
        });
      }

      function renderPagedState() {
        if (!isPaged) return;
        for (let i = 0; i < slotEntries.length; i++) {
          const isCurrent = !showingEndScreen && (i + 1) === currentPage;
          slotEntries[i].slot.classList.toggle("active-page", isCurrent);
          // Preload neighboring pages eagerly in paged mode
          if (Math.abs(i + 1 - currentPage) <= 2 && !slotEntries[i].started) {
            slotEntries[i].startLoad();
          }
        }
        if (endFooter) {
          endFooter.classList.toggle("active-end", showingEndScreen);
        }
      }

      window.goNextPage = function () {
        if (!isPaged) return;
        if (showingEndScreen) return;
        if (currentPage < pages.length) {
          currentPage++;
          renderPagedState();
          notifyPageChange(currentPage);
        } else {
          showingEndScreen = true;
          renderPagedState();
        }
      };

      window.goPrevPage = function () {
        if (!isPaged) return;
        if (showingEndScreen) {
          showingEndScreen = false;
          renderPagedState();
          notifyPageChange(currentPage);
          return;
        }
        if (currentPage > 1) {
          currentPage--;
          renderPagedState();
          notifyPageChange(currentPage);
        }
      };

      window.__scrollReaderStep = function (delta) {
        if (isPaged) {
          if (delta > 0) window.goNextPage();
          else window.goPrevPage();
          return;
        }
        if (currentMode === "continuous_rtl") {
          window.scrollBy({ left: -delta, behavior: "smooth" });
        } else if (currentMode === "continuous_ltr") {
          window.scrollBy({ left: delta, behavior: "smooth" });
        } else {
          window.scrollBy({ top: delta, behavior: "smooth" });
        }
      };

      window.__applyReaderSettings = function (payload) {
        if (!payload || !payload.settings) return;
        currentSettings = payload.settings;
        if (payload.effectiveMode) {
          currentMode = payload.effectiveMode;
          document.body.dataset.mode = currentMode;
          if (currentMode === "webtoon" || currentMode === "continuous_vertical") {
            document.body.classList.remove("mode-webtoon", "mode-continuous_vertical");
            document.body.classList.add("mode-" + currentMode);
          }
        }
        if (payload.palette) {
          const r = document.documentElement.style;
          r.setProperty("--bg", payload.palette.bg);
          r.setProperty("--surface", payload.palette.surface);
          r.setProperty("--surface-elevated", payload.palette.surfaceElevated);
          r.setProperty("--text", payload.palette.text);
          r.setProperty("--muted", payload.palette.muted);
          r.setProperty("--border", payload.palette.border);
          r.setProperty("--accent", payload.palette.accent);
          r.setProperty("--accent-text", payload.palette.accentText);
          r.setProperty("--spinner-track", payload.palette.spinnerTrack);
        }
        document.documentElement.style.setProperty("--side-pad", (currentSettings.sidePadding || 0) + "%");
        document.body.classList.toggle("color-32bit", !!currentSettings.color32Bit);
        document.body.classList.toggle("color-saver", !currentSettings.color32Bit);
        document.body.dataset.colorDepth = currentSettings.color32Bit ? "32bit" : "saver";
        document.body.classList.toggle("crop-borders", !!currentSettings.cropBorders);
        applyAllCrops();
        syncWakeLock(!!currentSettings.keepScreenOn);
      };

      window.__reloadReaderPage = function (pageNumber) {
        const entry = slotEntries[pageNumber - 1];
        if (!entry) return;
        entry.forceReload();
      };

      // Build page slots
      pages.forEach(function (rawUrl, index) {
        const pageNum = index + 1;
        const url = String(rawUrl || "").replace("://tempsolo.mangalik.net/", "://leksolo.mangalik.net/");
        const slot = document.createElement("div");
        slot.className = "page-slot loading";
        slot.dataset.page = String(pageNum);

        const spinner = document.createElement("div");
        spinner.className = "spinner";
        const status = document.createElement("div");
        status.className = "page-status";
        status.textContent = "صفحة " + pageNum + " من " + pages.length;
        slot.appendChild(spinner);
        slot.appendChild(status);

        const img = document.createElement("img");
        img.className = "page-img";
        img.alt = "صفحة " + pageNum;
        img.decoding = "async";
        img.loading = (currentSettings.color32Bit ? index < 6 : index < 2) ? "eager" : "lazy";
        if (url.indexOf("mangatek.com") !== -1) {
          img.referrerPolicy = "no-referrer";
        }
        img.style.display = "none";

        let retries = 0;
        const entry = {
          pageNum,
          url,
          slot,
          img,
          loaded: false,
          started: false,
          startLoad: function () {},
          forceReload: function () {},
        };

        function loadImg(cacheBust, useProxy) {
          entry.started = true;
          const base =
            useProxy &&
            apiBase &&
            url.indexOf("/api/manga/image-proxy") === -1 &&
            url.indexOf("/api/manga/img-proxy") === -1
              ? apiBase + "/api/manga/image-proxy?url=" + encodeURIComponent(url)
              : url;
          img.src = cacheBust
            ? base + (base.indexOf("?") !== -1 ? "&" : "?") + "retry=" + cacheBust
            : base;
        }

        entry.startLoad = function () {
          loadImg("", false);
        };

        entry.forceReload = function () {
          retries = 0;
          entry.loaded = false;
          slot.classList.add("loading");
          if (!slot.contains(spinner)) slot.insertBefore(spinner, img);
          if (!slot.contains(status)) slot.insertBefore(status, img);
          spinner.style.display = "block";
          status.textContent = "جاري إعادة تحميل الصفحة " + pageNum + "...";
          img.style.display = "none";
          const oldBtn = slot.querySelector(".retry-btn");
          if (oldBtn) oldBtn.remove();
          loadImg("manual_" + Date.now(), true);
        };

        img.onload = function () {
          entry.loaded = true;
          slot.classList.remove("loading");
          if (spinner.parentNode) spinner.remove();
          if (status.parentNode) status.remove();
          img.style.display = "block";
          detectAndApplyCrop(entry);
        };

        img.onerror = function () {
          if (retries < 2) {
            retries++;
            setTimeout(function () {
              loadImg(retries + "_" + Date.now(), retries >= 1);
            }, 350 * retries);
            return;
          }
          spinner.style.display = "none";
          status.textContent = "تعذر تحميل الصفحة " + pageNum;
          let btn = slot.querySelector(".retry-btn");
          if (!btn) {
            btn = document.createElement("button");
            btn.className = "retry-btn";
            btn.textContent = "إعادة المحاولة";
            btn.onclick = function (ev) {
              ev.stopPropagation();
              entry.forceReload();
            };
            slot.appendChild(btn);
          }
        };

        slot.appendChild(img);
        container.appendChild(slot);
        slotEntries.push(entry);

        if (!isPaged || Math.abs(pageNum - currentPage) <= 2) {
          entry.startLoad();
        }
      });

      // Continuous page tracking via IntersectionObserver
      if (!isPaged && "IntersectionObserver" in window && slotEntries.length > 0) {
        const visibleMap = new Map();
        const observer = new IntersectionObserver(
          function (entries) {
            entries.forEach(function (ev) {
              const p = Number(ev.target.dataset.page || 1);
              if (ev.isIntersecting) {
                visibleMap.set(p, ev.intersectionRatio);
              } else {
                visibleMap.delete(p);
              }
            });
            if (visibleMap.size > 0) {
              let bestPage = currentPage;
              let bestRatio = -1;
              visibleMap.forEach(function (ratio, p) {
                if (ratio > bestRatio) {
                  bestRatio = ratio;
                  bestPage = p;
                }
              });
              if (bestPage !== currentPage) {
                notifyPageChange(bestPage);
              }
            }
          },
          { threshold: [0.15, 0.4, 0.7] }
        );
        slotEntries.forEach(function (entry) {
          observer.observe(entry.slot);
        });
      }

      // Unified Touch Gesture Handler: Center Tap (Fullscreen Chrome), Swipe (Paged), Long-Press (Page Info)
      let touchStartX = 0;
      let touchStartY = 0;
      let touchStartTime = 0;
      let moved = false;
      let longPressFired = false;
      let longPressTimer = null;
      let activeEntry = null;

      function findEntryFromTarget(target) {
        const slotEl = target && target.closest ? target.closest(".page-slot") : null;
        if (!slotEl) return null;
        const p = Number(slotEl.dataset.page || 0);
        return slotEntries[p - 1] || null;
      }

      function clearLongPress() {
        if (longPressTimer) {
          clearTimeout(longPressTimer);
          longPressTimer = null;
        }
      }

      document.addEventListener(
        "touchstart",
        function (ev) {
          if (!ev.touches || ev.touches.length !== 1) {
            clearLongPress();
            return;
          }
          const t = ev.touches[0];
          touchStartX = t.clientX;
          touchStartY = t.clientY;
          touchStartTime = Date.now();
          moved = false;
          longPressFired = false;
          activeEntry = findEntryFromTarget(ev.target);

          clearLongPress();
          if (currentSettings.longPressInfo && activeEntry && !(ev.target && ev.target.closest && ev.target.closest("button"))) {
            const captured = activeEntry;
            longPressTimer = setTimeout(function () {
              if (!moved) {
                longPressFired = true;
                captured.slot.classList.add("lp-feedback");
                setTimeout(function () {
                  captured.slot.classList.remove("lp-feedback");
                }, 380);
                postNative({
                  type: "PAGE_LONG_PRESS",
                  page: captured.pageNum,
                  total: pages.length,
                  url: captured.url,
                  naturalWidth: captured.img.naturalWidth || 0,
                  naturalHeight: captured.img.naturalHeight || 0,
                  loaded: !!captured.loaded,
                });
              }
            }, 520);
          }
        },
        { passive: true }
      );

      document.addEventListener(
        "touchmove",
        function (ev) {
          if (!ev.touches || ev.touches.length !== 1) return;
          const t = ev.touches[0];
          if (Math.abs(t.clientX - touchStartX) > 10 || Math.abs(t.clientY - touchStartY) > 10) {
            moved = true;
            clearLongPress();
          }
        },
        { passive: true }
      );

      document.addEventListener(
        "touchend",
        function (ev) {
          clearLongPress();
          if (longPressFired) return;
          if (ev.target && ev.target.closest && ev.target.closest("button")) return;
          const changed = ev.changedTouches && ev.changedTouches[0];
          if (!changed) return;
          const dx = changed.clientX - touchStartX;
          const dy = changed.clientY - touchStartY;
          const dt = Date.now() - touchStartTime;

          // Swipe navigation in paged modes
          if (isPaged && Math.max(Math.abs(dx), Math.abs(dy)) > 46) {
            if (currentMode === "rtl") {
              if (dx > 46) window.goNextPage();
              else if (dx < -46) window.goPrevPage();
            } else if (currentMode === "ltr") {
              if (dx < -46) window.goNextPage();
              else if (dx > 46) window.goPrevPage();
            } else if (currentMode === "vertical") {
              if (dy < -46) window.goNextPage();
              else if (dy > 46) window.goPrevPage();
            }
            return;
          }

          // Clean tap (< 260ms, minimal movement)
          if (!moved && dt < 280) {
            const vw = window.innerWidth || 390;
            const vh = window.innerHeight || 844;
            const rx = changed.clientX / vw;
            const ry = changed.clientY / vh;

            if (isPaged) {
              if (currentMode === "rtl") {
                if (rx < 0.30) { window.goNextPage(); return; }
                if (rx > 0.70) { window.goPrevPage(); return; }
              } else if (currentMode === "ltr") {
                if (rx > 0.70) { window.goNextPage(); return; }
                if (rx < 0.30) { window.goPrevPage(); return; }
              } else if (currentMode === "vertical") {
                if (ry > 0.72) { window.goNextPage(); return; }
                if (ry < 0.28) { window.goPrevPage(); return; }
              }
            }
            postNative({ type: "TOGGLE_CHROME" });
          }
        },
        { passive: true }
      );

      document.addEventListener("touchcancel", clearLongPress, { passive: true });

      // Initial state setup
      if (isPaged) {
        renderPagedState();
      } else if (initCfg.startPage > 1 && slotEntries[initCfg.startPage - 1]) {
        setTimeout(function () {
          try {
            slotEntries[initCfg.startPage - 1].slot.scrollIntoView({ behavior: "auto", block: "start" });
          } catch (e) {}
        }, 120);
      }
      notifyPageChange(currentPage);
      syncWakeLock(!!currentSettings.keepScreenOn);
    })();
  </script>
</body>
</html>`;
}

export function buildThemedTextReaderHtml({
  contentHtml = "",
  chapterLabel = "الفصل",
  nextChapterLabel = null,
  settings = DEFAULT_GLOBAL_READER_SETTINGS,
}) {
  const safeSettings = sanitizeGlobalReaderSettings(settings);
  const palette = getReaderThemePalette(safeSettings.background);
  const safeChapterLabel = escapeHtml(chapterLabel || "الفصل");
  const safeNextLabel = nextChapterLabel ? escapeHtml(nextChapterLabel) : "";

  return `<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=yes" />
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; -webkit-tap-highlight-color: transparent; }
    html, body {
      width: 100%;
      min-height: 100%;
      background-color: ${palette.bg};
      color: ${palette.text};
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Cairo", sans-serif;
      overflow-x: hidden;
      overflow-y: auto;
      -webkit-overflow-scrolling: touch;
      padding: 24px max(18px, ${safeSettings.sidePadding}%) 84px max(18px, ${safeSettings.sidePadding}%);
    }
    .novel-header {
      text-align: center;
      padding: 16px 0 20px 0;
      border-bottom: 1px solid ${palette.border};
      margin-bottom: 24px;
    }
    .novel-title {
      font-size: 20px;
      font-weight: 700;
      color: ${palette.accent};
      line-height: 1.4;
    }
    .novel-body {
      font-size: 18px;
      line-height: 2.0;
      text-align: right;
      word-wrap: break-word;
    }
    .novel-body p { margin-bottom: 18px; }
    .novel-body img { max-width: 100%; height: auto; border-radius: 10px; margin: 12px 0; }
    .end-footer {
      margin-top: 36px;
      padding: 28px 18px;
      border-top: 1px solid ${palette.border};
      text-align: center;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 14px;
    }
    .end-badge { color: ${palette.accent}; font-size: 15px; font-weight: 700; }
    .next-btn {
      padding: 12px 22px;
      border-radius: 14px;
      border: 0;
      background: ${palette.accent};
      color: ${palette.accentText};
      font-weight: 800;
      font-size: 14px;
    }
  </style>
</head>
<body>
  <div class="novel-header">
    <div class="novel-title">${safeChapterLabel}</div>
  </div>
  <div class="novel-body">${contentHtml}</div>
  <div class="end-footer">
    <div class="end-badge">✓ نهاية ${safeChapterLabel}</div>
    ${
      safeNextLabel
        ? `<button class="next-btn" onclick="window.ReactNativeWebView && window.ReactNativeWebView.postMessage(JSON.stringify({type:'NEXT_CHAPTER'}))">الانتقال إلى الفصل التالي (${safeNextLabel}) ←</button>`
        : ""
    }
  </div>
  <script>
    document.addEventListener("click", function (ev) {
      if (ev.target && ev.target.closest && ev.target.closest("button, a")) return;
      if (window.ReactNativeWebView && window.ReactNativeWebView.postMessage) {
        window.ReactNativeWebView.postMessage(JSON.stringify({ type: "TOGGLE_CHROME" }));
      }
    });
  </script>
</body>
</html>`;
}

import { useState, useEffect, useRef, useCallback, useMemo } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Loader2,
  AlertTriangle, RefreshCw, X, Maximize2, Minimize2,
  Settings, Subtitles, MonitorPlay, Tv2, Download,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";
import EpComments from "@/components/EpComments";

/* ══════════════════════════════════ ANILIST ══════════════════ */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres
    streamingEpisodes { title episode }
  }
}`;

/* ══════════════════════════════════ TYPES ════════════════════ */
type Quality = "1080p FHD" | "720p HD" | "360p SD";
interface SkipTimes {
  op?: { start: number; end: number };
  ed?: { start: number; end: number };
}
interface StreamData {
  servers: Record<Quality, string[]>;
  total: number;
  animeId?: number;
}
interface SubCue { start: number; end: number; text: string }
interface SubSettings {
  fontSize: number;                        // 13 | 16 | 20 | 24
  color: string;                           // css color
  bgOpacity: number;                       // 0 | 0.45 | 0.82
  bold: boolean;
  position: "top" | "center" | "bottom";  // subtitle placement
}
const DEFAULT_SUB_SETTINGS: SubSettings = { fontSize: 20, color: "#ffffff", bgOpacity: 0, bold: true, position: "bottom" };

/* ══════════════════════════════════ HELPERS ══════════════════ */
function saveHistory(id: number, title: string, cover: string, ep: number, totalEps = 0) {
  if (localStorage.getItem("pref-automark") === "false") return;
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify(
      [{ id, title, cover, ep, date: new Date().toISOString(), totalEps },
       ...h.filter(x => !(x.id === id && x.ep === ep))].slice(0, 60)
    ));
  } catch {}
}

const QUALITY_LABELS: Quality[] = ["1080p FHD", "720p HD", "360p SD"];

/* ── FetchedSrc: shape returned by /api/anime/fetch-source ── */
interface FetchedSrc {
  url: string; directUrl?: string; qualityRank?: number;
  name?: string; site?: string; isEmbed?: boolean;
  subtitleUrl?: string;
}

/* ── All known scrapers — shown immediately in picker ── */
const SCRAPER_DEFS: { site: string; name: string; desc: string; tag: string }[] = [
  // ── عربي مدبلج / مترجم ────────────────────────────────────────────
  { site: "shahiid",      name: "شاهيد أنمي",   desc: "عربي مدبلج / مترجم",      tag: "SH" },
  { site: "animelek",     name: "أنمي ليك",     desc: "عربي مدبلج / مترجم",      tag: "AL" },
  { site: "animedar",     name: "أنمي دار",     desc: "عربي مترجم",              tag: "AD" },
  { site: "okanime",      name: "أوك أنمي",     desc: "عربي مترجم",              tag: "OK" },
  { site: "ristoanime",   name: "ريستو أنمي",    desc: "عربي مترجم",              tag: "RS" },
  { site: "animeify",     name: "أنمي فاي",     desc: "عربي · ميغا",             tag: "MG" },
  // ── ياباني مترجم (AniList ID مطلوب) ──────────────────────────────
  { site: "kawaii",       name: "كواي أنمي",    desc: "1080p · مباشر",            tag: "KW" },
  { site: "anikoto",      name: "AniKoto",       desc: "ياباني مترجم · 1080p",    tag: "AK" },
  { site: "miruro",       name: "MiruroAPI",      desc: "AnimePahe · HLS مباشر",  tag: "MR" },
  { site: "animewitcher", name: "AnimeWitcher",   desc: "PD/ST · مباشر",           tag: "AW" },
  // ── ياباني مترجم (بدون ID) ────────────────────────────────────────
  { site: "anineko",      name: "AniNeko",        desc: "ياباني مترجم · HLS",      tag: "AN" },
  { site: "mitanime",     name: "ميتا أنمي",    desc: "ياباني مترجم",             tag: "MT" },
];

type SlotStatus = "idle" | "fetching" | "ready" | "failed";

function getSrcQualityTier(src: FetchedSrc): Quality {
  const rank = src.qualityRank ?? 0;
  /* Use name only when rank explicitly tells us */
  const name = (src.name || "").toLowerCase();
  if (name.includes("1080") || name.includes("fhd")) return "1080p FHD";
  if (name.includes("720")  || name.includes("hd"))  return "720p HD";
  if (name.includes("360")  || name.includes("sd"))  return "360p SD";
  /* Fall back to rank — conservative thresholds */
  if (rank >= 13) return "1080p FHD";
  if (rank >= 9)  return "720p HD";
  return "360p SD";
}

function buildMerged(srcs: FetchedSrc[]): Record<Quality, string[]> {
  const merged: Record<Quality, string[]> = { "1080p FHD": [], "720p HD": [], "360p SD": [] };
  srcs.forEach(s => {
    const url = s.directUrl || s.url;
    if (!url) return;
    const tier = getSrcQualityTier(s);
    if (!merged[tier].includes(url)) merged[tier].push(url);
  });
  return merged;
}
const QUALITY_SHORT: Record<Quality, string> = {
  "1080p FHD": "1080",
  "720p HD": "720",
  "360p SD": "360",
};
const QUALITY_AR: Record<Quality, string> = {
  "1080p FHD": "دقة عالية جداً",
  "720p HD": "دقة عالية",
  "360p SD": "دقة متوسطة",
};

/* ── Filter: sources to show in the picker ── */
function shouldShowSrc(src: FetchedSrc): boolean {
  const url = (src.directUrl || src.url || "").toLowerCase();
  // Remove mp4upload entirely (HEVC codec — audio plays but video fails on Linux Chrome)
  if (url.includes("mp4upload")) return false;
  // Hide embed sources (iframes) — will be shown as fallback when no direct sources
  if (src.isEmbed) return false;
  return true;
}

/* ── Embed fallback: mega/vidmoly shown only when no direct sources exist ── */
function isEmbedFallback(src: FetchedSrc): boolean {
  const url = (src.directUrl || src.url || "").toLowerCase();
  if (!src.isEmbed) return false;
  return url.includes("mega.nz") || url.includes("mega.co.nz") || url.includes("vidmoly");
}

/* ── Normalise CDN hostname for deduplication ── */
function normCdnHost(url: string): string {
  if (!url) return "";
  try {
    // For our proxy URLs (/api/anime/hls-proxy, /api/anime/video-proxy, etc.)
    // extract the INNER CDN hostname so proxy sources aren't all collapsed to "x.com"
    if (url.startsWith("/api/anime/")) {
      const inner = new URL("https://x.com" + url).searchParams.get("url") || "";
      if (inner) {
        const h = new URL(inner).hostname.replace(/^www\./, "");
        return h.replace(/^[a-z]\d*\./, "");
      }
      // Unknown proxy path — use the path as unique key
      return url.split("?")[0];
    }
    const base = url.startsWith("/") ? "https://x.com" + url : url;
    const host = new URL(base).hostname.replace(/^www\./, "");
    // collapse CDN subdomains like a1.mp4upload.com → mp4upload.com
    return host.replace(/^[a-z]\d*\./, "");
  } catch { return url.slice(0, 40); }
}

/* ── Detect embed-type URLs (must render in sandboxed iframe, not native video) ── */
function isIframeUrl(url: string): boolean {
  if (!url || url.startsWith("/")) return false;        // our proxy endpoints start with /
  if (url.includes("workers.dev")) return false;        // Anime-Phoenix CDN (direct video)
  if (url.includes("streamtape.com")) return false;     // direct MP4
  if (url.includes("sendvid.com")) return false;        // direct MP4
  if (url.match(/\.(m3u8|mp4|mkv|webm|ts)([?#]|$)/i)) return false; // video file
  return url.startsWith("https://");                    // external embed page
}

function getEmbedLabel(url: string): string {
  if (url.includes("mega.nz"))          return "ميغا";
  if (url.includes("mega.co.nz"))       return "ميغا";
  if (url.includes("filemoon"))         return "فايل مون";
  if (url.includes("streamwish"))       return "ستريم ويش";
  if (url.includes("vidhide"))          return "فيد هايد";
  if (url.includes("share4max"))        return "شير ماكس";
  if (url.includes("streamlare"))       return "ستريم لير";
  if (url.includes("asnwish"))          return "فيديو";
  if (url.includes("vidmoly"))          return "فيدمولي";
  return "فيديو";
}

/* ── Server source detection ── */
interface ServerInfo { label: string; sublabel: string; isHls: boolean; isDirect?: boolean; }
function getServerInfo(url: string, idx: number): ServerInfo {
  // Embed-type URLs → shown in sandboxed iframe
  if (isIframeUrl(url)) {
    return { label: getEmbedLabel(url), sublabel: "داخل التطبيق", isHls: false };
  }
  // All sources sent from the API are native-playable (no iframes)
  // Anime-Phoenix CDN (workers.dev — direct MKV/MP4)
  if (url.includes("workers.dev")) {
    return { label: "فينكس", sublabel: "عربي · مباشر", isHls: true, isDirect: true };
  }
  // hls-proxy wrapped stream (extracted from Arabic/Japanese sites)
  if (url.includes("hls-proxy")) {
    if (url.includes("as-cdn21") || url.includes("rubystm")) {
      return { label: "تون ستريم", sublabel: "ياباني · HLS", isHls: true };
    }
    if (url.includes("streamwish") || url.includes("filemoon") || url.includes("wishembed")) {
      return { label: "ستريم ويش", sublabel: "عربي · HLS", isHls: true };
    }
    if (url.includes("shahiid") || url.includes("share4max")) {
      return { label: "شاهيد أنمي", sublabel: "عربي · HLS", isHls: true };
    }
    if (url.includes("animelek") || url.includes("animedar")) {
      return { label: "أنمي ليك", sublabel: "عربي · HLS", isHls: true };
    }
    return { label: `مصدر ${idx + 1}`, sublabel: "عربي · HLS", isHls: true };
  }
  // Direct MP4/MKV/WebM via video-proxy or direct CDN
  if (url.includes("streamtape.com")) {
    return { label: "ستريم تيب", sublabel: "عربي · مباشر", isHls: true, isDirect: true };
  }
  if (url.includes("sendvid.com") || (url.includes("/video-proxy?") && url.includes("sendvid"))) {
    return { label: "سيندفيد", sublabel: "عربي · مباشر", isHls: true, isDirect: true };
  }
  if (url.includes("mp4upload.com")) {
    return { label: "MP4Upload", sublabel: "مباشر", isHls: true, isDirect: true };
  }
  if (url.includes("/video-proxy?")) {
    return { label: "مباشر", sublabel: "عربي · مباشر", isHls: true, isDirect: true };
  }
  if (url.match(/\.(mp4|mkv|webm)([?#]|$)/i)) {
    return { label: "مصدر مباشر", sublabel: "تشغيل مباشر", isHls: true, isDirect: true };
  }
  // Bare m3u8
  if (url.match(/\.m3u8([?#]|$)/i)) {
    return { label: "بث مباشر", sublabel: "جودة عالية", isHls: true };
  }
  // AnimeX
  if (url.includes("animex-player") || url.includes("animex-source") || url.includes("#animex")) {
    return { label: "أنمي إكس", sublabel: "عربي · HLS مباشر", isHls: true };
  }
  // Mega.nz embed (animeify — no ads, stays in app)
  if (url.includes("mega.nz/embed")) {
    return { label: "ميغا", sublabel: "عربي · مباشر", isHls: false, isDirect: false };
  }
  // Fallback — all sources are native
  return { label: `مصدر ${idx + 1}`, sublabel: "عربي · تشغيل مباشر", isHls: true, isDirect: true };
}

function fmtTime(s: number) {
  if (!isFinite(s) || s < 0) return "0:00";
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = Math.floor(s % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(sec).padStart(2, "0")}`;
  return `${m}:${String(sec).padStart(2, "0")}`;
}

/* ══════════════════════════════════ SRT PARSER ══════════════ */
function parseSrt(srt: string): SubCue[] {
  const cues: SubCue[] = [];
  const blocks = srt.replace(/\r\n/g, "\n").replace(/\r/g, "\n").split(/\n{2,}/);
  const toSec = (ts: string) => {
    const m = ts.match(/(\d{2}):(\d{2}):(\d{2})[,.](\d{3})/);
    if (!m) return 0;
    return parseInt(m[1]) * 3600 + parseInt(m[2]) * 60 + parseInt(m[3]) + parseInt(m[4]) / 1000;
  };
  for (const block of blocks) {
    const lines = block.trim().split("\n");
    const timeLine = lines.find(l => l.includes("-->"));
    if (!timeLine) continue;
    const [startStr, endStr] = timeLine.split("-->").map(s => s.trim());
    const textLines = lines.filter(l => l !== timeLine && !l.match(/^\d+$/)).join(" ").replace(/<[^>]+>/g, "").trim();
    if (textLines) cues.push({ start: toSec(startStr), end: toSec(endStr), text: textLines });
  }
  return cues;
}

/* ══════════════════════════════════ LOADING SCREEN ══════════ */
function LoadingScreen({ cover, title, ep }: { cover: string; title: string; ep: number }) {
  return (
    <div className="fixed inset-0 z-50 overflow-hidden bg-[#07070d]" dir="rtl">
      {/* Full-screen blurred backdrop */}
      {cover && (
        <div className="absolute inset-0">
          <img src={cover} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.18] saturate-150" />
          <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/80 via-[#07070d]/40 to-[#07070d]/90" />
          <div className="absolute inset-0 bg-[#07070d]/25" />
        </div>
      )}

      {/* Centered content */}
      <div className="relative h-full flex flex-col items-center justify-center gap-6 px-6">
        {/* Prayer — ABOVE poster */}
        <motion.p
          initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.05, duration: 0.4 }}
          className="text-white/85 text-[14px] font-black font-['Cairo'] tracking-wide text-center">
          اللهم صلِّ وسلِّم على نبينا محمد ﷺ
        </motion.p>

        {/* Large cover image */}
        {cover ? (
          <motion.div
            initial={{ opacity: 0, scale: 0.82, y: 28 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            transition={{ duration: 0.6, ease: [0.22, 1, 0.36, 1] }}
            className="relative flex-shrink-0">
            <img
              src={cover}
              alt={title}
              className="w-44 h-[248px] rounded-2xl object-cover"
              style={{ boxShadow: "0 24px 80px rgba(0,0,0,0.85), 0 0 0 1px rgba(255,255,255,0.07)" }}
            />
            <div className="absolute inset-0 rounded-2xl bg-gradient-to-br from-white/[0.08] via-transparent to-transparent pointer-events-none" />
            <div className="absolute bottom-0 left-0 right-0 h-20 rounded-b-2xl bg-gradient-to-t from-black/60 to-transparent pointer-events-none" />
          </motion.div>
        ) : (
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }}
            className="w-44 h-[248px] rounded-2xl bg-white/[0.04] flex items-center justify-center"
            style={{ boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
            <div className="w-14 h-14 rounded-full bg-violet-500/15 flex items-center justify-center">
              <div className="w-6 h-6 rounded-full bg-violet-500/35" />
            </div>
          </motion.div>
        )}

        {/* Title + episode badge */}
        <motion.div
          initial={{ opacity: 0, y: 14 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.2, duration: 0.45 }}
          className="text-center">
          {title && (
            <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-2"
              style={{ textShadow: "0 2px 12px rgba(0,0,0,0.7)" }}>
              {title}
            </h2>
          )}
          <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-[12px] font-bold font-['Cairo']"
            style={{ background: "rgba(124,58,237,0.22)", border: "1px solid rgba(139,92,246,0.30)", color: "rgba(196,181,253,0.9)" }}>
            الحلقة {ep}
          </span>
        </motion.div>

        {/* Spinning ring loader */}
        <motion.div
          initial={{ opacity: 0 }} animate={{ opacity: 1 }}
          transition={{ delay: 0.32 }}
          className="flex flex-col items-center gap-3">
          <div className="relative w-9 h-9">
            <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
            <motion.div
              className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
              animate={{ rotate: 360 }}
              transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }}
            />
          </div>
          <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.</p>
        </motion.div>
      </div>
    </div>
  );
}

/* ══════════════════════════════════ NO SOURCES ══════════════ */
function NoSources({ onRefresh, onBack }: { onRefresh: () => void; onBack: () => void }) {
  return (
    <div className="fixed inset-0 z-50 bg-[#09090f] flex flex-col items-center justify-center gap-5" dir="rtl">
      <div className="w-14 h-14 rounded-2xl bg-white/4 border border-white/7 flex items-center justify-center">
        <AlertTriangle className="w-6 h-6 text-white/20" />
      </div>
      <div className="text-center">
        <p className="text-white/55 text-[14px] font-black font-['Cairo']">لا توجد مصادر</p>
        <p className="text-white/25 text-[12px] mt-1 font-['Cairo']">الحلقة غير متوفرة حالياً</p>
      </div>
      <div className="flex gap-3">
        <button onClick={onBack}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/5 border border-white/9 text-white/55 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
          <ChevronRight className="w-4 h-4" /> رجوع
        </button>
        <button onClick={onRefresh}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
          <RefreshCw className="w-4 h-4" /> إعادة المحاولة
        </button>
      </div>
    </div>
  );
}

/* ══════════════════════════════════ LOADING MODAL ═══════════ */
function WatchLoadingModal({ cover, title, ep, epTitle, onClose }: { cover?: string; title?: string; ep?: number; epTitle?: string; onClose?: () => void }) {
  return (
    <motion.div
      key="watch-loading-modal"
      className="fixed inset-0 z-[999] overflow-hidden"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      transition={{ duration: 0.3, ease: "easeOut" }}
    >
      {/* Full-screen blurred cover background */}
      <div className="absolute inset-0">
        {cover ? (
          <motion.img
            src={cover}
            alt=""
            className="w-full h-full object-cover"
            style={{ filter: "blur(48px) brightness(0.22) saturate(1.8)" }}
            initial={{ scale: 1.08, opacity: 0 }}
            animate={{ scale: 1, opacity: 1 }}
            transition={{ duration: 0.6, ease: [0.25, 0.46, 0.45, 0.94] }}
          />
        ) : (
          <div className="absolute inset-0"
            style={{ background: "radial-gradient(ellipse at 50% 30%, rgba(88,28,135,0.35) 0%, transparent 70%)" }} />
        )}
        <div className="absolute inset-0" style={{ background: "rgba(5,5,14,0.72)" }} />
      </div>

      {/* Centered content */}
      <div className="relative h-full flex flex-col items-center justify-center gap-0">
        {/* Cover card with play icon */}
        <motion.div
          className="relative mb-7"
          initial={{ opacity: 0, y: 36, scale: 0.88 }}
          animate={{ opacity: 1, y: 0, scale: 1 }}
          transition={{ duration: 0.55, ease: [0.22, 1, 0.36, 1], delay: 0.05 }}
        >
          {/* Glow ring */}
          <motion.div
            className="absolute -inset-3 rounded-[28px] pointer-events-none"
            style={{ background: "radial-gradient(ellipse, rgba(139,92,246,0.22) 0%, transparent 70%)" }}
            animate={{ opacity: [0.5, 1, 0.5] }}
            transition={{ duration: 2.4, repeat: Infinity, ease: "easeInOut" }}
          />
          {cover ? (
            <img
              src={cover}
              alt={title || "أنمي"}
              className="w-44 h-[248px] rounded-2xl object-cover object-top"
              style={{ boxShadow: "0 32px 80px rgba(0,0,0,0.92), 0 0 0 1px rgba(255,255,255,0.09)" }}
            />
          ) : (
            <motion.div
              className="w-44 h-[248px] rounded-2xl overflow-hidden relative flex items-center justify-center"
              style={{ boxShadow: "0 24px 60px rgba(0,0,0,0.90), 0 0 0 1px rgba(255,255,255,0.09)", background: "rgba(30,10,60,0.95)" }}>
              <motion.div
                className="absolute inset-0 opacity-40"
                style={{ background: "radial-gradient(ellipse at 50% 30%, rgba(139,92,246,0.55) 0%, transparent 65%)" }}
                animate={{ opacity: [0.3, 0.55, 0.3] }}
                transition={{ duration: 3, repeat: Infinity, ease: "easeInOut" }}
              />
              <div className="relative z-10 flex flex-col items-center gap-3">
                <div className="w-12 h-12 rounded-2xl flex items-center justify-center"
                  style={{ background: "rgba(139,92,246,0.20)", border: "1px solid rgba(139,92,246,0.35)" }}>
                  <Play className="w-6 h-6 text-violet-300 fill-violet-300 ml-0.5" />
                </div>
              </div>
            </motion.div>
          )}
          {/* Play button overlay */}
          <motion.div
            className="absolute inset-0 flex items-center justify-center"
            initial={{ opacity: 0, scale: 0.6 }}
            animate={{ opacity: 1, scale: 1 }}
            transition={{ delay: 0.28, duration: 0.38, ease: [0.22, 1, 0.36, 1] }}
          >
            <motion.div
              className="w-[60px] h-[60px] rounded-full flex items-center justify-center"
              style={{
                background: "rgba(109,40,217,0.82)",
                backdropFilter: "blur(12px)",
                border: "2px solid rgba(167,139,250,0.40)",
                boxShadow: "0 0 40px rgba(109,40,217,0.55), 0 8px 24px rgba(0,0,0,0.60)",
              }}
              animate={{ scale: [1, 1.08, 1] }}
              transition={{ duration: 1.8, repeat: Infinity, ease: "easeInOut" }}
            >
              <Play className="w-7 h-7 text-white fill-white ml-1" />
            </motion.div>
          </motion.div>
          {/* Bottom fade on cover */}
          <div className="absolute bottom-0 left-0 right-0 h-16 rounded-b-2xl pointer-events-none"
            style={{ background: "linear-gradient(0deg, rgba(0,0,0,0.55) 0%, transparent 100%)" }} />
        </motion.div>

        {/* Title + episode */}
        <motion.div
          className="text-center px-8"
          initial={{ opacity: 0, y: 14 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.18, duration: 0.42 }}
        >
          {title && (
            <p className="text-white text-[17px] font-black font-['Cairo'] leading-tight mb-1.5 drop-shadow-xl">
              {title}
            </p>
          )}
          {ep && (
            <p className="text-white/35 text-[13px] font-['Cairo'] tracking-wide">الحلقة {ep}{epTitle ? ` · ${epTitle}` : ""}</p>
          )}
        </motion.div>

        {/* Spinner + loading text — same as AnimationWatch */}
        <motion.div
          className="flex flex-col items-center gap-3"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.30 }}
        >
          <p className="text-white/85 text-[14px] font-black font-['Cairo'] tracking-wide">اللهم صلِّ وسلِّم على نبينا محمد ﷺ</p>
          <div className="relative w-9 h-9">
            <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
            <motion.div
              className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
              animate={{ rotate: 360 }}
              transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }}
            />
          </div>
          <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.</p>
        </motion.div>
      </div>

      {/* Close button */}
      {onClose && (
        <motion.button
          onClick={onClose}
          className="absolute top-4 right-4 w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-transform z-20"
          style={{ background: "rgba(0,0,0,0.50)", border: "1px solid rgba(255,255,255,0.13)", backdropFilter: "blur(12px)" }}
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.5 }}
        >
          <X className="w-4 h-4 text-white/55" />
        </motion.button>
      )}
    </motion.div>
  );
}

/* ── Helper: is a directUrl downloadable (non-HLS MP4)? ── */
function getDownloadUrl(src: FetchedSrc): string | null {
  const url = src.directUrl || src.url || "";
  if (!url) return null;
  if (url.includes(".m3u8") || url.includes("hls-proxy")) return null;
  if (url.includes("workers.dev") || url.match(/\.(mp4|mkv|webm)([?#]|$)/i)) {
    return `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(url)}&dl=1`;
  }
  if (url.includes("video-proxy?")) return url.replace("video-proxy?", "video-proxy?dl=1&");
  return null;
}

/* ══════════════════════════════════ SOURCE DISPLAY HELPERS ══ */
function getCdnDisplayName(url: string): string {
  if (!url) return "مصدر";
  const u = url.toLowerCase();
  if (u.includes("mega.nz") || u.includes("mega.co.nz")) return "Mega NZ";
  if (u.includes("workers.dev")) return "Phoenix CDN";
  if (u.includes("filemoon")) return "FileMoon";
  if (u.includes("streamwish") || u.includes("wishembed") || u.includes("hglink") || u.includes("hgcloud")) return "StreamWish";
  if (u.includes("vidhide")) return "VidHide";
  if (u.includes("streamtape")) return "StreamTape";
  if (u.includes("sendvid")) return "SendVid";
  if (u.includes("mp4upload")) return "MP4Upload";
  if (u.includes("vidmoly")) return "VidMoly";
  if (u.includes("as-cdn21") || u.includes("rubystm")) return "AS-CDN";
  if (u.includes("dood") || u.includes("ds2play")) return "DoodStream";
  if (u.includes("hls-proxy")) return "HLS بث";
  if (u.includes("video-proxy")) return "مباشر MP4";
  if (u.match(/\.(mp4|mkv|webm)([?#]|$)/i)) return "مباشر";
  if (u.match(/\.m3u8([?#]|$)/i)) return "HLS";
  return "مصدر";
}

const SITE_SHORT: Record<string, string> = {
  animephoenix: "فينكس", shahiid: "شاهيد", animelek: "أنمي ليك",
  animedar: "أنمي دار", okanime: "أوك أنمي", ristoanime: "ريستو",
  animetime: "أنمي تايم", toonstream: "تون ستريم", mitanime: "ميتا أنمي", animeify: "أنمي فاي",
};

const QUALITY_STYLE: Record<Quality, { dot: string; badge: string; border: string; text: string; icon: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)", icon: "rgba(251,191,36,0.72)" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)", border: "rgba(52,211,153,0.24)", text: "rgba(110,231,183,0.92)", icon: "rgba(52,211,153,0.68)" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)", border: "rgba(148,163,184,0.16)", text: "rgba(148,163,184,0.70)", icon: "rgba(148,163,184,0.55)" },
};
const Q_LABEL: Record<Quality, string> = {
  "1080p FHD": "جودة عالية جداً · FHD 1080",
  "720p HD":   "جودة عالية · HD 720",
  "360p SD":   "جودة متوسطة · SD 360",
};
const Q_SHORT: Record<Quality, string> = { "1080p FHD": "FHD", "720p HD": "HD", "360p SD": "SD" };

/* ══════════════════════════════════ SCRAPER PICKER ══════════ */
const QUALITY_TIER_RANK: Record<Quality, number> = { "1080p FHD": 3, "720p HD": 2, "360p SD": 1 };

function SourceRow({ src, idx, onPlaySrc }: { src: FetchedSrc; idx: number; onPlaySrc: (s: FetchedSrc) => void }) {
  const url     = src.directUrl || src.url;
  const cdn     = getCdnDisplayName(url);
  const site    = SITE_SHORT[src.site || ""] || src.site || "";
  const isEmbed = !!src.isEmbed;
  const tag     = SCRAPER_DEFS.find(d => d.site === src.site)?.tag || "??";
  const q       = getSrcQualityTier(src);
  const qs      = QUALITY_STYLE[q];
  return (
    <motion.div
      initial={{ opacity: 0, y: 6 }} animate={{ opacity: 1, y: 0 }}
      transition={{ delay: Math.min(idx * 0.04, 0.28), duration: 0.18 }}>
      <div
        className="flex items-center px-3.5 py-3 gap-3 active:bg-white/[0.03] transition-colors cursor-pointer"
        style={{ borderBottom: "1px solid rgba(255,255,255,0.04)" }}
        onClick={() => onPlaySrc(src)}>
        <div className="w-9 h-9 rounded-2xl flex items-center justify-center shrink-0"
          style={{ background: qs.badge, border: `1px solid ${qs.border}` }}>
          {isEmbed
            ? <Tv2 className="w-4 h-4" style={{ color: qs.icon }} />
            : <MonitorPlay className="w-4 h-4" style={{ color: qs.icon }} />}
        </div>
        <div className="flex-1 min-w-0">
          <p className="text-white/90 text-[13px] font-black font-['Cairo'] leading-tight">{cdn}</p>
          <div className="flex items-center gap-1.5 mt-0.5 flex-wrap">
            {site && <span className="text-white/36 text-[10px] font-['Cairo']">{site}</span>}
            {site && <span className="text-white/14 text-[9px]">·</span>}
            <span className="font-mono text-[7.5px] font-bold px-1 py-0.5 rounded"
              style={{ color: "rgba(255,255,255,0.22)", background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
              {tag}
            </span>
            {isEmbed && (
              <span className="font-mono text-[7.5px] font-bold px-1 py-0.5 rounded"
                style={{ background: "rgba(52,211,153,0.10)", color: "rgba(110,231,183,0.70)", border: "1px solid rgba(52,211,153,0.18)" }}>
                مدمج
              </span>
            )}
          </div>
        </div>
        <div className="flex items-center gap-1.5 shrink-0">
          <span className="font-mono text-[7.5px] font-bold px-1.5 py-0.5 rounded"
            style={{ background: qs.badge, border: `1px solid ${qs.border}`, color: qs.text }}>
            {Q_SHORT[q]}
          </span>
          {getDownloadUrl(src) && (
            <a href={getDownloadUrl(src)!} download target="_blank" rel="noreferrer"
              onClick={e => e.stopPropagation()}
              className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
              style={{ background: "rgba(52,211,153,0.10)", border: "1px solid rgba(52,211,153,0.28)" }}>
              <Download className="w-3.5 h-3.5 text-emerald-400/85" />
            </a>
          )}
          <div className="flex items-center gap-1 px-3 py-1.5 rounded-xl active:scale-95 transition-transform"
            style={{ background: "linear-gradient(135deg, rgba(124,58,237,0.90), rgba(91,33,182,0.96))", border: "1px solid rgba(167,139,250,0.25)", boxShadow: "0 2px 14px rgba(109,40,217,0.30)" }}>
            <Play className="w-3 h-3 text-white fill-white" />
            <span className="text-white text-[11px] font-black font-['Cairo']">تشغيل</span>
          </div>
        </div>
      </div>
    </motion.div>
  );
}

function ScraperPicker({
  cover, title, ep, totalEps, animeId,
  slotStatus, slotSources,
  onFetchSite, onPlaySrc,
  onBack, onNextEp, onPrevEp,
}: {
  cover: string; title: string; ep: number; totalEps: number; animeId: number;
  slotStatus: Record<string, SlotStatus>;
  slotSources: Record<string, FetchedSrc[]>;
  onFetchSite: (site: string) => void;
  onPlaySrc: (src: FetchedSrc) => void;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
}) {
  /* Check if all scrapers have finished (ready or failed) */
  const allDone = SCRAPER_DEFS.every(d =>
    slotStatus[d.site] === "ready" || slotStatus[d.site] === "failed"
  );

  /* Flatten + filter + deduplicate all fetched sources */
  const allFlat: FetchedSrc[] = [];
  const seenKeys = new Set<string>();
  for (const srcs of Object.values(slotSources)) {
    for (const s of srcs) {
      if (!shouldShowSrc(s)) continue;
      const key = s.directUrl || s.url;
      if (!key || seenKeys.has(key)) continue;
      seenKeys.add(key);
      allFlat.push(s);
    }
  }

  /* Sort: quality tier first (FHD > HD > SD), then by rank within tier */
  allFlat.sort((a, b) => {
    const tA = QUALITY_TIER_RANK[getSrcQualityTier(a)];
    const tB = QUALITY_TIER_RANK[getSrcQualityTier(b)];
    if (tA !== tB) return tB - tA;
    return (b.qualityRank ?? 0) - (a.qualityRank ?? 0);
  });

  /* Embed fallbacks (mega/vidmoly) — collected separately, shown only when no direct sources */
  const embedFallbacks: FetchedSrc[] = [];
  const seenEmbedKeys = new Set<string>();
  for (const srcs of Object.values(slotSources)) {
    for (const s of srcs) {
      if (!isEmbedFallback(s)) continue;
      const key = s.directUrl || s.url;
      if (!key || seenEmbedKeys.has(key)) continue;
      seenEmbedKeys.add(key);
      embedFallbacks.push(s);
    }
  }

  const displaySources = allFlat.length > 0 ? allFlat : embedFallbacks;

  /* Group by quality tier */
  const grouped: Record<Quality, FetchedSrc[]> = {
    "1080p FHD": displaySources.filter(s => getSrcQualityTier(s) === "1080p FHD"),
    "720p HD":   displaySources.filter(s => getSrcQualityTier(s) === "720p HD"),
    "360p SD":   displaySources.filter(s => getSrcQualityTier(s) === "360p SD"),
  };

  const hasSources = displaySources.length > 0;

  /* ── While scrapers are still running: show full-screen loading poster ── */
  if (!allDone) {
    return (
      <div className="fixed inset-0 z-50 overflow-hidden bg-[#07070d]" dir="rtl">
        {cover && (
          <div className="absolute inset-0">
            <img src={cover} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.15] saturate-150" />
            <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/85 via-[#07070d]/50 to-[#07070d]/92" />
          </div>
        )}
        <button onClick={onBack}
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
          style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)" }}>
          <ChevronRight className="w-5 h-5 text-white/60" />
        </button>

        <div className="relative h-full flex flex-col items-center justify-center gap-7 px-6">
          {cover ? (
            <motion.div
              initial={{ opacity: 0, scale: 0.85, y: 24 }}
              animate={{ opacity: 1, scale: 1, y: 0 }}
              transition={{ duration: 0.55, ease: [0.22, 1, 0.36, 1] }}
              className="relative shrink-0">
              <motion.div
                className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{ background: "radial-gradient(ellipse, rgba(139,92,246,0.28) 0%, transparent 68%)" }}
                animate={{ opacity: [0.5, 1, 0.5] }}
                transition={{ duration: 2.2, repeat: Infinity, ease: "easeInOut" }}
              />
              <img src={cover} alt={title}
                className="w-48 h-[272px] rounded-2xl object-cover"
                style={{ boxShadow: "0 28px 72px rgba(0,0,0,0.88), 0 0 0 1px rgba(255,255,255,0.08)" }}
              />
            </motion.div>
          ) : (
            <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}
              className="w-48 h-[272px] rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{ boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
              <div className="w-16 h-16 rounded-full bg-violet-500/15 flex items-center justify-center">
                <div className="w-7 h-7 rounded-full bg-violet-500/35" />
              </div>
            </motion.div>
          )}

          <motion.div initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.18, duration: 0.4 }} className="text-center">
            {title && (
              <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
                style={{ textShadow: "0 2px 14px rgba(0,0,0,0.75)" }}>{title}</h2>
            )}
            <p className="text-white/35 text-[13px] font-['Cairo'] tracking-wide">الحلقة {ep}</p>
          </motion.div>

          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.30 }}
            className="flex flex-col items-center gap-3">
            <div className="relative w-9 h-9">
              <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
              <motion.div className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
                animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
            </div>
          </motion.div>
        </div>
      </div>
    );
  }

  return (
    <div className="fixed inset-0 z-50 flex flex-col bg-[#06060c]" dir="rtl">

      {/* ── Nav bar ── */}
      <div className="flex items-center shrink-0"
        style={{
          borderBottom: "1px solid rgba(255,255,255,0.05)",
          paddingTop: "max(16px, env(safe-area-inset-top))",
          paddingBottom: 14,
          paddingRight: 4,
          paddingLeft: 14,
        }}>
        <button onClick={onBack}
          className="w-11 h-11 flex items-center justify-center active:scale-90 shrink-0 rounded-xl transition-all"
          style={{ background: "rgba(255,255,255,0.07)", border: "1px solid rgba(255,255,255,0.11)" }}>
          <ChevronRight className="w-5 h-5 text-white/70" />
        </button>

        {cover && (
          <img src={cover} alt="" className="w-7 h-9 rounded-lg object-cover opacity-55 shrink-0 ml-1" />
        )}

        <div className="flex-1 min-w-0 px-2">
          <p className="text-white font-black text-[15px] font-['Cairo'] truncate leading-tight"
            style={{ textShadow: "0 1px 8px rgba(0,0,0,0.6)" }}>
            {title}
          </p>
          <div className="flex items-center gap-1.5 mt-[5px] flex-wrap">
            <span className="px-2 py-[3px] rounded-full text-[10px] font-black font-['Cairo']"
              style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.32)", color: "rgba(196,181,253,0.92)" }}>
              الحلقة {ep}
            </span>
            {hasSources && (
              <span className="px-2 py-[3px] rounded-full text-[10px] font-black font-['Cairo']"
                style={{ background: "rgba(52,211,153,0.12)", border: "1px solid rgba(52,211,153,0.26)", color: "rgba(110,231,183,0.82)" }}>
                {displaySources.length} مصدر
              </span>
            )}
          </div>
        </div>

        <div className="flex items-center gap-2 shrink-0">
          <button onClick={onPrevEp} disabled={ep <= 1}
            className="flex items-center gap-1.5 px-4 py-2.5 rounded-xl transition-all active:scale-90 disabled:opacity-20"
            style={{ background: "rgba(255,255,255,0.09)", border: "1px solid rgba(255,255,255,0.13)" }}>
            <ChevronRight className="w-4 h-4 text-white/70" />
            <span className="text-white/65 text-[12px] font-bold font-['Cairo'] leading-none">السابقة</span>
          </button>
          <button onClick={onNextEp} disabled={ep >= totalEps}
            className="flex items-center gap-1.5 px-4 py-2.5 rounded-xl transition-all active:scale-90 disabled:opacity-20"
            style={{ background: "rgba(124,58,237,0.22)", border: "1px solid rgba(124,58,237,0.38)" }}>
            <span className="text-violet-300/90 text-[12px] font-bold font-['Cairo'] leading-none">التالية</span>
            <ChevronLeft className="w-4 h-4 text-violet-300/80" />
          </button>
        </div>
      </div>

      {/* ── Scrollable source list ── */}
      <div className="flex-1 overflow-y-auto"
        style={{ paddingBottom: "max(32px, env(safe-area-inset-bottom))" }}>

        {hasSources ? (
          <>
            {/* ── Server hint banner ── */}
            <div className="mx-4 mt-4 mb-1 px-3.5 py-2.5 rounded-xl flex items-center gap-2.5"
              style={{ background: "rgba(251,191,36,0.07)", border: "1px solid rgba(251,191,36,0.16)" }}>
              <span className="text-base shrink-0">⚠️</span>
              <p className="text-[11px] text-amber-200/60 font-['Cairo'] leading-snug">
                <span className="text-amber-300/80 font-black">السيرفر لا يعمل؟</span> جرّب سيرفراً آخر — بعض السيرفرات قد تكون بطيئة أو غير متاحة مؤقتاً.
              </p>
            </div>

            {(["1080p FHD", "720p HD", "360p SD"] as Quality[]).map(q => {
              const srcs = grouped[q];
              if (!srcs.length) return null;
              const qs = QUALITY_STYLE[q];
              let rowIdx = 0;
              for (const prevQ of ["1080p FHD", "720p HD", "360p SD"] as Quality[]) {
                if (prevQ === q) break;
                rowIdx += grouped[prevQ].length;
              }
              return (
                <div key={q}>
                  {/* Quality group header */}
                  <div className="flex items-center gap-2 px-4 pt-5 pb-2">
                    <div className="w-1.5 h-1.5 rounded-full shrink-0"
                      style={{ background: qs.dot, boxShadow: `0 0 6px ${qs.dot}88` }} />
                    <span className="text-[10px] font-bold font-['Cairo'] tracking-wider"
                      style={{ color: qs.text }}>
                      {Q_LABEL[q]}
                    </span>
                    <span className="mr-auto font-mono text-[9px] font-bold px-1.5 py-0.5 rounded"
                      style={{ background: qs.badge, border: `1px solid ${qs.border}`, color: qs.text }}>
                      {srcs.length}
                    </span>
                  </div>
                  {srcs.map((src, i) => (
                    <SourceRow key={`${src.site}-${rowIdx + i}`}
                      src={src} idx={rowIdx + i} onPlaySrc={onPlaySrc} />
                  ))}
                </div>
              );
            })}
          </>
        ) : (
          /* No sources found after all scrapers done */
          <motion.div
            initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.3 }}
            className="flex flex-col items-center justify-center py-14 gap-5 px-8">
            <div className="w-16 h-16 rounded-3xl flex items-center justify-center"
              style={{ background: "rgba(239,68,68,0.08)", border: "1px solid rgba(239,68,68,0.18)" }}>
              <AlertTriangle className="w-7 h-7 text-red-400/60" />
            </div>
            <div className="text-center flex flex-col gap-2">
              <p className="text-white/70 text-[16px] font-black font-['Cairo']">
                الحلقة {ep} غير متوفرة بعد
              </p>
              <p className="text-white/28 text-[12px] font-['Cairo'] leading-relaxed">
                المصادر العربية تتأخر عادةً ٢–٣ حلقات عن البث الأصلي.
              </p>
            </div>
            {ep > 1 && (
              <button onClick={onPrevEp}
                className="flex items-center gap-2 px-5 py-2.5 rounded-2xl text-[13px] font-black font-['Cairo'] active:scale-95 transition-transform"
                style={{ background: "rgba(124,58,237,0.18)", border: "1px solid rgba(124,58,237,0.30)", color: "rgba(196,181,253,0.90)" }}>
                <ChevronRight className="w-4 h-4" />
                جرّب الحلقة {ep - 1}
              </button>
            )}
          </motion.div>
        )}

        {/* ── Episode comments ── */}
        <EpComments commKey={`nova-ep-comments-${animeId}-${ep}`} />
      </div>
    </div>
  );
}


/* ══════════════════════════════════ MEGA EMBED PLAYER ══════ */
function MegaEmbedPlayer({
  src, ep, totalEps, title, onBack, onNextEp, onPrevEp,
}: {
  src: string; ep: number; totalEps: number; title: string;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
}) {
  const [isFs, setIsFs] = useState(false);
  const containerRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const fn = () => setIsFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  function toggleFs() {
    const el = containerRef.current;
    if (!el) return;
    !document.fullscreenElement
      ? el.requestFullscreen?.().catch(() => {})
      : document.exitFullscreen?.().catch(() => {});
  }

  return (
    <motion.div
      ref={containerRef}
      className="fixed inset-0 z-50 bg-black flex flex-col overflow-hidden"
      initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
      transition={{ duration: 0.2 }}
      dir="rtl"
    >
      {/* ── Top bar ── */}
      <div className="flex items-center gap-3 px-4 pt-safe pt-4 pb-2 shrink-0"
        style={{ background: "linear-gradient(180deg, rgba(0,0,0,0.82) 0%, transparent 100%)" }}>
        <button onClick={onBack}
          className="w-9 h-9 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-all shrink-0"
          style={{ border: "1px solid rgba(255,255,255,0.1)" }}>
          <ChevronRight className="w-5 h-5 text-white/80" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-white/85 text-[13px] font-bold font-['Cairo'] truncate">{title}</p>
          <div className="flex items-center gap-1.5 mt-0.5">
            <span className="text-white/35 text-[11px] font-['Cairo']">الحلقة {ep}</span>
            <span className="text-white/20 text-[10px]">·</span>
            <span className="text-emerald-400/70 text-[10px] font-bold font-['Cairo']">{getEmbedLabel(src)} · داخل التطبيق</span>
          </div>
        </div>
        <button onClick={toggleFs}
          className="w-9 h-9 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-all shrink-0"
          style={{ border: "1px solid rgba(255,255,255,0.1)" }}>
          {isFs ? <Minimize2 className="w-4 h-4 text-white/70" /> : <Maximize2 className="w-4 h-4 text-white/70" />}
        </button>
      </div>

      {/* ── Mega iframe (sandboxed — cannot open new tabs or navigate away) ── */}
      <div className="flex-1 relative min-h-0">
        <iframe
          key={src}
          src={src}
          className="absolute inset-0 w-full h-full border-0 bg-black"
          sandbox="allow-scripts allow-same-origin allow-forms allow-presentation"
          allow="fullscreen; autoplay"
          title={`${title} - الحلقة ${ep}`}
        />
      </div>

      {/* ── Bottom nav ── */}
      <div className="flex items-center justify-between px-5 py-3 shrink-0"
        style={{ background: "linear-gradient(0deg, rgba(0,0,0,0.82) 0%, transparent 100%)" }}>
        <button onClick={onPrevEp} disabled={ep <= 1}
          className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all"
          style={{ color: ep <= 1 ? "rgba(255,255,255,0.15)" : "rgba(255,255,255,0.5)" }}>
          <ChevronRight className="w-4 h-4" /> السابقة
        </button>
        <span className="text-white/25 text-[11px] font-['Cairo']">{ep} / {totalEps}</span>
        <button onClick={onNextEp} disabled={ep >= totalEps}
          className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all flex-row-reverse"
          style={{ color: ep >= totalEps ? "rgba(255,255,255,0.15)" : "rgba(255,255,255,0.5)" }}>
          <ChevronLeft className="w-4 h-4" /> التالية
        </button>
      </div>
    </motion.div>
  );
}


/* ══════════════════════════════════ EPISODE PLAYER ═════════ */
function EpisodePlayer({
  servers, quality, allServers,
  title, epTitle, cover, ep, totalEps, animeTitle, animeId,
  initialServer, downloadUrl, subtitleUrl, subtitleSite, skipTimes,
  onBack, onNextEp, onPrevEp, onChangeQuality, onTierExhausted,
}: {
  servers: string[]; quality: Quality; allServers: Record<Quality, string[]>;
  title: string; epTitle?: string; cover: string; ep: number; totalEps: number; animeTitle: string;
  animeId: number;
  initialServer?: number; downloadUrl?: string; subtitleUrl?: string; subtitleSite?: string; skipTimes?: SkipTimes;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
  onChangeQuality: (q: Quality) => void;
  onTierExhausted?: () => void;
}) {
  const [currentServer, setCurrentServer] = useState(initialServer ?? 0);
  const [showQuality,  setShowQuality]    = useState(false);
  const [realQuality,  setRealQuality]    = useState<string | null>(null);
  const [hlsTime,      setHlsTime]        = useState(0);
  const isFirstQualityMount = useRef(true);

  /* ── Watch progress: save/resume ── */
  const progressKey = `wp-${animeId}-${ep}`;
  const [resumeTime] = useState(() => {
    try { return parseFloat(localStorage.getItem(progressKey) || "0") || 0; } catch { return 0; }
  });
  const lastSaveTs   = useRef(0);
  const lastTimeRef  = useRef(0);

  /* Save helper — persists when time > 10s */
  const saveProgress = useCallback(() => {
    const t = lastTimeRef.current;
    if (t > 10) {
      try { localStorage.setItem(progressKey, String(Math.floor(t))); } catch {}
    }
  }, [progressKey]);

  /* Save on: unmount, tab hidden, page unload */
  useEffect(() => {
    const onUnload     = () => saveProgress();
    const onVisChange  = () => { if (document.hidden) saveProgress(); };
    window.addEventListener("beforeunload", onUnload);
    document.addEventListener("visibilitychange", onVisChange);
    return () => {
      saveProgress();
      window.removeEventListener("beforeunload", onUnload);
      document.removeEventListener("visibilitychange", onVisChange);
    };
  }, [saveProgress]);

  /* Detect if all quality tiers have the same server list (flat mode → hide quality picker) */
  const q1 = allServers["1080p FHD"] || [];
  const q2 = allServers["720p HD"]   || [];
  const q3 = allServers["360p SD"]   || [];
  const allQualityIdentical =
    q1.length > 0 &&
    q1.length === q2.length && q1.length === q3.length &&
    q1.every((u, i) => u === q2[i] && u === q3[i]);

  /* ── Subtitle state ── */
  const [subState,     setSubState]    = useState<"idle"|"loading"|"ready"|"none">("idle");
  const [subCues,      setSubCues]     = useState<SubCue[]>([]);
  const [subLang,      setSubLang]     = useState<string | null>(null);
  const [subOffset,    setSubOffset]   = useState(0);
  const [showSubPanel, setShowSubPanel] = useState(false);
  const [subSettings,  setSubSettings] = useState<SubSettings>(DEFAULT_SUB_SETTINGS);

  const currentUrl  = servers[currentServer] || "";

  /* ── Synchronous subtitle reset when source URL changes (prevents old cues flashing on new source) ── */
  const prevUrlRef = useRef(currentUrl);
  if (prevUrlRef.current !== currentUrl) {
    prevUrlRef.current = currentUrl;
    if (subCues.length > 0) setSubCues([]);
    if (subState === "ready") setSubState("idle");
  }
  const currentInfo = getServerInfo(currentUrl, currentServer);

  /* ── Stable HLS callbacks ── */
  const handleRealQuality = useCallback((q: string) => setRealQuality(q), []);
  const handleHlsTime = useCallback((t: number) => {
    setHlsTime(t);
    lastTimeRef.current = t;
    /* Fallback: also save every 30s in case beforeunload doesn't fire (mobile) */
    const now = Date.now();
    if (t > 60 && now - lastSaveTs.current > 30000) {
      lastSaveTs.current = now;
      try { localStorage.setItem(progressKey, String(Math.floor(t))); } catch {}
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progressKey]);

  /* ── Reset on quality tier change only ── */
  useEffect(() => {
    if (isFirstQualityMount.current) { isFirstQualityMount.current = false; return; }
    setCurrentServer(0);
    setRealQuality(null);
  }, [quality]);

  /* ── Fetch subtitles (called on button click) ── */
  async function fetchSubtitles() {
    /* If already showing or loading — just toggle the panel visibility */
    if (subState === "loading" || subState === "ready") { setShowSubPanel(p => !p); return; }
    /* Reset so we can retry (covers "none" state as well) */
    setSubState("loading");
    setShowSubPanel(true);
    setSubCues([]);
    try {
      /* If source has a subtitle URL already, translate it to Arabic first */
      if (subtitleUrl) {
        const toSec = (ts: string): number => {
          const m = ts.match(/(\d{1,2}):(\d{2}):(\d{2})[,.](\d{3})/);
          if (m) return +m[1] * 3600 + +m[2] * 60 + +m[3] + +m[4] / 1000;
          const m2 = ts.match(/(\d{1,2}):(\d{2})[,.](\d{3})/);
          if (m2) return +m2[1] * 60 + +m2[2] + +m2[3] / 1000;
          return 0;
        };
        /* subtitleUrl may already be a translate-vtt URL from the scraper → fetch directly */
        if (subtitleUrl.startsWith("/api/anime/translate-vtt")) {
          try {
            const r = await fetch(subtitleUrl, { signal: AbortSignal.timeout(30000) });
            if (r.ok) {
              const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
              if (d.cues?.length) {
                const arCues = d.cues.map(c => {
                  const pts = c.timing.split("-->").map(s => s.trim());
                  return { start: toSec(pts[0] || ""), end: toSec(pts[1] || ""), text: c.text };
                }).filter(c => c.start < c.end && c.text.trim());
                if (arCues.length) { setSubCues(arCues); setSubLang("ara"); setSubState("ready"); return; }
              }
            }
          } catch { /* fall through */ }
        } else {
          /* Plain VTT/SRT URL — wrap with translate-vtt */
          try {
            const r = await fetch(
              `/api/anime/translate-vtt?url=${encodeURIComponent(subtitleUrl)}&from=en&to=ar`,
              { signal: AbortSignal.timeout(30000) },
            );
            if (r.ok) {
              const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
              if (d.cues?.length) {
                const arCues = d.cues.map(c => {
                  const pts = c.timing.split("-->").map(s => s.trim());
                  return { start: toSec(pts[0] || ""), end: toSec(pts[1] || ""), text: c.text };
                }).filter(c => c.start < c.end && c.text.trim());
                if (arCues.length) { setSubCues(arCues); setSubLang("ara"); setSubState("ready"); return; }
              }
            }
          } catch { /* fall through */ }
          /* English fallback */
          try {
            const r2 = await fetch(`/api/anime/proxy-text?url=${encodeURIComponent(subtitleUrl)}`, { signal: AbortSignal.timeout(10000) });
            if (r2.ok) {
              const text = await r2.text();
              const cues = parseSrt(text);
              if (cues.length) { setSubCues(cues); setSubLang("eng"); setSubState("ready"); return; }
            }
          } catch { /* fall through */ }
        }
      }
      /* SUBDL Arabic lookup — only for sources that support subtitles */
      const SUB_ALLOWED_SITES = ["kawaii", "anikoto", "anineko"];
      if (!SUB_ALLOWED_SITES.includes(subtitleSite || "")) {
        setSubState("none"); setShowSubPanel(true); return;
      }
      const params = new URLSearchParams({ title: animeTitle, ep: String(ep) });
      const r = await fetch(`/api/anime/subtitles?${params}`, { signal: AbortSignal.timeout(15000) });
      if (!r.ok) { setSubState("none"); setShowSubPanel(true); return; }
      const d = await r.json() as { lang: string | null; content: string | null };
      if (!d.content) { setSubState("none"); setShowSubPanel(true); return; }
      const cues = parseSrt(d.content);
      if (!cues.length) { setSubState("none"); setShowSubPanel(true); return; }
      setSubCues(cues);
      setSubLang(d.lang);
      setSubState("ready");
    } catch {
      setSubState("none");
      setShowSubPanel(true);
    }
  }

  function adjustOffset(delta: number) {
    setSubOffset(o => o + delta);
  }

  /* ── Reset subState to idle when subtitleUrl changes (e.g. switching to kawaii source) ── */
  useEffect(() => {
    setSubState("idle");
    setSubCues([]);
    setSubLang(null);
  }, [subtitleUrl]);

  /* ── Auto-load subtitles when source has a subtitleUrl ── */
  useEffect(() => {
    if (!subtitleUrl) { setSubState("none"); return; }
    let cancelled = false;
    const t = setTimeout(async () => {
      if (cancelled) return;
      setSubState("loading");

      const toSec = (ts: string): number => {
        const m = ts.match(/(\d{1,2}):(\d{2}):(\d{2})[,.](\d{3})/);
        if (m) return +m[1] * 3600 + +m[2] * 60 + +m[3] + +m[4] / 1000;
        const m2 = ts.match(/(\d{1,2}):(\d{2})[,.](\d{3})/);
        if (m2) return +m2[1] * 60 + +m2[2] + +m2[3] / 1000;
        return 0;
      };

      try {
        /* subtitleUrl from anikoto/anineko is already a /api/anime/translate-vtt URL → fetch directly */
        if (subtitleUrl.startsWith("/api/anime/translate-vtt")) {
          const r = await fetch(subtitleUrl, { signal: AbortSignal.timeout(30000) });
          if (!cancelled && r.ok) {
            const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
            if (d.cues?.length) {
              const arCues = d.cues.map(c => {
                const pts = c.timing.split("-->").map(s => s.trim());
                return { start: toSec(pts[0] || ""), end: toSec(pts[1] || ""), text: c.text };
              }).filter(c => c.start < c.end && c.text.trim());
              if (!cancelled && arCues.length) { setSubCues(arCues); setSubLang("ara"); setSubState("ready"); return; }
            }
          }
        } else {
          /* Raw VTT/SRT URL — translate to Arabic */
          const r = await fetch(
            `/api/anime/translate-vtt?url=${encodeURIComponent(subtitleUrl)}&from=en&to=ar`,
            { signal: AbortSignal.timeout(30000) },
          );
          if (!cancelled && r.ok) {
            const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
            if (d.cues?.length) {
              const arCues = d.cues.map(c => {
                const pts = c.timing.split("-->").map(s => s.trim());
                return { start: toSec(pts[0] || ""), end: toSec(pts[1] || ""), text: c.text };
              }).filter(c => c.start < c.end && c.text.trim());
              if (!cancelled && arCues.length) { setSubCues(arCues); setSubLang("ara"); setSubState("ready"); return; }
            }
          }
          /* English fallback */
          if (!cancelled) {
            const r2 = await fetch(`/api/anime/proxy-text?url=${encodeURIComponent(subtitleUrl)}`, { signal: AbortSignal.timeout(10000) });
            if (!cancelled && r2.ok) {
              const cues = parseSrt(await r2.text());
              if (!cancelled && cues.length) { setSubCues(cues); setSubLang("eng"); setSubState("ready"); return; }
            }
          }
        }
      } catch { /* fall through */ }

      if (!cancelled) setSubState("none");
    }, 500);
    return () => { cancelled = true; clearTimeout(t); };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [subtitleUrl]);

  const lastSwitchRef = useRef(0);
  const tryNextServer = useCallback(() => {
    /* Throttle: ignore if last switch was < 400ms ago */
    const now = Date.now();
    if (now - lastSwitchRef.current < 400) return;
    lastSwitchRef.current = now;

    if (currentServer + 1 < servers.length) {
      setCurrentServer(currentServer + 1);
      setRealQuality(null);
    } else {
      const currentTierIdx = QUALITY_LABELS.indexOf(quality);
      for (let i = currentTierIdx + 1; i < QUALITY_LABELS.length; i++) {
        if ((allServers[QUALITY_LABELS[i]]?.length || 0) > 0) {
          onChangeQuality(QUALITY_LABELS[i]);
          return;
        }
      }
      onTierExhausted?.();
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [currentServer, servers.length, quality, allServers, onChangeQuality, onTierExhausted]);
  /* Note: tryNextServer changes when currentServer changes, but that's fine —
     RiftPlayer's fireOnFail reads onFailRef.current (stable ref), so loadSource
     never re-fires from identity changes here. */

  /* ── Embed-type URL → sandboxed iframe player ── */
  if (currentUrl && isIframeUrl(currentUrl)) {
    return (
      <AnimatePresence mode="wait">
        <MegaEmbedPlayer
          key={currentUrl}
          src={currentUrl}
          ep={ep} totalEps={totalEps} title={title}
          onBack={onBack} onNextEp={onNextEp} onPrevEp={onPrevEp}
        />
      </AnimatePresence>
    );
  }

  /* ── Blank-screen guard: if no URL at all, show error ── */
  if (!currentUrl) {
    return (
      <motion.div
        className="fixed inset-0 z-50 bg-[#09090f] flex flex-col items-center justify-center gap-5"
        initial={{ opacity: 0 }} animate={{ opacity: 1 }}
        dir="rtl"
      >
        <div className="w-14 h-14 rounded-2xl bg-white/4 border border-white/7 flex items-center justify-center">
          <AlertTriangle className="w-6 h-6 text-white/20" />
        </div>
        <div className="text-center">
          <p className="text-white/55 text-[14px] font-black font-['Cairo']">تعذّر تشغيل المصدر</p>
          <p className="text-white/25 text-[12px] mt-1 font-['Cairo']">لا يوجد رابط فيديو صالح</p>
        </div>
        <button onClick={onBack}
          className="flex items-center gap-2 px-5 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
          <ChevronRight className="w-4 h-4" /> العودة للمصادر
        </button>
      </motion.div>
    );
  }

  /* ── Build top slot: back button + title + quality + subtitle ── */
  const topSlot = (
    <div
      className="flex items-center gap-2 px-3 shrink-0"
      style={{
        paddingTop: "max(14px, env(safe-area-inset-top))",
        paddingBottom: 12,
      }}
    >
      {/* Back */}
      <button
        onClick={onBack}
        className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
        style={{ background: "rgba(255,255,255,0.10)", border: "1px solid rgba(255,255,255,0.13)" }}>
        <ChevronRight className="w-5 h-5 text-white/80" />
      </button>

      {/* Title */}
      <div className="flex-1 min-w-0">
        <p className="text-white text-[13px] font-black font-['Cairo'] truncate leading-tight">{title}</p>
        <div className="flex items-center gap-1.5 mt-0.5">
          <span className="text-white/38 text-[10px] font-['Cairo']">الحلقة {ep}</span>
          {servers.length > 1 && (
            <>
              <span className="text-white/18 text-[8px]">·</span>
              <span className="text-white/28 text-[10px] font-['Cairo']">سيرفر {currentServer + 1}/{servers.length}</span>
            </>
          )}
          {!allQualityIdentical && (
            <>
              <span className="text-white/18 text-[8px]">·</span>
              <span className="text-violet-300/55 text-[10px] font-bold font-mono">{QUALITY_SHORT[quality]}</span>
            </>
          )}
          {currentInfo.isHls && (
            <span className="font-mono text-[8px] font-bold px-1 py-0.5 rounded"
              style={{ background: "rgba(124,58,237,0.22)", color: "rgba(196,181,253,0.80)", border: "1px solid rgba(124,58,237,0.28)" }}>
              HLS
            </span>
          )}
        </div>
      </div>

      {/* Subtitle */}
      <button
        onClick={fetchSubtitles}
        className="flex items-center gap-1 px-2.5 py-2 rounded-xl transition-all active:scale-90 shrink-0"
        style={{
          background: subState === "ready" ? "rgba(124,58,237,0.88)" : "rgba(255,255,255,0.08)",
          border: `1px solid ${subState === "ready" ? "rgba(139,92,246,0.5)" : "rgba(255,255,255,0.11)"}`,
          color: subState === "ready" ? "white"
            : subState === "loading" ? "rgba(167,139,250,0.70)"
            : subState === "none" ? "rgba(255,255,255,0.22)"
            : "rgba(255,255,255,0.55)",
        }}>
        <Subtitles className={`w-3.5 h-3.5 ${subState === "loading" ? "animate-pulse" : ""}`} />
      </button>

      {/* Quality picker */}
      {!allQualityIdentical && (
        <button
          onClick={() => setShowQuality(s => !s)}
          className="flex items-center gap-1 px-2.5 py-2 rounded-xl font-mono transition-all active:scale-90 shrink-0"
          style={{
            background: showQuality ? "rgba(124,58,237,0.88)" : "rgba(255,255,255,0.08)",
            border: `1px solid ${showQuality ? "rgba(139,92,246,0.5)" : "rgba(255,255,255,0.11)"}`,
            color: showQuality ? "white" : "rgba(255,255,255,0.55)",
          }}>
          <Settings className="w-3.5 h-3.5" />
          <span className="text-[10px] font-bold">{QUALITY_SHORT[quality]}</span>
        </button>
      )}

      {realQuality && (
        <div className="px-2 py-1 rounded-lg shrink-0"
          style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
          <span className="text-[9px] font-bold font-mono text-white/32">{realQuality}</span>
        </div>
      )}
    </div>
  );

  /* ── Build bottom slot: ep nav + server tabs ── */
  const bottomSlot = (
    <div
      className="flex items-center justify-between px-3 gap-2"
      style={{ paddingBottom: "max(12px, env(safe-area-inset-bottom))" }}>

      {/* Prev ep */}
      <button
        onClick={onPrevEp}
        disabled={ep <= 1}
        className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all shrink-0"
        style={{ color: "rgba(255,255,255,0.42)", opacity: ep <= 1 ? 0.18 : 1 }}>
        <ChevronRight className="w-4 h-4" />السابقة
      </button>

      {/* Server tabs */}
      <div className="flex items-center gap-1.5 overflow-x-auto flex-1 justify-center" style={{ scrollbarWidth: "none" }}>
        {servers.map((url, i) => {
          const info = getServerInfo(url, i);
          const isActive = i === currentServer;
          return (
            <button
              key={i}
              onClick={() => { setCurrentServer(i); setRealQuality(null); }}
              className="flex items-center gap-1 px-2.5 py-1.5 rounded-xl text-[10px] font-bold font-['Cairo'] whitespace-nowrap transition-all active:scale-90 shrink-0"
              style={{
                background: isActive ? "rgba(124,58,237,0.88)" : "rgba(255,255,255,0.08)",
                border: isActive ? "1px solid rgba(139,92,246,0.45)" : "1px solid rgba(255,255,255,0.10)",
                color: isActive ? "rgba(255,255,255,0.95)" : "rgba(255,255,255,0.38)",
              }}>
              <MonitorPlay className="w-3 h-3 shrink-0" />
              {info.label}
            </button>
          );
        })}
      </div>

      {/* Next ep */}
      <button
        onClick={onNextEp}
        disabled={ep >= totalEps}
        className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all shrink-0 flex-row-reverse"
        style={{ color: "rgba(255,255,255,0.42)", opacity: ep >= totalEps ? 0.18 : 1 }}>
        <ChevronLeft className="w-4 h-4" />التالية
      </button>
    </div>
  );

  return (
    <motion.div id="nova-player"
      className="fixed inset-0 z-50 bg-black"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      transition={{ duration: 0.2 }}
      dir="rtl"
    >
      {/* ══ VIDEO + RIFT PLAYER (fills screen) ══ */}
      <div className="absolute inset-0">
        {currentUrl && (
          <>
            <RiftPlayer
              key={`hls-${currentUrl}-${currentServer}`}
              src={currentUrl}
              title={title}
              epTitle={epTitle}
              ep={ep}
              totalEps={totalEps}
              qualityLabel={QUALITY_SHORT[quality]}
              isHls={currentInfo.isHls}
              serverCount={servers.length}
              serverIndex={currentServer}
              downloadUrl={downloadUrl}
              resumeTime={resumeTime > 10 ? resumeTime : undefined}
              subCues={subState === "ready" && subCues.length > 0 ? subCues : undefined}
              subElapsed={hlsTime + subOffset}
              subSettings={subSettings}
              subEnabled={subState === "ready"}
              skipIntro={skipTimes?.op}
              skipOutro={skipTimes?.ed}
              autoPlay={localStorage.getItem("pref-autoplay") !== "false"}
              onSubtitleClick={fetchSubtitles}
              onSubSettingsChange={s => setSubSettings(s)}
              onBack={onBack}
              onPrevEp={onPrevEp}
              onNextEp={onNextEp}
              onRealQuality={handleRealQuality}
              onTimeUpdate={handleHlsTime}
              onFail={tryNextServer}
            />
          </>
        )}
      </div>

      {/* ══ FLOATING PANELS (z-40, shown on top of RiftPlayer overlay) ══ */}

      <AnimatePresence>
        {showQuality && (
          <motion.div key="qpick"
            initial={{ opacity: 0, scale: 0.95, y: -8 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.95, y: -8 }}
            transition={{ duration: 0.15 }}
            className="absolute top-[72px] left-0 right-0 z-40 flex justify-center px-4">
            <div className="rounded-2xl px-4 py-3 flex gap-3 shadow-2xl"
              style={{ background: "rgba(8,8,20,0.97)", backdropFilter: "blur(28px)", border: "1px solid rgba(255,255,255,0.10)" }}>
              <p className="text-white/25 text-[10px] font-['Cairo'] self-center ml-2">الجودة:</p>
              {QUALITY_LABELS.map(q => (
                <button key={q} onClick={() => { onChangeQuality(q); setShowQuality(false); }}
                  className="flex flex-col items-center gap-0.5 px-4 py-2.5 rounded-xl transition-all active:scale-90"
                  style={{
                    background: q === quality ? "rgba(124,58,237,0.90)" : "rgba(255,255,255,0.05)",
                    border: q === quality ? "1px solid rgba(139,92,246,0.50)" : "1px solid rgba(255,255,255,0.07)",
                    color: q === quality ? "white" : "rgba(255,255,255,0.38)",
                  }}>
                  <span className="font-black text-[16px] font-mono">{QUALITY_SHORT[q]}</span>
                  <span className="text-[8px] font-bold opacity-50 uppercase tracking-wider">{q.split(" ")[1]}</span>
                </button>
              ))}
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      <AnimatePresence>
        {showSubPanel && subState !== "idle" && (
          <motion.div key="subpanel"
            initial={{ opacity: 0, scale: 0.95, y: -8 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.95, y: -8 }}
            transition={{ duration: 0.15 }}
            className="absolute top-[72px] left-0 right-0 z-40 flex justify-center px-4">
            <div className="rounded-2xl px-5 py-4 shadow-2xl w-full max-w-sm" dir="rtl"
              style={{ background: "rgba(8,8,20,0.97)", backdropFilter: "blur(28px)", border: "1px solid rgba(255,255,255,0.10)" }}>

              {subState === "loading" && (
                <div className="flex items-center gap-3">
                  <Loader2 className="w-4 h-4 animate-spin text-violet-400 shrink-0" />
                  <p className="text-white/45 text-[12px] font-['Cairo']">
                    {subtitleUrl ? "جاري ترجمة الترجمة إلى العربية…" : "جاري البحث عن ترجمة عربية…"}
                  </p>
                </div>
              )}

              {subState === "none" && (
                <div className="flex items-center gap-3">
                  <AlertTriangle className="w-4 h-4 text-white/18 shrink-0" />
                  <p className="text-white/30 text-[12px] font-['Cairo']">لا توجد ترجمة لهذه الحلقة</p>
                  <button onClick={() => setShowSubPanel(false)} className="mr-auto text-white/25 active:scale-90">
                    <X className="w-4 h-4" />
                  </button>
                </div>
              )}

              {subState === "ready" && (
                <div className="flex flex-col gap-4">

                  {/* ── Header ── */}
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-2">
                      <div className="w-1.5 h-1.5 rounded-full bg-violet-400" />
                      <p className="text-white/60 text-[12px] font-['Cairo']">
                        {subLang === "ara" ? "ترجمة عربية" : "مترجمة تلقائياً"}
                        <span className="text-white/24 mr-1">· {subCues.length} سطر</span>
                      </p>
                    </div>
                    <button onClick={() => setShowSubPanel(false)} className="text-white/26 active:scale-90">
                      <X className="w-4 h-4" />
                    </button>
                  </div>

                  {/* ── Font size ── */}
                  <div>
                    <p className="text-white/30 text-[10px] font-['Cairo'] mb-1.5">حجم الخط</p>
                    <div className="flex gap-2">
                      {([13, 16, 20, 24] as number[]).map(sz => (
                        <button key={sz} onClick={() => setSubSettings(s => ({ ...s, fontSize: sz }))}
                          className="flex-1 py-2 rounded-xl font-bold font-['Cairo'] transition-all active:scale-90"
                          style={{
                            fontSize: sz > 18 ? sz * 0.65 : sz * 0.75,
                            background: subSettings.fontSize === sz ? "rgba(139,92,246,0.25)" : "rgba(255,255,255,0.05)",
                            border: subSettings.fontSize === sz ? "1px solid rgba(139,92,246,0.50)" : "1px solid rgba(255,255,255,0.08)",
                            color: subSettings.fontSize === sz ? "#c4b5fd" : "rgba(255,255,255,0.40)",
                          }}>
                          {sz === 13 ? "ص" : sz === 16 ? "م" : sz === 20 ? "ك" : "ع"}
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* ── Color ── */}
                  <div>
                    <p className="text-white/30 text-[10px] font-['Cairo'] mb-1.5">لون النص</p>
                    <div className="flex gap-2">
                      {([
                        { v: "#ffffff", label: "أبيض" },
                        { v: "#fde047", label: "ذهبي" },
                        { v: "#67e8f9", label: "سماوي" },
                        { v: "#86efac", label: "أخضر" },
                        { v: "#fca5a5", label: "وردي" },
                      ] as { v: string; label: string }[]).map(({ v, label }) => (
                        <button key={v} onClick={() => setSubSettings(s => ({ ...s, color: v }))}
                          className="flex-1 flex flex-col items-center gap-1 py-1.5 rounded-xl transition-all active:scale-90"
                          style={{
                            background: subSettings.color === v ? "rgba(255,255,255,0.10)" : "rgba(255,255,255,0.03)",
                            border: subSettings.color === v ? "1.5px solid rgba(255,255,255,0.35)" : "1px solid rgba(255,255,255,0.08)",
                          }}>
                          <div className="w-4 h-4 rounded-full" style={{ background: v, boxShadow: "0 1px 6px rgba(0,0,0,0.60)" }} />
                          <span className="text-[9px] font-['Cairo']" style={{ color: subSettings.color === v ? "rgba(255,255,255,0.65)" : "rgba(255,255,255,0.25)" }}>{label}</span>
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* ── Background + Bold ── */}
                  <div className="flex gap-2">
                    <div className="flex-1">
                      <p className="text-white/30 text-[10px] font-['Cairo'] mb-1.5">خلفية</p>
                      <div className="flex gap-1.5">
                        {([
                          { v: 0.82, label: "مظلل" },
                          { v: 0.45, label: "خفيف" },
                          { v: 0,    label: "بلا" },
                        ] as { v: number; label: string }[]).map(({ v, label }) => (
                          <button key={v} onClick={() => setSubSettings(s => ({ ...s, bgOpacity: v }))}
                            className="flex-1 py-1.5 rounded-xl text-[10px] font-bold font-['Cairo'] transition-all active:scale-90"
                            style={{
                              background: subSettings.bgOpacity === v ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.05)",
                              border: subSettings.bgOpacity === v ? "1px solid rgba(139,92,246,0.45)" : "1px solid rgba(255,255,255,0.08)",
                              color: subSettings.bgOpacity === v ? "#c4b5fd" : "rgba(255,255,255,0.35)",
                            }}>
                            {label}
                          </button>
                        ))}
                      </div>
                    </div>
                    <div>
                      <p className="text-white/30 text-[10px] font-['Cairo'] mb-1.5">سمك</p>
                      <button onClick={() => setSubSettings(s => ({ ...s, bold: !s.bold }))}
                        className="w-full px-3 py-1.5 rounded-xl text-[12px] transition-all active:scale-90"
                        style={{
                          fontWeight: subSettings.bold ? 700 : 400,
                          background: subSettings.bold ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.05)",
                          border: subSettings.bold ? "1px solid rgba(139,92,246,0.45)" : "1px solid rgba(255,255,255,0.08)",
                          color: subSettings.bold ? "#c4b5fd" : "rgba(255,255,255,0.35)",
                        }}>
                        {subSettings.bold ? "عريض" : "عادي"}
                      </button>
                    </div>
                  </div>

                  {/* ── Position ── */}
                  <div>
                    <p className="text-white/30 text-[10px] font-['Cairo'] mb-1.5">موضع الترجمة</p>
                    <div className="flex gap-2">
                      {([
                        { v: "top",    label: "أعلى",  icon: "⬆" },
                        { v: "center", label: "وسط",   icon: "⬛" },
                        { v: "bottom", label: "أسفل",  icon: "⬇" },
                      ] as { v: "top"|"center"|"bottom"; label: string; icon: string }[]).map(({ v, label, icon }) => (
                        <button key={v} onClick={() => setSubSettings(s => ({ ...s, position: v }))}
                          className="flex-1 flex flex-col items-center gap-0.5 py-2 rounded-xl transition-all active:scale-90"
                          style={{
                            background: subSettings.position === v ? "rgba(139,92,246,0.25)" : "rgba(255,255,255,0.05)",
                            border: subSettings.position === v ? "1px solid rgba(139,92,246,0.50)" : "1px solid rgba(255,255,255,0.08)",
                            color: subSettings.position === v ? "#c4b5fd" : "rgba(255,255,255,0.40)",
                          }}>
                          <span style={{ fontSize: 10 }}>{icon}</span>
                          <span className="text-[10px] font-bold font-['Cairo']">{label}</span>
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* ── Offset ── */}
                  <div>
                    <p className="text-white/30 text-[10px] font-['Cairo'] mb-1.5">إزاحة التوقيت</p>
                    <div className="flex items-center gap-2 flex-wrap">
                      {([-2, -0.5, 0.5, 2] as number[]).map(d => (
                        <button key={d} onClick={() => adjustOffset(d)}
                          className="flex-1 py-1.5 rounded-xl text-white/40 text-[11px] font-bold active:scale-90 transition-transform"
                          style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
                          {d > 0 ? "+" : ""}{d}s
                        </button>
                      ))}
                      {subOffset !== 0 && (
                        <button onClick={() => setSubOffset(0)}
                          className="px-2 py-1.5 rounded-xl text-white/25 text-[10px] active:scale-90 transition-transform"
                          style={{ background: "rgba(239,68,68,0.08)", border: "1px solid rgba(239,68,68,0.15)" }}>
                          صفر
                        </button>
                      )}
                    </div>
                    {subOffset !== 0 && (
                      <p className="text-center text-violet-300/50 text-[10px] font-mono mt-1">
                        {subOffset > 0 ? "+" : ""}{subOffset.toFixed(1)}s
                      </p>
                    )}
                  </div>

                </div>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </motion.div>
  );
}

/* ══════════════════════════════════ WATCH PAGE ══════════════ */
const EMPTY_SLOTS = (): Record<string, SlotStatus> =>
  Object.fromEntries(SCRAPER_DEFS.map(d => [d.site, "idle" as SlotStatus]));

export default function WatchPage() {
  const [, navigate] = useLocation();

  const sp           = useRef(new URLSearchParams(window.location.search)).current;
  const animeId      = parseInt(sp.get("anime") || "0");
  const ep           = parseInt(sp.get("ep") || "1");
  const titleParam   = sp.get("title") || "";
  const englishParam = sp.get("english") || "";
  const coverParam   = sp.get("cover") || "";

  const [anime,        setAnime]        = useState<any>(null);
  const [skipTimes,    setSkipTimes]    = useState<SkipTimes>({});
  const [slotStatus,   setSlotStatus]   = useState<Record<string, SlotStatus>>(EMPTY_SLOTS);
  const [slotSources,  setSlotSources]  = useState<Record<string, FetchedSrc[]>>({});
  const [playerServers,setPlayerServers]= useState<Record<Quality, string[]>>({ "1080p FHD": [], "720p HD": [], "360p SD": [] });
  const [quality,      setQuality]      = useState<Quality>("720p HD");
  const [initialSrv,   setInitialSrv]   = useState(0);
  const [phase,        setPhase]        = useState<"picker" | "player">("picker");
  // keep phaseRef in sync so async fetch handlers can guard against updating picker state while player is active
  useEffect(() => { phaseRef.current = phase; }, [phase]);
  const [playerDlUrl,  setPlayerDlUrl]  = useState<string | undefined>(undefined);
  const [playerSubUrl, setPlayerSubUrl] = useState<string | undefined>(undefined);
  const [playerSrcSite, setPlayerSrcSite] = useState<string>("");

  const autoFetchedRef    = useRef(false);
  const autoPlayedRef     = useRef(false);
  const upgradedToFhdRef  = useRef(false);
  const phaseRef          = useRef<"picker" | "player">("picker");

  const title      = anime?.title?.english || anime?.title?.romaji || titleParam || "أنمي";
  const animeTitle = title;
  const totalEps   = (anime?.episodes ?? 0) > 0
    ? (anime!.episodes as number)
    : (anime?.nextAiringEpisode?.episode ?? 0) > 0
      ? anime!.nextAiringEpisode!.episode - 1
      : 999;
  /* Cover: prefer AniList data, fallback to URL param, then watch history */
  const coverFromHistory = useMemo(() => {
    if (anime) return "";
    try {
      const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
      return h.find(e => e.id === animeId)?.cover || "";
    } catch { return ""; }
  }, [anime, animeId]);
  const cover = anime?.coverImage?.extraLarge || anime?.coverImage?.large || coverParam || coverFromHistory;

  /* Episode title from AniList streamingEpisodes */
  const epTitle: string = (() => {
    const eps: Array<{ title?: string; episode?: string }> = anime?.streamingEpisodes || [];
    if (!eps.length) return "";
    const found = eps.find(e => {
      const n = parseInt(e.episode || "");
      return !isNaN(n) && n === ep;
    });
    const raw = found?.title || eps[ep - 1]?.title || "";
    if (!raw) return "";
    return raw.replace(/^Episode\s+\d+\s*[-:–]\s*/i, "").trim();
  })();

  /* Arabic episode title — translated via server proxy */
  const [arEpTitle, setArEpTitle] = useState<string>("");
  useEffect(() => {
    setArEpTitle("");
    if (!epTitle) return;
    const ctrl = new AbortController();
    fetch(`/api/anime/translate?text=${encodeURIComponent(epTitle)}&from=en&to=ar`, { signal: ctrl.signal })
      .then(r => r.ok ? r.json() : null)
      .then((d: any) => {
        const t = d?.translated?.trim();
        if (t && t !== epTitle) setArEpTitle(t);
      })
      .catch(() => {});
    return () => ctrl.abort();
  }, [epTitle]);

  /* ── Early history save using URL params — before AniList data loads ── */
  useEffect(() => {
    if (animeId && titleParam) saveHistory(animeId, titleParam, coverParam, ep);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  /* Fetch AniList metadata */
  useEffect(() => {
    if (!animeId) return;
    fetch("/api/anime/anilist", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
      signal: AbortSignal.timeout(12000),
    })
      .then(r => r.json())
      .then(j => {
        const d = j.data?.Media;
        if (d) {
          setAnime(d);
          saveHistory(animeId, d.title?.english || d.title?.romaji || "", d.coverImage?.large || "", ep, d.episodes || 0);
          /* ── Fetch AniSkip timestamps via server proxy (avoids CORS) ── */
          setSkipTimes({});
          if (d.idMal) {
            fetch(`/api/anime/aniskip?malId=${d.idMal}&ep=${ep}`, {
              signal: AbortSignal.timeout(10000),
            })
              .then(r => r.ok ? r.json() : null)
              .then((data: any) => {
                if (!data?.found) return;
                const st: SkipTimes = {};
                for (const result of (data.results || [])) {
                  const iv = result.interval;
                  if (result.skipType === "op") st.op = { start: iv.startTime, end: iv.endTime };
                  if (result.skipType === "ed") st.ed = { start: iv.startTime, end: iv.endTime };
                }
                setSkipTimes(st);
              })
              .catch(() => {});
          }
        }
      })
      .catch(() => {});
  }, [animeId, ep]);

  function goEp(n: number) {
    /* Navigate via wouter — WatchWrapper adds key={search} so Watch remounts with fresh params */
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n), title: titleParam, english: englishParam, cover })}`);
  }

  function handleBack() {
    if (phase === "player") {
      /* From player → go back to source picker */
      setPhase("picker");
    } else {
      /* From picker → go back (avoids creating new history entry that causes infinite loop) */
      if (window.history.length > 1) {
        window.history.back();
      } else {
        navigate(animeId ? `/episodes/${animeId}` : "/");
      }
    }
  }

  /* ── Track in-flight fetches to prevent duplicate calls ── */
  const inFlightRef = useRef<Set<string>>(new Set());

  /* ── Per-site on-demand fetch ── */
  async function handleFetchSite(site: string) {
    /* Guard: skip if already fetching or ready (check both state snapshot and in-flight ref) */
    if (inFlightRef.current.has(site)) return;
    if (slotStatus[site] === "fetching" || slotStatus[site] === "ready") return;

    inFlightRef.current.add(site);
    setSlotStatus(prev => ({ ...prev, [site]: "fetching" }));

    const resolvedTitle   = anime?.title?.romaji   || titleParam;
    const resolvedEnglish = anime?.title?.english  || englishParam || "";

    try {
      const params = new URLSearchParams({ site, title: resolvedTitle, english: resolvedEnglish, ep: String(ep), anime: String(animeId || 0) });
      const r    = await fetch(`/api/anime/fetch-source?${params}`, { signal: AbortSignal.timeout(40000) });
      const data = await r.json() as { sources?: FetchedSrc[] };
      const srcs: FetchedSrc[] = data.sources || [];

      if (srcs.length > 0) {
        setSlotSources(prev => ({ ...prev, [site]: srcs }));
        setSlotStatus(prev => ({ ...prev, [site]: "ready" }));
      } else {
        setSlotStatus(prev => ({ ...prev, [site]: "failed" }));
      }
    } catch {
      setSlotStatus(prev => ({ ...prev, [site]: "failed" }));
    } finally {
      inFlightRef.current.delete(site);
    }
  }

  /* ── Auto-fetch all sites on mount ── */
  useEffect(() => {
    if (autoFetchedRef.current) return;
    if (!titleParam) return;
    autoFetchedRef.current = true;
    let alive = true;
    const ctrl = new AbortController();
    const tids: ReturnType<typeof setTimeout>[] = [];

    SCRAPER_DEFS.forEach((def, i) => {
      const tid = setTimeout(() => {
        if (!alive) return;
        (async () => {
          if (!alive) return;
          if (inFlightRef.current.has(def.site)) return;
          inFlightRef.current.add(def.site);
          if (alive) setSlotStatus(prev => ({ ...prev, [def.site]: "fetching" }));
          try {
            const params = new URLSearchParams({
              site:    def.site,
              title:   titleParam,
              english: englishParam || "",
              ep:      String(ep),
              anime:   String(animeId || 0),
            });
            const r    = await fetch(`/api/anime/fetch-source?${params}`, { signal: ctrl.signal });
            const data = await r.json() as { sources?: FetchedSrc[] };
            const srcs: FetchedSrc[] = data.sources || [];
            if (!alive) return;
            if (srcs.length > 0) {
              setSlotSources(prev => ({ ...prev, [def.site]: srcs }));
              setSlotStatus(prev => ({ ...prev, [def.site]: "ready" }));
            } else {
              setSlotStatus(prev => ({ ...prev, [def.site]: "failed" }));
            }
          } catch {
            if (alive) {
              setSlotStatus(prev => ({ ...prev, [def.site]: "failed" }));
            }
          } finally {
            inFlightRef.current.delete(def.site);
          }
        })();
      }, i * 50);
      tids.push(tid);
    });

    return () => {
      alive = false;
      tids.forEach(clearTimeout);
      ctrl.abort();
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  /* ── Auto-play: fire on first available source of any quality ── */
  useEffect(() => {
    if (autoPlayedRef.current) return;
    if (phase !== "picker") return;
    const allSrcs: FetchedSrc[] = [];
    const seenKeys = new Set<string>();
    for (const srcs of Object.values(slotSources)) {
      for (const s of srcs) {
        if (!shouldShowSrc(s)) continue;
        const key = s.directUrl || s.url;
        if (!key || seenKeys.has(key)) continue;
        seenKeys.add(key);
        allSrcs.push(s);
      }
    }
    if (allSrcs.length > 0) {
      autoPlayedRef.current = true;
      allSrcs.sort((a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0));
      const firstSrc   = allSrcs[0];
      const clickedUrl = firstSrc.directUrl || firstSrc.url;
      const clickedTier = getSrcQualityTier(firstSrc);
      const srvMap: Record<Quality, string[]> = { "1080p FHD": [], "720p HD": [], "360p SD": [] };
      srvMap[clickedTier].push(clickedUrl);
      for (const s of allSrcs) {
        const u = s.directUrl || s.url;
        if (!u || u === clickedUrl) continue;
        const tier = getSrcQualityTier(s);
        if (!srvMap[tier].includes(u)) srvMap[tier].push(u);
      }
      setPlayerDlUrl(undefined);
      setPlayerSubUrl(firstSrc.subtitleUrl || undefined);
      setPlayerSrcSite(firstSrc.site || "");
      setPlayerServers(srvMap);
      setQuality(clickedTier);
      setInitialSrv(0);
      setPhase("player");
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [slotSources, phase]);

  /* ── Background server accumulation: once player is open, append new sources as scrapers finish ── */
  useEffect(() => {
    if (phase !== "player") return;
    const newFlat: FetchedSrc[] = [];
    const seenKeys = new Set<string>();
    for (const srcs of Object.values(slotSources)) {
      for (const s of srcs) {
        if (!shouldShowSrc(s)) continue;
        const key = s.directUrl || s.url;
        if (!key || seenKeys.has(key)) continue;
        seenKeys.add(key);
        newFlat.push(s);
      }
    }
    if (!newFlat.length) return;
    newFlat.sort((a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0));
    setPlayerServers(prev => {
      const next: Record<Quality, string[]> = {
        "1080p FHD": [...prev["1080p FHD"]],
        "720p HD":   [...prev["720p HD"]],
        "360p SD":   [...prev["360p SD"]],
      };
      for (const s of newFlat) {
        const u = s.directUrl || s.url;
        if (!u) continue;
        const tier = getSrcQualityTier(s);
        if (!next[tier].includes(u)) next[tier].push(u);
      }
      const changed = (["1080p FHD", "720p HD", "360p SD"] as Quality[]).some(
        k => JSON.stringify(next[k]) !== JSON.stringify(prev[k])
      );
      return changed ? next : prev;
    });
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [slotSources, phase]);

  /* ── Auto-upgrade to FHD: when 1080p source arrives and we started on lower quality, switch ── */
  useEffect(() => {
    if (phase !== "player") return;
    if (upgradedToFhdRef.current) return;
    if (quality === "1080p FHD") { upgradedToFhdRef.current = true; return; }
    const seenKeys = new Set<string>();
    const fhdSrcs: FetchedSrc[] = [];
    for (const srcs of Object.values(slotSources)) {
      for (const s of srcs) {
        if (!shouldShowSrc(s)) continue;
        const key = s.directUrl || s.url;
        if (!key || seenKeys.has(key)) continue;
        seenKeys.add(key);
        if ((s.qualityRank ?? 0) >= 13) fhdSrcs.push(s);
      }
    }
    if (fhdSrcs.length === 0) return;
    upgradedToFhdRef.current = true;
    fhdSrcs.sort((a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0));
    const bestFhd  = fhdSrcs[0];
    const allFhdUs = fhdSrcs.map(s => s.directUrl || s.url).filter(Boolean) as string[];
    setPlayerServers(prev => ({ ...prev, "1080p FHD": allFhdUs }));
    setPlayerSubUrl(bestFhd.subtitleUrl || undefined);
    setPlayerSrcSite(bestFhd.site || "");
    setQuality("1080p FHD");
    setInitialSrv(0);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [slotSources, phase, quality]);

  /* ── Play a specific source — show loading modal then switch to player ── */
  function handlePlaySrc(src: FetchedSrc) {
    const clickedUrl  = src.directUrl || src.url;
    const clickedTier = getSrcQualityTier(src);

    /* Build flat deduplicated list from all slot sources (same filter as picker) */
    const allFlat: FetchedSrc[] = [];
    const seenKeys = new Set<string>();
    for (const srcs of Object.values(slotSources)) {
      for (const s of srcs) {
        if (!shouldShowSrc(s)) continue;
        const key = s.directUrl || s.url;
        if (!key || seenKeys.has(key)) continue;
        seenKeys.add(key);
        allFlat.push(s);
      }
    }
    allFlat.sort((a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0));

    /* Put clicked URL first in its tier, others after */
    const servers: Record<Quality, string[]> = { "1080p FHD": [], "720p HD": [], "360p SD": [] };
    servers[clickedTier].push(clickedUrl);
    for (const s of allFlat) {
      const u = s.directUrl || s.url;
      if (!u || u === clickedUrl) continue;
      const tier = getSrcQualityTier(s);
      if (!servers[tier].includes(u)) servers[tier].push(u);
    }

    /* Store download URL + subtitle URL for player */
    setPlayerDlUrl(getDownloadUrl(src) || undefined);
    setPlayerSubUrl(src.subtitleUrl || undefined);
    setPlayerSrcSite(src.site || "");
    setPlayerServers(servers);
    setQuality(clickedTier);
    setInitialSrv(0);

    setPhase("player");
  }

  const servers = playerServers[quality] || [];

  if (phase === "picker") {
    return (
      <>
        <AnimatePresence mode="wait">
          <motion.div key="picker"
            initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -12 }}
            transition={{ duration: 0.22, ease: "easeOut" }} className="fixed inset-0">
            <ScraperPicker
              cover={cover} title={title} ep={ep} totalEps={totalEps}
              slotStatus={slotStatus} slotSources={slotSources}
              onFetchSite={handleFetchSite}
              onPlaySrc={handlePlaySrc}
              onBack={handleBack}
              animeId={animeId}
              onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
              onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
            />
          </motion.div>
        </AnimatePresence>

      </>
    );
  }

  return (
    <AnimatePresence mode="wait">
      <motion.div key={`player-${quality}-${initialSrv}`} className="fixed inset-0">
        <EpisodePlayer
          servers={servers}
          quality={quality}
          allServers={playerServers}
          initialServer={initialSrv}
          title={title}
          epTitle={arEpTitle || epTitle}
          animeTitle={animeTitle}
          animeId={animeId}
          cover={cover} ep={ep} totalEps={totalEps}
          downloadUrl={playerDlUrl}
          subtitleUrl={playerSubUrl}
          subtitleSite={playerSrcSite}
          skipTimes={skipTimes}
          onBack={() => setPhase("picker")}
          onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
          onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
          onChangeQuality={q => { setQuality(q); setInitialSrv(0); }}
          onTierExhausted={() => setPhase("picker")}
        />
      </motion.div>
    </AnimatePresence>
  );
}

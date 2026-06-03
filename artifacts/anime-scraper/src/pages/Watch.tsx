import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Pause, Loader2,
  AlertTriangle, RefreshCw, X, Maximize2, Minimize2,
  Settings, Subtitles, MonitorPlay, Tv2, Volume2, VolumeX,
  SkipBack, SkipForward, ExternalLink,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import Hls from "hls.js";

/* ══════════════════════════════════ ANILIST ══════════════════ */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres
  }
}`;

/* ══════════════════════════════════ TYPES ════════════════════ */
type Quality = "1080p FHD" | "720p HD" | "360p SD";
interface StreamData {
  servers: Record<Quality, string[]>;
  total: number;
  animeId?: number;
}
interface SubCue { start: number; end: number; text: string }

/* ══════════════════════════════════ HELPERS ══════════════════ */
function saveHistory(id: number, title: string, cover: string, ep: number, totalEps = 0) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify(
      [{ id, title, cover, ep, date: new Date().toISOString(), totalEps },
       ...h.filter(x => !(x.id === id && x.ep === ep))].slice(0, 60)
    ));
  } catch {}
}

const QUALITY_LABELS: Quality[] = ["1080p FHD", "720p HD", "360p SD"];
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

/* ── Server source detection ── */
interface ServerInfo { label: string; sublabel: string; isHls: boolean; isDirect?: boolean; }
function getServerInfo(url: string, idx: number): ServerInfo {
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
      <div className="relative h-full flex flex-col items-center justify-center gap-7 px-6">
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
              className="w-52 h-[296px] rounded-2xl object-cover"
              style={{ boxShadow: "0 24px 80px rgba(0,0,0,0.85), 0 0 0 1px rgba(255,255,255,0.07)" }}
            />
            <div className="absolute inset-0 rounded-2xl bg-gradient-to-br from-white/[0.08] via-transparent to-transparent pointer-events-none" />
            <div className="absolute bottom-0 left-0 right-0 h-20 rounded-b-2xl bg-gradient-to-t from-black/60 to-transparent pointer-events-none" />
          </motion.div>
        ) : (
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }}
            className="w-52 h-[296px] rounded-2xl bg-white/[0.04] flex items-center justify-center"
            style={{ boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
            <div className="w-14 h-14 rounded-full bg-violet-500/15 flex items-center justify-center">
              <div className="w-6 h-6 rounded-full bg-violet-500/35" />
            </div>
          </motion.div>
        )}

        {/* Title + episode */}
        <motion.div
          initial={{ opacity: 0, y: 14 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.2, duration: 0.45 }}
          className="text-center">
          {title && (
            <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
              style={{ textShadow: "0 2px 12px rgba(0,0,0,0.7)" }}>
              {title}
            </h2>
          )}
          <p className="text-white/38 text-[13px] font-['Cairo'] tracking-wide">الحلقة {ep}</p>
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
          <p className="text-white/22 text-[11px] font-['Cairo'] tracking-[0.12em]">جاري التشغيل</p>
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

/* ══════════════════════════════════ SERVER TAG HELPER ═══════ */
function getServerTag(url: string): string {
  if (url.includes("mega.nz"))  return "MA";
  if (url.includes("as-cdn21") || url.includes("rubystm")) return "TS";
  if (url.includes("sendvid"))  return "SV";
  if (url.includes("streamtape")) return "ST";
  if (url.includes("streamwish") || url.includes("filemoon") || url.includes("wishembed")) return "SW";
  if (url.includes("workers.dev")) return "PH";
  // For proxy URLs the inner URL is percent-encoded inside the query string
  if (url.includes("shahiid"))  return "SH";
  if (url.includes("animelek")) return "AL";
  if (url.includes("animedar")) return "AD";
  if (url.includes("okcdn") || url.includes("ok.ru")) return "OK";
  if (url.includes("hls-proxy")) return "HLS";
  if (url.includes("video-proxy")) return "MP4";
  return "SRC";
}

/* ══════════════════════════════════ SERVER PICKER ═══════════ */
function ServerPicker({
  cover, title, ep, sseDone, totalEps,
  streamData, onPick, onBack, onNextEp, onPrevEp,
}: {
  cover: string; title: string; ep: number; sseDone: boolean; totalEps: number;
  streamData: StreamData;
  onPick: (q: Quality, idx: number) => void;
  onBack: () => void;
  onNextEp: () => void;
  onPrevEp: () => void;
}) {
  /* Detect if all quality tiers have identical server lists → flat mode */
  const q1 = streamData.servers["1080p FHD"] || [];
  const q2 = streamData.servers["720p HD"]   || [];
  const q3 = streamData.servers["360p SD"]   || [];
  const allIdentical =
    q1.length > 0 &&
    q1.length === q2.length && q1.length === q3.length &&
    q1.every((u, i) => u === q2[i] && u === q3[i]);

  const canonicalQ: Quality = allIdentical
    ? "1080p FHD"
    : (QUALITY_LABELS.find(q => (streamData.servers[q]?.length || 0) > 0) || "720p HD");

  const allGroups = allIdentical
    ? [{ q: canonicalQ, servers: q1 }]
    : QUALITY_LABELS.map(q => ({ q, servers: streamData.servers[q] || [] }))
        .filter(g => g.servers.length > 0);

  const flatRows: { q: Quality; url: string; idx: number; globalIdx: number }[] = [];
  allGroups.forEach(({ q, servers }) =>
    servers.forEach((url, idx) => flatRows.push({ q, url, idx, globalIdx: flatRows.length }))
  );

  const totalCount = flatRows.length;

  const QUALITY_LABEL_AR: Record<Quality, string> = {
    "1080p FHD": "الجودة FHD",
    "720p HD":   "الجودة HD",
    "360p SD":   "الجودة SD",
  };

  return (
    <div className="fixed inset-0 z-50 flex flex-col bg-[#07070e]" dir="rtl">

      {/* ── Navigation bar (matches reference: ← title → arrows) ── */}
      <div className="flex items-center gap-0 shrink-0"
        style={{
          borderBottom: "1px solid rgba(255,255,255,0.06)",
          paddingTop: "max(14px, env(safe-area-inset-top))",
          paddingBottom: 12,
        }}>
        {/* Back */}
        <button onClick={onBack}
          className="w-12 h-10 flex items-center justify-center active:opacity-50 transition-opacity shrink-0">
          <ChevronRight className="w-5 h-5 text-white/55" />
        </button>
        {/* Prev episode */}
        <button onClick={onPrevEp} disabled={ep <= 1}
          className="w-10 h-10 flex items-center justify-center active:opacity-50 transition-opacity shrink-0 disabled:opacity-20">
          <ChevronRight className="w-4 h-4 text-white/45" />
        </button>

        {/* Center: title */}
        <div className="flex-1 text-center min-w-0 px-1">
          <p className="text-white/90 text-[13px] font-black font-['Cairo'] truncate leading-tight">
            {title} · الحلقة {ep}
          </p>
          <div className="flex items-center justify-center gap-1 mt-0.5 h-4">
            {!sseDone ? (
              <span className="flex items-center gap-1 text-amber-300/55 text-[10px] font-['Cairo']">
                <Loader2 className="w-2.5 h-2.5 animate-spin shrink-0" />
                {totalCount > 0 ? `${totalCount} مصادر · يكمل البحث...` : "جارٍ جلب المصادر..."}
              </span>
            ) : (
              <span className="text-white/22 text-[10px] font-['Cairo']">{totalCount} مصدر متاح</span>
            )}
          </div>
        </div>

        {/* Next episode */}
        <button onClick={onNextEp} disabled={ep >= totalEps}
          className="w-10 h-10 flex items-center justify-center active:opacity-50 transition-opacity shrink-0 disabled:opacity-20">
          <ChevronLeft className="w-4 h-4 text-white/45" />
        </button>
        {/* Cover thumbnail */}
        {cover && (
          <div className="w-12 flex justify-center shrink-0">
            <img src={cover} alt="" className="w-8 h-11 rounded-lg object-cover opacity-60" />
          </div>
        )}
      </div>

      {/* ── Source list ── */}
      <div className="flex-1 overflow-y-auto"
        style={{ paddingBottom: "max(20px, env(safe-area-inset-bottom))" }}>

        {allGroups.map(({ q, servers }, gi) => (
          <div key={q}>
            {/* Quality section divider — centered label like reference image */}
            <div className="flex items-center gap-3 px-4 py-2.5 mt-1">
              <div className="flex-1 h-px" style={{ background: "rgba(255,255,255,0.07)" }} />
              <span className="text-white/38 text-[11px] font-bold font-['Cairo'] tracking-wide select-none">
                {QUALITY_LABEL_AR[q]}
              </span>
              <div className="flex-1 h-px" style={{ background: "rgba(255,255,255,0.07)" }} />
            </div>

            {/* Server rows */}
            {servers.map((url, idx) => {
              const info    = getServerInfo(url, idx);
              const tag     = getServerTag(url);
              const isEmbed = url.includes("mega.nz/embed");
              const globalIdx = (gi === 0 ? 0 : allGroups.slice(0,gi).reduce((a,g)=>a+g.servers.length,0)) + idx;

              return (
                <motion.div key={url}
                  initial={{ opacity: 0, x: 8 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ delay: Math.min(globalIdx * 0.045, 0.28), duration: 0.22, ease: "easeOut" }}
                  onClick={() => onPick(q, idx)}
                  className="flex items-center px-4 py-3 gap-3 cursor-pointer active:bg-white/5 transition-all"
                  style={{ borderBottom: "1px solid rgba(255,255,255,0.04)" }}>

                  {/* Right: server name + sublabel */}
                  <div className="flex-1 min-w-0">
                    <p className="text-[13px] font-bold font-['Cairo'] leading-tight truncate text-white/82">
                      السيرفر {idx + 1} &nbsp;·&nbsp; {info.label}
                    </p>
                    <div className="flex items-center gap-1.5 mt-0.5">
                      <span className="text-[10px] font-['Cairo'] text-white/28">{info.sublabel}</span>
                      {isEmbed && (
                        <span className="text-emerald-400/55 text-[10px] font-['Cairo']">· بدون إعلانات</span>
                      )}
                    </div>
                  </div>

                  {/* Left: format tag chip */}
                  <span className="font-mono text-[10px] font-bold px-1.5 py-0.5 rounded shrink-0"
                    style={{
                      color: isEmbed ? "rgba(52,211,153,0.65)" : "rgba(255,255,255,0.35)",
                      background: isEmbed ? "rgba(52,211,153,0.08)" : "rgba(255,255,255,0.05)",
                      border: `1px solid ${isEmbed ? "rgba(52,211,153,0.18)" : "rgba(255,255,255,0.08)"}`,
                    }}>
                    {tag}
                  </span>
                </motion.div>
              );
            })}
          </div>
        ))}

        {/* Empty / loading state — minimal, only when no sources yet */}
        {totalCount === 0 && (
          <div className="flex flex-col items-center py-20 gap-3">
            {!sseDone
              ? <><Loader2 className="w-7 h-7 text-violet-400/35 animate-spin" />
                  <p className="text-white/22 text-[12px] font-['Cairo']">يجلب المصادر من 5 مواقع...</p></>
              : <><AlertTriangle className="w-7 h-7 text-white/20" />
                  <p className="text-white/22 text-[12px] font-['Cairo']">لم يُعثر على مصادر لهذه الحلقة</p></>
            }
          </div>
        )}

        {/* Subtle "fetching more" footer */}
        {!sseDone && totalCount > 0 && (
          <div className="flex items-center justify-center gap-1.5 py-3 opacity-50">
            <Loader2 className="w-3 h-3 text-violet-400/60 animate-spin" />
            <span className="text-white/30 text-[10px] font-['Cairo']">يجلب مصادر إضافية...</span>
          </div>
        )}
      </div>
    </div>
  );
}

/* ══════════════════════════════════ SUBTITLE OVERLAY ════════ */
function SubtitleOverlay({ cues, elapsed }: { cues: SubCue[]; elapsed: number }) {
  const current = cues.find(c => elapsed >= c.start && elapsed <= c.end);
  if (!current) return null;
  return (
    <div className="absolute bottom-16 left-0 right-0 flex justify-center px-4 z-20 pointer-events-none">
      <div className="bg-black/80 backdrop-blur-sm rounded-xl px-4 py-2 max-w-[90%] text-center">
        <p className="text-white font-['Cairo'] text-[14px] font-semibold leading-relaxed"
          dir="rtl" style={{ textShadow: "0 1px 4px rgba(0,0,0,0.9)" }}>
          {current.text}
        </p>
      </div>
    </div>
  );
}

/* ══════════════════════════════════ NATIVE HLS PLAYER ═══════ */
function NativeHLSPlayer({
  src, onRealQuality, onTimeUpdate, onFail,
}: {
  src: string;
  onRealQuality?: (q: string) => void;
  onTimeUpdate?: (t: number) => void;
  onFail?: () => void;
}) {
  const videoRef    = useRef<HTMLVideoElement>(null);
  const hlsRef      = useRef<Hls | null>(null);
  const hideTimer   = useRef<ReturnType<typeof setTimeout> | null>(null);
  const progressRef = useRef<HTMLDivElement>(null);

  const [loading,      setLoading]      = useState(true);
  const [error,        setError]        = useState<string | null>(null);
  const [isPlaying,    setIsPlaying]    = useState(false);
  const [currentTime,  setCurrentTime]  = useState(0);
  const [duration,     setDuration]     = useState(0);
  const [buffered,     setBuffered]     = useState(0);
  const [muted,        setMuted]        = useState(false);
  const [showControls, setShowControls] = useState(true);
  const [isFs,         setIsFs]         = useState(false);
  const touchHandledRef = useRef(false);

  /* ── Control visibility ── */
  function scheduleHide() {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowControls(false), 4500);
  }
  /* Mouse move → show + auto-hide */
  function handleMouseMove() {
    if (touchHandledRef.current) return;
    setShowControls(true);
    scheduleHide();
  }
  /* Touch → TOGGLE (tap to show, tap again to hide, no auto-hide) */
  function handleTouchStart() {
    touchHandledRef.current = true;
    setTimeout(() => { touchHandledRef.current = false; }, 600);
    if (hideTimer.current) clearTimeout(hideTimer.current);
    setShowControls(prev => !prev);
  }
  /* Click (mouse only, not touch) → play/pause */
  function handleClick() {
    if (touchHandledRef.current) return;
    togglePlay();
  }

  /* ── Fullscreen ── */
  useEffect(() => {
    const fn = () => setIsFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  function toggleFs() {
    const el = videoRef.current?.closest("[data-hls-container]") as HTMLElement | null || videoRef.current;
    if (!el) return;
    !document.fullscreenElement
      ? el.requestFullscreen?.().catch(() => {})
      : document.exitFullscreen?.().catch(() => {});
  }

  /* ── Load source ── */
  const loadSource = useCallback(async () => {
    const video = videoRef.current;
    if (!video) return;

    if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
    video.src = "";
    setLoading(true);
    setError(null);
    setCurrentTime(0);
    setDuration(0);
    setIsPlaying(false);

    let m3u8Url = src;

    /* ── AnimeGG / mp4upload CDN → non-standard port; play DIRECT in browser ── */
    if (src.includes("animegg.org/play/") || src.includes("vidcache.net") ||
        (src.includes("mp4upload.com") && !src.includes("www.mp4upload.com"))) {
      video.src = src;
      video.load();
      const onMeta = () => {
        setLoading(false);
        video.play().catch(() => {});
        setShowControls(true);
        scheduleHide();
      };
      const onErr = () => {
        setLoading(false);
        setError("تعذّر تشغيل هذا المصدر مباشرةً");
      };
      video.addEventListener("loadedmetadata", onMeta, { once: true });
      video.addEventListener("error", onErr, { once: true });
      return;
    }

    /* ── Direct MP4/MKV via video-proxy (streamtape, sendvid IP-tied, workers.dev CDN) ── */
    const isDirectMp4 = src.includes("streamtape.com") || src.includes("sendvid.com")
      || src.includes("videos2.sendvid.com") || src.includes("video-proxy?")
      || src.includes("workers.dev");
    if (isDirectMp4) {
      const proxyUrl = src.includes("video-proxy?") ? src
        : `/api/anime/video-proxy?url=${encodeURIComponent(src)}&ref=${encodeURIComponent(src)}`;
      video.src = proxyUrl;
      video.load();
      let resolved = false;
      const cleanup = () => {
        resolved = true;
        clearTimeout(loadTimer);
        video.removeEventListener("loadedmetadata", onMeta);
        video.removeEventListener("error", onErr);
      };
      const onMeta = () => {
        if (resolved) return;
        cleanup();
        setLoading(false);
        video.play().catch(() => {});
        setShowControls(true);
        scheduleHide();
      };
      const onErr = () => {
        if (resolved) return;
        cleanup();
        setLoading(false);
        setError("فشل تشغيل المصدر — جارٍ تجربة المصدر التالي…");
        setTimeout(() => onFail?.(), 1200);
      };
      // Timeout: if no metadata after 9s, fail gracefully
      const loadTimer = setTimeout(() => {
        if (resolved) return;
        video.src = "";
        onErr();
      }, 9000);
      video.addEventListener("loadedmetadata", onMeta, { once: true });
      video.addEventListener("error", onErr, { once: true });
      return;
    }

    /* animex-player → fetch animex-source to get fresh m3u8 raw URL
       CDN (uwucdn.top) has CORS:* and allows browser IPs freely — load directly
       without server-side hls-proxy (which gets blocked by Cloudflare) */
    if (src.includes("/animex-player")) {
      try {
        const qs = src.includes("?") ? src.split("?")[1] : "";
        const params = new URLSearchParams(qs);
        params.set("_t", String(Date.now()));
        const sourceApi = `/api/anime/animex-source?${params.toString()}`;
        const r = await fetch(sourceApi, {
          cache: "no-store",
          signal: AbortSignal.timeout(18000),
        });
        if (!r.ok) {
          const d = await r.json().catch(() => ({}));
          setError((d as any).error || `فشل جلب المصدر (${r.status})`);
          setLoading(false);
          return;
        }
        const data = await r.json() as { proxyUrl?: string; rawUrl?: string; quality?: string };
        // Use proxyUrl first — hls-proxy adds required Referer header for CDN authentication.
        // rawUrl as fallback in case proxy is unavailable.
        const hlsUrl = data.proxyUrl || data.rawUrl;
        if (!hlsUrl) { setError("لا يوجد رابط HLS من AnimeX"); setLoading(false); return; }
        m3u8Url = hlsUrl;
        if (data.quality && onRealQuality) onRealQuality(data.quality);
      } catch (ex: any) {
        setError("خطأ في الاتصال بخادم AnimeX");
        setLoading(false);
        return;
      }
    }

    /* Init hls.js or native HLS */
    if (Hls.isSupported()) {
      const hls = new Hls({
        enableWorker: false,
        lowLatencyMode: false,
        maxBufferLength: 30,
        xhrSetup(xhr) { xhr.withCredentials = false; },
      });
      hlsRef.current = hls;
      hls.loadSource(m3u8Url);
      hls.attachMedia(video);
      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        if (hlsRef.current !== hls) return; // stale instance — ignore
        setError(null);
        setLoading(false);
        video.play().catch(() => {});
        setShowControls(true);
        scheduleHide();
      });
      hls.on(Hls.Events.ERROR, (_, data) => {
        if (hlsRef.current !== hls) return; // stale instance — ignore
        if (data.fatal) {
          setError("فشل تحميل البث — جارٍ تجربة المصدر التالي…");
          setLoading(false);
          setTimeout(() => onFail?.(), 1500);
        }
      });
    } else if (video.canPlayType("application/vnd.apple.mpegurl")) {
      video.src = m3u8Url;
      video.addEventListener("loadedmetadata", () => {
        setLoading(false);
        video.play().catch(() => {});
      }, { once: true });
      video.addEventListener("error", () => {
        setError("فشل التشغيل على هذا المتصفح");
        setLoading(false);
      }, { once: true });
    } else {
      setError("المتصفح لا يدعم تشغيل HLS — جرّب Chrome أو Firefox");
      setLoading(false);
    }
  }, [src, onRealQuality]);

  useEffect(() => {
    loadSource();
    return () => {
      if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
      if (hideTimer.current) clearTimeout(hideTimer.current);
    };
  }, [loadSource]);

  /* ── Video event listeners ── */
  useEffect(() => {
    const video = videoRef.current;
    if (!video) return;

    const onPlay    = () => setIsPlaying(true);
    const onPause   = () => setIsPlaying(false);
    const onTime    = () => {
      setCurrentTime(video.currentTime);
      if (video.buffered.length > 0) setBuffered(video.buffered.end(video.buffered.length - 1));
      onTimeUpdate?.(video.currentTime);
    };
    const onLoaded  = () => setDuration(video.duration);
    const onWaiting = () => setLoading(true);
    const onPlaying = () => setLoading(false);

    video.addEventListener("play",          onPlay);
    video.addEventListener("pause",         onPause);
    video.addEventListener("timeupdate",    onTime);
    video.addEventListener("durationchange",onLoaded);
    video.addEventListener("waiting",       onWaiting);
    video.addEventListener("playing",       onPlaying);

    return () => {
      video.removeEventListener("play",          onPlay);
      video.removeEventListener("pause",         onPause);
      video.removeEventListener("timeupdate",    onTime);
      video.removeEventListener("durationchange",onLoaded);
      video.removeEventListener("waiting",       onWaiting);
      video.removeEventListener("playing",       onPlaying);
    };
  }, []);

  function togglePlay() {
    const v = videoRef.current;
    if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
    setShowControls(true);
  }

  function toggleMute() {
    const v = videoRef.current;
    if (!v) return;
    v.muted = !v.muted;
    setMuted(v.muted);
  }

  function seek(e: React.MouseEvent | React.TouchEvent) {
    const bar = progressRef.current;
    const v   = videoRef.current;
    if (!bar || !v || !duration) return;
    const rect = bar.getBoundingClientRect();
    const clientX = "touches" in e ? e.touches[0].clientX : e.clientX;
    const frac = Math.max(0, Math.min(1, (clientX - rect.left) / rect.width));
    v.currentTime = frac * duration;
    setCurrentTime(frac * duration);
    setShowControls(true);
  }

  function skipSeconds(delta: number) {
    const v = videoRef.current;
    if (!v) return;
    v.currentTime = Math.max(0, Math.min(duration, v.currentTime + delta));
    setShowControls(true);
  }

  const pct    = duration > 0 ? (currentTime / duration) * 100 : 0;
  const bufPct = duration > 0 ? (buffered  / duration) * 100 : 0;

  function retry() {
    setError(null);
    loadSource();
  }

  return (
    <div
      data-hls-container
      className="relative w-full h-full bg-black overflow-hidden select-none"
      onMouseMove={handleMouseMove}
      onTouchStart={handleTouchStart}
      onClick={handleClick}
    >
      <video
        ref={videoRef}
        className="w-full h-full object-contain"
        playsInline
        preload="metadata"
      />

      {/* ── Loading spinner ── */}
      {(loading && !error) && (
        <div className="absolute inset-0 flex items-center justify-center z-10 pointer-events-none">
          <motion.div
            className="w-12 h-12 rounded-full border-2 border-violet-500/20 border-t-violet-400"
            animate={{ rotate: 360 }}
            transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }}
          />
        </div>
      )}

      {/* ── Error state ── */}
      {error && (
        <div
          className="absolute inset-0 flex flex-col items-center justify-center gap-5 z-20 pointer-events-auto"
          style={{ background: "radial-gradient(ellipse at 50% 50%, rgba(90,10,10,0.18) 0%, rgba(0,0,0,0.97) 65%)" }}
          onClick={e => e.stopPropagation()}
          onTouchStart={e => e.stopPropagation()}
        >
          <div className="w-16 h-16 rounded-full border border-red-500/20 flex items-center justify-center"
            style={{ background: "rgba(239,68,68,0.07)" }}>
            <AlertTriangle className="w-7 h-7 text-red-400/60" />
          </div>
          <div className="text-center px-10">
            <p className="text-white/65 text-[15px] font-black font-['Cairo']">تعذّر تحميل الفيديو</p>
            <p className="text-white/28 text-[11px] mt-2 font-['Cairo'] leading-relaxed">{error}</p>
          </div>
          <button
            onClick={retry}
            className="flex items-center gap-2 px-6 py-3 rounded-2xl text-white/75 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-all"
            style={{ background: "rgba(255,255,255,0.08)", border: "1px solid rgba(255,255,255,0.13)" }}
          >
            <RefreshCw className="w-4 h-4" /> إعادة المحاولة
          </button>
        </div>
      )}

      {/* ── Controls overlay ── */}
      <AnimatePresence>
        {showControls && !loading && !error && (
          <motion.div
            key="hls-ctrl"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.18 }}
            className="absolute inset-0 z-10 flex flex-col pointer-events-none"
            style={{
              background: [
                "linear-gradient(to bottom, rgba(0,0,0,0.62) 0%, rgba(0,0,0,0) 22%)",
                "linear-gradient(to top,   rgba(0,0,0,0.9) 0%, rgba(0,0,0,0.42) 30%, rgba(0,0,0,0) 58%)",
              ].join(", "),
            }}
          >
            {/* CENTER: skip + play/pause */}
            <div className="flex-1 flex items-center justify-between px-7 pointer-events-auto">
              {/* ← 10s back */}
              <button
                onClick={e => { e.stopPropagation(); skipSeconds(-10); }}
                onTouchStart={e => e.stopPropagation()}
                className="flex flex-col items-center gap-1.5 active:scale-90 transition-transform"
              >
                <div
                  className="flex items-center justify-center rounded-full"
                  style={{ width: 54, height: 54, background: "rgba(0,0,0,0.28)", backdropFilter: "blur(8px)", border: "1px solid rgba(255,255,255,0.12)" }}
                >
                  <SkipBack className="w-5 h-5 text-white/85" />
                </div>
                <span className="text-white/42 text-[9px] font-bold font-mono tracking-widest">-10</span>
              </button>

              {/* ▶/⏸ center */}
              <button
                onClick={e => { e.stopPropagation(); togglePlay(); }}
                onTouchStart={e => e.stopPropagation()}
                className="active:scale-90 transition-transform"
              >
                <div
                  className="flex items-center justify-center rounded-full shadow-2xl"
                  style={{
                    width: 72, height: 72,
                    background: "rgba(255,255,255,0.13)",
                    backdropFilter: "blur(18px) saturate(160%)",
                    border: "1.5px solid rgba(255,255,255,0.24)",
                    boxShadow: "0 8px 32px rgba(0,0,0,0.45)",
                  }}
                >
                  {isPlaying
                    ? <Pause className="w-7 h-7 text-white fill-white" />
                    : <Play  className="w-7 h-7 text-white fill-white ml-1" />}
                </div>
              </button>

              {/* → 10s forward */}
              <button
                onClick={e => { e.stopPropagation(); skipSeconds(10); }}
                onTouchStart={e => e.stopPropagation()}
                className="flex flex-col items-center gap-1.5 active:scale-90 transition-transform"
              >
                <div
                  className="flex items-center justify-center rounded-full"
                  style={{ width: 54, height: 54, background: "rgba(0,0,0,0.28)", backdropFilter: "blur(8px)", border: "1px solid rgba(255,255,255,0.12)" }}
                >
                  <SkipForward className="w-5 h-5 text-white/85" />
                </div>
                <span className="text-white/42 text-[9px] font-bold font-mono tracking-widest">+10</span>
              </button>
            </div>

            {/* BOTTOM: progress + controls row */}
            <div
              className="pointer-events-auto px-4 pb-4 space-y-2"
              onTouchStart={e => e.stopPropagation()}
            >
              {/* Progress track */}
              <div
                ref={progressRef}
                className="relative flex items-center cursor-pointer"
                style={{ height: 36 }}
                onMouseDown={seek}
                onTouchStart={e => { e.stopPropagation(); seek(e); }}
              >
                <div className="relative w-full rounded-full" style={{ height: 3, background: "rgba(255,255,255,0.15)" }}>
                  <div className="absolute inset-y-0 left-0 rounded-full" style={{ width: `${bufPct}%`, background: "rgba(255,255,255,0.22)" }} />
                  <div
                    className="absolute inset-y-0 left-0 rounded-full"
                    style={{ width: `${pct}%`, background: "linear-gradient(90deg, #7c3aed 0%, #c084fc 100%)" }}
                  />
                </div>
                {/* Thumb */}
                <div
                  className="absolute rounded-full bg-white"
                  style={{
                    width: 14, height: 14,
                    left: `${pct}%`, top: "50%",
                    transform: "translate(-50%, -50%)",
                    boxShadow: "0 0 0 3px rgba(167,139,250,0.35), 0 2px 8px rgba(0,0,0,0.55)",
                  }}
                />
              </div>

              {/* Controls row */}
              <div className="flex items-center gap-2.5">
                <button
                  onClick={e => { e.stopPropagation(); togglePlay(); }}
                  className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
                  style={{ background: "rgba(255,255,255,0.1)", backdropFilter: "blur(8px)", border: "1px solid rgba(255,255,255,0.12)" }}
                >
                  {isPlaying
                    ? <Pause className="w-4 h-4 text-white fill-white" />
                    : <Play  className="w-4 h-4 text-white fill-white" />}
                </button>

                <span className="text-white/75 text-[12px] font-mono tabular-nums font-semibold shrink-0 tracking-tight">
                  {fmtTime(currentTime)} / {fmtTime(duration)}
                </span>

                <div className="flex-1" />

                <button
                  onClick={e => { e.stopPropagation(); toggleMute(); }}
                  className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
                  style={{ background: "rgba(255,255,255,0.1)", backdropFilter: "blur(8px)", border: "1px solid rgba(255,255,255,0.12)" }}
                >
                  {muted ? <VolumeX className="w-4 h-4 text-white/62" /> : <Volume2 className="w-4 h-4 text-white/62" />}
                </button>

                <button
                  onClick={e => { e.stopPropagation(); toggleFs(); }}
                  className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
                  style={{ background: "rgba(255,255,255,0.1)", backdropFilter: "blur(8px)", border: "1px solid rgba(255,255,255,0.12)" }}
                >
                  {isFs ? <Minimize2 className="w-4 h-4 text-white/62" /> : <Maximize2 className="w-4 h-4 text-white/62" />}
                </button>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
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
            <span className="text-emerald-400/70 text-[10px] font-bold font-['Cairo']">ميغا · بدون إعلانات</span>
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
  title, cover, ep, totalEps, animeTitle,
  initialServer,
  onBack, onNextEp, onPrevEp, onChangeQuality, onTierExhausted,
}: {
  servers: string[]; quality: Quality; allServers: Record<Quality, string[]>;
  title: string; cover: string; ep: number; totalEps: number; animeTitle: string;
  initialServer?: number;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
  onChangeQuality: (q: Quality) => void;
  onTierExhausted?: () => void;
}) {
  const [currentServer, setCurrentServer] = useState(initialServer ?? 0);
  const [showQuality,  setShowQuality]    = useState(false);
  const [fs,           setFs]             = useState(false);
  const [realQuality,  setRealQuality]    = useState<string | null>(null);
  const [hlsTime,      setHlsTime]        = useState(0);
  const isFirstQualityMount = useRef(true);

  /* Detect if all quality tiers have the same server list (flat mode → hide quality picker) */
  const q1 = allServers["1080p FHD"] || [];
  const q2 = allServers["720p HD"]   || [];
  const q3 = allServers["360p SD"]   || [];
  const allQualityIdentical =
    q1.length > 0 &&
    q1.length === q2.length && q1.length === q3.length &&
    q1.every((u, i) => u === q2[i] && u === q3[i]);

  /* ── Subtitle state ── */
  const [subState,    setSubState]    = useState<"idle"|"loading"|"ready"|"none">("idle");
  const [subCues,     setSubCues]     = useState<SubCue[]>([]);
  const [subLang,     setSubLang]     = useState<string | null>(null);
  const [subRunning,  setSubRunning]  = useState(false);
  const [subElapsed,  setSubElapsed]  = useState(0);
  const [subOffset,   setSubOffset]   = useState(0);
  const subStartedAt  = useRef<number | null>(null);
  const subTimerRef   = useRef<ReturnType<typeof setInterval> | null>(null);
  const [showSubPanel, setShowSubPanel] = useState(false);

  const currentUrl = servers[currentServer] || "";
  const currentInfo = getServerInfo(currentUrl, currentServer);

  /* ── Stable HLS callbacks — must not recreate on every render or HLS restarts ── */
  const handleRealQuality = useCallback((q: string) => setRealQuality(q), []);
  const handleHlsTime     = useCallback((t: number) => setHlsTime(t), []);

  /* ── Reset on quality tier change only — do NOT reset when new servers are appended
     to the same tier (that would bounce back to server 0 mid-playback). ── */
  useEffect(() => {
    if (isFirstQualityMount.current) { isFirstQualityMount.current = false; return; }
    setCurrentServer(0);
    setRealQuality(null);
  }, [quality]);

  /* ── Fullscreen listener ── */
  useEffect(() => {
    const fn = () => setFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  function toggleFs() {
    const el = document.getElementById("nova-player");
    if (!el) return;
    !document.fullscreenElement
      ? el.requestFullscreen?.().catch(() => {})
      : document.exitFullscreen?.().catch(() => {});
  }

  /* ── Subtitle timer ── */
  useEffect(() => {
    if (subTimerRef.current) clearInterval(subTimerRef.current);
    if (subRunning && subStartedAt.current !== null) {
      subTimerRef.current = setInterval(() => {
        const e = (Date.now() - subStartedAt.current!) / 1000 + subOffset;
        setSubElapsed(e);
      }, 200);
    }
    return () => { if (subTimerRef.current) clearInterval(subTimerRef.current); };
  }, [subRunning, subOffset]);

  function startSubTimer() {
    subStartedAt.current = Date.now() - subOffset * 1000;
    setSubRunning(true);
  }
  function pauseSubTimer() { setSubRunning(false); }
  function adjustOffset(delta: number) {
    setSubOffset(o => {
      const newOff = o + delta;
      if (subStartedAt.current !== null) {
        subStartedAt.current = Date.now() - newOff * 1000;
      }
      return newOff;
    });
  }

  /* ── Fetch subtitles ── */
  async function fetchSubtitles() {
    if (subState === "loading" || subState === "ready") return;
    setSubState("loading");
    setShowSubPanel(true);
    try {
      const params = new URLSearchParams({ title: animeTitle, ep: String(ep) });
      const r = await fetch(`/api/anime/subtitles?${params}`);
      if (!r.ok) throw new Error("HTTP " + r.status);
      const d = await r.json() as { lang: string | null; content: string | null };
      if (!d.content) { setSubState("none"); return; }
      const cues = parseSrt(d.content);
      if (!cues.length) { setSubState("none"); return; }
      setSubCues(cues);
      setSubLang(d.lang);
      setSubState("ready");
      setShowSubPanel(true);
    } catch {
      setSubState("none");
    }
  }

  /* ── Auto-load subtitles on mount (silent — no panel popup until ready) ── */
  useEffect(() => {
    const t = setTimeout(async () => {
      if (subState !== "idle") return;
      setSubState("loading");
      try {
        const params = new URLSearchParams({ title: animeTitle, ep: String(ep) });
        const r = await fetch(`/api/anime/subtitles?${params}`);
        if (!r.ok) { setSubState("none"); return; }
        const d = await r.json() as { lang: string | null; content: string | null };
        if (!d.content) { setSubState("none"); return; }
        const cues = parseSrt(d.content);
        if (!cues.length) { setSubState("none"); return; }
        setSubCues(cues);
        setSubLang(d.lang);
        setSubState("ready");
        // Silently activate subtitles — panel stays hidden unless user opens it
      } catch { setSubState("none"); }
    }, 1800);
    return () => clearTimeout(t);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [animeTitle, ep]);

  function tryNextServer() {
    if (currentServer + 1 < servers.length) {
      setCurrentServer(s => s + 1);
      setRealQuality(null);
    } else {
      const currentTierIdx = QUALITY_LABELS.indexOf(quality);
      for (let i = currentTierIdx + 1; i < QUALITY_LABELS.length; i++) {
        if ((allServers[QUALITY_LABELS[i]]?.length || 0) > 0) {
          onChangeQuality(QUALITY_LABELS[i]);
          return;
        }
      }
      // No lower tier has sources yet — signal Watch to retry when SSE delivers more
      onTierExhausted?.();
    }
  }

  function tryPrevServer() {
    if (currentServer > 0) {
      setCurrentServer(s => s - 1);
      setRealQuality(null);
    }
  }

  /* ── Mega.nz embed → render dedicated player (iframe sandboxed, no ads, no exit) ── */
  if (currentUrl && currentUrl.includes("mega.nz/embed")) {
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

  return (
    <motion.div id="nova-player"
      className="fixed inset-0 z-50 bg-black overflow-hidden"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      transition={{ duration: 0.2 }}
      dir="rtl"
    >
      {/* ══ VIDEO FILLS ENTIRE SCREEN ══ */}
      <div className="absolute inset-0">
        {currentUrl && (
          <>
            <NativeHLSPlayer
              key={`hls-${currentUrl}-${currentServer}`}
              src={currentUrl}
              onRealQuality={handleRealQuality}
              onTimeUpdate={handleHlsTime}
              onFail={tryNextServer}
            />
            {subState === "ready" && subCues.length > 0 && (
              <SubtitleOverlay cues={subCues} elapsed={hlsTime + subOffset} />
            )}
          </>
        )}
      </div>

      {/* ══ FLOATING PANELS (absolute z-30) ══ */}

      <AnimatePresence>
        {showQuality && (
          <motion.div key="qpick"
            initial={{ opacity: 0, scale: 0.95, y: -6 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.95, y: -6 }}
            transition={{ duration: 0.15 }}
            className="absolute top-[68px] left-0 right-0 z-30 flex justify-center px-4">
            <div className="rounded-2xl px-4 py-3 flex gap-3 shadow-2xl"
              style={{ background: "rgba(8,8,18,0.96)", backdropFilter: "blur(24px)", border: "1px solid rgba(255,255,255,0.1)" }}>
              <p className="text-white/28 text-[10px] font-['Cairo'] self-center ml-2">الجودة:</p>
              {QUALITY_LABELS.map(q => (
                <button key={q} onClick={() => { onChangeQuality(q); setShowQuality(false); }}
                  className="flex flex-col items-center gap-0.5 px-4 py-2.5 rounded-xl transition-all active:scale-90"
                  style={{
                    background: q === quality ? "rgba(124,58,237,0.88)" : "rgba(255,255,255,0.05)",
                    border: q === quality ? "1px solid rgba(139,92,246,0.48)" : "1px solid rgba(255,255,255,0.08)",
                    color: q === quality ? "white" : "rgba(255,255,255,0.42)",
                  }}>
                  <span className="font-black text-[16px] font-mono">{QUALITY_SHORT[q]}</span>
                  <span className="text-[8px] font-bold opacity-55 uppercase tracking-wider">{q.split(" ")[1]}</span>
                </button>
              ))}
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      <AnimatePresence>
        {showSubPanel && subState !== "idle" && (
          <motion.div key="subpanel"
            initial={{ opacity: 0, scale: 0.95, y: -6 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.95, y: -6 }}
            transition={{ duration: 0.15 }}
            className="absolute top-[68px] left-0 right-0 z-30 flex justify-center px-4">
            <div className="rounded-2xl px-5 py-4 shadow-2xl w-full max-w-sm" dir="rtl"
              style={{ background: "rgba(8,8,18,0.96)", backdropFilter: "blur(24px)", border: "1px solid rgba(255,255,255,0.1)" }}>

              {subState === "loading" && (
                <div className="flex items-center gap-3">
                  <Loader2 className="w-4 h-4 animate-spin text-violet-400 shrink-0" />
                  <p className="text-white/45 text-[12px] font-['Cairo']">جاري البحث عن ترجمة عربية…</p>
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
                <div className="flex flex-col gap-3">
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-2">
                      <div className="w-1.5 h-1.5 rounded-full bg-violet-400" />
                      <p className="text-white/62 text-[12px] font-['Cairo']">
                        {subLang === "ara" ? "ترجمة عربية" : "مترجمة تلقائياً"}
                        <span className="text-white/26 mr-1">· {subCues.length} سطر</span>
                      </p>
                    </div>
                    <button onClick={() => setShowSubPanel(false)} className="text-white/26 active:scale-90">
                      <X className="w-4 h-4" />
                    </button>
                  </div>

                  <div className="flex items-center gap-2 justify-center flex-wrap">
                    {([-2, -0.5] as number[]).map(d => (
                      <button key={d} onClick={() => adjustOffset(d)}
                        className="px-3 py-1.5 rounded-lg text-white/42 text-[11px] font-bold active:scale-90 transition-transform"
                        style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
                        {d > 0 ? "+" : ""}{d}s
                      </button>
                    ))}

                    <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl"
                      style={{ background: "rgba(124,58,237,0.18)", border: "1px solid rgba(124,58,237,0.28)" }}>
                      <div className="w-1.5 h-1.5 rounded-full bg-violet-400 animate-pulse" />
                      <span className="text-violet-200/82 text-[11px] font-['Cairo'] font-bold">مزامنة تلقائية</span>
                    </div>

                    {([0.5, 2] as number[]).map(d => (
                      <button key={d} onClick={() => adjustOffset(d)}
                        className="px-3 py-1.5 rounded-lg text-white/42 text-[11px] font-bold active:scale-90 transition-transform"
                        style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
                        +{d}s
                      </button>
                    ))}
                  </div>
                </div>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ══ TOP BAR OVERLAY ══ */}
      <div
        className="absolute top-0 left-0 right-0 flex items-center gap-3 px-4 z-20"
        style={{
          background: "linear-gradient(to bottom, rgba(0,0,0,0.92) 0%, rgba(0,0,0,0.55) 65%, transparent 100%)",
          paddingTop: "max(14px, env(safe-area-inset-top))",
          paddingBottom: 22,
        }}
      >
        <button onClick={onBack}
          className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
          style={{ background: "rgba(255,255,255,0.08)", border: "1px solid rgba(255,255,255,0.12)" }}>
          <ChevronRight className="w-5 h-5 text-white/72" />
        </button>

        <div className="flex-1 min-w-0">
          <p className="text-white text-[13px] font-black font-['Cairo'] truncate leading-tight">{title}</p>
          <div className="flex items-center gap-1.5 mt-0.5">
            <span className="text-white/34 text-[10px] font-['Cairo']">الحلقة {ep}</span>
            {!allQualityIdentical && (
              <>
                <span className="text-white/18 text-[8px]">·</span>
                <span className="text-violet-300/48 text-[10px] font-bold font-mono">{QUALITY_SHORT[quality]}</span>
              </>
            )}
            <span className="text-white/18 text-[8px]">·</span>
            <span className="text-white/28 text-[10px] font-['Cairo']">س{currentServer + 1}/{servers.length}</span>
            {currentInfo.isHls && (
              <span className="text-[8px] font-bold px-1.5 py-0.5 rounded font-mono"
                style={{ background: "rgba(124,58,237,0.2)", color: "rgba(196,181,253,0.72)", border: "1px solid rgba(124,58,237,0.22)" }}>
                HLS
              </span>
            )}
          </div>
        </div>

        <button onClick={fetchSubtitles}
          className="flex items-center gap-1.5 px-3 py-2 rounded-xl text-[11px] font-bold font-['Cairo'] transition-all active:scale-90 shrink-0"
          style={{
            background: subState === "ready" ? "rgba(124,58,237,0.88)" : "rgba(255,255,255,0.07)",
            border: `1px solid ${subState === "ready" ? "rgba(139,92,246,0.5)" : "rgba(255,255,255,0.1)"}`,
            color: subState === "ready" ? "white"
              : subState === "loading" ? "rgba(167,139,250,0.68)"
              : subState === "none" ? "rgba(255,255,255,0.2)"
              : "rgba(255,255,255,0.52)",
          }}>
          <Subtitles className={`w-3.5 h-3.5 ${subState === "loading" ? "animate-pulse" : ""}`} />
          <span>ترجمة</span>
        </button>

        {!allQualityIdentical && (
          <button onClick={() => setShowQuality(s => !s)}
            className="flex items-center gap-1.5 px-3 py-2 rounded-xl text-[11px] font-bold font-mono transition-all active:scale-90 shrink-0"
            style={{
              background: showQuality ? "rgba(124,58,237,0.88)" : "rgba(255,255,255,0.07)",
              border: `1px solid ${showQuality ? "rgba(139,92,246,0.5)" : "rgba(255,255,255,0.1)"}`,
              color: showQuality ? "white" : "rgba(255,255,255,0.52)",
            }}>
            <Settings className="w-3.5 h-3.5" />
            {QUALITY_SHORT[quality]}
          </button>
        )}

        {realQuality && (
          <div className="px-2 py-1 rounded-lg shrink-0"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <span className="text-[10px] font-bold font-mono text-white/36">{realQuality}</span>
          </div>
        )}

        <button onClick={toggleFs}
          className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
          style={{ background: "rgba(255,255,255,0.07)", border: "1px solid rgba(255,255,255,0.1)" }}>
          {fs ? <Minimize2 className="w-4 h-4 text-white/52" /> : <Maximize2 className="w-4 h-4 text-white/52" />}
        </button>
      </div>

      {/* ══ BOTTOM BAR OVERLAY ══ */}
      <div
        className="absolute bottom-0 left-0 right-0 flex items-center justify-between px-4 z-20 gap-2"
        style={{
          background: "linear-gradient(to top, rgba(0,0,0,0.92) 0%, rgba(0,0,0,0.55) 65%, transparent 100%)",
          paddingTop: 22,
          paddingBottom: "max(16px, env(safe-area-inset-bottom))",
        }}
      >
        <button onClick={onPrevEp} disabled={ep <= 1}
          className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all shrink-0"
          style={{ color: "rgba(255,255,255,0.4)", opacity: ep <= 1 ? 0.18 : 1 }}>
          <ChevronRight className="w-4 h-4" /> السابقة
        </button>

        <div className="flex items-center gap-1.5 overflow-x-auto flex-1 justify-center" style={{ scrollbarWidth: "none" }}>
          {servers.map((url, i) => {
            const info = getServerInfo(url, i);
            const isActive = i === currentServer;
            return (
              <button key={i} onClick={() => { setCurrentServer(i); setRealQuality(null); }}
                className="flex items-center gap-1 px-2.5 py-1.5 rounded-xl text-[10px] font-bold font-['Cairo'] whitespace-nowrap transition-all active:scale-90 shrink-0"
                style={{
                  background: isActive ? "rgba(124,58,237,0.85)" : "rgba(255,255,255,0.07)",
                  border: isActive ? "1px solid rgba(139,92,246,0.42)" : "1px solid rgba(255,255,255,0.1)",
                  color: isActive ? "rgba(255,255,255,0.94)" : "rgba(255,255,255,0.36)",
                }}>
                <MonitorPlay className="w-3 h-3 shrink-0" />
                {info.label}
              </button>
            );
          })}
        </div>

        <button onClick={onNextEp} disabled={ep >= totalEps}
          className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all shrink-0 flex-row-reverse"
          style={{ color: "rgba(255,255,255,0.4)", opacity: ep >= totalEps ? 0.18 : 1 }}>
          <ChevronLeft className="w-4 h-4" /> التالية
        </button>
      </div>

    </motion.div>
  );
}

/* ══════════════════════════════════ WATCH PAGE ══════════════ */
const EMPTY_SSE: Record<Quality, string[]> = { "1080p FHD": [], "720p HD": [], "360p SD": [] };

export default function WatchPage() {
  const [, navigate] = useLocation();

  const sp           = useRef(new URLSearchParams(window.location.search)).current;
  const animeId      = parseInt(sp.get("anime") || "0");
  const ep           = parseInt(sp.get("ep") || "1");
  const titleParam   = sp.get("title") || "";
  const englishParam = sp.get("english") || "";

  const [anime,        setAnime]       = useState<any>(null);
  const [sseServers,   setSseServers]  = useState<Record<Quality, string[]>>(EMPTY_SSE);
  const [quality,      setQuality]     = useState<Quality>("720p HD");
  const [initialSrv,   setInitialSrv]  = useState(0);
  const [phase,        setPhase]       = useState<"picker" | "player" | "nosrc">("picker");
  const [sseDone,      setSseDone]     = useState(false);
  const fetchStarted   = useRef(false);
  const sseRef         = useRef<EventSource | null>(null);
  const seenSseUrls    = useRef(new Set<string>());

  const title     = anime?.title?.english || anime?.title?.romaji || titleParam || "أنمي";
  const animeTitle = title;
  const totalEps  = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover     = anime?.coverImage?.large || "";

  /* All sources come from SSE only (no iframe/anipub sources) */
  const mergedServers = sseServers;

  const doFetchServers = useCallback((t: string, e: string) => {
    if (fetchStarted.current) return;
    fetchStarted.current = true;
    const params = new URLSearchParams({ title: t, english: e, ep: String(ep) });
    if (animeId) params.set("anilistId", String(animeId));

    /* SSE: sources-stream — stream directly to state as each source arrives */
    if (sseRef.current) sseRef.current.close();
    const es = new EventSource(`/api/anime/sources-stream?${params}`);
    sseRef.current = es;
    const closeTimer = setTimeout(() => { setSseDone(true); es.close(); }, 38000);
    es.onmessage = (ev) => {
      try {
        if (ev.data === "[DONE]") {
          setSseDone(true);
          clearTimeout(closeTimer);
          es.close();
          return;
        }
        const src = JSON.parse(ev.data) as {
          url: string; directUrl?: string; qualityRank?: number; site?: string; isEmbed?: boolean;
        };
        const playUrl = src.directUrl || src.url;
        if (!playUrl) return;
        if (seenSseUrls.current.has(playUrl)) return;
        seenSseUrls.current.add(playUrl);
        const rank = src.qualityRank ?? 2;
        const tier: Quality = rank >= 3 ? "1080p FHD" : rank >= 2 ? "720p HD" : "360p SD";
        setSseServers(prev => ({ ...prev, [tier]: [...prev[tier], playUrl] }));
      } catch {}
    };
    es.onerror = () => { clearTimeout(closeTimer); setSseDone(true); es.close(); };
  }, [ep, animeId]);

  /* Cleanup SSE on unmount */
  useEffect(() => () => { sseRef.current?.close(); }, []);

  useEffect(() => {
    if (!animeId) return;
    fetch("https://graphql.anilist.co", {
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
          if (!fetchStarted.current) {
            doFetchServers(d.title?.romaji || "", d.title?.english || "");
          }
        }
      })
      .catch(() => {});
  }, [animeId]);

  useEffect(() => {
    if (titleParam || englishParam) {
      doFetchServers(titleParam, englishParam);
    }
  }, []);

  /* Show nosrc only after SSE is fully done with no sources */
  useEffect(() => {
    if (!sseDone) return;
    const hasAny = QUALITY_LABELS.some(q => (mergedServers[q]?.length || 0) > 0);
    if (!hasAny) setPhase(prev => prev === "player" ? prev : "nosrc");
  }, [sseDone, mergedServers]);

  function goEp(n: number) {
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n), title: titleParam, english: englishParam })}`);
  }

  /* Back: use browser history (avoids push-loop with AnimeDetail/EpisodeList) */
  function handleBack() {
    window.history.back();
  }
  function handleRefresh() { window.location.reload(); }

  function handlePickServer(q: Quality, idx: number) {
    setQuality(q);
    setInitialSrv(idx);
    setPhase("player");
  }

  const servers = mergedServers[quality] || [];
  const streamDataForPicker: StreamData = { servers: mergedServers, total: servers.length };

  if (phase === "nosrc") return <NoSources onRefresh={handleRefresh} onBack={handleBack} />;

  if (phase === "picker") {
    return (
      <AnimatePresence mode="wait">
        <motion.div key="picker"
          initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -12 }}
          transition={{ duration: 0.22, ease: "easeOut" }} className="fixed inset-0">
          <ServerPicker
            cover={cover} title={title} ep={ep} sseDone={sseDone} totalEps={totalEps}
            streamData={streamDataForPicker}
            onPick={handlePickServer}
            onBack={handleBack}
            onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
            onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
          />
        </motion.div>
      </AnimatePresence>
    );
  }

  return (
    <AnimatePresence mode="wait">
      <motion.div key={`player-${quality}-${initialSrv}`} className="fixed inset-0">
        <EpisodePlayer
          servers={servers}
          quality={quality}
          allServers={mergedServers}
          initialServer={initialSrv}
          title={title}
          animeTitle={animeTitle}
          cover={cover} ep={ep} totalEps={totalEps}
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

import { useState, useEffect, useRef, useCallback, useMemo } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Pause, Loader2,
  AlertTriangle, RefreshCw, X, Maximize2, Minimize2,
  Settings, Subtitles, MonitorPlay, Tv2, Volume2, VolumeX,
  SkipBack, SkipForward,
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
  // AnimeX — raw uwucdn.top URL tagged with #animex fragment
  if (url.includes("#animex") || url.includes("animex-player") || url.includes("animex-source")) {
    return { label: "AnimeX", sublabel: "مترجم للعربية · HLS مباشر", isHls: true };
  }
  // AnimePahe via Miruro (uwucdn.top HLS — CORS:* open, no tag = AnimePahe)
  if (url.includes("uwucdn.top")) {
    return { label: "AnimePahe", sublabel: "جودة عالية · مترجم", isHls: true };
  }
  // FlixCloud via ReAnime.to — hls-proxy wrapped or raw flixcloud URL
  if (url.includes("flixcloud") || (url.includes("hls-proxy") && url.includes("flixcloud"))) {
    return { label: "Zoro · AniWave", sublabel: "جودة عالية · مترجم", isHls: true };
  }
  // AniPub — dub vs sub distinction
  if (url.includes("anipub.xyz/video/")) {
    if (url.endsWith("/dub")) return { label: "AniPub", sublabel: "مدبلج إنجليزي", isHls: false };
    if (url.endsWith("/sub")) return { label: "AniPub", sublabel: "مترجم إنجليزي", isHls: false };
    return { label: "AniPub", sublabel: "إنجليزي", isHls: false };
  }
  if (url.includes("anipub") || url.includes("gogoanime") || url.includes("gogocdn")) {
    return { label: "AniPub", sublabel: "مترجم إنجليزي", isHls: false };
  }
  // Direct video extracted from Arabic sources — route via video-proxy, play natively
  if (url.includes("streamtape.com") || url.includes("sendvid.com")
   || url.includes("/video-proxy?")) {
    return { label: "مصدر مباشر", sublabel: "عربي · تشغيل مباشر", isHls: true, isDirect: true };
  }
  // Any direct MP4 URL (e.g. AnimeGG play URLs, other direct extractions)
  if (url.match(/\.mp4([?#]|$)/i) && !url.includes(".m3u8")) {
    return { label: "مصدر مباشر", sublabel: "تشغيل مباشر", isHls: true, isDirect: true };
  }
  // Streamwish / Filemoon HLS extracted
  if (url.includes("streamwish") || url.includes("filemoon") || url.includes("animelek")
   || url.includes("wishfast") || url.includes("playerwish") || url.includes("asnwish")
   || url.includes("vidmoly")) {
    const isHlsUrl = url.includes(".m3u8") || url.includes("hls-proxy");
    return { label: "أنمي ليك", sublabel: isHlsUrl ? "عربي · جودة عالية" : "مترجم عربي", isHls: isHlsUrl };
  }
  // Bare m3u8 direct URL
  if (url.match(/\.m3u8([?#]|$)/i)) {
    return { label: "بث مباشر", sublabel: "جودة عالية", isHls: true };
  }
  // Generic hls-proxy fallback
  if (url.includes("hls-player") || url.includes("hls-proxy")) {
    return { label: "زورو · أنيويف", sublabel: "مترجم · جودة عالية", isHls: true };
  }
  // Shahiid Arabic embed hosts
  if (url.includes("shahiid") || url.includes("share4max") || url.includes("vidbm")
   || url.includes("uptostream") || url.includes("dood") || url.includes("voe.sx")
   || url.includes("megamax.me") || url.includes("leech.megamax") || url.includes("videa.hu")
   || url.includes("anime7u") || url.includes("vid4up")) {
    return { label: "شاهد أنمي", sublabel: "مترجم عربي", isHls: false };
  }
  // Fallback: treat as native playable if it looks like a direct video URL
  if (url.match(/^https?:\/\//i) && !url.includes("/embed") && !url.includes("/iframe")) {
    return { label: `مصدر ${idx + 1}`, sublabel: "عربي · تشغيل مباشر", isHls: true, isDirect: true };
  }
  return { label: `سيرفر ${idx + 1}`, sublabel: "مترجم عربي", isHls: false };
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

/* ══════════════════════════════════ SERVER PICKER ═══════════ */
function ServerPicker({
  cover, title, ep,
  streamData, onPick, onBack,
}: {
  cover: string; title: string; ep: number;
  streamData: StreamData;
  onPick: (q: Quality, idx: number) => void;
  onBack: () => void;
}) {
  /* Detect if all quality tiers have identical server lists → flat mode */
  const q1 = streamData.servers["1080p FHD"] || [];
  const q2 = streamData.servers["720p HD"]   || [];
  const q3 = streamData.servers["360p SD"]   || [];
  const allIdentical =
    q1.length > 0 &&
    q1.length === q2.length && q1.length === q3.length &&
    q1.every((u, i) => u === q2[i] && u === q3[i]);

  /* In flat mode use the 1080p tier as canonical, pick quality that has any servers */
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

  return (
    <div className="fixed inset-0 z-50 flex flex-col" dir="rtl"
      style={{ background: "radial-gradient(ellipse 90% 60% at 50% 0%, rgba(109,40,217,.18) 0%, #09090f 65%)" }}>

      <div className="flex items-center gap-3 px-4 shrink-0 z-10"
        style={{ paddingTop: "max(16px, env(safe-area-inset-top))", paddingBottom: 14 }}>
        <button onClick={onBack}
          className="w-10 h-10 rounded-2xl bg-white/7 border border-white/10 flex items-center justify-center active:scale-90 transition-transform shrink-0">
          <ChevronRight className="w-5 h-5 text-white/60" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-white text-[14px] font-black font-['Cairo'] truncate leading-tight">{title}</p>
          <p className="text-violet-300/50 text-[11px] font-['Cairo'] font-bold mt-0.5">الحلقة {ep} · اختر المصدر</p>
        </div>
        {cover && (
          <div className="relative shrink-0">
            <img src={cover} alt="" className="w-10 h-14 rounded-xl object-cover" />
            <div className="absolute inset-0 rounded-xl ring-1 ring-white/15" />
          </div>
        )}
      </div>

      <div className="h-px bg-gradient-to-r from-transparent via-white/8 to-transparent mx-4 mb-1" />

      <div className="flex-1 overflow-y-auto px-4 pt-3 space-y-6"
        style={{ paddingBottom: "max(20px, env(safe-area-inset-bottom))" }}>
        {allGroups.map(({ q, servers }) => (
          <div key={q}>
            {/* Quality section header — hidden in flat mode */}
            {!allIdentical && (
              <div className="flex items-center gap-3 mb-3">
                <div className="flex items-center gap-2 px-3 py-1 rounded-full bg-white/5 border border-white/8">
                  <span className="text-white font-black font-mono text-[16px] leading-none">{QUALITY_SHORT[q]}</span>
                  <span className="w-px h-3.5 bg-white/15" />
                  <span className="text-white/40 text-[10px] font-['Cairo'] font-bold">{QUALITY_AR[q]}</span>
                </div>
                <div className="flex-1 h-px bg-white/6" />
                <span className="text-white/18 text-[10px] font-['Cairo']">{servers.length} مصدر</span>
              </div>
            )}

            <div className="space-y-2.5">
              {servers.map((url, idx) => {
                const info = getServerInfo(url, idx);
                const globalIdx = flatRows.findIndex(r => r.q === q && r.idx === idx);
                const isAnimex = info.isHls;
                return (
                  <motion.button key={idx}
                    initial={{ opacity: 0, y: 14 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ delay: globalIdx * 0.055, duration: 0.3, ease: [0.22, 1, 0.36, 1] }}
                    onClick={() => onPick(q, idx)}
                    className="w-full text-right active:scale-[0.97] transition-transform"
                  >
                    <div className={`relative flex items-center gap-4 px-4 py-4 rounded-2xl overflow-hidden
                      ${isAnimex
                        ? "bg-gradient-to-l from-violet-950/70 to-[#0e0b1e] border border-violet-500/20"
                        : "bg-white/[0.04] border border-white/8"
                      }`}>
                      {isAnimex && (
                        <div className="absolute -top-4 -right-4 w-20 h-20 rounded-full bg-violet-600/20 blur-2xl pointer-events-none" />
                      )}
                      <div className={`relative w-11 h-11 rounded-2xl flex items-center justify-center shrink-0
                        ${isAnimex
                          ? "bg-violet-600/25 border border-violet-400/30"
                          : "bg-white/6 border border-white/10"}`}>
                        {isAnimex
                          ? <MonitorPlay className="w-5 h-5 text-violet-300" />
                          : <Tv2 className="w-5 h-5 text-blue-300/80" />}
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2">
                          <p className={`text-[15px] font-black font-['Cairo'] leading-tight
                            ${isAnimex ? "text-white" : "text-white/85"}`}>
                            {info.label}
                          </p>
                          {isAnimex && (
                            <span className="text-[9px] font-bold px-1.5 py-0.5 rounded-md bg-violet-500/30 text-violet-200 border border-violet-400/25 leading-none">
                              HLS مدمج
                            </span>
                          )}
                        </div>
                        <p className="text-white/35 text-[11px] font-['Cairo'] mt-0.5">{info.sublabel}</p>
                      </div>
                      <ChevronLeft className={`w-4 h-4 shrink-0 ${isAnimex ? "text-violet-400/60" : "text-white/20"}`} />
                    </div>
                  </motion.button>
                );
              })}
            </div>
          </div>
        ))}
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
  const [retrying,     setRetrying]     = useState(false);

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

    /* ── Direct MP4 via video-proxy (streamtape, sendvid IP-tied) ── */
    const isDirectMp4 = src.includes("streamtape.com") || src.includes("sendvid.com")
      || (src.includes(".mp4") && !src.includes("m3u8"));
    if (isDirectMp4) {
      const proxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(src)}&ref=${encodeURIComponent(src)}`;
      video.src = proxyUrl;
      video.load();
      const onMeta = () => {
        setLoading(false);
        video.play().catch(() => {});
        setShowControls(true);
        scheduleHide();
      };
      const onErr = () => {
        setLoading(false);
        if (onFail) {
          onFail();
        } else {
          setError("فشل تشغيل المصدر المباشر");
        }
      };
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
        // Use proxyUrl first — hls-proxy rewrites ALL URLs (segments + AES-128 key) through
        // seg-proxy, giving full server-side control. CDN allows server requests (HTTP 200).
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
          setLoading(false);
          if (onFail) {
            onFail();
          } else {
            setError("فشل تحميل البث — اضغط إعادة المحاولة");
          }
        }
      });
    } else if (video.canPlayType("application/vnd.apple.mpegurl")) {
      video.src = m3u8Url;
      video.addEventListener("loadedmetadata", () => {
        setLoading(false);
        video.play().catch(() => {});
      }, { once: true });
      video.addEventListener("error", () => {
        setLoading(false);
        if (onFail) {
          onFail();
        } else {
          setError("فشل التشغيل على هذا المتصفح");
        }
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
    setRetrying(true);
    setError(null);
    setTimeout(() => { setRetrying(false); loadSource(); }, 500);
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
      {error && !retrying && (
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

/* ══════════════════════════════════ EPISODE PLAYER ═════════ */
function EpisodePlayer({
  servers, quality, allServers,
  title, cover, ep, totalEps, animeTitle,
  initialServer,
  onBack, onNextEp, onPrevEp, onChangeQuality,
}: {
  servers: string[]; quality: Quality; allServers: Record<Quality, string[]>;
  title: string; cover: string; ep: number; totalEps: number; animeTitle: string;
  initialServer?: number;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
  onChangeQuality: (q: Quality) => void;
}) {
  const [currentServer, setCurrentServer] = useState(initialServer ?? 0);
  const [iframeLoaded, setIframeLoaded]   = useState(false);
  const [iframeErr,    setIframeErr]      = useState(false);
  const [retrying,     setRetrying]       = useState(false);
  const [showQuality,  setShowQuality]    = useState(false);
  const [fs,           setFs]             = useState(false);
  const [realQuality,  setRealQuality]    = useState<string | null>(null);
  const [hlsTime,      setHlsTime]        = useState(0);
  const retryCount = useRef(0);
  const retryTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
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

  /* ── Reset on quality/server-list change (skip first mount to preserve initialServer) ── */
  useEffect(() => {
    if (isFirstQualityMount.current) { isFirstQualityMount.current = false; return; }
    setCurrentServer(0);
    setIframeLoaded(false);
    setIframeErr(false);
    setRetrying(false);
    setRealQuality(null);
    retryCount.current = 0;
    if (retryTimer.current) clearTimeout(retryTimer.current);
  }, [quality, servers]);

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

  /* ── Iframe error handling ── */
  function handleIframeError() {
    if (retryCount.current >= 3) { setIframeErr(true); return; }
    retryCount.current++;
    setRetrying(true);
    retryTimer.current = setTimeout(() => {
      setRetrying(false);
      if (currentServer + 1 < servers.length) {
        setCurrentServer(s => s + 1);
        setIframeLoaded(false); setIframeErr(false);
      } else {
        setIframeErr(true);
      }
    }, 2000);
  }

  function tryNextServer() {
    if (retryTimer.current) clearTimeout(retryTimer.current);
    if (currentServer + 1 < servers.length) {
      setCurrentServer(s => s + 1);
      setIframeLoaded(false); setIframeErr(false); setRetrying(false);
      retryCount.current++;
    }
  }

  /* Auto-fallback from NativeHLSPlayer fatal error → advance to next server */
  function handleHlsFail() {
    if (retryTimer.current) clearTimeout(retryTimer.current);
    if (currentServer + 1 < servers.length) {
      setRetrying(true);
      retryTimer.current = setTimeout(() => {
        setRetrying(false);
        setCurrentServer(s => s + 1);
        setIframeLoaded(false); setIframeErr(false);
        retryCount.current++;
      }, 1200);
    } else {
      setIframeErr(true);
    }
  }
  function tryPrevServer() {
    if (retryTimer.current) clearTimeout(retryTimer.current);
    if (currentServer > 0) {
      setCurrentServer(s => s - 1);
      setIframeLoaded(false); setIframeErr(false); setRetrying(false);
    }
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
        {currentInfo.isHls && retrying && (
          <div className="absolute inset-0 flex flex-col items-center justify-center gap-4 bg-black z-10">
            <motion.div
              className="w-16 h-16 rounded-full border-[3px] border-violet-500/18 border-t-violet-500"
              animate={{ rotate: 360 }}
              transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }}
            />
            <p className="text-white/45 text-[13px] font-['Cairo']">الانتقال للسيرفر التالي…</p>
            <div className="w-36 h-0.5 rounded-full overflow-hidden" style={{ background: "rgba(255,255,255,0.08)" }}>
              <motion.div className="h-full rounded-full"
                style={{ background: "linear-gradient(90deg,#7c3aed,#a855f7)" }}
                initial={{ width: "0%" }} animate={{ width: "100%" }}
                transition={{ duration: 1.2, ease: "linear" }} />
            </div>
          </div>
        )}
        {currentInfo.isHls && currentUrl && !retrying && (
          <>
            <NativeHLSPlayer
              key={`hls-${currentUrl}-${currentServer}`}
              src={currentUrl}
              onRealQuality={handleRealQuality}
              onTimeUpdate={handleHlsTime}
              onFail={handleHlsFail}
            />
            {subState === "ready" && subCues.length > 0 && (
              <SubtitleOverlay cues={subCues} elapsed={hlsTime + subOffset} />
            )}
          </>
        )}

        {!currentInfo.isHls && (
          <>
            {!iframeLoaded && !iframeErr && !retrying && currentUrl && (
              <div className="absolute inset-0 flex flex-col items-center justify-center gap-3 bg-black pointer-events-none z-10">
                <motion.div
                  className="w-12 h-12 rounded-full border-2 border-violet-500/20 border-t-violet-400"
                  animate={{ rotate: 360 }}
                  transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }}
                />
                <p className="text-white/30 text-[11px] font-['Cairo']">جاري تحميل المشغّل…</p>
              </div>
            )}

            {retrying && (
              <div className="absolute inset-0 flex flex-col items-center justify-center gap-4 bg-black z-10">
                <motion.div
                  className="w-16 h-16 rounded-full border-[3px] border-violet-500/18 border-t-violet-500"
                  animate={{ rotate: 360 }}
                  transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }}
                />
                <p className="text-white/45 text-[13px] font-['Cairo']">الانتقال للسيرفر التالي…</p>
                <div className="w-36 h-0.5 rounded-full overflow-hidden" style={{ background: "rgba(255,255,255,0.08)" }}>
                  <motion.div className="h-full rounded-full"
                    style={{ background: "linear-gradient(90deg,#7c3aed,#a855f7)" }}
                    initial={{ width: "0%" }} animate={{ width: "100%" }}
                    transition={{ duration: 2, ease: "linear" }} />
                </div>
              </div>
            )}

            {iframeErr && (
              <div className="absolute inset-0 flex flex-col items-center justify-center gap-5 z-10"
                style={{ background: "radial-gradient(ellipse at 50% 50%, rgba(90,10,10,0.15) 0%, rgba(0,0,0,0.97) 60%)" }}>
                <div className="w-16 h-16 rounded-full border border-red-500/20 flex items-center justify-center"
                  style={{ background: "rgba(239,68,68,0.07)" }}>
                  <AlertTriangle className="w-7 h-7 text-red-400/60" />
                </div>
                <div className="text-center px-8">
                  <p className="text-white/55 text-[14px] font-black font-['Cairo']">فشل تحميل المصدر</p>
                  <p className="text-white/22 text-[11px] mt-1 font-['Cairo']">جُرّبت {retryCount.current} سيرفرات</p>
                </div>
                <div className="flex gap-3">
                  {currentServer > 0 && (
                    <button onClick={tryPrevServer}
                      className="flex items-center gap-2 px-4 py-2.5 rounded-2xl text-white/48 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform"
                      style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.1)" }}>
                      <ChevronRight className="w-4 h-4" /> السابق
                    </button>
                  )}
                  {currentServer + 1 < servers.length && (
                    <button onClick={tryNextServer}
                      className="flex items-center gap-2 px-4 py-2.5 rounded-2xl text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform"
                      style={{ background: "rgba(124,58,237,0.9)", border: "1px solid rgba(139,92,246,0.4)" }}>
                      <RefreshCw className="w-4 h-4" /> سيرفر آخر
                    </button>
                  )}
                </div>
              </div>
            )}

            {currentUrl && !retrying && !iframeErr && (
              <iframe
                key={`${currentUrl}-${currentServer}`}
                src={currentUrl}
                className="absolute inset-0 w-full h-full border-0"
                onLoad={() => setIframeLoaded(true)}
                onError={handleIframeError}
                sandbox="allow-scripts allow-same-origin allow-forms allow-presentation allow-pointer-lock"
                allow="autoplay; fullscreen; picture-in-picture; encrypted-media"
                allowFullScreen
              />
            )}

            {subState === "ready" && subRunning && (
              <SubtitleOverlay cues={subCues} elapsed={subElapsed} />
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

                    {currentInfo.isHls ? (
                      <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl"
                        style={{ background: "rgba(124,58,237,0.18)", border: "1px solid rgba(124,58,237,0.28)" }}>
                        <div className="w-1.5 h-1.5 rounded-full bg-violet-400 animate-pulse" />
                        <span className="text-violet-200/82 text-[11px] font-['Cairo'] font-bold">مزامنة تلقائية</span>
                      </div>
                    ) : !subRunning ? (
                      <button onClick={startSubTimer}
                        className="flex items-center gap-1.5 px-4 py-2 rounded-xl text-white text-[12px] font-bold font-['Cairo'] active:scale-90 transition-transform"
                        style={{ background: "rgba(124,58,237,0.88)", border: "1px solid rgba(139,92,246,0.4)" }}>
                        <Play className="w-3.5 h-3.5 fill-white" /> ابدأ الآن
                      </button>
                    ) : (
                      <button onClick={pauseSubTimer}
                        className="flex items-center gap-1.5 px-4 py-2 rounded-xl text-white text-[12px] font-bold font-['Cairo'] active:scale-90 transition-transform"
                        style={{ background: "rgba(124,58,237,0.48)", border: "1px solid rgba(139,92,246,0.3)" }}>
                        <Pause className="w-3.5 h-3.5 fill-white" /> إيقاف
                      </button>
                    )}

                    {([0.5, 2] as number[]).map(d => (
                      <button key={d} onClick={() => adjustOffset(d)}
                        className="px-3 py-1.5 rounded-lg text-white/42 text-[11px] font-bold active:scale-90 transition-transform"
                        style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
                        +{d}s
                      </button>
                    ))}
                  </div>

                  {!currentInfo.isHls && (
                    <p className="text-center text-white/22 text-[10px] font-['Cairo']">
                      اضغط "ابدأ الآن" عند بداية الفيديو للمزامنة
                    </p>
                  )}
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

        {!currentInfo.isHls && (
          <button onClick={toggleFs}
            className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
            style={{ background: "rgba(255,255,255,0.07)", border: "1px solid rgba(255,255,255,0.1)" }}>
            {fs ? <Minimize2 className="w-4 h-4 text-white/52" /> : <Maximize2 className="w-4 h-4 text-white/52" />}
          </button>
        )}
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
              <button key={i} onClick={() => {
                if (retryTimer.current) clearTimeout(retryTimer.current);
                setCurrentServer(i);
                setIframeLoaded(false); setIframeErr(false); setRetrying(false);
              }}
                className="flex items-center gap-1 px-2.5 py-1.5 rounded-xl text-[10px] font-bold font-['Cairo'] whitespace-nowrap transition-all active:scale-90 shrink-0"
                style={{
                  background: isActive
                    ? (info.isHls ? "rgba(124,58,237,0.85)" : "rgba(37,99,235,0.85)")
                    : "rgba(255,255,255,0.07)",
                  border: isActive
                    ? (info.isHls ? "1px solid rgba(139,92,246,0.42)" : "1px solid rgba(59,130,246,0.42)")
                    : "1px solid rgba(255,255,255,0.1)",
                  color: isActive ? "rgba(255,255,255,0.94)" : "rgba(255,255,255,0.36)",
                }}>
                {info.isHls
                  ? <MonitorPlay className="w-3 h-3 shrink-0" />
                  : <Tv2 className="w-3 h-3 shrink-0" />}
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
  const [streamData,   setStreamData]  = useState<StreamData | null>(null);
  const [sseServers,   setSseServers]  = useState<Record<Quality, string[]>>(EMPTY_SSE);
  const [quality,      setQuality]     = useState<Quality>("720p HD");
  const [initialSrv,   setInitialSrv]  = useState(0);
  const [phase,        setPhase]       = useState<"loading" | "picker" | "player" | "nosrc">("loading");
  const [loadingDone,  setLoadingDone] = useState(false);
  const [fetchDone,    setFetchDone]   = useState(false);
  const fetchStarted   = useRef(false);
  const sseRef         = useRef<EventSource | null>(null);
  const seenSseUrls    = useRef(new Set<string>());

  const title     = anime?.title?.english || anime?.title?.romaji || titleParam || "أنمي";
  const animeTitle = title;
  const totalEps  = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover     = anime?.coverImage?.large || "";

  /* Merge anipub-stream (primary) + sources-stream SSE (Arabic) into one quality map */
  const mergedServers = useMemo<Record<Quality, string[]>>(() => {
    const result: Record<Quality, string[]> = {
      "1080p FHD": [...(streamData?.servers["1080p FHD"] || [])],
      "720p HD":   [...(streamData?.servers["720p HD"]   || [])],
      "360p SD":   [...(streamData?.servers["360p SD"]   || [])],
    };
    for (const q of QUALITY_LABELS) {
      for (const url of sseServers[q]) {
        if (!result[q].includes(url)) result[q].push(url);
      }
    }
    return result;
  }, [streamData, sseServers]);

  const doFetchServers = useCallback((t: string, e: string) => {
    if (fetchStarted.current) return;
    fetchStarted.current = true;
    const params = new URLSearchParams({ title: t, english: e, ep: String(ep) });
    if (animeId) params.set("anilistId", String(animeId));

    /* Primary: anipub-stream (AnimeX · AnimePahe · FlixCloud) */
    fetch(`/api/anime/anipub-stream?${params}`)
      .then(r => { if (!r.ok) throw new Error(String(r.status)); return r.json(); })
      .then((d: StreamData) => { setStreamData(d); setFetchDone(true); })
      .catch(() => setFetchDone(true));

    /* Secondary SSE: sources-stream (shahiid · animelek · animegg) */
    if (sseRef.current) sseRef.current.close();
    const es = new EventSource(`/api/anime/sources-stream?${params}`);
    sseRef.current = es;
    const closeTimer = setTimeout(() => es.close(), 38000);
    es.onmessage = (ev) => {
      try {
        const src = JSON.parse(ev.data) as {
          url: string; directUrl?: string; qualityRank?: number; site?: string;
        };
        /* Accept sources we can play — either natively or via IframePlayer:
           - directUrl set (MP4 or HLS extracted server-side)
           - OR bare m3u8 URL
           - OR known embed-only host URL (plays via sandboxed IframePlayer) */
        const playUrl = src.directUrl || src.url;
        if (!playUrl) return;
        const KNOWN_IFRAME_HOSTS = [
          "share4max","megamax","vidmoly","asnwish","vidbm","uptostream",
          "playerwish","wishfast","streamvid","streamlare","anime7u","dsvplay",
          "vidnest.fun","vkvideo","yourupload","voe.sx","dood.","videa.hu",
          "ok.ru","odnoklassniki","dailymotion",
        ];
        const isKnownIframe = KNOWN_IFRAME_HOSTS.some(h => playUrl.includes(h));
        const isPlayable = !!src.directUrl || !!(playUrl.match(/\.m3u8([?#]|$)/i)) || isKnownIframe;
        if (!isPlayable) return;
        if (seenSseUrls.current.has(playUrl)) return;
        seenSseUrls.current.add(playUrl);
        const rank = src.qualityRank ?? 2;
        const tier: Quality = rank >= 3 ? "1080p FHD" : rank >= 2 ? "720p HD" : "360p SD";
        setSseServers(prev => ({ ...prev, [tier]: [...prev[tier], playUrl] }));
      } catch {}
    };
    es.onerror = () => { clearTimeout(closeTimer); es.close(); };
  }, [ep, animeId]);

  /* Cleanup SSE on unmount */
  useEffect(() => () => { sseRef.current?.close(); }, []);

  useEffect(() => {
    const t = setTimeout(() => setLoadingDone(true), 300);
    return () => clearTimeout(t);
  }, []);

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

  useEffect(() => {
    if (!loadingDone || !fetchDone) return;
    const hasAny = QUALITY_LABELS.some(q =>
      (mergedServers[q]?.length || 0) > 0
    );
    setPhase(prev => prev === "player" ? prev : hasAny ? "picker" : "nosrc");
  }, [loadingDone, fetchDone, mergedServers]);

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
  const mergedStreamData: StreamData = { servers: mergedServers, total: servers.length };

  if (phase === "loading") return <LoadingScreen cover={cover} title={title} ep={ep} />;
  if (phase === "nosrc")   return <NoSources onRefresh={handleRefresh} onBack={handleBack} />;

  if (phase === "picker") {
    return (
      <AnimatePresence mode="wait">
        <motion.div key="picker"
          initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -12 }}
          transition={{ duration: 0.22, ease: "easeOut" }} className="fixed inset-0">
          <ServerPicker
            cover={cover} title={title} ep={ep}
            streamData={mergedStreamData}
            onPick={handlePickServer}
            onBack={handleBack}
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
        />
      </motion.div>
    </AnimatePresence>
  );
}

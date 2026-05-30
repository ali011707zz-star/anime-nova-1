import { useState, useEffect, useRef, useCallback } from "react";
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
  // AnimeX — specific path must be first
  if (url.includes("animex-player") || url.includes("animex-source")) {
    return { label: "AnimeX", sublabel: "مترجم للعربية", isHls: true };
  }
  // AnimePahe via Miruro (uwucdn.top HLS — CORS:* open)
  if (url.includes("uwucdn.top")) {
    return { label: "AnimePahe", sublabel: "جودة عالية · مترجم", isHls: true };
  }
  // FlixCloud via ReAnime.to (Zoro/AniWave HLS through hls-proxy)
  if (url.includes("flixcloud") || url.includes("fetch1.flixcloud") || url.includes("hls-proxy") && url.includes("reanime")) {
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
    <div className="fixed inset-0 z-50 bg-[#09090f] flex flex-col items-center justify-center gap-5" dir="rtl">
      {cover && (
        <div className="relative">
          <img src={cover} alt="" className="w-24 h-32 rounded-2xl object-cover opacity-60 blur-[1px]" />
          <div className="absolute inset-0 rounded-2xl bg-gradient-to-t from-[#09090f] via-transparent to-transparent" />
        </div>
      )}
      <motion.div initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.15 }}
        className="text-center px-8">
        {title && <h2 className="text-white text-[14px] font-black font-['Cairo'] mb-1">{title}</h2>}
        <p className="text-white/35 text-[12px] font-['Cairo']">جاري تشغيل الحلقة {ep}…</p>
      </motion.div>
      <div className="flex items-center gap-1.5">
        {[0,1,2,3,4].map(i => (
          <motion.div key={i} className="w-1.5 h-1.5 rounded-full bg-violet-500"
            animate={{ opacity:[0.2,1,0.2], scale:[0.7,1.3,0.7] }}
            transition={{ duration: 1.3, repeat: Infinity, delay: i*0.18 }} />
        ))}
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
  src, onRealQuality, onTimeUpdate,
}: {
  src: string;
  onRealQuality?: (q: string) => void;
  onTimeUpdate?: (t: number) => void;
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

  /* ── Schedule control hide ── */
  function scheduleHide() {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowControls(false), 3000);
  }
  function touchControls() {
    setShowControls(true);
    scheduleHide();
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
        setError("فشل تشغيل المصدر المباشر");
        setLoading(false);
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
        const data = await r.json() as { rawUrl?: string; quality?: string };
        if (!data.rawUrl) { setError("لا يوجد رابط HLS من AnimeX"); setLoading(false); return; }
        m3u8Url = data.rawUrl;
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
          setError("فشل تحميل البث — اضغط إعادة المحاولة");
          setLoading(false);
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
    touchControls();
  }

  function toggleMute() {
    const v = videoRef.current;
    if (!v) return;
    v.muted = !v.muted;
    setMuted(v.muted);
    touchControls();
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
    touchControls();
  }

  function skipSeconds(delta: number) {
    const v = videoRef.current;
    if (!v) return;
    v.currentTime = Math.max(0, Math.min(duration, v.currentTime + delta));
    touchControls();
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
      className="relative w-full h-full bg-black overflow-hidden"
      onClick={togglePlay}
      onTouchStart={touchControls}
      onMouseMove={touchControls}
    >
      <video
        ref={videoRef}
        className="w-full h-full object-contain"
        playsInline
        preload="metadata"
      />

      {/* Loading spinner */}
      {(loading && !error) && (
        <div className="absolute inset-0 flex flex-col items-center justify-center gap-3 z-10 pointer-events-none">
          <motion.div className="w-14 h-14 rounded-full border-[3px] border-t-violet-500 border-violet-500/15"
            animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
          <p className="text-white/40 text-[11px] font-['Cairo']">جاري تحميل المشغّل…</p>
        </div>
      )}

      {/* Error state */}
      {error && !retrying && (
        <div className="absolute inset-0 flex flex-col items-center justify-center gap-5 bg-[#0a0a12] z-20 pointer-events-auto" dir="rtl"
          onClick={e => e.stopPropagation()}>
          <div className="w-16 h-16 rounded-2xl bg-red-500/10 border border-red-500/20 flex items-center justify-center">
            <AlertTriangle className="w-7 h-7 text-red-400/70" />
          </div>
          <div className="text-center px-8">
            <p className="text-white/60 text-[14px] font-black font-['Cairo']">تعذّر تحميل الفيديو</p>
            <p className="text-white/25 text-[11px] mt-1 font-['Cairo'] leading-relaxed">{error}</p>
          </div>
          <button onClick={retry}
            className="flex items-center gap-2 px-5 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95">
            <RefreshCw className="w-4 h-4" /> إعادة المحاولة
          </button>
        </div>
      )}

      {/* Controls overlay */}
      <AnimatePresence>
        {showControls && !loading && !error && (
          <motion.div
            key="controls"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.2 }}
            className="absolute inset-0 z-10 flex flex-col justify-end pointer-events-none"
            style={{ background: "linear-gradient(to top, rgba(0,0,0,0.85) 0%, rgba(0,0,0,0.2) 40%, transparent 70%)" }}
            onClick={e => e.stopPropagation()}
          >
            {/* Center play/pause */}
            <div className="absolute inset-0 flex items-center justify-center pointer-events-auto" onClick={togglePlay}>
              <motion.div
                key={isPlaying ? "play" : "pause"}
                initial={{ scale: 0.6, opacity: 0.8 }}
                animate={{ scale: 1, opacity: 0 }}
                transition={{ duration: 0.5 }}
                className="w-20 h-20 rounded-full bg-white/20 backdrop-blur-sm flex items-center justify-center"
              >
                {isPlaying
                  ? <Pause className="w-9 h-9 text-white fill-white" />
                  : <Play  className="w-9 h-9 text-white fill-white" />}
              </motion.div>
            </div>

            {/* Skip buttons */}
            <div className="absolute inset-0 flex items-center justify-between px-10 pointer-events-auto">
              <button onClick={e => { e.stopPropagation(); skipSeconds(10); }}
                className="flex flex-col items-center gap-1 active:scale-90 transition-transform">
                <SkipForward className="w-8 h-8 text-white/70" />
                <span className="text-white/50 text-[9px] font-bold">10s</span>
              </button>
              <button onClick={e => { e.stopPropagation(); skipSeconds(-10); }}
                className="flex flex-col items-center gap-1 active:scale-90 transition-transform">
                <SkipBack className="w-8 h-8 text-white/70" />
                <span className="text-white/50 text-[9px] font-bold">10s</span>
              </button>
            </div>

            {/* Bottom controls */}
            <div className="pointer-events-auto px-4 pb-4 space-y-3">
              {/* Progress bar */}
              <div
                ref={progressRef}
                className="relative h-8 flex items-center cursor-pointer group"
                onMouseDown={seek}
                onTouchStart={seek}
              >
                {/* Track */}
                <div className="w-full h-1 rounded-full bg-white/20 relative overflow-hidden group-hover:h-1.5 transition-all">
                  {/* Buffered */}
                  <div className="absolute inset-y-0 left-0 bg-white/20 rounded-full"
                    style={{ width: `${bufPct}%` }} />
                  {/* Played */}
                  <div className="absolute inset-y-0 left-0 bg-violet-500 rounded-full"
                    style={{ width: `${pct}%` }} />
                </div>
                {/* Thumb */}
                <div className="absolute w-4 h-4 rounded-full bg-white shadow-lg shadow-violet-500/40 -translate-x-1/2 opacity-0 group-hover:opacity-100 transition-opacity"
                  style={{ left: `${pct}%` }} />
              </div>

              {/* Controls row */}
              <div className="flex items-center gap-3">
                {/* Play/Pause */}
                <button onClick={e => { e.stopPropagation(); togglePlay(); }}
                  className="w-10 h-10 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-transform shrink-0">
                  {isPlaying
                    ? <Pause className="w-5 h-5 text-white fill-white" />
                    : <Play  className="w-5 h-5 text-white fill-white" />}
                </button>

                {/* Time */}
                <span className="text-white/70 text-[11px] font-mono tabular-nums shrink-0">
                  {fmtTime(currentTime)} / {fmtTime(duration)}
                </span>

                <div className="flex-1" />

                {/* Mute */}
                <button onClick={e => { e.stopPropagation(); toggleMute(); }}
                  className="w-10 h-10 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-transform shrink-0">
                  {muted
                    ? <VolumeX className="w-4 h-4 text-white/70" />
                    : <Volume2 className="w-4 h-4 text-white/70" />}
                </button>

                {/* Fullscreen */}
                <button onClick={e => { e.stopPropagation(); toggleFs(); }}
                  className="w-10 h-10 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-transform shrink-0">
                  {isFs
                    ? <Minimize2 className="w-4 h-4 text-white/70" />
                    : <Maximize2 className="w-4 h-4 text-white/70" />}
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
  function tryPrevServer() {
    if (retryTimer.current) clearTimeout(retryTimer.current);
    if (currentServer > 0) {
      setCurrentServer(s => s - 1);
      setIframeLoaded(false); setIframeErr(false); setRetrying(false);
    }
  }

  return (
    <motion.div id="nova-player"
      className="fixed inset-0 z-50 bg-black flex flex-col"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, y: 20 }}
      transition={{ duration: 0.25, ease: [0.22, 1, 0.36, 1] }}
      dir="rtl"
    >
      {/* ── Top bar ── */}
      <div className="flex items-center gap-3 px-4 bg-black/80 backdrop-blur border-b border-white/8 shrink-0 z-20"
        style={{ paddingTop: "max(12px, env(safe-area-inset-top))", paddingBottom: 10 }}>
        <button onClick={onBack}
          className="w-9 h-9 rounded-xl bg-white/8 border border-white/12 flex items-center justify-center active:scale-90 transition-transform shrink-0">
          <ChevronRight className="w-5 h-5 text-white/70" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-white text-[13px] font-black font-['Cairo'] truncate">{title}</p>
          <div className="flex items-center gap-1.5 text-white/35 text-[10px] font-['Cairo']">
            <span>الحلقة {ep}</span>
            <span>·</span>
            <span className="text-violet-300/60 font-bold">{quality}</span>
            <span>·</span>
            <span>سيرفر {currentServer + 1}/{servers.length}</span>
            {currentInfo.isHls && (
              <span className="bg-violet-600/30 text-violet-300 text-[8px] font-bold px-1.5 py-0.5 rounded-md border border-violet-500/25">
                HLS مدمج
              </span>
            )}
          </div>
        </div>

        {/* Subtitle button */}
        <button onClick={fetchSubtitles}
          className={`flex items-center gap-1.5 px-3 py-2 rounded-xl border text-[11px] font-bold font-['Cairo'] transition-all active:scale-90 shrink-0
            ${subState === "ready"   ? "bg-violet-600 border-violet-400 text-white" :
              subState === "loading" ? "bg-white/8 border-white/12 text-violet-300 animate-pulse" :
              subState === "none"    ? "bg-white/5 border-white/8 text-white/25" :
              "bg-white/8 border-white/12 text-white/60"}`}>
          <Subtitles className="w-3.5 h-3.5" />
          <span>ترجمة</span>
        </button>

        {/* Quality button — hidden when all tiers identical (quality picker has no effect) */}
        {!allQualityIdentical && (
          <button onClick={() => setShowQuality(s => !s)}
            className={`flex items-center gap-1.5 px-3 py-2 rounded-xl border text-[11px] font-bold font-mono transition-all active:scale-90 shrink-0
              ${showQuality ? "bg-violet-600 border-violet-400 text-white" : "bg-white/8 border-white/12 text-white/60"}`}>
            <Settings className="w-3.5 h-3.5" />
            {QUALITY_SHORT[quality]}
          </button>
        )}
        {/* Actual stream quality badge (HLS only) */}
        {realQuality && (
          <div className="flex items-center gap-1 px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 shrink-0">
            <span className="text-[10px] font-bold font-mono text-white/45">{realQuality}</span>
          </div>
        )}

        {!currentInfo.isHls && (
          <button onClick={toggleFs}
            className="w-9 h-9 rounded-xl bg-white/8 border border-white/12 flex items-center justify-center active:scale-90 transition-transform shrink-0">
            {fs ? <Minimize2 className="w-4 h-4 text-white/60" /> : <Maximize2 className="w-4 h-4 text-white/60" />}
          </button>
        )}
      </div>

      {/* ── Quality picker overlay ── */}
      <AnimatePresence>
        {showQuality && (
          <motion.div key="qpick"
            initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -8 }}
            className="absolute top-[60px] left-0 right-0 z-30 flex justify-center px-4 pt-2">
            <div className="bg-[#12121e] border border-white/12 rounded-2xl px-4 py-3 flex gap-3 shadow-2xl">
              <p className="text-white/30 text-[10px] font-['Cairo'] self-center ml-2">الجودة:</p>
              {QUALITY_LABELS.map(q => (
                <button key={q} onClick={() => { onChangeQuality(q); setShowQuality(false); }}
                  className={`flex flex-col items-center gap-0.5 px-4 py-2.5 rounded-xl border transition-all active:scale-90
                    ${q === quality
                      ? "bg-violet-600 border-violet-500 text-white"
                      : "bg-white/5 border-white/10 text-white/50 hover:bg-white/10"}`}>
                  <span className="font-black text-[16px] font-mono">{QUALITY_SHORT[q]}</span>
                  <span className="text-[8px] font-bold opacity-70 uppercase tracking-wider">{q.split(" ")[1]}</span>
                </button>
              ))}
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Subtitle control panel ── */}
      <AnimatePresence>
        {showSubPanel && subState !== "idle" && (
          <motion.div key="subpanel"
            initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -8 }}
            className="absolute top-[60px] left-0 right-0 z-30 flex justify-center px-4 pt-2">
            <div className="bg-[#12121e] border border-white/12 rounded-2xl px-5 py-4 shadow-2xl w-full max-w-sm" dir="rtl">

              {subState === "loading" && (
                <div className="flex items-center gap-3 text-white/50">
                  <Loader2 className="w-4 h-4 animate-spin text-violet-400 shrink-0" />
                  <p className="text-[12px] font-['Cairo']">جاري البحث عن ترجمة عربية…</p>
                </div>
              )}

              {subState === "none" && (
                <div className="flex items-center gap-3">
                  <AlertTriangle className="w-4 h-4 text-white/20 shrink-0" />
                  <p className="text-[12px] font-['Cairo'] text-white/35">لا توجد ترجمة متاحة لهذه الحلقة</p>
                  <button onClick={() => setShowSubPanel(false)}
                    className="mr-auto text-white/30 active:scale-90"><X className="w-4 h-4" /></button>
                </div>
              )}

              {subState === "ready" && (
                <div className="flex flex-col gap-3">
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-2">
                      <div className="w-2 h-2 rounded-full bg-violet-500" />
                      <p className="text-[12px] font-['Cairo'] text-white/70">
                        {subLang === "ara" ? "ترجمة عربية" : "مترجمة تلقائياً"}
                        <span className="text-white/30 mr-1">· {subCues.length} سطر</span>
                      </p>
                    </div>
                    <button onClick={() => setShowSubPanel(false)}
                      className="text-white/30 active:scale-90"><X className="w-4 h-4" /></button>
                  </div>

                  <div className="flex items-center gap-2 justify-center">
                    <button onClick={() => adjustOffset(-2)}
                      className="px-3 py-1.5 rounded-lg bg-white/6 border border-white/10 text-white/50 text-[11px] font-bold active:scale-90 transition-transform">
                      ‒2s
                    </button>
                    <button onClick={() => adjustOffset(-0.5)}
                      className="px-3 py-1.5 rounded-lg bg-white/6 border border-white/10 text-white/50 text-[11px] font-bold active:scale-90 transition-transform">
                      ‒½s
                    </button>

                    {/* HLS: subtitle is auto-synced to video time — no manual start needed */}
                    {currentInfo.isHls ? (
                      <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-violet-600/20 border border-violet-500/30">
                        <div className="w-2 h-2 rounded-full bg-violet-400 animate-pulse" />
                        <span className="text-violet-200 text-[11px] font-['Cairo'] font-bold">مزامنة تلقائية</span>
                      </div>
                    ) : !subRunning ? (
                      <button onClick={startSubTimer}
                        className="flex items-center gap-1.5 px-4 py-2 rounded-xl bg-violet-600 border border-violet-500 text-white text-[12px] font-bold font-['Cairo'] active:scale-90 transition-transform">
                        <Play className="w-3.5 h-3.5 fill-white" />
                        ابدأ الآن
                      </button>
                    ) : (
                      <button onClick={pauseSubTimer}
                        className="flex items-center gap-1.5 px-4 py-2 rounded-xl bg-violet-600/60 border border-violet-500/50 text-white text-[12px] font-bold font-['Cairo'] active:scale-90 transition-transform">
                        <span className="w-3.5 h-3.5 flex items-center justify-center gap-0.5">
                          <span className="w-1 h-3 bg-white rounded-sm inline-block" />
                          <span className="w-1 h-3 bg-white rounded-sm inline-block" />
                        </span>
                        إيقاف
                      </button>
                    )}

                    <button onClick={() => adjustOffset(0.5)}
                      className="px-3 py-1.5 rounded-lg bg-white/6 border border-white/10 text-white/50 text-[11px] font-bold active:scale-90 transition-transform">
                      +½s
                    </button>
                    <button onClick={() => adjustOffset(2)}
                      className="px-3 py-1.5 rounded-lg bg-white/6 border border-white/10 text-white/50 text-[11px] font-bold active:scale-90 transition-transform">
                      +2s
                    </button>
                  </div>

                  <p className="text-center text-white/25 text-[10px] font-['Cairo']">
                    اضغط "ابدأ الآن" عند بداية تشغيل الفيديو للمزامنة
                  </p>
                </div>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Video area ── */}
      <div className="relative flex-1 bg-black overflow-hidden"
        onClick={() => { setShowQuality(false); setShowSubPanel(false); }}>

        {/* ── HLS Native Player ── */}
        {currentInfo.isHls && currentUrl && (
          <>
            <NativeHLSPlayer
              key={`hls-${currentUrl}-${currentServer}`}
              src={currentUrl}
              onRealQuality={handleRealQuality}
              onTimeUpdate={handleHlsTime}
            />
            {/* Subtitle overlay synced directly to video time */}
            {subState === "ready" && subCues.length > 0 && (
              <SubtitleOverlay cues={subCues} elapsed={hlsTime + subOffset} />
            )}
          </>
        )}

        {/* ── Iframe Player (non-HLS) ── */}
        {!currentInfo.isHls && (
          <>
            {!iframeLoaded && !iframeErr && !retrying && currentUrl && (
              <div className="absolute inset-0 flex flex-col items-center justify-center gap-3 z-10 bg-black pointer-events-none">
                <Loader2 className="w-8 h-8 text-violet-500 animate-spin" />
                <p className="text-white/30 text-[11px] font-['Cairo']">جاري تحميل المشغّل…</p>
              </div>
            )}

            {retrying && (
              <div className="absolute inset-0 flex flex-col items-center justify-center gap-3 z-10 bg-black">
                <motion.div className="w-16 h-16 rounded-full border-[3px] border-t-violet-500 border-violet-500/15"
                  animate={{ rotate: 360 }} transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }} />
                <p className="text-white/50 text-[13px] font-['Cairo']">جاري الانتقال للسيرفر التالي…</p>
                <motion.div className="w-32 h-0.5 bg-white/10 rounded-full overflow-hidden">
                  <motion.div className="h-full bg-violet-500 rounded-full"
                    initial={{ width: "0%" }} animate={{ width: "100%" }} transition={{ duration: 2, ease: "linear" }} />
                </motion.div>
              </div>
            )}

            {iframeErr && (
              <div className="absolute inset-0 flex flex-col items-center justify-center gap-5 bg-[#0a0a12] z-10">
                <div className="w-16 h-16 rounded-2xl bg-red-500/10 border border-red-500/20 flex items-center justify-center">
                  <AlertTriangle className="w-7 h-7 text-red-400/70" />
                </div>
                <div className="text-center px-8">
                  <p className="text-white/60 text-[14px] font-black font-['Cairo']">فشل تحميل المصدر</p>
                  <p className="text-white/25 text-[11px] mt-1 font-['Cairo']">جُرّبت {retryCount.current} سيرفرات</p>
                </div>
                <div className="flex gap-3">
                  {currentServer > 0 && (
                    <button onClick={tryPrevServer}
                      className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/5 border border-white/10 text-white/55 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
                      <ChevronRight className="w-4 h-4" /> السابق
                    </button>
                  )}
                  {currentServer + 1 < servers.length && (
                    <button onClick={tryNextServer}
                      className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
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
          </>
        )}

        {/* Subtitle overlay */}
        {subState === "ready" && subRunning && (
          <SubtitleOverlay cues={subCues} elapsed={subElapsed} />
        )}
      </div>

      {/* ── Bottom bar ── */}
      <div className="flex items-center justify-between px-4 bg-black/80 backdrop-blur border-t border-white/8 shrink-0"
        style={{ paddingTop: 10, paddingBottom: "max(10px, env(safe-area-inset-bottom))" }}>
        <button onClick={onPrevEp} disabled={ep <= 1}
          className="flex items-center gap-1 text-[12px] font-bold text-white/45 disabled:opacity-20 font-['Cairo'] active:scale-95 transition-transform">
          <ChevronRight className="w-4 h-4" /> السابقة
        </button>

        <div className="flex items-center gap-1.5 overflow-x-auto max-w-[55%]" style={{ scrollbarWidth: "none" }}>
          {servers.map((url, i) => {
            const info = getServerInfo(url, i);
            const isActive = i === currentServer;
            return (
              <button key={i} onClick={() => {
                if (retryTimer.current) clearTimeout(retryTimer.current);
                setCurrentServer(i);
                setIframeLoaded(false); setIframeErr(false); setRetrying(false);
              }}
                className={`flex items-center gap-1 px-2 py-1.5 rounded-lg text-[10px] font-bold font-['Cairo'] whitespace-nowrap transition-all active:scale-90 shrink-0
                  ${isActive
                    ? info.isHls ? "bg-violet-600 text-white" : "bg-blue-600 text-white"
                    : "bg-white/8 border border-white/12 text-white/40"}`}>
                {info.isHls
                  ? <MonitorPlay className="w-3 h-3 shrink-0" />
                  : <Tv2 className="w-3 h-3 shrink-0" />}
                {info.label}
              </button>
            );
          })}
        </div>

        <button onClick={onNextEp} disabled={ep >= totalEps}
          className="flex items-center gap-1 text-[12px] font-bold text-white/45 disabled:opacity-20 font-['Cairo'] active:scale-95 transition-transform flex-row-reverse">
          <ChevronLeft className="w-4 h-4" /> التالية
        </button>
      </div>
    </motion.div>
  );
}

/* ══════════════════════════════════ WATCH PAGE ══════════════ */
export default function WatchPage() {
  const [, navigate] = useLocation();

  const sp           = useRef(new URLSearchParams(window.location.search)).current;
  const animeId      = parseInt(sp.get("anime") || "0");
  const ep           = parseInt(sp.get("ep") || "1");
  const titleParam   = sp.get("title") || "";
  const englishParam = sp.get("english") || "";

  const [anime,        setAnime]       = useState<any>(null);
  const [streamData,   setStreamData]  = useState<StreamData | null>(null);
  const [quality,      setQuality]     = useState<Quality>("720p HD");
  const [initialSrv,   setInitialSrv]  = useState(0);
  const [phase,        setPhase]       = useState<"loading" | "picker" | "player" | "nosrc">("loading");
  const [loadingDone,  setLoadingDone] = useState(false);
  const [fetchDone,    setFetchDone]   = useState(false);
  const fetchStarted = useRef(false);

  const title     = anime?.title?.english || anime?.title?.romaji || titleParam || "أنمي";
  const animeTitle = title;
  const totalEps  = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover     = anime?.coverImage?.large || "";

  const doFetchServers = useCallback((t: string, e: string) => {
    if (fetchStarted.current) return;
    fetchStarted.current = true;
    const params = new URLSearchParams({ title: t, english: e, ep: String(ep) });
    if (animeId) params.set("anilistId", String(animeId));
    fetch(`/api/anime/anipub-stream?${params}`)
      .then(r => { if (!r.ok) throw new Error(String(r.status)); return r.json(); })
      .then((d: StreamData) => { setStreamData(d); setFetchDone(true); })
      .catch(() => setFetchDone(true));
  }, [ep, animeId]);

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
    if (!streamData) { setPhase("nosrc"); return; }
    const hasAny = QUALITY_LABELS.some(q => (streamData.servers[q]?.length || 0) > 0);
    setPhase(hasAny ? "picker" : "nosrc");
  }, [loadingDone, fetchDone, streamData]);

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

  const servers = streamData?.servers[quality] || [];

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
            streamData={streamData!}
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
          allServers={streamData!.servers}
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

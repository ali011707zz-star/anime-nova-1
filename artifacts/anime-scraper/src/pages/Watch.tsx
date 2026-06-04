import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Pause, Loader2,
  AlertTriangle, RefreshCw, X, Maximize2, Minimize2,
  Settings, Subtitles, MonitorPlay, Tv2, Volume2, VolumeX,
  SkipBack, SkipForward, ExternalLink,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";

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

/* ── FetchedSrc: shape returned by /api/anime/fetch-source ── */
interface FetchedSrc {
  url: string; directUrl?: string; qualityRank?: number;
  name?: string; site?: string; isEmbed?: boolean;
}

/* ── All known scrapers — shown immediately in picker ── */
const SCRAPER_DEFS: { site: string; name: string; desc: string; tag: string }[] = [
  { site: "animephoenix", name: "أنمي فينكس",  desc: "عربي مدبلج · مباشر",      tag: "PH" },
  { site: "shahiid",      name: "شاهيد أنمي",   desc: "عربي مدبلج / مترجم",      tag: "SH" },
  { site: "animelek",     name: "أنمي ليك",     desc: "عربي مدبلج / مترجم",      tag: "AL" },
  { site: "animedar",     name: "أنمي دار",     desc: "عربي مترجم",              tag: "AD" },
  { site: "okanime",      name: "أوك أنمي",     desc: "عربي مترجم",              tag: "OK" },
  { site: "ristoanime",   name: "ريستو أنمي",    desc: "عربي مترجم",              tag: "RS" },
  { site: "animetime",    name: "أنمي تايم",    desc: "عربي مترجم",              tag: "AT" },
  { site: "toonstream",   name: "تون ستريم",    desc: "ياباني مترجم",             tag: "TS" },
  { site: "mitanime",     name: "ميتا أنمي",    desc: "ياباني مترجم",             tag: "MT" },
  { site: "animeify",     name: "أنمي فاي",     desc: "عربي · ميغا",             tag: "MG" },
];

type SlotStatus = "idle" | "fetching" | "ready" | "failed";

function getSrcQualityTier(src: FetchedSrc): Quality {
  const name = (src.name || "").toLowerCase();
  if (name.includes("1080") || name.includes("fhd")) return "1080p FHD";
  if (name.includes("480") || name.includes("360") || name.includes(" sd")) return "360p SD";
  if (name.includes("720") || name.includes(" hd")) return "720p HD";
  const rank = src.qualityRank ?? 2;
  if (rank >= 12) return "1080p FHD";
  if (rank >= 9) return "720p HD";
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

/* ══════════════════════════════════ EXTERNAL PLAYER SHEET ═══ */
function ExternalSheet({
  src, title, onClose,
}: { src: FetchedSrc; title: string; onClose: () => void }) {
  const rawUrl = src.directUrl || src.url;
  const fullUrl = rawUrl.startsWith("/") ? window.location.origin + rawUrl : rawUrl;
  const isEmbed = !!src.isEmbed;

  return (
    <motion.div
      className="fixed inset-0 z-[60] flex items-end"
      initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
      onClick={onClose}>
      <div className="absolute inset-0 bg-black/65" />
      <motion.div
        className="relative w-full rounded-t-2xl overflow-hidden"
        initial={{ y: 90 }} animate={{ y: 0 }} exit={{ y: 90 }}
        transition={{ type: "spring", damping: 26, stiffness: 260 }}
        style={{ background: "#0e0e18", border: "1px solid rgba(255,255,255,0.09)" }}
        onClick={e => e.stopPropagation()}>

        {/* Handle */}
        <div className="flex justify-center pt-3 pb-1">
          <div className="w-9 h-1 rounded-full bg-white/15" />
        </div>

        <div className="px-5 pt-2 pb-5">
          <p className="text-white/45 text-[11px] font-['Cairo'] mb-1">
            {getCdnDisplayName(fullUrl)} · {SITE_SHORT[src.site || ""] || ""}
          </p>
          <p className="text-white/70 text-[13px] font-black font-['Cairo'] mb-4">فتح في مشغّل خارجي</p>

          {isEmbed ? (
            /* Embed sources — can't be opened in external players */
            <div className="flex items-start gap-3 py-4 px-4 rounded-2xl mb-3"
              style={{ background: "rgba(124,58,237,0.10)", border: "1px solid rgba(124,58,237,0.22)" }}>
              <Tv2 className="w-4 h-4 text-violet-400/70 mt-0.5 shrink-0" />
              <div>
                <p className="text-violet-200/75 text-[12px] font-bold font-['Cairo']">مشغّل داخل التطبيق</p>
                <p className="text-violet-300/40 text-[10px] font-['Cairo'] mt-0.5 leading-relaxed">
                  هذا المصدر يعمل فقط داخل التطبيق عبر مشغّل مدمج.<br/>لا يمكن فتحه في مشغّل خارجي.
                </p>
              </div>
            </div>
          ) : (
            <>
              <a href={`intent:${fullUrl}#Intent;package=com.mxtech.videoplayer.ad;S.title=${encodeURIComponent(title)};end`}
                className="flex items-center gap-3 py-3.5 px-4 rounded-2xl mb-2.5 active:opacity-70"
                style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)" }}>
                <span className="text-[20px]">▶️</span>
                <div>
                  <p className="text-white/80 text-[13px] font-bold font-['Cairo']">MX Player</p>
                  <p className="text-white/28 text-[10px] font-['Cairo']">أندرويد · مشغّل فيديو</p>
                </div>
              </a>
              <a href={`intent:${fullUrl}#Intent;package=org.videolan.vlc;S.title=${encodeURIComponent(title)};end`}
                className="flex items-center gap-3 py-3.5 px-4 rounded-2xl mb-2.5 active:opacity-70"
                style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)" }}>
                <span className="text-[20px]">🎬</span>
                <div>
                  <p className="text-white/80 text-[13px] font-bold font-['Cairo']">VLC</p>
                  <p className="text-white/28 text-[10px] font-['Cairo']">أندرويد / iOS · مفتوح المصدر</p>
                </div>
              </a>
              <button
                onClick={() => { navigator.clipboard?.writeText(fullUrl).catch(() => {}); onClose(); }}
                className="flex items-center gap-3 py-3.5 px-4 rounded-2xl w-full active:opacity-70 mb-2.5"
                style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)" }}>
                <span className="text-[20px]">📋</span>
                <div className="text-right">
                  <p className="text-white/80 text-[13px] font-bold font-['Cairo']">نسخ الرابط</p>
                  <p className="text-white/28 text-[10px] font-['Cairo']">للصق في أي مشغّل</p>
                </div>
              </button>
            </>
          )}
        </div>
      </motion.div>
    </motion.div>
  );
}

/* ══════════════════════════════════ SCRAPER PICKER ══════════ */
function ScraperPicker({
  cover, title, ep, totalEps,
  slotStatus, slotSources,
  onFetchSite, onPlaySrc,
  onBack, onNextEp, onPrevEp,
}: {
  cover: string; title: string; ep: number; totalEps: number;
  slotStatus: Record<string, SlotStatus>;
  slotSources: Record<string, FetchedSrc[]>;
  onFetchSite: (site: string) => void;
  onPlaySrc: (src: FetchedSrc) => void;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
}) {
  const [extSheet, setExtSheet] = useState<FetchedSrc | null>(null);

  /* Flatten + deduplicate all fetched sources */
  const allFlat: FetchedSrc[] = [];
  const seenKeys = new Set<string>();
  for (const srcs of Object.values(slotSources)) {
    for (const s of srcs) {
      const key = s.directUrl || s.url;
      if (!key || seenKeys.has(key)) continue;
      seenKeys.add(key);
      allFlat.push(s);
    }
  }
  allFlat.sort((a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0));

  const byQuality: Record<Quality, FetchedSrc[]> = {
    "1080p FHD": allFlat.filter(s => getSrcQualityTier(s) === "1080p FHD"),
    "720p HD":   allFlat.filter(s => getSrcQualityTier(s) === "720p HD"),
    "360p SD":   allFlat.filter(s => getSrcQualityTier(s) === "360p SD"),
  };
  const hasSources = allFlat.length > 0;

  /* Sites not yet ready */
  const notReadySites = SCRAPER_DEFS.filter(d => slotStatus[d.site] !== "ready");

  return (
    <div className="fixed inset-0 z-50 flex flex-col bg-[#07070e]" dir="rtl">

      {/* ── Nav bar ── */}
      <div className="flex items-center gap-0 shrink-0"
        style={{ borderBottom: "1px solid rgba(255,255,255,0.06)",
          paddingTop: "max(14px, env(safe-area-inset-top))", paddingBottom: 12 }}>
        <button onClick={onBack}
          className="w-12 h-10 flex items-center justify-center active:opacity-50 transition-opacity shrink-0">
          <ChevronRight className="w-5 h-5 text-white/55" />
        </button>
        <button onClick={onPrevEp} disabled={ep <= 1}
          className="w-10 h-10 flex items-center justify-center active:opacity-50 transition-opacity shrink-0 disabled:opacity-20">
          <ChevronRight className="w-4 h-4 text-white/45" />
        </button>
        <div className="flex-1 text-center min-w-0 px-1">
          <p className="text-white/90 text-[13px] font-black font-['Cairo'] truncate leading-tight">
            {title} · الحلقة {ep}
          </p>
          <p className="text-white/22 text-[10px] font-['Cairo'] mt-0.5">
            {hasSources ? `${allFlat.length} مصدر متاح` : "اختر مصدراً للتشغيل"}
          </p>
        </div>
        <button onClick={onNextEp} disabled={ep >= totalEps}
          className="w-10 h-10 flex items-center justify-center active:opacity-50 transition-opacity shrink-0 disabled:opacity-20">
          <ChevronLeft className="w-4 h-4 text-white/45" />
        </button>
        {cover && (
          <div className="w-12 flex justify-center shrink-0">
            <img src={cover} alt="" className="w-8 h-11 rounded-lg object-cover opacity-60" />
          </div>
        )}
      </div>

      {/* ── Scrollable content ── */}
      <div className="flex-1 overflow-y-auto"
        style={{ paddingBottom: "max(24px, env(safe-area-inset-bottom))" }}>

        {/* ── Quality sections with source cards ── */}
        {QUALITY_LABELS.map(q => {
          const srcs = byQuality[q];
          if (!srcs.length) return null;
          const qs = QUALITY_STYLE[q];
          return (
            <div key={q} className="mt-4">
              {/* Section header */}
              <div className="flex items-center gap-2 px-4 mb-1.5">
                <div className="w-2 h-2 rounded-full shrink-0"
                  style={{ background: qs.dot, boxShadow: `0 0 7px ${qs.dot}99` }} />
                <span className="text-[11px] font-bold font-['Cairo'] tracking-wide flex-1"
                  style={{ color: qs.text }}>{Q_LABEL[q]}</span>
                <span className="font-mono text-[9px] font-black px-1.5 py-0.5 rounded-md"
                  style={{ background: qs.badge, border: `1px solid ${qs.border}`, color: qs.text }}>
                  {Q_SHORT[q]}
                </span>
              </div>

              {/* Source cards */}
              {srcs.map((src, i) => {
                const url     = src.directUrl || src.url;
                const cdn     = getCdnDisplayName(url);
                const site    = SITE_SHORT[src.site || ""] || src.site || "";
                const isEmbed = !!src.isEmbed;
                const isHls   = url.includes("hls-proxy") || url.includes(".m3u8");
                return (
                  <motion.div key={`${src.site}-${i}-${url.slice(-20)}`}
                    initial={{ opacity: 0, y: 5 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ delay: i * 0.04, duration: 0.18 }}>
                    <div className="flex items-center px-4 py-2.5 gap-3"
                      style={{ borderBottom: "1px solid rgba(255,255,255,0.04)" }}>

                      {/* CDN icon */}
                      <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0"
                        style={{ background: qs.badge, border: `1px solid ${qs.border}` }}>
                        {isEmbed
                          ? <Tv2 className="w-[17px] h-[17px]" style={{ color: qs.icon }} />
                          : <MonitorPlay className="w-[17px] h-[17px]" style={{ color: qs.icon }} />}
                      </div>

                      {/* Name block */}
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-1.5 flex-wrap">
                          <span className="text-white/88 text-[14px] font-black font-['Cairo'] leading-tight">{cdn}</span>
                          {isHls && !isEmbed && (
                            <span className="font-mono text-[8px] font-black px-1 py-0.5 rounded"
                              style={{ background: "rgba(124,58,237,0.18)", color: "rgba(196,181,253,0.72)", border: "1px solid rgba(124,58,237,0.22)" }}>
                              HLS
                            </span>
                          )}
                          {isEmbed && (
                            <span className="font-mono text-[8px] font-black px-1 py-0.5 rounded"
                              style={{ background: "rgba(52,211,153,0.10)", color: "rgba(110,231,183,0.75)", border: "1px solid rgba(52,211,153,0.20)" }}>
                              EMBED
                            </span>
                          )}
                        </div>
                        <p className="text-white/28 text-[11px] font-['Cairo'] mt-0.5 leading-none">{site}</p>
                      </div>

                      {/* Actions */}
                      <div className="flex items-center gap-2 shrink-0">
                        {/* External sheet trigger */}
                        <button
                          onClick={e => { e.stopPropagation(); setExtSheet(src); }}
                          className="w-7 h-7 rounded-xl flex items-center justify-center active:scale-90 transition-all"
                          style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)" }}>
                          <ExternalLink className="w-3.5 h-3.5 text-white/28" />
                        </button>

                        {/* Watch Now */}
                        <div className="flex flex-col items-end gap-0.5">
                          <button
                            onClick={() => onPlaySrc(src)}
                            className="flex items-center gap-1.5 px-3 py-2 rounded-xl active:scale-95 transition-all"
                            style={{
                              background: "linear-gradient(135deg, rgba(139,92,246,0.92), rgba(109,40,217,0.95))",
                              border: "1px solid rgba(167,139,250,0.30)",
                              boxShadow: "0 2px 12px rgba(124,58,237,0.35)",
                            }}>
                            <Play className="w-3 h-3 text-white fill-white" />
                            <span className="text-white text-[12px] font-black font-['Cairo']">مشاهدة الآن</span>
                          </button>
                          {isEmbed && (
                            <p className="text-white/22 text-[9px] font-['Cairo'] leading-none">يعمل داخل التطبيق</p>
                          )}
                        </div>
                      </div>
                    </div>
                  </motion.div>
                );
              })}
            </div>
          );
        })}

        {/* ── Pending / loading sites ── */}
        {notReadySites.length > 0 && (
          <div className={hasSources ? "mt-6 border-t border-white/[0.05] pt-4" : "mt-2"}>
            {hasSources && (
              <div className="flex items-center gap-2 px-4 mb-2">
                <div className="w-1.5 h-1.5 rounded-full bg-white/14 shrink-0" />
                <span className="text-[11px] font-['Cairo'] text-white/26">مصادر إضافية</span>
              </div>
            )}
            {notReadySites.map((def, i) => {
              const status     = slotStatus[def.site] || "idle";
              const isFetching = status === "fetching";
              const isFailed   = status === "failed";
              return (
                <motion.div key={def.site}
                  initial={{ opacity: 0, y: 5 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.03, duration: 0.16 }}
                  onClick={() => !isFetching && onFetchSite(def.site)}
                  className={`flex items-center px-4 py-3 gap-3 cursor-pointer transition-all
                    ${isFailed ? "opacity-35" : "active:bg-white/[0.04]"}`}
                  style={{ borderBottom: "1px solid rgba(255,255,255,0.03)" }}>

                  <div className="w-1.5 h-1.5 rounded-full shrink-0"
                    style={{
                      background: isFailed ? "rgba(239,68,68,0.45)"
                        : isFetching ? "rgba(251,191,36,0.75)"
                        : "rgba(255,255,255,0.14)",
                      boxShadow: isFetching ? "0 0 5px rgba(251,191,36,0.5)" : "none",
                    }} />

                  <div className="flex-1 min-w-0">
                    <span className={`text-[13px] font-bold font-['Cairo'] ${isFailed ? "text-white/26" : "text-white/55"}`}>
                      {def.name}
                    </span>
                    <span className={`text-[10px] font-['Cairo'] mr-2 ${isFailed ? "text-white/20" : "text-white/22"}`}>
                      {isFetching ? "· جاري الجلب..." : isFailed ? "· غير متاح · اضغط للمحاولة" : `· ${def.desc}`}
                    </span>
                  </div>

                  <div className="flex items-center gap-2 shrink-0">
                    <span className="font-mono text-[9px] font-bold px-1.5 py-0.5 rounded"
                      style={{ color: "rgba(255,255,255,0.22)", background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
                      {def.tag}
                    </span>
                    {isFetching
                      ? <Loader2 className="w-3.5 h-3.5 text-amber-300/55 animate-spin" />
                      : <span className="text-[10px] text-white/18 font-['Cairo']">اضغط</span>}
                  </div>
                </motion.div>
              );
            })}
          </div>
        )}

        {/* Footer */}
        <div className="py-6 text-center">
          <p className="text-white/10 text-[10px] font-['Cairo']">
            {hasSources ? "اضغط «مشاهدة الآن» لتشغيل أي مصدر مباشرة" : "اضغط على أي مصدر أدناه لجلبه"}
          </p>
        </div>
      </div>

      {/* ── External player sheet ── */}
      <AnimatePresence>
        {extSheet && (
          <ExternalSheet src={extSheet} title={title} onClose={() => setExtSheet(null)} />
        )}
      </AnimatePresence>
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

  /* ── Embed-type URL → render sandboxed iframe player (mega, filemoon, streamwish, etc.) ── */
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
            <RiftPlayer
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
const EMPTY_SLOTS = (): Record<string, SlotStatus> =>
  Object.fromEntries(SCRAPER_DEFS.map(d => [d.site, "idle" as SlotStatus]));

export default function WatchPage() {
  const [, navigate] = useLocation();

  const sp           = useRef(new URLSearchParams(window.location.search)).current;
  const animeId      = parseInt(sp.get("anime") || "0");
  const ep           = parseInt(sp.get("ep") || "1");
  const titleParam   = sp.get("title") || "";
  const englishParam = sp.get("english") || "";

  const [anime,        setAnime]        = useState<any>(null);
  const [slotStatus,   setSlotStatus]   = useState<Record<string, SlotStatus>>(EMPTY_SLOTS);
  const [slotSources,  setSlotSources]  = useState<Record<string, FetchedSrc[]>>({});
  const [playerServers,setPlayerServers]= useState<Record<Quality, string[]>>({ "1080p FHD": [], "720p HD": [], "360p SD": [] });
  const [quality,      setQuality]      = useState<Quality>("720p HD");
  const [initialSrv,   setInitialSrv]   = useState(0);
  const [phase,        setPhase]        = useState<"picker" | "player">("picker");

  const title      = anime?.title?.english || anime?.title?.romaji || titleParam || "أنمي";
  const animeTitle = title;
  const totalEps   = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover      = anime?.coverImage?.large || "";

  /* Fetch AniList metadata */
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
        }
      })
      .catch(() => {});
  }, [animeId]);

  function goEp(n: number) {
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n), title: titleParam, english: englishParam })}`);
  }

  function handleBack() { window.history.back(); }

  /* ── Per-site on-demand fetch (no auto-play) ── */
  async function handleFetchSite(site: string) {
    const current = slotStatus[site];
    if (current === "fetching" || current === "ready") return;

    setSlotStatus(prev => ({ ...prev, [site]: "fetching" }));
    try {
      const t = anime?.title?.romaji || titleParam;
      const e = anime?.title?.english || englishParam || "";
      const params = new URLSearchParams({ site, title: t, english: e, ep: String(ep) });
      const r    = await fetch(`/api/anime/fetch-source?${params}`, { signal: AbortSignal.timeout(25000) });
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
    }
  }

  /* ── Play a specific source directly ── */
  function handlePlaySrc(src: FetchedSrc) {
    const url  = src.directUrl || src.url;
    const tier = getSrcQualityTier(src);
    const servers: Record<Quality, string[]> = { "1080p FHD": [], "720p HD": [], "360p SD": [] };
    servers[tier] = [url];
    setPlayerServers(servers);
    setQuality(tier);
    setInitialSrv(0);
    setPhase("player");
  }

  const servers = playerServers[quality] || [];

  if (phase === "picker") {
    return (
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
          allServers={playerServers}
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

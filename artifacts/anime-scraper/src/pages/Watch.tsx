import { useState, useEffect, useRef, useCallback, useMemo, memo } from "react";
import { getAppToken } from "@/lib/appToken";
import { useLocation } from "wouter";
import { useAuth } from "@/lib/auth-context";
import { saveProgress as saveProgressServer } from "@/lib/db";
import {
  ChevronRight, ChevronLeft, Play, Loader2,
  AlertTriangle, RefreshCw, X, Maximize2, Minimize2,
  Settings, Subtitles, MonitorPlay, Tv2, Download,
  Star, Calendar, Sparkles,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";
import EpComments from "@/components/EpComments";
import { AnimeMascot } from "@/components/AnimeMascot";

/* ══════════════════════════════════ ANILIST ══════════════════ */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english native }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres averageScore popularity
    format status season seasonYear description(asHtml: false)
    studios(isMain: true) { nodes { name } }
    streamingEpisodes { title episode }
  }
}`;

/* ══════════════════════════════════ MAPS ═════════════════════ */
const STATUS_MAP: Record<string, { label: string; color: string }> = {
  RELEASING        : { label: "يُبث الآن", color: "text-emerald-400 bg-emerald-500/15 border-emerald-500/30" },
  FINISHED         : { label: "مكتمل",     color: "text-blue-400   bg-blue-500/15    border-blue-500/30"    },
  NOT_YET_RELEASED : { label: "قريباً",    color: "text-amber-400  bg-amber-500/15   border-amber-500/30"   },
  CANCELLED        : { label: "ملغى",      color: "text-red-400    bg-red-500/15     border-red-500/30"     },
  HIATUS           : { label: "متوقف",     color: "text-orange-400 bg-orange-500/15  border-orange-500/30"  },
};
const FORMAT_MAP: Record<string, string> = {
  TV: "مسلسل", MOVIE: "فيلم", OVA: "OVA", ONA: "ONA",
  SPECIAL: "خاص", MUSIC: "موسيقي", TV_SHORT: "قصير",
};
const SEASON_MAP: Record<string, string> = {
  WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف",
};
const GENRE_MAP: Record<string, string> = {
  "Action": "أكشن", "Adventure": "مغامرة", "Comedy": "كوميدي",
  "Drama": "دراما", "Fantasy": "فانتازيا", "Horror": "رعب",
  "Mecha": "ميكا", "Music": "موسيقى", "Mystery": "غموض",
  "Psychological": "نفسي", "Romance": "رومانسي", "Sci-Fi": "خيال علمي",
  "Slice of Life": "حياة يومية", "Sports": "رياضي", "Supernatural": "خوارق",
  "Thriller": "إثارة", "Ecchi": "إيتشي", "Isekai": "إيسيكاي",
  "Military": "عسكري", "School": "مدرسي", "Magic": "سحر",
  "Historical": "تاريخي", "Shounen": "شونين", "Seinen": "سيينين",
  "Shoujo": "شوجو", "Kids": "أطفال", "Game": "ألعاب",
};

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
interface SubTrack { id: string; lang: string; label: string; url: string; }
type SubChoice = "off" | "ar" | "ar-auto" | "en";
interface SubSettings {
  fontSize: number;                        // 13 | 16 | 20 | 24
  color: string;                           // css color
  bgOpacity: number;                       // 0 | 0.45 | 0.82
  bold: boolean;
  position: "top" | "center" | "bottom";  // subtitle placement
}
const DEFAULT_SUB_SETTINGS: SubSettings = { fontSize: 24, color: "#ffffff", bgOpacity: 0, bold: true, position: "bottom" };
function loadSubSettings(): SubSettings {
  try {
    const raw = localStorage.getItem("sub-settings-v1");
    if (raw) return { ...DEFAULT_SUB_SETTINGS, ...JSON.parse(raw) };
  } catch {}
  return DEFAULT_SUB_SETTINGS;
}

/* ── Last-source helpers: cache the URL that actually played so resume is instant ── */
function saveLastSrc(animeId: number, ep: number, url: string, qualityRank: number) {
  try { localStorage.setItem(`last-src-${animeId}-${ep}`, JSON.stringify({ url, qualityRank, ts: Date.now() })); } catch {}
}
function loadLastSrc(animeId: number, ep: number): { url: string; qualityRank: number } | null {
  try {
    const raw = localStorage.getItem(`last-src-${animeId}-${ep}`);
    if (!raw) return null;
    const d = JSON.parse(raw);
    // Expire after 6 hours — sources (especially HLS) expire on CDN
    if (!d?.url || Date.now() - (d.ts || 0) > 6 * 60 * 60_000) return null;
    return d;
  } catch { return null; }
}

/* ══════════════════════════════════ HELPERS ══════════════════ */
function saveHistory(id: number, title: string, cover: string, ep: number, totalEps = 0, userId?: string | null) {
  if (localStorage.getItem("pref-automark") === "false") return;
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify(
      [{ id, title, cover, ep, date: new Date().toISOString(), totalEps },
       ...h.filter(x => !(x.id === id && x.ep === ep))].slice(0, 60)
    ));
  } catch {}
  /* Server sync */
  if (userId) {
    fetch("/api/user/history", {
      method: "POST", credentials: "include",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ animeId: id, animeTitle: title, animeCover: cover, animeType: "anime", episodeNumber: ep }),
    }).catch(() => {});
  }
}

const QUALITY_LABELS: Quality[] = ["1080p FHD", "720p HD", "360p SD"];

/* ── FetchedSrc: shape returned by /api/anime/fetch-source ── */
interface FetchedSrc {
  url: string; directUrl?: string; qualityRank?: number;
  name?: string; site?: string; isEmbed?: boolean;
  corsOk?: boolean;     // CDN يدعم CORS * → تشغيل مباشر بدون proxy
  subtitleUrl?: string;
  hasBuiltinSub?: boolean;
}

/* ── All known scrapers — shown immediately in picker ── */
const SCRAPER_DEFS: { site: string; name: string; desc: string; tag: string; audioLang?: "en"; isArabic?: true }[] = [
  // ── عربي مدبلج / مترجم (صوت عربي أصلي مدمج — لا ترجمة خارجية) ──────────
  { site: "shahiid",      name: "شاهيد أنمي",   desc: "عربي مدبلج / مترجم",      tag: "SH", isArabic: true },
  { site: "animelek",     name: "أنمي ليك",     desc: "عربي مدبلج / مترجم",      tag: "EK", isArabic: true },
  { site: "animedar",     name: "أنمي دار",     desc: "عربي مترجم",              tag: "AD", isArabic: true },
  { site: "okanime",      name: "أوك أنمي",     desc: "عربي مترجم",              tag: "OK", isArabic: true },
  { site: "ristoanime",   name: "ريستو أنمي",    desc: "عربي مترجم",              tag: "RS", isArabic: true },
  { site: "animeify",     name: "أنمي فاي",     desc: "عربي · ميغا",             tag: "AF", isArabic: true },
  { site: "animeday",     name: "أنمي داي",     desc: "عربي مدبلج · HLS مباشر",  tag: "DY", isArabic: true },
  { site: "seepanel",     name: "سي بانيل",     desc: "عربي مدبلج · HLS نظيف",   tag: "SP", isArabic: true },
  { site: "arabseed",     name: "عرب سيد",        desc: "عربي مدبلج/مترجم · MP4",   tag: "AS", isArabic: true },
  { site: "anime4up2",    name: "أنمي فور أب",     desc: "عربي مترجم · HLS/ميغا",    tag: "4U", isArabic: true },
  { site: "mycima",       name: "ماي سيما",        desc: "عربي مترجم · HLS/فيديو",   tag: "MC", isArabic: true },
  { site: "topcinemaa",   name: "توب سيما",        desc: "عربي مترجم · HLS/فيديو",   tag: "TC", isArabic: true },
  { site: "animephoenix", name: "فينكس أنمي",   desc: "1080p · MKV مباشر",        tag: "PH", isArabic: true },
  { site: "animetime",    name: "أنمي تايم",    desc: "عربي مترجم · HLS",         tag: "AT", isArabic: true },
  // ── ياباني مترجم (AniList ID مطلوب) ──────────────────────────────
  { site: "kawaii",       name: "كواي أنمي",    desc: "1080p · مباشر",            tag: "KW" },
  { site: "anikoto",      name: "AniKoto",       desc: "ياباني مترجم · 1080p",    tag: "AK" },
  { site: "hianime",      name: "HiAnime",       desc: "ياباني مترجم · HLS نظيف", tag: "HI" },
  { site: "animepahe",    name: "AnimePahe",      desc: "ياباني مترجم · HLS نظيف", tag: "AP" },
  { site: "animewitcher", name: "AnimeWitcher",   desc: "PD/ST · مباشر",           tag: "AW" },
  // ── ياباني مترجم (بدون ID) ────────────────────────────────────────
  { site: "anineko",      name: "AniNeko",        desc: "ياباني مترجم · HLS",      tag: "AN" },
  { site: "mitanime",     name: "ميتا أنمي",    desc: "ياباني مترجم",             tag: "MT" },
  { site: "animex",       name: "أنمي إكس",     desc: "ياباني مترجم · HLS",       tag: "AX" },
  { site: "anikuro",      name: "AniKuro",       desc: "ياباني مترجم · HLS",       tag: "KR" },
  // ── TMDB-native · صوت ياباني ─────────────────────────────────────────────
  { site: "starcima_anim", name: "StarCima",      desc: "TMDB · HLS · صوت ياباني",  tag: "SC" },
  // ── مصادر إنجليزية + ترجمة عربية (تظهر في قسم منفصل بالأسفل) ────────────
  { site: "videasy_anim",  name: "Videasy",       desc: "TMDB · HLS · ترجمة عربية", tag: "VE", audioLang: "en" },
  { site: "vidlink_anim",  name: "VidLink",       desc: "TMDB · HLS · ترجمة عربية", tag: "VL", audioLang: "en" },
  { site: "lordflix_anim", name: "LordFlix",      desc: "TMDB · HLS · ترجمة عربية", tag: "LF", audioLang: "en" },
  { site: "vyla_anim",     name: "Vyla",          desc: "TMDB · HLS · ترجمة عربية", tag: "VY", audioLang: "en" },
];

/** مجموعة المصادر العربية — لا تعرض زر الترجمة الخارجية لها */
const ARABIC_SITES = new Set(SCRAPER_DEFS.filter(d => d.isArabic).map(d => d.site));

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
  if (url.includes("video.kawaii-anime.com")) return false; // kawaii CDN (CORS * — direct HLS)
  if (url.includes("missourimonster-vyla.hf.space")) return false; // Vyla proxy (direct HLS)
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
  // CORS * CDNs — تشغيل مباشر في المتصفح بدون proxy
  if (url.includes("video.kawaii-anime.com")) {
    return { label: "كواي CDN", sublabel: "مباشر · 1080p", isHls: false, isDirect: true };
  }
  if (url.includes("pixeldrain.com/api/file/")) {
    return { label: "AnimeWitcher · PD", sublabel: "مباشر · 1080p", isHls: false, isDirect: true };
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
  // Vyla proxy (TMDB-native, direct HLS served from Vyla proxy)
  if (url.includes("missourimonster-vyla.hf.space")) {
    return { label: "Vyla", sublabel: "ياباني · HLS مترجم", isHls: true };
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
  const normalized = srt.replace(/\r\n/g, "\n").replace(/\r/g, "\n");
  // ── X-TIMESTAMP-MAP: HLS-native VTT (e.g. Videasy cc.boopigcdn.com) ──
  // Header: X-TIMESTAMP-MAP=MPEGTS:900000,LOCAL:00:00:00.000
  // → offset = 900000/90000 = 10 s → all cues appear 10 s late without this fix.
  let tsOffset = 0;
  const tsMapM = normalized.match(/X-TIMESTAMP-MAP=MPEGTS:(\d+),LOCAL:([\d:.]+)/i);
  if (tsMapM) {
    const mpegts = parseInt(tsMapM[1], 10) / 90000;
    const lm = tsMapM[2].match(/^(\d+):(\d{2}):(\d{2})[,.](\d{3})/);
    const local = lm ? parseInt(lm[1])*3600 + parseInt(lm[2])*60 + parseInt(lm[3]) + parseInt(lm[4])/1000 : 0;
    tsOffset = Math.max(0, mpegts - local);
  }
  const toSec = (ts: string) => {
    const m = ts.match(/(\d+):(\d{2}):(\d{2})[,.](\d{3})/);
    if (!m) return 0;
    const raw = parseInt(m[1]) * 3600 + parseInt(m[2]) * 60 + parseInt(m[3]) + parseInt(m[4]) / 1000;
    return Math.max(0, raw - tsOffset);
  };
  const blocks = normalized.split(/\n{2,}/);
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

/* ══════════════════════════════════ CLIENT-SIDE SUBTITLE CACHE ══════════
   طبقتا كاش:
   L1 = Map في الذاكرة (فوري، يُمسح عند إغلاق التبويب) — TTL 3 ساعات
   L2 = localStorage (دائم، يُمسح بعد 7 أيام) — يمنع إعادة الترجمة بعد إعادة التحميل
   المفتاح الأساسي: "sub-ar-{animeId}-ep{ep}" ← موحّد لكل سيرفر في نفس الحلقة
   المفتاح الاحتياطي: URL المُشفَّر (لـ VTT مباشر) */
const _subCueCache = new Map<string, { cues: SubCue[]; ts: number }>();
const SUB_SESSION_TTL = 3 * 3_600_000;   // L1 TTL — 3 ساعات
const SUB_LOCAL_TTL  = 7 * 86_400_000;   // L2 TTL — 7 أيام

function getCachedCues(key: string): SubCue[] | null {
  // L1 memory
  const hit = _subCueCache.get(key);
  if (hit) {
    if (Date.now() - hit.ts <= SUB_SESSION_TTL) return hit.cues;
    _subCueCache.delete(key);
  }
  // L2 localStorage
  try {
    const lsKey = "sc2-" + key.slice(0, 160);
    const raw = localStorage.getItem(lsKey);
    if (raw) {
      const p = JSON.parse(raw) as { cues: SubCue[]; ts: number };
      if (Date.now() - p.ts <= SUB_LOCAL_TTL) {
        _subCueCache.set(key, p); // warm-up L1
        return p.cues;
      }
      localStorage.removeItem(lsKey);
    }
  } catch { /* quota or parse error — silent */ }
  return null;
}
function setCachedCues(key: string, cues: SubCue[]) {
  const entry = { cues, ts: Date.now() };
  _subCueCache.set(key, entry);
  try {
    localStorage.setItem("sc2-" + key.slice(0, 160), JSON.stringify(entry));
  } catch { /* ignore quota exceeded */ }
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
          transition={{ delay: 0.03, duration: 0.18 }}
          className="text-white/85 text-[14px] font-black font-['Cairo'] tracking-wide text-center">
          اللهم صلِّ وسلِّم على نبينا محمد ﷺ
        </motion.p>

        {/* Large cover image */}
        {cover ? (
          <motion.div
            initial={{ opacity: 0, scale: 0.82, y: 28 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            transition={{ duration: 0.22, ease: [0.22, 1, 0.36, 1] }}
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
          transition={{ delay: 0.08, duration: 0.18 }}
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
          <AnimeMascot mood="loading" />
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
          <>
            <div className="absolute inset-0"
              style={{ background: "radial-gradient(ellipse at 50% 20%, rgba(109,40,217,0.60) 0%, rgba(79,30,180,0.28) 40%, transparent 72%)" }} />
            <div className="absolute inset-0"
              style={{ background: "radial-gradient(ellipse at 50% 100%, rgba(124,58,237,0.18) 0%, transparent 55%)" }} />
          </>
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
          transition={{ duration: 0.22, ease: [0.22, 1, 0.36, 1], delay: 0.03 }}
        >
          {/* Glow ring */}
          <div
            className="absolute -inset-5 rounded-[32px] pointer-events-none"
            style={{ background: "radial-gradient(ellipse at 50% 60%, rgba(139,92,246,0.55) 0%, rgba(109,40,217,0.22) 50%, transparent 75%)" }}
          />
          <div
            className="absolute -inset-3 rounded-[28px] pointer-events-none"
            style={{ boxShadow: "0 0 60px 8px rgba(124,58,237,0.30), 0 0 120px 16px rgba(109,40,217,0.12)" }}
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
              <div
                className="absolute inset-0"
                style={{ background: "radial-gradient(ellipse at 50% 30%, rgba(139,92,246,0.55) 0%, transparent 65%)", opacity: 0.4 }}
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
            transition={{ delay: 0.1, duration: 0.2, ease: [0.22, 1, 0.36, 1] }}
          >
            <div
              className="w-[60px] h-[60px] rounded-full flex items-center justify-center"
              style={{
                background: "rgba(109,40,217,0.82)",
                backdropFilter: "blur(12px)",
                border: "2px solid rgba(167,139,250,0.40)",
                boxShadow: "0 0 40px rgba(109,40,217,0.55), 0 8px 24px rgba(0,0,0,0.60)",
              }}
            >
              <Play className="w-7 h-7 text-white fill-white ml-1" />
            </div>
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
          <AnimeMascot mood="loading" />
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

const SourceRow = memo(function SourceRow({ src, idx, onPlaySrc }: { src: FetchedSrc; idx: number; onPlaySrc: (s: FetchedSrc) => void }) {
  const url       = src.directUrl || src.url;
  const cdn       = getCdnDisplayName(url);
  const site      = SITE_SHORT[src.site || ""] || src.site || "";
  const isEmbed   = !!src.isEmbed;
  const def       = SCRAPER_DEFS.find(d => d.site === src.site);
  const tag       = def?.tag || "??";
  const isEngAudio = def?.audioLang === "en";
  const q         = getSrcQualityTier(src);
  const qs        = QUALITY_STYLE[q];
  return (
    <motion.div
      initial={{ opacity: 0, y: 4 }} animate={{ opacity: 1, y: 0 }}
      transition={{ delay: Math.min(idx * 0.025, 0.14), duration: 0.14 }}>
      <div
        className="flex items-center px-3 py-2.5 gap-2.5 active:bg-white/[0.03] transition-colors cursor-pointer"
        style={{ borderBottom: "1px solid rgba(255,255,255,0.04)" }}
        onClick={() => onPlaySrc(src)}>
        <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
          style={{ background: qs.badge, border: `1px solid ${qs.border}` }}>
          {isEmbed
            ? <Tv2 className="w-3.5 h-3.5" style={{ color: qs.icon }} />
            : <MonitorPlay className="w-3.5 h-3.5" style={{ color: qs.icon }} />}
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-1.5 flex-wrap mb-0.5">
            <p className="text-white/90 text-[12px] font-black font-['Cairo'] leading-tight">سيرفر {idx + 1}</p>
            <span className="text-[11px] font-black px-2 py-0.5 rounded-md tracking-wide"
              dir="ltr"
              style={{ color: "rgba(255,255,255,0.80)", background: "rgba(255,255,255,0.10)", border: "1px solid rgba(255,255,255,0.18)", fontFamily: "monospace" }}>
              {tag}
            </span>
            {isEngAudio && (
              <span className="text-[10px] font-bold px-1.5 py-0.5 rounded-md font-['Cairo'] shrink-0"
                style={{ background: "rgba(59,130,246,0.14)", border: "1px solid rgba(59,130,246,0.30)", color: "rgba(147,197,253,0.90)" }}>
                🎌 ياباني/إنجليزي
              </span>
            )}
          </div>
          <div className="flex items-center gap-1 flex-wrap">
            {isEmbed && (
              <span className="font-mono text-[7px] font-bold px-1 py-0.5 rounded"
                style={{ background: "rgba(52,211,153,0.10)", color: "rgba(110,231,183,0.70)", border: "1px solid rgba(52,211,153,0.18)" }}>
                مدمج
              </span>
            )}
          </div>
        </div>
        <div className="flex items-center gap-1.5 shrink-0">
          <span className="font-mono text-[7px] font-bold px-1.5 py-0.5 rounded"
            style={{ background: qs.badge, border: `1px solid ${qs.border}`, color: qs.text }}>
            {Q_SHORT[q]}
          </span>
          {getDownloadUrl(src) && (
            <a href={getDownloadUrl(src)!} download target="_blank" rel="noreferrer"
              onClick={e => e.stopPropagation()}
              className="w-7 h-7 rounded-lg flex items-center justify-center active:scale-90 transition-transform shrink-0"
              style={{ background: "rgba(52,211,153,0.10)", border: "1px solid rgba(52,211,153,0.28)" }}>
              <Download className="w-3 h-3 text-emerald-400/85" />
            </a>
          )}
          <div className="flex items-center gap-0.5 px-2.5 py-1.5 rounded-xl active:scale-95 transition-transform"
            style={{ background: "linear-gradient(135deg, rgba(124,58,237,0.90), rgba(91,33,182,0.96))", border: "1px solid rgba(167,139,250,0.25)", boxShadow: "0 2px 10px rgba(109,40,217,0.25)" }}>
            <Play className="w-2.5 h-2.5 text-white fill-white" />
            <span className="text-white text-[10.5px] font-black font-['Cairo']">تشغيل</span>
          </div>
        </div>
      </div>
    </motion.div>
  );
});

function ScraperPicker({
  cover, title, ep, totalEps, animeId, anime,
  slotStatus, slotSources,
  onFetchSite, onPlaySrc,
  onBack, onNextEp, onPrevEp,
}: {
  cover: string; title: string; ep: number; totalEps: number; animeId: number;
  anime?: any;
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

  /* Flatten + filter + deduplicate all fetched sources — memoised to avoid re-work on every SSE tick */
  const { displaySources, embedFallbacks } = useMemo(() => {
    const flat: FetchedSrc[] = [];
    const seen = new Set<string>();
    for (const srcs of Object.values(slotSources)) {
      for (const s of srcs) {
        if (!shouldShowSrc(s)) continue;
        const key = s.directUrl || s.url;
        if (!key || seen.has(key)) continue;
        seen.add(key);
        flat.push(s);
      }
    }
    flat.sort((a, b) => {
      const tA = QUALITY_TIER_RANK[getSrcQualityTier(a)];
      const tB = QUALITY_TIER_RANK[getSrcQualityTier(b)];
      if (tA !== tB) return tB - tA;
      return (b.qualityRank ?? 0) - (a.qualityRank ?? 0);
    });
    const embeds: FetchedSrc[] = [];
    const seenE = new Set<string>();
    for (const srcs of Object.values(slotSources)) {
      for (const s of srcs) {
        if (!isEmbedFallback(s)) continue;
        const key = s.directUrl || s.url;
        if (!key || seenE.has(key)) continue;
        seenE.add(key);
        embeds.push(s);
      }
    }
    return { displaySources: flat, embedFallbacks: embeds };
  }, [slotSources]);

  /* Group ALL sources by quality tier — English-audio sites merged in (badge shown on card) */
  const grouped: Record<Quality, FetchedSrc[]> = useMemo(() => ({
    "1080p FHD": displaySources.filter(s => getSrcQualityTier(s) === "1080p FHD"),
    "720p HD":   displaySources.filter(s => getSrcQualityTier(s) === "720p HD"),
    "360p SD":   displaySources.filter(s => getSrcQualityTier(s) === "360p SD"),
  }), [displaySources]);

  const hasSources = displaySources.length > 0;
  const hasBackupSources = embedFallbacks.length > 0;

  /* ── Shared: extract anime metadata — memoised ── */
  const animeScore   = anime?.averageScore ? (anime.averageScore / 10) : 0;
  const animeGenres: string[] = anime?.genres?.slice(0, 6) || [];
  const animeDesc = useMemo(() => {
    const raw = anime?.description || "";
    return raw.replace(/<br\s*\/?>/gi, " ").replace(/<[^>]*>/gm, "")
      .replace(/&amp;/g,"&").replace(/&lt;/g,"<").replace(/&gt;/g,">")
      .replace(/&quot;/g,'"').replace(/&#039;/g,"'").replace(/&nbsp;/g," ")
      .replace(/\s+/g," ").trim().substring(0, 400);
  }, [anime?.description]);
  const animeStatus  = anime?.status ? (STATUS_MAP[anime.status]?.label || "") : "";
  const animeStudio  = anime?.studios?.nodes?.[0]?.name || "";
  const animeSeason  = anime?.seasonYear ? `${SEASON_MAP[anime.season] || ""} ${anime.seasonYear}`.trim() : "";
  const animeBanner  = anime?.bannerImage || anime?.coverImage?.extraLarge || cover;

  /* ── Shared: hero section (compact header — no large banner) ── */
  const HeroSection = (
    <>
      {/* Compact top bar: back + episode nav */}
      <div className="flex items-center justify-between px-4 pb-2"
        style={{ paddingTop: "max(16px, env(safe-area-inset-top))" }}>
        <button onClick={onBack}
          className="w-10 h-10 bg-white/8 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 active:scale-90 transition-transform shrink-0">
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        <div className="flex items-center gap-2">
          <button onClick={onPrevEp} disabled={ep <= 1}
            className="flex items-center gap-1 px-3 py-1.5 rounded-xl text-[11px] font-bold font-['Cairo'] active:scale-90 disabled:opacity-20 transition-all"
            style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.14)", backdropFilter: "blur(10px)", color: "rgba(255,255,255,0.65)" }}>
            <ChevronRight className="w-3.5 h-3.5" />السابقة
          </button>
          <button onClick={onNextEp} disabled={totalEps < 900 && ep >= totalEps}
            className="flex items-center gap-1 px-3 py-1.5 rounded-xl text-[11px] font-bold font-['Cairo'] active:scale-90 disabled:opacity-20 transition-all"
            style={{ background: "rgba(109,40,217,0.55)", border: "1px solid rgba(139,92,246,0.38)", backdropFilter: "blur(10px)", color: "rgba(196,181,253,0.92)" }}>
            التالية<ChevronLeft className="w-3.5 h-3.5" />
          </button>
        </div>
      </div>

      {/* Small poster + title row */}
      <div className="px-4 pt-1 flex gap-4 items-start">
        <div className="relative shrink-0">
          <div className="absolute inset-0 rounded-2xl blur-xl scale-95 translate-y-2 opacity-60"
            style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }} />
          <div className="relative w-[72px] h-[102px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl shadow-black/80">
            {cover
              ? <img src={cover} alt={title} className="w-full h-full object-cover" />
              : <div className="w-full h-full bg-white/8 flex items-center justify-center"><Play className="w-6 h-6 text-white/20 fill-white/10" /></div>
            }
          </div>
          {anime?.format && FORMAT_MAP[anime.format] && (
            <div className="absolute -bottom-2 left-1/2 -translate-x-1/2 bg-[#1C1C22] border border-white/12 text-white/60 text-[9px] font-black px-2 py-1 rounded-lg whitespace-nowrap font-['Cairo']">
              {FORMAT_MAP[anime.format]}
            </div>
          )}
        </div>
        <div className="flex-1 pb-3 min-w-0 space-y-1.5">
          <h1 className="text-[17px] font-black text-white leading-snug font-['Cairo'] line-clamp-2">{title}</h1>
          <p className="text-[10px] text-white/35 font-['Cairo']">
            {anime?.title?.native || anime?.title?.romaji || ""}
          </p>
          <div className="flex flex-wrap gap-1.5">
            <span className="px-2 py-1 rounded-lg text-[9px] font-black font-['Cairo']"
              style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.32)", color: "rgba(196,181,253,0.92)" }}>
              الحلقة {ep}
            </span>
            {animeStatus && (
              <span className={`text-[9px] font-black px-2 py-1 rounded-lg border font-['Cairo'] ${STATUS_MAP[anime?.status]?.color || "text-white/50 bg-white/8 border-white/10"}`}>
                {animeStatus}
              </span>
            )}
          </div>
        </div>
      </div>

      {/* Score row */}
      {animeScore > 0 && (
        <div className="mx-4 mt-4 rounded-2xl px-4 py-2.5 flex items-center gap-3"
          style={{ background: "rgba(251,191,36,0.06)", border: "1px solid rgba(251,191,36,0.16)" }}>
          <div className="flex items-center gap-0.5">
            {[1,2,3,4,5].map(i => (
              <Star key={i} className={`w-3.5 h-3.5 ${animeScore/2 >= i ? "text-amber-400 fill-amber-400" : "text-white/15"}`} />
            ))}
          </div>
          <span className="text-amber-300 text-[15px] font-black">{animeScore.toFixed(1)}</span>
          <span className="text-white/30 text-[10px] font-['Cairo']">/ 10</span>
          {anime?.popularity > 0 && (
            <span className="mr-auto text-white/25 text-[9px] font-['Cairo']">{anime.popularity.toLocaleString()} مستخدم</span>
          )}
        </div>
      )}

      {/* Genre tags */}
      {animeGenres.length > 0 && (
        <div className="mt-3 px-4 flex gap-2 overflow-x-auto pb-1" style={{ scrollbarWidth: "none" }}>
          {animeGenres.map((g: string) => (
            <span key={g}
              className="shrink-0 text-[10px] font-bold bg-[#18181B] text-white/55 px-3 py-1.5 rounded-xl border border-white/6 font-['Cairo'] whitespace-nowrap">
              {GENRE_MAP[g] || g}
            </span>
          ))}
        </div>
      )}

      {/* Studio + season */}
      {(animeStudio || animeSeason) && (
        <div className="px-4 mt-3 flex gap-3 flex-wrap">
          {animeStudio && (
            <div className="flex items-center gap-1.5 text-white/35 text-[10px] font-['Cairo']">
              <Sparkles className="w-3 h-3" />{animeStudio}
            </div>
          )}
          {animeSeason && (
            <div className="flex items-center gap-1.5 text-white/35 text-[10px] font-['Cairo']">
              <Calendar className="w-3 h-3" />{animeSeason}
            </div>
          )}
        </div>
      )}

      {/* Synopsis */}
      {animeDesc && (
        <div className="mt-4 px-4">
          <div className="flex items-center mb-2">
            <div className="w-1 h-4 bg-primary rounded-full ml-2" />
            <h2 className="text-[13px] font-black font-['Cairo']">القصة</h2>
          </div>
          <div className="bg-[#111116] border border-white/6 rounded-2xl p-3.5">
            <p className="text-[#B4B4B8] leading-relaxed text-[12px] font-['Cairo'] line-clamp-4">{animeDesc}</p>
          </div>
        </div>
      )}
    </>
  );

  /* ── While scrapers are still running AND no sources yet: show loading screen ── */
  /* If sources already arrived (from a previous run or fast scraper), skip loading screen */
  if (!allDone && !hasSources && !hasBackupSources) {
    return (
      <div className="fixed inset-0 bg-[#07070d] overflow-hidden" dir="rtl">
        {/* Blurred poster background */}
        {cover && (
          <div className="absolute inset-0">
            <img src={cover} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.15] saturate-150" />
            <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/85 via-[#07070d]/50 to-[#07070d]/92" />
          </div>
        )}

        {/* Back button */}
        <button onClick={onBack}
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
          style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)", marginTop: "max(0px, env(safe-area-inset-top))" }}>
          <ChevronRight className="w-5 h-5 text-white/60" />
        </button>

        {/* Centered content */}
        <div className="relative h-full flex flex-col items-center justify-center gap-4 px-6">
          {/* Prayer */}
          <motion.p
            initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.05, duration: 0.4 }}
            className="text-white/85 text-[13px] font-black font-['Cairo'] tracking-wide text-center">
            اللهم صلِّ وسلِّم على نبينا محمد ﷺ
          </motion.p>

          {/* Poster */}
          {cover ? (
            <motion.div
              initial={{ opacity: 0, scale: 0.88, y: 24 }}
              animate={{ opacity: 1, scale: 1, y: 0 }}
              transition={{ duration: 0.24, ease: [0.22, 1, 0.36, 1] }}
              className="relative shrink-0">
              <div className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{ background: "radial-gradient(ellipse, rgba(139,92,246,0.22) 0%, transparent 68%)" }} />
              <img src={cover} alt={title}
                className="rounded-2xl object-cover"
                style={{ width: "clamp(130px, 40vw, 176px)", height: "clamp(184px, 57vw, 248px)", boxShadow: "0 28px 72px rgba(0,0,0,0.88), 0 0 0 1px rgba(255,255,255,0.08)" }} />
            </motion.div>
          ) : (
            <motion.div
              initial={{ opacity: 0 }} animate={{ opacity: 1 }}
              className="rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{ width: "clamp(130px, 40vw, 176px)", height: "clamp(184px, 57vw, 248px)", boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
              <div className="w-16 h-16 rounded-full bg-violet-500/15 flex items-center justify-center">
                <div className="w-7 h-7 rounded-full bg-violet-500/35" />
              </div>
            </motion.div>
          )}

          {/* Title + episode */}
          <motion.div
            initial={{ opacity: 0, y: 14 }} animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.1, duration: 0.22 }}
            className="text-center">
            {title && (
              <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
                style={{ textShadow: "0 2px 14px rgba(0,0,0,0.75)" }}>{title}</h2>
            )}
            <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-[12px] font-bold font-['Cairo']"
              style={{ background: "rgba(124,58,237,0.22)", border: "1px solid rgba(139,92,246,0.30)", color: "rgba(196,181,253,0.9)" }}>
              الحلقة {ep}
            </span>
          </motion.div>

          {/* Spinner + text */}
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }}
            transition={{ delay: 0.28 }}
            className="flex flex-col items-center gap-3">
            <div className="relative w-9 h-9">
              <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
              <motion.div
                className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
                animate={{ rotate: 360 }}
                transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }}
              />
            </div>
            <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">
              ⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.
            </p>
            <AnimeMascot mood="loading" />
          </motion.div>
        </div>
      </div>
    );
  }

  return (
    <div className="fixed inset-0 z-50 flex flex-col bg-[#07070d]" dir="rtl">
      {/* ── Scrollable content ── */}
      <div className="flex-1 overflow-y-auto" style={{ scrollbarWidth: "none" }}>
        {HeroSection}

        {/* ── Watch / Sources section header ── */}
        <div className="px-4 mt-6 mb-1">
          <div className="flex items-center justify-between mb-2">
            <div className="flex items-center gap-2">
              <div className="w-1 h-4 bg-primary rounded-full" />
              <h2 className="text-[13px] font-black font-['Cairo']">مصادر المشاهدة</h2>
            </div>
            {(hasSources || hasBackupSources) && (
              <span className="px-2.5 py-1 rounded-xl text-[10px] font-black font-['Cairo']"
                style={{ background: "rgba(52,211,153,0.12)", border: "1px solid rgba(52,211,153,0.26)", color: "rgba(110,231,183,0.82)" }}>
                {displaySources.length + embedFallbacks.length} مصدر
              </span>
            )}
          </div>
          {(hasSources || hasBackupSources) && (
            <div className="px-3 py-2.5 rounded-xl flex items-center gap-2.5 mb-3"
              style={{ background: "rgba(251,191,36,0.07)", border: "1px solid rgba(251,191,36,0.15)" }}>
              <span className="text-sm shrink-0">⚠️</span>
              <p className="text-[10px] text-amber-200/55 font-['Cairo'] leading-snug">
                <span className="text-amber-300/75 font-black">السيرفر لا يعمل؟</span> جرّب سيرفراً آخر.
              </p>
            </div>
          )}
        </div>

        {(hasSources || hasBackupSources) ? (
          <>
            {/* ── Main sources: Arabic / Japanese ── */}
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
                  <div className="flex items-center gap-2 px-4 pt-3 pb-2">
                    <div className="w-1.5 h-1.5 rounded-full shrink-0"
                      style={{ background: qs.dot, boxShadow: `0 0 6px ${qs.dot}88` }} />
                    <span className="text-[10px] font-bold font-['Cairo'] tracking-wider" style={{ color: qs.text }}>
                      {Q_LABEL[q]}
                    </span>
                    <span className="mr-auto font-mono text-[9px] font-bold px-1.5 py-0.5 rounded"
                      style={{ background: qs.badge, border: `1px solid ${qs.border}`, color: qs.text }}>
                      {srcs.length}
                    </span>
                  </div>
                  {srcs.map((src, i) => (
                    <SourceRow key={`${src.site}-${rowIdx + i}`} src={src} idx={rowIdx + i} onPlaySrc={onPlaySrc} />
                  ))}
                </div>
              );
            })}


            {/* ── Backup / embed sources section (mega / vidmoly) ── */}
            {hasBackupSources && (
              <div className="mt-5 px-4">
                <div className="flex items-center gap-2 mb-2">
                  <div className="w-1 h-4 rounded-full" style={{ background: "rgba(99,102,241,0.85)" }} />
                  <h2 className="text-[13px] font-black font-['Cairo']">سيرفرات احتياطية</h2>
                  <span className="mr-auto font-mono text-[9px] font-bold px-1.5 py-0.5 rounded"
                    style={{ background: "rgba(99,102,241,0.12)", border: "1px solid rgba(99,102,241,0.28)", color: "rgba(165,180,252,0.80)" }}>
                    {embedFallbacks.length}
                  </span>
                </div>
                <div className="px-3 py-2 rounded-xl flex items-center gap-2 mb-2"
                  style={{ background: "rgba(99,102,241,0.07)", border: "1px solid rgba(99,102,241,0.18)" }}>
                  <span className="text-sm shrink-0">ℹ️</span>
                  <p className="text-[10px] font-['Cairo'] leading-snug" style={{ color: "rgba(165,180,252,0.60)" }}>
                    تُشغَّل داخل مشغّل مدمج — جرّبها إن لم تعمل المصادر المباشرة
                  </p>
                </div>
                <div className="rounded-2xl overflow-hidden"
                  style={{ border: "1px solid rgba(99,102,241,0.15)", background: "rgba(99,102,241,0.04)" }}>
                  {embedFallbacks.map((src, i) => (
                    <SourceRow key={`embed-backup-${i}`} src={src} idx={i} onPlaySrc={onPlaySrc} />
                  ))}
                </div>
              </div>
            )}
          </>
        ) : (
          <motion.div
            initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ duration: 0.3 }}
            className="flex flex-col items-center justify-center py-10 gap-5 px-8">
            <div className="w-16 h-16 rounded-3xl flex items-center justify-center"
              style={{ background: "rgba(239,68,68,0.08)", border: "1px solid rgba(239,68,68,0.18)" }}>
              <AlertTriangle className="w-7 h-7 text-red-400/60" />
            </div>
            <div className="text-center flex flex-col gap-2">
              <p className="text-white/70 text-[16px] font-black font-['Cairo']">الحلقة {ep} غير متوفرة بعد</p>
              <p className="text-white/28 text-[12px] font-['Cairo'] leading-relaxed">
                المصادر العربية تتأخر عادةً ٢–٣ حلقات عن البث الأصلي.
              </p>
            </div>
            {ep > 1 && (
              <button onClick={onPrevEp}
                className="flex items-center gap-2 px-5 py-2.5 rounded-2xl text-[13px] font-black font-['Cairo'] active:scale-95 transition-transform"
                style={{ background: "rgba(124,58,237,0.18)", border: "1px solid rgba(124,58,237,0.30)", color: "rgba(196,181,253,0.90)" }}>
                <ChevronRight className="w-4 h-4" />جرّب الحلقة {ep - 1}
              </button>
            )}
          </motion.div>
        )}

        {/* Episode comments */}
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
  const [showBar, setShowBar] = useState(true);
  const containerRef = useRef<HTMLDivElement>(null);
  const hideTimerRef  = useRef<ReturnType<typeof setTimeout> | null>(null);

  /* schedule bar hide after 3 s */
  const scheduleHide = useCallback(() => {
    if (hideTimerRef.current) clearTimeout(hideTimerRef.current);
    hideTimerRef.current = setTimeout(() => setShowBar(false), 3000);
  }, []);

  /* show bar + restart hide timer */
  const revealBar = useCallback(() => {
    setShowBar(true);
    scheduleHide();
  }, [scheduleHide]);

  useEffect(() => {
    /* start the initial hide countdown */
    scheduleHide();
    return () => { if (hideTimerRef.current) clearTimeout(hideTimerRef.current); };
  }, [scheduleHide]);

  useEffect(() => {
    const fn = () => {
      const inFs = !!document.fullscreenElement;
      setIsFs(inFs);
      if (!inFs) {
        try { (screen.orientation as any).unlock?.(); } catch {}
      }
    };
    document.addEventListener("fullscreenchange", fn);
    const timer = setTimeout(() => {
      const el = containerRef.current;
      if (el && !document.fullscreenElement) {
        el.requestFullscreen?.()
          .then(() => {
            try { (screen.orientation as any).lock?.("landscape").catch(() => {}); } catch {}
          })
          .catch(() => {});
      }
    }, 150);
    return () => {
      document.removeEventListener("fullscreenchange", fn);
      clearTimeout(timer);
      try { (screen.orientation as any).unlock?.(); } catch {}
    };
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
      className="fixed inset-0 z-50 bg-black overflow-hidden"
      initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
      transition={{ duration: 0.2 }}
      dir="rtl"
      /* tap anywhere to toggle bar visibility */
      onClick={revealBar}
    >
      {/* ── iframe fills entire screen ── */}
      <iframe
        key={src}
        src={src}
        className="absolute inset-0 w-full h-full border-0 bg-black"
        sandbox="allow-scripts allow-same-origin allow-forms allow-presentation"
        allow="fullscreen; autoplay"
        title={`${title} - الحلقة ${ep}`}
      />

      {/* ── Top bar overlay (auto-hides) ── */}
      <div
        className="absolute inset-x-0 top-0 pointer-events-none z-10"
        style={{
          opacity: showBar ? 1 : 0,
          transition: "opacity 0.35s ease",
        }}
      >
        <div
          className="flex items-center gap-3 px-4 pt-4 pb-6 pointer-events-auto"
          style={{ background: "linear-gradient(180deg, rgba(0,0,0,0.80) 0%, transparent 100%)" }}
        >
          <button
            onClick={e => { e.stopPropagation(); onBack(); }}
            className="w-9 h-9 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-all shrink-0"
            style={{ border: "1px solid rgba(255,255,255,0.1)" }}
          >
            <ChevronRight className="w-5 h-5 text-white/80" />
          </button>
          <div className="flex-1 min-w-0">
            <p className="text-white/85 text-[13px] font-bold font-['Cairo'] truncate">{title}</p>
            <span className="text-white/35 text-[11px] font-['Cairo']">الحلقة {ep}</span>
          </div>
          <button
            onClick={e => { e.stopPropagation(); toggleFs(); }}
            className="w-9 h-9 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-all shrink-0"
            style={{ border: "1px solid rgba(255,255,255,0.1)" }}
          >
            {isFs ? <Minimize2 className="w-4 h-4 text-white/70" /> : <Maximize2 className="w-4 h-4 text-white/70" />}
          </button>
        </div>
      </div>

    </motion.div>
  );
}


/* ══════════════════════════════════ EPISODE PLAYER ═════════ */
function EpisodePlayer({
  servers, quality, allServers,
  title, epTitle, cover, ep, totalEps, animeTitle, animeId,
  userId,
  initialServer, downloadUrl, subtitleUrl, subtitleSite, skipTimes, hideSubtitle,
  onBack, onNextEp, onPrevEp, onEpisodeSelect, onChangeQuality, onTierExhausted,
}: {
  servers: string[]; quality: Quality; allServers: Record<Quality, string[]>;
  title: string; epTitle?: string; cover: string; ep: number; totalEps: number; animeTitle: string;
  animeId: number;
  userId?: string | null;
  initialServer?: number; downloadUrl?: string; subtitleUrl?: string; subtitleSite?: string; skipTimes?: SkipTimes;
  hideSubtitle?: boolean;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
  onEpisodeSelect?: (ep: number) => void;
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
      saveProgressServer(userId ?? null, animeId, ep, t, 0, "anime");
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progressKey, userId, animeId, ep]);

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

  /* ── Stop audio/video when player unmounts (e.g. going back to picker) ── */
  useEffect(() => {
    return () => {
      document.querySelectorAll<HTMLVideoElement>("video, audio").forEach(v => {
        try { v.pause(); v.src = ""; v.load(); } catch {}
      });
    };
  }, []);

  /* ── Orientation tracking for subtitle panel ── */
  useEffect(() => {
    const onResize = () => setIsLandscape(window.innerWidth > window.innerHeight);
    window.addEventListener("resize", onResize);
    const mq = window.matchMedia("(orientation: landscape)");
    const onOrient = (e: MediaQueryListEvent) => setIsLandscape(e.matches);
    mq.addEventListener("change", onOrient);
    return () => {
      window.removeEventListener("resize", onResize);
      mq.removeEventListener("change", onOrient);
    };
  }, []);

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
  const [showOffsetControls, setShowOffsetControls] = useState(false);
  const [showSubPanel, setShowSubPanel] = useState(false);
  const [subSettings,  setSubSettings] = useState<SubSettings>(loadSubSettings);
  /* ── Whisper audio transcription state ── */
  const [whisperStatus, setWhisperStatus] = useState<"idle"|"loading"|"ready"|"error">("idle");
  const [whisperLang,   setWhisperLang]   = useState<string>("");
  const [isLandscape,  setIsLandscape] = useState(() => typeof window !== "undefined" && window.innerWidth > window.innerHeight);
  /* ── Multi-track subtitle system ── */
  const [subTracks,    setSubTracks]   = useState<SubTrack[]>([]);
  const [subChoice,    setSubChoice]   = useState<SubChoice>("off");
  const [subStatus,    setSubStatus]   = useState<"off"|"discovering"|"loading"|"translating"|"ready"|"failed">("off");
  const [ttsDub,       setTtsDub]      = useState(false);
  const subAbortRef = useRef<AbortController | null>(null);
  const ttsLastCueRef = useRef("");

  /* ── Persist subtitle settings to localStorage whenever they change ── */
  useEffect(() => {
    try { localStorage.setItem("sub-settings-v1", JSON.stringify(subSettings)); } catch {}
  }, [subSettings]);

  const currentUrl  = servers[currentServer] || "";

  /* ── Track URL changes (don't clear cues immediately — let new load overwrite) ── */
  const prevUrlRef = useRef(currentUrl);

  /* ── Reset tracks when episode changes ── */
  const prevEpRef = useRef(ep);
  if (prevEpRef.current !== ep) {
    prevEpRef.current = ep;
    subAbortRef.current?.abort();
    if (subTracks.length > 0) setSubTracks([]);
    if (subChoice !== "off") setSubChoice("off");
    if (subStatus !== "off") setSubStatus("off");
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
      saveProgressServer(userId ?? null, animeId, ep, t, 0, "anime");
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progressKey, userId, animeId, ep]);

  /* ── Reset on quality tier change only ── */
  useEffect(() => {
    if (isFirstQualityMount.current) { isFirstQualityMount.current = false; return; }
    setCurrentServer(0);
    setRealQuality(null);
  }, [quality]);

  /* ── Helper: parse timestamp string to seconds ── */
  function toSec(ts: string): number {
    const m = ts.trim().match(/^(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
    if (m) return +m[1]*3600 + +m[2]*60 + +m[3] + parseInt(m[4].padEnd(3,"0"))/1000;
    const m2 = ts.trim().match(/^(\d+):(\d{2})[,.](\d{1,3})/);
    if (m2) return +m2[1]*60 + +m2[2] + parseInt(m2[3].padEnd(3,"0"))/1000;
    return 0;
  }

  /* ── loadTrack: fetch one subtitle track and fill subCues ── */
  const loadTrack = useCallback(async (
    track: SubTrack,
    mode: "direct" | "translate",
    signal?: AbortSignal,
  ): Promise<boolean> => {
    const isTranslateUrl = track.url.startsWith("/api/anime/translate-vtt");
    if (mode === "translate" || isTranslateUrl) {
      // مفتاح موحّد: نفس الحلقة = نفس الكاش حتى لو تغيّر السيرفر
      const normKey = animeId ? `sub-ar-${animeId}-ep${ep}` : track.url;
      const urlKey  = track.url;
      // ✅ فحص كاش الكلايت أولاً — فوري بدون تأخير
      const cached = getCachedCues(normKey) ?? getCachedCues(urlKey);
      if (cached) {
        setSubCues(cached); setSubLang("ara"); setSubState("ready"); setSubStatus("ready");
        return true;
      }
      setSubCues([]);
      setSubStatus("translating");

      // 🔤 Phase 1: عرض الترجمة الإنجليزية فوراً ريثما تنتهي الترجمة العربية
      let arDone = false;
      void (async () => {
        try {
          const rawVtt = isTranslateUrl
            ? (() => { try { return new URL("http://x" + track.url).searchParams.get("url"); } catch { return null; } })()
            : track.url;
          if (!rawVtt || signal?.aborted) return;
          const enR = await fetch(`/api/anime/proxy-text?url=${encodeURIComponent(rawVtt)}`, {
            signal: AbortSignal.timeout(10_000),
          });
          if (!enR.ok || signal?.aborted || arDone) return;
          const enCues = parseSrt(await enR.text());
          if (enCues.length && !signal?.aborted && !arDone) {
            setSubCues(enCues); setSubLang("eng"); setSubState("ready");
          }
        } catch { /* ignore — translation will still load */ }
      })();

      // 🌍 Phase 2: ترجمة عربية كاملة (تُستبدل الإنجليزية عند الانتهاء)
      const vttUrl = isTranslateUrl
        ? track.url
        : `/api/anime/translate-vtt?url=${encodeURIComponent(track.url)}&from=en&to=ar`;
      try {
        const r = await fetch(vttUrl, { signal: signal ?? AbortSignal.timeout(120_000) });
        if (!r.ok) { setSubStatus("failed"); return false; }
        const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
        if (!d.cues?.length) { setSubStatus("failed"); return false; }
        const cues = d.cues.map(c => {
          const [s, e] = c.timing.split("-->").map(x => x.trim());
          return { start: toSec(s||""), end: toSec(e||""), text: c.text };
        }).filter(c => c.start < c.end && c.text.trim());
        if (!cues.length || (signal && signal.aborted)) { setSubStatus("failed"); return false; }
        arDone = true;
        // 💾 حفظ بالمفتاحين: الموحّد (لتسريع تغيير السيرفر) + URL (للرجوع)
        setCachedCues(normKey, cues);
        setCachedCues(urlKey,  cues);
        setSubCues(cues); setSubLang("ara"); setSubState("ready"); setSubStatus("ready");
        return true;
      } catch { setSubStatus("failed"); return false; }
    } else {
      setSubCues([]);
      setSubStatus("loading");
      try {
        const r = await fetch(`/api/anime/proxy-text?url=${encodeURIComponent(track.url)}`, {
          signal: signal ?? AbortSignal.timeout(12_000),
        });
        if (!r.ok) { setSubStatus("failed"); return false; }
        const cues = parseSrt(await r.text());
        if (!cues.length || (signal && signal.aborted)) { setSubStatus("failed"); return false; }
        setSubCues(cues);
        setSubLang(track.lang === "ar" ? "ara" : "eng");
        setSubState("ready"); setSubStatus("ready");
        return true;
      } catch { setSubStatus("failed"); return false; }
    }
  }, []);

  /* ── changeSubChoice: user picks a language track ── */
  const changeSubChoice = useCallback(async (choice: SubChoice) => {
    setSubChoice(choice);
    if (choice === "off") {
      subAbortRef.current?.abort();
      setSubCues([]); setSubLang(null); setSubState("idle"); setSubStatus("off");
      return;
    }
    const arTrack   = subTracks.find(t => t.lang === "ar");
    const arAutoTrk = subTracks.find(t => t.lang === "ar-auto");
    const enTrack   = subTracks.find(t => t.lang === "en");
    subAbortRef.current?.abort();
    const ctrl = new AbortController();
    subAbortRef.current = ctrl;
    if (choice === "ar" && arTrack) {
      await loadTrack(arTrack, "direct", ctrl.signal);
    } else if (choice === "ar-auto") {
      const trk = arAutoTrk ?? enTrack;
      if (trk) await loadTrack(trk, arAutoTrk ? "direct" : "translate", ctrl.signal);
      else setSubStatus("failed");
    } else if (choice === "en" && enTrack) {
      await loadTrack(enTrack, "direct", ctrl.signal);
    } else {
      setSubStatus("failed");
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [subTracks, loadTrack]);

  /* ── fetchSubtitles: called when user clicks the CC button ── */
  async function fetchSubtitles() {
    setShowSubPanel(p => !p);

    /* If already have tracks — just open the panel */
    if (subTracks.length > 0 || subStatus === "discovering") return;

    subAbortRef.current?.abort();
    const ctrl = new AbortController();
    subAbortRef.current = ctrl;

    /* If the source already provides a subtitleUrl (kawaii/anikoto/anineko) — use it directly */
    if (subtitleUrl && subState !== "ready") {
      // ✅ كاش الكلايت: تحقق أولاً — إذا موجود يعمل فوراً
      const cachedHit = getCachedCues(subtitleUrl);
      if (cachedHit) {
        setSubCues(cachedHit); setSubLang("ara"); setSubState("ready"); setSubStatus("ready"); return;
      }
      setSubStatus("translating");
      setSubState("loading");
      setSubCues([]);
      try {
        if (subtitleUrl.startsWith("/api/anime/translate-vtt")) {
          // 🔤 Phase 1: عرض إنجليزي فوري ريثما تنتهي الترجمة
          let arAutoloadDone = false;
          const rawEnUrl = (() => { try { return new URL("http://x" + subtitleUrl).searchParams.get("url"); } catch { return null; } })();
          if (rawEnUrl) {
            void (async () => {
              try {
                const enR = await fetch(`/api/anime/proxy-text?url=${encodeURIComponent(rawEnUrl)}`, { signal: AbortSignal.timeout(10_000) });
                if (enR.ok && !arAutoloadDone) {
                  const enCues = parseSrt(await enR.text());
                  if (enCues.length && !arAutoloadDone) {
                    setSubCues(enCues); setSubLang("eng"); setSubState("ready"); setSubStatus("translating");
                  }
                }
              } catch {}
            })();
          }
          // 🌍 Phase 2: الترجمة العربية الكاملة
          const r = await fetch(subtitleUrl, { signal: AbortSignal.timeout(45_000) });
          if (r.ok) {
            const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
            if (d.cues?.length) {
              const cues = d.cues.map(c => {
                const [s, e] = c.timing.split("-->").map(x => x.trim());
                return { start: toSec(s||""), end: toSec(e||""), text: c.text };
              }).filter(c => c.start < c.end && c.text.trim());
              if (cues.length) {
                arAutoloadDone = true;
                setCachedCues(subtitleUrl, cues); // 💾
                setSubCues(cues); setSubLang("ara"); setSubState("ready"); setSubStatus("ready"); return;
              }
            }
          }
        } else {
          // 🔤 Phase 1: عرض إنجليزي فوري
          let arFetchDone = false;
          void (async () => {
            try {
              const enR = await fetch(`/api/anime/proxy-text?url=${encodeURIComponent(subtitleUrl)}`, { signal: AbortSignal.timeout(10_000) });
              if (enR.ok && !arFetchDone) {
                const enCues = parseSrt(await enR.text());
                if (enCues.length && !arFetchDone) {
                  setSubCues(enCues); setSubLang("eng"); setSubState("ready"); setSubStatus("translating");
                }
              }
            } catch {}
          })();
          // 🌍 Phase 2: ترجمة عربية
          const r = await fetch(
            `/api/anime/translate-vtt?url=${encodeURIComponent(subtitleUrl)}&from=en&to=ar`,
            { signal: AbortSignal.timeout(45_000) },
          );
          if (r.ok) {
            const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
            if (d.cues?.length) {
              const cues = d.cues.map(c => {
                const [s, e] = c.timing.split("-->").map(x => x.trim());
                return { start: toSec(s||""), end: toSec(e||""), text: c.text };
              }).filter(c => c.start < c.end && c.text.trim());
              if (cues.length) {
                arFetchDone = true;
                setCachedCues(subtitleUrl, cues); // 💾
                setSubCues(cues); setSubLang("ara"); setSubState("ready"); setSubStatus("ready"); return;
              }
            }
          }
        }
      } catch { /* fall through to API discovery */ }
    }

    /* Discover tracks via /api/anime/subtitle-tracks */
    setSubStatus("discovering");
    try {
      const params = new URLSearchParams({
        anilistId: String(animeId),
        ep: String(ep),
        title: animeTitle,
        english: animeTitle,
      });
      const r = await fetch(`/api/anime/subtitle-tracks?${params}`, { signal: AbortSignal.timeout(20_000) });
      if (!r.ok || ctrl.signal.aborted) { setSubStatus("failed"); return; }
      const d = await r.json() as { tracks?: SubTrack[] };
      const tracks = d.tracks || [];
      setSubTracks(tracks);
      if (!tracks.length) { setSubStatus("failed"); return; }

      const arTrk   = tracks.find(t => t.lang === "ar");
      const arAuto  = tracks.find(t => t.lang === "ar-auto");
      const enTrk   = tracks.find(t => t.lang === "en");

      if (arTrk) {
        setSubChoice("ar");
        await loadTrack(arTrk, "direct", ctrl.signal);
      } else if (arAuto || enTrk) {
        setSubChoice("ar-auto");
        const trk = arAuto ?? enTrk!;
        await loadTrack(trk, arAuto ? "direct" : "translate", ctrl.signal);
      } else if (enTrk) {
        setSubChoice("en");
        await loadTrack(enTrk, "direct", ctrl.signal);
      } else {
        setSubStatus("failed");
      }
    } catch {
      if (!ctrl.signal.aborted) setSubStatus("failed");
    }
  }

  function adjustOffset(delta: number) {
    setSubOffset(o => o + delta);
  }

  /* ── Reset subState to idle when subtitleUrl changes (e.g. switching to kawaii source) ── */
  useEffect(() => {
    // فحص الكاش أولاً — إذا موجود نُطبّقه فوراً بدون reset
    if (subtitleUrl) {
      const cached = getCachedCues(subtitleUrl);
      if (cached) {
        setSubCues(cached); setSubLang("ara"); setSubState("ready"); setSubStatus("ready");
        return;
      }
    }
    // Auto-sync: reset offset to 0 on every new subtitle source so X-TIMESTAMP-MAP takes over
    setSubOffset(0);
    setSubState("idle");
    setSubCues([]);
    setSubLang(null);
  }, [subtitleUrl]);

  /* ── Re-apply subtitle choice when server URL changes ── */
  const prevUrlForSubRef = useRef(currentUrl);
  useEffect(() => {
    if (prevUrlForSubRef.current === currentUrl) return;
    prevUrlForSubRef.current = currentUrl;
    // Reset timing offset on every server switch so old adjustments don't bleed over
    setSubOffset(0);
    if (subChoice === "off") return;
    const saved = subChoice;
    /* ── FIX: Videasy desync — if new source has its OWN subtitleUrl (Videasy, kawaii, AniKoto),
       NEVER use the normKey cache which may hold timing from a DIFFERENT source.
       The subtitleUrl effect below will load the correct timing for this source. ── */
    if (subtitleUrl) {
      const cached = getCachedCues(subtitleUrl);
      if (cached) {
        setSubCues(cached); setSubLang("ara"); setSubState("ready"); setSubStatus("ready");
      } else {
        // Clear stale cues from previous source; subtitleUrl effect will load fresh
        setSubCues([]); setSubState("idle"); setSubStatus("off");
      }
      return;
    }
    // 1. No subtitleUrl → use normalized episode cache (safe: same ep, user-loaded translation)
    const normKey = animeId ? `sub-ar-${animeId}-ep${ep}` : null;
    if (normKey) {
      const normCached = getCachedCues(normKey);
      if (normCached) {
        setSubCues(normCached); setSubLang("ara"); setSubState("ready"); setSubStatus("ready");
        return;
      }
    }
    // 2. No cache — re-apply immediately (no artificial delay)
    changeSubChoice(saved);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [currentUrl]);

  /* ── Auto-load subtitles when source has a subtitleUrl ── */
  useEffect(() => {
    if (!subtitleUrl) { setSubState("none"); return; }

    // ✅ كاش الكلايت: تحقق أولاً — إذا موجود لا داعي للانتظار
    const cached = getCachedCues(subtitleUrl);
    if (cached) {
      setSubCues(cached); setSubLang("ara"); setSubState("ready"); setSubStatus("ready");
      return;
    }

    let cancelled = false;

    const toSecLocal = (ts: string): number => {
      const m = ts.match(/(\d{1,2}):(\d{2}):(\d{2})[,.](\d{3})/);
      if (m) return +m[1] * 3600 + +m[2] * 60 + +m[3] + +m[4] / 1000;
      const m2 = ts.match(/(\d{1,2}):(\d{2})[,.](\d{3})/);
      if (m2) return +m2[1] * 60 + +m2[2] + +m2[3] / 1000;
      return 0;
    };

    (async () => {
      if (cancelled) return;
      setSubState("loading");

      try {
        /* subtitleUrl from anikoto/anineko is already a /api/anime/translate-vtt URL → fetch directly */
        if (subtitleUrl.startsWith("/api/anime/translate-vtt")) {
          const r = await fetch(subtitleUrl, { signal: AbortSignal.timeout(30000) });
          if (!cancelled && r.ok) {
            const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
            if (d.cues?.length) {
              const arCues = d.cues.map(c => {
                const pts = c.timing.split("-->").map(s => s.trim());
                return { start: toSecLocal(pts[0] || ""), end: toSecLocal(pts[1] || ""), text: c.text };
              }).filter(c => c.start < c.end && c.text.trim());
              if (!cancelled && arCues.length) {
                setCachedCues(subtitleUrl, arCues); // 💾 حفظ
                setSubCues(arCues); setSubLang("ara"); setSubState("ready"); setSubStatus("ready"); return;
              }
            }
          }
        } else {
          /* Raw VTT/SRT URL — translate to Arabic */
          const translateUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(subtitleUrl)}&from=en&to=ar`;
          const r = await fetch(translateUrl, { signal: AbortSignal.timeout(30000) });
          if (!cancelled && r.ok) {
            const d = await r.json() as { cues?: Array<{ timing: string; text: string }> };
            if (d.cues?.length) {
              const arCues = d.cues.map(c => {
                const pts = c.timing.split("-->").map(s => s.trim());
                return { start: toSecLocal(pts[0] || ""), end: toSecLocal(pts[1] || ""), text: c.text };
              }).filter(c => c.start < c.end && c.text.trim());
              if (!cancelled && arCues.length) {
                setCachedCues(subtitleUrl, arCues); // 💾 حفظ
                setSubCues(arCues); setSubLang("ara"); setSubState("ready"); setSubStatus("ready"); return;
              }
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
    })();
    return () => { cancelled = true; };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [subtitleUrl]);

  /* ── Arabic TTS dubbing effect — reads current subtitle cue aloud in Arabic ── */
  useEffect(() => {
    if (!ttsDub || !subCues.length || subStatus !== "ready") return;
    const currentCue = subCues.find(c => c.start <= hlsTime && c.end >= hlsTime);
    if (!currentCue || ttsLastCueRef.current === currentCue.text) return;
    ttsLastCueRef.current = currentCue.text;
    window.speechSynthesis.cancel();
    const utter = new SpeechSynthesisUtterance(currentCue.text);
    utter.lang = "ar-SA";
    const voices = window.speechSynthesis.getVoices();
    const arVoice = voices.find(v => v.lang.startsWith("ar"));
    if (arVoice) utter.voice = arVoice;
    utter.rate = 1.05;
    window.speechSynthesis.speak(utter);
  }, [ttsDub, hlsTime, subCues, subStatus]);

  /* Stop TTS when disabled */
  useEffect(() => {
    if (!ttsDub) { window.speechSynthesis.cancel(); ttsLastCueRef.current = ""; }
  }, [ttsDub]);

  /* ── Whisper audio transcription — send raw video URL to API for transcription ── */
  const triggerWhisperTranscription = useCallback(async () => {
    if (whisperStatus === "loading") return;
    const rawUrl = servers[currentServer] || "";
    if (!rawUrl) return;
    setWhisperStatus("loading");
    setWhisperLang("");
    try {
      const r = await fetch("/api/anime/whisper-transcribe", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ url: rawUrl, duration: 120 }),
        signal: AbortSignal.timeout(200_000),
      });
      if (!r.ok) throw new Error(`${r.status}`);
      const d = await r.json() as { language?: string; language_ar?: string; cues?: Array<{ start: number; end: number; text: string }> };
      if (!d.cues?.length) throw new Error("no cues");
      const cues: SubCue[] = d.cues.map(c => ({ start: c.start, end: c.end, text: c.text }));
      const cacheKey = `whisper-${rawUrl.slice(0,100)}`;
      setCachedCues(cacheKey, cues);
      setSubCues(cues);
      setSubLang("ara");
      setSubState("ready");
      setSubStatus("ready");
      setWhisperStatus("ready");
      setWhisperLang(d.language_ar || d.language || "");
      setSubChoice("ar-auto");
    } catch {
      setWhisperStatus("error");
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [whisperStatus, servers, currentServer]);

  /* ── Save current playback position to localStorage before switching server ──
     Ensures the newly-created RiftPlayer reads the correct resumeTime on mount. */
  const savePositionBeforeSwitch = useCallback(() => {
    const t = lastTimeRef.current;
    if (t > 10) {
      try { localStorage.setItem(progressKey, String(Math.floor(t))); } catch {}
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progressKey]);

  const lastSwitchRef = useRef(0);
  const tryNextServer = useCallback(() => {
    /* Throttle: ignore if last switch was < 400ms ago */
    const now = Date.now();
    if (now - lastSwitchRef.current < 400) return;
    lastSwitchRef.current = now;

    /* Persist current position so the next server resumes from the same point */
    savePositionBeforeSwitch();

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
              <span className="text-white/60 text-[13px] font-black font-['Cairo']">سيرفر {currentServer + 1}/{servers.length}</span>
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

      {/* Subtitle — مخفي للمصادر العربية (صوت عربي مدمج) */}
      {!hideSubtitle && (
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
      )}

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
              onClick={() => { savePositionBeforeSwitch(); setCurrentServer(i); setRealQuality(null); }}
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
        disabled={totalEps < 900 && ep >= totalEps}
        className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all shrink-0 flex-row-reverse"
        style={{ color: "rgba(255,255,255,0.42)", opacity: (totalEps < 900 && ep >= totalEps) ? 0.18 : 1 }}>
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
              key={`rift-${currentUrl}`}
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
              subOffset={subOffset}
              subSettings={subSettings}
              subEnabled={subState === "ready"}
              skipIntro={skipTimes?.op}
              skipOutro={skipTimes?.ed}
              autoPlay={localStorage.getItem("pref-autoplay") !== "false"}
              onSubtitleClick={fetchSubtitles}
              onSubSettingsChange={s => setSubSettings(s)}
              onSubtitleOff={() => changeSubChoice("off")}
              onBack={onBack}
              onPrevEp={onPrevEp}
              onNextEp={onNextEp}
              onEpisodeSelect={onEpisodeSelect}
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
        {!hideSubtitle && showSubPanel && (() => {
          const hasAr   = subTracks.some(t => t.lang === "ar");
          const hasAuto = subTracks.some(t => t.lang === "ar-auto") || subTracks.some(t => t.lang === "en");
          const hasEn   = subTracks.some(t => t.lang === "en");
          const hasSub  = subtitleUrl != null;
          const subOpts = [
            { id: "off"     as SubChoice, label: "إيقاف",    icon: "⊘",  available: true,           color: "rgba(255,255,255,0.30)" },
            { id: "ar"      as SubChoice, label: "عربي",     icon: "ع",  available: hasAr,           color: "rgba(110,231,183,0.85)" },
            { id: "ar-auto" as SubChoice, label: "مترجم",    icon: "↻",  available: hasAuto||hasSub, color: "rgba(251,191,36,0.85)"  },
            { id: "en"      as SubChoice, label: "إنجليزي",  icon: "En", available: hasEn,           color: "rgba(147,197,253,0.85)" },
          ];

          const [expandedSection, setExpandedSection] = React.useState<string|null>(null);
          const toggleSection = (s: string) => setExpandedSection(v => v === s ? null : s);

          const panelContent = (
            <div style={{
              background: "rgba(7,5,20,0.97)",
              backdropFilter: "blur(40px)",
              WebkitBackdropFilter: "blur(40px)",
              border: "1px solid rgba(139,92,246,0.22)",
              boxShadow: "inset 0 0 0 0.5px rgba(255,255,255,0.06), -20px 0 60px rgba(0,0,0,0.80)",
              borderRadius: "20px 0 0 20px",
              overflowY: "auto",
              height: "100%",
              width: "290px",
            }}>

              {/* ── Header ── */}
              <div className="flex items-center justify-between border-b border-white/[0.06] px-4 pt-5 pb-3">
                <div className="flex items-center gap-2">
                  <div className="w-8 h-8 rounded-2xl flex items-center justify-center"
                    style={{ background: "linear-gradient(135deg,rgba(139,92,246,0.55),rgba(109,40,217,0.40))", border: "1px solid rgba(139,92,246,0.45)", boxShadow: "0 0 12px rgba(139,92,246,0.25)" }}>
                    <span className="text-violet-200 text-[15px] font-black" style={{ fontFamily: "Cairo, sans-serif" }}>ت</span>
                  </div>
                  <h3 className="text-[15px] font-black text-white" style={{ fontFamily: "Cairo, sans-serif" }}>الترجمة</h3>
                </div>
                <button onClick={() => setShowSubPanel(false)}
                  className="w-8 h-8 rounded-full flex items-center justify-center active:scale-90 transition-transform"
                  style={{ background: "rgba(255,255,255,0.07)", border: "1px solid rgba(255,255,255,0.10)" }}>
                  <X className="w-4 h-4 text-white/50" />
                </button>
              </div>

              {/* ── 4 Language Tabs ── */}
              <div className="grid grid-cols-2 gap-2.5 p-4">
                {subOpts.map(opt => {
                  const active = subChoice === opt.id && (opt.id === "off" ? subStatus === "off" : subStatus !== "off");
                  const isOff  = opt.id === "off";
                  return (
                    <button key={opt.id}
                      onClick={() => opt.available && changeSubChoice(opt.id)}
                      disabled={!opt.available}
                      className="flex flex-col items-center gap-2 pt-3 pb-2.5 rounded-2xl transition-all active:scale-90 disabled:opacity-25"
                      style={{
                        background: active
                          ? isOff ? "rgba(239,68,68,0.14)" : "rgba(139,92,246,0.20)"
                          : "rgba(255,255,255,0.05)",
                        border: active
                          ? isOff ? "1px solid rgba(239,68,68,0.45)" : "1px solid rgba(139,92,246,0.50)"
                          : "1px solid rgba(255,255,255,0.08)",
                      }}>
                      {/* Circle icon */}
                      <div className="w-10 h-10 rounded-full flex items-center justify-center" style={{
                        background: active
                          ? isOff ? "rgba(239,68,68,0.22)" : "rgba(139,92,246,0.28)"
                          : "rgba(255,255,255,0.07)",
                        border: active
                          ? isOff ? "1px solid rgba(239,68,68,0.50)" : "1px solid rgba(139,92,246,0.55)"
                          : "1px solid rgba(255,255,255,0.10)",
                      }}>
                        <span className="text-[17px] leading-none font-black select-none"
                          style={{ color: active ? (isOff ? "rgba(252,165,165,0.95)" : opt.color) : "rgba(255,255,255,0.32)", fontFamily: "Cairo, sans-serif" }}>
                          {opt.icon}
                        </span>
                      </div>
                      <span className="text-[10px] font-black leading-none" style={{ fontFamily: "Cairo, sans-serif", color: active ? (isOff ? "rgba(252,165,165,0.90)" : "rgba(196,181,253,0.95)") : "rgba(255,255,255,0.42)" }}>
                        {opt.label}
                      </span>
                    </button>
                  );
                })}
              </div>

              {/* ── Status card ── */}
              <div className="px-4 pb-3">
                {(subStatus === "loading" || subStatus === "translating" || subStatus === "discovering") && (
                  <div className="flex items-center gap-2.5 px-4 py-2.5 rounded-2xl" style={{ background: "rgba(139,92,246,0.10)", border: "1px solid rgba(139,92,246,0.20)" }}>
                    <motion.div className="w-3.5 h-3.5 rounded-full border-2 border-violet-400/25 border-t-violet-400/75 shrink-0"
                      animate={{ rotate: 360 }} transition={{ duration: 0.85, repeat: Infinity, ease: "linear" }} />
                    <span className="text-[11px] font-bold font-['Cairo']" style={{ color: "rgba(196,181,253,0.75)" }}>
                      {subStatus === "translating" ? "جاري الترجمة…" : subStatus === "loading" ? "جاري التحميل…" : "يبحث عن الترجمة…"}
                    </span>
                  </div>
                )}
                {subStatus === "ready" && (
                  <div className="flex items-center justify-between px-4 py-2.5 rounded-2xl" style={{ background: "rgba(52,211,153,0.09)", border: "1px solid rgba(52,211,153,0.22)" }}>
                    <span className="text-[11px] font-bold font-['Cairo']" style={{ color: "rgba(110,231,183,0.85)" }}>
                      {subLang === "ara" || subLang === "ar" ? "عربي" : "إنجليزي"} · جاهز {subCues.length} سطر ✓
                    </span>
                    <div className="w-2 h-2 rounded-full" style={{ background: "rgba(52,211,153,0.85)", boxShadow: "0 0 6px rgba(52,211,153,0.60)" }} />
                  </div>
                )}
                {subStatus === "failed" && (
                  <div className="flex items-center justify-between px-4 py-2.5 rounded-2xl" style={{ background: "rgba(239,68,68,0.08)", border: "1px solid rgba(239,68,68,0.20)" }}>
                    <span className="text-[11px] font-['Cairo'] text-white/40">لا توجد ترجمة لهذا المحتوى</span>
                    <button onClick={() => { setSubTracks([]); fetchSubtitles(); }}
                      className="text-[10px] font-bold font-['Cairo'] px-2.5 py-1.5 rounded-xl active:scale-90 transition-transform"
                      style={{ background: "rgba(139,92,246,0.20)", border: "1px solid rgba(139,92,246,0.35)", color: "rgba(196,181,253,0.85)" }}>
                      إعادة
                    </button>
                  </div>
                )}
                {subStatus === "off" && (
                  <div className="px-4 py-2.5 rounded-2xl text-center" style={{ background: "rgba(255,255,255,0.03)", border: "1px solid rgba(255,255,255,0.07)" }}>
                    <span className="text-[10px] font-['Cairo'] text-white/22">اختر لغة الترجمة من الأعلى</span>
                  </div>
                )}
              </div>

              {/* ── ترجمة صوتية ── */}
              <div className="px-4 pb-1 border-t border-white/[0.05]">
                <div className="flex items-center justify-between py-3">
                  <div className="flex items-center gap-3">
                    <div className="w-8 h-8 rounded-xl flex items-center justify-center" style={{ background: "rgba(139,92,246,0.12)", border: "1px solid rgba(139,92,246,0.22)" }}>
                      <span className="text-[15px]">🎙</span>
                    </div>
                    <div>
                      <p className="text-[12px] font-black font-['Cairo'] text-white/70">ترجمة صوتية</p>
                      <p className="text-[9px] font-['Cairo'] text-white/28">
                        {whisperStatus === "ready" && whisperLang ? `تم · لغة المصدر: ${whisperLang}` : "يكتشف اللغة ويترجم تلقائياً"}
                      </p>
                    </div>
                  </div>
                  <button
                    onClick={triggerWhisperTranscription}
                    disabled={whisperStatus === "loading"}
                    className="flex items-center gap-1.5 px-3.5 py-1.5 rounded-xl text-[11px] font-bold font-['Cairo'] transition-all active:scale-90 disabled:opacity-50"
                    style={{
                      background: whisperStatus === "ready" ? "rgba(52,211,153,0.18)" : whisperStatus === "error" ? "rgba(239,68,68,0.15)" : "rgba(139,92,246,0.25)",
                      border: whisperStatus === "ready" ? "1px solid rgba(52,211,153,0.38)" : whisperStatus === "error" ? "1px solid rgba(239,68,68,0.32)" : "1px solid rgba(139,92,246,0.48)",
                      color: whisperStatus === "ready" ? "rgba(110,231,183,0.95)" : whisperStatus === "error" ? "rgba(252,165,165,0.90)" : "rgba(196,181,253,0.95)",
                    }}>
                    {whisperStatus === "loading" ? (
                      <motion.span className="w-3 h-3 rounded-full border border-violet-300/40 border-t-violet-300"
                        animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
                    ) : null}
                    {whisperStatus === "ready" ? "✓ جاهز" : whisperStatus === "error" ? "خطأ · إعادة" : whisperStatus === "loading" ? "…" : "تشغيل"}
                  </button>
                </div>
              </div>

              {/* ── دبلجة صوتية ── */}
              <div className="px-4 pb-1 border-t border-white/[0.05]">
                <div className="flex items-center justify-between py-3">
                  <div className="flex items-center gap-3">
                    <div className="w-8 h-8 rounded-xl flex items-center justify-center" style={{ background: "rgba(251,191,36,0.10)", border: "1px solid rgba(251,191,36,0.20)" }}>
                      <span className="text-[15px]">🔊</span>
                    </div>
                    <div>
                      <p className="text-[12px] font-black font-['Cairo'] text-white/70">دبلجة صوتية</p>
                      <p className="text-[9px] font-['Cairo'] text-white/28">تجريبي · يقرأ الترجمة عربياً</p>
                    </div>
                  </div>
                  <button onClick={() => setTtsDub(d => !d)}
                    className="relative w-11 h-6 rounded-full transition-all active:scale-90 shrink-0"
                    style={{ background: ttsDub ? "rgba(139,92,246,0.75)" : "rgba(255,255,255,0.10)", border: ttsDub ? "1px solid rgba(139,92,246,0.75)" : "1px solid rgba(255,255,255,0.14)" }}>
                    <motion.div className="absolute top-[3px] w-[18px] h-[18px] rounded-full"
                      style={{ background: ttsDub ? "#c4b5fd" : "rgba(255,255,255,0.50)" }}
                      animate={{ left: ttsDub ? "auto" : "3px", right: ttsDub ? "3px" : "auto" }}
                      transition={{ duration: 0.18 }} />
                  </button>
                </div>
              </div>

              {/* ── إعدادات divider ── */}
              <div className="flex items-center gap-2 px-4 py-2 border-t border-white/[0.05]">
                <div className="flex-1 h-px" style={{ background: "rgba(255,255,255,0.07)" }} />
                <span className="text-[10px] font-black font-['Cairo'] tracking-widest" style={{ color: "rgba(255,255,255,0.20)" }}>إعدادات</span>
                <div className="flex-1 h-px" style={{ background: "rgba(255,255,255,0.07)" }} />
              </div>

              {/* ── حجم الخط (دائماً مرئي) ── */}
              <div className="px-4 py-3">
                <p className="text-[9px] font-bold font-['Cairo'] mb-2.5" style={{ color: "rgba(255,255,255,0.28)" }}>حجم الخط</p>
                <div className="flex gap-2">
                  {([
                    { sz: 13, label: "أ", name: "صغير" },
                    { sz: 16, label: "أ", name: "متوسط" },
                    { sz: 20, label: "أ", name: "كبير" },
                    { sz: 24, label: "أ", name: "كبير جداً" },
                  ] as { sz: number; label: string; name: string }[]).map(({ sz, name }) => (
                    <button key={sz} onClick={() => setSubSettings(s => ({ ...s, fontSize: sz }))}
                      className="flex-1 flex flex-col items-center py-2.5 rounded-2xl font-bold font-['Cairo'] transition-all active:scale-90"
                      style={{
                        background: subSettings.fontSize === sz ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.05)",
                        border: subSettings.fontSize === sz ? "1px solid rgba(139,92,246,0.50)" : "1px solid rgba(255,255,255,0.08)",
                      }}>
                      <span style={{
                        fontSize: sz > 18 ? sz * 0.72 : sz * 0.82,
                        color: subSettings.fontSize === sz ? "#c4b5fd" : "rgba(255,255,255,0.40)",
                        lineHeight: 1.1,
                      }}>أ</span>
                    </button>
                  ))}
                </div>
              </div>

              {/* ── Expandable sections ── */}

              {/* عام */}
              <div className="border-t border-white/[0.05]">
                <button onClick={() => toggleSection("general")}
                  className="flex items-center justify-between w-full px-4 py-3 active:bg-white/[0.03] transition-colors">
                  <div className="flex items-center gap-2.5">
                    <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "rgba(52,211,153,0.12)", border: "1px solid rgba(52,211,153,0.20)" }}>
                      <span className="text-[12px]">⚙️</span>
                    </div>
                    <span className="text-[12px] font-black font-['Cairo'] text-white/70">عام</span>
                  </div>
                  <div className="flex items-center gap-2">
                    {subStatus === "ready" && <div className="w-1.5 h-1.5 rounded-full" style={{ background: "rgba(52,211,153,0.80)" }} />}
                    <span className="text-[10px] text-white/25">{expandedSection === "general" ? "▲" : "▼"}</span>
                  </div>
                </button>
                {expandedSection === "general" && (
                  <div className="px-4 pb-3">
                    <p className="text-[9px] font-['Cairo'] text-white/30 mb-2">مصادر الترجمة المكتشفة</p>
                    {subTracks.length === 0 ? (
                      <span className="text-[10px] font-['Cairo'] text-white/20">لا توجد مصادر مكتشفة</span>
                    ) : (
                      <div className="flex flex-wrap gap-1.5">
                        {subTracks.map(t => (
                          <span key={t.id} className="text-[9px] px-2 py-1 rounded-xl font-['Cairo'] font-bold"
                            style={{
                              background: t.lang === "ar" || t.lang === "ar-auto" ? "rgba(110,231,183,0.09)" : "rgba(147,197,253,0.09)",
                              border: t.lang === "ar" || t.lang === "ar-auto" ? "1px solid rgba(110,231,183,0.22)" : "1px solid rgba(147,197,253,0.22)",
                              color: t.lang === "ar" || t.lang === "ar-auto" ? "rgba(110,231,183,0.70)" : "rgba(147,197,253,0.70)",
                            }}>
                            {t.label}
                          </span>
                        ))}
                      </div>
                    )}
                  </div>
                )}
              </div>

              {/* المظهر */}
              <div className="border-t border-white/[0.05]">
                <button onClick={() => toggleSection("appearance")}
                  className="flex items-center justify-between w-full px-4 py-3 active:bg-white/[0.03] transition-colors">
                  <div className="flex items-center gap-2.5">
                    <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "rgba(251,191,36,0.12)", border: "1px solid rgba(251,191,36,0.20)" }}>
                      <span className="text-[12px]">🎨</span>
                    </div>
                    <div>
                      <span className="text-[12px] font-black font-['Cairo'] text-white/70">المظهر</span>
                      <span className="text-[9px] font-['Cairo'] text-white/25 mr-2">كبير · أبيض</span>
                    </div>
                  </div>
                  <span className="text-[10px] text-white/25">{expandedSection === "appearance" ? "▲" : "▼"}</span>
                </button>
                {expandedSection === "appearance" && (
                  <div className="px-4 pb-4 flex flex-col gap-3">
                    {/* Color */}
                    <div>
                      <p className="text-[9px] font-bold font-['Cairo'] mb-2" style={{ color: "rgba(255,255,255,0.28)" }}>لون النص</p>
                      <div className="flex gap-2">
                        {([{ v: "#ffffff" }, { v: "#fde047" }, { v: "#67e8f9" }, { v: "#86efac" }, { v: "#fca5a5" }] as { v: string }[]).map(({ v }) => (
                          <button key={v} onClick={() => setSubSettings(s => ({ ...s, color: v }))}
                            className="flex-1 h-8 rounded-xl transition-all active:scale-90 relative"
                            style={{ background: v, opacity: subSettings.color === v ? 1 : 0.32, boxShadow: subSettings.color === v ? `0 0 10px ${v}70` : "none", border: subSettings.color === v ? "2px solid rgba(255,255,255,0.65)" : "1.5px solid rgba(255,255,255,0.10)" }}>
                            {subSettings.color === v && <span className="absolute inset-0 flex items-center justify-center text-[10px]" style={{ color: "#000", opacity: 0.65 }}>✓</span>}
                          </button>
                        ))}
                      </div>
                    </div>
                    {/* Background + Bold */}
                    <div className="flex gap-2">
                      <div className="flex-1">
                        <p className="text-[9px] font-bold font-['Cairo'] mb-2" style={{ color: "rgba(255,255,255,0.28)" }}>خلفية</p>
                        <div className="flex gap-1.5">
                          {([{ v: 0.82, label: "●" }, { v: 0.45, label: "◐" }, { v: 0, label: "○" }] as { v: number; label: string }[]).map(({ v, label }) => (
                            <button key={v} onClick={() => setSubSettings(s => ({ ...s, bgOpacity: v }))}
                              className="flex-1 py-2 rounded-xl text-[14px] transition-all active:scale-90"
                              style={{ background: subSettings.bgOpacity === v ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.05)", border: subSettings.bgOpacity === v ? "1px solid rgba(139,92,246,0.45)" : "1px solid rgba(255,255,255,0.08)", color: subSettings.bgOpacity === v ? "#c4b5fd" : "rgba(255,255,255,0.28)" }}>
                              {label}
                            </button>
                          ))}
                        </div>
                      </div>
                      <div className="shrink-0">
                        <p className="text-[9px] font-bold font-['Cairo'] mb-2" style={{ color: "rgba(255,255,255,0.28)" }}>خط عريض</p>
                        <button onClick={() => setSubSettings(s => ({ ...s, bold: !s.bold }))}
                          className="h-[38px] px-3 rounded-xl text-[12px] transition-all active:scale-90 font-black"
                          style={{ fontWeight: subSettings.bold ? 800 : 400, background: subSettings.bold ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.05)", border: subSettings.bold ? "1px solid rgba(139,92,246,0.45)" : "1px solid rgba(255,255,255,0.08)", color: subSettings.bold ? "#c4b5fd" : "rgba(255,255,255,0.30)", fontFamily: "Cairo, sans-serif" }}>
                          {subSettings.bold ? "ع" : "ع"}
                        </button>
                      </div>
                    </div>
                  </div>
                )}
              </div>

              {/* الموضع */}
              <div className="border-t border-white/[0.05]">
                <button onClick={() => toggleSection("position")}
                  className="flex items-center justify-between w-full px-4 py-3 active:bg-white/[0.03] transition-colors">
                  <div className="flex items-center gap-2.5">
                    <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "rgba(147,197,253,0.12)", border: "1px solid rgba(147,197,253,0.20)" }}>
                      <span className="text-[12px]">📍</span>
                    </div>
                    <div>
                      <span className="text-[12px] font-black font-['Cairo'] text-white/70">الموضع</span>
                      <span className="text-[9px] font-['Cairo'] text-white/25 mr-2">{subSettings.position === "top" ? "أعلى" : subSettings.position === "center" ? "وسط" : "أسفل"}</span>
                    </div>
                  </div>
                  <span className="text-[10px] text-white/25">{expandedSection === "position" ? "▲" : "▼"}</span>
                </button>
                {expandedSection === "position" && (
                  <div className="px-4 pb-3">
                    <div className="flex gap-1.5">
                      {([{ v: "top", label: "↑ أعلى" }, { v: "center", label: "⬛ وسط" }, { v: "bottom", label: "↓ أسفل" }] as { v: "top"|"center"|"bottom"; label: string }[]).map(({ v, label }) => (
                        <button key={v} onClick={() => setSubSettings(s => ({ ...s, position: v }))}
                          className="flex-1 py-2.5 rounded-xl text-[10px] font-bold font-['Cairo'] transition-all active:scale-90"
                          style={{ background: subSettings.position === v ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.05)", border: subSettings.position === v ? "1px solid rgba(139,92,246,0.45)" : "1px solid rgba(255,255,255,0.08)", color: subSettings.position === v ? "#c4b5fd" : "rgba(255,255,255,0.35)" }}>
                          {label}
                        </button>
                      ))}
                    </div>
                  </div>
                )}
              </div>

              {/* السلوك (ضبط التوقيت) */}
              <div className="border-t border-white/[0.05]">
                <button onClick={() => toggleSection("behavior")}
                  className="flex items-center justify-between w-full px-4 py-3 active:bg-white/[0.03] transition-colors">
                  <div className="flex items-center gap-2.5">
                    <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.18)" }}>
                      <span className="text-[12px]">⚡</span>
                    </div>
                    <div>
                      <span className="text-[12px] font-black font-['Cairo'] text-white/70">السلوك</span>
                      {subOffset !== 0 && <span className="text-[9px] font-['Cairo'] text-violet-300/60 mr-2">{subOffset > 0 ? "+" : ""}{subOffset.toFixed(1)}s</span>}
                    </div>
                  </div>
                  <span className="text-[10px] text-white/25">{expandedSection === "behavior" ? "▲" : "▼"}</span>
                </button>
                {expandedSection === "behavior" && (
                  <div className="px-4 pb-4">
                    <p className="text-[9px] font-['Cairo'] text-white/28 mb-3">ضبط يدوي للتوقيت — التزامن تلقائي افتراضياً</p>
                    <div className="flex gap-1.5">
                      {([-2, -0.5, 0.5, 2] as number[]).map(d => (
                        <button key={d} onClick={() => adjustOffset(d)}
                          className="flex-1 py-2 rounded-xl text-white/40 text-[10px] font-bold active:scale-90 transition-transform"
                          style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)", fontFamily: "monospace" }}>
                          {d > 0 ? "+" : ""}{d}s
                        </button>
                      ))}
                      {subOffset !== 0 && (
                        <button onClick={() => setSubOffset(0)}
                          className="px-2.5 py-2 rounded-xl text-[10px] active:scale-90 transition-transform"
                          style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.22)", color: "rgba(252,165,165,0.75)", fontFamily: "Cairo, sans-serif" }}>
                          ✕
                        </button>
                      )}
                    </div>
                  </div>
                )}
              </div>

              <div className="pb-2" />
            </div>
          );

          return (
            <motion.div key="subpanel"
              initial={{ opacity: 0, x: 60 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: 60 }}
              transition={{ duration: 0.24, ease: [0.22, 1, 0.36, 1] }}
              className="fixed z-[400]"
              style={{
                top: 0,
                bottom: 0,
                right: 0,
                width: "290px",
                paddingTop: "max(0px, env(safe-area-inset-top))",
                paddingBottom: "max(0px, env(safe-area-inset-bottom))",
              }}
            >
              <div className="fixed inset-0 z-[-1]" style={{ background: "rgba(0,0,0,0.45)" }} onClick={() => setShowSubPanel(false)} />
              {panelContent}
            </motion.div>
          );
        })()}
      </AnimatePresence>
    </motion.div>
  );
}

/* ══════════════════════════════════ WATCH PAGE ══════════════ */
const EMPTY_SLOTS = (): Record<string, SlotStatus> =>
  Object.fromEntries(SCRAPER_DEFS.map(d => [d.site, "idle" as SlotStatus]));

export default function WatchPage() {
  const [, navigate] = useLocation();
  const { user } = useAuth();
  const userId = user?.id ?? null;

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
  // showPicker: false on first load (shows loading screen), true when user returns from player
  const [showPicker,   setShowPicker]   = useState(false);
  // keep phaseRef in sync so async fetch handlers can guard against updating picker state while player is active
  useEffect(() => { phaseRef.current = phase; }, [phase]);

  /* ── Stop all audio/video when leaving Watch page ── */
  useEffect(() => {
    return () => {
      document.querySelectorAll<HTMLVideoElement>("video").forEach(v => {
        try { v.pause(); v.src = ""; } catch {}
      });
    };
  }, []);
  const [playerDlUrl,  setPlayerDlUrl]  = useState<string | undefined>(undefined);
  const [playerSubUrl, setPlayerSubUrl] = useState<string | undefined>(undefined);
  const [playerSrcSite, setPlayerSrcSite] = useState<string>("");
  const [kawaiiSubUrl, setKawaiiSubUrl] = useState<string | undefined>(undefined);

  const autoFetchedRef    = useRef(false);
  const autoPlayedRef     = useRef(false);
  const upgradedToFhdRef  = useRef(false);
  const phaseRef          = useRef<"picker" | "player">("picker");
  const [autoPlayReady,   setAutoPlayReady]   = useState(false);

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

  /* Arabic episode title — Jikan fallback then translated via server proxy */
  const [arEpTitle, setArEpTitle] = useState<string>("");
  useEffect(() => {
    setArEpTitle("");
    const ctrl = new AbortController();

    const translateAndSet = (raw: string) => {
      if (!raw) return;
      fetch(`/api/anime/translate?text=${encodeURIComponent(raw)}&from=en&to=ar`, { signal: ctrl.signal })
        .then(r => r.ok ? r.json() : null)
        .then((d: any) => {
          const t = d?.translated?.trim();
          if (t && t !== raw) setArEpTitle(t);
          else setArEpTitle(raw);
        })
        .catch(() => {});
    };

    if (epTitle) {
      translateAndSet(epTitle);
    } else {
      // AniList streamingEpisodes is empty — try Jikan (MAL) for episode title
      const malId = anime?.idMal || localStorage.getItem(`malid-${animeId}`);
      if (malId && Number(malId) > 0) {
        fetch(`/api/anime/ep-title?malId=${malId}&ep=${ep}`, { signal: ctrl.signal })
          .then(r => r.ok ? r.json() : null)
          .then((d: any) => {
            const t = (d?.title || "").trim();
            if (t) translateAndSet(t);
          })
          .catch(() => {});
      }
    }

    return () => ctrl.abort();
  }, [epTitle, anime?.idMal, animeId, ep]);

  /* ── Early history save using URL params — before AniList data loads ── */
  useEffect(() => {
    if (animeId && titleParam) saveHistory(animeId, titleParam, coverParam, ep, 0, userId);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [userId]);

  /* ── Fetch kawaii-meta: Arabic subtitle + intro/outro skip times ── */
  useEffect(() => {
    if (!animeId) return;
    setKawaiiSubUrl(undefined);
    const ctrl = new AbortController();
    fetch(`/api/anime/kawaii-meta?anilistId=${animeId}&ep=${ep}`, { signal: ctrl.signal })
      .then(r => r.ok ? r.json() : null)
      .then((data: any) => {
        if (!data) return;
        // Subtitle: prefer Arabic, fallback to English → translate via server
        const subUrl: string | undefined = data.arabicSubUrl
          ? data.arabicSubUrl
          : (data.englishSubUrl
              ? `/api/anime/translate-vtt?url=${encodeURIComponent(data.englishSubUrl)}&from=en&to=ar`
              : undefined);
        if (subUrl) setKawaiiSubUrl(subUrl);
        // Skip times: only fill gaps not already covered by aniskip/baha
        if (data.intro || data.outro) {
          setSkipTimes(prev => {
            const next: SkipTimes = { ...prev };
            if (!prev.op && data.intro) next.op = data.intro;
            if (!prev.ed && data.outro) next.ed = data.outro;
            return next;
          });
        }
      })
      .catch(() => {});
    return () => ctrl.abort();
  }, [animeId, ep]);

  /* Fetch AniList metadata + skip timestamps (aniskip + baha-skip) */
  useEffect(() => {
    if (!animeId) return;

    // ── 1. Reset for new episode, then load cached skip times instantly ──
    setSkipTimes({});
    const _skipKey = `skip-${animeId}-${ep}`;
    try {
      const raw = localStorage.getItem(_skipKey);
      if (raw) {
        const { data, exp } = JSON.parse(raw);
        if (Date.now() < exp && data) setSkipTimes(data);
      }
    } catch {}

    // ── 2. Immediate aniskip fetch using cached MAL ID (no AniList wait) ──
    const _cachedMal = localStorage.getItem(`malid-${animeId}`);
    if (_cachedMal && _cachedMal !== "null" && Number(_cachedMal) > 0) {
      fetch(`/api/anime/aniskip?malId=${_cachedMal}&ep=${ep}`, {
        signal: AbortSignal.timeout(10000),
      })
        .then(r => r.ok ? r.json() : null)
        .then((data: any) => {
          if (!data?.found) return;
          const st: SkipTimes = {};
          for (const result of (data.results || [])) {
            const iv = result.interval;
            const sType = result.skip_type || result.skipType || "";
            if (sType === "op") st.op = { start: iv.startTime, end: iv.endTime };
            if (sType === "ed") st.ed = { start: iv.startTime, end: iv.endTime };
          }
          if (st.op || st.ed) {
            setSkipTimes(prev => ({ ...prev, ...st }));
            try { localStorage.setItem(_skipKey, JSON.stringify({ data: st, exp: Date.now() + 7 * 86400_000 })); } catch {}
          }
        })
        .catch(() => {});
    }

    // ── 3. AniList metadata fetch ──
    const body = JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } });
    const headers = { "Content-Type": "application/json" };
    const fetchAniList = () =>
      fetch("/api/anime/anilist", { method: "POST", headers, body, signal: AbortSignal.timeout(10000) })
        .then(r => {
          if (!r.ok) throw new Error(`proxy ${r.status}`);
          return r.json();
        })
        .catch(() =>
          fetch("https://graphql.anilist.co", { method: "POST", headers, body, signal: AbortSignal.timeout(10000) })
            .then(r => r.json())
        );
    fetchAniList()
      .then(j => {
        const d = j.data?.Media;
        if (d) {
          setAnime(d);
          saveHistory(animeId, d.title?.english || d.title?.romaji || "", d.coverImage?.large || "", ep, d.episodes || 0, userId);
          /* ── cache MAL ID for next visit (instant aniskip) ── */
          if (d.idMal) { try { localStorage.setItem(`malid-${animeId}`, String(d.idMal)); } catch {} }

          const mergeSkip = (st: SkipTimes) => {
            setSkipTimes(prev => ({ ...prev, ...st }));
            try { localStorage.setItem(_skipKey, JSON.stringify({ data: { ...st }, exp: Date.now() + 7 * 86400_000 })); } catch {}
          };

          // aniskip (MAL ID)
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
                  const sType = result.skip_type || result.skipType || "";
                  if (sType === "op") st.op = { start: iv.startTime, end: iv.endTime };
                  if (sType === "ed") st.ed = { start: iv.startTime, end: iv.endTime };
                }
                mergeSkip(st);
              })
              .catch(() => {});
          }

          // baha-anime-skip (Bahamut DB — يُكمل ما فاته aniskip)
          {
            const titleEnc   = encodeURIComponent(d.title?.english || d.title?.romaji || "");
            const nativeEnc  = encodeURIComponent(d.title?.native || "");
            fetch(`/api/anime/baha-skip?title=${titleEnc}&native=${nativeEnc}&ep=${ep}`, {
              signal: AbortSignal.timeout(12000),
            })
              .then(r => r.ok ? r.json() : null)
              .then((data: any) => {
                if (!data?.found || !data?.skip) return;
                const st: SkipTimes = {};
                if (data.skip.op) st.op = data.skip.op;
                if (data.skip.ed) st.ed = data.skip.ed;
                mergeSkip(st);
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
    document.querySelectorAll<HTMLVideoElement>("video, audio").forEach(v => {
      try { v.pause(); v.src = ""; } catch {}
    });
    if (phase === "player") {
      /* From player → go back to source picker (show full picker so user can choose) */
      setShowPicker(true);
      setPhase("picker");
    } else {
      /* From picker → go back to episodes page */
      navigate(animeId ? `/episodes/${animeId}` : "/");
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
      const params = new URLSearchParams({ site, title: resolvedTitle, english: resolvedEnglish, ep: String(ep), anime: String(animeId || 0), format: anime?.format || sp.get("format") || "" });
      const r    = await fetch(`/api/anime/fetch-source?${params}`, { signal: AbortSignal.timeout(40000), headers: { "X-App-Token": await getAppToken() } });
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

  /* ── Auto-fetch: SSE sources-stream يشغّل كل المصادر بالتوازي في اتصال واحد ── */
  useEffect(() => {
    if (autoFetchedRef.current) return;
    if (!titleParam) return;
    autoFetchedRef.current = true;

    /* ── Quick-resume: حقن آخر مصدر فوراً إذا كان المستخدم يتابع من حيث توقف ── */
    if (animeId) {
      const savedProgress = parseFloat(localStorage.getItem(`wp-${animeId}-${ep}`) || "0");
      if (savedProgress > 30) {
        const lastSrc = loadLastSrc(animeId, ep);
        if (lastSrc && !isIframeUrl(lastSrc.url)) {
          const resumeSrc: FetchedSrc = {
            url: lastSrc.url,
            directUrl: lastSrc.url,
            qualityRank: lastSrc.qualityRank,
            site: "_resume",
            name: "آخر مصدر",
          };
          setSlotSources(prev => ({ ...prev, _resume: [resumeSrc] }));
          setSlotStatus(prev => ({ ...prev, _resume: "ready" }));
        }
      }
    }

    /* ── ضع كل المصادر في حالة "fetching" فوراً ── */
    setSlotStatus(prev => {
      const next = { ...prev };
      SCRAPER_DEFS.forEach(d => { next[d.site] = "fetching"; });
      return next;
    });

    /* ── تجميع المصادر لكل موقع ── */
    const accumulated: Record<string, FetchedSrc[]> = {};

    const markAllDone = () => {
      setSlotStatus(prev => {
        const next = { ...prev };
        SCRAPER_DEFS.forEach(d => {
          if (next[d.site] === "fetching") next[d.site] = "failed";
        });
        return next;
      });
    };

    const params = new URLSearchParams({
      title:   titleParam,
      english: englishParam || "",
      ep:      String(ep),
      anime:   String(animeId || 0),
      format:  sp.get("format") || "",
    });

    /* ── اتصال SSE واحد — كل المصادر تأتي منه تلقائياً ── */
    const evtSrc = new EventSource(`/api/anime/sources-stream?${params}`);

    evtSrc.onmessage = (e: MessageEvent) => {
      const raw: string = e.data;
      if (raw === "[DONE]") {
        evtSrc.close();
        markAllDone();
        return;
      }
      try {
        const src = JSON.parse(raw) as FetchedSrc;
        if (!src.site) return;
        const site = src.site;
        if (!accumulated[site]) accumulated[site] = [];
        accumulated[site].push(src);
        setSlotSources(prev => ({ ...prev, [site]: accumulated[site] }));
        setSlotStatus(prev => ({ ...prev, [site]: "ready" }));
      } catch {}
    };

    evtSrc.onerror = () => {
      evtSrc.close();
      markAllDone();
    };

    return () => { evtSrc.close(); };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  /* ── auto-play ready immediately — no artificial delay ── */
  useEffect(() => { setAutoPlayReady(true); }, []);

  /* ── Auto-play: fire on first available source of any quality ── */
  useEffect(() => {
    if (autoPlayedRef.current) return;
    if (!autoPlayReady) return;
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
      // hasBuiltinSub: ترجمة مدمجة في الـ stream (مثل kawaii) — لا تُضاف ترجمة خارجية لتجنب التداخل
      setPlayerSubUrl(firstSrc.hasBuiltinSub ? undefined : (firstSrc.subtitleUrl || undefined));
      setPlayerSrcSite(firstSrc.site || "");
      setPlayerServers(srvMap);
      setQuality(clickedTier);
      setInitialSrv(0);
      /* Save for quick-resume (skip _resume + skip embed URLs to avoid iframe flicker on next visit) */
      if (animeId && firstSrc.site !== "_resume" && !isIframeUrl(clickedUrl)) saveLastSrc(animeId, ep, clickedUrl, firstSrc.qualityRank ?? 0);
      setPhase("player");
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [slotSources, phase, autoPlayReady]);

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
    // hasBuiltinSub أو seepanel: ترجمة مدمجة في الـ stream — لا تُشغّل ترجمة خارجية لتجنب التداخل
    const skipExternalSub = src.hasBuiltinSub || src.site === "seepanel";
    setPlayerSubUrl(skipExternalSub ? undefined : (src.subtitleUrl || undefined));
    setPlayerSrcSite(src.site || "");
    setPlayerServers(servers);
    setQuality(clickedTier);
    setInitialSrv(0);

    /* Save for quick-resume next time (skip embed URLs — they cause iframe flicker) */
    if (animeId && src.site !== "_resume" && !isIframeUrl(clickedUrl)) saveLastSrc(animeId, ep, clickedUrl, src.qualityRank ?? 0);

    setPhase("player");
  }

  const servers = playerServers[quality] || [];

  if (phase === "picker") {
    /* Show full picker only when user navigated back from player */
    if (showPicker) {
      return (
        <AnimatePresence mode="wait">
          <motion.div key="picker"
            initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -12 }}
            transition={{ duration: 0.22, ease: "easeOut" }} className="fixed inset-0">
            <ScraperPicker
              cover={cover} title={title} ep={ep} totalEps={totalEps}
              anime={anime}
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
      );
    }

    /* Initial load: show a beautiful loading screen while scrapers run */
    return (
      <div className="fixed inset-0 bg-[#07070d] overflow-hidden" dir="rtl">
        {/* Blurred bg */}
        {cover && (
          <div className="absolute inset-0">
            <img src={cover} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.15] saturate-150" />
            <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/85 via-[#07070d]/50 to-[#07070d]/92" />
          </div>
        )}
        {/* Back button */}
        <button
          onClick={() => navigate(animeId ? `/episodes/${animeId}` : "/")}
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
          style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)" }}
        >
          <X className="w-5 h-5 text-white/60" />
        </button>

        <div className="relative h-full flex flex-col items-center justify-center gap-4 px-6">
          {/* Prayer — ABOVE poster */}
          <motion.p
            initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.05, duration: 0.4 }}
            className="text-white/85 text-[13px] font-black font-['Cairo'] tracking-wide text-center">
            اللهم صلِّ وسلِّم على نبينا محمد ﷺ
          </motion.p>

          {/* Poster */}
          {cover ? (
            <motion.div
              className="relative shrink-0"
              initial={{ opacity: 0, y: 20, scale: 0.92 }}
              animate={{ opacity: 1, y: 0, scale: 1 }}
              transition={{ delay: 0.08, duration: 0.45, ease: [0.22, 1, 0.36, 1] }}
            >
              <div className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{ background: "radial-gradient(ellipse, rgba(139,92,246,0.25) 0%, transparent 68%)" }} />
              <img src={cover} alt={title || "أنمي"}
                className="rounded-2xl object-cover"
                style={{ width: "clamp(130px, 40vw, 176px)", height: "clamp(184px, 57vw, 248px)", boxShadow: "0 28px 72px rgba(0,0,0,0.90), 0 0 0 1px rgba(255,255,255,0.09)" }} />
            </motion.div>
          ) : (
            <div className="rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{ width: "clamp(130px, 40vw, 176px)", height: "clamp(184px, 57vw, 248px)", boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
              <div className="w-16 h-16 rounded-full bg-violet-500/15 flex items-center justify-center">
                <div className="w-7 h-7 rounded-full bg-violet-500/35" />
              </div>
            </div>
          )}

          {/* Title + episode — BELOW poster */}
          <motion.div
            className="text-center"
            initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.18, duration: 0.38 }}
          >
            {title && (
              <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
                style={{ textShadow: "0 2px 14px rgba(0,0,0,0.75)" }}>{title}</h2>
            )}
            <p className="text-white/35 text-[13px] font-['Cairo'] tracking-wide">الحلقة {ep}{(arEpTitle || epTitle) ? ` · ${arEpTitle || epTitle}` : ""}</p>
          </motion.div>

          {/* Spinner + message */}
          <motion.div
            className="flex flex-col items-center gap-3"
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.30 }}
          >
            <div className="relative w-9 h-9">
              <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
              <motion.div className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
                animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
            </div>
            <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.</p>
            <AnimeMascot mood="loading" />
          </motion.div>
        </div>
      </div>
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
          subtitleUrl={playerSubUrl || kawaiiSubUrl}
          subtitleSite={playerSrcSite}
          hideSubtitle={ARABIC_SITES.has(playerSrcSite)}
          skipTimes={skipTimes}
          onBack={handleBack}
          onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
          onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
          onEpisodeSelect={n => { handleBack(); setTimeout(() => goEp(n), 80); }}
          onChangeQuality={q => { setQuality(q); setInitialSrv(0); }}
          userId={userId}
          onTierExhausted={() => { setShowPicker(true); setPhase("picker"); }}
        />
      </motion.div>
    </AnimatePresence>
  );
}

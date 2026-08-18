import { API_BASE } from "@/lib/apiBase";
import {
  useState,
  useEffect,
  useRef,
  useCallback,
  useMemo,
  memo,
  Component,
  type ReactNode,
} from "react";
import { getAppToken } from "@/lib/appToken";
import { useLocation } from "wouter";
import { useAuth } from "@/lib/auth-context";
import { saveProgress as saveProgressServer } from "@/lib/db";
import {
  ChevronRight,
  ChevronLeft,
  Play,
  Loader2,
  AlertTriangle,
  RefreshCw,
  X,
  Maximize2,
  Minimize2,
  Settings,
  Subtitles,
  MonitorPlay,
  Tv2,
  Download,
  Star,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";
import { AnimeMascot } from "@/components/AnimeMascot";

/* ══════════════════════════════════ ANILIST ══════════════════ */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english native userPreferred } synonyms
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres averageScore popularity
    format status season seasonYear description(asHtml: false)
    studios(isMain: true) { nodes { name } }
    streamingEpisodes { title episode }
  }
}`;
// NOTE: description is fetched above but intentionally NOT rendered on the Watch screen.
// Removed per explicit user complaint — the synopsis section cluttered the watch UI
// and distracted from the player. It remains in the query for future SEO/meta use only.

/* ══════════════════════════════════ MAPS ═════════════════════ */
const STATUS_MAP: Record<string, { label: string; color: string }> = {
  RELEASING: {
    label: "يُبث الآن",
    color: "text-emerald-400 bg-emerald-500/15 border-emerald-500/30",
  },
  FINISHED: {
    label: "مكتمل",
    color: "text-blue-400   bg-blue-500/15    border-blue-500/30",
  },
  NOT_YET_RELEASED: {
    label: "قريباً",
    color: "text-amber-400  bg-amber-500/15   border-amber-500/30",
  },
  CANCELLED: {
    label: "ملغى",
    color: "text-red-400    bg-red-500/15     border-red-500/30",
  },
  HIATUS: {
    label: "متوقف",
    color: "text-orange-400 bg-orange-500/15  border-orange-500/30",
  },
};
const FORMAT_MAP: Record<string, string> = {
  TV: "مسلسل",
  MOVIE: "فيلم",
  OVA: "OVA",
  ONA: "ONA",
  SPECIAL: "خاص",
  MUSIC: "موسيقي",
  TV_SHORT: "قصير",
};
const SEASON_MAP: Record<string, string> = {
  WINTER: "شتاء",
  SPRING: "ربيع",
  SUMMER: "صيف",
  FALL: "خريف",
};
const GENRE_MAP: Record<string, string> = {
  Action: "أكشن",
  Adventure: "مغامرة",
  Comedy: "كوميدي",
  Drama: "دراما",
  Fantasy: "فانتازيا",
  Horror: "رعب",
  Mecha: "ميكا",
  Music: "موسيقى",
  Mystery: "غموض",
  Psychological: "نفسي",
  Romance: "رومانسي",
  "Sci-Fi": "خيال علمي",
  "Slice of Life": "حياة يومية",
  Sports: "رياضي",
  Supernatural: "خوارق",
  Thriller: "إثارة",
  Ecchi: "إيتشي",
  Isekai: "إيسيكاي",
  Military: "عسكري",
  School: "مدرسي",
  Magic: "سحر",
  Historical: "تاريخي",
  Shounen: "شونين",
  Seinen: "سيينين",
  Shoujo: "شوجو",
  Kids: "أطفال",
  Game: "ألعاب",
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
interface SubCue {
  start: number;
  end: number;
  text: string;
}
interface SubTrack {
  id: string;
  lang: string;
  label: string;
  url: string;
}
type SubChoice = "off" | "ar" | "ar-auto" | "en";
interface SubSettings {
  fontSize: number; // 13 | 16 | 20 | 24
  color: string; // css color
  bgOpacity: number; // 0 | 0.45 | 0.82
  bold: boolean;
  position: "top" | "center" | "bottom"; // subtitle placement
}
const DEFAULT_SUB_SETTINGS: SubSettings = {
  fontSize: 20,
  color: "#ffffff",
  bgOpacity: 0,
  bold: true,
  position: "bottom",
};
function loadSubSettings(): SubSettings {
  try {
    const raw = localStorage.getItem("sub-settings-v1");
    if (raw) {
      const saved = JSON.parse(raw);
      return {
        ...DEFAULT_SUB_SETTINGS,
        ...saved,
        fontSize:
          saved.fontSize === 16 || saved.fontSize === 18 ? 20 : saved.fontSize,
      };
    }
  } catch {}
  return DEFAULT_SUB_SETTINGS;
}

/* ── Last-source helpers: cache the URL that actually played so resume is instant ── */
function saveLastSrc(
  animeId: number,
  ep: number,
  url: string,
  qualityRank: number,
  site?: string,
) {
  try {
    localStorage.setItem(
      `last-src-${animeId}-${ep}`,
      JSON.stringify({ url, qualityRank, site: site || "", ts: Date.now() }),
    );
  } catch {}
}
function loadLastSrc(
  animeId: number,
  ep: number,
): { url: string; qualityRank: number; site?: string } | null {
  try {
    const key = `last-src-${animeId}-${ep}`;
    const raw = localStorage.getItem(key);
    if (!raw) return null;
    const d = JSON.parse(raw);
    // Expire after 6 hours — sources (especially HLS) expire on CDN
    if (!d?.url || Date.now() - (d.ts || 0) > 6 * 60 * 60_000) {
      localStorage.removeItem(key);
      return null;
    }
    /* Reanime's FlixCloud manifests are encrypted and require the per-embed
       manifest key in the proxy URL. Older quick-resume entries predate that
       key and otherwise look healthy until hls-proxy returns the encrypted
       200-byte body, leaving the player on a permanent black loading screen.
       A site-less legacy hls-proxy entry is also discarded because it cannot
       be distinguished from that old Reanime format. */
    const isHlsProxy = /\/hls-proxy(?:\?|&)/i.test(String(d.url));
    const hasManifestKey = /[?&]mk=/i.test(String(d.url));
    if (
      (d.site === "anivexa_re" && isHlsProxy && !hasManifestKey) ||
      (!d.site && isHlsProxy && !hasManifestKey)
    ) {
      localStorage.removeItem(key);
      return null;
    }
    return d;
  } catch {
    return null;
  }
}

/* ── كاش مصادر الأنمي — TTL 45 دقيقة (يمنع re-scraping في كل فتح للحلقة) ── */
const ANIME_SRC_CACHE_TTL = 45 * 60_000; // 45 دقيقة
function saveAnimeSrcs(
  animeId: number,
  ep: number,
  site: string,
  srcs: FetchedSrc[],
) {
  try {
    const key = `anime-srcs-v1-${animeId}-${ep}-${site}`;
    localStorage.setItem(key, JSON.stringify({ srcs, ts: Date.now() }));
  } catch {}
}
function loadAnimeSrcs(
  animeId: number,
  ep: number,
  site: string,
): FetchedSrc[] | null {
  try {
    const key = `anime-srcs-v1-${animeId}-${ep}-${site}`;
    const raw = localStorage.getItem(key);
    if (!raw) return null;
    const d = JSON.parse(raw);
    if (!Array.isArray(d?.srcs) || !d.srcs.length) return null;
    if (Date.now() - (d.ts || 0) > ANIME_SRC_CACHE_TTL) {
      localStorage.removeItem(key);
      return null;
    }
    return d.srcs;
  } catch {
    return null;
  }
}

/* ══════════════════════════════════ HELPERS ══════════════════ */
function saveHistory(
  id: number,
  title: string,
  cover: string,
  ep: number,
  totalEps = 0,
  userId?: string | null,
) {
  if (localStorage.getItem("pref-automark") === "false") return;
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    const existing = h.find((x: any) => x.id === id);
    const finalCover = cover || existing?.cover || "";
    const finalTitle = title || existing?.title || "";
    const finalTotalEps = totalEps || existing?.totalEps || 0;
    localStorage.setItem(
      "watch-history",
      JSON.stringify(
        [
          {
            id,
            title: finalTitle,
            cover: finalCover,
            ep,
            date: new Date().toISOString(),
            totalEps: finalTotalEps,
          },
          ...h.filter((x: any) => !(x.id === id && x.ep === ep)),
        ].slice(0, 60),
      ),
    );
    const syncCover = finalCover;
    const syncTitle = finalTitle;
    if (userId) {
      fetch(API_BASE + "/api/user/history", {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          animeId: id,
          animeTitle: syncTitle,
          animeCover: syncCover,
          animeType: "anime",
          episodeNumber: ep,
        }),
      }).catch(() => {});
    }
  } catch {}
}

const QUALITY_LABELS: Quality[] = ["1080p FHD", "720p HD", "360p SD"];

/* ── FetchedSrc: shape returned by /api/anime/fetch-source ── */
interface FetchedSrc {
  url: string;
  directUrl?: string;
  quality?: string;
  qualityRank?: number;
  name?: string;
  site?: string;
  isEmbed?: boolean;
  serverCount?: number;
  verified?: boolean;
  label?: string;
  available?: boolean;
  checkOnly?: boolean;
  corsOk?: boolean; // CDN يدعم CORS * → تشغيل مباشر بدون proxy
  subtitleUrl?: string;
  hasBuiltinSub?: boolean;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
}

/* Only sources explicitly disabled by product policy remain hidden. */
const BLOCKED_SOURCE_SITES = new Set([
  "hianime",
  "hi",
  // Removed provider ids: hide stale cached responses and old clients too.
  "anivexa_anidbapp",
  "consumet_world",
  "consumet_miruro",
  "consumet_saturn",
  "consumet_reanime",
  "consumet_anikoto",
  "anivexa_re",
  "mkissa",
  "mk",
  "ra",
  "animegg",
  "gg",
  "anibd",
  "db",
  "2dhive",
  "2d",
  "senshi",
  "se",
  "kickassanime",
  "ka",
  "anivexa_mkissa",
  "anivexa_animegg",
  "anivexa_anibd",
  "anivexa_2dhive",
  "anivexa_senshi",
  "anivexa_kickassanime",
]);

/* ── All known scrapers — shown immediately in picker ── */
// ── قائمة المصادر المعتمدة فقط — المصادر الفاشلة لا تُعاد إلى المنتقي
//    من الباك-إند أيضاً (ANIME_SOURCE_ALLOWLIST في anime.ts). القائمة الأصلية
//    الكاملة محفوظة أعلاه في تاريخ Git — لإعادة أي مصدر أضِفه هنا وفي الباك-إند معاً.
const SCRAPER_DEFS: {
  site: string;
  name: string;
  desc: string;
  tag: string;
  serverLabel?: string;
  audioLang?: "en";
  isArabic?: true;
}[] = [
  { site: "kawaii", name: "كواي أنمي", desc: "1080p · مباشر", tag: "KW" },
  {
    site: "megaplay",
    name: "MegaPlay",
    desc: "HLS · صوت خام · ترجمة Kawaii",
    tag: "MP",
  },
  { site: "anineko", name: "AniNeko", desc: "HLS · متعدد الجودات", tag: "AN" },
  // hianime: معطّل بطلب المستخدم 2026-07-30 — تفوّت حلقات
  {
    site: "animewitcher",
    name: "AnimeWitcher",
    desc: "PD/ST · مباشر",
    tag: "AW",
    isArabic: true,
  },
  // direct Reanime was retired; RE below is the approved Anivexa/Reanime adapter
  {
    site: "anslayer",
    name: "أنمي سلاير",
    desc: "مشغلات خارجية · MixDrop/MediaFire",
    tag: "AS",
    isArabic: true,
  },
  {
    site: "animeify",
    name: "أنمي فاي",
    desc: "عربي · ميغا",
    tag: "AF",
    isArabic: true,
  },
  // anipub: معطّل بطلب المستخدم 2026-07-27
  // allmanga: معطّل 2026-07-17 — AllAnime أضافت AA_CRYPTO_MISSING على endpoint الحلقات (anti-scraping)
  // xpass_anim: محذوف — CDN يحجب VPS/CF IPs، المقاطع تفشل للمستخدم 2026-07-15
  // vaplayer_anim: محذوف من الأنمي — مصدره إنجليزي فقط، أُبقي في الأنيميشن 2026-07-15
  // faselhd_db (FH) / moviz_time (MT): معطّلة بطلب المستخدم 2026-07-14
  // mitanime: محذوف بطلب المستخدم 2026-07-27
  // nflixmovies_anim: حُذف 2026-07-30 — 0 مصادر (ميت)
  // vidbolt_anim: معطّل 2026-07-30 — كود محفوظ (10 مصادر HLS)، يُفعَّل لاحقاً
  {
    site: "sanime",
    name: "سـAnime",
    desc: "عربي · MP4 مباشر",
    tag: "SA",
    isArabic: true,
  },
  {
    site: "anifox",
    name: "ANIFOX",
    desc: "Archive · MediaFire · MP4Upload · Uqload",
    tag: "FX",
    isArabic: true,
  },
  {
    site: "animekai",
    name: "AnimeKai",
    desc: "HLS · ياباني + ترجمة",
    tag: "AK",
  },
  {
    site: "consumet_gogo",
    name: "GogoAnime",
    desc: "HLS · صوت خام · كل الجودات",
    tag: "GO",
  },
  // akoam: حُذف 2026-07-28 — كان يستخدم hopxBrowserExtract (browser) على كل طلب
];

/** مجموعة المصادر العربية — لا تعرض زر الترجمة الخارجية لها */
const ARABIC_SITES = new Set(
  SCRAPER_DEFS.filter((d) => d.isArabic).map((d) => d.site),
);

/* ── Static picker للويب: جودات مكدّسة + صفوف مصادر (تصميم Aniyomi) ── */
type WebQualityKey = "1080p" | "720p" | "360p";
/* KW (kawaii) يوفر 1080p فقط — لا يُعرض في 720p/480p لتجنب الإيهام بأنه متاح بجودات أخرى */
const STATIC_PICKER_WEB: Record<
  WebQualityKey,
  { site: string; tag: string; serverLabel?: string }[]
> = {
  "1080p": [
    { site: "kawaii", tag: "KW" },
    { site: "megaplay", tag: "MP" },
    { site: "anineko", tag: "AN" },
    { site: "animewitcher", tag: "AW" },
    { site: "anslayer", tag: "AS" },
    { site: "sanime", tag: "SA" },
    { site: "animeify", tag: "AF" },
    { site: "anifox", tag: "FX" },
    { site: "animekai", tag: "AK" },
    { site: "consumet_gogo", tag: "GO" },
  ],
  "720p": [
    { site: "megaplay", tag: "MP" },
    { site: "anineko", tag: "AN" },
    { site: "animewitcher", tag: "AW" },
    { site: "anslayer", tag: "AS" },
    { site: "sanime", tag: "SA" },
    { site: "animeify", tag: "AF" },
    { site: "anifox", tag: "FX" },
    { site: "animekai", tag: "AK" },
    { site: "consumet_gogo", tag: "GO" },
  ],
  "360p": [
    { site: "megaplay", tag: "MP" },
    { site: "anineko", tag: "AN" },
    { site: "animewitcher", tag: "AW" },
    { site: "animeify", tag: "AF" },
    { site: "anifox", tag: "FX" },
    { site: "animekai", tag: "AK" },
    { site: "consumet_gogo", tag: "GO" },
  ],
};
const WEB_Q_KEYS: WebQualityKey[] = ["1080p", "720p", "360p"];
/* خريطة جودة الويب → Quality tier — لفلترة المصادر per-row */
const PICKER_QMAP: Record<WebQualityKey, Quality> = {
  "1080p": "1080p FHD",
  "720p": "720p HD",
  "360p": "360p SD",
};

/**
 * الموجة الأولى من المصادر التي تُجرَّب فوراً عند فتح الحلقة — أسرع/أوثق المصادر تاريخياً.
 * بقية المصادر (~20 موقع) تُجرَّب فقط لو ما لقينا مصدر شغّال خلال 1.8 ثانية،
 * وتُلغى فوراً بمجرد بدء التشغيل — هذا يقلل طلبات السيرفر الخارجية بشكل كبير
 * دون التأثير على سرعة تجربة المستخدم (auto-play يبقى فورياً).
 */
const PRIORITY_FETCH_SITES = new Set([
  "kawaii",
  "megaplay",
  "animewitcher",
  "dulo_anim",
  "animeify",
  "sanime",
  "anifox", // Japanese providers
  // shahiid/animelek: أُزيلت — معطّلة بطلب المستخدم 2026-07-14
]);

/**
 * مجموعة المصادر اليابانية التي تستفيد من الترجمة الذكية التلقائية.
 * هذه المصادر بدون ترجمة عربية مدمجة → يتم تفعيل الترجمة تلقائياً عند التشغيل.
 * المصادر التي تُرسل subtitleUrl مدمجاً (kawaii/anikoto/videasy) يتم التعامل معها
 * بواسطة تأثير subtitleUrl الحالي — لا تحتاج لإدراجها هنا.
 */
const PROVIDER_WANTS_SMART_SUB = new Set([
  "animepahe",
  "anikototv",
  "anineko",
  "animekai",
  "consumet_gogo",
  "dulo_anim",
  "anivexa_solaris_1",
  "anivexa_solaris_2",
  "anivexa_frost",
]);

/* Kawaii is the canonical subtitle source for these Japanese HLS providers.
   Use its episode subtitle first, then keep the provider subtitle as a fallback
   when Kawaii has not returned a track for that episode yet. */
const KAWAII_SUBTITLE_SITES = new Set([
  "kawaii",
  "anineko", // AN
  "animekai", // AK
  "megaplay", // MP
  "consumet_gogo",
]);

/* These providers are intentionally left without the generic episode subtitle
   fallback. GO/DB/KO are Japanese raw-audio streams, so they are opted into
   the smart Arabic subtitle path above instead. */
const RAW_AUDIO_ONLY_SITES = new Set<string>();

type SlotStatus = "idle" | "fetching" | "ready" | "failed";

function getSrcQualityTier(src: FetchedSrc): Quality {
  const rank = src.qualityRank ?? 0;
  // Explicit labels are authoritative. Provider ranks are not comparable:
  // rank 11 is used by some providers for FHD and by others for HD/SD.
  const explicit = `${src.quality || ""} ${src.name || ""}`.toLowerCase();
  const text = `${explicit} ${src.url || ""} ${src.directUrl || ""}`;
  if (/(?:2160|1440|1080)\s*p?|\bfhd\b|full[ ._-]*hd/.test(text))
    return "1080p FHD";
  if (/(?:720)\s*p?|(?<!f)\bhd\b/.test(text)) return "720p HD";
  if (/(?:480|360)\s*p?|\bsd\b/.test(text)) return "360p SD";
  if (rank >= 13) return "1080p FHD";
  if (rank >= 8) return "720p HD";
  return "360p SD";
}

function buildMerged(srcs: FetchedSrc[]): Record<Quality, string[]> {
  const merged: Record<Quality, string[]> = {
    "1080p FHD": [],
    "720p HD": [],
    "360p SD": [],
  };
  srcs.forEach((s) => {
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
  // Never show a known dubbed or burned-in foreign-subtitle file, even if an
  // upstream provider bypassed the backend metadata filter.
  if (
    /(?:dub(?:bed)?|hardsub|hardcoded|burned|sub[_-]?ita|subita|sub[_-]?eng|subeng)/i.test(
      `${url} ${src.name || ""}`,
    )
  )
    return false;
  // Hide embed sources (iframes) — will be shown as fallback when no direct sources
  if (src.isEmbed) return false;
  return true;
}

/* ── Embed fallback: mega/vidmoly/witanime/mycima shown only when no direct sources exist ──
   witanime + mycima مسموح لهم بالباك-إند (HIDDEN_RESOLVE_EMBED_SITES) لكن الفرونتند كان
   يستثنيهم من هذا الفلتر لأن روابطهم (yonaplay.net/videa.hu/wishonly.site/...) متغيّرة ولا
   تُطابق أي host ثابت — النتيجة: مصادرهم تُجلب بنجاح من الباك-إند ثم تُختفى تماماً بدون سبب. */
function isEmbedFallback(src: FetchedSrc): boolean {
  const url = (src.directUrl || src.url || "").toLowerCase();
  if (!src.isEmbed) return false;
  if (
    src.site === "mycima" ||
    src.site === "moviz_time" ||
    src.site === "faselhd_db" ||
    src.site === "akoam"
  )
    return true;
  // animeify: FileMoon+SendVid تُعاد كـ isEmbed:true عند فشل extraction — اعرضها كـ fallback بدل إخفائها
  if (src.site === "animeify") return true;
  return (
    url.includes("mega.nz") ||
    url.includes("mega.co.nz") ||
    url.includes("vidmoly")
  );
}

/* ── Normalise CDN hostname for deduplication ── */
function normCdnHost(url: string): string {
  if (!url) return "";
  try {
    // For our proxy URLs (/api/anime/hls-proxy, /api/anime/video-proxy, etc.)
    // extract the INNER CDN hostname so proxy sources aren't all collapsed to "x.com"
    if (url.startsWith("/api/anime/")) {
      const inner =
        new URL("https://x.com" + url).searchParams.get("url") || "";
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
  } catch {
    return url.slice(0, 40);
  }
}

/* ── Detect embed-type URLs (must render in sandboxed iframe, not native video) ── */
function isIframeUrl(url: string): boolean {
  if (!url || url.startsWith("/")) return false; // our proxy endpoints start with /
  if (url.includes("workers.dev")) return false; // Anime-Phoenix CDN (direct video)
  if (url.includes("streamtape.com")) return false; // direct MP4
  if (url.includes("sendvid.com")) return false; // direct MP4
  if (url.includes("cdn.momentoai.dev")) return false; // kawaii CDN جديد (cdn.momentoai.dev)
  if (url.includes("video.kawaii-anime.com")) return false; // kawaii CDN قديم (legacy)
  if (url.includes("missourimonster-vyla.hf.space")) return false; // Vyla proxy (direct HLS)
  if (url.match(/\.(m3u8|mp4|mkv|webm|ts)([?#]|$)/i)) return false; // video file
  return url.startsWith("https://"); // external embed page
}

function getEmbedLabel(url: string): string {
  if (url.includes("mega.nz")) return "ميغا";
  if (url.includes("mega.co.nz")) return "ميغا";
  if (url.includes("filemoon")) return "فايل مون";
  if (url.includes("streamwish")) return "ستريم ويش";
  if (url.includes("vidhide")) return "فيد هايد";
  if (url.includes("share4max")) return "شير ماكس";
  if (url.includes("streamlare")) return "ستريم لير";
  if (url.includes("asnwish")) return "فيديو";
  if (url.includes("vidmoly")) return "فيدمولي";
  return "فيديو";
}

/* ── Server source detection ── */
interface ServerInfo {
  label: string;
  sublabel: string;
  isHls: boolean;
  isDirect?: boolean;
}
function getServerInfo(url: string, idx: number): ServerInfo {
  // Embed-type URLs → shown in sandboxed iframe
  if (isIframeUrl(url)) {
    return {
      label: getEmbedLabel(url),
      sublabel: "داخل التطبيق",
      isHls: false,
    };
  }
  // All sources sent from the API are native-playable (no iframes)
  // Anime-Phoenix CDN (workers.dev — direct MKV/MP4)
  if (url.includes("workers.dev")) {
    return {
      label: "فينكس",
      sublabel: "عربي · مباشر",
      isHls: true,
      isDirect: true,
    };
  }
  // hls-proxy wrapped stream (extracted from Arabic/Japanese sites)
  if (url.includes("hls-proxy")) {
    if (url.includes("as-cdn21") || url.includes("rubystm")) {
      return { label: "تون ستريم", sublabel: "ياباني · HLS", isHls: true };
    }
    if (
      url.includes("streamwish") ||
      url.includes("filemoon") ||
      url.includes("wishembed")
    ) {
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
    return {
      label: "ستريم تيب",
      sublabel: "عربي · مباشر",
      isHls: true,
      isDirect: true,
    };
  }
  if (
    url.includes("sendvid.com") ||
    (url.includes("/video-proxy?") && url.includes("sendvid"))
  ) {
    return {
      label: "سيندفيد",
      sublabel: "عربي · مباشر",
      isHls: true,
      isDirect: true,
    };
  }
  if (url.includes("mp4upload.com")) {
    return {
      label: "MP4Upload",
      sublabel: "مباشر",
      isHls: true,
      isDirect: true,
    };
  }
  // CORS * CDNs — تشغيل مباشر في المتصفح بدون proxy
  if (
    url.includes("cdn.momentoai.dev") ||
    url.includes("video.kawaii-anime.com")
  ) {
    return {
      label: "كواي CDN",
      sublabel: "مباشر · 1080p",
      isHls: false,
      isDirect: true,
    };
  }
  if (url.includes("pixeldrain.com/api/file/")) {
    return {
      label: "AnimeWitcher · PD",
      sublabel: "مباشر · 1080p",
      isHls: false,
      isDirect: true,
    };
  }
  if (url.includes("/video-proxy?")) {
    return {
      label: "مباشر",
      sublabel: "عربي · مباشر",
      isHls: true,
      isDirect: true,
    };
  }
  if (url.match(/\.(mp4|mkv|webm)([?#]|$)/i)) {
    return {
      label: "مصدر مباشر",
      sublabel: "تشغيل مباشر",
      isHls: true,
      isDirect: true,
    };
  }
  // Bare m3u8
  if (url.match(/\.m3u8([?#]|$)/i)) {
    return { label: "بث مباشر", sublabel: "جودة عالية", isHls: true };
  }
  // AnimeX
  if (
    url.includes("animex-player") ||
    url.includes("animex-source") ||
    url.includes("#animex")
  ) {
    return { label: "أنمي إكس", sublabel: "عربي · HLS مباشر", isHls: true };
  }
  // Mega.nz embed (animeify — no ads, stays in app)
  if (url.includes("mega.nz/embed")) {
    return {
      label: "ميغا",
      sublabel: "عربي · مباشر",
      isHls: false,
      isDirect: false,
    };
  }
  // Vyla proxy (TMDB-native, direct HLS served from Vyla proxy)
  if (url.includes("missourimonster-vyla.hf.space")) {
    return { label: "Vyla", sublabel: "ياباني · HLS مترجم", isHls: true };
  }
  // Fallback — all sources are native
  return {
    label: `مصدر ${idx + 1}`,
    sublabel: "عربي · تشغيل مباشر",
    isHls: true,
    isDirect: true,
  };
}

function fmtTime(s: number) {
  if (!isFinite(s) || s < 0) return "0:00";
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = Math.floor(s % 60);
  if (h > 0)
    return `${h}:${String(m).padStart(2, "0")}:${String(sec).padStart(2, "0")}`;
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
  const tsMapM = normalized.match(
    /X-TIMESTAMP-MAP=MPEGTS:(\d+),LOCAL:([\d:.]+)/i,
  );
  if (tsMapM) {
    const mpegts = parseInt(tsMapM[1], 10) / 90000;
    const lm = tsMapM[2].match(/^(\d+):(\d{2}):(\d{2})[,.](\d{3})/);
    const local = lm
      ? parseInt(lm[1]) * 3600 +
        parseInt(lm[2]) * 60 +
        parseInt(lm[3]) +
        parseInt(lm[4]) / 1000
      : 0;
    tsOffset = Math.max(0, mpegts - local);
  }
  const toSec = (ts: string) => {
    const m = ts.match(/(\d+):(\d{2}):(\d{2})[,.](\d{3})/);
    if (!m) return 0;
    const raw =
      parseInt(m[1]) * 3600 +
      parseInt(m[2]) * 60 +
      parseInt(m[3]) +
      parseInt(m[4]) / 1000;
    return Math.max(0, raw - tsOffset);
  };
  const blocks = normalized.split(/\n{2,}/);
  for (const block of blocks) {
    const lines = block.trim().split("\n");
    const timeLine = lines.find((l) => l.includes("-->"));
    if (!timeLine) continue;
    const [startStr, endStr] = timeLine.split("-->").map((s) => s.trim());
    const textLines = lines
      .filter((l) => l !== timeLine && !l.match(/^\d+$/))
      .join(" ")
      .replace(/<[^>]+>/g, "")
      .trim();
    if (textLines)
      cues.push({
        start: toSec(startStr),
        end: toSec(endStr),
        text: textLines,
      });
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
const SUB_SESSION_TTL = 3 * 3_600_000; // L1 TTL — 3 ساعات
const SUB_LOCAL_TTL = 7 * 86_400_000; // L2 TTL — 7 أيام

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
  } catch {
    /* quota or parse error — silent */
  }
  return null;
}
function setCachedCues(key: string, cues: SubCue[]) {
  const entry = { cues, ts: Date.now() };
  _subCueCache.set(key, entry);
  try {
    localStorage.setItem("sc2-" + key.slice(0, 160), JSON.stringify(entry));
  } catch {
    /* ignore quota exceeded */
  }
}

/* ── Module-level timestamp parser (HH:MM:SS.mmm or MM:SS.mmm) ── */
function _vttTimingToSec(ts: string): number {
  // VTT/SRT providers emit fractional seconds as .0, .00, or .000.
  // Requiring exactly three digits silently turns every cue into 0:00.
  const m3 = ts.match(/(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
  if (m3)
    return (
      +m3[1] * 3600 +
      +m3[2] * 60 +
      +m3[3] +
      parseInt(m3[4].padEnd(3, "0"), 10) / 1000
    );
  const m2 = ts.match(/(\d+):(\d{2})[,.](\d{1,3})/);
  if (m2)
    return +m2[1] * 60 + +m2[2] + parseInt(m2[3].padEnd(3, "0"), 10) / 1000;
  return 0;
}

/* ── Merge + sort subtitle cue arrays (preserves timeline order) ── */
function _mergeSubCues(existing: SubCue[], incoming: SubCue[]): SubCue[] {
  if (!existing.length) return incoming;
  const out = [...existing, ...incoming];
  out.sort((a, b) => a.start - b.start);
  return out;
}

/* ── Parse SSE chunk cues into SubCue[] ── */
function _parseSseCues(raw: Array<{ timing: string; text: string }>): SubCue[] {
  return raw
    .map((c) => {
      const parts = c.timing.split("-->");
      return {
        start: _vttTimingToSec((parts[0] || "").trim()),
        end: _vttTimingToSec((parts[1] || "").trim()),
        text: c.text,
      };
    })
    .filter((c) => c.start < c.end && c.text.trim().length > 0);
}

/**
 * Open an SSE stream to /translate-vtt-stream and deliver cues progressively.
 * Converts /translate-vtt?… → /translate-vtt-stream?… automatically.
 * Returns a cleanup() function — call on abort / unmount.
 */
function _streamVttTranslation(
  vttUrl: string,
  callbacks: {
    onChunk: (cues: SubCue[], isFirst: boolean) => void;
    onDone: (totalCues: number) => void;
    onError: () => void;
  },
  signal?: AbortSignal,
): () => void {
  const streamUrl = vttUrl.includes("/translate-vtt-stream")
    ? vttUrl
    : vttUrl.replace("/translate-vtt?", "/translate-vtt-stream?");

  const es = new EventSource(streamUrl);
  let closed = false;
  let chunkCount = 0;

  const cleanup = () => {
    if (closed) return;
    closed = true;
    es.close();
  };

  if (signal) {
    if (signal.aborted) {
      cleanup();
      return cleanup;
    }
    signal.addEventListener("abort", cleanup, { once: true });
  }

  es.onmessage = (e: MessageEvent) => {
    if (closed || signal?.aborted) {
      cleanup();
      return;
    }
    try {
      const msg = JSON.parse(e.data as string) as {
        type: string;
        cues?: Array<{ timing: string; text: string }>;
        totalCues?: number;
      };
      if (msg.type === "chunk" && msg.cues?.length) {
        const parsed = _parseSseCues(msg.cues);
        if (parsed.length > 0) {
          callbacks.onChunk(parsed, chunkCount === 0);
          chunkCount++;
        }
      } else if (msg.type === "done") {
        callbacks.onDone(msg.totalCues ?? 0);
        cleanup();
      } else if (msg.type === "error") {
        callbacks.onError();
        cleanup();
      }
    } catch {}
  };

  es.onerror = () => {
    if (!closed) {
      callbacks.onError();
      cleanup();
    }
  };

  return cleanup;
}

/* ══════════════════════════════════ LOADING SCREEN ══════════ */
function LoadingScreen({
  cover,
  title,
  ep,
}: {
  cover: string;
  title: string;
  ep: number;
}) {
  useEffect(() => {
    try {
      (screen.orientation as any).lock?.("portrait").catch(() => {});
    } catch {}
    return () => {
      try {
        (screen.orientation as any).unlock?.();
      } catch {}
    };
  }, []);
  return (
    <div className="fixed inset-0 z-50 overflow-hidden bg-[#07070d]" dir="rtl">
      {/* Full-screen blurred backdrop */}
      {cover && (
        <div className="absolute inset-0">
          <img
            src={cover}
            alt=""
            className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.18] saturate-150"
          />
          <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/80 via-[#07070d]/40 to-[#07070d]/90" />
          <div className="absolute inset-0 bg-[#07070d]/25" />
        </div>
      )}

      {/* Centered content */}
      <div className="relative h-full flex flex-col items-center justify-center gap-6 px-6">
        {/* Prayer — ABOVE poster */}
        <motion.p
          initial={{ opacity: 0, y: -8 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.03, duration: 0.18 }}
          className="text-white/85 text-[14px] font-black font-['Cairo'] tracking-wide text-center"
        >
          اللهم صلِّ وسلِّم على نبينا محمد ﷺ
        </motion.p>

        {/* Large cover image */}
        {cover ? (
          <motion.div
            initial={{ opacity: 0, scale: 0.82, y: 28 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            transition={{ duration: 0.22, ease: [0.22, 1, 0.36, 1] }}
            className="relative flex-shrink-0"
          >
            <img
              src={cover}
              alt={title}
              className="w-44 h-[248px] rounded-2xl object-cover"
              style={{
                boxShadow:
                  "0 24px 80px rgba(0,0,0,0.85), 0 0 0 1px rgba(255,255,255,0.07)",
              }}
            />
            <div className="absolute inset-0 rounded-2xl bg-gradient-to-br from-white/[0.08] via-transparent to-transparent pointer-events-none" />
            <div className="absolute bottom-0 left-0 right-0 h-20 rounded-b-2xl bg-gradient-to-t from-black/60 to-transparent pointer-events-none" />
          </motion.div>
        ) : (
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            className="w-44 h-[248px] rounded-2xl bg-white/[0.04] flex items-center justify-center"
            style={{ boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}
          >
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
          className="text-center"
        >
          {title && (
            <h2
              className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-2"
              style={{ textShadow: "0 2px 12px rgba(0,0,0,0.7)" }}
            >
              {title}
            </h2>
          )}
          <span
            className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-[12px] font-bold font-['Cairo']"
            style={{
              background: "rgba(124,58,237,0.22)",
              border: "1px solid rgba(139,92,246,0.30)",
              color: "rgba(196,181,253,0.9)",
            }}
          >
            الحلقة {ep}
          </span>
        </motion.div>

        {/* Spinning ring loader */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.32 }}
          className="flex flex-col items-center gap-3"
        >
          <div className="relative w-9 h-9">
            <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
            <motion.div
              className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
              animate={{ rotate: 360 }}
              transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }}
            />
          </div>
          <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">
            سوكونا يقاتل غوجو بجهد من اجل السيرفرات
          </p>
          <AnimeMascot mood="loading" />
        </motion.div>
      </div>
    </div>
  );
}

/* ══════════════════════════════════ NO SOURCES ══════════════ */
function NoSources({
  onRefresh,
  onBack,
}: {
  onRefresh: () => void;
  onBack: () => void;
}) {
  return (
    <div
      className="fixed inset-0 z-50 bg-[#09090f] flex flex-col items-center justify-center gap-5"
      dir="rtl"
    >
      <div className="w-14 h-14 rounded-2xl bg-white/4 border border-white/7 flex items-center justify-center">
        <AlertTriangle className="w-6 h-6 text-white/20" />
      </div>
      <div className="text-center">
        <p className="text-white/55 text-[14px] font-black font-['Cairo']">
          لا توجد مصادر
        </p>
        <p className="text-white/25 text-[12px] mt-1 font-['Cairo']">
          الحلقة غير متوفرة حالياً
        </p>
      </div>
      <div className="flex gap-3">
        <button
          onClick={onBack}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/5 border border-white/9 text-white/55 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform"
        >
          <ChevronRight className="w-4 h-4" /> رجوع
        </button>
        <button
          onClick={onRefresh}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform"
        >
          <RefreshCw className="w-4 h-4" /> إعادة المحاولة
        </button>
      </div>
    </div>
  );
}

/* ══════════════════════════════════ LOADING MODAL ═══════════ */
function WatchLoadingModal({
  cover,
  title,
  ep,
  epTitle,
  onClose,
}: {
  cover?: string;
  title?: string;
  ep?: number;
  epTitle?: string;
  onClose?: () => void;
}) {
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
            <div
              className="absolute inset-0"
              style={{
                background:
                  "radial-gradient(ellipse at 50% 20%, rgba(109,40,217,0.60) 0%, rgba(79,30,180,0.28) 40%, transparent 72%)",
              }}
            />
            <div
              className="absolute inset-0"
              style={{
                background:
                  "radial-gradient(ellipse at 50% 100%, rgba(124,58,237,0.18) 0%, transparent 55%)",
              }}
            />
          </>
        )}
        <div
          className="absolute inset-0"
          style={{ background: "rgba(5,5,14,0.72)" }}
        />
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
            style={{
              background:
                "radial-gradient(ellipse at 50% 60%, rgba(139,92,246,0.55) 0%, rgba(109,40,217,0.22) 50%, transparent 75%)",
            }}
          />
          <div
            className="absolute -inset-3 rounded-[28px] pointer-events-none"
            style={{
              boxShadow:
                "0 0 60px 8px rgba(124,58,237,0.30), 0 0 120px 16px rgba(109,40,217,0.12)",
            }}
          />
          {cover ? (
            <img
              src={cover}
              alt={title || "أنمي"}
              className="w-44 h-[248px] rounded-2xl object-cover object-top"
              style={{
                boxShadow:
                  "0 32px 80px rgba(0,0,0,0.92), 0 0 0 1px rgba(255,255,255,0.09)",
              }}
            />
          ) : (
            <motion.div
              className="w-44 h-[248px] rounded-2xl overflow-hidden relative flex items-center justify-center"
              style={{
                boxShadow:
                  "0 24px 60px rgba(0,0,0,0.90), 0 0 0 1px rgba(255,255,255,0.09)",
                background: "rgba(30,10,60,0.95)",
              }}
            >
              <div
                className="absolute inset-0"
                style={{
                  background:
                    "radial-gradient(ellipse at 50% 30%, rgba(139,92,246,0.55) 0%, transparent 65%)",
                  opacity: 0.4,
                }}
              />
              <div className="relative z-10 flex flex-col items-center gap-3">
                <div
                  className="w-12 h-12 rounded-2xl flex items-center justify-center"
                  style={{
                    background: "rgba(139,92,246,0.20)",
                    border: "1px solid rgba(139,92,246,0.35)",
                  }}
                >
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
                boxShadow:
                  "0 0 40px rgba(109,40,217,0.55), 0 8px 24px rgba(0,0,0,0.60)",
              }}
            >
              <Play className="w-7 h-7 text-white fill-white ml-1" />
            </div>
          </motion.div>
          {/* Bottom fade on cover */}
          <div
            className="absolute bottom-0 left-0 right-0 h-16 rounded-b-2xl pointer-events-none"
            style={{
              background:
                "linear-gradient(0deg, rgba(0,0,0,0.55) 0%, transparent 100%)",
            }}
          />
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
            <p className="text-white/35 text-[13px] font-['Cairo'] tracking-wide">
              الحلقة {ep}
              {epTitle ? ` · ${epTitle}` : ""}
            </p>
          )}
        </motion.div>

        {/* Spinner + loading text — same as AnimationWatch */}
        <motion.div
          className="flex flex-col items-center gap-3"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.3 }}
        >
          <p className="text-white/85 text-[14px] font-black font-['Cairo'] tracking-wide">
            اللهم صلِّ وسلِّم على نبينا محمد ﷺ
          </p>
          <div className="relative w-9 h-9">
            <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
            <motion.div
              className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
              animate={{ rotate: 360 }}
              transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }}
            />
          </div>
          <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">
            سوكونا يقاتل غوجو بجهد من اجل السيرفرات
          </p>
          <AnimeMascot mood="loading" />
        </motion.div>
      </div>

      {/* Close button */}
      {onClose && (
        <motion.button
          onClick={onClose}
          className="absolute top-4 right-4 w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-transform z-20"
          style={{
            background: "rgba(0,0,0,0.50)",
            border: "1px solid rgba(255,255,255,0.13)",
            backdropFilter: "blur(12px)",
          }}
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
  if (url.includes("video-proxy?"))
    return url.replace("video-proxy?", "video-proxy?dl=1&");
  return null;
}

/* ══════════════════════════════════ SOURCE DISPLAY HELPERS ══ */
function getCdnDisplayName(url: string): string {
  if (!url) return "مصدر";
  const u = url.toLowerCase();
  if (u.includes("mega.nz") || u.includes("mega.co.nz")) return "Mega NZ";
  if (u.includes("workers.dev")) return "Phoenix CDN";
  if (u.includes("filemoon")) return "FileMoon";
  if (
    u.includes("streamwish") ||
    u.includes("wishembed") ||
    u.includes("hglink") ||
    u.includes("hgcloud")
  )
    return "StreamWish";
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
  shahiid: "شاهيد",
  animelek: "أنمي ليك",
  animedar: "أنمي دار",
  okanime: "أوك أنمي",
  toonstream: "تون ستريم",
  animeify: "أنمي فاي",
};

const QUALITY_STYLE: Record<
  Quality,
  { dot: string; badge: string; border: string; text: string; icon: string }
> = {
  "1080p FHD": {
    dot: "#fbbf24",
    badge: "rgba(251,191,36,0.10)",
    border: "rgba(251,191,36,0.26)",
    text: "rgba(253,224,71,0.95)",
    icon: "rgba(251,191,36,0.72)",
  },
  "720p HD": {
    dot: "#34d399",
    badge: "rgba(52,211,153,0.09)",
    border: "rgba(52,211,153,0.24)",
    text: "rgba(110,231,183,0.92)",
    icon: "rgba(52,211,153,0.68)",
  },
  "360p SD": {
    dot: "#94a3b8",
    badge: "rgba(148,163,184,0.07)",
    border: "rgba(148,163,184,0.16)",
    text: "rgba(148,163,184,0.70)",
    icon: "rgba(148,163,184,0.55)",
  },
};
const Q_LABEL: Record<Quality, string> = {
  "1080p FHD": "جودة عالية جداً · FHD 1080",
  "720p HD": "جودة عالية · HD 720",
  "360p SD": "جودة متوسطة · SD 360",
};
const Q_SHORT: Record<Quality, string> = {
  "1080p FHD": "FHD",
  "720p HD": "HD",
  "360p SD": "SD",
};

/* ══════════════════════════════════ SCRAPER PICKER ══════════ */
const QUALITY_TIER_RANK: Record<Quality, number> = {
  "1080p FHD": 3,
  "720p HD": 2,
  "360p SD": 1,
};

const SourceRow = memo(function SourceRow({
  src,
  idx,
  onPlaySrc,
}: {
  src: FetchedSrc;
  idx: number;
  onPlaySrc: (s: FetchedSrc) => void;
}) {
  const url = src.directUrl || src.url;
  const cdn = getCdnDisplayName(url);
  const site = SITE_SHORT[src.site || ""] || src.site || "";
  const isEmbed = !!src.isEmbed;
  const def = SCRAPER_DEFS.find((d) => d.site === src.site);
  if (!def && src.site !== "_resume") return null;
  const tag = def?.tag || "??";
  const isEngAudio = def?.audioLang === "en";
  const q = getSrcQualityTier(src);
  const qs = QUALITY_STYLE[q];
  return (
    <motion.div
      initial={{ opacity: 0, y: 4 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: Math.min(idx * 0.025, 0.14), duration: 0.14 }}
    >
      <div
        className="flex items-center px-3 py-2.5 gap-2.5 active:bg-white/[0.03] transition-colors cursor-pointer"
        style={{ borderBottom: "1px solid rgba(255,255,255,0.04)" }}
        onClick={() => onPlaySrc(src)}
      >
        <div
          className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
          style={{ background: qs.badge, border: `1px solid ${qs.border}` }}
        >
          {isEmbed ? (
            <Tv2 className="w-3.5 h-3.5" style={{ color: qs.icon }} />
          ) : (
            <MonitorPlay className="w-3.5 h-3.5" style={{ color: qs.icon }} />
          )}
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-1.5 flex-wrap mb-0.5">
            <p
              className="text-white/90 text-[12px] font-black font-['Cairo'] leading-tight"
              dir="rtl"
            >
              السيرفر{" "}
              <span className="font-mono" dir="ltr">
                {tag}
              </span>
            </p>
            {isEngAudio && (
              <span
                className="text-[10px] font-bold px-1.5 py-0.5 rounded-md font-['Cairo'] shrink-0"
                style={{
                  background: "rgba(59,130,246,0.14)",
                  border: "1px solid rgba(59,130,246,0.30)",
                  color: "rgba(147,197,253,0.90)",
                }}
              >
                🎌 ياباني/إنجليزي
              </span>
            )}
          </div>
          <div className="flex items-center gap-1 flex-wrap">
            {isEmbed && (
              <span
                className="font-mono text-[7px] font-bold px-1 py-0.5 rounded"
                style={{
                  background: "rgba(52,211,153,0.10)",
                  color: "rgba(110,231,183,0.70)",
                  border: "1px solid rgba(52,211,153,0.18)",
                }}
              >
                مدمج
              </span>
            )}
          </div>
        </div>
        <div className="flex items-center gap-1.5 shrink-0">
          <span
            className="font-mono text-[7px] font-bold px-1.5 py-0.5 rounded"
            style={{
              background: qs.badge,
              border: `1px solid ${qs.border}`,
              color: qs.text,
            }}
          >
            {Q_SHORT[q]}
          </span>
          {getDownloadUrl(src) && (
            <a
              href={getDownloadUrl(src)!}
              download
              target="_blank"
              rel="noreferrer"
              onClick={(e) => e.stopPropagation()}
              className="w-7 h-7 rounded-lg flex items-center justify-center active:scale-90 transition-transform shrink-0"
              style={{
                background: "rgba(52,211,153,0.10)",
                border: "1px solid rgba(52,211,153,0.28)",
              }}
            >
              <Download className="w-3 h-3 text-emerald-400/85" />
            </a>
          )}
          <div
            className="flex items-center gap-0.5 px-2.5 py-1.5 rounded-xl active:scale-95 transition-transform"
            style={{
              background:
                "linear-gradient(135deg, rgba(16,185,129,0.92), rgba(5,150,105,0.97))",
              border: "1px solid rgba(52,211,153,0.35)",
              boxShadow: "0 2px 10px rgba(16,185,129,0.30)",
            }}
          >
            <Play className="w-2.5 h-2.5 text-white fill-white" />
            <span className="text-white text-[10.5px] font-black font-['Cairo']">
              تشغيل
            </span>
          </div>
        </div>
      </div>
    </motion.div>
  );
});

/* ── SourceGroup: مجموعة (موقع + جودة) → صف واحد يتنافس سيرفراته داخلياً ── */
type SourceGroup = {
  site: string;
  quality: Quality;
  srcs: FetchedSrc[];
  def: (typeof SCRAPER_DEFS)[number];
};

const SourceGroupRow = memo(function SourceGroupRow({
  group,
  idx,
  onPlayGroup,
}: {
  group: SourceGroup;
  idx: number;
  onPlayGroup: (group: SourceGroup) => void;
}) {
  const q = group.quality;
  const qs = QUALITY_STYLE[q];
  const def = group.def;
  const cnt = Math.max(
    group.srcs.length,
    ...group.srcs.map((src) => Number(src.serverCount || 0)),
  );
  return (
    <motion.div
      initial={{ opacity: 0, y: 4 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: Math.min(idx * 0.025, 0.14), duration: 0.14 }}
    >
      <div
        className="flex items-center px-3 py-2.5 gap-2.5 cursor-pointer hover:bg-white/[0.02] active:bg-white/[0.04] transition-colors"
        style={{ borderBottom: "1px solid rgba(255,255,255,0.04)" }}
        onClick={() => onPlayGroup(group)}
      >
        <div
          className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
          style={{ background: qs.badge, border: `1px solid ${qs.border}` }}
        >
          <MonitorPlay className="w-3.5 h-3.5" style={{ color: qs.icon }} />
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-1.5 flex-wrap mb-0.5">
            <p
              className="text-white/90 text-[12px] font-black font-['Cairo'] leading-tight"
              dir="rtl"
            >
              السيرفر{" "}
              <span className="font-mono" dir="ltr">
                {def.tag}
              </span>
            </p>
            {def.audioLang === "en" && (
              <span
                className="text-[9px] font-bold px-1.5 py-0.5 rounded font-['Cairo'] shrink-0"
                style={{
                  background: "rgba(59,130,246,0.12)",
                  border: "1px solid rgba(59,130,246,0.28)",
                  color: "rgba(147,197,253,0.85)",
                }}
              >
                🎌 ياباني/إنجليزي
              </span>
            )}
            {cnt > 1 && (
              <span
                className="text-[9px] font-bold px-1.5 py-0.5 rounded font-['Cairo'] shrink-0"
                style={{
                  background: "rgba(52,211,153,0.10)",
                  border: "1px solid rgba(52,211,153,0.25)",
                  color: "rgba(110,231,183,0.75)",
                }}
              >
                {cnt} سيرفر
              </span>
            )}
          </div>
        </div>
        <div className="flex items-center gap-1.5 shrink-0">
          <span
            className="font-mono text-[7px] font-bold px-1.5 py-0.5 rounded"
            style={{
              background: qs.badge,
              border: `1px solid ${qs.border}`,
              color: qs.text,
            }}
          >
            {Q_LABEL[q]}
          </span>
          <div
            className="flex items-center gap-0.5 px-2.5 py-1.5 rounded-xl"
            style={{
              background:
                "linear-gradient(135deg,rgba(16,185,129,0.92),rgba(5,150,105,0.97))",
              border: "1px solid rgba(52,211,153,0.35)",
              boxShadow: "0 2px 10px rgba(16,185,129,0.30)",
            }}
          >
            <Play className="w-2.5 h-2.5 text-white fill-white" />
            <span className="text-white text-[10.5px] font-black font-['Cairo']">
              تشغيل
            </span>
          </div>
        </div>
      </div>
    </motion.div>
  );
});

function ScraperPicker({
  cover,
  title,
  ep,
  totalEps,
  animeId,
  anime,
  slotStatus,
  slotSources,
  qualityStatus,
  onFetchSite,
  onPlaySrc,
  onBack,
  onNextEp,
  onPrevEp,
  singleSite,
  availabilityDone = false,
}: {
  cover: string;
  title: string;
  ep: number;
  totalEps: number;
  animeId: number;
  anime?: any;
  slotStatus: Record<string, SlotStatus>;
  slotSources: Record<string, FetchedSrc[]>;
  qualityStatus: Record<string, SlotStatus>;
  onFetchSite: (site: string, quality: Quality) => void;
  onPlaySrc: (src: FetchedSrc) => void;
  onBack: () => void;
  onNextEp: () => void;
  onPrevEp: () => void;
  /* عند التحديد — قسم "أحدث الحلقات" يقيّد التشغيل بمصدر واحد فقط، فلا نعرض زر أي مصدر آخر */
  singleSite?: string | null;
  availabilityDone?: boolean;
}) {
  const VISIBLE_DEFS = singleSite
    ? SCRAPER_DEFS.filter((d) => d.site === singleSite)
    : SCRAPER_DEFS;
  const [webQual, setWebQual] = useState<WebQualityKey>("1080p");
  /* anyFetching: true while at least one scraper is actively running
     hasIdleScrapers: true whenever any scraper is still untried (idle)
     allScrapersComplete: all scrapers done — none fetching, none idle
     allDone: scrapers not actively running (idle counts as "not started", not "running") */
  const anyFetching = VISIBLE_DEFS.some(
    (d) => slotStatus[d.site] === "fetching",
  );
  const hasIdleScrapers = VISIBLE_DEFS.some(
    (d) => slotStatus[d.site] === "idle",
  );
  const allScrapersComplete = !anyFetching && !hasIdleScrapers;
  const allDone = !anyFetching;

  /* Next-episode guard: use nextAiringEpisode when totalEps is unknown (999 fallback) */
  const nextAiringEp = anime?.nextAiringEpisode?.episode;
  const isNextDisabled =
    totalEps < 900
      ? ep >= totalEps
      : nextAiringEp
        ? ep >= nextAiringEp - 1
        : false;
  const isMovie = anime?.format === "MOVIE" || anime?.format === "MOVIE_SHORT";

  /* تجميع المصادر حسب (موقع + جودة) — صف واحد لكل مجموعة، السيرفرات تتنافس داخلياً */
  const { sourceGroups, embedFallbacks } = useMemo(() => {
    const groupMap = new Map<string, SourceGroup>();
    const seenUrls = new Set<string>();
    // Availability is authoritative: do not manufacture a row for a provider
    // before it returns a successful title/episode/quality check. Failed or
    // timed-out providers therefore stay hidden instead of appearing as idle.
    for (const srcs of Object.values(slotSources)) {
      for (const s of srcs) {
        if (!shouldShowSrc(s)) continue;
        const url = s.directUrl || s.url;
        // Availability placeholders intentionally have no playable URL yet.
        const groupKey = url || `check:${s.site}:${getSrcQualityTier(s)}`;
        if (seenUrls.has(groupKey)) continue;
        seenUrls.add(groupKey);
        const def = SCRAPER_DEFS.find((d) => d.site === s.site);
        if (!def) continue;
        const q = getSrcQualityTier(s);
        const key = `${s.site}::${q}`;
        if (!groupMap.has(key))
          groupMap.set(key, { site: s.site!, quality: q, srcs: [], def });
        groupMap.get(key)!.srcs.push(s);
      }
    }
    const groups = [...groupMap.values()].sort(
      (a, b) => QUALITY_TIER_RANK[b.quality] - QUALITY_TIER_RANK[a.quality],
    );
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
    return { sourceGroups: groups, embedFallbacks: embeds };
  }, [slotSources]);

  const groupsByQuality: Record<Quality, SourceGroup[]> = useMemo(
    () => ({
      "1080p FHD": sourceGroups.filter((g) => g.quality === "1080p FHD"),
      "720p HD": sourceGroups.filter((g) => g.quality === "720p HD"),
      "360p SD": sourceGroups.filter((g) => g.quality === "360p SD"),
    }),
    [sourceGroups],
  );

  const hasSources = sourceGroups.length > 0;
  const hasBackupSources = embedFallbacks.length > 0;

  /* ── grouped: Quality → FetchedSrc[] (flat individual sources per tier, for SourceRow) ──
     NOTE: these two variables (grouped, displaySources) were previously undefined → ReferenceError
     → black-screen crash every time the picker rendered with any sources. ── */
  const grouped: Record<Quality, FetchedSrc[]> = useMemo(
    () => ({
      "1080p FHD": groupsByQuality["1080p FHD"].flatMap((g) =>
        [...g.srcs].sort((a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0)),
      ),
      "720p HD": groupsByQuality["720p HD"].flatMap((g) =>
        [...g.srcs].sort((a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0)),
      ),
      "360p SD": groupsByQuality["360p SD"].flatMap((g) =>
        [...g.srcs].sort((a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0)),
      ),
    }),
    [groupsByQuality],
  );

  const displaySources = useMemo(
    () => (Object.values(grouped) as FetchedSrc[][]).flat(),
    [grouped],
  );

  function handlePlayGroup(group: SourceGroup) {
    const sorted = [...group.srcs].sort(
      (a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0),
    );
    onPlaySrc(sorted[0]);
  }

  /* ── Shared: extract anime metadata — memoised ── */
  const animeScore = anime?.averageScore ? anime.averageScore / 10 : 0;
  const animeStatus = anime?.status
    ? STATUS_MAP[anime.status]?.label || ""
    : "";
  const animeBanner =
    anime?.bannerImage || anime?.coverImage?.extraLarge || cover;

  /* ── Shared: hero section (compact header — no large banner) ── */
  const HeroSection = (
    <>
      {/* Compact top bar: back + episode nav */}
      <div
        className="flex items-center justify-between px-4 pb-2"
        style={{ paddingTop: "max(16px, env(safe-area-inset-top))" }}
      >
        <button
          onClick={onBack}
          className="w-10 h-10 bg-white/8 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 active:scale-90 transition-transform shrink-0"
        >
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        <div className="flex items-center gap-2">
          {!isMovie && (
            <button
              onClick={onPrevEp}
              disabled={ep <= 1}
              className="flex items-center gap-1 px-3 py-1.5 rounded-xl text-[11px] font-bold font-['Cairo'] active:scale-90 disabled:opacity-20 transition-all"
              style={{
                background: "rgba(0,0,0,0.45)",
                border: "1px solid rgba(255,255,255,0.14)",
                backdropFilter: "blur(10px)",
                color: "rgba(255,255,255,0.65)",
              }}
            >
              <ChevronRight className="w-3.5 h-3.5" />
              السابقة
            </button>
          )}
          {!isMovie && (
            <button
              onClick={onNextEp}
              disabled={isNextDisabled}
              className="flex items-center gap-1 px-3 py-1.5 rounded-xl text-[11px] font-bold font-['Cairo'] active:scale-90 disabled:opacity-20 transition-all"
              style={{
                background: "rgba(109,40,217,0.55)",
                border: "1px solid rgba(139,92,246,0.38)",
                backdropFilter: "blur(10px)",
                color: "rgba(196,181,253,0.92)",
              }}
            >
              التالية
              <ChevronLeft className="w-3.5 h-3.5" />
            </button>
          )}
        </div>
      </div>

      {/* Small poster + title row */}
      <div className="px-4 pt-1 flex gap-4 items-start">
        <div className="relative shrink-0">
          <div
            className="absolute inset-0 rounded-2xl blur-xl scale-95 translate-y-2 opacity-60"
            style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}
          />
          <div className="relative w-[72px] h-[102px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl shadow-black/80">
            {cover ? (
              <img
                src={cover}
                alt={title}
                className="w-full h-full object-cover"
              />
            ) : (
              <div className="w-full h-full bg-white/8 flex items-center justify-center">
                <Play className="w-6 h-6 text-white/20 fill-white/10" />
              </div>
            )}
          </div>
          {anime?.format && FORMAT_MAP[anime.format] && (
            <div className="absolute -bottom-2 left-1/2 -translate-x-1/2 bg-[#1C1C22] border border-white/12 text-white/60 text-[9px] font-black px-2 py-1 rounded-lg whitespace-nowrap font-['Cairo']">
              {FORMAT_MAP[anime.format]}
            </div>
          )}
        </div>
        <div className="flex-1 pb-3 min-w-0 space-y-1.5">
          <h1 className="text-[17px] font-black text-white leading-snug font-['Cairo'] line-clamp-2">
            {title}
          </h1>
          <p className="text-[10px] text-white/35 font-['Cairo']">
            {anime?.title?.native || anime?.title?.romaji || ""}
          </p>
          <div className="flex flex-wrap gap-1.5">
            <span
              className="px-2 py-1 rounded-lg text-[9px] font-black font-['Cairo']"
              style={{
                background: "rgba(139,92,246,0.18)",
                border: "1px solid rgba(139,92,246,0.32)",
                color: "rgba(196,181,253,0.92)",
              }}
            >
              الحلقة {ep}
            </span>
            {animeStatus && (
              <span
                className={`text-[9px] font-black px-2 py-1 rounded-lg border font-['Cairo'] ${STATUS_MAP[anime?.status]?.color || "text-white/50 bg-white/8 border-white/10"}`}
              >
                {animeStatus}
              </span>
            )}
          </div>
        </div>
      </div>

      {/* Score row */}
      {animeScore > 0 && (
        <div
          className="mx-4 mt-4 rounded-2xl px-4 py-2.5 flex items-center gap-3"
          style={{
            background: "rgba(251,191,36,0.06)",
            border: "1px solid rgba(251,191,36,0.16)",
          }}
        >
          <div className="flex items-center gap-0.5">
            {[1, 2, 3, 4, 5].map((i) => (
              <Star
                key={i}
                className={`w-3.5 h-3.5 ${animeScore / 2 >= i ? "text-amber-400 fill-amber-400" : "text-white/15"}`}
              />
            ))}
          </div>
          <span className="text-amber-300 text-[15px] font-black">
            {animeScore.toFixed(1)}
          </span>
          <span className="text-white/30 text-[10px] font-['Cairo']">/ 10</span>
          {anime?.popularity > 0 && (
            <span className="mr-auto text-white/25 text-[9px] font-['Cairo']">
              {anime.popularity.toLocaleString()} مستخدم
            </span>
          )}
        </div>
      )}
    </>
  );

  /* كشط كسول: شاشة التحميل مزالة — سبينر على الزر فقط */
  if (
    false &&
    (anyFetching || hasIdleScrapers) &&
    !hasSources &&
    !hasBackupSources
  ) {
    return (
      <div className="fixed inset-0 bg-[#07070d] overflow-hidden" dir="rtl">
        {/* Blurred poster background */}
        {cover && (
          <div className="absolute inset-0">
            <img
              src={cover}
              alt=""
              className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.15] saturate-150"
            />
            <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/85 via-[#07070d]/50 to-[#07070d]/92" />
          </div>
        )}

        {/* Back button */}
        <button
          onClick={onBack}
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
          style={{
            background: "rgba(0,0,0,0.45)",
            border: "1px solid rgba(255,255,255,0.12)",
            backdropFilter: "blur(12px)",
            marginTop: "max(0px, env(safe-area-inset-top))",
          }}
        >
          <ChevronRight className="w-5 h-5 text-white/60" />
        </button>

        {/* Centered content */}
        <div className="relative h-full flex flex-col items-center justify-center gap-4 px-6">
          {/* Prayer */}
          <motion.p
            initial={{ opacity: 0, y: -8 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.05, duration: 0.4 }}
            className="text-white/85 text-[13px] font-black font-['Cairo'] tracking-wide text-center"
          >
            اللهم صلِّ وسلِّم على نبينا محمد ﷺ
          </motion.p>

          {/* Poster */}
          {cover ? (
            <motion.div
              initial={{ opacity: 0, scale: 0.88, y: 24 }}
              animate={{ opacity: 1, scale: 1, y: 0 }}
              transition={{ duration: 0.24, ease: [0.22, 1, 0.36, 1] }}
              className="relative shrink-0"
            >
              <div
                className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{
                  background:
                    "radial-gradient(ellipse, rgba(139,92,246,0.22) 0%, transparent 68%)",
                }}
              />
              <img
                src={cover}
                alt={title}
                className="rounded-2xl object-cover"
                style={{
                  width: "clamp(130px, 40vw, 176px)",
                  height: "clamp(184px, 57vw, 248px)",
                  boxShadow:
                    "0 28px 72px rgba(0,0,0,0.88), 0 0 0 1px rgba(255,255,255,0.08)",
                }}
              />
            </motion.div>
          ) : (
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              className="rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{
                width: "clamp(130px, 40vw, 176px)",
                height: "clamp(184px, 57vw, 248px)",
                boxShadow: "0 0 0 1px rgba(255,255,255,0.06)",
              }}
            >
              <div className="w-16 h-16 rounded-full bg-violet-500/15 flex items-center justify-center">
                <div className="w-7 h-7 rounded-full bg-violet-500/35" />
              </div>
            </motion.div>
          )}

          {/* Title + episode */}
          <motion.div
            initial={{ opacity: 0, y: 14 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.1, duration: 0.22 }}
            className="text-center"
          >
            {title && (
              <h2
                className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
                style={{ textShadow: "0 2px 14px rgba(0,0,0,0.75)" }}
              >
                {title}
              </h2>
            )}
            <span
              className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-[12px] font-bold font-['Cairo']"
              style={{
                background: "rgba(124,58,237,0.22)",
                border: "1px solid rgba(139,92,246,0.30)",
                color: "rgba(196,181,253,0.9)",
              }}
            >
              الحلقة {ep}
            </span>
          </motion.div>

          {/* Spinner + text */}
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.28 }}
            className="flex flex-col items-center gap-3"
          >
            <div className="relative w-9 h-9">
              <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
              <motion.div
                className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
                animate={{ rotate: 360 }}
                transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }}
              />
            </div>
            <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">
              سوكونا يقاتل غوجو بجهد من اجل السيرفرات
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
      <div
        className="flex-1 overflow-y-auto relative"
        style={{ scrollbarWidth: "none" }}
      >
        {HeroSection}

        {!availabilityDone && (
          <div
            className="mx-4 mt-5 mb-6 min-h-[330px] flex flex-col items-center justify-center px-5 py-8 rounded-3xl text-center"
            style={{
              background: "rgba(255,255,255,0.025)",
              border: "1px solid rgba(255,255,255,0.07)",
              boxShadow: "0 18px 60px rgba(0,0,0,0.28)",
            }}
          >
            <div
              className="relative w-full max-w-[330px] aspect-video rounded-3xl overflow-hidden mb-5"
              style={{ background: "rgba(255,255,255,0.025)" }}
            >
              <img
                src="https://gifdb.com/images/branded/high/satoru-gojo-vs-ryomen-sukuna-gif-tt4cnmnevgpxt99u.gif"
                alt=""
                aria-hidden="true"
                className="absolute inset-0 w-full h-full object-cover"
                loading="eager"
                decoding="async"
              />
              <div className="absolute inset-0 bg-gradient-to-t from-[#07070d]/80 via-transparent to-transparent pointer-events-none" />
            </div>
            <motion.div
              className="w-7 h-7 rounded-full border-2 border-white/10 border-t-violet-400/80 mb-4"
              animate={{ rotate: 360 }}
              transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }}
            />
            <p className="text-white/85 text-[15px] font-black font-['Cairo'] leading-relaxed">
              سوكونا يقاتل غوجو بجهد من اجل السيرفرات
            </p>
            <p className="text-white/30 text-[11px] font-['Cairo'] mt-2">
              يتم فحص جميع السيرفرات… ستظهر دفعة واحدة عند الجاهزية
            </p>
          </div>
        )}

        {/* ── Static picker: جودات مكدّسة + صفوف (تصميم Aniyomi) ── */}
        <div className={`${availabilityDone ? "" : "hidden"} px-4 mt-4 mb-3`}>
          {WEB_Q_KEYS.map((qk) => {
            const tierQ = PICKER_QMAP[qk];
            /* بعد انتهاء الاستعلام لا نعرض إلا الصفوف التي أعاد لها الباكند
               مصدرًا صالحًا. هذا يمنع ظهور السيرفرات التي فشل استعلامها. */
            const availableSlots = VISIBLE_DEFS.filter((def) =>
              (slotSources[def.site] || []).some(
                (src) =>
                  shouldShowSrc(src) && getSrcQualityTier(src) === tierQ,
              ),
            );
            if (availabilityDone && availableSlots.length === 0) return null;
            const visibleSlots = availabilityDone ? availableSlots : VISIBLE_DEFS;
            /* ألوان لكل جودة */
            const qColor =
              qk === "1080p"
                ? {
                    badge: "rgba(251,191,36,0.14)",
                    border: "rgba(251,191,36,0.32)",
                    text: "rgba(253,224,71,0.95)",
                    dot: "#fbbf24",
                  }
                : qk === "720p"
                  ? {
                      badge: "rgba(52,211,153,0.12)",
                      border: "rgba(52,211,153,0.28)",
                      text: "rgba(110,231,183,0.92)",
                      dot: "#34d399",
                    }
                  : {
                      badge: "rgba(147,197,253,0.10)",
                      border: "rgba(147,197,253,0.24)",
                      text: "rgba(147,197,253,0.88)",
                      dot: "#93c5fd",
                    };
            return (
              <div key={qk} style={{ marginBottom: 20 }}>
                {/* Quality header — colored badge */}
                <div
                  style={{
                    display: "flex",
                    alignItems: "center",
                    gap: 8,
                    marginBottom: 10,
                  }}
                >
                  <div
                    style={{
                      flex: 1,
                      height: 1,
                      background: "rgba(255,255,255,0.06)",
                    }}
                  />
                  <div
                    style={{
                      display: "flex",
                      alignItems: "center",
                      gap: 6,
                      padding: "3px 10px",
                      borderRadius: 20,
                      background: qColor.badge,
                      border: `1px solid ${qColor.border}`,
                    }}
                  >
                    <div
                      style={{
                        width: 6,
                        height: 6,
                        borderRadius: "50%",
                        background: qColor.dot,
                        flexShrink: 0,
                      }}
                    />
                    <span
                      style={{
                        fontSize: 11,
                        fontWeight: 900,
                        letterSpacing: "0.09em",
                        color: qColor.text,
                        fontFamily: "monospace",
                      }}
                    >
                      {qk.toUpperCase()}
                    </span>
                  </div>
                  <div
                    style={{
                      flex: 1,
                      height: 1,
                      background: "rgba(255,255,255,0.06)",
                    }}
                  />
                </div>
                {/* Source rows */}
                <div
                  style={{ display: "flex", flexDirection: "column", gap: 7 }}
                >
                  {visibleSlots.map((def) => ({
                    site: def.site,
                    tag: def.tag,
                    serverLabel: def.serverLabel,
                  })).map((slot) => {
                    const globalStatus = slotStatus[slot.site] || "idle";
                    const qualityKey = `${slot.site}::${tierQ}`;
                    const rowStatus = qualityStatus[qualityKey] || "idle";
                    const allSrcs = (slotSources[slot.site] || []).filter(
                      shouldShowSrc,
                    );
                    /* فلترة المصادر بجودة هذا الصف — إن لم توجد نرجع null */
                    const tierSrcs = allSrcs.filter(
                      (s) => getSrcQualityTier(s) === tierQ,
                    );
                    const bestSrc = tierSrcs.length
                      ? [...tierSrcs].sort(
                          (a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0),
                        )[0]
                      : null;
                    const isFetching = rowStatus === "fetching";
                    const isReady = rowStatus === "ready" && !!bestSrc;
                    const hasPlayable = !!(bestSrc?.directUrl || bestSrc?.url);
                    const isFailed = rowStatus === "failed";
                    const defInfo = SCRAPER_DEFS.find(
                      (d) => d.site === slot.site,
                    );
                    return (
                      <button
                        key={`${qk}-${slot.site}`}
                        onClick={() => {
                          if (isReady && bestSrc && hasPlayable)
                            onPlaySrc(bestSrc);
                          else if (!isFetching) onFetchSite(slot.site, tierQ);
                        }}
                        style={{
                          display: "flex",
                          alignItems: "center",
                          gap: 11,
                          width: "100%",
                          padding: "12px 14px",
                          borderRadius: 16,
                          background: isReady
                            ? "rgba(34,197,94,0.07)"
                            : isFailed
                              ? "rgba(239,68,68,0.04)"
                              : isFetching
                                ? "rgba(139,92,246,0.08)"
                                : "rgba(255,255,255,0.03)",
                          border: `1px solid ${isReady ? "rgba(34,197,94,0.22)" : isFailed ? "rgba(239,68,68,0.14)" : isFetching ? "rgba(139,92,246,0.24)" : "rgba(255,255,255,0.07)"}`,
                          cursor: isFetching ? "default" : "pointer",
                          textAlign: "right",
                          transition: "background 0.2s, border-color 0.2s",
                        }}
                      >
                        {/* Status dot / spinner */}
                        {isFetching ? (
                          <motion.div
                            style={{
                              width: 9,
                              height: 9,
                              borderRadius: "50%",
                              border: "2px solid transparent",
                              borderTopColor: "#8B5CF6",
                              borderRightColor: "rgba(139,92,246,0.30)",
                              flexShrink: 0,
                            }}
                            animate={{ rotate: 360 }}
                            transition={{
                              duration: 0.85,
                              repeat: Infinity,
                              ease: "linear",
                            }}
                          />
                        ) : (
                          <div
                            style={{
                              width: 9,
                              height: 9,
                              borderRadius: "50%",
                              flexShrink: 0,
                              background: isReady
                                ? "#22c55e"
                                : isFailed
                                  ? "rgba(239,68,68,0.40)"
                                  : "rgba(255,255,255,0.16)",
                              boxShadow: isReady
                                ? "0 0 6px rgba(34,197,94,0.55)"
                                : "none",
                            }}
                          />
                        )}
                        {/* Source name: "السيرفر KW" */}
                        <span
                          style={{
                            flex: 1,
                            fontSize: 13,
                            fontWeight: 800,
                            fontFamily: "'Cairo', sans-serif",
                            color: isReady
                              ? "rgba(255,255,255,0.90)"
                              : isFailed
                                ? "rgba(255,255,255,0.28)"
                                : "rgba(255,255,255,0.65)",
                            textAlign: "right",
                            direction: "rtl",
                            overflow: "hidden",
                            textOverflow: "ellipsis",
                            whiteSpace: "nowrap",
                          }}
                        >
                          السيرفر{" "}
                          <span
                            style={{
                              fontFamily: "monospace",
                              direction: "ltr",
                              display: "inline-block",
                            }}
                          >
                            {slot.tag}
                            {slot.serverLabel ? ` · ${slot.serverLabel}` : ""}
                          </span>
                        </span>
                        {/* Action button */}
                        {isReady ? (
                          <div
                            style={{
                              display: "flex",
                              alignItems: "center",
                              gap: 4,
                              padding: "5px 12px",
                              borderRadius: 10,
                              background:
                                "linear-gradient(135deg,rgba(16,185,129,0.92),rgba(5,150,105,0.97))",
                              border: "1px solid rgba(52,211,153,0.35)",
                              flexShrink: 0,
                              boxShadow: "0 2px 8px rgba(16,185,129,0.28)",
                            }}
                          >
                            <Play className="w-3 h-3 text-white fill-white" />
                            <span
                              style={{
                                fontSize: 11,
                                fontWeight: 900,
                                color: "white",
                                fontFamily: "'Cairo', sans-serif",
                              }}
                            >
                              {hasPlayable ? "تشغيل" : "متاح"}
                            </span>
                          </div>
                        ) : isFetching ? (
                          <div
                            style={{
                              flexShrink: 0,
                              width: 8,
                              height: 8,
                              borderRadius: "50%",
                              border: "2px solid transparent",
                              borderTopColor: "#8B5CF6",
                              borderRightColor: "rgba(139,92,246,0.30)",
                            }}
                          />
                        ) : (
                          <div
                            style={{
                              display: "flex",
                              alignItems: "center",
                              gap: 4,
                              padding: "5px 12px",
                              borderRadius: 10,
                              background: "rgba(139,92,246,0.15)",
                              border: "1px solid rgba(139,92,246,0.30)",
                              flexShrink: 0,
                              cursor: "pointer",
                            }}
                          >
                            <span
                              style={{
                                fontSize: 11,
                                fontWeight: 900,
                                color: "rgba(196,181,253,0.90)",
                                fontFamily: "'Cairo', sans-serif",
                              }}
                            >
                              اختيار
                            </span>
                          </div>
                        )}
                      </button>
                    );
                  })}
                </div>
              </div>
            );
          })}
        </div>

      </div>
    </div>
  );
}

/* ══════════════════════════════════ MEGA EMBED PLAYER ══════ */
function MegaEmbedPlayer({
  src,
  ep,
  totalEps,
  title,
  onBack,
  onNextEp,
  onPrevEp,
}: {
  src: string;
  ep: number;
  totalEps: number;
  title: string;
  onBack: () => void;
  onNextEp: () => void;
  onPrevEp: () => void;
}) {
  const [isFs, setIsFs] = useState(false);
  const [showBar, setShowBar] = useState(true);
  const containerRef = useRef<HTMLDivElement>(null);
  const hideTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);

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
    return () => {
      if (hideTimerRef.current) clearTimeout(hideTimerRef.current);
    };
  }, [scheduleHide]);

  useEffect(() => {
    const fn = () => {
      const inFs = !!document.fullscreenElement;
      setIsFs(inFs);
      if (!inFs) {
        try {
          (screen.orientation as any).unlock?.();
        } catch {}
      }
    };
    document.addEventListener("fullscreenchange", fn);
    const timer = setTimeout(() => {
      const el = containerRef.current;
      if (el && !document.fullscreenElement) {
        el.requestFullscreen?.()
          .then(() => {
            try {
              (screen.orientation as any).lock?.("landscape").catch(() => {});
            } catch {}
          })
          .catch(() => {});
      }
    }, 150);
    return () => {
      document.removeEventListener("fullscreenchange", fn);
      clearTimeout(timer);
      try {
        (screen.orientation as any).unlock?.();
      } catch {}
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
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
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
        sandbox="allow-scripts allow-same-origin allow-forms allow-presentation allow-popups allow-downloads"
        allow="fullscreen; autoplay; picture-in-picture"
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
          style={{
            background:
              "linear-gradient(180deg, rgba(0,0,0,0.80) 0%, transparent 100%)",
          }}
        >
          <button
            onClick={(e) => {
              e.stopPropagation();
              onBack();
            }}
            className="w-9 h-9 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-all shrink-0"
            style={{ border: "1px solid rgba(255,255,255,0.1)" }}
          >
            <ChevronRight className="w-5 h-5 text-white/80" />
          </button>
          <div className="flex-1 min-w-0">
            <p className="text-white/85 text-[13px] font-bold font-['Cairo'] truncate">
              {title}
            </p>
            <span className="text-white/35 text-[11px] font-['Cairo']">
              الحلقة {ep}
            </span>
          </div>
          <button
            onClick={(e) => {
              e.stopPropagation();
              toggleFs();
            }}
            className="w-9 h-9 rounded-xl bg-white/10 flex items-center justify-center active:scale-90 transition-all shrink-0"
            style={{ border: "1px solid rgba(255,255,255,0.1)" }}
          >
            {isFs ? (
              <Minimize2 className="w-4 h-4 text-white/70" />
            ) : (
              <Maximize2 className="w-4 h-4 text-white/70" />
            )}
          </button>
        </div>
      </div>
    </motion.div>
  );
}

/* ══════════════════════════════════ EPISODE PLAYER ═════════ */
function EpisodePlayer({
  servers,
  quality,
  allServers,
  title,
  epTitle,
  cover,
  ep,
  totalEps,
  animeTitle,
  animeId,
  userId,
  initialServer,
  downloadUrl,
  subtitleUrl,
  subtitleSite,
  skipTimes,
  hideSubtitle,
  kawaiiSubUrl,
  isMovie,
  onBack,
  onNextEp,
  onPrevEp,
  onEpisodeSelect,
  onChangeQuality,
  onTierExhausted,
}: {
  servers: string[];
  quality: Quality;
  allServers: Record<Quality, string[]>;
  title: string;
  epTitle?: string;
  cover: string;
  ep: number;
  totalEps: number;
  animeTitle: string;
  animeId: number;
  userId?: string | null;
  initialServer?: number;
  downloadUrl?: string;
  subtitleUrl?: string;
  subtitleSite?: string;
  skipTimes?: SkipTimes;
  hideSubtitle?: boolean;
  kawaiiSubUrl?: string;
  isMovie?: boolean;
  onBack: () => void;
  onNextEp: () => void;
  onPrevEp: () => void;
  onEpisodeSelect?: (ep: number) => void;
  onChangeQuality: (q: Quality) => void;
  onTierExhausted?: () => void;
}) {
  const [currentServer, setCurrentServer] = useState(initialServer ?? 0);
  const [showQuality, setShowQuality] = useState(false);
  const [realQuality, setRealQuality] = useState<string | null>(null);
  const [hlsTime, setHlsTime] = useState(0);
  const isFirstQualityMount = useRef(true);

  /* ── Watch progress: save/resume ── */
  const progressKey = `wp-${animeId}-${ep}`;
  const [resumeTime] = useState(() => {
    try {
      return parseFloat(localStorage.getItem(progressKey) || "0") || 0;
    } catch {
      return 0;
    }
  });
  const lastSaveTs = useRef(0);
  const lastTimeRef = useRef(0);

  /* Save helper — persists when time > 10s */
  const saveProgress = useCallback(() => {
    const t = lastTimeRef.current;
    if (t > 10) {
      try {
        localStorage.setItem(progressKey, String(Math.floor(t)));
      } catch {}
      saveProgressServer(userId ?? null, animeId, ep, t, 0, "anime");
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progressKey, userId, animeId, ep]);

  /* Save on: unmount, tab hidden, page unload */
  useEffect(() => {
    const onUnload = () => saveProgress();
    const onVisChange = () => {
      if (document.hidden) saveProgress();
    };
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
      document
        .querySelectorAll<HTMLVideoElement>("video, audio")
        .forEach((v) => {
          try {
            v.pause();
            v.src = "";
            v.load();
          } catch {}
        });
    };
  }, []);

  /* ── Orientation tracking for subtitle panel ── */
  useEffect(() => {
    const onResize = () =>
      setIsLandscape(window.innerWidth > window.innerHeight);
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
  const q2 = allServers["720p HD"] || [];
  const q3 = allServers["360p SD"] || [];
  const allQualityIdentical =
    q1.length > 0 &&
    q1.length === q2.length &&
    q1.length === q3.length &&
    q1.every((u, i) => u === q2[i] && u === q3[i]);

  /* ── Subtitle state ── */
  const [subState, setSubState] = useState<
    "idle" | "loading" | "ready" | "none"
  >("idle");
  const [subCues, setSubCues] = useState<SubCue[]>([]);
  const [subLang, setSubLang] = useState<string | null>(null);
  const [subOffset, setSubOffset] = useState(0);
  const [showOffsetControls, setShowOffsetControls] = useState(false);
  const [showSubPanel, setShowSubPanel] = useState(false);
  const [expandedSection, setExpandedSection] = useState<string | null>(null);
  const [subSettings, setSubSettings] = useState<SubSettings>(loadSubSettings);
  /* ── Whisper audio transcription state ── */
  const [whisperStatus, setWhisperStatus] = useState<
    "idle" | "loading" | "ready" | "error"
  >("idle");
  const [whisperLang, setWhisperLang] = useState<string>("");
  const [isLandscape, setIsLandscape] = useState(
    () =>
      typeof window !== "undefined" && window.innerWidth > window.innerHeight,
  );
  /* ── Multi-track subtitle system ── */
  const [subTracks, setSubTracks] = useState<SubTrack[]>([]);
  const [subChoice, setSubChoice] = useState<SubChoice>("off");
  const [subStatus, setSubStatus] = useState<
    "off" | "discovering" | "loading" | "translating" | "ready" | "failed"
  >("off");
  const [ttsDub, setTtsDub] = useState(false);
  const subAbortRef = useRef<AbortController | null>(null);
  const ttsLastCueRef = useRef("");

  /* ── Persist subtitle settings to localStorage whenever they change ── */
  useEffect(() => {
    try {
      localStorage.setItem("sub-settings-v1", JSON.stringify(subSettings));
    } catch {}
  }, [subSettings]);

  const currentUrl = servers[currentServer] || "";

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
  const handleHlsTime = useCallback(
    (t: number) => {
      setHlsTime(t);
      lastTimeRef.current = t;
      /* Fallback: also save every 30s in case beforeunload doesn't fire (mobile) */
      const now = Date.now();
      if (t > 60 && now - lastSaveTs.current > 30000) {
        lastSaveTs.current = now;
        try {
          localStorage.setItem(progressKey, String(Math.floor(t)));
        } catch {}
        saveProgressServer(userId ?? null, animeId, ep, t, 0, "anime");
      }
      // eslint-disable-next-line react-hooks/exhaustive-deps
    },
    [progressKey, userId, animeId, ep],
  );

  /* ── Reset on quality tier change only ── */
  useEffect(() => {
    if (isFirstQualityMount.current) {
      isFirstQualityMount.current = false;
      return;
    }
    setCurrentServer(0);
    setRealQuality(null);
  }, [quality]);

  /* ── Helper: parse timestamp string to seconds ── */
  function toSec(ts: string): number {
    const m = ts.trim().match(/^(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
    if (m)
      return (
        +m[1] * 3600 + +m[2] * 60 + +m[3] + parseInt(m[4].padEnd(3, "0")) / 1000
      );
    const m2 = ts.trim().match(/^(\d+):(\d{2})[,.](\d{1,3})/);
    if (m2) return +m2[1] * 60 + +m2[2] + parseInt(m2[3].padEnd(3, "0")) / 1000;
    return 0;
  }

  /* ── loadTrack: fetch one subtitle track and fill subCues ── */
  const loadTrack = useCallback(
    async (
      track: SubTrack,
      mode: "direct" | "translate",
      signal?: AbortSignal,
    ): Promise<boolean> => {
      const isTranslateUrl = track.url.startsWith("/api/anime/translate-vtt");
      if (mode === "translate" || isTranslateUrl) {
        // مفتاح موحّد: نفس الحلقة = نفس الكاش حتى لو تغيّر السيرفر
        const normKey = animeId ? `sub-ar-${animeId}-ep${ep}` : track.url;
        const urlKey = track.url;
        // ✅ فحص كاش الكلايت أولاً — فوري بدون تأخير
        const cached = getCachedCues(normKey) ?? getCachedCues(urlKey);
        if (cached) {
          setSubCues(cached);
          setSubLang("ara");
          setSubState("ready");
          setSubStatus("ready");
          return true;
        }
        setSubCues([]);
        setSubStatus("translating");

        // ترجمة عربية متدفقة فقط. لا نعرض الإنجليزية أثناء الانتظار؛ ذلك
        // كان يجعل المستخدم يرى الإنجليزية حتى بعد وصول الترجمة أو عند تبديل المصدر.
        let arDone = false;

        // 🌊 ترجمة عربية متدفقة — أول دفعة تظهر عند اكتمال أول chunk
        const vttUrl = isTranslateUrl
          ? track.url
          : `/api/anime/translate-vtt?url=${encodeURIComponent(track.url)}&from=en&to=ar`;
        return new Promise<boolean>((resolve) => {
          let allCues: SubCue[] = [];
          _streamVttTranslation(
            vttUrl,
            {
              onChunk: (incoming, isFirst) => {
                if (signal?.aborted) {
                  resolve(false);
                  return;
                }
                arDone = true;
                allCues = _mergeSubCues(allCues, incoming);
                setSubCues(allCues);
                if (isFirst) {
                  setSubLang("ara");
                  setSubState("ready");
                  setSubStatus("translating");
                  setCachedCues(normKey, allCues);
                }
              },
              onDone: () => {
                if (allCues.length > 0) {
                  setCachedCues(normKey, allCues);
                  setCachedCues(urlKey, allCues);
                  setSubLang("ara");
                  setSubState("ready");
                  setSubStatus("ready");
                  resolve(true);
                } else {
                  setSubStatus("failed");
                  resolve(false);
                }
              },
              onError: () => {
                setSubStatus("failed");
                resolve(false);
              },
            },
            signal,
          );
        });
      } else {
        setSubCues([]);
        setSubStatus("loading");
        try {
          const r = await fetch(
            `${API_BASE}/api/anime/proxy-text?url=${encodeURIComponent(track.url)}`,
            {
              signal: signal ?? AbortSignal.timeout(12_000),
            },
          );
          if (!r.ok) {
            setSubStatus("failed");
            return false;
          }
          const cues = parseSrt(await r.text());
          if (!cues.length || (signal && signal.aborted)) {
            setSubStatus("failed");
            return false;
          }
          setSubCues(cues);
          setSubLang(track.lang === "ar" ? "ara" : "eng");
          setSubState("ready");
          setSubStatus("ready");
          return true;
        } catch {
          setSubStatus("failed");
          return false;
        }
      }
    },
    [],
  );

  /* ── changeSubChoice: user picks a language track ── */
  const changeSubChoice = useCallback(
    async (choice: SubChoice) => {
      setSubChoice(choice);
      // حفظ تفضيل المستخدم لكل مزوّد: "off" عند الإيقاف، "on" عند التفعيل
      if (subtitleSite && PROVIDER_WANTS_SMART_SUB.has(subtitleSite)) {
        try {
          localStorage.setItem(
            `smartsub-pref-${subtitleSite}`,
            choice === "off" ? "off" : "on",
          );
        } catch {}
      }
      if (choice === "off") {
        subAbortRef.current?.abort();
        setSubCues([]);
        setSubLang(null);
        setSubState("idle");
        setSubStatus("off");
        return;
      }
      const arTrack = subTracks.find((t) => t.lang === "ar");
      const arAutoTrk = subTracks.find((t) => t.lang === "ar-auto");
      const enTrack = subTracks.find((t) => t.lang === "en");
      subAbortRef.current?.abort();
      const ctrl = new AbortController();
      subAbortRef.current = ctrl;
      if (choice === "ar" && arTrack) {
        await loadTrack(arTrack, "direct", ctrl.signal);
      } else if (choice === "ar-auto") {
        const trk = arAutoTrk ?? enTrack;
        if (trk)
          await loadTrack(trk, arAutoTrk ? "direct" : "translate", ctrl.signal);
        else setSubStatus("failed");
      } else if (choice === "en" && enTrack) {
        await loadTrack(enTrack, "direct", ctrl.signal);
      } else {
        setSubStatus("failed");
      }
      // eslint-disable-next-line react-hooks/exhaustive-deps
    },
    [subTracks, loadTrack],
  );

  /* ── toggleSubSilent: CC button simple on/off without panel ── */
  function toggleSubSilent() {
    if (subChoice !== "off" && subStatus !== "off") {
      changeSubChoice("off");
      return;
    }
    fetchSubtitles();
  }

  /* ── fetchSubtitles: loads subtitle tracks silently ── */
  async function fetchSubtitles() {
    /* If already have tracks — auto-pick best silently */
    if (subTracks.length > 0 || subStatus === "discovering") {
      if (subTracks.length > 0) {
        const best: SubChoice = subTracks.find((t) => t.lang === "ar")
          ? "ar"
          : subTracks.some((t) => t.lang === "en" || t.lang === "ar-auto")
            ? "ar-auto"
            : "ar-auto";
        changeSubChoice(best);
      }
      return;
    }

    subAbortRef.current?.abort();
    const ctrl = new AbortController();
    subAbortRef.current = ctrl;

    /* If the source already provides a subtitleUrl (kawaii/anikoto) — use it directly */
    if (subtitleUrl && subState !== "ready") {
      // ✅ كاش الكلايت: تحقق أولاً — إذا موجود يعمل فوراً
      const cachedHit = getCachedCues(subtitleUrl);
      if (cachedHit) {
        setSubCues(cachedHit);
        setSubLang("ara");
        setSubState("ready");
        setSubStatus("ready");
        return;
      }
      setSubStatus("translating");
      setSubState("loading");
      setSubCues([]);
      // لا نعرض النص الإنجليزي كبديل مؤقت؛ انتظر العربية حتى لا تبقى
      // واجهة المشاهدة على لغة خاطئة عند تبديل السيرفرات.
      let arStreamDone = false;
      // 🌊 ترجمة عربية متدفقة — أول دفعة تظهر عند اكتمال أول chunk
      const translateUrl = subtitleUrl.startsWith("/api/anime/translate-vtt")
        ? subtitleUrl
        : `/api/anime/translate-vtt?url=${encodeURIComponent(subtitleUrl)}&from=en&to=ar`;
      try {
        await new Promise<void>((resolve) => {
          let allCues: SubCue[] = [];
          _streamVttTranslation(
            translateUrl,
            {
              onChunk: (incoming, isFirst) => {
                if (ctrl.signal.aborted) {
                  resolve();
                  return;
                }
                arStreamDone = true;
                allCues = _mergeSubCues(allCues, incoming);
                setSubCues(allCues);
                if (isFirst) {
                  setSubLang("ara");
                  setSubState("ready");
                  setSubStatus("translating");
                  setCachedCues(subtitleUrl, allCues);
                }
              },
              onDone: () => {
                if (allCues.length > 0) {
                  setCachedCues(subtitleUrl, allCues);
                  setSubLang("ara");
                  setSubState("ready");
                  setSubStatus("ready");
                }
                resolve();
              },
              onError: () => resolve(),
            },
            ctrl.signal,
          );
        });
        if (arStreamDone) return; // نجحت الترجمة المتدفقة
      } catch {
        /* fall through to API discovery */
      }
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
      const r = await fetch(`${API_BASE}/api/anime/subtitle-tracks?${params}`, {
        signal: AbortSignal.timeout(20_000),
      });
      if (!r.ok || ctrl.signal.aborted) {
        setSubStatus("failed");
        return;
      }
      const d = (await r.json()) as { tracks?: SubTrack[] };
      const tracks = d.tracks || [];
      setSubTracks(tracks);
      if (!tracks.length) {
        setSubStatus("failed");
        return;
      }

      const arTrk = tracks.find((t) => t.lang === "ar");
      const arAuto = tracks.find((t) => t.lang === "ar-auto");
      const enTrk = tracks.find((t) => t.lang === "en");

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
    setSubOffset((o) => o + delta);
  }

  /* ── Reset subState to idle when subtitleUrl changes (e.g. switching to kawaii source) ── */
  useEffect(() => {
    // فحص الكاش أولاً — إذا موجود نُطبّقه فوراً بدون reset
    if (subtitleUrl) {
      const cached = getCachedCues(subtitleUrl);
      if (cached) {
        setSubCues(cached);
        setSubLang("ara");
        setSubState("ready");
        setSubStatus("ready");
        return;
      }
    }
    // Auto-sync: reset offset to 0 on every new subtitle source so X-TIMESTAMP-MAP takes over
    setSubOffset(0);
    setSubState("idle");
    setSubCues([]);
    setSubLang(null);
  }, [subtitleUrl]);

  /* ── Reset subtitle state when switching to Arabic source (built-in audio — no external sub) ── */
  useEffect(() => {
    if (!hideSubtitle) return;
    subAbortRef.current?.abort();
    setSubCues([]);
    setSubLang(null);
    setSubState("idle");
    setSubStatus("off");
    setSubChoice("off");
    setSubTracks([]);
  }, [hideSubtitle]);

  /* ── Auto-enable smart subtitle for Japanese providers (PROVIDER_WANTS_SMART_SUB) ──
     يتم التفعيل تلقائياً عند تحميل مصدر ياباني إذا لم يُعطِّله المستخدم مسبقاً.
     المصادر التي تُرسل subtitleUrl جاهزاً (kawaii/anikoto/videasy/vidlink/vyla)
     يتم التعامل معها تلقائياً بواسطة تأثير subtitleUrl — لا تحتاج لهذا التأثير. */
  useEffect(() => {
    if (!subtitleSite || !PROVIDER_WANTS_SMART_SUB.has(subtitleSite)) return;
    if (hideSubtitle) return;
    if (subtitleUrl) return; // يتعامل معها تأثير subtitleUrl
    if (subTracks.length > 0 || subStatus === "discovering") return;
    const pref = (() => {
      try {
        return localStorage.getItem(`smartsub-pref-${subtitleSite}`);
      } catch {
        return null;
      }
    })();
    if (pref === "off") return; // المستخدم أوقفها لهذا المزوّد

    let cancelled = false;
    const ctrl = new AbortController();
    subAbortRef.current?.abort();
    subAbortRef.current = ctrl;
    setSubStatus("discovering");

    const params = new URLSearchParams({
      anilistId: String(animeId || 0),
      ep: String(ep),
      title: animeTitle,
      english: animeTitle,
    });
    fetch(`${API_BASE}/api/anime/subtitle-tracks?${params}`, {
      signal: ctrl.signal,
    })
      .then((r) => (r.ok ? r.json() : Promise.reject()))
      .then(async (d: { tracks?: SubTrack[] }) => {
        if (cancelled) return;
        const tracks: SubTrack[] = d.tracks || [];
        setSubTracks(tracks);
        if (!tracks.length) {
          // AK/GO/AN may have no subtitle-tracks row even though Kawaii has
          // a usable Arabic/translated track for the same AniList episode.
          if (kawaiiSubUrl) {
            const fallback: SubTrack = {
              id: "kawaii-fallback",
              lang: "ar-auto",
              label: "عربي · Kawaii",
              url: kawaiiSubUrl,
            };
            setSubTracks([fallback]);
            setSubChoice("ar-auto");
            await loadTrack(fallback, "direct", ctrl.signal);
          } else {
            setSubStatus("failed");
          }
          return;
        }
        const arTrk = tracks.find((t) => t.lang === "ar");
        const arAuto = tracks.find((t) => t.lang === "ar-auto");
        const enTrk = tracks.find((t) => t.lang === "en");
        if (arTrk) {
          setSubChoice("ar");
          await loadTrack(arTrk, "direct", ctrl.signal);
        } else if (arAuto || enTrk) {
          setSubChoice("ar-auto");
          const trk = arAuto ?? enTrk!;
          await loadTrack(trk, arAuto ? "direct" : "translate", ctrl.signal);
        } else {
          setSubStatus("failed");
        }
      })
      .catch(() => {
        if (!cancelled) setSubStatus("failed");
      });
    return () => {
      cancelled = true;
      ctrl.abort();
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [subtitleSite, ep, kawaiiSubUrl]);

  /* ── Re-apply subtitle choice when server URL changes ── */
  const prevUrlForSubRef = useRef(currentUrl);
  useEffect(() => {
    if (prevUrlForSubRef.current === currentUrl) return;
    prevUrlForSubRef.current = currentUrl;
    // Reset timing offset on every server switch so old adjustments don't bleed over
    setSubOffset(0);
    // If switching to an Arabic source, clear subtitle state — built-in audio, no external sub needed
    if (hideSubtitle) {
      subAbortRef.current?.abort();
      setSubCues([]);
      setSubLang(null);
      setSubState("idle");
      setSubStatus("off");
      setSubChoice("off");
      return;
    }
    if (subChoice === "off") return;
    const saved = subChoice;
    /* ── FIX: Videasy desync — if new source has its OWN subtitleUrl (Videasy, kawaii, AniKoto),
       NEVER use the normKey cache which may hold timing from a DIFFERENT source.
       The subtitleUrl effect below will load the correct timing for this source. ── */
    if (subtitleUrl) {
      const cached = getCachedCues(subtitleUrl);
      if (cached) {
        setSubCues(cached);
        setSubLang("ara");
        setSubState("ready");
        setSubStatus("ready");
      } else {
        // Clear stale cues from previous source; subtitleUrl effect will load fresh
        setSubCues([]);
        setSubState("idle");
        setSubStatus("off");
      }
      return;
    }
    // 1. No subtitleUrl → use normalized episode cache (safe: same ep, user-loaded translation)
    const normKey = animeId ? `sub-ar-${animeId}-ep${ep}` : null;
    if (normKey) {
      const normCached = getCachedCues(normKey);
      if (normCached) {
        setSubCues(normCached);
        setSubLang("ara");
        setSubState("ready");
        setSubStatus("ready");
        return;
      }
    }
    // 2. No cache — re-apply immediately (no artificial delay)
    changeSubChoice(saved);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [currentUrl]);

  /* ── Auto-load subtitles when source has a subtitleUrl ── */
  useEffect(() => {
    if (!subtitleUrl) {
      setSubState("none");
      return;
    }

    // ✅ كاش الكلايت: تحقق أولاً — إذا موجود لا داعي للانتظار
    const cached = getCachedCues(subtitleUrl);
    if (cached) {
      setSubCues(cached);
      setSubLang("ara");
      setSubState("ready");
      setSubStatus("ready");
      return;
    }

    let cancelled = false;
    const ctrl2 = new AbortController();

    setSubState("loading");

    const translateUrl = subtitleUrl.startsWith("/api/anime/translate-vtt")
      ? subtitleUrl
      : `/api/anime/translate-vtt?url=${encodeURIComponent(subtitleUrl)}&from=en&to=ar`;

    let allCues: SubCue[] = [];
    const stopStream = _streamVttTranslation(
      translateUrl,
      {
        onChunk: (incoming, isFirst) => {
          if (cancelled) return;
          allCues = _mergeSubCues(allCues, incoming);
          setSubCues(allCues);
          if (isFirst) {
            setSubLang("ara");
            setSubState("ready");
            setSubStatus("translating");
            setCachedCues(subtitleUrl, allCues);
          }
        },
        onDone: () => {
          if (cancelled) return;
          if (allCues.length > 0) {
            setCachedCues(subtitleUrl, allCues);
            setSubLang("ara");
            setSubState("ready");
            setSubStatus("ready");
          } else {
            setSubState("none");
          }
        },
        onError: () => {
          if (!cancelled) setSubState("none");
        },
      },
      ctrl2.signal,
    );

    return () => {
      cancelled = true;
      ctrl2.abort();
      stopStream();
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [subtitleUrl]);

  /* ── Arabic TTS dubbing effect — reads current subtitle cue aloud in Arabic ── */
  useEffect(() => {
    if (!ttsDub || !subCues.length || subStatus !== "ready") return;
    const currentCue = subCues.find(
      (c) => c.start <= hlsTime && c.end >= hlsTime,
    );
    if (!currentCue || ttsLastCueRef.current === currentCue.text) return;
    ttsLastCueRef.current = currentCue.text;
    window.speechSynthesis.cancel();
    const utter = new SpeechSynthesisUtterance(currentCue.text);
    utter.lang = "ar-SA";
    const voices = window.speechSynthesis.getVoices();
    const arVoice = voices.find((v) => v.lang.startsWith("ar"));
    if (arVoice) utter.voice = arVoice;
    utter.rate = 1.05;
    window.speechSynthesis.speak(utter);
  }, [ttsDub, hlsTime, subCues, subStatus]);

  /* Stop TTS when disabled */
  useEffect(() => {
    if (!ttsDub) {
      window.speechSynthesis.cancel();
      ttsLastCueRef.current = "";
    }
  }, [ttsDub]);

  /* ── Whisper audio transcription — send raw video URL to API for transcription ── */
  const triggerWhisperTranscription = useCallback(async () => {
    if (whisperStatus === "loading") return;
    const rawUrl = servers[currentServer] || "";
    if (!rawUrl) return;
    setWhisperStatus("loading");
    setWhisperLang("");
    try {
      const r = await fetch(API_BASE + "/api/anime/whisper-transcribe", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ url: rawUrl, duration: 120 }),
        signal: AbortSignal.timeout(200_000),
      });
      if (!r.ok) throw new Error(`${r.status}`);
      const d = (await r.json()) as {
        language?: string;
        language_ar?: string;
        cues?: Array<{ start: number; end: number; text: string }>;
      };
      if (!d.cues?.length) throw new Error("no cues");
      const cues: SubCue[] = d.cues.map((c) => ({
        start: c.start,
        end: c.end,
        text: c.text,
      }));
      const cacheKey = `whisper-${rawUrl.slice(0, 100)}`;
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
      try {
        localStorage.setItem(progressKey, String(Math.floor(t)));
      } catch {}
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
    /* إلغاء أي طلب ترجمة جارٍ للسيرفر السابق */
    subAbortRef.current?.abort();

    if (currentServer + 1 < servers.length) {
      console.log(
        `[Nova] تبديل تلقائي → سيرفر ${currentServer + 2}/${servers.length}: ${servers[currentServer + 1]?.slice(0, 120)}`,
      );
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
  }, [
    currentServer,
    servers.length,
    quality,
    allServers,
    onChangeQuality,
    onTierExhausted,
  ]);
  /* Note: tryNextServer changes when currentServer changes, but that's fine —
     RiftPlayer's fireOnFail reads onFailRef.current (stable ref), so loadSource
     never re-fires from identity changes here. */

  /* ── Embed-type URL → sandboxed iframe player ── */
  /* AnimatePresence mode="wait" أُزيل هنا — كان يُبقي MegaEmbedPlayer حياً أثناء exit animation
     بعد أن يُنهار الـ parent (EpisodePlayer) عند العودة للـ picker، مما يُطلق error boundary. */
  if (currentUrl && isIframeUrl(currentUrl)) {
    return (
      <MegaEmbedPlayer
        key={currentUrl}
        src={currentUrl}
        ep={ep}
        totalEps={totalEps}
        title={title}
        onBack={onBack}
        onNextEp={onNextEp}
        onPrevEp={onPrevEp}
      />
    );
  }

  /* ── Blank-screen guard: if no URL at all, show error ── */
  if (!currentUrl) {
    return (
      <motion.div
        className="fixed inset-0 z-50 bg-[#09090f] flex flex-col items-center justify-center gap-5"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        dir="rtl"
      >
        <div className="w-14 h-14 rounded-2xl bg-white/4 border border-white/7 flex items-center justify-center">
          <AlertTriangle className="w-6 h-6 text-white/20" />
        </div>
        <div className="text-center">
          <p className="text-white/55 text-[14px] font-black font-['Cairo']">
            تعذّر تشغيل المصدر
          </p>
          <p className="text-white/25 text-[12px] mt-1 font-['Cairo']">
            لا يوجد رابط فيديو صالح
          </p>
        </div>
        <button
          onClick={onBack}
          className="flex items-center gap-2 px-5 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform"
        >
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
        style={{
          background: "rgba(255,255,255,0.10)",
          border: "1px solid rgba(255,255,255,0.13)",
        }}
      >
        <ChevronRight className="w-5 h-5 text-white/80" />
      </button>

      {/* Title */}
      <div className="flex-1 min-w-0">
        <p className="text-white text-[13px] font-black font-['Cairo'] truncate leading-tight">
          {title}
        </p>
        <div className="flex items-center gap-1.5 mt-0.5">
          <span className="text-white/38 text-[10px] font-['Cairo']">
            الحلقة {ep}
          </span>
          {servers.length > 1 && (
            <>
              <span className="text-white/18 text-[8px]">·</span>
              <span className="text-white/60 text-[13px] font-black font-['Cairo']">
                سيرفر {currentServer + 1}/{servers.length}
              </span>
            </>
          )}
          {!allQualityIdentical && (
            <>
              <span className="text-white/18 text-[8px]">·</span>
              <span className="text-violet-300/55 text-[10px] font-bold font-mono">
                {QUALITY_SHORT[quality]}
              </span>
            </>
          )}
          {currentInfo.isHls && (
            <span
              className="font-mono text-[8px] font-bold px-1 py-0.5 rounded"
              style={{
                background: "rgba(124,58,237,0.22)",
                color: "rgba(196,181,253,0.80)",
                border: "1px solid rgba(124,58,237,0.28)",
              }}
            >
              HLS
            </span>
          )}
        </div>
      </div>

      {/* Subtitle — مخفي للمصادر العربية (صوت عربي مدمج) */}
      {!hideSubtitle && (
        <button
          onClick={toggleSubSilent}
          title={
            subChoice !== "off" && subStatus !== "off"
              ? "إيقاف الترجمة"
              : "تشغيل الترجمة"
          }
          className="flex items-center gap-1 px-2.5 py-2 rounded-xl transition-all active:scale-90 shrink-0"
          style={{
            background:
              subState === "ready"
                ? "rgba(124,58,237,0.88)"
                : "rgba(255,255,255,0.08)",
            border: `1px solid ${subState === "ready" ? "rgba(139,92,246,0.5)" : "rgba(255,255,255,0.11)"}`,
            color:
              subState === "ready"
                ? "white"
                : subState === "loading"
                  ? "rgba(167,139,250,0.70)"
                  : subState === "none"
                    ? "rgba(255,255,255,0.22)"
                    : "rgba(255,255,255,0.55)",
          }}
        >
          <Subtitles
            className={`w-3.5 h-3.5 ${subState === "loading" ? "animate-pulse" : ""}`}
          />
        </button>
      )}

      {/* Quality picker */}
      {!allQualityIdentical && (
        <button
          onClick={() => setShowQuality((s) => !s)}
          className="flex items-center gap-1 px-2.5 py-2 rounded-xl font-mono transition-all active:scale-90 shrink-0"
          style={{
            background: showQuality
              ? "rgba(124,58,237,0.88)"
              : "rgba(255,255,255,0.08)",
            border: `1px solid ${showQuality ? "rgba(139,92,246,0.5)" : "rgba(255,255,255,0.11)"}`,
            color: showQuality ? "white" : "rgba(255,255,255,0.55)",
          }}
        >
          <Settings className="w-3.5 h-3.5" />
          <span className="text-[10px] font-bold">
            {QUALITY_SHORT[quality]}
          </span>
        </button>
      )}

      {realQuality && (
        <div
          className="px-2 py-1 rounded-lg shrink-0"
          style={{
            background: "rgba(255,255,255,0.05)",
            border: "1px solid rgba(255,255,255,0.08)",
          }}
        >
          <span className="text-[9px] font-bold font-mono text-white/32">
            {realQuality}
          </span>
        </div>
      )}
    </div>
  );

  /* ── Build bottom slot: ep nav + server tabs ── */
  const bottomSlot = (
    <div
      className="flex items-center justify-between px-3 gap-2"
      style={{ paddingBottom: "max(12px, env(safe-area-inset-bottom))" }}
    >
      {/* Prev ep */}
      <button
        onClick={onPrevEp}
        disabled={ep <= 1}
        className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all shrink-0"
        style={{ color: "rgba(255,255,255,0.42)", opacity: ep <= 1 ? 0.18 : 1 }}
      >
        <ChevronRight className="w-4 h-4" />
        السابقة
      </button>

      {/* Server tabs */}
      <div
        className="flex items-center gap-1.5 overflow-x-auto flex-1 justify-center"
        style={{ scrollbarWidth: "none" }}
      >
        {servers.map((url, i) => {
          const info = getServerInfo(url, i);
          const isActive = i === currentServer;
          return (
            <button
              key={i}
              onClick={() => {
                savePositionBeforeSwitch();
                /* إلغاء أي طلب ترجمة جارٍ للسيرفر السابق قبل التبديل */
                subAbortRef.current?.abort();
                console.log(
                  `[Nova] تبديل السيرفر → ${info.label} (${i + 1}/${servers.length}): ${servers[i]?.slice(0, 120)}`,
                );
                setCurrentServer(i);
                setRealQuality(null);
              }}
              className="flex items-center gap-1 px-2.5 py-1.5 rounded-xl text-[10px] font-bold font-['Cairo'] whitespace-nowrap transition-all active:scale-90 shrink-0"
              style={{
                background: isActive
                  ? "rgba(124,58,237,0.88)"
                  : "rgba(255,255,255,0.08)",
                border: isActive
                  ? "1px solid rgba(139,92,246,0.45)"
                  : "1px solid rgba(255,255,255,0.10)",
                color: isActive
                  ? "rgba(255,255,255,0.95)"
                  : "rgba(255,255,255,0.38)",
              }}
            >
              <MonitorPlay className="w-3 h-3 shrink-0" />
              {info.label}
            </button>
          );
        })}
      </div>

      {/* Next ep */}
      {!isMovie && (
        <button
          onClick={onNextEp}
          disabled={totalEps < 900 && ep >= totalEps}
          className="flex items-center gap-1 text-[12px] font-bold font-['Cairo'] active:scale-95 transition-all shrink-0 flex-row-reverse"
          style={{
            color: "rgba(255,255,255,0.42)",
            opacity: totalEps < 900 && ep >= totalEps ? 0.18 : 1,
          }}
        >
          <ChevronLeft className="w-4 h-4" />
          التالية
        </button>
      )}
    </div>
  );

  return (
    <motion.div
      id="nova-player"
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
              subCues={
                subState === "ready" && !hideSubtitle && subCues.length > 0
                  ? subCues
                  : undefined
              }
              subOffset={subOffset}
              subSettings={subSettings}
              subEnabled={subState === "ready" && !hideSubtitle}
              skipIntro={skipTimes?.op}
              skipOutro={skipTimes?.ed}
              autoPlay={localStorage.getItem("pref-autoplay") === "true"}
              onSubtitleClick={fetchSubtitles}
              onSubSettingsChange={(s) => setSubSettings(s)}
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
          <motion.div
            key="qpick"
            initial={{ opacity: 0, scale: 0.95, y: -8 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.95, y: -8 }}
            transition={{ duration: 0.15 }}
            className="absolute top-[72px] left-0 right-0 z-40 flex justify-center px-4"
          >
            <div
              className="rounded-2xl px-4 py-3 flex gap-3 shadow-2xl"
              style={{
                background: "rgba(8,8,20,0.97)",
                backdropFilter: "blur(28px)",
                border: "1px solid rgba(255,255,255,0.10)",
              }}
            >
              <p className="text-white/25 text-[10px] font-['Cairo'] self-center ml-2">
                الجودة:
              </p>
              {QUALITY_LABELS.map((q) => (
                <button
                  key={q}
                  onClick={() => {
                    onChangeQuality(q);
                    setShowQuality(false);
                  }}
                  className="flex flex-col items-center gap-0.5 px-4 py-2.5 rounded-xl transition-all active:scale-90"
                  style={{
                    background:
                      q === quality
                        ? "rgba(124,58,237,0.90)"
                        : "rgba(255,255,255,0.05)",
                    border:
                      q === quality
                        ? "1px solid rgba(139,92,246,0.50)"
                        : "1px solid rgba(255,255,255,0.07)",
                    color: q === quality ? "white" : "rgba(255,255,255,0.38)",
                  }}
                >
                  <span className="font-black text-[16px] font-mono">
                    {QUALITY_SHORT[q]}
                  </span>
                  <span className="text-[8px] font-bold opacity-50 uppercase tracking-wider">
                    {q.split(" ")[1]}
                  </span>
                </button>
              ))}
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      <AnimatePresence>
        {!hideSubtitle &&
          showSubPanel &&
          (() => {
            const hasAr = subTracks.some((t) => t.lang === "ar");
            const hasAuto =
              subTracks.some((t) => t.lang === "ar-auto") ||
              subTracks.some((t) => t.lang === "en");
            const hasEn = subTracks.some((t) => t.lang === "en");
            const hasSub = subtitleUrl != null;
            const subOpts = [
              {
                id: "off" as SubChoice,
                label: "إيقاف",
                icon: "⊘",
                available: true,
                color: "rgba(255,255,255,0.30)",
              },
              {
                id: "ar" as SubChoice,
                label: "عربي",
                icon: "ع",
                available: hasAr,
                color: "rgba(110,231,183,0.85)",
              },
              {
                id: "ar-auto" as SubChoice,
                label: "مترجم",
                icon: "↻",
                available: hasAuto || hasSub,
                color: "rgba(251,191,36,0.85)",
              },
              {
                id: "en" as SubChoice,
                label: "إنجليزي",
                icon: "En",
                available: hasEn,
                color: "rgba(147,197,253,0.85)",
              },
            ];

            const toggleSection = (s: string) =>
              setExpandedSection((v) => (v === s ? null : s));

            const panelContent = (
              <div
                style={{
                  background: "rgba(7,5,20,0.97)",
                  backdropFilter: "blur(40px)",
                  WebkitBackdropFilter: "blur(40px)",
                  border: "1px solid rgba(139,92,246,0.22)",
                  boxShadow:
                    "inset 0 0 0 0.5px rgba(255,255,255,0.06), -20px 0 60px rgba(0,0,0,0.80)",
                  borderRadius: "20px 0 0 20px",
                  overflowY: "auto",
                  height: "100%",
                  maxHeight: "100dvh",
                  width: "290px",
                }}
              >
                {/* ── Header ── */}
                <div className="flex items-center justify-between border-b border-white/[0.06] px-4 pt-5 pb-3">
                  <div className="flex items-center gap-2">
                    <div
                      className="w-8 h-8 rounded-2xl flex items-center justify-center"
                      style={{
                        background:
                          "linear-gradient(135deg,rgba(139,92,246,0.55),rgba(109,40,217,0.40))",
                        border: "1px solid rgba(139,92,246,0.45)",
                        boxShadow: "0 0 12px rgba(139,92,246,0.25)",
                      }}
                    >
                      <span
                        className="text-violet-200 text-[15px] font-black"
                        style={{ fontFamily: "Cairo, sans-serif" }}
                      >
                        ت
                      </span>
                    </div>
                    <h3
                      className="text-[15px] font-black text-white"
                      style={{ fontFamily: "Cairo, sans-serif" }}
                    >
                      الترجمة
                    </h3>
                  </div>
                  <button
                    onClick={() => setShowSubPanel(false)}
                    className="w-8 h-8 rounded-full flex items-center justify-center active:scale-90 transition-transform"
                    style={{
                      background: "rgba(255,255,255,0.07)",
                      border: "1px solid rgba(255,255,255,0.10)",
                    }}
                  >
                    <X className="w-4 h-4 text-white/50" />
                  </button>
                </div>

                {/* ── 4 Language Tabs ── */}
                <div className="grid grid-cols-2 gap-2.5 p-4">
                  {subOpts.map((opt) => {
                    const active =
                      subChoice === opt.id &&
                      (opt.id === "off"
                        ? subStatus === "off"
                        : subStatus !== "off");
                    const isOff = opt.id === "off";
                    return (
                      <button
                        key={opt.id}
                        onClick={() => opt.available && changeSubChoice(opt.id)}
                        disabled={!opt.available}
                        className="flex flex-col items-center gap-2 pt-3 pb-2.5 rounded-2xl transition-all active:scale-90 disabled:opacity-25"
                        style={{
                          background: active
                            ? isOff
                              ? "rgba(239,68,68,0.14)"
                              : "rgba(139,92,246,0.20)"
                            : "rgba(255,255,255,0.05)",
                          border: active
                            ? isOff
                              ? "1px solid rgba(239,68,68,0.45)"
                              : "1px solid rgba(139,92,246,0.50)"
                            : "1px solid rgba(255,255,255,0.08)",
                        }}
                      >
                        {/* Circle icon */}
                        <div
                          className="w-10 h-10 rounded-full flex items-center justify-center"
                          style={{
                            background: active
                              ? isOff
                                ? "rgba(239,68,68,0.22)"
                                : "rgba(139,92,246,0.28)"
                              : "rgba(255,255,255,0.07)",
                            border: active
                              ? isOff
                                ? "1px solid rgba(239,68,68,0.50)"
                                : "1px solid rgba(139,92,246,0.55)"
                              : "1px solid rgba(255,255,255,0.10)",
                          }}
                        >
                          <span
                            className="text-[17px] leading-none font-black select-none"
                            style={{
                              color: active
                                ? isOff
                                  ? "rgba(252,165,165,0.95)"
                                  : opt.color
                                : "rgba(255,255,255,0.32)",
                              fontFamily: "Cairo, sans-serif",
                            }}
                          >
                            {opt.icon}
                          </span>
                        </div>
                        <span
                          className="text-[10px] font-black leading-none"
                          style={{
                            fontFamily: "Cairo, sans-serif",
                            color: active
                              ? isOff
                                ? "rgba(252,165,165,0.90)"
                                : "rgba(196,181,253,0.95)"
                              : "rgba(255,255,255,0.42)",
                          }}
                        >
                          {opt.label}
                        </span>
                      </button>
                    );
                  })}
                </div>

                {/* ── Status card ── */}
                <div className="px-4 pb-3">
                  {(subStatus === "loading" ||
                    subStatus === "translating" ||
                    subStatus === "discovering") && (
                    <div
                      className="flex items-center gap-2.5 px-4 py-2.5 rounded-2xl"
                      style={{
                        background: "rgba(139,92,246,0.10)",
                        border: "1px solid rgba(139,92,246,0.20)",
                      }}
                    >
                      <motion.div
                        className="w-3.5 h-3.5 rounded-full border-2 border-violet-400/25 border-t-violet-400/75 shrink-0"
                        animate={{ rotate: 360 }}
                        transition={{
                          duration: 0.85,
                          repeat: Infinity,
                          ease: "linear",
                        }}
                      />
                      <span
                        className="text-[11px] font-bold font-['Cairo']"
                        style={{ color: "rgba(196,181,253,0.75)" }}
                      >
                        {subStatus === "translating"
                          ? "جاري الترجمة…"
                          : subStatus === "loading"
                            ? "جاري التحميل…"
                            : "يبحث عن الترجمة…"}
                      </span>
                    </div>
                  )}
                  {subStatus === "ready" && (
                    <div
                      className="flex items-center justify-between px-4 py-2.5 rounded-2xl"
                      style={{
                        background: "rgba(52,211,153,0.09)",
                        border: "1px solid rgba(52,211,153,0.22)",
                      }}
                    >
                      <span
                        className="text-[11px] font-bold font-['Cairo']"
                        style={{ color: "rgba(110,231,183,0.85)" }}
                      >
                        {subLang === "ara" || subLang === "ar"
                          ? "عربي"
                          : "إنجليزي"}{" "}
                        · جاهز {subCues.length} سطر ✓
                      </span>
                      <div
                        className="w-2 h-2 rounded-full"
                        style={{
                          background: "rgba(52,211,153,0.85)",
                          boxShadow: "0 0 6px rgba(52,211,153,0.60)",
                        }}
                      />
                    </div>
                  )}
                  {subStatus === "failed" && (
                    <div
                      className="flex items-center justify-between px-4 py-2.5 rounded-2xl"
                      style={{
                        background: "rgba(239,68,68,0.08)",
                        border: "1px solid rgba(239,68,68,0.20)",
                      }}
                    >
                      <span className="text-[11px] font-['Cairo'] text-white/40">
                        لا توجد ترجمة لهذا المحتوى
                      </span>
                      <button
                        onClick={() => {
                          setSubTracks([]);
                          fetchSubtitles();
                        }}
                        className="text-[10px] font-bold font-['Cairo'] px-2.5 py-1.5 rounded-xl active:scale-90 transition-transform"
                        style={{
                          background: "rgba(139,92,246,0.20)",
                          border: "1px solid rgba(139,92,246,0.35)",
                          color: "rgba(196,181,253,0.85)",
                        }}
                      >
                        إعادة
                      </button>
                    </div>
                  )}
                  {subStatus === "off" && (
                    <div
                      className="px-4 py-2.5 rounded-2xl text-center"
                      style={{
                        background: "rgba(255,255,255,0.03)",
                        border: "1px solid rgba(255,255,255,0.07)",
                      }}
                    >
                      <span className="text-[10px] font-['Cairo'] text-white/22">
                        اختر لغة الترجمة من الأعلى
                      </span>
                    </div>
                  )}
                </div>

                {/* ── إعدادات divider ── */}
                <div className="flex items-center gap-2 px-4 py-2 border-t border-white/[0.05]">
                  <div
                    className="flex-1 h-px"
                    style={{ background: "rgba(255,255,255,0.07)" }}
                  />
                  <span
                    className="text-[10px] font-black font-['Cairo'] tracking-widest"
                    style={{ color: "rgba(255,255,255,0.20)" }}
                  >
                    إعدادات
                  </span>
                  <div
                    className="flex-1 h-px"
                    style={{ background: "rgba(255,255,255,0.07)" }}
                  />
                </div>

                {/* ── حجم الخط (دائماً مرئي) ── */}
                <div className="px-4 py-3">
                  <p
                    className="text-[9px] font-bold font-['Cairo'] mb-2.5"
                    style={{ color: "rgba(255,255,255,0.28)" }}
                  >
                    حجم الخط
                  </p>
                  <div className="flex gap-2">
                    {(
                      [
                        { sz: 13, label: "أ", name: "صغير" },
                        { sz: 16, label: "أ", name: "متوسط" },
                        { sz: 20, label: "أ", name: "كبير" },
                        { sz: 24, label: "أ", name: "كبير جداً" },
                      ] as { sz: number; label: string; name: string }[]
                    ).map(({ sz, name }) => (
                      <button
                        key={sz}
                        onClick={() =>
                          setSubSettings((s) => ({ ...s, fontSize: sz }))
                        }
                        className="flex-1 flex flex-col items-center py-2.5 rounded-2xl font-bold font-['Cairo'] transition-all active:scale-90"
                        style={{
                          background:
                            subSettings.fontSize === sz
                              ? "rgba(139,92,246,0.22)"
                              : "rgba(255,255,255,0.05)",
                          border:
                            subSettings.fontSize === sz
                              ? "1px solid rgba(139,92,246,0.50)"
                              : "1px solid rgba(255,255,255,0.08)",
                        }}
                      >
                        <span
                          style={{
                            fontSize: sz > 18 ? sz * 0.72 : sz * 0.82,
                            color:
                              subSettings.fontSize === sz
                                ? "#c4b5fd"
                                : "rgba(255,255,255,0.40)",
                            lineHeight: 1.1,
                          }}
                        >
                          أ
                        </span>
                      </button>
                    ))}
                  </div>
                </div>

                {/* ── Expandable sections ── */}

                {/* المظهر */}
                <div className="border-t border-white/[0.05]">
                  <button
                    onClick={() => toggleSection("appearance")}
                    className="flex items-center justify-between w-full px-4 py-3 active:bg-white/[0.03] transition-colors"
                  >
                    <div className="flex items-center gap-2.5">
                      <div
                        className="w-7 h-7 rounded-xl flex items-center justify-center"
                        style={{
                          background: "rgba(251,191,36,0.12)",
                          border: "1px solid rgba(251,191,36,0.20)",
                        }}
                      >
                        <span className="text-[12px]">🎨</span>
                      </div>
                      <div>
                        <span className="text-[12px] font-black font-['Cairo'] text-white/70">
                          المظهر
                        </span>
                        <span className="text-[9px] font-['Cairo'] text-white/25 mr-2">
                          كبير · أبيض
                        </span>
                      </div>
                    </div>
                    <span className="text-[10px] text-white/25">
                      {expandedSection === "appearance" ? "▲" : "▼"}
                    </span>
                  </button>
                  {expandedSection === "appearance" && (
                    <div className="px-4 pb-4 flex flex-col gap-3">
                      {/* Color */}
                      <div>
                        <p
                          className="text-[9px] font-bold font-['Cairo'] mb-2"
                          style={{ color: "rgba(255,255,255,0.28)" }}
                        >
                          لون النص
                        </p>
                        <div className="flex gap-2">
                          {(
                            [
                              { v: "#ffffff" },
                              { v: "#fde047" },
                              { v: "#67e8f9" },
                              { v: "#86efac" },
                              { v: "#fca5a5" },
                            ] as { v: string }[]
                          ).map(({ v }) => (
                            <button
                              key={v}
                              onClick={() =>
                                setSubSettings((s) => ({ ...s, color: v }))
                              }
                              className="flex-1 h-8 rounded-xl transition-all active:scale-90 relative"
                              style={{
                                background: v,
                                opacity: subSettings.color === v ? 1 : 0.32,
                                boxShadow:
                                  subSettings.color === v
                                    ? `0 0 10px ${v}70`
                                    : "none",
                                border:
                                  subSettings.color === v
                                    ? "2px solid rgba(255,255,255,0.65)"
                                    : "1.5px solid rgba(255,255,255,0.10)",
                              }}
                            >
                              {subSettings.color === v && (
                                <span
                                  className="absolute inset-0 flex items-center justify-center text-[10px]"
                                  style={{ color: "#000", opacity: 0.65 }}
                                >
                                  ✓
                                </span>
                              )}
                            </button>
                          ))}
                        </div>
                      </div>
                      {/* Background + Bold */}
                      <div className="flex gap-2">
                        <div className="flex-1">
                          <p
                            className="text-[9px] font-bold font-['Cairo'] mb-2"
                            style={{ color: "rgba(255,255,255,0.28)" }}
                          >
                            خلفية
                          </p>
                          <div className="flex gap-1.5">
                            {(
                              [
                                { v: 0.82, label: "●" },
                                { v: 0.45, label: "◐" },
                                { v: 0, label: "○" },
                              ] as { v: number; label: string }[]
                            ).map(({ v, label }) => (
                              <button
                                key={v}
                                onClick={() =>
                                  setSubSettings((s) => ({
                                    ...s,
                                    bgOpacity: v,
                                  }))
                                }
                                className="flex-1 py-2 rounded-xl text-[14px] transition-all active:scale-90"
                                style={{
                                  background:
                                    subSettings.bgOpacity === v
                                      ? "rgba(139,92,246,0.22)"
                                      : "rgba(255,255,255,0.05)",
                                  border:
                                    subSettings.bgOpacity === v
                                      ? "1px solid rgba(139,92,246,0.45)"
                                      : "1px solid rgba(255,255,255,0.08)",
                                  color:
                                    subSettings.bgOpacity === v
                                      ? "#c4b5fd"
                                      : "rgba(255,255,255,0.28)",
                                }}
                              >
                                {label}
                              </button>
                            ))}
                          </div>
                        </div>
                        <div className="shrink-0">
                          <p
                            className="text-[9px] font-bold font-['Cairo'] mb-2"
                            style={{ color: "rgba(255,255,255,0.28)" }}
                          >
                            خط عريض
                          </p>
                          <button
                            onClick={() =>
                              setSubSettings((s) => ({ ...s, bold: !s.bold }))
                            }
                            className="h-[38px] px-3 rounded-xl text-[12px] transition-all active:scale-90 font-black"
                            style={{
                              fontWeight: subSettings.bold ? 800 : 400,
                              background: subSettings.bold
                                ? "rgba(139,92,246,0.22)"
                                : "rgba(255,255,255,0.05)",
                              border: subSettings.bold
                                ? "1px solid rgba(139,92,246,0.45)"
                                : "1px solid rgba(255,255,255,0.08)",
                              color: subSettings.bold
                                ? "#c4b5fd"
                                : "rgba(255,255,255,0.30)",
                              fontFamily: "Cairo, sans-serif",
                            }}
                          >
                            {subSettings.bold ? "ع" : "ع"}
                          </button>
                        </div>
                      </div>
                    </div>
                  )}
                </div>

                {/* الموضع */}
                <div className="border-t border-white/[0.05]">
                  <button
                    onClick={() => toggleSection("position")}
                    className="flex items-center justify-between w-full px-4 py-3 active:bg-white/[0.03] transition-colors"
                  >
                    <div className="flex items-center gap-2.5">
                      <div
                        className="w-7 h-7 rounded-xl flex items-center justify-center"
                        style={{
                          background: "rgba(147,197,253,0.12)",
                          border: "1px solid rgba(147,197,253,0.20)",
                        }}
                      >
                        <span className="text-[12px]">📍</span>
                      </div>
                      <div>
                        <span className="text-[12px] font-black font-['Cairo'] text-white/70">
                          الموضع
                        </span>
                        <span className="text-[9px] font-['Cairo'] text-white/25 mr-2">
                          {subSettings.position === "top"
                            ? "أعلى"
                            : subSettings.position === "center"
                              ? "وسط"
                              : "أسفل"}
                        </span>
                      </div>
                    </div>
                    <span className="text-[10px] text-white/25">
                      {expandedSection === "position" ? "▲" : "▼"}
                    </span>
                  </button>
                  {expandedSection === "position" && (
                    <div className="px-4 pb-3">
                      <div className="flex gap-1.5">
                        {(
                          [
                            { v: "top", label: "↑ أعلى" },
                            { v: "center", label: "⬛ وسط" },
                            { v: "bottom", label: "↓ أسفل" },
                          ] as {
                            v: "top" | "center" | "bottom";
                            label: string;
                          }[]
                        ).map(({ v, label }) => (
                          <button
                            key={v}
                            onClick={() =>
                              setSubSettings((s) => ({ ...s, position: v }))
                            }
                            className="flex-1 py-2.5 rounded-xl text-[10px] font-bold font-['Cairo'] transition-all active:scale-90"
                            style={{
                              background:
                                subSettings.position === v
                                  ? "rgba(139,92,246,0.22)"
                                  : "rgba(255,255,255,0.05)",
                              border:
                                subSettings.position === v
                                  ? "1px solid rgba(139,92,246,0.45)"
                                  : "1px solid rgba(255,255,255,0.08)",
                              color:
                                subSettings.position === v
                                  ? "#c4b5fd"
                                  : "rgba(255,255,255,0.35)",
                            }}
                          >
                            {label}
                          </button>
                        ))}
                      </div>
                    </div>
                  )}
                </div>

                {/* السلوك (ضبط التوقيت) */}
                <div className="border-t border-white/[0.05]">
                  <button
                    onClick={() => toggleSection("behavior")}
                    className="flex items-center justify-between w-full px-4 py-3 active:bg-white/[0.03] transition-colors"
                  >
                    <div className="flex items-center gap-2.5">
                      <div
                        className="w-7 h-7 rounded-xl flex items-center justify-center"
                        style={{
                          background: "rgba(239,68,68,0.10)",
                          border: "1px solid rgba(239,68,68,0.18)",
                        }}
                      >
                        <span className="text-[12px]">⚡</span>
                      </div>
                      <div>
                        <span className="text-[12px] font-black font-['Cairo'] text-white/70">
                          السلوك
                        </span>
                        {subOffset !== 0 && (
                          <span className="text-[9px] font-['Cairo'] text-violet-300/60 mr-2">
                            {subOffset > 0 ? "+" : ""}
                            {subOffset.toFixed(1)}s
                          </span>
                        )}
                      </div>
                    </div>
                    <span className="text-[10px] text-white/25">
                      {expandedSection === "behavior" ? "▲" : "▼"}
                    </span>
                  </button>
                  {expandedSection === "behavior" && (
                    <div className="px-4 pb-4">
                      <p className="text-[9px] font-['Cairo'] text-white/28 mb-3">
                        ضبط يدوي للتوقيت — التزامن تلقائي افتراضياً
                      </p>
                      <div className="flex gap-1.5">
                        {([-2, -0.5, 0.5, 2] as number[]).map((d) => (
                          <button
                            key={d}
                            onClick={() => adjustOffset(d)}
                            className="flex-1 py-2 rounded-xl text-white/40 text-[10px] font-bold active:scale-90 transition-transform"
                            style={{
                              background: "rgba(255,255,255,0.05)",
                              border: "1px solid rgba(255,255,255,0.08)",
                              fontFamily: "monospace",
                            }}
                          >
                            {d > 0 ? "+" : ""}
                            {d}s
                          </button>
                        ))}
                        {subOffset !== 0 && (
                          <button
                            onClick={() => setSubOffset(0)}
                            className="px-2.5 py-2 rounded-xl text-[10px] active:scale-90 transition-transform"
                            style={{
                              background: "rgba(239,68,68,0.10)",
                              border: "1px solid rgba(239,68,68,0.22)",
                              color: "rgba(252,165,165,0.75)",
                              fontFamily: "Cairo, sans-serif",
                            }}
                          >
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
              <motion.div
                key="subpanel"
                initial={{ opacity: 0, x: 60 }}
                animate={{ opacity: 1, x: 0 }}
                exit={{ opacity: 0, x: 60 }}
                transition={{ duration: 0.24, ease: [0.22, 1, 0.36, 1] }}
                className="fixed inset-y-0 right-0 z-[400] flex items-stretch"
                style={{
                  paddingTop: "max(0px, env(safe-area-inset-top))",
                  paddingBottom: "max(0px, env(safe-area-inset-bottom))",
                }}
              >
                <div
                  className="fixed inset-0 z-[-1]"
                  style={{ background: "rgba(0,0,0,0.45)" }}
                  onClick={() => setShowSubPanel(false)}
                />
                {panelContent}
              </motion.div>
            );
          })()}
      </AnimatePresence>
    </motion.div>
  );
}

/* ══ Local Error Boundary ══════════════════════════════════════════════════
   يمسك render crashes عند الانتقال player→picker دون إظهار شاشة الخطأ العالمية.
   Bridge: _watchResetRef تُملأ من WatchPage أثناء كل render (inline ref assignment).
   ═══════════════════════════════════════════════════════════════════════════ */
const _watchResetRef: { fn: (() => void) | null } = { fn: null };

class _WatchBoundary extends Component<
  { children: ReactNode; resetKey: string },
  { hasError: boolean; lastKey: string }
> {
  constructor(props: { children: ReactNode; resetKey: string }) {
    super(props);
    this.state = { hasError: false, lastKey: props.resetKey };
  }
  static getDerivedStateFromProps(
    props: { children: ReactNode; resetKey: string },
    state: { hasError: boolean; lastKey: string },
  ) {
    // أعِد الضبط تلقائياً عند تغيير resetKey (تغيّر phase أو playKey)
    if (props.resetKey !== state.lastKey)
      return { hasError: false, lastKey: props.resetKey };
    return null;
  }
  static getDerivedStateFromError() {
    return { hasError: true };
  }
  componentDidCatch(err: Error) {
    console.error(
      "[WatchBoundary] render crash →",
      err?.message,
      err?.stack?.slice(0, 300),
    );
    // أعِد الضبط للـ picker بعد انتهاء هذا الـ render cycle
    queueMicrotask(() => {
      _watchResetRef.fn?.();
    });
  }
  render(): ReactNode {
    if (this.state.hasError) {
      // سبينر مؤقت ريثما يُطلَق emergency reset
      return (
        <div className="fixed inset-0 bg-[#07070d] flex items-center justify-center">
          <div className="w-6 h-6 rounded-full border-2 border-violet-500/30 border-t-violet-400 animate-spin" />
        </div>
      );
    }
    return this.props.children;
  }
}

/* ══════════════════════════════════ WATCH PAGE ══════════════ */
const EMPTY_SLOTS = (): Record<string, SlotStatus> =>
  Object.fromEntries(SCRAPER_DEFS.map((d) => [d.site, "idle" as SlotStatus]));

export default function WatchPage() {
  const [, navigate] = useLocation();
  const { user } = useAuth();
  const userId = user?.id ?? null;

  const sp = useRef(new URLSearchParams(window.location.search)).current;
  const animeId = parseInt(sp.get("anime") || "0");
  const ep = parseInt(sp.get("ep") || "1");
  const titleParam = sp.get("title") || "";
  const englishParam = sp.get("english") || "";
  const latestTitleVariants = (() => {
    try {
      const raw = sp.get("titles");
      const parsed = raw ? JSON.parse(raw) : [];
      return Array.isArray(parsed)
        ? parsed.filter((value): value is string => typeof value === "string" && value.trim().length > 1)
        : [];
    } catch {
      return [];
    }
  })();
  const anslayerIdParam = parseInt(sp.get("anslayerId") || "0");
  const coverParam = sp.get("cover") || "";
  const titleArParam = sp.get("titleAr") || "";
  const totalEpsParam = parseInt(sp.get("totalEps") || "0");

  const [anime, setAnime] = useState<any>(null);
  const [skipTimes, setSkipTimes] = useState<SkipTimes>({});
  const [slotStatus, setSlotStatus] =
    useState<Record<string, SlotStatus>>(EMPTY_SLOTS());
  const [slotSources, setSlotSources] = useState<Record<string, FetchedSrc[]>>(
    {},
  );
  const [qualityStatus, setQualityStatus] = useState<
    Record<string, SlotStatus>
  >({});
  const [playerServers, setPlayerServers] = useState<Record<Quality, string[]>>(
    { "1080p FHD": [], "720p HD": [], "360p SD": [] },
  );
  const [quality, setQuality] = useState<Quality>("720p HD");
  const [availabilityDone, setAvailabilityDone] = useState(false);
  const [initialSrv, setInitialSrv] = useState(0);
  /* playKey: يتزايد في كل اختيار مصدر → يجبر EpisodePlayer على إعادة التهيئة الكاملة */
  const [playKey, setPlayKey] = useState(0);
  const [phase, setPhase] = useState<"picker" | "player">("picker");
  /* boundaryResetKey يتزايد كلما مسكت _WatchBoundary خطأً → يغير resetKey → تخرج من حالة error */
  const [boundaryResetKey, setBoundaryResetKey] = useState(0);
  /* showPicker: يبدأ false — إن وُجد مصدر جاهز للتشغيل التلقائي سريعاً (أقل من ~900ms)
     فلن تظهر شاشة السيرفرات مطلقاً؛ إن لم يُعثر على أي مصدر بهذه السرعة تظهر الشاشة
     لتسمح للمستخدم باختيار مصدر يدوياً. هذا يمنع "الفلاش" السابق (ظهور الشاشة لثوانٍ
     ثم اختفاؤها فجأة عند نجاح أول مصدر). */
  const [showPicker, setShowPicker] = useState(true);
  // failedSrcToast: shown briefly when all servers in a tier fail → lets user know why they're back at picker
  const [failedSrcToast, setFailedSrcToast] = useState(false);
  // keep phaseRef in sync so async fetch handlers can guard against updating picker state while player is active
  useEffect(() => {
    phaseRef.current = phase;
  }, [phase]);
  useEffect(() => {
    slotStatusRef.current = slotStatus;
  }, [slotStatus]);

  /* ── Stop all audio/video when leaving Watch page ── */
  useEffect(() => {
    return () => {
      document.querySelectorAll<HTMLVideoElement>("video").forEach((v) => {
        try {
          v.pause();
          v.src = "";
        } catch {}
      });
    };
  }, []);
  const [playerDlUrl, setPlayerDlUrl] = useState<string | undefined>(undefined);
  const [playerSubUrl, setPlayerSubUrl] = useState<string | undefined>(
    undefined,
  );
  const [playerSrcSite, setPlayerSrcSite] = useState<string>("");
  /* ref لتتبع الموقع الحالي خارج نطاق الـ closure (يُحدَّث فوراً) */
  const playerSrcSiteRef = useRef<string>("");
  const [kawaiiSubUrl, setKawaiiSubUrl] = useState<string | undefined>(
    undefined,
  );

  const autoFetchedRef = useRef(false);
  const autoPlayedRef = useRef(false);
  /* true once the mount-time "fetch all scrapers" wave has been scheduled — prevents
     handleFetchSite from scheduling a redundant second wave of the same sites */
  const autoFetchAllRef = useRef(false);
  const availabilityCheckedRef = useRef(false);
  /* mirrors slotStatus for use inside setTimeout closures (avoids stale-state reads
     when a scheduled fetch fires after several re-renders) */
  const slotStatusRef = useRef<Record<string, SlotStatus>>(EMPTY_SLOTS());
  const upgradedToFhdRef = useRef(false);
  const phaseRef = useRef<"picker" | "player">("picker");
  /* تتبع طلبات fetch-source الجارية + المؤقتات المعلَّقة — لإلغائها فور اختيار مصدر التشغيل
     (يمنع بقية السكربرز من إكمال طلباتهم بلا فائدة بعد بدء التشغيل، يقلل استهلاك السيرفر) */
  const fetchControllersRef = useRef<Record<string, AbortController>>({});
  const pendingTimeoutsRef = useRef<number[]>([]);
  // autoPlayReady removed — يُفعَّل الـ auto-play الآن داخل handleFetchSite مباشرةً

  // Keep emergency-reset callback always current — called by _WatchBoundary on crash
  // يجب زيادة boundaryResetKey حتى يتغير resetKey → تخرج الـ boundary من حالة error
  _watchResetRef.fn = () => {
    setPhase("picker");
    setShowPicker(true);
    setBoundaryResetKey((k) => k + 1);
  };

  const title =
    anime?.title?.english || anime?.title?.romaji || titleParam || "أنمي";
  const animeTitle = title;
  const totalEps = Math.max(
    Number(anime?.episodes || 0),
    Number(anime?.nextAiringEpisode?.episode || 0) > 0
      ? Number(anime.nextAiringEpisode.episode) - 1
      : 0,
    totalEpsParam > 0 ? totalEpsParam : 0,
    1,
  );
  /* Cover: prefer AniList data, fallback to URL param, then watch history */
  const coverFromHistory = useMemo(() => {
    if (anime) return "";
    try {
      const h: any[] = JSON.parse(
        localStorage.getItem("watch-history") || "[]",
      );
      return h.find((e) => e.id === animeId)?.cover || "";
    } catch {
      return "";
    }
  }, [anime, animeId]);
  const cover =
    anime?.coverImage?.extraLarge ||
    anime?.coverImage?.large ||
    coverParam ||
    coverFromHistory ||
    (animeId ? `https://img.anili.st/media/${animeId}` : "");

  /* Preserve AnimeSlayer metadata when leaving the latest-episodes flow. */
  const detailHref = (() => {
    if (!animeId) return "/";
    const fromAnimeSlayer =
      sp.get("site") === "anslayer" || anslayerIdParam === animeId;
    if (!fromAnimeSlayer || !titleParam) return `/anime/${animeId}`;
    const q = new URLSearchParams({
      src: "anslayer",
      title: titleParam,
      ...(englishParam ? { english: englishParam } : {}),
      ...(coverParam ? { cover: coverParam } : {}),
      ...(anslayerIdParam ? { anslayerId: String(anslayerIdParam) } : {}),
      ...(ep > 0 ? { ep: String(ep) } : {}),
    });
    return `/anime/${animeId}?${q.toString()}`;
  })();

  /* Episode title from AniList streamingEpisodes */
  const epTitle: string = (() => {
    const eps: Array<{ title?: string; episode?: string }> =
      anime?.streamingEpisodes || [];
    if (!eps.length) return "";
    const found = eps.find((e) => {
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
      fetch(
        `${API_BASE}/api/anime/translate?text=${encodeURIComponent(raw)}&from=en&to=ar&kind=episode`,
        { signal: ctrl.signal },
      )
        .then((r) => (r.ok ? r.json() : null))
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
        fetch(`${API_BASE}/api/anime/ep-title?malId=${malId}&ep=${ep}`, {
          signal: ctrl.signal,
        })
          .then((r) => (r.ok ? r.json() : null))
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
    if (animeId && titleParam)
      saveHistory(animeId, titleParam, coverParam, ep, 0, userId);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [userId]);

  /* ── Fetch kawaii-meta: Arabic subtitle + intro/outro skip times ── */
  useEffect(() => {
    if (!animeId) return;
    setKawaiiSubUrl(undefined);
    const ctrl = new AbortController();
    fetch(`${API_BASE}/api/anime/kawaii-meta?anilistId=${animeId}&ep=${ep}`, {
      signal: ctrl.signal,
    })
      .then((r) => (r.ok ? r.json() : null))
      .then((data: any) => {
        if (!data) return;
        // Subtitle: prefer Arabic, fallback to English → translate via server
        const toKawaiiSubtitle = (raw: string, from: "ar" | "en") => {
          const proxied = raw.startsWith("/api/anime/proxy-text")
            ? raw
            : `/api/anime/proxy-text?url=${encodeURIComponent(raw)}&ref=${encodeURIComponent(data.subtitleRef || "https://kawaiianime.cc/")}`;
          return `/api/anime/translate-vtt?url=${encodeURIComponent(proxied)}&from=${from}&to=ar`;
        };
        const subUrl: string | undefined = data.arabicSubUrl
          ? toKawaiiSubtitle(data.arabicSubUrl, "ar")
          : data.englishSubUrl
            ? toKawaiiSubtitle(data.englishSubUrl, "en")
            : undefined;
        /* إصلاح race condition: إذا كان المصدر الحالي عربياً → لا نضع kawaiiSubUrl
           (تجنّب تداخل الترجمة الخارجية مع الترجمة المضمّنة في الفيديو) */
        // Keep the Kawaii Arabic track cached for the whole episode. The
        // active-source rules below decide whether it is displayed; tying this
        // fetch to the previously selected provider caused AK/AN/GO to lose it
        // after switching away from an Arabic source.
        if (subUrl) setKawaiiSubUrl(subUrl);
        // Skip times: only fill gaps not already covered by aniskip/baha
        if (data.intro || data.outro) {
          setSkipTimes((prev) => {
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

  /* If AK/AN/GO is selected before kawaii-meta resolves, attach the
     shared Arabic track as soon as it arrives instead of leaving the
     player mounted without subtitles. */
  useEffect(() => {
    const site = playerSrcSiteRef.current;
    if (
      !kawaiiSubUrl ||
      !KAWAII_SUBTITLE_SITES.has(site) ||
      ARABIC_SITES.has(site) ||
      RAW_AUDIO_ONLY_SITES.has(site)
    )
      return;
    setPlayerSubUrl(kawaiiSubUrl);
  }, [kawaiiSubUrl]);

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
      fetch(`${API_BASE}/api/anime/aniskip?malId=${_cachedMal}&ep=${ep}`, {
        signal: AbortSignal.timeout(10000),
      })
        .then((r) => (r.ok ? r.json() : null))
        .then((data: any) => {
          if (!data?.found) return;
          const st: SkipTimes = {};
          for (const result of data.results || []) {
            const iv = result.interval;
            const sType = result.skip_type || result.skipType || "";
            if (sType === "op")
              st.op = { start: iv.startTime, end: iv.endTime };
            if (sType === "ed")
              st.ed = { start: iv.startTime, end: iv.endTime };
          }
          if (st.op || st.ed) {
            setSkipTimes((prev) => ({ ...prev, ...st }));
            try {
              localStorage.setItem(
                _skipKey,
                JSON.stringify({ data: st, exp: Date.now() + 7 * 86400_000 }),
              );
            } catch {}
          }
        })
        .catch(() => {});
    }

    // ── 3. AniList metadata fetch ──
    const body = JSON.stringify({
      query: ANILIST_Q,
      variables: { id: animeId },
    });
    const headers = { "Content-Type": "application/json" };
    const fetchAniList = () =>
      fetch(API_BASE + "/api/anime/anilist", {
        method: "POST",
        headers,
        body,
        signal: AbortSignal.timeout(10000),
      })
        .then((r) => {
          if (!r.ok) throw new Error(`proxy ${r.status}`);
          return r.json();
        })
        .catch(() =>
          fetch(API_BASE + "/api/anilist", {
            method: "POST",
            headers,
            body,
            signal: AbortSignal.timeout(10000),
          }).then((r) => r.json()),
        );
    fetchAniList()
      .then((j) => {
        const d = j.data?.Media;
        if (d) {
          setAnime(d);
          saveHistory(
            animeId,
            d.title?.english || d.title?.romaji || "",
            d.coverImage?.extraLarge ||
              d.coverImage?.large ||
              d.coverImage?.medium ||
              coverParam ||
              "",
            ep,
            d.episodes || 0,
            userId,
          );
          /* ── cache MAL ID for next visit (instant aniskip) ── */
          if (d.idMal) {
            try {
              localStorage.setItem(`malid-${animeId}`, String(d.idMal));
            } catch {}
          }

          // من: surajklmn/animepahe-aniskip — تحقق صحة نطاقات التخطي
          const validateSkipInterval = (
            iv: { start: number; end: number } | undefined,
          ) => {
            if (!iv) return undefined;
            const dur = iv.end - iv.start;
            if (iv.start < 0 || iv.end <= iv.start) return undefined; // نطاق سالب
            if (dur < 15 || dur > 210) return undefined; // قصير جداً أو طويل جداً
            return iv;
          };

          const mergeSkip = (st: SkipTimes) => {
            const validated: SkipTimes = {};
            if (st.op) {
              const v = validateSkipInterval(st.op);
              if (v) validated.op = v;
            }
            if (st.ed) {
              const v = validateSkipInterval(st.ed);
              if (v) validated.ed = v;
            }
            if (!validated.op && !validated.ed) return;
            setSkipTimes((prev) => ({ ...prev, ...validated }));
            try {
              localStorage.setItem(
                _skipKey,
                JSON.stringify({
                  data: { ...validated },
                  exp: Date.now() + 7 * 86400_000,
                }),
              );
            } catch {}
          };

          // aniskip (MAL ID)
          if (d.idMal) {
            fetch(`${API_BASE}/api/anime/aniskip?malId=${d.idMal}&ep=${ep}`, {
              signal: AbortSignal.timeout(10000),
            })
              .then((r) => (r.ok ? r.json() : null))
              .then((data: any) => {
                if (!data?.found) return;
                const st: SkipTimes = {};
                for (const result of data.results || []) {
                  const iv = result.interval;
                  const sType = result.skip_type || result.skipType || "";
                  if (sType === "op")
                    st.op = { start: iv.startTime, end: iv.endTime };
                  if (sType === "ed")
                    st.ed = { start: iv.startTime, end: iv.endTime };
                }
                mergeSkip(st);
              })
              .catch(() => {});
          }

          // baha-anime-skip (Bahamut DB — يُكمل ما فاته aniskip)
          {
            const titleEnc = encodeURIComponent(
              d.title?.english || d.title?.romaji || "",
            );
            const nativeEnc = encodeURIComponent(d.title?.native || "");
            fetch(
              `${API_BASE}/api/anime/baha-skip?title=${titleEnc}&native=${nativeEnc}&ep=${ep}`,
              {
                signal: AbortSignal.timeout(12000),
              },
            )
              .then((r) => (r.ok ? r.json() : null))
              .then((data: any) => {
                if (!data?.found || !data?.skip) return;
                const st: SkipTimes = {};
                if (data.skip.op) st.op = data.skip.op;
                if (data.skip.ed) st.ed = data.skip.ed;
                mergeSkip(st);
              })
              .catch(() => {});
          }

          // AniZip — بيانات الحلقات من anizip.moe (تُكمل ما فات aniskip/baha)
          fetch(`${API_BASE}/api/anime/anizip?anilistId=${animeId}&ep=${ep}`, {
            signal: AbortSignal.timeout(10000),
          })
            .then((r) => (r.ok ? r.json() : null))
            .then((data: any) => {
              if (!data?.found) return;
              const st: SkipTimes = {};
              if (data.intro) st.op = data.intro;
              if (data.outro) st.ed = data.outro;
              if (st.op || st.ed) mergeSkip(st);
            })
            .catch(() => {});

          // Anime-Skip (AniList ID مباشرة — لا يحتاج MAL ID)
          // من: surajklmn/animepahe-aniskip userscript
          fetch(
            `${API_BASE}/api/anime/anime-skip?anilistId=${animeId}&ep=${ep}`,
            {
              signal: AbortSignal.timeout(9000),
            },
          )
            .then((r) => (r.ok ? r.json() : null))
            .then((data: any) => {
              if (!data?.found) return;
              const st: SkipTimes = {};
              if (data.op) st.op = data.op;
              if (data.ed) st.ed = data.ed;
              if (st.op || st.ed) mergeSkip(st);
            })
            .catch(() => {});
        }
      })
      .catch(() => {});
  }, [animeId, ep]);

  function goEp(n: number) {
    /* Navigate via wouter — WatchWrapper adds key={search} so Watch remounts with fresh params */
    const goParams: Record<string, string> = {
      anime: String(animeId),
      ep: String(n),
      title: titleParam,
      english: englishParam,
      cover,
    };
    if (totalEps > 0 && totalEps < 990) goParams.totalEps = String(totalEps);
    if (anime?.format) goParams.format = anime.format;
    if (titleArParam) goParams.titleAr = titleArParam;
    navigate(`/watch?${new URLSearchParams(goParams)}`);
  }

  function handleBack() {
    document.querySelectorAll<HTMLVideoElement>("video, audio").forEach((v) => {
      try {
        v.pause();
        v.src = "";
      } catch {}
    });
    if (phase === "player") {
      /* From player → go back directly to the resolved server picker.
         Do not re-enter the animated/GIF loading screen. */
      autoPlayedRef.current = false; // السماح بـ auto-play عند اختيار مصدر جديد
      setAvailabilityDone(true);
      setShowPicker(true);
      setPhase("picker");
    } else {
      /* From the server picker, return to the anime details page.
         Latest-episode cards carry an AnimeSlayer id, not an AniList id;
         preserve the source title so AnimeDetail can resolve it correctly. */
      navigate(detailHref);
    }
  }

  /* ── When all servers in a tier are exhausted: show brief toast then return to picker ── */
  function handleTierExhausted() {
    document.querySelectorAll<HTMLVideoElement>("video, audio").forEach((v) => {
      try {
        v.pause();
        v.src = "";
      } catch {}
    });
    setFailedSrcToast(true);
    setShowPicker(true);
    setPhase("picker");
    /* إعادة ضبط autoPlayedRef حتى يتمكن fallback auto-play من تشغيل مصدر آخر تلقائياً
       (المشكلة: quick-resume يضبطه true → رابط CDN منتهي الصلاحية → فشل → العودة للـ picker
       لكن autoPlayedRef=true يمنع أي تشغيل تلقائي آخر → المستخدم عالق يدوياً) */
    autoPlayedRef.current = false;
    /* ── إعادة ضبط المصادر "ready" لتجنب إعادة تشغيل روابط CDN منتهية الصلاحية ──
       المشكلة: عند فشل المشغل (رابط منتهي الصلاحية)، تبقى slotSources بروابطها القديمة
       المحذوفة. النقرة التالية على أي مصدر "ready" تُعيد تشغيل نفس الرابط المنتهي → فشل
       سلسلة. الحل: إعادة ضبط كل المصادر المُجلَبة لإجبار إعادة الجلب من الباكند. */
    setSlotStatus(EMPTY_SLOTS());
    setSlotSources({});
    slotStatusRef.current = EMPTY_SLOTS();
    setTimeout(() => setFailedSrcToast(false), 3500);
  }

  /* ── Track in-flight fetches to prevent duplicate calls ── */
  const inFlightRef = useRef<Set<string>>(new Set());

  function abortActiveSourceRequests() {
    Object.values(fetchControllersRef.current).forEach((controller) =>
      controller.abort(),
    );
    fetchControllersRef.current = {};
    inFlightRef.current.clear();
  }

  /* ── Per-site on-demand fetch ──
     bgLoad=true  → background loading after player started (no auto-play, no re-trigger)
     bgLoad=false → user tapped this scraper → auto-play first result + background-load rest */
  async function handleFetchSite(
    site: string,
    requestedQuality: Quality,
    bgLoad = false,
  ) {
    /* Guard: skip if already fetching/ready — reads slotStatusRef (not the closed-over
       slotStatus state) so delayed/scheduled calls never re-fetch a site that already
       resolved between the time they were scheduled and the time they fire.
       "failed" مسموح — يُعيد المحاولة عند النقر بدل إجبار المستخدم على تحديث الصفحة. */
    const qualityKey = `${site}::${requestedQuality}`;
    const cachedForTier = (slotSources[site] || []).filter(
      (s) =>
        getSrcQualityTier(s) === requestedQuality && !!(s.directUrl || s.url),
    );
    if (cachedForTier.length) {
      const bestCached = [...cachedForTier].sort(
        (a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0),
      )[0];
      if (!bgLoad) handlePlaySrc(bestCached);
      return;
    }
    if (inFlightRef.current.has(qualityKey)) return;
    inFlightRef.current.add(qualityKey);
    setSlotStatus((prev) => ({ ...prev, [site]: "fetching" }));
    setQualityStatus((prev) => ({ ...prev, [qualityKey]: "fetching" }));

    const resolvedTitle = anime?.title?.romaji || titleParam;
    const resolvedEnglish = anime?.title?.english || englishParam || "";
    const titleVariants = [
      anime?.title?.romaji,
      anime?.title?.english,
      anime?.title?.native,
      anime?.title?.userPreferred,
      ...(Array.isArray(anime?.synonyms) ? anime.synonyms : []),
      ...latestTitleVariants,
      titleParam,
      englishParam,
      titleArParam,
    ]
      .filter(
        (value): value is string =>
          typeof value === "string" && value.trim().length > 0,
      )
      .map((value) => value.trim())
      .filter((value, index, values) => values.indexOf(value) === index);

    /* timeout مُصمَّم لكل موقع — يجب أن يكون >= timeout الباكند لنفس الموقع
       حتى لا يُقتل الطلب قبل أن يرد الباكند (مشكلة جذرية لفقدان المصادر في cache البارد) */
    const SITE_REQUEST_TIMEOUTS: Record<string, number> = {
      animewitcher: 42000, // backend = 38s + هامش 4s
      animekai: 36000, // backend = 30s + هامش 6s
      consumet_gogo: 36000,
      cinesrc_anim: 38000, // backend = 35s + هامش 3s
      mycima: 34000, // backend = 30s + هامش 4s
      anikototv: 28000, // backend = 25s + هامش 3s
      anineko: 45000, // search + episode page + embed/master extraction
      anslayer: 50000, // backend = 45s + هامش 5s (parallel embed extraction)
      animeify: 28000, // backend = 18s + هامش للاستخراج/الشبكة
      sanime: 28000, // backend = 20s + هامش للبحث وinfo
      anifox: 38000, // backend = 30s + هامش لتحميل الكتالوج أول مرة
      anikoto: 26000,
      // mitanime: محذوف 2026-07-27
      // hianime: معطّل 2026-07-30
      anipm: 24000, // backend = 20s + هامش 4s
    };
    const siteTimeout = SITE_REQUEST_TIMEOUTS[site] ?? 24000;
    const ctrl = new AbortController();
    const requestControllerKey = `${site}:${animeId}:${ep}`;
    fetchControllersRef.current[requestControllerKey] = ctrl;
    const timeoutId = window.setTimeout(() => ctrl.abort(), siteTimeout);

    try {
      const params = new URLSearchParams({
        site,
        title: resolvedTitle,
        english: resolvedEnglish,
        ep: String(ep),
        anime: String(animeId || 0),
        format: anime?.format || sp.get("format") || "",
      });
      params.set("titles", JSON.stringify(titleVariants));
      params.set(
        "quality",
        requestedQuality === "1080p FHD"
          ? "1080p"
          : requestedQuality === "720p HD"
            ? "720p"
            : "360p",
      );
      /* anslayerId: يمرَّر من قسم "أحدث الحلقات" (معرّف anslayer المباشر من كتالوجه —
         يتجاوز البحث بالاسم ويحدّد الأنمي الصحيح 100%).
         titleAr: العنوان العربي يُحسَّن البحث على AnimeSlayer (يبحث بالعربي أولاً). */
      if (site === "anslayer" && sp.get("anslayerId"))
        params.set("anslayerId", sp.get("anslayerId")!);
      if (site === "anslayer" && titleArParam)
        params.set("titleAr", titleArParam);
      // Provider pages/CDN tokens are occasionally transient. Retry one time
      // with a short backoff before marking the source failed; this keeps a
      // healthy provider from disappearing because of one 5xx/empty response.
      let token = await getAppToken();
      let data: { sources?: FetchedSrc[] } = { sources: [] };
      for (let attempt = 0; attempt < 2 && !ctrl.signal.aborted; attempt++) {
        let r = await fetch(`${API_BASE}/api/anime/fetch-source?${params}`, {
          signal: ctrl.signal,
          headers: token ? { "X-App-Token": token } : {},
        });
        // A token can expire between the cache check and the request.
        if (r.status === 403 && !ctrl.signal.aborted) {
          token = await getAppToken(true);
          r = await fetch(`${API_BASE}/api/anime/fetch-source?${params}`, {
            signal: ctrl.signal,
            headers: token ? { "X-App-Token": token } : {},
          });
        }
        if (r.ok) {
          data = (await r.json()) as { sources?: FetchedSrc[] };
          if (Array.isArray(data.sources) && data.sources.length > 0) break;
        }
        if (attempt === 0 && !ctrl.signal.aborted) {
          await new Promise((resolve) => setTimeout(resolve, 350));
        }
      }
      /* Availability rows may advertise 1080p while MegaPlay's current
         manifest only exposes 720p/360p. Retry without the tier filter so a
         real MP source is kept instead of deleting the clicked card. */
      if (!data.sources?.length && site === "megaplay" && !ctrl.signal.aborted) {
        const fallbackParams = new URLSearchParams(params);
        fallbackParams.delete("quality");
        try {
          const fallbackResponse = await fetch(`${API_BASE}/api/anime/fetch-source?${fallbackParams}`, {
            signal: ctrl.signal,
            headers: token ? { "X-App-Token": token } : {},
          });
          if (fallbackResponse.ok) {
            data = (await fallbackResponse.json()) as { sources?: FetchedSrc[] };
          }
        } catch {
          /* The normal failure path below keeps the row state consistent. */
        }
      }
      if (ctrl.signal.aborted) return;
      const srcs: FetchedSrc[] = (data.sources || [])
        .filter(
          (s) =>
            !BLOCKED_SOURCE_SITES.has(
              String(s.site || "")
                .trim()
                .toLowerCase(),
            ),
        )
        .filter((s) => !!(s.directUrl || s.url));

      /* The selected picker row is the server. Keep exactly one playable
         result for that server + requested quality. Do not preload the other
         mirrors or let them become player-server choices. */
      const selectedSrc = [...srcs].sort(
        (a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0),
      )[0];

      if (selectedSrc) {
        setSlotSources((prev) => ({
          ...prev,
          [site]: [
            ...(prev[site] || []).filter(
              (s) => getSrcQualityTier(s) !== requestedQuality,
            ),
            selectedSrc,
          ],
        }));
        setSlotStatus((prev) => ({ ...prev, [site]: "ready" }));
        setQualityStatus((prev) => ({ ...prev, [qualityKey]: "ready" }));
        if (animeId) saveAnimeSrcs(animeId, ep, site, [selectedSrc]);

        /* المستخدم اختار مصدرًا وجودة: شغّل هذا الرابط فقط. */
        if (!bgLoad) {
          autoPlayedRef.current = true;
          handlePlaySrc(selectedSrc);
        }
      } else {
        setSlotSources((prev) => ({
          ...prev,
          [site]: (prev[site] || []).filter(
            (src) => getSrcQualityTier(src) !== requestedQuality,
          ),
        }));
        setSlotStatus((prev) => ({ ...prev, [site]: "failed" }));
        setQualityStatus((prev) => ({ ...prev, [qualityKey]: "failed" }));
      }
    } catch {
      if (ctrl.signal.aborted) return;
      setSlotSources((prev) => ({
        ...prev,
        [site]: (prev[site] || []).filter(
          (src) => getSrcQualityTier(src) !== requestedQuality,
        ),
      }));
      setSlotStatus((prev) => ({ ...prev, [site]: "failed" }));
      setQualityStatus((prev) => ({ ...prev, [qualityKey]: "failed" }));
    } finally {
      clearTimeout(timeoutId);
      if (fetchControllersRef.current[requestControllerKey] === ctrl) {
        delete fetchControllersRef.current[requestControllerKey];
      }
      inFlightRef.current.delete(qualityKey);
    }
  }

  /* ── أوقف الطلبات المُجدولة (لم تبدأ بعد) فقط — لا تُلغِ الطلبات الجارية فعلياً.
     هذا يسمح لبقية المصادر بالإكمال وإضافة نفسها للـ picker (يحل مشكلة ظهور مصدر واحد فقط).
     الطلبات المُجدولة (second wave) تُلغى لتوفير bandwidth السيرفر بعد بدء التشغيل. ── */
  function cancelRemainingScrapers() {
    // أوقف الطلبات المُجدولة فقط (second wave لم تبدأ بعد)
    pendingTimeoutsRef.current.forEach((id) => window.clearTimeout(id));
    pendingTimeoutsRef.current = [];
    // لا تُلغِ fetchControllersRef — اتركها تكمل وتُضيف مصادرها للـ picker
  }

  /* ── Quick-resume: إذا كان هناك آخر مصدر شُغِّل وتقدُّم محفوظ → شغّله فوراً ── */
  useEffect(() => {
    if (!animeId || !titleParam) return;
    const savedProgress = parseFloat(
      localStorage.getItem(`wp-${animeId}-${ep}`) || "0",
    );
    if (savedProgress <= 30) return;
    const lastSrc = loadLastSrc(animeId, ep);
    if (!lastSrc || isIframeUrl(lastSrc.url)) return;

    const resumeSrc: FetchedSrc = {
      url: lastSrc.url,
      directUrl: lastSrc.url,
      qualityRank: lastSrc.qualityRank,
      site: "_resume",
      name: "آخر مصدر",
    };
    /* شغّل مصدر الاستئناف مباشرةً بدون انتظار المستخدم */
    autoPlayedRef.current = true;
    handlePlaySrc(resumeSrc);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  /* ── Static picker: المستخدم يختار المصدر يدوياً — لا جلب تلقائي عند الفتح ──
     المصادر تُجلب فقط عند الضغط على بطاقة المصدر (onFetchSite → handleFetchSite).
     quick-resume لا يزال يعمل عبر useEffect المنفصل أعلاه. ── */
  useEffect(() => {
    if (!animeId && !titleParam) return;
    autoPlayedRef.current = false;
    autoFetchAllRef.current = false;
    availabilityCheckedRef.current = false;
    setAvailabilityDone(false);
    setSlotSources({});
    setSlotStatus(EMPTY_SLOTS());
    setQualityStatus({});
    abortActiveSourceRequests();
    return () => {
      pendingTimeoutsRef.current.forEach((id) => window.clearTimeout(id));
      pendingTimeoutsRef.current = [];
      abortActiveSourceRequests();
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [animeId, ep]);

  /* ── Availability-only scan ───────────────────────────────────────────────
     The picker must not fetch playable URLs while it is only checking which
     servers/qualities exist. The backend's `mode=check` SSE path returns
     metadata rows without url/directUrl and does not probe media, manifests,
     segments, or MP4 files. A real URL is requested only after a row click. ── */
  useEffect(() => {
    if (phase !== "picker" || (!animeId && !titleParam)) return;
    const controller = new AbortController();
    let cancelled = false;
    autoFetchAllRef.current = false;
    setAvailabilityDone(false);
    setSlotSources({});
    setSlotStatus(EMPTY_SLOTS());
    setQualityStatus({});
    abortActiveSourceRequests();

    const params = new URLSearchParams();
    const resolvedTitle = anime?.title?.romaji || titleParam;
    if (!resolvedTitle) return () => controller.abort();
    params.set("title", resolvedTitle);
    if (anime?.title?.english || englishParam)
      params.set("english", anime?.title?.english || englishParam);
    if (animeId) params.set("anime", String(animeId));
    if (sp.get("anslayerId")) params.set("anslayerId", sp.get("anslayerId")!);
    params.set("ep", String(ep));
    if (anime?.format) params.set("format", String(anime.format));
    if (anime?.seasonYear) params.set("year", String(anime.seasonYear));
    if (anime?.title?.native) params.set("native", String(anime.title.native));
    if (anime?.episodes) params.set("episodes", String(anime.episodes));
    if (titleArParam) params.set("titleAr", titleArParam);
    const titleVariants = [
      anime?.title?.romaji,
      anime?.title?.english,
      anime?.title?.native,
      anime?.title?.userPreferred,
      ...(Array.isArray(anime?.synonyms) ? anime.synonyms : []),
      titleParam,
      englishParam,
      titleArParam,
    ]
      .filter((v): v is string => typeof v === "string" && v.trim().length > 0)
      .map((v) => v.trim())
      .filter((v, i, a) => a.indexOf(v) === i);
    if (titleVariants.length)
      params.set("titles", JSON.stringify(titleVariants));
    params.set("mode", "check");

    const applyCheckRow = (row: any) => {
      const site = String(row?.site || "").trim();
      if (!site || !SCRAPER_DEFS.some((def) => def.site === site)) return;
      // Keep this placeholder deliberately URL-free. It is availability
      // metadata only; handleFetchSite() performs the click-time URL fetch.
      const placeholder: FetchedSrc = {
        url: "",
        site,
        name: String(row.name || row.label || site),
        label: row.label,
        quality: String(row.quality || ""),
        qualityRank: Number(row.qualityRank) || 0,
        serverCount: Number(row.serverCount) || 1,
        verified: !!row.verified,
        available: true,
        checkOnly: true,
      };
      const tier = getSrcQualityTier(placeholder);
      setSlotSources((prev) => {
        const current = prev[site] || [];
        const withoutTier = current.filter(
          (src) => getSrcQualityTier(src) !== tier,
        );
        return { ...prev, [site]: [...withoutTier, placeholder] };
      });
      setSlotStatus((prev) => ({ ...prev, [site]: "ready" }));
      setQualityStatus((prev) => ({ ...prev, [`${site}::${tier}`]: "ready" }));
    };

    const run = async () => {
      try {
        const token = await getAppToken();
        const response = await fetch(
          `${API_BASE}/api/anime/sources-stream?${params}`,
          {
            signal: controller.signal,
            headers: token ? { "X-App-Token": token } : {},
          },
        );
        if (!response.ok || !response.body)
          throw new Error(`availability ${response.status}`);
        const reader = response.body.getReader();
        const decoder = new TextDecoder();
        let buffer = "";
        const consume = (text: string) => {
          buffer += text;
          const blocks = buffer.split(/\n\n/);
          buffer = blocks.pop() || "";
          for (const block of blocks) {
            const line = block
              .split(/\r?\n/)
              .find((item) => item.startsWith("data:"));
            const payload = line?.slice(5).trim();
            if (!payload || payload === "[DONE]") continue;
            try {
              applyCheckRow(JSON.parse(payload));
            } catch {
              /* ignore malformed SSE row */
            }
          }
        };
        while (!cancelled) {
          const { value, done } = await reader.read();
          if (done) break;
          if (value) consume(decoder.decode(value, { stream: true }));
        }
        consume(decoder.decode());
      } catch {
        if (!controller.signal.aborted) {
          // Keep static rows visible; a failed availability scan must not hide
          // servers or turn it into a playback request.
        }
      } finally {
        if (!cancelled) setAvailabilityDone(true);
      }
    };
    void run();
    return () => {
      cancelled = true;
      controller.abort();
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [animeId, ep]);

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
    setPlayerServers((prev) => {
      const next: Record<Quality, string[]> = {
        "1080p FHD": [...prev["1080p FHD"]],
        "720p HD": [...prev["720p HD"]],
        "360p SD": [...prev["360p SD"]],
      };
      for (const s of newFlat) {
        const u = s.directUrl || s.url;
        if (!u) continue;
        const tier = getSrcQualityTier(s);
        if (!next[tier].includes(u)) next[tier].push(u);
      }
      const changed = (["1080p FHD", "720p HD", "360p SD"] as Quality[]).some(
        (k) => JSON.stringify(next[k]) !== JSON.stringify(prev[k]),
      );
      return changed ? next : prev;
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [slotSources, phase]);

  /* ── FHD availability: when 1080p sources arrive, add them silently to the server list.
     We do NOT auto-switch quality here — that would remount EpisodePlayer and interrupt
     current playback. The user can manually switch quality via the quality selector. ── */
  useEffect(() => {
    if (phase !== "player") return;
    if (upgradedToFhdRef.current) return;
    if (quality === "1080p FHD") {
      upgradedToFhdRef.current = true;
      return;
    }
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
    const allFhdUs = fhdSrcs
      .map((s) => s.directUrl || s.url)
      .filter(Boolean) as string[];
    // إضافة مصادر 1080p بصمت — لا نبدّل الجودة تلقائياً لتجنّب إيقاف التشغيل الحالي
    setPlayerServers((prev) => ({
      ...prev,
      "1080p FHD": [...new Set([...prev["1080p FHD"], ...allFhdUs])],
    }));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [slotSources, phase, quality]);

  /* ── Play a specific source — show loading modal then switch to player ── */
  function handlePlaySrc(src: FetchedSrc) {
    /* Playback is starting — stop any not-yet-fired scheduled fetches from the auto-fetch-all
       wave to cap unnecessary scraper traffic (in-flight requests are left to finish so they
       can still populate the full server list). */
    cancelRemainingScrapers();
    const clickedUrl = src.directUrl || src.url;
    const clickedTier = getSrcQualityTier(src);

    /* The player receives only the link selected by the user. Other provider
       rows remain metadata-only until the user explicitly selects one. */
    const servers: Record<Quality, string[]> = {
      "1080p FHD": [],
      "720p HD": [],
      "360p SD": [],
    };
    servers[clickedTier].push(clickedUrl);

    /* ── kawaii CDN fallback: إذا فشل التشغيل المباشر، نجرّب عبر VPS proxy بـ Referer الصحيح ──
       cdn.momentoai.dev يشترط Referer: kawaiianime.cc — المتصفح لا يستطيع تعيينه → proxy fallback */
    const isKawaiiCdn =
      src.site === "kawaii" &&
      (clickedUrl.includes("cdn.momentoai.dev") ||
        clickedUrl.includes("video.kawaii-anime.com"));
    if (isKawaiiCdn) {
      const kawaiiRef = "https://kawaiianime.cc/";
      const isHlsKw = /\.m3u8([?#]|$)/i.test(clickedUrl);
      const kwProxy = isHlsKw
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(clickedUrl)}&ref=${encodeURIComponent(kawaiiRef)}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(clickedUrl)}&ref=${encodeURIComponent(kawaiiRef)}`;
      servers[clickedTier].splice(1, 0, kwProxy);
    }

    /* Store download URL + subtitle URL for player */
    setPlayerDlUrl(getDownloadUrl(src) || undefined);
    // المصادر اليابانية المطلوبة تستخدم ترجمة كواي كمسار موحّد للـ HLS.
    // إذا لم تصل ترجمة كواي بعد، نعود مؤقتاً لترجمة المصدر نفسه إن وُجدت.
    const skipExternalSub =
      ARABIC_SITES.has(src.site || "") ||
      RAW_AUDIO_ONLY_SITES.has(src.site || "");
    const preferredSubUrl = KAWAII_SUBTITLE_SITES.has(src.site || "")
      ? src.site === "kawaii"
        ? kawaiiSubUrl || src.subtitleUrl || undefined
        : kawaiiSubUrl || undefined
      : src.subtitleUrl || undefined;
    setPlayerSubUrl(
      skipExternalSub && !preferredSubUrl ? undefined : preferredSubUrl,
    );
    // Keep the episode-level Kawaii track cached so a later AK/AN/GO selection
    // can reuse it. It is masked for Arabic/burned-in providers at render time.
    // subtitle state resets automatically when EpisodePlayer remounts with new key
    playerSrcSiteRef.current = src.site || "";
    setPlayerSrcSite(src.site || "");
    setPlayerServers(servers);
    setQuality(clickedTier);
    setInitialSrv(0);
    /* playKey++ يضمن إعادة تهيئة EpisodePlayer الكاملة عند كل اختيار مصدر */
    setPlayKey((k) => k + 1);

    /* Save for quick-resume next time (skip embed URLs — they cause iframe flicker) */
    if (animeId && src.site !== "_resume" && !isIframeUrl(clickedUrl)) {
      saveLastSrc(animeId, ep, clickedUrl, src.qualityRank ?? 0, src.site);
    }

    setPhase("player");
  }

  const servers = playerServers[quality] || [];
  const activeKawaiiSubUrl =
    ARABIC_SITES.has(playerSrcSite) || RAW_AUDIO_ONLY_SITES.has(playerSrcSite)
      ? undefined
      : kawaiiSubUrl;

  if (phase === "picker") {
    /* Show full picker only when user navigated back from player */
    if (showPicker) {
      return (
        <_WatchBoundary resetKey={`picker-${playKey}-${boundaryResetKey}`}>
          <div className="fixed inset-0">
            <motion.div
              key="picker"
              initial={{ opacity: 0, y: 12 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.22, ease: "easeOut" }}
              className="fixed inset-0"
            >
              <ScraperPicker
                cover={cover}
                title={title}
                ep={ep}
                totalEps={totalEps}
                anime={anime}
                slotStatus={slotStatus}
                slotSources={slotSources}
                qualityStatus={qualityStatus}
                availabilityDone={availabilityDone}
                onFetchSite={handleFetchSite}
                onPlaySrc={handlePlaySrc}
                onBack={handleBack}
                animeId={animeId}
                onNextEp={() => (ep < totalEps ? goEp(ep + 1) : undefined)}
                onPrevEp={() => (ep > 1 ? goEp(ep - 1) : undefined)}
                singleSite={sp.get("single") === "1" ? sp.get("site") : null}
              />
              {/* ── Failed source toast notification ── */}
              <AnimatePresence>
                {failedSrcToast && (
                  <motion.div
                    key="failed-toast"
                    initial={{ opacity: 0, y: -20, scale: 0.92 }}
                    animate={{ opacity: 1, y: 0, scale: 1 }}
                    exit={{ opacity: 0, y: -16, scale: 0.95 }}
                    transition={{ duration: 0.22, ease: "easeOut" }}
                    className="fixed top-4 left-1/2 z-[9999] -translate-x-1/2 px-4 py-3 rounded-2xl flex items-center gap-2.5 font-['Cairo']"
                    style={{
                      background: "rgba(239,68,68,0.15)",
                      border: "1px solid rgba(239,68,68,0.35)",
                      backdropFilter: "blur(20px)",
                      boxShadow: "0 8px 32px rgba(0,0,0,0.45)",
                      maxWidth: "calc(100vw - 32px)",
                    }}
                    dir="rtl"
                  >
                    <span className="text-base shrink-0">⚠️</span>
                    <div>
                      <p className="text-red-300 font-black text-[12px] leading-tight">
                        السيرفر لم يستجب
                      </p>
                      <p className="text-white/45 text-[10px] leading-tight mt-0.5">
                        جرّب مصدراً آخر من القائمة
                      </p>
                    </div>
                  </motion.div>
                )}
              </AnimatePresence>
            </motion.div>
          </div>
        </_WatchBoundary>
      );
    }

    /* Initial load: show a beautiful loading screen while scrapers run */
    return (
      <div
        className="fixed inset-0 bg-[#07070d] overflow-hidden"
        dir="rtl"
        ref={(el) => {
          if (el) {
            try {
              (screen.orientation as any).lock?.("portrait").catch(() => {});
            } catch {}
          }
        }}
      >
        {/* Blurred bg */}
        {cover && (
          <div className="absolute inset-0">
            <img
              src={cover}
              alt=""
              className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.15] saturate-150"
            />
            <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/85 via-[#07070d]/50 to-[#07070d]/92" />
          </div>
        )}
        {/* Back button */}
        <button
          onClick={() => navigate(detailHref)}
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
          style={{
            background: "rgba(0,0,0,0.45)",
            border: "1px solid rgba(255,255,255,0.12)",
            backdropFilter: "blur(12px)",
          }}
        >
          <X className="w-5 h-5 text-white/60" />
        </button>

        <div className="relative h-full flex flex-col items-center justify-center gap-4 px-6">
          {/* Prayer — ABOVE poster */}
          <motion.p
            initial={{ opacity: 0, y: -8 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.05, duration: 0.4 }}
            className="text-white/85 text-[13px] font-black font-['Cairo'] tracking-wide text-center"
          >
            اللهم صلِّ وسلِّم على نبينا محمد ﷺ
          </motion.p>

          {/* Poster */}
          {cover ? (
            <motion.div
              className="relative shrink-0"
              initial={{ opacity: 0, y: 20, scale: 0.92 }}
              animate={{ opacity: 1, y: 0, scale: 1 }}
              transition={{
                delay: 0.08,
                duration: 0.45,
                ease: [0.22, 1, 0.36, 1],
              }}
            >
              <div
                className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{
                  background:
                    "radial-gradient(ellipse, rgba(139,92,246,0.25) 0%, transparent 68%)",
                }}
              />
              <img
                src={cover}
                alt={title || "أنمي"}
                className="rounded-2xl object-cover"
                style={{
                  width: "clamp(130px, 40vw, 176px)",
                  height: "clamp(184px, 57vw, 248px)",
                  boxShadow:
                    "0 28px 72px rgba(0,0,0,0.90), 0 0 0 1px rgba(255,255,255,0.09)",
                }}
              />
            </motion.div>
          ) : (
            <div
              className="rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{
                width: "clamp(130px, 40vw, 176px)",
                height: "clamp(184px, 57vw, 248px)",
                boxShadow: "0 0 0 1px rgba(255,255,255,0.06)",
              }}
            >
              <div className="w-16 h-16 rounded-full bg-violet-500/15 flex items-center justify-center">
                <div className="w-7 h-7 rounded-full bg-violet-500/35" />
              </div>
            </div>
          )}

          {/* Title + episode — BELOW poster */}
          <motion.div
            className="text-center"
            initial={{ opacity: 0, y: 10 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.18, duration: 0.38 }}
          >
            {title && (
              <h2
                className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
                style={{ textShadow: "0 2px 14px rgba(0,0,0,0.75)" }}
              >
                {title}
              </h2>
            )}
            <p className="text-white/35 text-[13px] font-['Cairo'] tracking-wide">
              الحلقة {ep}
              {arEpTitle || epTitle ? ` · ${arEpTitle || epTitle}` : ""}
            </p>
          </motion.div>

          {/* Spinner + message */}
          <motion.div
            className="flex flex-col items-center gap-3"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.3 }}
          >
            <div className="relative w-9 h-9">
              <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
              <motion.div
                className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
                animate={{ rotate: 360 }}
                transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }}
              />
            </div>
            <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">
              سوكونا يقاتل غوجو بجهد من اجل السيرفرات
            </p>
            <AnimeMascot mood="loading" />
          </motion.div>
        </div>
      </div>
    );
  }

  /* يستخدم key لإعادة تهيئة EpisodePlayer عند تغيير المصدر (playKey++) —
     بدون AnimatePresence حتى لا يبقى EpisodePlayer مُرندَراً أثناء exit animation
     عند الخروج (كان يُسبّب crash يُطلق error boundary). */
  return (
    <div key={`player-${playKey}`} className="fixed inset-0">
      <EpisodePlayer
        servers={servers}
        quality={quality}
        allServers={playerServers}
        initialServer={initialSrv}
        title={title}
        epTitle={arEpTitle || epTitle}
        animeTitle={animeTitle}
        animeId={animeId}
        cover={cover}
        ep={ep}
        totalEps={totalEps}
        isMovie={anime?.format === "MOVIE" || anime?.format === "MOVIE_SHORT"}
        downloadUrl={playerDlUrl}
        subtitleUrl={playerSubUrl || activeKawaiiSubUrl}
        kawaiiSubUrl={activeKawaiiSubUrl}
        subtitleSite={playerSrcSite}
        hideSubtitle={ARABIC_SITES.has(playerSrcSite) && !playerSubUrl}
        skipTimes={skipTimes}
        onBack={handleBack}
        onNextEp={() => (ep < totalEps ? goEp(ep + 1) : undefined)}
        onPrevEp={() => (ep > 1 ? goEp(ep - 1) : undefined)}
        onEpisodeSelect={(n) => {
          handleBack();
          setTimeout(() => goEp(n), 80);
        }}
        onChangeQuality={(q) => {
          setQuality(q);
          setInitialSrv(0);
        }}
        userId={userId}
        onTierExhausted={handleTierExhausted}
      />
    </div>
  );
}

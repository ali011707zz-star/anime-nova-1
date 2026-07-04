import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useRef, useCallback, useMemo } from "react";
import { AnimeMascot } from "@/components/AnimeMascot";
import { getAppToken } from "@/lib/appToken";
import { useLocation } from "wouter";
import {
  ChevronRight, Play, X,
  MonitorPlay, Download, ChevronLeft, List, ChevronDown, SkipForward,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer, { type SubSettings } from "@/components/player/RiftPlayer";
import EpComments from "@/components/EpComments";

/* ── SubCue + SubTrack ── */
interface SubCue  { start: number; end: number; text: string; }
interface SubTrack { id: string; lang: string; label: string; url: string; }
type SubChoice = "off" | "ar" | "ar-translated" | "ar-auto" | "en";
type SubStatus = "off" | "discovering" | "loading" | "translating" | "ready" | "failed";

/* ── كاش ترجمة الأنيميشن — L1 ذاكرة + L2 localStorage — TTL 7 أيام ── */
const _animSubCache = new Map<string, { cues: SubCue[]; ts: number }>();
const ANIM_SUB_TTL = 7 * 86_400_000;
function getAnimSubCached(key: string): SubCue[] | null {
  const hit = _animSubCache.get(key);
  if (hit && Date.now() - hit.ts <= ANIM_SUB_TTL) return hit.cues;
  if (hit) _animSubCache.delete(key);
  try {
    const raw = localStorage.getItem("sc2-" + key.slice(0, 160));
    if (raw) {
      const p = JSON.parse(raw) as { cues: SubCue[]; ts: number };
      if (Date.now() - p.ts <= ANIM_SUB_TTL) { _animSubCache.set(key, p); return p.cues; }
      localStorage.removeItem("sc2-" + key.slice(0, 160));
    }
  } catch { /* silent */ }
  return null;
}
function setAnimSubCached(key: string, cues: SubCue[]) {
  const entry = { cues, ts: Date.now() };
  _animSubCache.set(key, entry);
  try { localStorage.setItem("sc2-" + key.slice(0, 160), JSON.stringify(entry)); } catch { /* quota */ }
}

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
    const lStr = tsMapM[2].trim();
    const lm3 = lStr.match(/^(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
    const lm2 = lStr.match(/^(\d+):(\d{2})[,.](\d{1,3})/);
    const local = lm3
      ? parseInt(lm3[1])*3600 + parseInt(lm3[2])*60 + parseInt(lm3[3]) + parseInt(lm3[4].padEnd(3,"0"))/1000
      : lm2 ? parseInt(lm2[1])*60 + parseInt(lm2[2]) + parseInt(lm2[3].padEnd(3,"0"))/1000 : 0;
    tsOffset = Math.max(0, mpegts - local);
  }
  const toSec = (ts: string) => {
    const t = ts.trim();
    /* HH:MM:SS,mmm or HH:MM:SS.mmm */
    const m3 = t.match(/^(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
    if (m3) {
      const raw = parseInt(m3[1]) * 3600 + parseInt(m3[2]) * 60 + parseInt(m3[3]) + parseInt(m3[4].padEnd(3,"0")) / 1000;
      return Math.max(0, raw - tsOffset);
    }
    /* MM:SS.mmm  (VTT short format — no hours) */
    const m2 = t.match(/^(\d+):(\d{2})[,.](\d{1,3})/);
    if (m2) {
      const raw = parseInt(m2[1]) * 60 + parseInt(m2[2]) + parseInt(m2[3].padEnd(3,"0")) / 1000;
      return Math.max(0, raw - tsOffset);
    }
    return 0;
  };
  const blocks = normalized.split(/\n{2,}/);
  for (const block of blocks) {
    const lines = block.trim().split("\n");
    const timeLine = lines.find(l => l.includes("-->"));
    if (!timeLine) continue;
    const [startStr, endStr] = timeLine.split("-->").map(s => s.split(/\s/)[0].trim());
    const textLines = lines
      .filter(l => l !== timeLine && !/^\s*\d+\s*$/.test(l) && !/^WEBVTT|^NOTE|^STYLE/.test(l))
      .join(" ").replace(/<[^>]+>/g, "").replace(/\{[^}]+\}/g, "").trim();
    if (textLines) cues.push({ start: toSec(startStr), end: toSec(endStr), text: textLines });
  }
  return cues;
}

/* ── Merge + sort subtitle cue arrays (preserves timeline order) ── */
function _mergeAnimSubCues(existing: SubCue[], incoming: SubCue[]): SubCue[] {
  if (!existing.length) return incoming;
  const out = [...existing, ...incoming];
  out.sort((a, b) => a.start - b.start);
  return out;
}

/* ── Parse SSE chunk cues into SubCue[] ── */
function _parseAnimSseCues(raw: Array<{ timing: string; text: string }>): SubCue[] {
  const toSec = (ts: string) => {
    const t = ts.trim();
    const m3 = t.match(/^(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
    if (m3) return parseInt(m3[1]) * 3600 + parseInt(m3[2]) * 60 + parseInt(m3[3]) + parseInt(m3[4].padEnd(3, "0")) / 1000;
    const m2 = t.match(/^(\d+):(\d{2})[,.](\d{1,3})/);
    if (m2) return parseInt(m2[1]) * 60 + parseInt(m2[2]) + parseInt(m2[3].padEnd(3, "0")) / 1000;
    return 0;
  };
  return raw.map(c => {
    const parts = c.timing.split("-->");
    return { start: toSec(parts[0] || ""), end: toSec(parts[1] || ""), text: c.text };
  }).filter(c => c.start < c.end && c.text.trim().length > 0);
}

/**
 * Open an SSE stream to /translate-vtt-stream and deliver cues progressively.
 * Converts /translate-vtt?… → /translate-vtt-stream?… automatically.
 * Returns a cleanup() function — call on abort / unmount.
 */
function _streamAnimVttTranslation(
  vttUrl: string,
  callbacks: {
    onChunk: (cues: SubCue[], isFirst: boolean) => void;
    onDone:  (totalCues: number) => void;
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
    if (signal.aborted) { cleanup(); return cleanup; }
    signal.addEventListener("abort", cleanup, { once: true });
  }

  es.onmessage = (e: MessageEvent) => {
    if (closed || signal?.aborted) { cleanup(); return; }
    try {
      const msg = JSON.parse(e.data as string) as {
        type: string;
        cues?: Array<{ timing: string; text: string }>;
        totalCues?: number;
      };
      if (msg.type === "chunk" && msg.cues?.length) {
        const parsed = _parseAnimSseCues(msg.cues);
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
    } catch { /* ignore malformed chunk */ }
  };

  es.onerror = () => { if (!closed) { callbacks.onError(); cleanup(); } };

  return cleanup;
}

/* ── Quality tiers ── */
type QualityTier = "1080p FHD" | "720p HD" | "360p SD";
const QUALITY_STYLE: Record<QualityTier, { dot: string; badge: string; border: string; text: string; icon: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)", icon: "rgba(251,191,36,0.72)" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)", border: "rgba(52,211,153,0.24)", text: "rgba(110,231,183,0.92)", icon: "rgba(52,211,153,0.68)" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)", border: "rgba(148,163,184,0.16)", text: "rgba(148,163,184,0.70)", icon: "rgba(148,163,184,0.55)" },
};
const Q_LABEL: Record<QualityTier, string> = {
  "1080p FHD": "جودة عالية جداً · FHD 1080",
  "720p HD":   "جودة عالية · HD 720",
  "360p SD":   "جودة متوسطة · SD 360",
};
const Q_SHORT: Record<QualityTier, string> = { "1080p FHD": "FHD", "720p HD": "HD", "360p SD": "SD" };
const QUALITY_TIERS: QualityTier[] = ["1080p FHD", "720p HD", "360p SD"];

/* ── Source ── */
interface Source {
  url: string;
  label: string;
  directUrl?: string;
  proxyUrl?: string;
  subtitleUrl?: string;
  status?: "loading" | "ok" | "fail";
  tier?: QualityTier;
  isEmbed?: boolean;
  _retriedDirect?: boolean; // true after first retry with raw directUrl
}

function getSourceTier(src: Source): QualityTier {
  if (src.tier) return src.tier;
  const url = src.proxyUrl || src.directUrl || src.url;
  const lbl = src.label || "";
  // Check label for explicit quality keywords first (most reliable)
  const lblUp = lbl.toUpperCase();
  if (lblUp.includes("1080") || lblUp.includes("FHD") || lblUp.includes("4K") || lblUp.includes("2160")) return "1080p FHD";
  if (lblUp.includes("480") || lblUp.includes("360") || lblUp.includes("240") || lblUp.includes(" SD")) return "360p SD";
  if (lbl.startsWith("Icefy") || lbl.startsWith("Vyla")) return "1080p FHD";
  if (url.includes("hls-proxy")) {
    if (
      lbl.startsWith("VidLink") ||
      lbl.startsWith("Videasy") ||
      lbl.startsWith("EzVidAPI") ||
      lbl.includes("الثريا") || lbl.startsWith("StarCima") ||
      lbl.includes("Smashy") || lbl.includes("multiembed") ||
      lbl.includes("Najm") || lbl.startsWith("VidSrc VIP") ||
      lbl.startsWith("Wecima") || lbl.startsWith("TopCinema") ||
      lbl.startsWith("Moviz") ||
      lbl.startsWith("aflaam") || lbl.startsWith("LordFlix") ||
      lbl.startsWith("ArabSeed") || lbl.startsWith("SeePanal")
    ) return "1080p FHD";
    return "720p HD";
  }
  if (url.includes("video-proxy") || (src.directUrl || "").includes(".mp4")) return "720p HD";
  return "360p SD";
}
function isHlsUrl(url: string) {
  return url.includes(".m3u8") || url.includes("hls-proxy");
}
function wrapHls(url: string, ref: string) {
  return `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}
function wrapMp4(url: string, ref: string) {
  return `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}

/* ── Progress helpers ── */
function saveAnimProgress(tmdbId: string, type: string, season: number, ep: number, t: number) {
  if (!tmdbId || t < 5) return;
  localStorage.setItem(`anim-wp-${tmdbId}-${type}-${season}-${ep}`, String(Math.floor(t)));
}
function loadAnimProgress(tmdbId: string, type: string, season: number, ep: number) {
  return parseFloat(localStorage.getItem(`anim-wp-${tmdbId}-${type}-${season}-${ep}`) || "0") || 0;
}
function saveAnimHistory(tmdbId: string, type: string, title: string, poster: string, ep: number, season: number) {
  if (!tmdbId) return;
  try {
    const hist = JSON.parse(localStorage.getItem("anim-watch-history") || "[]");
    const item = { id: tmdbId, type, title, poster, ep, season, date: new Date().toISOString() };
    const filtered = hist.filter((h: any) => !(h.id === tmdbId && h.type === type && h.ep === ep && h.season === season));
    localStorage.setItem("anim-watch-history", JSON.stringify([item, ...filtered].slice(0, 50)));
  } catch { /* silent */ }
}

interface EpisodeItem { episode_number: number; name: string; runtime?: number; }

/* ══════════════════════════════════════════════════════════════════════ */
export default function AnimationWatch() {
  const [, navigate] = useLocation();
  const params      = useMemo(() => new URLSearchParams(window.location.search), []);
  const title       = params.get("title") || "";
  const type        = params.get("type")  || "movie";
  const ep          = parseInt(params.get("ep")     || "1", 10) || 1;
  const season      = parseInt(params.get("season") || "1", 10) || 1;
  const tmdbId      = params.get("id")    || "";
  const poster      = params.get("poster") || "";
  const posterUrl   = poster ? decodeURIComponent(poster) : "";
  const displayTitle = decodeURIComponent(title);

  const [step, setStep]         = useState<"loading" | "sources" | "playing" | "error">("loading");
  const [sources, setSources]   = useState<Source[]>([]);
  const [selSrc, setSelSrc]     = useState<Source | null>(null);
  const [sseDone, setSseDone]   = useState(false);
  const [episodes, setEpisodes] = useState<EpisodeItem[]>([]);
  const [showEpList, setShowEpList] = useState(false);

  /* ── User prefs (read once on mount) ── */
  const prefAutoplay = useRef(localStorage.getItem("pref-autoplay") !== "false");
  const prefSubSize  = useRef(localStorage.getItem("pref-subsize") || "large");
  const prefAutoSub  = useRef(localStorage.getItem("pref-autosub") !== "false");

  /* ── Subtitle state ── */
  const [subTracks,   setSubTracks]   = useState<SubTrack[]>([]);
  const [subChoice,   setSubChoice]   = useState<SubChoice>("ar-translated");
  const [subStatus,   setSubStatus]   = useState<SubStatus>("off");
  const [subCues,     setSubCues]     = useState<SubCue[]>([]);
  const [subTrigger,  setSubTrigger]  = useState(0);
  const [showSubPanel, setShowSubPanel] = useState(false);
  const [hlsTime,     setHlsTime]     = useState(0);
  const [ttsDub,      setTtsDub]      = useState(false);
  const ttsLastCueRef = useRef("");

  /* ── Skip intro / outro ── */
  const [skipIntro, setSkipIntro] = useState<{ start: number; end: number } | undefined>(undefined);
  const [skipOutro, setSkipOutro] = useState<{ start: number; end: number } | undefined>(undefined);

  const [subSettings, setSubSettings] = useState<SubSettings>({
    fontSize: 28, color: "#ffffff", bgOpacity: 0, bold: true, position: "bottom",
  });
  const subAbortRef = useRef<AbortController | null>(null);


  const esRef            = useRef<EventSource | null>(null);
  const seenUrls         = useRef(new Set<string>());
  const lastProgressSave = useRef(0);
  const histSavedRef     = useRef(false);
  const autoPlayedRef      = useRef(false);
  const autoPlayAttemptsRef = useRef(0);
  // upgradedToFhdRef removed — auto-upgrade disabled for animation section
  const sourceCountRef     = useRef(0);
  const sourcesRef         = useRef<Source[]>([]);
  const sseDoneRef         = useRef(false);

  /* ── Navigate back (episode list for TV, detail for movie) ── */
  const goToDetail = useCallback(() => {
    document.querySelectorAll<HTMLVideoElement>("video, audio").forEach(v => {
      try { v.pause(); v.src = ""; } catch {}
    });
    if (tmdbId && type) {
      if (type === "tv") navigate(`/animation/${type}/${tmdbId}/episodes?season=${season}`);
      else navigate(`/animation/${type}/${tmdbId}`);
    } else navigate("/animations");
  }, [tmdbId, type, season, navigate]);

  /* ── Keep sourcesRef + sseDoneRef in sync ── */
  useEffect(() => { sourcesRef.current = sources; }, [sources]);
  useEffect(() => { sseDoneRef.current = sseDone; }, [sseDone]);

  /* ── onFail ref pattern (prevents cascade bug) ── */
  const onFailRef    = useRef<() => void>(() => {});
  const stableOnFail = useCallback(() => onFailRef.current(), []);

  /* ── Play a source ── */
  const playSource = useCallback((src: Source) => {
    setSelSrc(src);
    setStep("playing");
    const lbl = (src.label || "").toLowerCase();
    if (lbl.startsWith("aflaam") || lbl.startsWith("arabseed")) {
      setSubCues([]); setSubStatus("off");
    }
  }, []); // eslint-disable-line

  /* ── playNext: retry direct URL once, then auto-cascade to next OK source ── */
  const playNext = useCallback(() => {
    setSelSrc(sel => {
      if (!sel) { setStep("sources"); return sel; }

      // First failure: if we used a proxy URL and raw directUrl differs → retry directly
      const hasRawFallback =
        !sel._retriedDirect &&
        sel.directUrl &&
        sel.proxyUrl &&
        sel.proxyUrl !== sel.directUrl &&
        !sel.directUrl.startsWith("/api/");

      if (hasRawFallback) {
        const retrySrc: Source = { ...sel, proxyUrl: sel.directUrl, _retriedDirect: true };
        setSources(prev => prev.map(s => s.url === sel.url ? retrySrc : s));
        setTimeout(() => playSource(retrySrc), 0);
        return retrySrc;
      }

      // Mark current source as failed
      const updatedSources = sourcesRef.current.map(
        s => s.url === sel.url ? { ...s, status: "fail" as const } : s
      );
      setSources(updatedSources);

      // Find next untried OK source
      const nextSrc = updatedSources.find(s => s.status === "ok" && s.url !== sel.url);
      if (nextSrc) {
        // Cascade seamlessly — stay on "playing" step, no picker flash
        autoPlayAttemptsRef.current += 1;
        setTimeout(() => playSource(nextSrc), 0);
        return sel;
      }

      // No more OK sources available
      if (sseDoneRef.current) {
        // SSE done → nothing more coming → show picker
        setStep("sources");
      } else {
        // SSE still running → wait for new sources to arrive via autoplay effect
        autoPlayedRef.current = false;
      }
      return sel;
    });
  }, [playSource]);

  useEffect(() => { onFailRef.current = playNext; }, [playNext]);

  /* ── Auto-play first available "ok" source (respects pref-autoplay setting) ── */
  /* Fast tier (immediate): Videasy, VidLink
     Slow tier (wait 5s for fast first): StarCima, Vyla, EzVidAPI, aflaam, SeePanal, …  */
  const autoPlayTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  useEffect(() => {
    if (autoPlayedRef.current) return;
    if (!prefAutoplay.current) return;
    const okSources = sources.filter(s => s.status === "ok");
    if (!okSources.length) return;

    const prefProxy = (arr: Source[], prefix: string) =>
      arr.find(s => s.label?.startsWith(prefix) && (s.proxyUrl?.startsWith("/api/") || s.directUrl?.startsWith("/api/"))) ??
      arr.find(s => s.label?.startsWith(prefix));

    // ── الأولوية القصوى: DU (Dulo) — يُشغَّل فور وصوله ──
    const dulo = okSources.find(s => s.label?.toLowerCase().startsWith("dulo"));
    if (dulo) {
      if (autoPlayTimerRef.current) { clearTimeout(autoPlayTimerRef.current); autoPlayTimerRef.current = null; }
      autoPlayAttemptsRef.current += 1;
      autoPlayedRef.current = true;
      playSource(dulo);
      return;
    }

    // ── FAST tier: Videasy & VidLink — play the instant they arrive ──
    const videasy = prefProxy(okSources, "Videasy");
    const vidlink = prefProxy(okSources, "VidLink");
    const fastSrc = vidlink ?? videasy;
    if (fastSrc) {
      if (autoPlayTimerRef.current) { clearTimeout(autoPlayTimerRef.current); autoPlayTimerRef.current = null; }
      autoPlayAttemptsRef.current += 1;
      autoPlayedRef.current = true;
      playSource(fastSrc);
      return;
    }

    // ── SLOW tier: other reliable sources ──
    const starcima     = prefProxy(okSources, "StarCima");
    const icefy        = okSources.find(s => s.label?.startsWith("Icefy") || s.label?.startsWith("Vyla"));
    const ezv          = prefProxy(okSources, "EzVidAPI");
    const aflaam       = okSources.find(s => s.label?.startsWith("aflaam") || s.label?.includes("أفلام"));
    const seepanel     = okSources.find(s => s.label?.startsWith("SeePanal"));
    const witcher      = okSources.find(s => s.label?.includes("AnimeWitcher"));
    const slowSrc      = starcima ?? icefy ?? ezv ?? aflaam ?? seepanel ?? witcher;

    // If SSE done → play best slow source now (fast sources never arrived)
    if (sseDone) {
      if (autoPlayTimerRef.current) { clearTimeout(autoPlayTimerRef.current); autoPlayTimerRef.current = null; }
      const best = slowSrc ?? okSources[0];
      autoPlayAttemptsRef.current += 1;
      autoPlayedRef.current = true;
      playSource(best);
      return;
    }

    // Wait 5s for fast sources to arrive; if they don't → fall back to slow
    if (slowSrc && !autoPlayTimerRef.current) {
      autoPlayTimerRef.current = setTimeout(() => {
        autoPlayTimerRef.current = null;
        if (autoPlayedRef.current) return;
        const stillOk = sources.filter(s => s.status === "ok");
        const duloNow = stillOk.find(s => s.label?.toLowerCase().startsWith("dulo"));
        const fastNow = duloNow ?? prefProxy(stillOk, "VidLink") ?? prefProxy(stillOk, "Videasy");
        if (fastNow) {
          autoPlayAttemptsRef.current += 1;
          autoPlayedRef.current = true;
          playSource(fastNow);
          return;
        }
        if (!stillOk.length) return;
        autoPlayAttemptsRef.current += 1;
        autoPlayedRef.current = true;
        playSource(stillOk[0]);
      }, 5_000);
    }
  }, [sources, sseDone, playSource]);

  /* Auto-upgrade disabled — sources in animation section are unreliable;
     letting it run causes unwanted cascade when FHD source fails */

  /* ── Time update (progress + subtitle sync) ── */
  const handleTimeUpdate = useCallback((t: number) => {
    setHlsTime(t);
    const now = Date.now();
    if (now - lastProgressSave.current < 5000) return;
    lastProgressSave.current = now;
    saveAnimProgress(tmdbId, type, season, ep, t);
  }, [tmdbId, type, season, ep]);

  /* ── Resolve play URL ── */
  const getSourceInfo = (src: Source): { url: string; isHls: boolean } => {
    const url   = src.proxyUrl || src.directUrl || src.url;
    const isHls = isHlsUrl(url);
    return { url, isHls };
  };

  /* ── Front-end extraction fallback ── */
  const tryExtract = useCallback(async (url: string) => {
    try {
      const r = await fetch(`${API_BASE}/api/anime/extract-video?url=${encodeURIComponent(url)}`);
      const d = await r.json();
      const raw = d.directUrl || d.url || "";
      // Keep raw URL as directUrl so retry-with-direct fallback can use it
      let proxyUrl = raw;
      if (raw && raw.includes(".m3u8")) proxyUrl = wrapHls(raw, url);
      else if (raw && !raw.startsWith("/api/")) proxyUrl = wrapMp4(raw, url);
      // On failure → "fail" (not "unknown") so source remains visible in picker
      setSources(prev => prev.map(s =>
        s.url === url
          ? { ...s, directUrl: raw || undefined, proxyUrl: raw ? proxyUrl : undefined, status: raw ? "ok" : "fail" as const }
          : s
      ));
    } catch {
      setSources(prev => prev.map(s => s.url === url ? { ...s, status: "fail" as const } : s));
    }
  }, []);

  /* ── Watch history ── */
  useEffect(() => {
    if (step !== "playing" || !selSrc || !tmdbId || histSavedRef.current) return;
    histSavedRef.current = true;
    saveAnimHistory(tmdbId, type, displayTitle, posterUrl, ep, season);
    /* حفظ على الخادم (للمستخدمين المسجّلين) */
    fetch(API_BASE + "/api/user/history", {
      method: "POST",
      credentials: "include",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        animeId:       tmdbId,
        animeTitle:    displayTitle,
        animeCover:    posterUrl,
        animeType:     "animation",
        episodeNumber: ep,
        seasonNumber:  season,
        tmdbId,
        mediaType:     type,
      }),
    }).catch(() => {});
  }, [step, selSrc, tmdbId, type, displayTitle, posterUrl, ep, season]);
  useEffect(() => { histSavedRef.current = false; }, [tmdbId, type, ep, season]);

  /* ── Episode list ── */
  useEffect(() => {
    if (type !== "tv" || !tmdbId) return;
    fetch(`${API_BASE}/api/animation/season?id=${tmdbId}&season=${season}`)
      .then(r => r.json())
      .then(d => setEpisodes(d.episodes || []))
      .catch(() => {});
  }, [type, tmdbId, season]);

  /* ── Skip times via AniSkip (للأنيمي الياباني) ── */
  useEffect(() => {
    if (type !== "tv") return;
    setSkipIntro(undefined); setSkipOutro(undefined);

    const skipCacheKey = `skip-anim-${tmdbId}-${ep}`;
    const malCacheKey  = `malid-anim-${tmdbId}`;

    // ── 1. تحميل فوري من localStorage إن وُجد ──
    try {
      const raw = localStorage.getItem(skipCacheKey);
      if (raw) {
        const { op, ed, exp } = JSON.parse(raw);
        if (Date.now() < exp) {
          if (op) setSkipIntro(op);
          if (ed) setSkipOutro(ed);
          return; // نتيجة مخزنة لمدة 7 أيام — لا داعي للطلب
        }
      }
    } catch {}

    const applySkip = (data: any) => {
      if (!data?.found) return;
      const op: { start: number; end: number } | undefined =
        data.results?.find((r: any) => (r.skip_type || r.skipType) === "op")?.interval &&
        { start: data.results.find((r: any) => (r.skip_type || r.skipType) === "op").interval.startTime,
          end:   data.results.find((r: any) => (r.skip_type || r.skipType) === "op").interval.endTime };
      const ed: { start: number; end: number } | undefined =
        data.results?.find((r: any) => (r.skip_type || r.skipType) === "ed")?.interval &&
        { start: data.results.find((r: any) => (r.skip_type || r.skipType) === "ed").interval.startTime,
          end:   data.results.find((r: any) => (r.skip_type || r.skipType) === "ed").interval.endTime };
      if (op) setSkipIntro(op);
      if (ed) setSkipOutro(ed);
      if (op || ed) {
        try { localStorage.setItem(skipCacheKey, JSON.stringify({ op, ed, exp: Date.now() + 7 * 86400_000 })); } catch {}
      }
    };

    const fetchSkip = (malId: number) =>
      fetch(`${API_BASE}/api/anime/aniskip?malId=${malId}&ep=${ep}`, { signal: AbortSignal.timeout(10_000) })
        .then(r => r.ok ? r.json() : null)
        .then(applySkip)
        .catch(() => {});

    // ── 2. استخدم MAL ID المخزن مسبقاً إن وُجد ──
    const cachedMal = localStorage.getItem(malCacheKey);
    if (cachedMal && Number(cachedMal) > 0) {
      fetchSkip(Number(cachedMal));
      return;
    }

    // ── 3. ابحث عبر AniList بالعنوان للحصول على MAL ID ──
    const ANILIST_Q = `query ($s: String) { Media(search: $s, type: ANIME) { idMal } }`;
    fetch(API_BASE + "/api/anilist", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: ANILIST_Q, variables: { s: displayTitle } }),
      signal: AbortSignal.timeout(10_000),
    })
      .then(r => r.ok ? r.json() : null)
      .then((al: any) => {
        const malId: number | null = al?.data?.Media?.idMal ?? null;
        if (!malId || malId <= 0) return;
        try { localStorage.setItem(malCacheKey, String(malId)); } catch {}
        return fetchSkip(malId);
      })
      .catch(() => {});
  }, [tmdbId, type, ep, displayTitle]);

  /* ── SSE stream ── */
  useEffect(() => {
    setStep("loading"); setSources([]); setSelSrc(null); setSseDone(false);
    setSubCues([]); setSubStatus("off"); setSubChoice("ar-translated"); setHlsTime(0); setShowSubPanel(false);
    seenUrls.current.clear(); histSavedRef.current = false; autoPlayedRef.current = false; sourceCountRef.current = 0;

    let localEs: EventSource | null = null;
    let alive = true;

    getAppToken().then(tok => {
      if (!alive) return;
      const tokParam = tok ? `&_tok=${encodeURIComponent(tok)}` : "";
      const q = `/api/animation/sources-stream?title=${encodeURIComponent(decodeURIComponent(title))}&type=${type}&ep=${ep}&season=${season}&tmdbId=${encodeURIComponent(tmdbId)}${tokParam}`;
      const es = new EventSource(q);
      localEs = es;
      esRef.current = es;

      es.addEventListener("source", (e) => {
        if (!alive) return;
        const src = JSON.parse(e.data) as { url: string; label: string; directUrl?: string; proxyUrl?: string; subtitleUrl?: string; isEmbed?: boolean };

        // Embed sources (e.g. Mega.nz) — أضفها مباشرة كـ isEmbed بدون proxy wrapping
        if (src.isEmbed) {
          const embedKey = src.url;
          if (seenUrls.current.has(embedKey)) return;
          seenUrls.current.add(embedKey);
          const embedSrc: Source = {
            url: src.url, label: src.label,
            subtitleUrl: src.subtitleUrl, status: "ok", isEmbed: true,
          };
          sourceCountRef.current += 1;
          setSources(prev => [...prev, embedSrc]);
          return;
        }

        const key = src.directUrl || src.url;
        if (seenUrls.current.has(key)) return;
        seenUrls.current.add(key);

        let newSrc: Source;
        if (src.directUrl || src.proxyUrl) {
          const resolved = src.proxyUrl || src.directUrl!;
          const hl       = isHlsUrl(resolved);
          const proxyUrl = src.proxyUrl || (hl ? wrapHls(src.directUrl!, window.location.origin) : wrapMp4(src.directUrl!, window.location.origin));
          newSrc = { url: src.url, label: src.label, directUrl: src.directUrl, proxyUrl, subtitleUrl: src.subtitleUrl, status: "ok" };
        } else {
          newSrc = { url: src.url, label: src.label, subtitleUrl: src.subtitleUrl, status: "loading" };
          tryExtract(src.url);
        }
        sourceCountRef.current += 1;
        setSources(prev => [newSrc, ...prev]);
      });

      es.addEventListener("done", () => {
        es.close(); setSseDone(true);
      });
      es.addEventListener("error", () => { /* ignore — done will fire */ });
      es.onerror = () => { es.close(); setSseDone(true); };
    });

    return () => {
      alive = false;
      localEs?.close();
      esRef.current?.close();
    };
  }, [title, type, ep, season, tmdbId, tryExtract]);

  /* ── Step transitions on SSE done (sourceCountRef avoids stale closure) ── */
  useEffect(() => {
    if (!sseDone) return;
    setStep(prev => prev === "playing" ? prev : (sourceCountRef.current === 0 ? "error" : "sources"));
  }, [sseDone]);

  /* ── Subtitle helpers ── */
  const parseTiming = (t: string): number => {
    const parts = t.trim().split(":");
    if (parts.length === 3) return parseInt(parts[0]) * 3600 + parseInt(parts[1]) * 60 + parseFloat(parts[2]);
    if (parts.length === 2) return parseInt(parts[0]) * 60 + parseFloat(parts[1]);
    return 0;
  };
  const SC_REF = encodeURIComponent("https://starcima.com/");

  // Fetch VTT/SRT file via server proxy and parse into SubCue[]
  const fetchVttParsed = useCallback(async (url: string, signal?: AbortSignal): Promise<SubCue[]> => {
    try {
      const r = await fetch(`${API_BASE}/api/anime/proxy-text?url=${encodeURIComponent(url)}&ref=${SC_REF}`, {
        signal: signal ?? AbortSignal.timeout(10_000),
      });
      if (!r.ok) return [];
      return parseSrt(await r.text());
    } catch { return []; }
  }, []);

  // يشغّل بث SSE لأي translate-vtt endpoint جاهز ويُجمّع الأكواد تدريجياً
  const _runVttStream = useCallback((
    translateUrl: string,
    signal?: AbortSignal,
    onProgress?: (cues: SubCue[], isFirst: boolean) => void,
  ): Promise<SubCue[]> => {
    return new Promise<SubCue[]>((resolve) => {
      let allCues: SubCue[] = [];
      const cleanup = _streamAnimVttTranslation(translateUrl, {
        onChunk: (incoming, isFirst) => {
          if (signal?.aborted) { resolve(allCues); return; }
          allCues = _mergeAnimSubCues(allCues, incoming);
          onProgress?.(allCues, isFirst);
        },
        onDone: () => resolve(allCues),
        onError: () => resolve(allCues),
      }, signal);
      signal?.addEventListener("abort", () => { cleanup(); resolve(allCues); }, { once: true });
    });
  }, []);

  // Translate a raw VTT URL → Arabic تدريجياً عبر SSE stream — أول دفعة تظهر خلال ~3 ثوانٍ
  // بدلاً من الانتظار الكامل حتى تنتهي كل الترجمة (كان يستغرق حتى دقيقتين).
  const translateVttUrl = useCallback(async (
    url: string,
    signal?: AbortSignal,
    onProgress?: (cues: SubCue[], isFirst: boolean) => void,
  ): Promise<SubCue[]> => {
    const proxyUrl = `/api/anime/proxy-text?url=${encodeURIComponent(url)}&ref=${SC_REF}`;
    const translateUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(proxyUrl)}&from=en&to=ar`;
    return _runVttStream(translateUrl, signal, onProgress);
  }, [_runVttStream]);

  // Load a single track — direct parse or server-side translation; returns true on success
  const loadSubTrack = useCallback(async (track: SubTrack, mode: "direct" | "translate", signal?: AbortSignal): Promise<boolean> => {
    // مفتاح موحّد للترجمة: نفس الحلقة = نفس الكاش حتى لو تغيّر السيرفر
    const normKey = mode === "translate" || track.url.includes("translate-vtt")
      ? `sub-ar-anim-${tmdbId}-${type}-s${season}-e${ep}`
      : `sub-${track.lang}-anim-${tmdbId}-${type}-s${season}-e${ep}`;

    // ✅ فحص كاش أولاً (L1 + L2 localStorage)
    const cachedHit = getAnimSubCached(normKey) ?? getAnimSubCached(track.url);
    if (cachedHit) {
      setSubCues(cachedHit); setSubStatus("ready"); return true;
    }

    setSubCues([]);
    // If the URL is already a translate-vtt endpoint → استخدم البث التدريجي (SSE) بدلاً من الانتظار الكامل
    if (track.url.startsWith("/api/anime/translate-vtt") || track.url.startsWith("/api/animation/translate-vtt")) {
      setSubStatus("translating");
      const cues = await _runVttStream(track.url, signal, (progressive, isFirst) => {
        if (isFirst) setSubStatus("translating");
        setSubCues(progressive);
      });
      if (signal?.aborted) return false;
      if (cues.length > 0) {
        setAnimSubCached(normKey, cues);
        setAnimSubCached(track.url, cues);
        setSubCues(cues); setSubStatus("ready"); return true;
      }
      setSubStatus("failed");
      return false;
    }
    setSubStatus(mode === "translate" ? "translating" : "loading");
    const cues = mode === "translate"
      ? await translateVttUrl(track.url, signal, (progressive, isFirst) => {
          if (isFirst) setSubStatus("translating");
          setSubCues(progressive);
        })
      : await fetchVttParsed(track.url, signal);
    if (signal?.aborted) return false;
    if (cues.length > 0) {
      setAnimSubCached(normKey, cues);
      setAnimSubCached(track.url, cues);
      setSubCues(cues); setSubStatus("ready"); return true;
    }
    setSubStatus("failed");
    return false;
  }, [fetchVttParsed, translateVttUrl, tmdbId, type, season, ep]);

  // Manual subtitle choice — user picks language option
  const changeSubChoice = useCallback(async (choice: SubChoice) => {
    subAbortRef.current?.abort();
    const ctrl = new AbortController();
    subAbortRef.current = ctrl;
    setSubChoice(choice);
    if (choice === "off") { setSubCues([]); setSubStatus("off"); return; }
    const arTrack   = subTracks.find(t => t.lang === "ar");
    const arAutoTrk = subTracks.find(t => t.lang === "ar-auto");
    const enTrack   = subTracks.find(t => t.lang === "en");
    if (choice === "ar") {
      if (!arTrack) { setSubStatus("failed"); return; }
      await loadSubTrack(arTrack, "direct", ctrl.signal);
    } else if (choice === "ar-translated" || choice === "ar-auto") {
      const trk = arAutoTrk ?? enTrack;
      if (!trk) { setSubStatus("failed"); return; }
      await loadSubTrack(trk, arAutoTrk ? "direct" : "translate", ctrl.signal);
    } else if (choice === "en") {
      if (!enTrack) { setSubStatus("failed"); return; }
      await loadSubTrack(enTrack, "direct", ctrl.signal);
    }
  }, [subTracks, loadSubTrack]);

  /* ── Retry subtitle loading (called by user — always forces load) ── */
  const forceSubRef = useRef(false);
  const retrySubtitles = useCallback(() => {
    forceSubRef.current = true;
    setSubTrigger(t => t + 1);
  }, []);

  /* ── Source subtitle: when the playing source carries its own subtitleUrl, inject it ── */
  useEffect(() => {
    const subUrl = selSrc?.subtitleUrl;
    if (!subUrl) return;

    // Determine if it's a translate-vtt endpoint (English→Arabic) or direct VTT
    const isTranslate = subUrl.includes("translate-vtt");
    const synLang = isTranslate ? ("ar-auto" as const) : ("ar" as const);
    const synTrack: SubTrack = {
      id: "source-subtitle",
      lang: synLang,
      label: isTranslate ? "عربي مُترجم · المصدر" : "عربي · المصدر",
      url: subUrl,
    };

    // Inject into tracks if not already present
    setSubTracks(prev => {
      if (prev.some(t => t.url === subUrl)) return prev;
      return [synTrack, ...prev];
    });

    // Auto-load only if currently no subtitle is ready/loading
    if (subStatus === "off" || subStatus === "failed") {
      subAbortRef.current?.abort();
      const ctrl = new AbortController();
      subAbortRef.current = ctrl;
      loadSubTrack(synTrack, "direct", ctrl.signal);
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [selSrc?.subtitleUrl]);

  /* ── Discover + auto-load subtitle tracks whenever episode/trigger changes ── */
  useEffect(() => {
    subAbortRef.current?.abort();
    const forced = forceSubRef.current;
    forceSubRef.current = false;
    setSubTracks([]); setSubCues([]); setSubChoice("ar-translated"); setSubStatus("discovering");
    if (!tmdbId) { setSubStatus("off"); return; }

    // Main ctrl: cancelled only on unmount / episode change (no hard timeout)
    const ctrl = new AbortController();
    subAbortRef.current = ctrl;

    (async () => {
      try {
        // ── Phase 1: fetch tracks list — 18s cap via a separate trackCtrl ──
        const trackCtrl = new AbortController();
        const trackTid = setTimeout(() => trackCtrl.abort(), 18_000);
        ctrl.signal.addEventListener("abort", () => trackCtrl.abort(), { once: true });

        let r: Response;
        try {
          r = await fetch(
            `/api/animation/subtitle-tracks?tmdbId=${encodeURIComponent(tmdbId)}&type=${type}&ep=${ep}&season=${season}&title=${encodeURIComponent(displayTitle)}`,
            { signal: trackCtrl.signal }
          );
        } finally { clearTimeout(trackTid); }

        if (ctrl.signal.aborted) return;
        if (!r.ok) { setSubStatus("failed"); return; }

        const d = await r.json() as { tracks?: SubTrack[] };
        const tracks: SubTrack[] = d.tracks || [];
        setSubTracks(tracks);

        // If auto-subtitle disabled and not a forced retry → discover tracks only, don't load
        if (!prefAutoSub.current && !forced) { setSubStatus("off"); return; }

        // ── Phase 2: translate English → Arabic (may take ~60s; ctrl has no hard timeout) ──
        // Always prefer translation (عربي مترجم) — more reliable than direct Arabic CDN
        const enTrack = tracks.find(t => t.lang === "en");
        const arTrack = tracks.find(t => t.lang === "ar");

        if (enTrack) {
          setSubChoice("ar-translated");
          await loadSubTrack(enTrack, "translate", ctrl.signal);
        } else if (arTrack) {
          // No English available → try direct Arabic as last resort
          setSubChoice("ar");
          await loadSubTrack(arTrack, "direct", ctrl.signal);
        } else {
          setSubStatus("failed");
        }
      } catch {
        if (!ctrl.signal.aborted) setSubStatus("failed");
      }
    })();

    return () => ctrl.abort();
  }, [tmdbId, type, ep, season, subTrigger]); // eslint-disable-line

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

  useEffect(() => {
    if (!ttsDub) { window.speechSynthesis.cancel(); ttsLastCueRef.current = ""; }
  }, [ttsDub]);

  /* ── Resume time ── */
  const resumeTime = useMemo(
    () => (selSrc && step === "playing" ? loadAnimProgress(tmdbId, type, season, ep) : 0),
    [selSrc, step, tmdbId, type, season, ep]
  );

  /* ── Grouped sources for picker ── */
  const grouped = useMemo(() => {
    const g: Record<QualityTier, Source[]> = { "1080p FHD": [], "720p HD": [], "360p SD": [] };
    for (const s of sources) {
      // Show ok + fail sources; skip loading (shown as spinner) and skip unknown only if no url
      if (s.status === "loading") continue;
      g[getSourceTier(s)].push(s);
    }
    return g;
  }, [sources]);

  const hasSources = sources.some(s => s.status !== "loading");

  /* ────────────────────────── LOADING SCREEN ─────────────────────────────── */
  if (step === "loading") {
    return (
      <div className="fixed inset-0 bg-[#07070d] overflow-hidden" dir="rtl">
        {posterUrl && (
          <div className="absolute inset-0">
            <img src={posterUrl} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.15] saturate-150" />
            <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/85 via-[#07070d]/50 to-[#07070d]/92" />
          </div>
        )}
        <button onClick={goToDetail}
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
          style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)" }}>
          <ChevronRight className="w-5 h-5 text-white/60" />
        </button>

        <div className="relative h-full flex flex-col items-center justify-center gap-6 px-6">
          {/* Prayer — ABOVE poster */}
          <motion.p
            initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.05, duration: 0.4 }}
            className="text-white/85 text-[14px] font-black font-['Cairo'] tracking-wide text-center">
            اللهم صلِّ وسلِّم على نبينا محمد ﷺ
          </motion.p>

          {posterUrl ? (
            <div className="relative shrink-0">
              <div className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{ background: "radial-gradient(ellipse, rgba(139,92,246,0.22) 0%, transparent 68%)" }} />
              <img src={posterUrl} alt={displayTitle}
                className="w-44 h-[248px] rounded-2xl object-cover"
                style={{ boxShadow: "0 28px 72px rgba(0,0,0,0.88), 0 0 0 1px rgba(255,255,255,0.08)" }} />
            </div>
          ) : (
            <div className="w-44 h-[248px] rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{ boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
              <div className="w-16 h-16 rounded-full bg-violet-500/15 flex items-center justify-center">
                <div className="w-7 h-7 rounded-full bg-violet-500/35" />
              </div>
            </div>
          )}

          <div className="text-center">
            {displayTitle && (
              <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
                style={{ textShadow: "0 2px 14px rgba(0,0,0,0.75)" }}>{displayTitle}</h2>
            )}
            {type === "tv" && (
              <p className="text-white/35 text-[13px] font-['Cairo'] tracking-wide">الحلقة {ep}</p>
            )}
          </div>

          <div className="flex flex-col items-center gap-3">
            <AnimeMascot mood="loading" />
            <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.</p>

            {/* Subtitle preparation indicator — shown while translating during episode load */}
            {(subStatus === "translating" || subStatus === "discovering") && (
              <div className="flex items-center gap-2 px-3 py-1.5 rounded-full"
                style={{ background: "rgba(139,92,246,0.10)", border: "1px solid rgba(139,92,246,0.20)" }}>
                <motion.span className="inline-block w-1.5 h-1.5 rounded-full bg-violet-400/70"
                  animate={{ opacity: [0.4, 1, 0.4] }} transition={{ duration: 1.2, repeat: Infinity }} />
                <span className="text-violet-300/70 text-[10px] font-['Cairo'] font-semibold">
                  {subStatus === "translating" ? "جاري تحضير الترجمة العربية…" : "يبحث عن ملف الترجمة…"}
                </span>
              </div>
            )}
          </div>
        </div>
      </div>
    );
  }

  /* ────────────────────────── PLAYER ─────────────────────────────────────── */
  if (step === "playing" && selSrc) {

    // Embed sources (e.g. Mega.nz) — تشغيل داخل iframe محمي
    if (selSrc.isEmbed) {
      return (
        <div className="fixed inset-0 bg-black overflow-hidden" dir="rtl">
          <iframe
            key={selSrc.url}
            src={selSrc.url}
            className="absolute inset-0 w-full h-full border-0"
            sandbox="allow-scripts allow-same-origin allow-forms allow-presentation allow-popups allow-downloads"
            allow="fullscreen; autoplay; picture-in-picture"
            title={displayTitle}
          />
          {/* شريط أعلوي للرجوع */}
          <div className="absolute top-0 left-0 right-0 z-10 flex items-center gap-3 px-4 pointer-events-auto"
            style={{
              paddingTop: "max(14px, env(safe-area-inset-top))",
              paddingBottom: 10,
              background: "linear-gradient(to bottom, rgba(0,0,0,0.75) 0%, transparent 100%)",
            }}>
            <button
              onClick={() => setStep("sources")}
              className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
              style={{ background: "rgba(0,0,0,0.55)", border: "1px solid rgba(255,255,255,0.15)" }}>
              <svg className="w-5 h-5 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M9 5l7 7-7 7" />
              </svg>
            </button>
            <p className="text-white text-[13px] font-black font-['Cairo'] truncate">{displayTitle}</p>
          </div>
        </div>
      );
    }

    const { url, isHls } = getSourceInfo(selSrc);
    return (
      <div className="fixed inset-0 bg-black" dir="rtl">
        <RiftPlayer
          key={`anim-${selSrc.url}`}
          src={url}
          isHls={isHls}
          title={displayTitle}
          ep={type === "tv" ? ep : undefined}
          totalEps={episodes.length || undefined}
          qualityLabel={Q_SHORT[getSourceTier(selSrc)]}
          resumeTime={resumeTime > 10 ? resumeTime : undefined}
          skipIntro={skipIntro}
          skipOutro={skipOutro}
          subCues={subStatus === "ready" && subCues.length > 0 ? subCues : undefined}
          subEnabled={subStatus === "ready" && subCues.length > 0}
          subNote={
            subStatus === "failed"     ? "لا تتوفر ترجمة" :
            subStatus === "translating"? "جاري الترجمة للعربية…" :
            subStatus === "loading"    ? "جاري تحميل الترجمة…" :
            subStatus === "discovering"? "يبحث عن الترجمة…" :
            undefined
          }
          subSettings={subSettings}
          onSubSettingsChange={setSubSettings}
          onSubtitleClick={() => {
            setShowSubPanel(p => !p);
            if (subStatus === "failed" || subStatus === "off") retrySubtitles();
          }}
          onTimeUpdate={handleTimeUpdate}
          onFail={stableOnFail}
          onBack={() => setStep("sources")}
          onNextEp={type === "tv" && ep < (episodes.length || 999)
            ? () => {
                const np = new URLSearchParams(window.location.search);
                np.set("ep", String(ep + 1));
                navigate(`/animation/watch?${np.toString()}`);
              }
            : undefined
          }
          onPrevEp={type === "tv" && ep > 1
            ? () => {
                const np = new URLSearchParams(window.location.search);
                np.set("ep", String(ep - 1));
                navigate(`/animation/watch?${np.toString()}`);
              }
            : undefined
          }
        />
        <AnimatePresence>
          {showSubPanel && (
            <SubPanel
              tracks={subTracks} choice={subChoice} status={subStatus} cues={subCues}
              ttsDub={ttsDub}
              onChoiceChange={changeSubChoice}
              onTtsDub={setTtsDub}
              onClose={() => setShowSubPanel(false)}
            />
          )}
        </AnimatePresence>
      </div>
    );
  }

  /* ────────────────────────── SOURCE PICKER ───────────────────────────────── */
  return (
    <div className="fixed inset-0 flex flex-col bg-[#06060c]" dir="rtl">

      {/* ── Nav bar ── */}
      <div className="flex items-center shrink-0"
        style={{
          borderBottom: "1px solid rgba(255,255,255,0.05)",
          paddingTop: "max(16px, env(safe-area-inset-top))",
          paddingBottom: 14, paddingRight: 4, paddingLeft: 14,
        }}>
        <button onClick={goToDetail}
          className="w-11 h-11 flex items-center justify-center active:scale-90 shrink-0 rounded-xl transition-all"
          style={{ background: "rgba(255,255,255,0.07)", border: "1px solid rgba(255,255,255,0.11)" }}>
          <ChevronRight className="w-5 h-5 text-white/70" />
        </button>

        {posterUrl && (
          <img src={posterUrl} alt="" className="w-7 h-9 rounded-lg object-cover opacity-55 shrink-0 ml-1" />
        )}

        <div className="flex-1 min-w-0 px-2">
          <p className="text-white font-black text-[15px] font-['Cairo'] truncate leading-tight"
            style={{ textShadow: "0 1px 8px rgba(0,0,0,0.6)" }}>{displayTitle}</p>
          <div className="flex items-center gap-1.5 mt-[5px] flex-wrap">
            {type === "tv" && (
              <span className="px-2 py-[3px] rounded-full text-[10px] font-black font-['Cairo']"
                style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.32)", color: "rgba(196,181,253,0.92)" }}>
                الحلقة {ep}
              </span>
            )}
            {hasSources && (
              <span className="px-2 py-[3px] rounded-full text-[10px] font-black font-['Cairo']"
                style={{ background: "rgba(52,211,153,0.12)", border: "1px solid rgba(52,211,153,0.26)", color: "rgba(110,231,183,0.82)" }}>
                {sources.filter(s => s.status === "ok").length} مصدر
              </span>
            )}
            {(subStatus === "ready" || subStatus === "loading" || subStatus === "translating" || subStatus === "discovering") && (
              <button onClick={() => setShowSubPanel(p => !p)}
                className="px-2 py-[3px] rounded-full text-[10px] font-black font-['Cairo'] active:scale-90 transition-transform"
                style={{
                  background: subStatus === "ready" ? "rgba(59,130,246,0.12)" : "rgba(139,92,246,0.10)",
                  border: `1px solid ${subStatus === "ready" ? "rgba(59,130,246,0.26)" : "rgba(139,92,246,0.22)"}`,
                  color: subStatus === "ready" ? "rgba(147,197,253,0.85)" : "rgba(196,181,253,0.65)",
                }}>
                {subStatus === "ready" ? "ترجمة ✓" : "ترجمة…"}
              </button>
            )}
          </div>
        </div>

        {type === "tv" && (
          <div className="flex items-center gap-2 shrink-0">
            <button onClick={() => {
              const np = new URLSearchParams(window.location.search);
              np.set("ep", String(ep - 1));
              navigate(`/animation/watch?${np.toString()}`);
            }} disabled={ep <= 1}
              className="flex items-center gap-1.5 px-4 py-2.5 rounded-xl transition-all active:scale-90 disabled:opacity-20"
              style={{ background: "rgba(255,255,255,0.09)", border: "1px solid rgba(255,255,255,0.13)" }}>
              <ChevronRight className="w-4 h-4 text-white/70" />
              <span className="text-white/65 text-[12px] font-bold font-['Cairo'] leading-none">السابقة</span>
            </button>
            <button onClick={() => {
              const np = new URLSearchParams(window.location.search);
              np.set("ep", String(ep + 1));
              navigate(`/animation/watch?${np.toString()}`);
            }} disabled={ep >= (episodes.length || 999)}
              className="flex items-center gap-1.5 px-4 py-2.5 rounded-xl transition-all active:scale-90 disabled:opacity-20"
              style={{ background: "rgba(124,58,237,0.22)", border: "1px solid rgba(124,58,237,0.38)" }}>
              <span className="text-violet-300/90 text-[12px] font-bold font-['Cairo'] leading-none">التالية</span>
              <ChevronLeft className="w-4 h-4 text-violet-300/80" />
            </button>
          </div>
        )}
      </div>

      {/* ── Scrollable source list ── */}
      <div className="flex-1 overflow-y-auto" style={{ paddingBottom: "max(32px, env(safe-area-inset-bottom))" }}>

        {(!hasSources && sseDone) ? (
          <NoSourcesMessage
            type={type} ep={ep}
            onPrevEp={type === "tv" && ep > 1 ? () => {
              const np = new URLSearchParams(window.location.search);
              np.set("ep", String(ep - 1));
              navigate(`/animation/watch?${np.toString()}`);
            } : undefined}
          />
        ) : (
          <>
            {QUALITY_TIERS.map(q => {
              const srcs = grouped[q];
              if (!srcs.length) return null;
              const qs = QUALITY_STYLE[q];
              let rowIdx = 0;
              for (const prevQ of QUALITY_TIERS) {
                if (prevQ === q) break;
                rowIdx += grouped[prevQ].length;
              }
              return (
                <div key={q}>
                  <div className="flex items-center gap-2 px-4 pt-5 pb-2">
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
                  <div className="flex flex-col gap-2.5 px-4">
                    {srcs.map((src, i) => (
                      <AnimSourceRow key={`${src.url}-${i}`} src={src} idx={rowIdx + i} qs={qs} qShort={Q_SHORT[q]} onPlay={playSource} />
                    ))}
                  </div>
                </div>
              );
            })}

            {/* loading sources not yet extracted */}
            {sources.filter(s => s.status === "loading").length > 0 && (
              <div className="flex items-center gap-2 px-4 py-3 text-white/18 text-[10px] font-['Cairo']">
                <motion.div animate={{ rotate: 360 }} transition={{ duration: 1, repeat: Infinity, ease: "linear" }}
                  className="w-3 h-3 rounded-full border border-white/15 border-t-white/40" />
                جاري فحص المصادر الإضافية…
              </div>
            )}
          </>
        )}

        {/* ── Episode list (TV only) ── */}
        {type === "tv" && episodes.length > 0 && (
          <div className="px-4 py-3 border-t border-white/5 mt-2">
            <button onClick={() => setShowEpList(o => !o)}
              className="w-full flex items-center justify-between py-1">
              <div className="flex items-center gap-2">
                <List className="w-4 h-4 text-violet-400/60" />
                <span className="text-[13px] font-black text-white/70 font-['Cairo']">الحلقات</span>
                <span className="text-[10px] text-white/25 bg-white/5 px-2 py-0.5 rounded-lg font-['Cairo']">
                  {episodes.length} حلقة · الموسم {season}
                </span>
              </div>
              <ChevronDown className={`w-4 h-4 text-white/30 transition-transform ${showEpList ? "rotate-180" : ""}`} />
            </button>
            <AnimatePresence>
              {showEpList && (
                <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: "auto", opacity: 1 }}
                  exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.2 }} className="overflow-hidden">
                  <div className="mt-2 space-y-1 max-h-56 overflow-y-auto" style={{ scrollbarWidth: "none" }}>
                    {episodes.map(epItem => {
                      const isActive = epItem.episode_number === ep;
                      return (
                        <button key={epItem.episode_number}
                          onClick={() => {
                            const np = new URLSearchParams(window.location.search);
                            np.set("ep", String(epItem.episode_number));
                            navigate(`/animation/watch?${np.toString()}`);
                          }}
                          className={`w-full flex items-center gap-3 px-3 py-2.5 rounded-xl border text-right transition-all active:scale-[0.98] ${
                            isActive ? "bg-violet-500/10 border-violet-500/20" : "bg-white/[0.03] border-white/5 active:bg-white/6"
                          }`}>
                          <div className={`w-7 h-7 rounded-lg flex items-center justify-center shrink-0 text-[11px] font-black font-['Cairo'] ${
                            isActive ? "bg-violet-500/20 text-violet-300" : "bg-white/6 text-white/30"
                          }`}>
                            {epItem.episode_number}
                          </div>
                          <div className="flex-1 min-w-0 text-right">
                            <p className={`text-[11px] font-black font-['Cairo'] line-clamp-1 ${isActive ? "text-violet-300" : "text-white/65"}`}>
                              {epItem.name || `الحلقة ${epItem.episode_number}`}
                            </p>
                            {epItem.runtime && <p className="text-[9px] text-white/20 font-['Cairo']">{epItem.runtime} دقيقة</p>}
                          </div>
                          {isActive && <SkipForward className="w-3.5 h-3.5 text-violet-400/60 shrink-0" />}
                        </button>
                      );
                    })}
                  </div>
                </motion.div>
              )}
            </AnimatePresence>
          </div>
        )}

        {/* ── Episode comments ── */}
        <EpComments commKey={type === "tv"
          ? `nova-anim-ep-comments-${tmdbId}-s${season}e${ep}`
          : `nova-anim-ep-comments-${tmdbId}`} />

      </div>

      {/* ── Subtitle Panel overlay ── */}
      <AnimatePresence>
        {showSubPanel && (
          <SubPanel
            tracks={subTracks} choice={subChoice} status={subStatus} cues={subCues}
            ttsDub={ttsDub}
            onChoiceChange={changeSubChoice}
            onTtsDub={setTtsDub}
            onClose={() => setShowSubPanel(false)}
          />
        )}
      </AnimatePresence>
    </div>
  );
}

/* ── Subtitle Panel Component ──────────────────────────────────────────── */
function SubPanel({
  tracks, choice, status, cues, ttsDub, onChoiceChange, onTtsDub, onClose,
}: {
  tracks: SubTrack[];
  choice: SubChoice;
  status: SubStatus;
  cues: SubCue[];
  ttsDub: boolean;
  onChoiceChange: (c: SubChoice) => void;
  onTtsDub: (v: boolean) => void;
  onClose: () => void;
}) {
  const [isLandscape, setIsLandscape] = useState(() => typeof window !== "undefined" && window.innerWidth > window.innerHeight);
  useEffect(() => {
    const onResize = () => setIsLandscape(window.innerWidth > window.innerHeight);
    window.addEventListener("resize", onResize);
    const mq = window.matchMedia("(orientation: landscape)");
    const onOrient = (e: MediaQueryListEvent) => setIsLandscape(e.matches);
    mq.addEventListener("change", onOrient);
    return () => { window.removeEventListener("resize", onResize); mq.removeEventListener("change", onOrient); };
  }, []);

  const hasAr   = tracks.some(t => t.lang === "ar");
  const hasAuto = tracks.some(t => t.lang === "ar-auto") || tracks.some(t => t.lang === "en");
  const hasEn   = tracks.some(t => t.lang === "en");

  const opts: Array<{ id: SubChoice; label: string; icon: string; available: boolean; desc: string }> = [
    { id: "off",           label: "إيقاف",   icon: "✕", available: true,     desc: "" },
    { id: "ar",            label: "عربي",    icon: "ع", available: hasAr,    desc: "مباشر" },
    { id: "ar-translated", label: "مترجم",   icon: "↻", available: hasAuto,  desc: "تلقائي" },
    { id: "en",            label: "إنجليزي", icon: "E", available: hasEn,    desc: "أصلي" },
  ];

  return (
    <motion.div
      initial={isLandscape ? { opacity: 0, x: 48 } : { opacity: 0, y: 60 }}
      animate={isLandscape ? { opacity: 1, x: 0 } : { opacity: 1, y: 0 }}
      exit={isLandscape ? { opacity: 0, x: 48 } : { opacity: 0, y: 60 }}
      transition={{ duration: 0.22, ease: [0.22, 1, 0.36, 1] }}
      className={`fixed z-[400] flex ${isLandscape ? "inset-y-0 right-0 items-stretch" : "bottom-0 left-0 right-0 flex-col"}`}
    >
      {/* Backdrop tap to close */}
      <div className="fixed inset-0 z-[-1]" onClick={onClose} />

      <div className={isLandscape ? "w-[280px] overflow-y-auto" : "w-full overflow-y-auto"}
        style={{
          background: "rgba(9,7,22,0.97)",
          border: "1px solid rgba(139,92,246,0.22)",
          backdropFilter: "blur(40px)",
          boxShadow: isLandscape
            ? "inset 0 0 0 0.5px rgba(255,255,255,0.06), -20px 0 60px rgba(0,0,0,0.80)"
            : "inset 0 0 0 0.5px rgba(255,255,255,0.06), 0 -20px 60px rgba(0,0,0,0.80)",
          borderRadius: isLandscape ? "20px 0 0 20px" : "20px 20px 0 0",
          maxHeight: isLandscape ? "100dvh" : "70dvh",
          overflowY: "auto",
        }}>

        {/* ── Header ── */}
        <div className="flex items-center justify-between px-5 pt-4 pb-3 border-b border-white/[0.06]">
          <div className="flex items-center gap-2.5">
            <div className="w-6 h-6 rounded-lg flex items-center justify-center text-[11px]"
              style={{ background: "rgba(139,92,246,0.20)", border: "1px solid rgba(139,92,246,0.30)" }}>
              <span className="text-violet-300 font-black">ت</span>
            </div>
            <h3 className="text-[14px] font-black font-['Cairo'] text-white">الترجمة</h3>
          </div>
          <button onClick={onClose}
            className="w-8 h-8 rounded-xl flex items-center justify-center text-white/40 active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <span className="text-[13px]">✕</span>
          </button>
        </div>

        {/* ── 4 option buttons ── */}
        <div className={`grid gap-2 p-4 ${isLandscape ? "grid-cols-2" : "grid-cols-4"}`}>
          {opts.map(opt => {
            const active = choice === opt.id;
            return (
              <button key={opt.id}
                onClick={() => opt.available && onChoiceChange(opt.id)}
                disabled={!opt.available}
                className="flex flex-col items-center gap-1.5 py-3.5 rounded-xl transition-all active:scale-95 disabled:opacity-25"
                style={{
                  background: active ? "rgba(139,92,246,0.20)" : "rgba(255,255,255,0.04)",
                  border: active ? "1px solid rgba(139,92,246,0.45)" : "1px solid rgba(255,255,255,0.07)",
                  boxShadow: active ? "0 0 18px rgba(139,92,246,0.16) inset" : "none",
                }}>
                <span className="text-[18px]" style={{ color: active ? "rgba(196,181,253,0.95)" : "rgba(255,255,255,0.40)" }}>
                  {opt.icon}
                </span>
                <span className="text-[10px] font-black font-['Cairo'] leading-none"
                  style={{ color: active ? "rgba(196,181,253,0.90)" : "rgba(255,255,255,0.50)" }}>
                  {opt.label}
                </span>
                {opt.desc && (
                  <span className="text-[8px] font-['Cairo']"
                    style={{ color: active ? "rgba(196,181,253,0.50)" : "rgba(255,255,255,0.20)" }}>
                    {opt.desc}
                  </span>
                )}
              </button>
            );
          })}
        </div>

        {/* ── Status row ── */}
        <div className="px-5 pb-4 flex items-center gap-2.5 min-h-[32px]">
          {(status === "loading" || status === "translating" || status === "discovering") && (
            <>
              <motion.div
                className="w-3.5 h-3.5 rounded-full border-2 border-violet-400/20 border-t-violet-400/70"
                animate={{ rotate: 360 }}
                transition={{ duration: 0.85, repeat: Infinity, ease: "linear" }}
              />
              <span className="text-[11px] font-['Cairo'] text-white/38">
                {status === "translating" ? "جاري الترجمة للعربية… (قد يأخذ دقيقة)" :
                 status === "loading"     ? "جاري تحميل الترجمة…" :
                 "يبحث عن مصادر الترجمة…"}
              </span>
            </>
          )}
          {status === "ready" && (
            <span className="text-[11px] font-['Cairo']" style={{ color: "rgba(110,231,183,0.80)" }}>
              ✓ جاهز · {cues.length} سطر ترجمة
            </span>
          )}
          {status === "failed" && (
            <span className="text-[11px] font-['Cairo'] text-white/28">
              لم يُعثر على ترجمة لهذا المحتوى
            </span>
          )}
          {status === "off" && (
            <span className="text-[11px] font-['Cairo'] text-white/18">الترجمة موقوفة</span>
          )}
        </div>

        {/* ── Arabic TTS Dubbing toggle ── */}
        {status === "ready" && (
          <div className="px-5 pb-3 border-t border-white/[0.05] pt-3">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-[11px] font-black font-['Cairo'] text-white/60">دبلجة صوتية عربية</p>
                <p className="text-[9px] font-['Cairo'] text-white/24">تجريبي · يقرأ الترجمة بصوت عربي</p>
              </div>
              <button
                onClick={() => onTtsDub(!ttsDub)}
                className="relative w-11 h-6 rounded-full transition-all active:scale-90"
                style={{
                  background: ttsDub ? "rgba(139,92,246,0.70)" : "rgba(255,255,255,0.10)",
                  border: ttsDub ? "1px solid rgba(139,92,246,0.80)" : "1px solid rgba(255,255,255,0.15)",
                }}>
                <motion.div
                  className="absolute top-0.5 w-5 h-5 rounded-full"
                  style={{ background: ttsDub ? "#c4b5fd" : "rgba(255,255,255,0.45)" }}
                  animate={{ left: ttsDub ? "auto" : "2px", right: ttsDub ? "2px" : "auto" }}
                  transition={{ duration: 0.2 }}
                />
              </button>
            </div>
          </div>
        )}


        <div className="pb-4" />
      </div>
    </motion.div>
  );
}


/* ── No Sources Message Component ─────────────────────────────────────── */
function NoSourcesMessage({
  type, ep, onPrevEp,
}: {
  type: string; ep: number;
  onPrevEp?: () => void;
}) {
  return (
    <div className="flex flex-col items-center py-14 gap-5 px-5 text-center">
      <div className="w-16 h-16 rounded-2xl flex items-center justify-center"
        style={{ background: "rgba(139,92,246,0.10)", border: "1px solid rgba(139,92,246,0.20)" }}>
        <span className="text-3xl">🔍</span>
      </div>
      <div className="flex flex-col gap-2">
        <p className="text-white/75 text-[15px] font-black font-['Cairo']">
          لا توجد مصادر متاحة
        </p>
        <p className="text-white/30 text-[12px] font-['Cairo'] leading-relaxed max-w-xs">
          {type === "tv"
            ? `لم يُعثر على مصادر للحلقة ${ep}، جرّب حلقة أخرى أو تحقق لاحقًا`
            : "لم يُعثر على مصادر لهذا الفيلم، قد يكون المحتوى غير متاح حاليًا"
          }
        </p>
      </div>
      {onPrevEp && (
        <button onClick={onPrevEp}
          className="flex items-center gap-2 px-5 py-2.5 rounded-2xl text-[13px] font-black font-['Cairo'] active:scale-95 transition-transform"
          style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.10)", color: "rgba(255,255,255,0.55)" }}>
          <ChevronRight className="w-4 h-4" />
          جرّب الحلقة السابقة
        </button>
      )}
    </div>
  );
}

/* ── Source Card Component ─────────────────────────────────────────────── */
/* ── 2-letter tag from animation source label ── */
function getAnimTag(label: string): string {
  const l = label.toLowerCase();
  if (l.startsWith("icefy"))      return "IC";
  if (l.startsWith("vyla"))       return "VY";
  if (l.startsWith("videasy"))    return "VE";
  if (l.startsWith("vidlink"))    return "VL";
  if (l.startsWith("lordflix"))   return "LF";
  if (l.startsWith("starcima"))   return "SC";
  if (l.startsWith("stardima"))   return "??"; // StarDima removed
  if (l.includes("أنمي فاي") || l.startsWith("animeif")) return "MG";
  if (l.includes("ميغا") || l.startsWith("mega"))     return "MG";
  if (l.startsWith("aflaam"))     return "AF";
  if (l.startsWith("arabseed"))   return "AS";
  if (l.startsWith("mycima"))     return "MY";
  if (l.startsWith("ezvidapi"))   return "EZ";
  if (l.startsWith("topcinema"))  return "TC";
  if (l.startsWith("moviz"))      return "MV";
  if (l.startsWith("seepan"))     return "SP";
  if (l.startsWith("animewitcher")) return "AW";
  if (l.startsWith("toonstream")) return "TS";
  if (l.startsWith("anikoto"))    return "AK";
  if (l.startsWith("anineko"))    return "AN";
  if (l.startsWith("kawaii"))     return "KW";
  if (l.startsWith("animephoenix") || l.startsWith("phoenix")) return "PH";
  if (l.startsWith("animehub"))   return "AH";
  if (l.startsWith("streamguide")) return "SG";
  if (l.startsWith("hexa"))       return "HX";
  if (l.startsWith("aether"))     return "AE";
  if (l.startsWith("vidcore"))    return "VC";
  if (l.startsWith("aw·"))        return "AW";
  if (l.startsWith("fasel"))      return "FH";
  if (l.startsWith("dulo"))       return "DU";
  if (l.startsWith("cinepro"))    return "CP";
  if (l.startsWith("mycima"))     return "MY";
  if (l.startsWith("topcin"))     return "TC";
  const word = label.replace(/[^a-zA-Zأ-ي]/g, "").slice(0, 2).toUpperCase();
  return word || "??";
}

function AnimSourceRow({
  src, idx, qs, qShort, onPlay,
}: {
  src: Source;
  idx: number;
  qs: { dot: string; badge: string; border: string; text: string; icon: string };
  qShort: string;
  onPlay: (s: Source) => void;
}) {
  const url = src.proxyUrl || src.directUrl || src.url;
  const isHls = isHlsUrl(url);
  const hasDownload = !isHls && (url.includes(".mp4") || url.includes("video-proxy"));

  const isFailed = src.status === "fail";
  const tag = getAnimTag(src.label);

  return (
    <div
      onClick={() => !isFailed && onPlay(src)}
      className="relative overflow-hidden rounded-2xl transition-transform"
      style={{
        cursor: isFailed ? "not-allowed" : "pointer",
        opacity: isFailed ? 0.55 : 1,
        background: isFailed
          ? "linear-gradient(145deg, rgba(40,8,8,0.92), rgba(28,4,4,0.96))"
          : "linear-gradient(145deg, rgba(18,12,40,0.92), rgba(12,8,28,0.96))",
        border: isFailed ? "1px solid rgba(239,68,68,0.35)" : `1px solid ${qs.border}`,
        boxShadow: `0 4px 24px rgba(0,0,0,0.35), 0 0 0 1px rgba(255,255,255,0.03) inset`,
      }}
    >
      {/* Top glow strip */}
      <div className="absolute top-0 left-0 right-0 h-[2px]"
        style={{ background: isFailed
          ? "linear-gradient(90deg, transparent, rgba(239,68,68,0.5), transparent)"
          : `linear-gradient(90deg, transparent, ${qs.icon}55, transparent)` }} />

      <div className="flex items-center gap-3 px-3.5 py-2.5">

        {/* Icon */}
        <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 relative"
          style={{
            background: isFailed ? "rgba(239,68,68,0.10)" : qs.badge,
            border: isFailed ? "1px solid rgba(239,68,68,0.30)" : `1px solid ${qs.border}`,
          }}>
          <MonitorPlay className="w-[16px] h-[16px]"
            style={{ color: isFailed ? "rgba(239,68,68,0.70)" : qs.icon }} />
          <span className="absolute -bottom-1.5 -left-1 font-mono text-[7px] font-black px-1 py-[1px] rounded-md leading-none"
            style={{ background: isHls ? "rgba(99,102,241,0.88)" : "rgba(52,211,153,0.85)", color: "white" }}>
            {isHls ? "HLS" : "MP4"}
          </span>
        </div>

        {/* Label + quality */}
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-1.5 flex-wrap mb-0.5">
            {/* اسم موحّد: سيرفر N + حرفان مختصران */}
            <p className="text-[13px] font-black font-['Cairo'] leading-tight"
              style={{ color: isFailed ? "rgba(252,165,165,0.75)" : "rgba(255,255,255,0.94)" }}>
              سيرفر {idx + 1}
            </p>
            <span className="text-[8px] font-mono font-black px-1.5 py-[2px] rounded shrink-0"
              style={{ color: "rgba(167,139,250,0.85)", background: "rgba(109,40,217,0.18)", border: "1px solid rgba(139,92,246,0.28)" }}>
              {tag}
            </span>
          </div>
          <div className="flex items-center gap-2 mt-1.5 flex-wrap">
            {isFailed ? (
              <span className="text-[9px] font-black font-['Cairo'] px-2 py-[3px] rounded-lg"
                style={{ background: "rgba(239,68,68,0.12)", border: "1px solid rgba(239,68,68,0.25)", color: "rgba(252,165,165,0.80)" }}>
                فشل التشغيل
              </span>
            ) : (
              <>
                <span className="text-[9px] font-black font-mono px-2 py-[3px] rounded-lg"
                  style={{ background: qs.badge, border: `1px solid ${qs.border}`, color: qs.text }}>
                  {qShort}
                </span>
                {isHls && (
                  <span className="text-[8.5px] font-['Cairo']" style={{ color: "rgba(139,92,246,0.65)" }}>
                    بث مباشر
                  </span>
                )}
              </>
            )}
          </div>
        </div>

        {/* Actions */}
        <div className="flex items-center gap-2 shrink-0">
          {hasDownload && !isFailed && (
            <a href={url} download target="_blank" rel="noreferrer"
              onClick={e => e.stopPropagation()}
              className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
              style={{ background: "rgba(52,211,153,0.10)", border: "1px solid rgba(52,211,153,0.22)" }}>
              <Download className="w-4 h-4 text-emerald-400/80" />
            </a>
          )}
          {!isFailed && (
            <div className="flex items-center gap-1.5 px-4 py-2.5 rounded-xl active:scale-95 transition-transform"
              style={{
                background: "linear-gradient(135deg, rgba(124,58,237,0.88), rgba(91,33,182,0.95))",
                border: "1px solid rgba(167,139,250,0.22)",
                boxShadow: "0 2px 16px rgba(109,40,217,0.28)",
              }}>
              <Play className="w-3.5 h-3.5 text-white fill-white" />
              <span className="text-white text-[12px] font-black font-['Cairo']">تشغيل</span>
            </div>
          )}
        </div>

      </div>
    </div>
  );
}

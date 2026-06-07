import { useState, useEffect, useRef, useCallback, useMemo } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, Play, AlertTriangle,
  MonitorPlay, Download, ChevronLeft, List, ChevronDown, SkipForward,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer, { type SubSettings } from "@/components/player/RiftPlayer";

/* ── SubCue ── */
interface SubCue { start: number; end: number; text: string; }
function parseSrt(srt: string): SubCue[] {
  const cues: SubCue[] = [];
  const toSec = (ts: string) => {
    const t = ts.trim();
    /* HH:MM:SS,mmm or HH:MM:SS.mmm */
    const m3 = t.match(/^(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
    if (m3) {
      return parseInt(m3[1]) * 3600 + parseInt(m3[2]) * 60 + parseInt(m3[3]) + parseInt(m3[4].padEnd(3,"0")) / 1000;
    }
    /* MM:SS.mmm  (VTT short format — no hours) */
    const m2 = t.match(/^(\d+):(\d{2})[,.](\d{1,3})/);
    if (m2) {
      return parseInt(m2[1]) * 60 + parseInt(m2[2]) + parseInt(m2[3].padEnd(3,"0")) / 1000;
    }
    return 0;
  };
  const blocks = srt.replace(/\r\n/g, "\n").replace(/\r/g, "\n").split(/\n{2,}/);
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
  status?: "loading" | "ok" | "fail";
  tier?: QualityTier;
}

function getSourceTier(src: Source): QualityTier {
  if (src.tier) return src.tier;
  const url = src.proxyUrl || src.directUrl || src.url;
  if (url.includes("hls-proxy")) {
    if (src.label.includes("الثريا")) return "1080p FHD";
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

  /* ── Subtitle state ── */
  const [subCues,    setSubCues]    = useState<SubCue[]>([]);
  const [subState,   setSubState]   = useState<"idle" | "loading" | "ready" | "failed">("idle");
  const [hlsTime,    setHlsTime]    = useState(0);
  const [subSettings, setSubSettings] = useState<SubSettings>({
    fontSize: 16, color: "#ffffff", bgOpacity: 0, bold: false, position: "bottom",
  });

  const esRef            = useRef<EventSource | null>(null);
  const seenUrls         = useRef(new Set<string>());
  const lastProgressSave = useRef(0);
  const histSavedRef     = useRef(false);
  const autoPlayedRef      = useRef(false);
  const upgradedToFhdRef   = useRef(false);
  const sourceCountRef     = useRef(0);

  /* ── Navigate to detail page ── */
  const goToDetail = useCallback(() => {
    if (tmdbId && type) navigate(`/animation/${type}/${tmdbId}`);
    else navigate("/animations");
  }, [tmdbId, type, navigate]);

  /* ── onFail ref pattern (prevents cascade bug) ── */
  const onFailRef    = useRef<() => void>(() => {});
  const stableOnFail = useCallback(() => onFailRef.current(), []);

  /* ── Play a source ── */
  const playSource = useCallback((src: Source) => {
    setSelSrc(src);
    setStep("playing");
  }, []);

  /* Update onFail after sources/selSrc change */
  const playNext = useCallback(() => {
    setSources(prev => {
      setSelSrc(sel => {
        if (!sel) { setStep("sources"); return sel; }
        const idx  = prev.findIndex(s => s.url === sel.url);
        const next = prev.find((s, i) => i > idx && s.status === "ok");
        if (next) {
          // delay to next tick to avoid setState-in-render
          setTimeout(() => playSource(next), 0);
        } else {
          setStep("sources");
        }
        return sel;
      });
      return prev;
    });
  }, [playSource]);

  useEffect(() => { onFailRef.current = playNext; }, [playNext]);

  /* ── Auto-play first available "ok" source (also fires from "sources" step) ── */
  useEffect(() => {
    if (step === "playing" || step === "error") return;
    if (autoPlayedRef.current) return;
    const first = sources.find(s => s.status === "ok");
    if (!first) return;
    autoPlayedRef.current = true;
    playSource(first);
  }, [sources, step, playSource]);

  /* ── Auto-upgrade: switch to FHD when 1080p source arrives (if started on lower quality) ── */
  useEffect(() => { upgradedToFhdRef.current = false; }, [tmdbId, type, ep, season]);
  useEffect(() => {
    if (step !== "playing") return;
    if (upgradedToFhdRef.current) return;
    if (selSrc && getSourceTier(selSrc) === "1080p FHD") { upgradedToFhdRef.current = true; return; }
    const fhdSrc = sources.find(s => s.status === "ok" && getSourceTier(s) === "1080p FHD");
    if (!fhdSrc) return;
    upgradedToFhdRef.current = true;
    playSource(fhdSrc);
  }, [sources, step, selSrc, playSource]);

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
      const r = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(url)}`);
      const d = await r.json();
      let direct = d.directUrl || d.url || "";
      if (direct && direct.includes(".m3u8")) direct = wrapHls(direct, url);
      setSources(prev => prev.map(s =>
        s.url === url
          ? { ...s, directUrl: direct || undefined, proxyUrl: direct || undefined, status: direct ? "ok" : ("unknown" as any) }
          : s
      ));
    } catch {
      setSources(prev => prev.map(s => s.url === url ? { ...s, status: ("unknown" as any) } : s));
    }
  }, []);

  /* ── Watch history ── */
  useEffect(() => {
    if (step !== "playing" || !selSrc || !tmdbId || histSavedRef.current) return;
    histSavedRef.current = true;
    saveAnimHistory(tmdbId, type, displayTitle, posterUrl, ep, season);
  }, [step, selSrc, tmdbId, type, displayTitle, posterUrl, ep, season]);
  useEffect(() => { histSavedRef.current = false; }, [tmdbId, type, ep, season]);

  /* ── Episode list ── */
  useEffect(() => {
    if (type !== "tv" || !tmdbId) return;
    fetch(`/api/animation/season?id=${tmdbId}&season=${season}`)
      .then(r => r.json())
      .then(d => setEpisodes(d.episodes || []))
      .catch(() => {});
  }, [type, tmdbId, season]);

  /* ── SSE stream ── */
  useEffect(() => {
    setStep("loading"); setSources([]); setSelSrc(null); setSseDone(false);
    setSubCues([]); setSubState("idle"); setHlsTime(0);
    seenUrls.current.clear(); histSavedRef.current = false; autoPlayedRef.current = false; sourceCountRef.current = 0;

    const q = `/api/animation/sources-stream?title=${encodeURIComponent(decodeURIComponent(title))}&type=${type}&ep=${ep}&season=${season}&tmdbId=${encodeURIComponent(tmdbId)}`;
    const es = new EventSource(q);
    esRef.current = es;

    es.addEventListener("source", (e) => {
      const src = JSON.parse(e.data) as { url: string; label: string; directUrl?: string; proxyUrl?: string; isEmbed?: boolean };
      // Skip embed-only sources — internal player only
      if (src.isEmbed) return;
      const key = src.directUrl || src.url;
      if (seenUrls.current.has(key)) return;
      seenUrls.current.add(key);

      let newSrc: Source;
      if (src.directUrl || src.proxyUrl) {
        const resolved = src.proxyUrl || src.directUrl!;
        const hl       = isHlsUrl(resolved);
        const proxyUrl = src.proxyUrl || (hl ? wrapHls(src.directUrl!, window.location.origin) : wrapMp4(src.directUrl!, window.location.origin));
        newSrc = { url: src.url, label: src.label, directUrl: src.directUrl, proxyUrl, status: "ok" };
      } else {
        newSrc = { url: src.url, label: src.label, status: "loading" };
        tryExtract(src.url);
      }
      sourceCountRef.current += 1;
      setSources(prev => [...prev, newSrc]);
    });

    es.addEventListener("done", () => {
      es.close(); setSseDone(true);
    });
    es.addEventListener("error", () => {
      try {
        // ignore — done will fire eventually
      } catch { /* noop */ }
    });
    es.onerror = () => { es.close(); setSseDone(true); };

    return () => { es.close(); };
  }, [title, type, ep, season, tmdbId, tryExtract]);

  /* ── Step transitions on SSE done (sourceCountRef avoids stale closure) ── */
  useEffect(() => {
    if (!sseDone) return;
    setStep(prev => prev === "playing" ? prev : (sourceCountRef.current === 0 ? "error" : "sources"));
  }, [sseDone]);

  /* ── Fetch Arabic subtitles (called on mount + by onSubtitleClick) ── */
  const fetchSubs = useCallback(async () => {
    if (!tmdbId) return;
    setSubState("loading");
    setSubCues([]);

    const SC_REF = encodeURIComponent("https://starcima.com/");

    // Fetch VTT text via server proxy and parse cues
    const fetchVttProxy = async (vttUrl: string, timeoutMs = 9_000): Promise<SubCue[]> => {
      try {
        const r = await fetch(
          `/api/anime/proxy-text?url=${encodeURIComponent(vttUrl)}&ref=${SC_REF}`,
          { signal: AbortSignal.timeout(timeoutMs) }
        );
        if (!r.ok) return [];
        return parseSrt(await r.text());
      } catch { return []; }
    };

    // Translate English VTT → Arabic cues via server-side Google Translate
    const translateEnToAr = async (enUrl: string): Promise<SubCue[]> => {
      try {
        const r = await fetch(
          `/api/anime/translate-vtt?url=${encodeURIComponent(enUrl)}&from=en&to=ar`,
          { signal: AbortSignal.timeout(35_000) }
        );
        if (!r.ok) return [];
        const json = await r.json() as { cues?: Array<{ timing: string; text: string }> };
        if (!json.cues?.length) return [];
        return parseSrt("WEBVTT\n\n" + json.cues.map(c => `${c.timing}\n${c.text}`).join("\n\n"));
      } catch { return []; }
    };

    // Animation-specific subtitle lookup (wyzie.ru + subdl via new endpoint)
    const fetchAnimSubtitles = async (): Promise<SubCue[]> => {
      try {
        const params = new URLSearchParams({
          tmdbId,
          type,
          ep: String(ep),
          season: String(season),
          title: displayTitle,
        });
        const r = await fetch(`/api/animation/subtitles?${params}`, { signal: AbortSignal.timeout(18_000) });
        if (!r.ok) return [];
        const d = await r.json() as { content?: string | null };
        if (!d.content) return [];
        return parseSrt(d.content);
      } catch { return []; }
    };

    try {
      // CDN paths (v3 + v2) and vidzee-meta API — all in parallel
      const arCdnV3 = type === "tv"
        ? `https://cache.vdrk.site/v3/tv/${tmdbId}/${season}/${ep}/Arabic.vtt`
        : `https://cache.vdrk.site/v3/movie/${tmdbId}/Arabic.vtt`;
      const arCdnV2 = type === "tv"
        ? `https://cache.vdrk.site/v2/tv/${tmdbId}/${season}/${ep}/Arabic.vtt`
        : `https://cache.vdrk.site/v2/movie/${tmdbId}/Arabic.vtt`;
      const enCdnV3 = type === "tv"
        ? `https://cache.vdrk.site/v3/tv/${tmdbId}/${season}/${ep}/English.vtt`
        : `https://cache.vdrk.site/v3/movie/${tmdbId}/English.vtt`;
      const enCdnV2 = type === "tv"
        ? `https://cache.vdrk.site/v2/tv/${tmdbId}/${season}/${ep}/English.vtt`
        : `https://cache.vdrk.site/v2/movie/${tmdbId}/English.vtt`;

      const [arV3, arV2, vidzeeResp, animCues] = await Promise.all([
        fetchVttProxy(arCdnV3),
        fetchVttProxy(arCdnV2),
        fetch(
          `/api/animation/vidzee-meta?tmdbId=${tmdbId}&type=${type}&season=${season}&ep=${ep}`,
          { signal: AbortSignal.timeout(12_000) }
        ).then(r => r.ok ? r.json() : { subtitles: [] }).catch(() => ({ subtitles: [] })),
        fetchAnimSubtitles(),
      ]);

      // Arabic CDN — fastest path
      if (arV3.length > 0) { setSubCues(arV3); setSubState("ready"); return; }
      if (arV2.length > 0) { setSubCues(arV2); setSubState("ready"); return; }

      // Animation subtitle endpoint (wyzie.ru / subdl)
      if (animCues.length > 0) { setSubCues(animCues); setSubState("ready"); return; }

      // Arabic from vidzee-meta
      const subs: any[] = (vidzeeResp as any).subtitles || [];
      const arVidzee = subs.find((s: any) => s.languageCode === "ar" && s.url?.startsWith("http"));
      if (arVidzee) {
        const cues = await fetchVttProxy(arVidzee.url);
        if (cues.length > 0) { setSubCues(cues); setSubState("ready"); return; }
      }

      // No Arabic found → translate English automatically
      // Try vidzee English first, then CDN fallback
      const enVidzee = subs.find((s: any) => s.languageCode === "en" && s.url?.startsWith("http"));
      const enUrl = enVidzee?.url || enCdnV3;
      const enFallback = enCdnV2;

      let translated = await translateEnToAr(enUrl);
      if (!translated.length && enUrl !== enFallback) {
        translated = await translateEnToAr(enFallback);
      }
      if (translated.length > 0) { setSubCues(translated); setSubState("ready"); return; }

      // All sources exhausted
      setSubState("failed");
    } catch { setSubState("failed"); }
  }, [tmdbId, type, season, ep]);

  /* Auto-fetch subtitles on episode change */
  useEffect(() => {
    setSubCues([]); setSubState("idle");
    fetchSubs();
  }, [tmdbId, type, season, ep]); // eslint-disable-line

  /* ── Resume time ── */
  const resumeTime = useMemo(
    () => (selSrc && step === "playing" ? loadAnimProgress(tmdbId, type, season, ep) : 0),
    [selSrc, step, tmdbId, type, season, ep]
  );

  /* ── Grouped sources for picker ── */
  const grouped = useMemo(() => {
    const g: Record<QualityTier, Source[]> = { "1080p FHD": [], "720p HD": [], "360p SD": [] };
    for (const s of sources) {
      if (s.status !== "ok") continue;
      g[getSourceTier(s)].push(s);
    }
    return g;
  }, [sources]);

  const hasSources = sources.some(s => s.status === "ok");

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

        <div className="relative h-full flex flex-col items-center justify-center gap-7 px-6">
          {posterUrl ? (
            <motion.div initial={{ opacity: 0, scale: 0.85, y: 24 }} animate={{ opacity: 1, scale: 1, y: 0 }}
              transition={{ duration: 0.55, ease: [0.22, 1, 0.36, 1] }} className="relative shrink-0">
              <motion.div className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{ background: "radial-gradient(ellipse, rgba(139,92,246,0.28) 0%, transparent 68%)" }}
                animate={{ opacity: [0.5, 1, 0.5] }} transition={{ duration: 2.2, repeat: Infinity, ease: "easeInOut" }} />
              <img src={posterUrl} alt={displayTitle}
                className="w-44 h-[248px] rounded-2xl object-cover"
                style={{ boxShadow: "0 28px 72px rgba(0,0,0,0.88), 0 0 0 1px rgba(255,255,255,0.08)" }} />
            </motion.div>
          ) : (
            <div className="w-44 h-[248px] rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{ boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
              <div className="w-16 h-16 rounded-full bg-violet-500/15 flex items-center justify-center">
                <div className="w-7 h-7 rounded-full bg-violet-500/35" />
              </div>
            </div>
          )}

          <motion.div initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.18, duration: 0.4 }} className="text-center">
            {displayTitle && (
              <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
                style={{ textShadow: "0 2px 14px rgba(0,0,0,0.75)" }}>{displayTitle}</h2>
            )}
            {type === "tv" && (
              <p className="text-white/35 text-[13px] font-['Cairo'] tracking-wide">الحلقة {ep}</p>
            )}
          </motion.div>

          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.30 }}
            className="flex flex-col items-center gap-3">
            <div className="relative w-9 h-9">
              <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
              <motion.div className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
                animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
            </div>
            <p className="text-white/22 text-[11px] font-['Cairo'] tracking-[0.12em]">جاري تشغيل الحلقة</p>
          </motion.div>
        </div>
      </div>
    );
  }

  /* ────────────────────────── PLAYER ─────────────────────────────────────── */
  if (step === "playing" && selSrc) {

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
          subCues={subState === "ready" && subCues.length > 0 ? subCues : undefined}
          subElapsed={hlsTime}
          subEnabled={subState === "ready" && subCues.length > 0}
          subNote={subState === "failed" ? "لا تتوفر ترجمة عربية لهذا المحتوى" : subState === "loading" ? "جاري البحث عن الترجمة..." : undefined}
          subSettings={subSettings}
          onSubSettingsChange={setSubSettings}
          onSubtitleClick={subState !== "loading" ? fetchSubs : undefined}
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
            {subState === "ready" && (
              <span className="px-2 py-[3px] rounded-full text-[10px] font-black font-['Cairo']"
                style={{ background: "rgba(59,130,246,0.12)", border: "1px solid rgba(59,130,246,0.26)", color: "rgba(147,197,253,0.85)" }}>
                ترجمة ✓
              </span>
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

        {step === "error" || (!hasSources && sseDone) ? (
          <motion.div initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.3 }}
            className="flex flex-col items-center justify-center py-14 gap-5 px-8">
            <div className="w-16 h-16 rounded-3xl flex items-center justify-center"
              style={{ background: "rgba(239,68,68,0.08)", border: "1px solid rgba(239,68,68,0.18)" }}>
              <AlertTriangle className="w-7 h-7 text-red-400/60" />
            </div>
            <div className="text-center flex flex-col gap-2">
              <p className="text-white/70 text-[16px] font-black font-['Cairo']">
                {type === "tv" ? `الحلقة ${ep} غير متوفرة بعد` : "العنوان غير متوفر بعد"}
              </p>
              <p className="text-white/28 text-[12px] font-['Cairo'] leading-relaxed">
                المصادر العربية تتأخر عادةً عن البث الأصلي.
              </p>
            </div>
            {type === "tv" && ep > 1 && (
              <button onClick={() => {
                const np = new URLSearchParams(window.location.search);
                np.set("ep", String(ep - 1));
                navigate(`/animation/watch?${np.toString()}`);
              }}
                className="flex items-center gap-2 px-5 py-2.5 rounded-2xl text-[13px] font-black font-['Cairo'] active:scale-95 transition-transform"
                style={{ background: "rgba(124,58,237,0.18)", border: "1px solid rgba(124,58,237,0.30)", color: "rgba(196,181,253,0.90)" }}>
                <ChevronRight className="w-4 h-4" />
                جرّب الحلقة {ep - 1}
              </button>
            )}
          </motion.div>
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
      </div>
    </div>
  );
}

/* ── Source Card Component ─────────────────────────────────────────────── */
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

  return (
    <motion.div
      initial={{ opacity: 0, y: 10, scale: 0.97 }}
      animate={{ opacity: 1, y: 0, scale: 1 }}
      transition={{ delay: Math.min(idx * 0.06, 0.35), duration: 0.22, ease: [0.22, 1, 0.36, 1] }}
      whileTap={{ scale: 0.975 }}
      onClick={() => onPlay(src)}
      className="relative overflow-hidden cursor-pointer rounded-2xl"
      style={{
        background: "linear-gradient(145deg, rgba(18,12,40,0.92), rgba(12,8,28,0.96))",
        border: `1px solid ${qs.border}`,
        boxShadow: `0 4px 24px rgba(0,0,0,0.35), 0 0 0 1px rgba(255,255,255,0.03) inset`,
      }}
    >
      {/* Subtle quality-colored glow strip */}
      <div className="absolute top-0 left-0 right-0 h-[2px]"
        style={{ background: `linear-gradient(90deg, transparent, ${qs.icon}55, transparent)` }} />

      <div className="flex items-center gap-3.5 px-4 py-3.5">

        {/* Icon */}
        <div className="w-11 h-11 rounded-xl flex items-center justify-center shrink-0 relative"
          style={{ background: qs.badge, border: `1px solid ${qs.border}` }}>
          <MonitorPlay className="w-[19px] h-[19px]" style={{ color: qs.icon }} />
          {/* Format badge */}
          <span className="absolute -bottom-1.5 -left-1 font-mono text-[7px] font-black px-1 py-[1px] rounded-md leading-none"
            style={{ background: isHls ? "rgba(99,102,241,0.88)" : "rgba(52,211,153,0.85)", color: "white" }}>
            {isHls ? "HLS" : "MP4"}
          </span>
        </div>

        {/* Label + quality */}
        <div className="flex-1 min-w-0">
          <p className="text-white/92 text-[14px] font-black font-['Cairo'] leading-tight truncate">
            {src.label}
          </p>
          <div className="flex items-center gap-2 mt-1.5 flex-wrap">
            <span className="text-[9px] font-black font-mono px-2 py-[3px] rounded-lg"
              style={{ background: qs.badge, border: `1px solid ${qs.border}`, color: qs.text }}>
              {qShort}
            </span>
            {isHls && (
              <span className="text-[8.5px] font-['Cairo']" style={{ color: "rgba(139,92,246,0.65)" }}>
                بث مباشر
              </span>
            )}
          </div>
        </div>

        {/* Actions */}
        <div className="flex items-center gap-2 shrink-0">
          {hasDownload && (
            <a href={url} download target="_blank" rel="noreferrer"
              onClick={e => e.stopPropagation()}
              className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
              style={{ background: "rgba(52,211,153,0.10)", border: "1px solid rgba(52,211,153,0.22)" }}>
              <Download className="w-4 h-4 text-emerald-400/80" />
            </a>
          )}
          <div className="flex items-center gap-1.5 px-4 py-2.5 rounded-xl active:scale-95 transition-transform"
            style={{
              background: "linear-gradient(135deg, rgba(124,58,237,0.88), rgba(91,33,182,0.95))",
              border: "1px solid rgba(167,139,250,0.22)",
              boxShadow: "0 2px 16px rgba(109,40,217,0.28)",
            }}>
            <Play className="w-3.5 h-3.5 text-white fill-white" />
            <span className="text-white text-[12px] font-black font-['Cairo']">تشغيل</span>
          </div>
        </div>

      </div>
    </motion.div>
  );
}

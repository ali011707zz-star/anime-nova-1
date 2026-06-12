import { useState, useEffect, useRef, useCallback, useMemo } from "react";
import { useLocation } from "wouter";
import { ChevronRight, Play, X, List, ChevronLeft, SkipForward, Loader2 } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";

type QualityTier = "1080p FHD" | "720p HD" | "360p SD";
const QUALITY_STYLE: Record<QualityTier, { dot: string; badge: string; border: string; text: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)",  border: "rgba(52,211,153,0.24)",  text: "rgba(110,231,183,0.92)" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)", border: "rgba(148,163,184,0.16)", text: "rgba(148,163,184,0.70)" },
};
const Q_SHORT: Record<QualityTier, string> = { "1080p FHD": "FHD", "720p HD": "HD", "360p SD": "SD" };
const QUALITY_TIERS: QualityTier[] = ["1080p FHD", "720p HD", "360p SD"];

interface Source {
  url: string;
  label: string;
  directUrl?: string;
  proxyUrl?: string;
  status?: "loading" | "ok" | "fail";
  tier?: QualityTier;
  _retriedDirect?: boolean;
}
interface EpItem { id: number; num: number; title: string; link: string; thumb: string; }

function getSourceTier(src: Source): QualityTier {
  if (src.tier) return src.tier;
  const url = src.proxyUrl || src.directUrl || src.url;
  if (url.includes("video-proxy") || (src.directUrl || "").includes(".mp4")) return "720p HD";
  if (url.includes("hls-proxy")) return "1080p FHD";
  return "360p SD";
}
function isHlsUrl(url: string) { return url.includes(".m3u8") || url.includes("hls-proxy"); }
function wrapHls(url: string, ref: string) { return `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`; }
function wrapMp4(url: string, ref: string) { return `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`; }

function saveProgress(title: string, ep: number, t: number) {
  if (!title || t < 5) return;
  localStorage.setItem(`kartoon-wp-${encodeURIComponent(title)}-${ep}`, String(Math.floor(t)));
}
function loadProgress(title: string, ep: number) {
  return parseFloat(localStorage.getItem(`kartoon-wp-${encodeURIComponent(title)}-${ep}`) || "0") || 0;
}
function saveHistory(title: string, thumb: string, ep: number, cat: number) {
  if (!title) return;
  try {
    const hist = JSON.parse(localStorage.getItem("kartoon-watch-history") || "[]");
    const item = { title, thumb, ep, cat, date: new Date().toISOString() };
    const filtered = hist.filter((h: any) => !(h.title === title && h.ep === ep));
    localStorage.setItem("kartoon-watch-history", JSON.stringify([item, ...filtered].slice(0, 50)));
  } catch {}
}

export default function KartoonWatch() {
  const [, navigate] = useLocation();
  const params    = useMemo(() => new URLSearchParams(window.location.search), []);
  const title     = params.get("title") || "";
  const ep        = parseInt(params.get("ep") || "1", 10) || 1;
  const thumb     = params.get("thumb") || "";
  const cat       = parseInt(params.get("cat") || "2496", 10) || 2496;
  const thumbUrl  = thumb ? decodeURIComponent(thumb) : "";
  const titleDec  = decodeURIComponent(title);

  const [step,     setStep]    = useState<"loading" | "sources" | "playing" | "error">("loading");
  const [sources,  setSources] = useState<Source[]>([]);
  const [selSrc,   setSelSrc]  = useState<Source | null>(null);
  const [sseDone,  setSseDone] = useState(false);
  const [episodes, setEpisodes] = useState<EpItem[]>([]);
  const [showEps,  setShowEps]  = useState(false);

  const prefAutoplay   = useRef(localStorage.getItem("pref-autoplay") !== "false");
  const esRef          = useRef<EventSource | null>(null);
  const seenUrls       = useRef(new Set<string>());
  const lastProgSave   = useRef(0);
  const histSavedRef   = useRef(false);
  const autoPlayedRef  = useRef(false);
  const onFailRef      = useRef<() => void>(() => {});
  const stableOnFail   = useCallback(() => onFailRef.current(), []);

  const playSource = useCallback((src: Source) => { setSelSrc(src); setStep("playing"); }, []);

  const playNext = useCallback(() => {
    setSelSrc(sel => {
      if (!sel) { setStep("sources"); return sel; }
      const hasRawFallback = !sel._retriedDirect && sel.directUrl && sel.proxyUrl &&
        sel.proxyUrl !== sel.directUrl && !sel.directUrl.startsWith("/api/");
      if (hasRawFallback) {
        const retrySrc: Source = { ...sel, proxyUrl: sel.directUrl, _retriedDirect: true };
        setSources(prev => prev.map(s => s.url === sel.url ? retrySrc : s));
        setTimeout(() => playSource(retrySrc), 0);
        return retrySrc;
      }
      setSources(prev => prev.map(s => s.url === sel.url ? { ...s, status: "fail" as const } : s));
      setStep("sources");
      return sel;
    });
  }, [playSource]);

  useEffect(() => { onFailRef.current = playNext; }, [playNext]);

  useEffect(() => {
    if (autoPlayedRef.current) return;
    if (!prefAutoplay.current) return;
    const ok = sources.filter(s => s.status === "ok");
    if (!ok.length) return;
    autoPlayedRef.current = true;
    playSource(ok[0]);
  }, [sources, playSource]);

  const handleTimeUpdate = useCallback((t: number) => {
    const now = Date.now();
    if (now - lastProgSave.current < 5000) return;
    lastProgSave.current = now;
    saveProgress(titleDec, ep, t);
  }, [titleDec, ep]);

  const getSourceInfo = (src: Source): { url: string; isHls: boolean } => {
    const url = src.proxyUrl || src.directUrl || src.url;
    return { url, isHls: isHlsUrl(url) };
  };

  const tryExtract = useCallback(async (url: string) => {
    try {
      const r = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(url)}`);
      const d = await r.json();
      const raw = d.directUrl || d.url || "";
      let proxyUrl = raw;
      if (raw?.includes(".m3u8")) proxyUrl = wrapHls(raw, url);
      else if (raw && !raw.startsWith("/api/")) proxyUrl = wrapMp4(raw, url);
      setSources(prev => prev.map(s => s.url === url
        ? { ...s, directUrl: raw || undefined, proxyUrl: raw ? proxyUrl : undefined, status: raw ? "ok" : "fail" as const }
        : s));
    } catch {
      setSources(prev => prev.map(s => s.url === url ? { ...s, status: "fail" as const } : s));
    }
  }, []);

  useEffect(() => {
    if (step !== "playing" || !selSrc || histSavedRef.current) return;
    histSavedRef.current = true;
    saveHistory(titleDec, thumbUrl, ep, cat);
  }, [step, selSrc, titleDec, thumbUrl, ep, cat]);
  useEffect(() => { histSavedRef.current = false; }, [title, ep]);

  useEffect(() => {
    if (!title) return;
    fetch(`/api/kartoon/episodes?q=${encodeURIComponent(titleDec)}&cat=${cat}`)
      .then(r => r.json())
      .then(d => setEpisodes(d.episodes || []))
      .catch(() => {});
  }, [title, cat]);

  /* ── SSE ── */
  useEffect(() => {
    setStep("loading"); setSources([]); setSelSrc(null); setSseDone(false);
    seenUrls.current.clear(); histSavedRef.current = false; autoPlayedRef.current = false;

    esRef.current?.close();
    const q2 = `/api/kartoon/sources-stream?title=${encodeURIComponent(titleDec)}&ep=${ep}`;
    const es = new EventSource(q2);
    esRef.current = es;

    es.addEventListener("source", (e) => {
      const src = JSON.parse(e.data) as (Source & { isEmbed?: boolean });
      if (src.isEmbed) return;
      const key = src.directUrl || src.url;
      if (!key || seenUrls.current.has(key)) return;
      seenUrls.current.add(key);

      const isHls = isHlsUrl(src.directUrl || src.proxyUrl || src.url);
      const needMp4Prx = !isHls && src.directUrl && !src.directUrl.startsWith("/api/");
      const proxyUrl = src.proxyUrl
        || (isHls && src.directUrl && !src.directUrl.startsWith("/") ? wrapHls(src.directUrl, src.url) : undefined)
        || (needMp4Prx ? wrapMp4(src.directUrl!, src.url) : undefined);

      const resolved: Source = {
        url: src.url, label: src.label,
        directUrl: src.directUrl,
        proxyUrl: proxyUrl || src.directUrl || src.url,
        status: (src.directUrl || proxyUrl) ? "ok" : "loading",
      };
      resolved.tier = getSourceTier(resolved);

      setSources(prev => {
        const exists = prev.find(s => (s.directUrl || s.url) === key);
        return exists ? prev : [...prev, resolved];
      });
      if (resolved.status === "loading") tryExtract(resolved.url);
      setStep(s => s === "loading" ? "sources" : s);
    });

    es.addEventListener("done", () => {
      setSseDone(true);
      setSources(prev => { if (!prev.length) setStep("error"); return prev; });
      es.close();
    });

    es.onerror = () => {
      setSseDone(true);
      setSources(prev => { if (!prev.length) setStep("error"); return prev; });
      es.close();
    };

    return () => { es.close(); };
  }, [title, ep]);

  /* ── Nav ── */
  const goBack = useCallback(() => {
    document.querySelectorAll<HTMLVideoElement>("video,audio").forEach(v => { try { v.pause(); v.src=""; } catch {} });
    if (step === "playing") { setStep("sources"); return; }
    navigate(`/kartoon/series?q=${encodeURIComponent(titleDec)}&thumb=${encodeURIComponent(thumbUrl)}&cat=${cat}`);
  }, [step, titleDec, thumbUrl, cat, navigate]);

  const goEp = (epNum: number) => {
    const t = encodeURIComponent(title);
    const th = encodeURIComponent(thumbUrl);
    navigate(`/kartoon/watch?title=${t}&ep=${epNum}&thumb=${th}&cat=${cat}`);
  };

  const nextEp = episodes.find(e => e.num === ep + 1) || episodes.find(e => e.num > ep);
  const currentEpTitle = episodes.find(e => e.num === ep)?.title || `الحلقة ${ep}`;

  /* ── Group sources by tier ── */
  type TierGroup = { tier: QualityTier; sources: Source[] };
  const groupedSources = useMemo((): TierGroup[] => {
    const map = new Map<QualityTier, Source[]>();
    for (const t of QUALITY_TIERS) map.set(t, []);
    for (const s of sources) {
      const t = s.tier ?? getSourceTier(s);
      map.get(t)!.push(s);
    }
    return QUALITY_TIERS.map(t => ({ tier: t, sources: map.get(t)! })).filter(g => g.sources.length > 0);
  }, [sources]);

  /* ── PLAYING ── */
  if (step === "playing" && selSrc) {
    const { url: playUrl, isHls } = getSourceInfo(selSrc);
    const initTime = loadProgress(titleDec, ep);
    return (
      <div className="fixed inset-0 bg-black z-[100]" dir="rtl">
        <RiftPlayer
          src={playUrl} isHls={isHls} title={titleDec} epTitle={currentEpTitle}
          resumeTime={initTime}
          onTimeUpdate={handleTimeUpdate} onFail={stableOnFail}
          onBack={goBack}
          onNextEp={nextEp ? () => goEp(nextEp.num) : undefined}
        />

        {/* Episode list overlay */}
        {episodes.length > 1 && (
          <div className="absolute top-4 left-4 z-10">
            <button onClick={() => setShowEps(o => !o)}
              className="w-10 h-10 rounded-2xl flex items-center justify-center"
              style={{ background: "rgba(0,0,0,0.6)", backdropFilter: "blur(10px)", border: "1px solid rgba(255,255,255,0.15)" }}>
              <List className="w-5 h-5 text-white" />
            </button>
          </div>
        )}

        <AnimatePresence>
          {showEps && (
            <>
              <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
                className="fixed inset-0 bg-black/70 z-[110]" onClick={() => setShowEps(false)} />
              <motion.div initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
                transition={{ type: "spring", damping: 28, stiffness: 300 }}
                className="fixed bottom-0 left-0 right-0 z-[111] rounded-t-3xl overflow-hidden"
                style={{ maxHeight: "70vh", background: "#111116", border: "1px solid rgba(255,255,255,0.08)" }}>
                <div className="flex items-center justify-between px-4 pt-4 pb-3 border-b border-white/[0.06]">
                  <h3 className="text-[14px] font-black font-['Cairo'] text-white">{titleDec}</h3>
                  <button onClick={() => setShowEps(false)} className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "rgba(255,255,255,0.07)" }}>
                    <X className="w-3.5 h-3.5 text-white/60" />
                  </button>
                </div>
                <div className="overflow-y-auto p-3 space-y-1.5" style={{ maxHeight: "calc(70vh - 56px)", scrollbarWidth: "none" }}>
                  {episodes.map(e => (
                    <button key={e.num} onClick={() => { setShowEps(false); goEp(e.num); }}
                      className="w-full flex items-center gap-3 rounded-2xl px-3 py-2.5 text-right transition-all"
                      style={e.num === ep
                        ? { background: "rgba(249,115,22,0.18)", border: "1px solid rgba(249,115,22,0.30)" }
                        : { background: "rgba(255,255,255,0.03)", border: "1px solid rgba(255,255,255,0.06)" }}>
                      <span className="text-[11px] font-black px-1.5 py-0.5 rounded-lg font-['Cairo']"
                        style={{ background: e.num === ep ? "rgba(249,115,22,0.30)" : "rgba(255,255,255,0.08)", color: e.num === ep ? "#fb923c" : "rgba(255,255,255,0.5)" }}>
                        {e.num}
                      </span>
                      <p className="flex-1 text-[11px] text-white/65 font-['Cairo'] truncate">{e.title || `الحلقة ${e.num}`}</p>
                      {e.num === ep && <div className="w-1.5 h-1.5 rounded-full bg-orange-400 animate-pulse shrink-0" />}
                    </button>
                  ))}
                </div>
              </motion.div>
            </>
          )}
        </AnimatePresence>
      </div>
    );
  }

  /* ── LOADING / SOURCES / ERROR ── */
  return (
    <div className="min-h-screen bg-[#09090B] flex flex-col" dir="rtl" style={{ userSelect: "none" }}>

      {/* Header */}
      <div className="flex items-center gap-3 px-4 pt-12 pb-3 shrink-0">
        <button onClick={goBack}
          className="w-9 h-9 rounded-2xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
          style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.10)" }}>
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-[14px] font-black text-white/90 font-['Cairo'] truncate">{titleDec}</p>
          <p className="text-[10px] text-orange-400/80 font-['Cairo']">الحلقة {ep}</p>
        </div>
      </div>

      {/* Thumbnail banner */}
      {thumbUrl && (
        <div className="relative mx-4 rounded-2xl overflow-hidden shrink-0" style={{ height: 200 }}>
          <img src={thumbUrl} alt={titleDec} className="w-full h-full object-cover" />
          <div className="absolute inset-0" style={{ background: "linear-gradient(to bottom, transparent 30%, rgba(9,9,11,0.95) 100%)" }} />
          {step === "loading" && (
            <div className="absolute inset-0 flex flex-col items-center justify-center gap-2">
              <motion.div animate={{ rotate: 360 }} transition={{ duration: 1.2, repeat: Infinity, ease: "linear" }}>
                <div className="w-12 h-12 rounded-full border-2 border-orange-400/20 border-t-orange-400 animate-spin" />
              </motion.div>
            </div>
          )}
          <div className="absolute bottom-3 right-3 text-white/85 text-[12px] font-black font-['Cairo'] drop-shadow">
            {titleDec} — ح{ep}
          </div>
        </div>
      )}

      {/* Status */}
      {step === "loading" && (
        <div className="flex items-center justify-center gap-2 px-4 mt-4">
          <Loader2 className="w-4 h-4 text-orange-400 animate-spin" />
          <p className="text-[12px] text-white/40 font-['Cairo']">جاري البحث عن مصادر الحلقة…</p>
        </div>
      )}

      {step === "error" && (
        <div className="flex flex-col items-center gap-3 px-4 mt-6">
          <p className="text-white/40 text-sm font-['Cairo'] text-center">لم يُعثر على مصادر لهذه الحلقة</p>
          <button onClick={goBack}
            className="px-4 py-2 rounded-xl text-xs font-black font-['Cairo']"
            style={{ background: "rgba(249,115,22,0.18)", color: "#fb923c", border: "1px solid rgba(249,115,22,0.30)" }}>
            العودة
          </button>
        </div>
      )}

      {/* Sources picker */}
      {sources.length > 0 && (step === "sources" || step === "loading") && (
        <div className="flex-1 px-4 mt-4 pb-6 space-y-4 overflow-y-auto" style={{ scrollbarWidth: "none" }}>
          {groupedSources.map(group => {
            const qs = QUALITY_STYLE[group.tier];
            return (
              <div key={group.tier}>
                <div className="flex items-center gap-2 mb-2.5">
                  <div className="w-2 h-2 rounded-full" style={{ background: qs.dot, boxShadow: `0 0 6px ${qs.dot}` }} />
                  <span className="text-[10px] font-black text-white/50 font-['Cairo']">{group.tier}</span>
                  <span className="text-[8px] font-black px-1.5 py-0.5 rounded-full" style={{ background: qs.badge, color: qs.text, border: `1px solid ${qs.border}` }}>
                    {Q_SHORT[group.tier]}
                  </span>
                </div>
                <div className="space-y-2">
                  {group.sources.map(src => {
                    const isOk = src.status === "ok";
                    const isFail = src.status === "fail";
                    return (
                      <motion.button
                        key={src.url} whileTap={{ scale: 0.97 }}
                        disabled={isFail}
                        onClick={() => { if (!isFail) playSource(src); }}
                        className="w-full text-right flex items-center gap-3 rounded-2xl px-4 py-3 transition-all"
                        style={{
                          background: isOk ? qs.badge : "rgba(255,255,255,0.03)",
                          border: `1px solid ${isOk ? qs.border : "rgba(255,255,255,0.07)"}`,
                          opacity: isFail ? 0.4 : 1,
                        }}
                      >
                        <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0"
                          style={{ background: isOk ? qs.badge : "rgba(255,255,255,0.06)", border: `1px solid ${isOk ? qs.border : "rgba(255,255,255,0.08)"}` }}>
                          {src.status === "loading" ? (
                            <Loader2 className="w-4 h-4 animate-spin" style={{ color: qs.dot }} />
                          ) : isFail ? (
                            <X className="w-4 h-4 text-red-400/50" />
                          ) : (
                            <Play className="w-4 h-4 fill-current" style={{ color: qs.dot }} />
                          )}
                        </div>
                        <div className="flex-1 min-w-0">
                          <p className="text-[12px] font-black text-white/80 truncate font-['Cairo']">{src.label}</p>
                          <p className="text-[9px] font-['Cairo'] mt-0.5" style={{ color: isFail ? "rgba(239,68,68,0.6)" : qs.text }}>
                            {isFail ? "غير متاح" : isOk ? "جاهز" : "يتحمّل…"}
                          </p>
                        </div>
                        <ChevronLeft className="w-4 h-4 shrink-0" style={{ color: isOk ? qs.dot : "rgba(255,255,255,0.20)" }} />
                      </motion.button>
                    );
                  })}
                </div>
              </div>
            );
          })}

          {!sseDone && (
            <div className="flex items-center gap-2 justify-center py-2">
              <Loader2 className="w-3.5 h-3.5 text-orange-400/60 animate-spin" />
              <p className="text-[10px] text-white/25 font-['Cairo']">جاري البحث…</p>
            </div>
          )}
        </div>
      )}

      {/* Episode navigation row */}
      {episodes.length > 1 && (
        <div className="shrink-0 px-4 pb-6 pt-2">
          <div className="flex gap-2 overflow-x-auto pb-1" style={{ scrollbarWidth: "none" }}>
            {episodes.slice(0, 20).map(e => (
              <button key={e.num} onClick={() => goEp(e.num)}
                className="shrink-0 w-10 h-10 rounded-xl text-xs font-black font-['Cairo'] transition-all active:scale-90"
                style={e.num === ep
                  ? { background: "linear-gradient(135deg,#F97316,#EA580C)", color: "#fff" }
                  : { background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.35)", border: "1px solid rgba(255,255,255,0.08)" }}>
                {e.num}
              </button>
            ))}
            {episodes.length > 20 && nextEp && (
              <button onClick={() => goEp(nextEp.num)}
                className="shrink-0 px-3 h-10 rounded-xl flex items-center gap-1 text-xs font-black font-['Cairo'] transition-all active:scale-90"
                style={{ background: "rgba(249,115,22,0.12)", color: "#fb923c", border: "1px solid rgba(249,115,22,0.20)" }}>
                التالي <SkipForward className="w-3.5 h-3.5" />
              </button>
            )}
          </div>
        </div>
      )}
    </div>
  );
}

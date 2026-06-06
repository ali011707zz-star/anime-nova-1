import { useState, useEffect, useRef, useCallback, useMemo } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, Play, Loader2, AlertCircle,
  Server, CheckCircle, Wifi, SkipForward,
  List, ChevronDown,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";

interface Source {
  url: string;
  label: string;
  directUrl?: string;
  proxyUrl?: string;
  status?: "loading" | "ok" | "fail";
  streamType?: "hls" | "mp4" | "dash";
}

function wrapHls(url: string, ref: string): string {
  return `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}
function wrapMp4(url: string, ref: string): string {
  return `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}

function isHlsUrl(url: string): boolean {
  return url.includes(".m3u8") || url.includes("/hls/") || url.includes("hls-proxy");
}

function saveAnimProgress(tmdbId: string, type: string, season: number, ep: number, currentTime: number) {
  if (!tmdbId || currentTime < 5) return;
  const key = `anim-wp-${tmdbId}-${type}-${season}-${ep}`;
  localStorage.setItem(key, String(Math.floor(currentTime)));
}

function loadAnimProgress(tmdbId: string, type: string, season: number, ep: number): number {
  if (!tmdbId) return 0;
  const key = `anim-wp-${tmdbId}-${type}-${season}-${ep}`;
  return parseFloat(localStorage.getItem(key) || "0") || 0;
}

function saveAnimHistory(tmdbId: string, type: string, title: string, posterUrl: string, ep: number, season: number) {
  if (!tmdbId) return;
  try {
    const histKey = "anim-watch-history";
    const hist = JSON.parse(localStorage.getItem(histKey) || "[]");
    const item = { id: tmdbId, type, title, poster: posterUrl, ep, season, date: new Date().toISOString() };
    const filtered = hist.filter((h: any) => !(h.id === tmdbId && h.type === type && h.ep === ep && h.season === season));
    localStorage.setItem(histKey, JSON.stringify([item, ...filtered].slice(0, 50)));
  } catch { /* silent */ }
}

interface EpisodeItem { episode_number: number; name: string; still_path?: string; runtime?: number; }

export default function AnimationWatch() {
  const [, navigate] = useLocation();
  const params  = useMemo(() => new URLSearchParams(window.location.search), []);
  const title   = params.get("title")  || "";
  const type    = params.get("type")   || "movie";
  const ep      = parseInt(params.get("ep") || "1", 10) || 1;
  const season  = parseInt(params.get("season") || "1", 10) || 1;
  const tmdbId  = params.get("id")     || "";
  const poster  = params.get("poster") || "";

  const [step, setStep]         = useState<"searching" | "sources" | "playing" | "error">("searching");
  const [statusMsg, setStatus]  = useState("جاري البحث…");
  const [sources, setSources]   = useState<Source[]>([]);
  const [selSrc, setSelSrc]     = useState<Source | null>(null);
  const [sseDone, setSseDone]   = useState(false);
  const [episodes, setEpisodes] = useState<EpisodeItem[]>([]);
  const [showEpList, setShowEpList] = useState(false);

  const esRef            = useRef<EventSource | null>(null);
  const seenUrls         = useRef(new Set<string>());
  const lastProgressSave = useRef(0);
  const histSavedRef     = useRef(false);

  const displayTitle = decodeURIComponent(title);
  const epLabel      = type === "tv" ? ` • الحلقة ${ep}` : "";
  const posterUrl    = poster ? decodeURIComponent(poster) : "";

  // ── Back navigation ────────────────────────────────────────────────────────
  const goBack = useCallback(() => {
    if (tmdbId && type) navigate(`/animation/${type}/${tmdbId}`);
    else navigate("/animations");
  }, [tmdbId, type, navigate]);

  // ── Progress save (from RiftPlayer onTimeUpdate) ───────────────────────────
  const handleTimeUpdate = useCallback((t: number) => {
    const now = Date.now();
    if (now - lastProgressSave.current < 5000) return;
    lastProgressSave.current = now;
    saveAnimProgress(tmdbId, type, season, ep, t);
  }, [tmdbId, type, season, ep]);

  // ── Resolve best play URL from a source ───────────────────────────────────
  const getSourceInfo = useCallback((src: Source): { url: string; isHls: boolean } => {
    const url   = src.proxyUrl || src.directUrl || src.url;
    const isHls = isHlsUrl(url) || src.streamType === "hls";
    return { url, isHls };
  }, []);

  // ── Play a source ─────────────────────────────────────────────────────────
  const playSource = useCallback((src: Source) => {
    setSelSrc(src);
    setStep("playing");
  }, []);

  // ── Try next source on player fail ────────────────────────────────────────
  const playNext = useCallback(() => {
    if (!selSrc) { setStep("sources"); return; }
    const idx  = sources.findIndex(s => s.url === selSrc.url);
    const next = sources.find((s, i) => i > idx && (s.status === "ok" || (s.status as any) === "unknown"));
    if (next) playSource(next);
    else setStep("sources");
  }, [selSrc, sources, playSource]);

  // ── Front-end extraction for unresolved sources ───────────────────────────
  const tryExtract = useCallback(async (url: string) => {
    try {
      const r = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(url)}`);
      const d = await r.json();
      let direct = d.directUrl || d.url || "";
      if (direct && direct.includes(".m3u8")) direct = wrapHls(direct, url);
      setSources(prev => prev.map(s =>
        s.url === url
          ? { ...s, directUrl: direct || undefined, proxyUrl: direct || undefined, status: direct ? "ok" : "unknown" as any }
          : s
      ));
    } catch {
      setSources(prev => prev.map(s => s.url === url ? { ...s, status: "unknown" as any } : s));
    }
  }, []);

  // ── Save to watch history ─────────────────────────────────────────────────
  useEffect(() => {
    if (step !== "playing" || !selSrc || !tmdbId || histSavedRef.current) return;
    histSavedRef.current = true;
    saveAnimHistory(tmdbId, type, displayTitle, posterUrl, ep, season);
  }, [step, selSrc, tmdbId, type, displayTitle, posterUrl, ep, season]);

  useEffect(() => { histSavedRef.current = false; }, [tmdbId, type, ep, season]);

  // ── Fetch episode list for TV ─────────────────────────────────────────────
  useEffect(() => {
    if (type !== "tv" || !tmdbId) return;
    fetch(`/api/animation/season?id=${tmdbId}&season=${season}`)
      .then(r => r.json())
      .then(d => setEpisodes(d.episodes || []))
      .catch(() => {});
  }, [type, tmdbId, season]);

  // ── SSE stream ────────────────────────────────────────────────────────────
  useEffect(() => {
    const decodedTitle = decodeURIComponent(title);
    setStep("searching"); setSources([]); setSelSrc(null); setSseDone(false);
    seenUrls.current.clear();
    histSavedRef.current = false;

    const q = `/api/animation/sources-stream?title=${encodeURIComponent(decodedTitle)}&type=${type}&ep=${ep}&season=${season}&tmdbId=${encodeURIComponent(tmdbId)}`;
    const es = new EventSource(q);
    esRef.current = es;

    es.addEventListener("status", (e) => {
      setStatus((JSON.parse(e.data) as any).msg || "");
    });

    es.addEventListener("source", (e) => {
      const src = JSON.parse(e.data) as { url: string; label: string; directUrl?: string; proxyUrl?: string };
      const key = src.directUrl || src.url;
      if (seenUrls.current.has(key)) return;
      seenUrls.current.add(key);

      if (src.directUrl || src.proxyUrl) {
        const resolved = src.proxyUrl || src.directUrl!;
        const isHls    = isHlsUrl(resolved);
        const proxyUrl = src.proxyUrl || (isHls
          ? wrapHls(src.directUrl!, window.location.origin)
          : wrapMp4(src.directUrl!, window.location.origin));
        const newSrc: Source = {
          url      : src.url,
          label    : src.label,
          directUrl: src.directUrl,
          proxyUrl,
          status   : "ok",
          streamType: isHls ? "hls" : "mp4",
        };
        setSources(prev => {
          const updated = [...prev, newSrc];
          if (updated.length === 1) setStep("sources");
          return updated;
        });
        return;
      }

      // No direct URL yet — try client-side extraction
      const newSrc: Source = { url: src.url, label: src.label, status: "loading" };
      setSources(prev => {
        const updated = [...prev, newSrc];
        if (updated.length === 1) setStep("sources");
        return updated;
      });
      tryExtract(src.url);
    });

    es.addEventListener("error", (e) => {
      try { const d = JSON.parse((e as MessageEvent).data); setStatus(d.msg || "خطأ"); } catch { /* noop */ }
    });

    es.addEventListener("done", () => {
      es.close();
      setSseDone(true);
      setSources(prev => {
        if (prev.length === 0) { setStep("error"); setStatus("لم يُعثر على مصادر لـ " + decodeURIComponent(title)); }
        else setStep("sources");
        return prev;
      });
    });

    es.onerror = () => {
      es.close();
      setSources(prev => {
        if (prev.length === 0) { setStep("error"); setStatus("خطأ في الاتصال بالسيرفر"); }
        return prev;
      });
    };

    return () => { es.close(); };
  }, [title, type, ep, season, tmdbId, tryExtract]);

  // ── Compute resume time ───────────────────────────────────────────────────
  const resumeTime = useMemo(() => {
    if (!selSrc || step !== "playing") return 0;
    return loadAnimProgress(tmdbId, type, season, ep);
  }, [selSrc, step, tmdbId, type, season, ep]);

  // ── Render ────────────────────────────────────────────────────────────────
  return (
    <div className="min-h-screen bg-black flex flex-col" dir="rtl">

      {/* ── Top bar ── */}
      <div className="flex items-center gap-3 px-3 py-2.5 bg-black/90 border-b border-white/8">
        <button
          onClick={goBack}
          className="w-7 h-7 rounded-lg bg-white/8 flex items-center justify-center active:scale-90 transition-transform"
        >
          <ChevronRight className="w-4 h-4 text-white" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-[12px] font-black text-white font-['Cairo'] line-clamp-1">{displayTitle}{epLabel}</p>
          {type === "tv" && <p className="text-[9px] text-white/35 font-['Cairo']">الموسم {season}</p>}
        </div>
      </div>

      {/* ── RiftPlayer (when playing) ── */}
      <AnimatePresence>
        {step === "playing" && selSrc && (() => {
          const { url, isHls } = getSourceInfo(selSrc);
          return (
            <motion.div
              key="rift-player"
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              className="w-full bg-black"
            >
              <RiftPlayer
                key={`anim-${selSrc.url}`}
                src={url}
                isHls={isHls}
                title={displayTitle}
                ep={type === "tv" ? ep : undefined}
                totalEps={episodes.length || undefined}
                qualityLabel={selSrc.streamType === "hls" ? "HLS" : "MP4"}
                resumeTime={resumeTime > 10 ? resumeTime : undefined}
                onTimeUpdate={handleTimeUpdate}
                onFail={playNext}
                onBack={goBack}
              />
              <div className="px-3 py-2 flex items-center justify-between border-b border-white/6">
                <span className="text-[9px] text-white/30 font-['Cairo']">
                  {selSrc.directUrl ? "رابط مباشر ✓" : "سيرفر مؤقت"}
                </span>
                <button
                  onClick={() => setStep("sources")}
                  className="text-[10px] text-primary font-['Cairo'] font-black"
                >
                  تغيير السيرفر
                </button>
              </div>
            </motion.div>
          );
        })()}
      </AnimatePresence>

      {/* ── Searching state ── */}
      {step === "searching" && (
        <div className="flex-1 flex flex-col items-center justify-center gap-4 px-8 py-12">
          {posterUrl && (
            <motion.img
              src={posterUrl}
              alt=""
              initial={{ scale: 0.9, opacity: 0 }}
              animate={{ scale: 1, opacity: 1 }}
              className="w-24 rounded-xl shadow-2xl"
            />
          )}
          <div className="text-center space-y-2.5">
            <div className="w-10 h-10 border-2 border-primary border-t-transparent rounded-full animate-spin mx-auto" />
            <p className="text-sm font-black text-white font-['Cairo']">{displayTitle}</p>
            <p className="text-[11px] text-white/35 font-['Cairo']">{statusMsg}</p>
          </div>
        </div>
      )}

      {/* ── Sources picker ── */}
      {(step === "sources" || step === "playing") && (
        <div className="px-3 py-4 flex-1">
          {step !== "playing" && (
            <div className="flex items-center justify-between mb-3">
              <h2 className="text-[14px] font-black text-white font-['Cairo']">اختر السيرفر</h2>
              <span className="text-[9px] text-white/30 font-['Cairo']">{sources.length} نتيجة</span>
            </div>
          )}
          {step === "playing" && (
            <div className="flex items-center gap-2 mb-3">
              <h2 className="text-[12px] font-black text-white font-['Cairo']">سيرفرات أخرى</h2>
            </div>
          )}

          <div className="space-y-2">
            {sources.map((src, i) => {
              const isActive   = selSrc?.url === src.url && step === "playing";
              const isUnknown  = (src.status as any) === "unknown";
              const isOk       = src.status === "ok";
              const isLoading  = src.status === "loading";
              return (
                <motion.button
                  key={i}
                  initial={{ opacity: 0, y: 8 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.04 }}
                  onClick={() => playSource(src)}
                  disabled={isLoading}
                  className={`w-full flex items-center gap-3 px-3 py-3 rounded-2xl border transition-all text-right disabled:opacity-60 ${
                    isActive
                      ? "bg-primary/15 border-primary/30"
                      : isOk
                      ? "bg-emerald-500/8 border-emerald-500/20 active:scale-[0.98] active:bg-emerald-500/12"
                      : isUnknown
                      ? "bg-white/5 border-white/8 active:scale-[0.98] active:bg-white/10"
                      : "bg-white/5 border-white/8 active:scale-[0.98] active:bg-white/10"
                  }`}
                >
                  <div className={`w-8 h-8 rounded-xl flex items-center justify-center flex-shrink-0 ${
                    isOk      ? "bg-emerald-500/15 border border-emerald-500/25" :
                    isUnknown ? "bg-amber-500/10 border border-amber-500/20" :
                    isLoading ? "bg-primary/10 border border-primary/20" :
                    "bg-white/6 border border-white/10"
                  }`}>
                    {isOk      && <CheckCircle className="w-3.5 h-3.5 text-emerald-400" />}
                    {isUnknown && <Play className="w-3.5 h-3.5 text-amber-400" />}
                    {isLoading && <Loader2 className="w-3.5 h-3.5 text-primary animate-spin" />}
                    {!src.status && <Server className="w-3.5 h-3.5 text-white/30" />}
                  </div>
                  <div className="flex-1 min-w-0 text-right">
                    <p className={`text-[12px] font-black font-['Cairo'] ${isActive ? "text-primary" : "text-white"}`}>
                      {src.label}
                    </p>
                    <p className="text-[9px] truncate font-['Cairo'] text-white/25">
                      {src.directUrl  ? "✓ رابط مباشر"   :
                       isUnknown      ? "اضغط للمحاولة"  :
                       isLoading      ? "جاري الفحص…"    :
                       (src.url || "").replace(/^https?:\/\//, "").slice(0, 35)}
                    </p>
                  </div>
                  {isActive
                    ? <Wifi className="w-3.5 h-3.5 text-primary flex-shrink-0" />
                    : isLoading
                    ? null
                    : <Play className={`w-3.5 h-3.5 flex-shrink-0 ${isOk ? "text-emerald-400/70" : "text-white/30"}`} />
                  }
                </motion.button>
              );
            })}

            {!sseDone && sources.length > 0 && (
              <div className="flex items-center gap-2 py-2 px-3 text-white/20 text-[10px] font-['Cairo']">
                <Loader2 className="w-3 h-3 animate-spin" />
                جاري البحث عن المزيد…
              </div>
            )}

            {sseDone && sources.length > 0 && sources.every(s => (s.status as any) === "unknown") && (
              <motion.div
                initial={{ opacity: 0, y: 6 }}
                animate={{ opacity: 1, y: 0 }}
                className="mt-2 px-3.5 py-3 rounded-2xl bg-amber-500/6 border border-amber-500/15 flex gap-2.5 items-start"
              >
                <AlertCircle className="w-4 h-4 text-amber-400/60 flex-shrink-0 mt-0.5" />
                <div>
                  <p className="text-[11px] font-black text-amber-300/70 font-['Cairo']">ملاحظة</p>
                  <p className="text-[10px] text-amber-200/40 font-['Cairo'] leading-relaxed mt-0.5">
                    هذه السيرفرات تعتمد على JavaScript للتشغيل. اضغط على أي سيرفر للمحاولة — قد يعمل بعضها.
                  </p>
                </div>
              </motion.div>
            )}
          </div>
        </div>
      )}

      {/* ── Error state ── */}
      {step === "error" && (
        <div className="flex-1 flex flex-col items-center justify-center gap-4 px-8 py-12">
          <AlertCircle className="w-10 h-10 text-red-400/60" />
          <div className="text-center space-y-2">
            <p className="text-sm font-black text-white font-['Cairo']">{displayTitle}</p>
            <p className="text-[11px] text-white/35 font-['Cairo']">{statusMsg}</p>
          </div>
          <button
            onClick={goBack}
            className="flex items-center gap-2 px-4 py-2.5 rounded-2xl bg-primary/15 border border-primary/25 text-[12px] font-black text-primary font-['Cairo'] active:scale-95 transition-transform"
          >
            <ChevronRight className="w-4 h-4" />
            العودة
          </button>
        </div>
      )}

      {/* ── Episode list (TV shows only) ── */}
      {type === "tv" && episodes.length > 0 && (
        <div className="px-3 py-3 border-t border-white/6">
          <button
            onClick={() => setShowEpList(o => !o)}
            className="w-full flex items-center justify-between py-1"
          >
            <div className="flex items-center gap-2">
              <List className="w-4 h-4 text-primary" />
              <span className="text-[13px] font-black text-white font-['Cairo']">الحلقات</span>
              <span className="text-[10px] text-white/30 bg-white/6 px-2 py-0.5 rounded-lg font-['Cairo']">
                {episodes.length} حلقة · الموسم {season}
              </span>
            </div>
            <ChevronDown className={`w-4 h-4 text-white/40 transition-transform ${showEpList ? "rotate-180" : ""}`} />
          </button>
          <AnimatePresence>
            {showEpList && (
              <motion.div
                initial={{ height: 0, opacity: 0 }}
                animate={{ height: "auto", opacity: 1 }}
                exit={{ height: 0, opacity: 0 }}
                transition={{ duration: 0.2 }}
                className="overflow-hidden"
              >
                <div className="mt-2 space-y-1.5 max-h-64 overflow-y-auto" style={{ scrollbarWidth: "none" }}>
                  {episodes.map(epItem => {
                    const isActive = epItem.episode_number === ep;
                    return (
                      <button
                        key={epItem.episode_number}
                        onClick={() => {
                          const newParams = new URLSearchParams(window.location.search);
                          newParams.set("ep", String(epItem.episode_number));
                          navigate(`/animation/watch?${newParams.toString()}`);
                        }}
                        className={`w-full flex items-center gap-3 px-3 py-2.5 rounded-xl border text-right transition-all active:scale-[0.98] ${
                          isActive
                            ? "bg-primary/15 border-primary/25"
                            : "bg-white/4 border-white/6 active:bg-white/8"
                        }`}
                      >
                        <div className={`w-7 h-7 rounded-lg flex items-center justify-center flex-shrink-0 text-[11px] font-black ${
                          isActive ? "bg-primary/20 text-primary" : "bg-white/8 text-white/40"
                        } font-['Cairo']`}>
                          {epItem.episode_number}
                        </div>
                        <div className="flex-1 min-w-0 text-right">
                          <p className={`text-[11px] font-black font-['Cairo'] line-clamp-1 ${isActive ? "text-primary" : "text-white/80"}`}>
                            {epItem.name || `الحلقة ${epItem.episode_number}`}
                          </p>
                          {epItem.runtime && (
                            <p className="text-[9px] text-white/25 font-['Cairo']">{epItem.runtime} دقيقة</p>
                          )}
                        </div>
                        {isActive && <SkipForward className="w-3.5 h-3.5 text-primary flex-shrink-0" />}
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
  );
}

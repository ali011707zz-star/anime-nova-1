import { useState, useEffect, useRef, useCallback, useMemo } from "react";
import { useLocation, Link } from "wouter";
import {
  ChevronRight, Play, Loader2, AlertCircle,
  RefreshCw, Server, CheckCircle, Wifi, XCircle, SkipForward,
  List, ChevronDown,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

interface Source {
  url: string;
  label: string;
  directUrl?: string;
  proxyUrl?: string;
  status?: "loading" | "ok" | "fail";
  isEmbed?: boolean;
  streamType?: "hls" | "mp4" | "dash";
}

function wrapHls(url: string, ref: string): string {
  return `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}
function wrapMp4(url: string, ref: string): string {
  return `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}

const KNOWN_EMBEDS = [
  "mega.nz", "mega.co.nz", "vidmoly", "vidbm", "ok.ru", "dailymotion", "youtube",
  "ya.kooora", "imovietime.bond",
];

function isEmbedUrl(url: string): boolean {
  return KNOWN_EMBEDS.some(d => url.includes(d));
}
function isHlsUrl(url: string): boolean {
  return url.includes(".m3u8") || url.includes("/hls/") || url.includes("yplayer");
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
  const [selSrc, setSelSrc]    = useState<Source | null>(null);
  const [sseDone, setSseDone]  = useState(false);
  const [playerErr, setPlayerErr] = useState(false);
  const [episodes, setEpisodes] = useState<EpisodeItem[]>([]);
  const [showEpList, setShowEpList] = useState(false);
  const videoRef = useRef<HTMLVideoElement>(null);
  const hlsRef   = useRef<any>(null);
  const esRef    = useRef<EventSource | null>(null);
  const seenUrls = useRef(new Set<string>());
  const lastProgressSave = useRef(0);
  const histSavedRef = useRef(false);

  const displayTitle = decodeURIComponent(title);
  const epLabel = type === "tv" ? ` • الحلقة ${ep}` : "";
  const posterUrl = poster ? decodeURIComponent(poster) : "";

  // ── Back navigation ────────────────────────────────────────────────────────
  const goBack = useCallback(() => {
    if (tmdbId && type) navigate(`/animation/${type}/${tmdbId}`);
    else navigate("/animations");
  }, [tmdbId, type, navigate]);

  // HLS.js dynamic import
  const loadHls = useCallback(async (videoEl: HTMLVideoElement, src: string) => {
    if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
    if (videoEl.canPlayType("application/vnd.apple.mpegurl")) {
      videoEl.src = src;
      videoEl.play().catch(() => {});
      return;
    }
    try {
      const { default: Hls } = await import("hls.js");
      if (!Hls.isSupported()) { videoEl.src = src; videoEl.play().catch(() => {}); return; }
      const hls = new Hls({ enableWorker: true, lowLatencyMode: false });
      hlsRef.current = hls;
      hls.loadSource(src);
      hls.attachMedia(videoEl);
      hls.on(Hls.Events.MANIFEST_PARSED, () => { videoEl.play().catch(() => {}); });
    } catch {
      videoEl.src = src;
      videoEl.play().catch(() => {});
    }
  }, []);

  // Determine playable URL for a source
  const resolvePlayUrl = useCallback((src: Source): { url: string; isHls: boolean; isEmbed: boolean } => {
    const referer = window.location.origin;

    if (src.proxyUrl) {
      const isHls = src.proxyUrl.includes("hls-proxy") || src.proxyUrl.includes(".m3u8");
      return { url: src.proxyUrl, isHls, isEmbed: false };
    }

    const raw = src.directUrl || src.url;

    if (isEmbedUrl(raw) && !src.directUrl) {
      return { url: raw, isHls: false, isEmbed: true };
    }
    if (raw.startsWith("/api/anime/hls-proxy") || raw.includes(".m3u8")) {
      const proxied = raw.startsWith("/") ? raw : wrapHls(raw, referer);
      return { url: proxied, isHls: true, isEmbed: false };
    }
    const proxied = raw.startsWith("/api/") ? raw : wrapMp4(raw, referer);
    return { url: proxied, isHls: false, isEmbed: false };
  }, []);

  // Play a source
  const playSource = useCallback((src: Source) => {
    setSelSrc(src);
    setPlayerErr(false);
    setStep("playing");
  }, []);

  // Play next available source
  const playNext = useCallback(() => {
    if (!selSrc) return;
    const idx = sources.findIndex(s => s.url === selSrc.url);
    const next = sources.find((s, i) => i > idx && (s.status === "ok" || (s.status as any) === "unknown"));
    if (next) playSource(next);
    else setStep("sources");
  }, [selSrc, sources, playSource]);

  // Attach player when selSrc + step=playing
  useEffect(() => {
    if (step !== "playing" || !selSrc) return;
    setPlayerErr(false);
    const { url, isHls, isEmbed } = resolvePlayUrl(selSrc);
    if (isEmbed) return;
    const video = videoRef.current;
    if (!video) return;

    const onError = () => setPlayerErr(true);

    const onCanPlay = () => {
      const saved = loadAnimProgress(tmdbId, type, season, ep);
      if (saved > 10 && video.duration && saved < video.duration - 30) {
        video.currentTime = saved;
      }
    };

    const onTimeUpdate = () => {
      const now = Date.now();
      if (now - lastProgressSave.current < 5000) return;
      lastProgressSave.current = now;
      saveAnimProgress(tmdbId, type, season, ep, video.currentTime);
    };

    video.addEventListener("error", onError);
    video.addEventListener("canplay", onCanPlay);
    video.addEventListener("timeupdate", onTimeUpdate);

    if (isHls) {
      loadHls(video, url);
    } else {
      if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
      video.src = url;
      video.play().catch(() => {});
    }

    return () => {
      video.removeEventListener("error", onError);
      video.removeEventListener("canplay", onCanPlay);
      video.removeEventListener("timeupdate", onTimeUpdate);
      if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
    };
  }, [step, selSrc, loadHls, resolvePlayUrl, tmdbId, type, season, ep]);

  // Save to watch history when playback starts
  useEffect(() => {
    if (step !== "playing" || !selSrc || !tmdbId || histSavedRef.current) return;
    histSavedRef.current = true;
    saveAnimHistory(tmdbId, type, displayTitle, posterUrl, ep, season);
  }, [step, selSrc, tmdbId, type, displayTitle, posterUrl, ep, season]);

  // Reset history-saved flag when episode/source changes
  useEffect(() => { histSavedRef.current = false; }, [tmdbId, type, ep, season]);

  // Fetch episode list for TV shows
  useEffect(() => {
    if (type !== "tv" || !tmdbId) return;
    fetch(`/api/animation/season?id=${tmdbId}&season=${season}`)
      .then(r => r.json())
      .then(d => setEpisodes(d.episodes || []))
      .catch(() => {});
  }, [type, tmdbId, season]);

  // Extract direct URL for a source
  const tryExtract = useCallback(async (url: string) => {
    try {
      const r = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(url)}`);
      const d = await r.json();
      let direct = d.directUrl || d.url || "";
      if (direct && direct.includes(".m3u8")) {
        direct = wrapHls(direct, url);
      }
      setSources(prev => prev.map(s =>
        s.url === url
          ? { ...s, directUrl: direct || undefined, status: direct ? "ok" : "unknown" as any }
          : s
      ));
    } catch {
      setSources(prev => prev.map(s => s.url === url ? { ...s, status: "unknown" as any } : s));
    }
  }, []);

  // Start SSE stream
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

      if (src.directUrl) {
        const isHls = src.directUrl.includes(".m3u8") || src.directUrl.includes("hls-proxy");
        const proxyUrl = src.proxyUrl || (isHls ? wrapHls(src.directUrl, window.location.origin) : wrapMp4(src.directUrl, window.location.origin));
        const newSrc: Source = { url: src.url, label: src.label, directUrl: src.directUrl, proxyUrl, status: "ok", isEmbed: false };
        setSources(prev => {
          const updated = [...prev, newSrc];
          if (updated.length === 1) setStep("sources");
          return updated;
        });
        return;
      }

      const embed = isEmbedUrl(src.url) && !isHlsUrl(src.url);
      const newSrc: Source = { url: src.url, label: src.label, status: embed ? "ok" : "loading", isEmbed: embed };
      setSources(prev => {
        const updated = [...prev, newSrc];
        if (updated.length === 1) setStep("sources");
        return updated;
      });
      if (!embed) tryExtract(src.url);
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

  const renderPlayer = () => {
    if (!selSrc) return null;
    const { url, isHls, isEmbed } = resolvePlayUrl(selSrc);
    if (isEmbed) {
      return (
        <div className="w-full" style={{ paddingBottom: "56.25%", position: "relative" }}>
          <iframe
            src={url}
            className="absolute inset-0 w-full h-full"
            allowFullScreen
            allow="autoplay; fullscreen"
            sandbox="allow-same-origin allow-scripts allow-forms allow-popups-to-escape-sandbox"
            style={{ border: "none", background: "#000" }}
          />
        </div>
      );
    }
    return (
      <div className="relative w-full" style={{ paddingBottom: "56.25%" }}>
        <video
          ref={videoRef}
          controls
          playsInline
          crossOrigin="anonymous"
          className="absolute inset-0 w-full h-full"
          style={{ background: "#000" }}
        />
        {playerErr && (
          <div className="absolute inset-0 flex flex-col items-center justify-center bg-black/90 gap-3">
            <XCircle className="w-9 h-9 text-red-400/70" />
            <p className="text-[12px] font-black text-white/70 font-['Cairo']">تعذّر تشغيل هذا السيرفر</p>
            <div className="flex gap-2">
              <button
                onClick={playNext}
                className="flex items-center gap-1.5 px-3.5 py-2 rounded-2xl bg-primary/15 border border-primary/25 text-[11px] font-black text-primary font-['Cairo'] active:scale-95 transition-transform"
              >
                <SkipForward className="w-3.5 h-3.5" />
                السيرفر التالي
              </button>
              <button
                onClick={() => setStep("sources")}
                className="flex items-center gap-1.5 px-3.5 py-2 rounded-2xl bg-white/6 border border-white/10 text-[11px] font-black text-white/50 font-['Cairo'] active:scale-95 transition-transform"
              >
                <Server className="w-3.5 h-3.5" />
                كل السيرفرات
              </button>
            </div>
          </div>
        )}
      </div>
    );
  };

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

      {/* ── Video player (when playing) ── */}
      <AnimatePresence>
        {step === "playing" && selSrc && (
          <motion.div
            key="player"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            className="w-full bg-black"
          >
            {renderPlayer()}
            <div className="px-3 py-2 flex items-center justify-between border-b border-white/6">
              <span className="text-[9px] text-white/30 font-['Cairo']">
                {selSrc.isEmbed ? "إطار مدمج" : (selSrc.directUrl ? "رابط مباشر ✓" : "سيرفر مؤقت")}
              </span>
              <button onClick={() => setStep("sources")} className="text-[10px] text-primary font-['Cairo'] font-black">
                تغيير السيرفر
              </button>
            </div>
          </motion.div>
        )}
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
              const isActive = selSrc?.url === src.url && step === "playing";
              const isUnknown = (src.status as any) === "unknown";
              const isOk = src.status === "ok";
              const isLoading = src.status === "loading";
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
                      {src.directUrl ? "✓ رابط مباشر" :
                       isUnknown    ? "اضغط للمحاولة" :
                       isLoading    ? "جاري الفحص…" :
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
                    const epUrl = `/animation/watch?title=${title}&type=tv&id=${tmdbId}&ep=${epItem.episode_number}&season=${season}&poster=${poster}`;
                    return (
                      <Link key={epItem.episode_number} href={epUrl}>
                        <div className={`flex items-center gap-2.5 px-3 py-2 rounded-xl border transition-all ${
                          isActive
                            ? "bg-primary/15 border-primary/25"
                            : "bg-[#111116] border-white/6 active:bg-white/8"
                        }`}>
                          <div className={`w-6 h-6 rounded-lg flex items-center justify-center text-[10px] font-black flex-shrink-0 font-mono ${
                            isActive ? "bg-primary text-white" : "bg-white/8 text-white/40"
                          }`}>
                            {epItem.episode_number}
                          </div>
                          <p className={`text-[11px] font-black line-clamp-1 font-['Cairo'] flex-1 ${
                            isActive ? "text-primary" : "text-white/80"
                          }`}>
                            {epItem.name}
                          </p>
                          {isActive && <Wifi className="w-3 h-3 text-primary flex-shrink-0" />}
                        </div>
                      </Link>
                    );
                  })}
                </div>
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      )}

      {/* ── Error state ── */}
      {step === "error" && (
        <div className="flex-1 flex flex-col items-center justify-center gap-4 px-8 py-12">
          {posterUrl && (
            <img src={posterUrl} alt="" className="w-24 rounded-xl shadow-2xl opacity-40" />
          )}
          <div className="text-center space-y-2.5">
            <AlertCircle className="w-9 h-9 text-white/20 mx-auto" />
            <p className="text-sm font-black text-white font-['Cairo']">لم يُعثر على مصادر</p>
            <p className="text-[11px] text-white/35 font-['Cairo'] leading-relaxed">{statusMsg}</p>
          </div>
          <div className="flex gap-3">
            <button
              onClick={() => window.location.reload()}
              className="flex items-center gap-1.5 px-4 py-2 rounded-2xl bg-primary/15 border border-primary/25 text-xs font-black text-primary font-['Cairo'] active:scale-95 transition-transform"
            >
              <RefreshCw className="w-3.5 h-3.5" />
              إعادة المحاولة
            </button>
            <button
              onClick={goBack}
              className="flex items-center gap-1.5 px-4 py-2 rounded-2xl bg-white/6 border border-white/10 text-xs font-black text-white/50 font-['Cairo'] active:scale-95 transition-transform"
            >
              <ChevronRight className="w-3.5 h-3.5" />
              رجوع
            </button>
          </div>
        </div>
      )}
    </div>
  );
}

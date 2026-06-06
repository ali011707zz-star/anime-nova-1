import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, Play, Loader2, AlertCircle,
  RefreshCw, Server, CheckCircle,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

interface Source { url: string; label: string; directUrl?: string; status?: "loading" | "ok" | "fail" }

export default function AnimationWatch() {
  const [, navigate] = useLocation();
  const params       = new URLSearchParams(window.location.search);
  const title        = params.get("title")  || "";
  const type         = params.get("type")   || "movie";
  const ep           = parseInt(params.get("ep") || "1", 10) || 1;
  const season       = parseInt(params.get("season") || "1", 10) || 1;
  const tmdbId       = params.get("id")     || "";
  const poster       = params.get("poster") || "";

  const [step, setStep]       = useState<"searching" | "sources" | "playing" | "error">("searching");
  const [statusMsg, setStatus] = useState("جاري البحث…");
  const [sources, setSources]  = useState<Source[]>([]);
  const [playUrl, setPlayUrl]  = useState<string | null>(null);
  const [playLabel, setLabel]  = useState("");
  const videoRef = useRef<HTMLVideoElement>(null);
  const esRef    = useRef<EventSource | null>(null);
  const seenUrls = useRef(new Set<string>());

  // Start SSE stream
  useEffect(() => {
    const decodedTitle = decodeURIComponent(title);
    setStep("searching"); setSources([]); setPlayUrl(null);
    seenUrls.current.clear();

    const q = `/api/animation/sources-stream?title=${encodeURIComponent(decodedTitle)}&type=${type}&ep=${ep}&season=${season}`;
    const es = new EventSource(q);
    esRef.current = es;

    es.addEventListener("status", (e) => {
      setStatus((JSON.parse(e.data) as any).msg || "");
    });

    es.addEventListener("source", (e) => {
      const src = JSON.parse(e.data) as { url: string; label: string };
      if (seenUrls.current.has(src.url)) return;
      seenUrls.current.add(src.url);
      const newSrc: Source = { url: src.url, label: src.label, status: "loading" };
      setSources(prev => {
        const updated = [...prev, newSrc];
        if (updated.length === 1) {
          // Auto-try first source extraction
          setStep("sources");
        }
        return updated;
      });
      // Try to extract direct URL
      tryExtract(src.url);
    });

    es.addEventListener("error", (e) => {
      try { const d = JSON.parse((e as MessageEvent).data); setStatus(d.msg || "خطأ"); } catch { /* noop */ }
    });

    es.addEventListener("done", () => {
      es.close();
      setSources(prev => {
        if (prev.length === 0) {
          setStep("error");
          setStatus("لم يُعثر على مصادر لـ " + decodeURIComponent(title));
        } else {
          setStep("sources");
        }
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
  }, [title, type, ep, season]);

  const tryExtract = useCallback(async (url: string) => {
    try {
      const r = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(url)}`);
      const d = await r.json();
      const direct = d.directUrl || d.url || "";
      setSources(prev => prev.map(s =>
        s.url === url
          ? { ...s, directUrl: direct || undefined, status: direct ? "ok" : "fail" }
          : s
      ));
    } catch {
      setSources(prev => prev.map(s => s.url === url ? { ...s, status: "fail" } : s));
    }
  }, []);

  const playSource = (src: Source) => {
    const playable = src.directUrl || src.url;
    setPlayUrl(playable);
    setLabel(src.label);
    setStep("playing");
  };

  const retry = () => {
    setStep("searching"); setSources([]); setPlayUrl(null);
    seenUrls.current.clear();
    const decodedTitle = decodeURIComponent(title);
    const q = `/api/animation/sources-stream?title=${encodeURIComponent(decodedTitle)}&type=${type}&ep=${ep}&season=${season}`;
    const es = new EventSource(q);
    esRef.current?.close();
    esRef.current = es;
    // Re-attach same listeners by reloading the component
    window.location.reload();
  };

  const displayTitle = decodeURIComponent(title);
  const epLabel = type === "tv" ? ` • الحلقة ${ep}` : "";

  return (
    <div className="min-h-screen bg-black flex flex-col" dir="rtl">
      {/* ── Top bar ── */}
      <div className="flex items-center gap-3 px-4 py-3 bg-black/90 border-b border-white/8">
        <button
          onClick={() => navigate(-1 as any)}
          className="w-8 h-8 rounded-xl bg-white/8 flex items-center justify-center active:scale-90 transition-transform"
        >
          <ChevronRight className="w-4 h-4 text-white" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-[13px] font-black text-white font-['Cairo'] line-clamp-1">{displayTitle}</p>
          {type === "tv" && <p className="text-[10px] text-white/35 font-['Cairo']">الحلقة {ep} • الموسم {season}</p>}
        </div>
      </div>

      {/* ── Video player (when playing) ── */}
      <AnimatePresence>
        {step === "playing" && playUrl && (
          <motion.div
            key="player"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            className="w-full bg-black"
          >
            <div className="relative w-full" style={{ paddingBottom: "56.25%" }}>
              <video
                ref={videoRef}
                src={playUrl}
                controls
                autoPlay
                playsInline
                crossOrigin="anonymous"
                className="absolute inset-0 w-full h-full"
                style={{ background: "#000" }}
              />
            </div>
            <div className="px-4 py-2 flex items-center gap-2">
              <span className="text-[10px] text-white/30 font-['Cairo']">يشغّل: {playLabel}</span>
              <button onClick={() => setStep("sources")} className="text-[10px] text-primary font-['Cairo'] font-black">
                تغيير السيرفر
              </button>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Searching state ── */}
      {step === "searching" && (
        <div className="flex-1 flex flex-col items-center justify-center gap-5 px-8 py-16">
          {poster && (
            <motion.img
              src={decodeURIComponent(poster)}
              alt=""
              initial={{ scale: 0.9, opacity: 0 }}
              animate={{ scale: 1, opacity: 1 }}
              className="w-28 rounded-2xl shadow-2xl"
            />
          )}
          <div className="text-center space-y-3">
            <div className="w-12 h-12 border-2 border-primary border-t-transparent rounded-full animate-spin mx-auto" />
            <p className="text-sm font-black text-white font-['Cairo']">{displayTitle}{epLabel}</p>
            <p className="text-xs text-white/35 font-['Cairo']">{statusMsg}</p>
          </div>
        </div>
      )}

      {/* ── Sources picker ── */}
      {(step === "sources" || (step === "playing" && sources.length > 0)) && (
        <div className="px-4 py-5 flex-1">
          {step === "playing" ? null : (
            <div className="flex items-center justify-between mb-4">
              <h2 className="text-[15px] font-black text-white font-['Cairo']">اختر السيرفر</h2>
              <span className="text-[10px] text-white/30 font-['Cairo']">{sources.length} نتيجة</span>
            </div>
          )}

          {step !== "playing" && (
            <div className="space-y-2">
              {sources.map((src, i) => (
                <motion.button
                  key={i}
                  initial={{ opacity: 0, y: 10 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.05 }}
                  onClick={() => playSource(src)}
                  className="w-full flex items-center gap-3 p-4 rounded-2xl bg-white/5 border border-white/8 active:bg-white/10 active:scale-98 transition-all text-right"
                >
                  <div className={`w-9 h-9 rounded-xl flex items-center justify-center flex-shrink-0 ${
                    src.status === "ok"      ? "bg-emerald-500/15 border border-emerald-500/25" :
                    src.status === "fail"    ? "bg-white/6  border border-white/10"  :
                    src.status === "loading" ? "bg-primary/10 border border-primary/20" :
                    "bg-white/6 border border-white/10"
                  }`}>
                    {src.status === "ok"      && <CheckCircle className="w-4 h-4 text-emerald-400" />}
                    {src.status === "fail"    && <Server className="w-4 h-4 text-white/30" />}
                    {src.status === "loading" && <Loader2 className="w-4 h-4 text-primary animate-spin" />}
                    {!src.status              && <Server className="w-4 h-4 text-white/30" />}
                  </div>
                  <div className="flex-1 min-w-0 text-right">
                    <p className="text-[13px] font-black text-white font-['Cairo']">{src.label}</p>
                    <p className="text-[10px] text-white/25 truncate">{src.directUrl ? "رابط مباشر ✓" : (src.url || "").replace(/^https?:\/\//, "").slice(0, 35)}</p>
                  </div>
                  <Play className="w-4 h-4 text-primary flex-shrink-0" />
                </motion.button>
              ))}

              {/* Loading more indicator */}
              {step === "sources" && (
                <div className="flex items-center gap-2 py-2 px-4 text-white/25 text-xs font-['Cairo']">
                  <Loader2 className="w-3 h-3 animate-spin" />
                  جاري البحث عن المزيد…
                </div>
              )}
            </div>
          )}
        </div>
      )}

      {/* ── Error state ── */}
      {step === "error" && (
        <div className="flex-1 flex flex-col items-center justify-center gap-5 px-8 py-16">
          {poster && (
            <img src={decodeURIComponent(poster)} alt="" className="w-28 rounded-2xl shadow-2xl opacity-40" />
          )}
          <div className="text-center space-y-3">
            <AlertCircle className="w-10 h-10 text-white/20 mx-auto" />
            <p className="text-sm font-black text-white font-['Cairo']">لم يُعثر على مصادر</p>
            <p className="text-xs text-white/35 font-['Cairo'] leading-relaxed">{statusMsg}</p>
          </div>
          <button
            onClick={retry}
            className="flex items-center gap-2 px-5 py-2.5 rounded-2xl bg-white/8 border border-white/12 text-sm font-black text-white/60 font-['Cairo'] active:scale-95 transition-transform"
          >
            <RefreshCw className="w-4 h-4" />
            إعادة المحاولة
          </button>
          <button
            onClick={() => navigate(-1 as any)}
            className="text-primary text-sm font-black font-['Cairo']"
          >
            العودة للتفاصيل
          </button>
        </div>
      )}
    </div>
  );
}

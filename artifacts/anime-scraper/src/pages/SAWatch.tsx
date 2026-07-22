import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation, useSearch } from "wouter";
import { ChevronRight, RefreshCw, AlertCircle, Zap } from "lucide-react";
import { motion } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";
import { AnimeMascot } from "@/components/AnimeMascot";

export default function SAWatch() {
  const [, navigate]  = useLocation();
  const search        = useSearch();
  const params        = new URLSearchParams(search);

  const animeId  = params.get("animeId")  || params.get("id") || "";
  const ep       = params.get("ep")       || "1";
  const name     = params.get("name")     || "بدون عنوان";
  const epName   = params.get("epName")   || `الحلقة ${ep}`;
  const poster   = params.get("poster")   || "";

  const posterUrl = poster ? decodeURIComponent(poster) : "";

  const [src, setSrc]       = useState<{ hdUrl: string; sdUrl?: string } | null>(null);
  const [activeUrl, setActiveUrl] = useState<string>("");
  const [quality, setQuality]     = useState<"hd" | "sd">("hd");
  const [loading, setLoading] = useState(true);
  const [error, setError]    = useState<string | null>(null);
  const mountedRef = useRef(true);

  const goBack = useCallback(() => {
    if (window.history.length > 1) {
      window.history.back();
    } else if (animeId) {
      navigate(`/sanime/${animeId}?name=${encodeURIComponent(name)}&img=${encodeURIComponent(poster)}`);
    } else {
      navigate("/sanime");
    }
  }, [animeId, name, poster, navigate]);

  const loadSrc = useCallback(async () => {
    if (!animeId || !ep) { setError("معرف الحلقة مفقود"); setLoading(false); return; }
    setLoading(true); setError(null); setSrc(null);

    // Session cache — روابط دائمة لكن نتجنب الطلبات الزائدة
    const cacheKey = `sa-src-${animeId}-${ep}`;
    try {
      const cached = sessionStorage.getItem(cacheKey);
      if (cached) {
        const c = JSON.parse(cached);
        if (Date.now() - c.ts < 30 * 60_000) { // 30 min (permanent but cache anyway)
          setSrc(c);
          setActiveUrl(quality === "hd" ? c.hdUrl : (c.sdUrl || c.hdUrl));
          setLoading(false);
          return;
        }
      }
    } catch {}

    try {
      const r = await fetch(`${API_BASE}/api/sanime/src?id=${encodeURIComponent(animeId)}&ep=${encodeURIComponent(ep)}`);
      if (!mountedRef.current) return;
      if (!r.ok) { setError("تعذّر تحميل الحلقة"); setLoading(false); return; }
      const d = await r.json() as { hdUrl?: string; sdUrl?: string };
      if (!d.hdUrl) { setError("لم يُعثر على مصدر الفيديو"); setLoading(false); return; }
      const result = { hdUrl: d.hdUrl, sdUrl: d.sdUrl || undefined, ts: Date.now() };
      try { sessionStorage.setItem(cacheKey, JSON.stringify(result)); } catch {}
      setSrc(result);
      setActiveUrl(quality === "hd" ? result.hdUrl : (result.sdUrl || result.hdUrl));
      setLoading(false);
    } catch {
      if (!mountedRef.current) return;
      setError("خطأ في الاتصال بالخادم");
      setLoading(false);
    }
  }, [animeId, ep, quality]);

  useEffect(() => {
    mountedRef.current = true;
    loadSrc();
    return () => { mountedRef.current = false; };
  }, [loadSrc]);

  // Switch quality without refetching
  useEffect(() => {
    if (!src) return;
    setActiveUrl(quality === "hd" ? src.hdUrl : (src.sdUrl || src.hdUrl));
  }, [quality, src]);

  // Save watch progress
  const handleTimeUpdate = useCallback((currentTime: number) => {
    if (!animeId || !ep) return;
    localStorage.setItem(`sa-wp-${animeId}-${ep}`, String(Math.floor(currentTime)));
  }, [animeId, ep]);

  // Save history
  useEffect(() => {
    if (!name || !ep || !animeId) return;
    try {
      const hist = JSON.parse(localStorage.getItem("sa-watch-history") || "[]");
      const entry = { animeId, name, ep: parseInt(ep, 10), epName, poster: posterUrl, date: Date.now() };
      const filtered = hist.filter((h: any) => !(h.animeId === animeId && h.ep === entry.ep)).slice(0, 49);
      localStorage.setItem("sa-watch-history", JSON.stringify([entry, ...filtered]));
    } catch {}
  }, [animeId, name, ep, epName, posterUrl]);

  /* ── Loading ── */
  if (loading) {
    return (
      <div className="fixed inset-0 bg-[#07070d] overflow-hidden" dir="rtl">
        {posterUrl && (
          <div className="absolute inset-0">
            <img src={posterUrl} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.15] saturate-150" />
            <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/85 via-[#07070d]/50 to-[#07070d]/92" />
          </div>
        )}
        <button onClick={goBack}
          className="absolute top-4 right-4 z-10 w-9 h-9 flex items-center justify-center rounded-xl bg-white/8 border border-white/10 active:scale-90 transition-transform">
          <ChevronRight className="w-4 h-4 text-white/70" />
        </button>
        <div className="absolute inset-0 flex flex-col items-center justify-center gap-4">
          <AnimeMascot variant="loading" className="w-24 h-24" />
          <div className="text-center">
            <p className="text-white/90 font-bold font-['Cairo'] text-base">{name}</p>
            <p className="text-white/45 text-xs font-['Cairo'] mt-0.5">{epName}</p>
          </div>
        </div>
      </div>
    );
  }

  /* ── Error ── */
  if (error || !activeUrl) {
    return (
      <div className="fixed inset-0 bg-[#07070d] flex flex-col items-center justify-center gap-5 p-6" dir="rtl">
        <AlertCircle className="w-12 h-12 text-red-400/60" />
        <div className="text-center">
          <p className="text-white/80 font-bold font-['Cairo'] text-base">تعذّر تشغيل الحلقة</p>
          <p className="text-white/35 text-xs font-['Cairo'] mt-1">{error}</p>
        </div>
        <div className="flex gap-3">
          <button onClick={loadSrc}
            className="flex items-center gap-2 px-5 py-2.5 rounded-xl text-sm font-bold font-['Cairo'] text-white"
            style={{ background: "linear-gradient(135deg,rgba(124,58,237,0.40),rgba(79,70,229,0.25))", border: "1px solid rgba(139,92,246,0.35)" }}>
            <RefreshCw className="w-4 h-4" />
            إعادة المحاولة
          </button>
          <button onClick={goBack}
            className="flex items-center gap-2 px-5 py-2.5 rounded-xl text-sm font-bold font-['Cairo'] text-white/60 bg-white/5 border border-white/10">
            <ChevronRight className="w-4 h-4" />
            رجوع
          </button>
        </div>
      </div>
    );
  }

  /* ── Player ── */
  return (
    <div className="fixed inset-0 bg-[#07070d] flex flex-col" dir="rtl">
      {/* Header */}
      <div className="shrink-0 flex items-center gap-3 px-4 pt-4 pb-3 bg-gradient-to-b from-black/60 to-transparent absolute top-0 inset-x-0 z-10">
        <button onClick={goBack}
          className="w-9 h-9 flex items-center justify-center rounded-xl bg-black/30 backdrop-blur-sm border border-white/10 active:scale-90 transition-transform">
          <ChevronRight className="w-4 h-4 text-white/80" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-white/90 text-sm font-bold font-['Cairo'] truncate">{name}</p>
          <div className="flex items-center gap-1.5">
            <p className="text-white/40 text-[10px] font-['Cairo']">{epName}</p>
            <span className="flex items-center gap-0.5 text-[9px] font-bold font-['Cairo']"
              style={{ color: "#6ee7b7" }}>
              <Zap className="w-2 h-2" />
              دائم
            </span>
          </div>
        </div>
        {/* Quality toggle */}
        {src?.sdUrl && (
          <motion.div className="flex gap-1 shrink-0" initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
            {(["hd", "sd"] as const).map(q => (
              <button key={q} onClick={() => setQuality(q)}
                className={`px-2.5 py-1 rounded-lg text-[10px] font-bold font-['Cairo'] transition-all ${quality === q
                  ? "text-white" : "text-white/40 bg-white/[0.06] border border-white/10"}`}
                style={quality === q ? {
                  background: "linear-gradient(135deg,rgba(124,58,237,0.35),rgba(79,70,229,0.20))",
                  border: "1px solid rgba(139,92,246,0.40)"
                } : {}}>
                {q === "hd" ? "HD" : "SD"}
              </button>
            ))}
          </motion.div>
        )}
      </div>

      {/* Player */}
      <div className="flex-1 flex items-center justify-center">
        <RiftPlayer
          src={activeUrl}
          poster={posterUrl}
          title={name}
          type="mp4"
          onTimeUpdate={handleTimeUpdate}
        />
      </div>
    </div>
  );
}

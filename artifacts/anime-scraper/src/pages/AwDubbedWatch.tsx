import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation, useSearch } from "wouter";
import { ChevronRight, RefreshCw, AlertCircle } from "lucide-react";
import { motion } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";
import { AnimeMascot } from "@/components/AnimeMascot";

export default function AwDubbedWatch() {
  const [, navigate] = useLocation();
  const search       = useSearch();
  const params       = new URLSearchParams(search);

  const series      = params.get("series")   || "";
  const ep          = params.get("ep")        || "1";
  const title       = params.get("title")     || "بدون عنوان";
  const titleAr     = params.get("titleAr")   || "";
  const season      = params.get("season")    || "الموسم 1";
  const poster      = params.get("poster")    || "";
  const seasonsParam= params.get("seasons")   || "";
  const imgParam    = params.get("img")       || "";
  const keyParam    = params.get("key")       || "";

  const displayTitle = titleAr || title;
  const posterUrl    = poster ? decodeURIComponent(poster) : "";

  const [source,  setSource]  = useState<{ url: string } | null>(null);
  const [loading, setLoading] = useState(true);
  const [error,   setError]   = useState<string | null>(null);
  const mountedRef = useRef(true);

  const goBack = useCallback(() => {
    if (window.history.length > 1) {
      window.history.back();
    } else if (keyParam) {
      const k = encodeURIComponent(decodeURIComponent(keyParam));
      navigate(`/aw-dubbed/${k}?seasons=${encodeURIComponent(seasonsParam)}&title=${encodeURIComponent(title)}&titleAr=${encodeURIComponent(titleAr)}&img=${encodeURIComponent(imgParam)}`);
    } else {
      navigate("/aw-dubbed");
    }
  }, [keyParam, seasonsParam, title, titleAr, imgParam, navigate]);

  const loadSource = useCallback(async () => {
    if (!series) { setError("بيانات الحلقة مفقودة"); setLoading(false); return; }
    setLoading(true); setError(null); setSource(null);

    const cacheKey = `aw-dubbed-src-${series}-${ep}`;
    try {
      const cached = sessionStorage.getItem(cacheKey);
      if (cached) {
        const c = JSON.parse(cached);
        if (Date.now() - c.ts < 5 * 60_000) {
          setSource({ url: c.url });
          setLoading(false);
          return;
        }
      }
    } catch {}

    try {
      const r = await fetch(`${API_BASE}/api/aw-dubbed/watch-src?series=${encodeURIComponent(series)}&ep=${ep}`);
      if (!mountedRef.current) return;
      if (!r.ok) { setError("تعذّر تحميل الحلقة"); setLoading(false); return; }
      const d = await r.json();
      const playUrl = d.rawUrl || d.hlsUrl;
      if (!playUrl) { setError("لم يُعثر على مصدر الفيديو"); setLoading(false); return; }
      try { sessionStorage.setItem(cacheKey, JSON.stringify({ url: playUrl, ts: Date.now() })); } catch {}
      setSource({ url: playUrl });
      setLoading(false);
    } catch {
      if (!mountedRef.current) return;
      setError("خطأ في الاتصال بالخادم");
      setLoading(false);
    }
  }, [series, ep]);

  useEffect(() => {
    mountedRef.current = true;
    loadSource();
    return () => { mountedRef.current = false; };
  }, [loadSource]);

  const handleTimeUpdate = useCallback((currentTime: number) => {
    if (!series || !ep) return;
    localStorage.setItem(`aw-dubbed-wp-${series}-${ep}`, String(Math.floor(currentTime)));
  }, [series, ep]);

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
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
          style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)" }}>
          <ChevronRight className="w-5 h-5 text-white/60" />
        </button>

        <div className="relative h-full flex flex-col items-center justify-center gap-6 px-6">
          <motion.p initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.05, duration: 0.4 }}
            className="text-white/85 text-[14px] font-black font-['Cairo'] tracking-wide text-center">
            اللهم صلِّ وسلِّم على نبينا محمد ﷺ
          </motion.p>

          {posterUrl ? (
            <div className="relative shrink-0">
              <div className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{ background: "radial-gradient(ellipse, rgba(16,185,129,0.22) 0%, transparent 68%)" }} />
              <img src={posterUrl} alt={displayTitle}
                className="w-44 h-[248px] rounded-2xl object-cover"
                style={{ boxShadow: "0 28px 72px rgba(0,0,0,0.88), 0 0 0 1px rgba(255,255,255,0.08)" }} />
            </div>
          ) : (
            <div className="w-44 h-[248px] rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{ boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
              <div className="w-16 h-16 rounded-full bg-emerald-500/15 flex items-center justify-center">
                <div className="w-7 h-7 rounded-full bg-emerald-500/35" />
              </div>
            </div>
          )}

          <div className="text-center">
            <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5"
              style={{ textShadow: "0 2px 14px rgba(0,0,0,0.75)" }}>{displayTitle}</h2>
            <p className="text-white/35 text-[13px] font-['Cairo'] tracking-wide">{season} · الحلقة {ep}</p>
          </div>

          <div className="flex flex-col items-center gap-3">
            <AnimeMascot mood="loading" />
            <p className="text-white/75 text-[13px] font-bold font-['Cairo'] text-center leading-relaxed px-4">
              ⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ.
            </p>
          </div>
        </div>
      </div>
    );
  }

  /* ── Error ── */
  if (error) {
    return (
      <div className="fixed inset-0 bg-[#07070d] flex flex-col items-center justify-center gap-5 px-6" dir="rtl">
        {posterUrl && (
          <div className="absolute inset-0">
            <img src={posterUrl} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.08]" />
            <div className="absolute inset-0 bg-[#07070d]/90" />
          </div>
        )}
        <button onClick={goBack}
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center"
          style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)" }}>
          <ChevronRight className="w-5 h-5 text-white/60" />
        </button>
        <div className="relative z-10 flex flex-col items-center gap-5">
          <div className="w-16 h-16 rounded-full flex items-center justify-center"
            style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.20)" }}>
            <AlertCircle className="w-8 h-8 text-red-400" />
          </div>
          <div className="text-center">
            <p className="text-white/70 text-sm font-['Cairo']">{error}</p>
            <p className="text-white/25 text-xs font-['Cairo'] mt-1">{displayTitle} · الحلقة {ep}</p>
          </div>
          <div className="flex gap-3">
            <button onClick={loadSource}
              className="flex items-center gap-2 px-5 py-2.5 rounded-xl text-sm font-['Cairo']"
              style={{ background: "rgba(16,185,129,0.12)", border: "1px solid rgba(16,185,129,0.25)", color: "#6ee7b7" }}>
              <RefreshCw className="w-4 h-4" /> إعادة المحاولة
            </button>
            <button onClick={goBack}
              className="flex items-center gap-2 px-5 py-2.5 rounded-xl text-white/60 text-sm font-['Cairo']"
              style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.10)" }}>
              ← الحلقات
            </button>
          </div>
        </div>
      </div>
    );
  }

  /* ── Player ── */
  if (!source) return null;
  return (
    <div className="fixed inset-0 bg-black" dir="rtl">
      <RiftPlayer
        src={source.url}
        title={`${displayTitle} · ${season} · الحلقة ${ep}`}
        poster={posterUrl || undefined}
        onTimeUpdate={handleTimeUpdate}
        onBack={goBack}
      />
    </div>
  );
}

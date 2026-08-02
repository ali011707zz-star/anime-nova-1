import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation, useSearch } from "wouter";
import { ChevronRight, RefreshCw, AlertCircle, Play, CheckCircle2 } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";
import { AnimeMascot } from "@/components/AnimeMascot";

interface SourceItem {
  quality: string;
  name: string;
  rawUrl: string | null;
  hlsUrl: string | null;
}

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

  type Phase = "loading" | "picker" | "player" | "error";
  const [phase,      setPhase]      = useState<Phase>("loading");
  const [allSources, setAllSources] = useState<SourceItem[]>([]);
  const [selIdx,     setSelIdx]     = useState(0);
  const [playUrl,    setPlayUrl]    = useState<string | null>(null);
  const [error,      setError]      = useState<string | null>(null);
  const mountedRef   = useRef(true);

  const goBack = useCallback(() => {
    if (window.history.length > 1) {
      window.history.back();
    } else if (keyParam) {
      navigate(`/aw-dubbed/${encodeURIComponent(decodeURIComponent(keyParam))}?seasons=${encodeURIComponent(seasonsParam)}&title=${encodeURIComponent(title)}&titleAr=${encodeURIComponent(titleAr)}&img=${encodeURIComponent(imgParam)}`);
    } else {
      navigate("/aw-dubbed");
    }
  }, [keyParam, seasonsParam, title, titleAr, imgParam, navigate]);

  const loadSources = useCallback(async () => {
    if (!series) { setError("بيانات الحلقة مفقودة"); setPhase("error"); return; }
    setPhase("loading"); setError(null);

    const cacheKey = `aw-dubbed-src-${series}-${ep}`;
    try {
      const cached = sessionStorage.getItem(cacheKey);
      if (cached) {
        const c = JSON.parse(cached);
        if (Date.now() - c.ts < 5 * 60_000) {
          const srcs: SourceItem[] = c.allSources || [];
          if (srcs.length) {
            setAllSources(srcs);
            if (srcs.length === 1) {
              setPlayUrl(srcs[0].rawUrl || srcs[0].hlsUrl);
              setPhase("player");
            } else {
              setPhase("picker");
            }
            return;
          }
        }
      }
    } catch {}

    try {
      const r = await fetch(`${API_BASE}/api/aw-dubbed/watch-src?series=${encodeURIComponent(series)}&ep=${ep}`);
      if (!mountedRef.current) return;
      if (!r.ok) { setError("تعذّر تحميل الحلقة"); setPhase("error"); return; }
      const d = await r.json();
      const srcs: SourceItem[] = (d.allSources || []).filter((s: SourceItem) => s.rawUrl || s.hlsUrl);
      if (!srcs.length) {
        // fallback: use top-level rawUrl/hlsUrl
        const url = d.rawUrl || d.hlsUrl;
        if (!url) { setError("لم يُعثر على مصدر الفيديو"); setPhase("error"); return; }
        const single: SourceItem[] = [{ quality: d.quality || "720p", name: "الجودة الافتراضية", rawUrl: d.rawUrl || null, hlsUrl: d.hlsUrl || null }];
        setAllSources(single);
        setPlayUrl(url);
        setPhase("player");
        try { sessionStorage.setItem(cacheKey, JSON.stringify({ allSources: single, ts: Date.now() })); } catch {}
        return;
      }
      try { sessionStorage.setItem(cacheKey, JSON.stringify({ allSources: srcs, ts: Date.now() })); } catch {}
      setAllSources(srcs);
      if (srcs.length === 1) {
        setPlayUrl(srcs[0].rawUrl || srcs[0].hlsUrl);
        setPhase("player");
      } else {
        setSelIdx(0);
        setPhase("picker");
      }
    } catch {
      if (!mountedRef.current) return;
      setError("خطأ في الاتصال بالخادم");
      setPhase("error");
    }
  }, [series, ep]);

  useEffect(() => {
    mountedRef.current = true;
    loadSources();
    return () => { mountedRef.current = false; };
  }, [loadSources]);

  const handlePlay = (idx: number) => {
    const src = allSources[idx];
    if (!src) return;
    setSelIdx(idx);
    setPlayUrl(src.rawUrl || src.hlsUrl);
    setPhase("player");
  };

  const handleTimeUpdate = useCallback((currentTime: number) => {
    if (!series || !ep) return;
    localStorage.setItem(`aw-dubbed-wp-${series}-${ep}`, String(Math.floor(currentTime)));
  }, [series, ep]);

  // ─── quality badge color ───────────────────────────────────────────────────
  const qualityColor = (q: string) => {
    if (q.includes("1080")) return { bg: "rgba(234,179,8,0.15)",  border: "rgba(234,179,8,0.35)",  text: "#fde047" };
    if (q.includes("720"))  return { bg: "rgba(16,185,129,0.15)", border: "rgba(16,185,129,0.35)", text: "#6ee7b7" };
    return { bg: "rgba(255,255,255,0.06)", border: "rgba(255,255,255,0.15)", text: "rgba(255,255,255,0.55)" };
  };

  const serverLabel = (name: string) => {
    if (name.includes("PD"))  return "Pixeldrain";
    if (name.includes("MF"))  return "Mediafire";
    if (name.includes("KF"))  return "KrakenFiles";
    if (name.includes("VT"))  return "Vidtape";
    return name.replace(/AW·Dubbed\s*·\s*/gi, "").replace(/\s*·.*$/, "").trim();
  };

  // ─── Shared Loading / Poster backdrop ─────────────────────────────────────
  const Backdrop = () => (
    posterUrl ? (
      <div className="absolute inset-0 pointer-events-none">
        <img src={posterUrl} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.13] saturate-150" />
        <div className="absolute inset-0 bg-gradient-to-b from-[#07070d]/90 via-[#07070d]/55 to-[#07070d]/95" />
      </div>
    ) : null
  );

  // ────────────────────────────────────────────────────────── LOADING ────────
  if (phase === "loading") {
    return (
      <div className="fixed inset-0 bg-[#07070d] overflow-hidden" dir="rtl">
        <Backdrop />
        <button onClick={goBack}
          className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
          style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)" }}>
          <ChevronRight className="w-5 h-5 text-white/60" />
        </button>
        <div className="relative h-full flex flex-col items-center justify-center gap-6 px-6">
          <motion.p initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.05 }}
            className="text-white/85 text-[14px] font-black font-['Cairo'] tracking-wide text-center">
            اللهم صلِّ وسلِّم على نبينا محمد ﷺ
          </motion.p>
          {posterUrl ? (
            <div className="relative shrink-0">
              <div className="absolute -inset-4 rounded-[28px] pointer-events-none"
                style={{ background: "radial-gradient(ellipse, rgba(16,185,129,0.20) 0%, transparent 68%)" }} />
              <img src={posterUrl} alt={displayTitle} className="w-44 h-[248px] rounded-2xl object-cover"
                style={{ boxShadow: "0 28px 72px rgba(0,0,0,0.88), 0 0 0 1px rgba(255,255,255,0.08)" }} />
            </div>
          ) : (
            <div className="w-44 h-[248px] rounded-2xl bg-white/[0.03] flex items-center justify-center"
              style={{ boxShadow: "0 0 0 1px rgba(255,255,255,0.06)" }}>
              <div className="w-7 h-7 rounded-full bg-emerald-500/35" />
            </div>
          )}
          <div className="text-center">
            <h2 className="text-white text-[18px] font-black font-['Cairo'] leading-tight mb-1.5">{displayTitle}</h2>
            <p className="text-white/35 text-[13px] font-['Cairo']">{season} · الحلقة {ep}</p>
          </div>
          <div className="flex flex-col items-center gap-3">
            <AnimeMascot mood="loading" />
            <p className="text-white/70 text-[13px] font-bold font-['Cairo'] text-center">⏳ جاري البحث عن المصادر…</p>
          </div>
        </div>
      </div>
    );
  }

  // ────────────────────────────────────────────────────────── ERROR ──────────
  if (phase === "error") {
    return (
      <div className="fixed inset-0 bg-[#07070d] flex flex-col items-center justify-center gap-5 px-6" dir="rtl">
        <Backdrop />
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
            <button onClick={loadSources}
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

  // ────────────────────────────────────────────────────────── PICKER ─────────
  if (phase === "picker") {
    return (
      <div className="fixed inset-0 bg-[#07070d]" dir="rtl">
        <Backdrop />

        {/* Header */}
        <div className="relative z-10 flex items-center gap-3 px-4 pt-safe pt-4 pb-4 border-b border-white/5 bg-[#07070d]/80 backdrop-blur-xl">
          <button onClick={goBack}
            className="w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)" }}>
            <ChevronRight className="w-5 h-5 text-white/60" />
          </button>
          <div className="flex-1 min-w-0">
            <h2 className="text-[15px] font-black text-white font-['Cairo'] truncate">{displayTitle}</h2>
            <p className="text-[11px] text-white/35 font-['Cairo']">{season} · الحلقة {ep}</p>
          </div>
          {posterUrl && (
            <img src={posterUrl} alt="" className="w-10 h-[54px] rounded-lg object-cover shrink-0 border border-white/10" />
          )}
        </div>

        {/* Sources list */}
        <div className="relative z-10 px-4 pt-5 pb-safe overflow-y-auto" style={{ maxHeight: "calc(100vh - 90px)" }}>
          <p className="text-xs text-white/40 font-['Cairo'] mb-4 text-center">اختر جودة التشغيل</p>
          <div className="space-y-3 max-w-lg mx-auto">
            <AnimatePresence>
              {allSources.map((src, i) => {
                const q = qualityColor(src.quality);
                const srvLabel = serverLabel(src.name);
                const isHls = !src.rawUrl && !!src.hlsUrl;
                return (
                  <motion.button key={i}
                    initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }}
                    transition={{ delay: i * 0.05 }}
                    onClick={() => handlePlay(i)}
                    whileTap={{ scale: 0.97 }}
                    className="w-full flex items-center gap-4 p-4 rounded-2xl text-right active:opacity-80 transition-opacity"
                    style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.08)" }}>

                    {/* Play icon */}
                    <div className="w-11 h-11 rounded-xl flex items-center justify-center shrink-0"
                      style={{ background: q.bg, border: `1px solid ${q.border}` }}>
                      <Play className="w-5 h-5 fill-current" style={{ color: q.text }} />
                    </div>

                    {/* Info */}
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2">
                        <span className="text-[11px] font-black px-2 py-0.5 rounded-lg"
                          style={{ background: q.bg, border: `1px solid ${q.border}`, color: q.text }}>
                          {src.quality}
                        </span>
                        {isHls && (
                          <span className="text-[9px] px-1.5 py-0.5 rounded-md font-bold"
                            style={{ background: "rgba(99,102,241,0.15)", border: "1px solid rgba(99,102,241,0.30)", color: "#a5b4fc" }}>
                            HLS
                          </span>
                        )}
                      </div>
                      <p className="text-[12px] text-white/55 font-['Cairo'] mt-0.5 truncate">{srvLabel}</p>
                    </div>

                    {/* Arrow */}
                    <ChevronRight className="w-4 h-4 text-white/25 shrink-0 rotate-180" />
                  </motion.button>
                );
              })}
            </AnimatePresence>
          </div>
        </div>
      </div>
    );
  }

  // ────────────────────────────────────────────────────────── PLAYER ─────────
  if (!playUrl) return null;
  const curSrc = allSources[selIdx];
  return (
    <div className="fixed inset-0 bg-black" dir="rtl">
      <RiftPlayer
        src={playUrl}
        title={`${displayTitle} · ${season} · الحلقة ${ep}`}
        qualityLabel={curSrc?.quality?.replace(/p$/i, "") || "720"}
        serverCount={allSources.length}
        serverIndex={selIdx}
        poster={posterUrl || undefined}
        onTimeUpdate={handleTimeUpdate}
        onBack={() => {
          // العودة للـ picker إذا يوجد أكثر من مصدر
          if (allSources.length > 1) {
            setPlayUrl(null);
            setPhase("picker");
          } else {
            goBack();
          }
        }}
        onFail={() => {
          // عند فشل الـ source الحالي انتقل للتالي تلقائياً
          const next = selIdx + 1;
          if (next < allSources.length) handlePlay(next);
          else if (allSources.length > 1) { setPlayUrl(null); setPhase("picker"); }
          else goBack();
        }}
      />
    </div>
  );
}

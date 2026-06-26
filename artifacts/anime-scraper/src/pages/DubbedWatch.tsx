import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation, useSearch } from "wouter";
import { RefreshCw, AlertCircle } from "lucide-react";
import { motion } from "framer-motion";
import RiftPlayer from "@/components/player/RiftPlayer";

interface Source {
  url: string;
  label: string;
  directUrl?: string;
  proxyUrl?: string;
  status?: "loading" | "ok" | "fail";
}

export default function DubbedWatch() {
  const [, navigate] = useLocation();
  const search = useSearch();
  const params = new URLSearchParams(search);

  const epUrl   = params.get("epUrl") || "";
  const title   = params.get("title") || "بدون عنوان";
  const ep      = params.get("ep") || "1";
  const season  = params.get("season") || "الموسم 1";
  const poster  = params.get("poster") || "";
  const at      = params.get("at") || "";
  const seasonsParam = params.get("seasons") || "";
  const imgParam = params.get("img") || "";
  const keyParam = params.get("key") || "";

  const [source, setSource] = useState<Source | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const mountedRef = useRef(true);

  const atIds = at ? at.split(",") : [];

  /* Go back to episodes page with correct params */
  const goBack = useCallback(() => {
    if (keyParam && seasonsParam) {
      const key = encodeURIComponent(decodeURIComponent(keyParam));
      navigate(`/dubbed/${key}?seasons=${encodeURIComponent(seasonsParam)}&title=${encodeURIComponent(title)}&img=${encodeURIComponent(imgParam)}`);
    } else {
      window.history.back();
    }
  }, [keyParam, seasonsParam, title, imgParam, navigate]);

  const loadSource = useCallback(async () => {
    if (!epUrl) { setError("رابط الحلقة مفقود"); setLoading(false); return; }
    setLoading(true); setError(null); setSource(null);

    const cacheKey = `dubbed-src-${epUrl}`;
    const cached = sessionStorage.getItem(cacheKey);
    if (cached) {
      try {
        const c = JSON.parse(cached);
        if (Date.now() - c.ts < 5 * 60_000) {
          setSource({ url: c.url, label: "كرتون مدبلج", proxyUrl: c.url, status: "ok" });
          setLoading(false);
          return;
        }
      } catch {}
    }

    try {
      const r = await fetch(`/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}`);
      if (!mountedRef.current) return;
      if (!r.ok) { setError("تعذّر تحميل الحلقة"); setLoading(false); return; }
      const d = await r.json();
      if (!d.hlsUrl) { setError("لم يُعثر على مصدر الفيديو"); setLoading(false); return; }
      sessionStorage.setItem(cacheKey, JSON.stringify({ url: d.hlsUrl, ts: Date.now() }));
      setSource({ url: d.hlsUrl, label: "كرتون مدبلج", proxyUrl: d.hlsUrl, status: "ok" });
      setLoading(false);
    } catch {
      if (!mountedRef.current) return;
      setError("خطأ في الاتصال");
      setLoading(false);
    }
  }, [epUrl]);

  useEffect(() => {
    mountedRef.current = true;
    loadSource();
    return () => { mountedRef.current = false; };
  }, [loadSource]);

  const handleTimeUpdate = useCallback((currentTime: number) => {
    if (!at || !ep) return;
    const firstId = atIds[0];
    if (!firstId) return;
    const k = `dubbed-wp-${firstId}-${ep}`;
    localStorage.setItem(k, String(Math.floor(currentTime)));
  }, [at, ep, atIds]);

  useEffect(() => {
    if (!title || !ep) return;
    const histKey = "dubbed-watch-history";
    try {
      const hist = JSON.parse(localStorage.getItem(histKey) || "[]");
      const entry = {
        epUrl, title, ep: parseInt(ep, 10), season,
        poster: poster ? decodeURIComponent(poster) : "",
        at, date: Date.now(),
      };
      const filtered = hist.filter((h: any) => h.epUrl !== epUrl).slice(0, 49);
      localStorage.setItem(histKey, JSON.stringify([entry, ...filtered]));
    } catch {}
  }, [epUrl, title, ep, season, poster, at]);

  return (
    <main className="bg-black min-h-screen text-white flex flex-col" dir="rtl">
      {/* Player area — fills screen, no BottomNav overlap since HIDE_ON includes /dubbed/watch */}
      {loading ? (
        <div className="flex flex-col items-center justify-center flex-1 gap-4" style={{ minHeight: "100dvh" }}>
          <div className="w-14 h-14 rounded-2xl flex items-center justify-center" style={{ background: "rgba(124,58,237,0.15)", border: "1px solid rgba(124,58,237,0.25)" }}>
            <div className="w-7 h-7 border-2 border-[#7C3AED]/30 border-t-[#7C3AED] rounded-full animate-spin" />
          </div>
          <div className="text-center">
            <p className="text-white/60 text-sm font-['Cairo']">جاري تحميل الحلقة…</p>
            <p className="text-white/25 text-xs font-['Cairo'] mt-1">{title} · {season} · الحلقة {ep}</p>
          </div>
        </div>
      ) : error ? (
        <div className="flex flex-col items-center justify-center flex-1 gap-5 px-6" style={{ minHeight: "100dvh" }}>
          <div className="w-16 h-16 rounded-full flex items-center justify-center" style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.20)" }}>
            <AlertCircle className="w-8 h-8 text-red-400" />
          </div>
          <div className="text-center">
            <p className="text-white/70 text-sm font-['Cairo']">{error}</p>
            <p className="text-white/25 text-xs font-['Cairo'] mt-1">{title} · الحلقة {ep}</p>
          </div>
          <div className="flex gap-3">
            <button
              onClick={loadSource}
              className="flex items-center gap-2 px-5 py-2.5 rounded-xl text-[#A78BFA] text-sm font-['Cairo']"
              style={{ background: "rgba(124,58,237,0.15)", border: "1px solid rgba(124,58,237,0.30)" }}
            >
              <RefreshCw className="w-4 h-4" />
              إعادة المحاولة
            </button>
            <button
              onClick={goBack}
              className="flex items-center gap-2 px-5 py-2.5 rounded-xl text-white/60 text-sm font-['Cairo']"
              style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.10)" }}
            >
              الحلقات
            </button>
          </div>
        </div>
      ) : source ? (
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          className="flex flex-col"
          style={{ minHeight: "100dvh" }}
        >
          <RiftPlayer
            src={source.proxyUrl || source.url}
            title={`${title} - ${season} - الحلقة ${ep}`}
            poster={poster ? decodeURIComponent(poster) : undefined}
            onTimeUpdate={handleTimeUpdate}
            onBack={goBack}
          />
          {/* Episode info below player */}
          <div className="px-4 pt-3 pb-6 flex-1">
            <h2 className="text-base font-black font-['Cairo'] text-white">{title}</h2>
            <p className="text-sm text-white/40 font-['Cairo'] mt-0.5">{season} · الحلقة {ep}</p>
            <div className="mt-3 px-3 py-2.5 rounded-xl" style={{ background: "rgba(124,58,237,0.08)", border: "1px solid rgba(124,58,237,0.18)" }}>
              <p className="text-xs text-[#A78BFA] font-['Cairo']">📺 مصدر: arabic-toons.com · مدبلج للعربية</p>
            </div>
            <button
              onClick={goBack}
              className="mt-4 flex items-center gap-2 px-4 py-2 rounded-xl text-white/50 text-sm font-['Cairo']"
              style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.08)" }}
            >
              ← العودة للحلقات
            </button>
          </div>
        </motion.div>
      ) : null}
    </main>
  );
}

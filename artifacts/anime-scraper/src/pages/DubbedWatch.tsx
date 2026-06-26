import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation, useSearch } from "wouter";
import { ChevronRight, Loader2, AlertCircle, RefreshCw, List } from "lucide-react";
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

  const [source, setSource] = useState<Source | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const mountedRef = useRef(true);

  const atIds = at ? at.split(",") : [];

  const loadSource = useCallback(async () => {
    if (!epUrl) { setError("رابط الحلقة مفقود"); setLoading(false); return; }
    setLoading(true); setError(null); setSource(null);

    // Check L1 cache
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
    } catch (e: any) {
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

  // Save progress
  const handleTimeUpdate = useCallback((currentTime: number) => {
    if (!at || !ep) return;
    const firstId = atIds[0];
    if (!firstId) return;
    const k = `dubbed-wp-${firstId}-${ep}`;
    localStorage.setItem(k, String(Math.floor(currentTime)));
  }, [at, ep, atIds]);

  // Save to history
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

  const goBack = () => {
    if (at) {
      const firstId = atIds[0];
      if (firstId) {
        navigate(`/dubbed/${encodeURIComponent(title)}?seasons=${encodeURIComponent(JSON.stringify([]))}&title=${encodeURIComponent(title)}`);
        return;
      }
    }
    navigate("/dubbed");
  };

  return (
    <main className="bg-black min-h-screen text-white" dir="rtl">
      {/* Header */}
      <div className="sticky top-0 z-20 bg-black/90 backdrop-blur-xl border-b border-white/5">
        <div className="px-4 pt-4 pb-3 flex items-center gap-3">
          <button onClick={goBack} className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform">
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>
          <div className="flex-1 min-w-0">
            <h1 className="text-sm font-bold font-['Cairo'] text-white truncate">{title}</h1>
            <p className="text-xs text-white/40 font-['Cairo']">{season} · الحلقة {ep}</p>
          </div>
        </div>
      </div>

      {/* Player area */}
      {loading ? (
        <div className="flex flex-col items-center justify-center py-20 gap-4">
          <Loader2 className="w-10 h-10 animate-spin text-[#7C3AED]" />
          <p className="text-white/50 text-sm font-['Cairo']">جاري تحميل الحلقة...</p>
        </div>
      ) : error ? (
        <div className="flex flex-col items-center justify-center py-20 gap-4 px-6">
          <div className="w-16 h-16 rounded-full bg-red-500/10 border border-red-500/20 flex items-center justify-center">
            <AlertCircle className="w-8 h-8 text-red-400" />
          </div>
          <p className="text-white/60 text-sm font-['Cairo'] text-center">{error}</p>
          <button
            onClick={loadSource}
            className="flex items-center gap-2 px-5 py-2.5 bg-[#7C3AED]/20 border border-[#7C3AED]/30 rounded-xl text-[#A78BFA] text-sm font-['Cairo']"
          >
            <RefreshCw className="w-4 h-4" />
            إعادة المحاولة
          </button>
        </div>
      ) : source ? (
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          className="w-full"
        >
          <RiftPlayer
            src={source.proxyUrl || source.url}
            title={`${title} - ${season} - الحلقة ${ep}`}
            poster={poster ? decodeURIComponent(poster) : undefined}
            onTimeUpdate={handleTimeUpdate}
          />
          {/* Episode info */}
          <div className="px-4 pt-4 pb-6">
            <h2 className="text-base font-black font-['Cairo'] text-white">{title}</h2>
            <p className="text-sm text-white/50 font-['Cairo'] mt-0.5">{season} · الحلقة {ep}</p>
            <div className="mt-3 px-3 py-2.5 bg-[#7C3AED]/10 border border-[#7C3AED]/20 rounded-xl">
              <p className="text-xs text-[#A78BFA] font-['Cairo']">
                📺 مصدر: arabic-toons.com · مدبلج للعربية
              </p>
            </div>
          </div>
        </motion.div>
      ) : null}
    </main>
  );
}

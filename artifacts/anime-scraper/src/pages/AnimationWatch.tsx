import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, Play, Loader2, AlertCircle,
  RefreshCw, Server, CheckCircle, Wifi,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

interface Source {
  url: string;
  label: string;
  directUrl?: string;
  proxyUrl?: string;
  status?: "loading" | "ok" | "fail";
  isEmbed?: boolean;
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
  // Video player embeds (not direct streams)
  "vidhls.com/player", "embed.mystream.to", "filemoon.", "streamwish.",
  "dood.", "streamtape.", "vidmoly.", "uptostream.", "playerwish.",
  "wishfast.", "share4max.", "megamax.me", "asnwish.", "vidyard.",
];

function isEmbedUrl(url: string): boolean {
  return KNOWN_EMBEDS.some(d => url.includes(d));
}
function isHlsUrl(url: string): boolean {
  // Must end with .m3u8 or have /hls/ path (not just "hls" in domain name)
  return url.includes(".m3u8") || url.includes("/hls/") || url.includes("yplayer");
}

export default function AnimationWatch() {
  const [, navigate] = useLocation();
  const params  = new URLSearchParams(window.location.search);
  const title   = params.get("title")  || "";
  const type    = params.get("type")   || "movie";
  const ep      = parseInt(params.get("ep") || "1", 10) || 1;
  const season  = parseInt(params.get("season") || "1", 10) || 1;
  const tmdbId  = params.get("id")     || "";
  const poster  = params.get("poster") || "";

  const [step, setStep]       = useState<"searching" | "sources" | "playing" | "error">("searching");
  const [statusMsg, setStatus] = useState("جاري البحث…");
  const [sources, setSources]  = useState<Source[]>([]);
  const [selSrc, setSelSrc]   = useState<Source | null>(null);
  const [sseDone, setSseDone] = useState(false);
  const videoRef = useRef<HTMLVideoElement>(null);
  const hlsRef   = useRef<any>(null);
  const esRef    = useRef<EventSource | null>(null);
  const seenUrls = useRef(new Set<string>());

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
    const raw = src.directUrl || src.url;
    const referer = window.location.origin;
    if (isEmbedUrl(raw) && !src.directUrl) {
      return { url: raw, isHls: false, isEmbed: true };
    }
    if (raw.startsWith("/api/anime/hls-proxy") || raw.includes(".m3u8")) {
      const proxied = raw.startsWith("/") ? raw : wrapHls(raw, referer);
      return { url: proxied, isHls: true, isEmbed: false };
    }
    // Use video-proxy for MP4
    const proxied = raw.startsWith("/api/") ? raw : wrapMp4(raw, referer);
    return { url: proxied, isHls: false, isEmbed: false };
  }, []);

  // Play a source
  const playSource = useCallback((src: Source) => {
    setSelSrc(src);
    setStep("playing");
  }, []);

  // Attach player when selSrc + step=playing
  useEffect(() => {
    if (step !== "playing" || !selSrc) return;
    const { url, isHls, isEmbed } = resolvePlayUrl(selSrc);
    if (isEmbed) return; // rendered as iframe
    const video = videoRef.current;
    if (!video) return;

    if (isHls) {
      loadHls(video, url);
    } else {
      if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
      video.src = url;
      video.play().catch(() => {});
    }

    return () => {
      if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
    };
  }, [step, selSrc, loadHls, resolvePlayUrl]);

  // Extract direct URL for a source
  const tryExtract = useCallback(async (url: string) => {
    try {
      const r = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(url)}`);
      const d = await r.json();
      let direct = d.directUrl || d.url || "";
      const referer = window.location.origin;
      // Wrap HLS if needed
      if (direct.includes(".m3u8")) {
        direct = wrapHls(direct, url);
      }
      setSources(prev => prev.map(s =>
        s.url === url
          ? { ...s, directUrl: direct || undefined, status: direct ? "ok" : "fail" }
          : s
      ));
    } catch {
      setSources(prev => prev.map(s => s.url === url ? { ...s, status: "fail" } : s));
    }
  }, []);

  // Start SSE stream
  useEffect(() => {
    const decodedTitle = decodeURIComponent(title);
    setStep("searching"); setSources([]); setSelSrc(null); setSseDone(false);
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
  }, [title, type, ep, season, tryExtract]);

  const displayTitle = decodeURIComponent(title);
  const epLabel = type === "tv" ? ` • الحلقة ${ep}` : "";

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
      </div>
    );
  };

  return (
    <div className="min-h-screen bg-black flex flex-col" dir="rtl">
      {/* ── Top bar ── */}
      <div className="flex items-center gap-3 px-3 py-2.5 bg-black/90 border-b border-white/8">
        <button
          onClick={() => navigate(-1 as any)}
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
          {poster && (
            <motion.img
              src={decodeURIComponent(poster)}
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
              return (
                <motion.button
                  key={i}
                  initial={{ opacity: 0, y: 8 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.04 }}
                  onClick={() => playSource(src)}
                  className={`w-full flex items-center gap-3 px-3 py-3 rounded-2xl border active:scale-[0.98] transition-all text-right ${
                    isActive
                      ? "bg-primary/15 border-primary/30"
                      : "bg-white/5 border-white/8 active:bg-white/10"
                  }`}
                >
                  <div className={`w-8 h-8 rounded-xl flex items-center justify-center flex-shrink-0 ${
                    src.status === "ok"      ? "bg-emerald-500/15 border border-emerald-500/25" :
                    src.status === "fail"    ? "bg-white/6  border border-white/10"  :
                    src.status === "loading" ? "bg-primary/10 border border-primary/20" :
                    "bg-white/6 border border-white/10"
                  }`}>
                    {src.status === "ok"      && <CheckCircle className="w-3.5 h-3.5 text-emerald-400" />}
                    {src.status === "fail"    && <Server className="w-3.5 h-3.5 text-white/30" />}
                    {src.status === "loading" && <Loader2 className="w-3.5 h-3.5 text-primary animate-spin" />}
                    {!src.status              && <Server className="w-3.5 h-3.5 text-white/30" />}
                  </div>
                  <div className="flex-1 min-w-0 text-right">
                    <p className="text-[12px] font-black text-white font-['Cairo']">{src.label}</p>
                    <p className="text-[9px] text-white/25 truncate font-['Cairo']">
                      {src.directUrl ? "رابط مباشر ✓" : src.isEmbed ? "إطار مدمج" : (src.url || "").replace(/^https?:\/\//, "").slice(0, 32)}
                    </p>
                  </div>
                  {isActive
                    ? <Wifi className="w-3.5 h-3.5 text-primary flex-shrink-0" />
                    : <Play className="w-3.5 h-3.5 text-primary/60 flex-shrink-0" />
                  }
                </motion.button>
              );
            })}

            {/* Loading more indicator — only while SSE is still open */}
            {!sseDone && sources.length > 0 && (
              <div className="flex items-center gap-2 py-2 px-3 text-white/20 text-[10px] font-['Cairo']">
                <Loader2 className="w-3 h-3 animate-spin" />
                جاري البحث عن المزيد…
              </div>
            )}
          </div>
        </div>
      )}

      {/* ── Error state ── */}
      {step === "error" && (
        <div className="flex-1 flex flex-col items-center justify-center gap-4 px-8 py-12">
          {poster && (
            <img src={decodeURIComponent(poster)} alt="" className="w-24 rounded-xl shadow-2xl opacity-40" />
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
              onClick={() => navigate(-1 as any)}
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

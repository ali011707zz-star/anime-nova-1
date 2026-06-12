import { useState, useEffect, useRef, useCallback, useMemo } from "react";
import { useLocation } from "wouter";
import { ChevronRight, Play, X, Loader2, AlertCircle, Wifi, SkipForward } from "lucide-react";
import { motion } from "framer-motion";

// ── Types ──────────────────────────────────────────────────────────────────
type QualityTier = "1080p FHD" | "720p HD" | "360p SD";
const QUALITY_STYLE: Record<QualityTier, { dot: string; badge: string; border: string; text: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)",  border: "rgba(52,211,153,0.24)",  text: "rgba(110,231,183,0.92)" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)", border: "rgba(148,163,184,0.16)", text: "rgba(148,163,184,0.70)" },
};
const QUALITY_TIERS: QualityTier[] = ["1080p FHD", "720p HD", "360p SD"];

interface Source {
  url: string; label: string; directUrl?: string; proxyUrl?: string;
  status?: "loading" | "ok" | "fail"; tier?: QualityTier; _retriedDirect?: boolean;
}
interface EpItem { id: number; num: number; title: string; link: string; thumb: string; }

// ── Helpers ────────────────────────────────────────────────────────────────
function getSourceTier(src: Source): QualityTier {
  const url = src.proxyUrl || src.directUrl || src.url;
  if (url.includes("hls-proxy")) return "1080p FHD";
  if (url.includes("video-proxy") || (src.directUrl || "").includes(".mp4")) return "720p HD";
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
    localStorage.setItem("kartoon-watch-history", JSON.stringify(
      [item, ...hist.filter((h: any) => !(h.title === title && h.ep === ep))].slice(0, 50)
    ));
  } catch {}
}

// ── Embedded HLS/MP4 Player ────────────────────────────────────────────────
function EmbeddedPlayer({
  src, isHls, poster, resumeTime = 0,
  onTimeUpdate, onFail,
}: {
  src: string; isHls: boolean; poster?: string; resumeTime?: number;
  onTimeUpdate?: (t: number) => void; onFail?: () => void;
}) {
  const videoRef  = useRef<HTMLVideoElement>(null);
  const hlsRef    = useRef<any>(null);
  const failedRef = useRef(false);
  const resumeRef = useRef(resumeTime);
  resumeRef.current = resumeTime;

  useEffect(() => {
    if (!src) return;
    const video = videoRef.current;
    if (!video) return;
    failedRef.current = false;

    hlsRef.current?.destroy();
    hlsRef.current = null;
    video.src = "";

    const fireError = () => {
      if (failedRef.current) return;
      failedRef.current = true;
      onFail?.();
    };

    if (isHls) {
      import("hls.js").then(({ default: Hls }) => {
        if (Hls.isSupported()) {
          const hls = new Hls({ enableWorker: false, maxBufferLength: 30 });
          hlsRef.current = hls;
          hls.loadSource(src);
          hls.attachMedia(video);
          hls.on(Hls.Events.MANIFEST_PARSED, () => {
            if (resumeRef.current > 5) video.currentTime = resumeRef.current;
            video.play().catch(() => {});
          });
          hls.on(Hls.Events.ERROR, (_: any, data: any) => {
            if (data.fatal) fireError();
          });
        } else if (video.canPlayType("application/vnd.apple.mpegurl")) {
          video.src = src;
          video.onloadedmetadata = () => {
            if (resumeRef.current > 5) video.currentTime = resumeRef.current;
            video.play().catch(() => {});
          };
          video.onerror = fireError;
        } else {
          fireError();
        }
      });
    } else {
      video.src = src;
      video.onloadedmetadata = () => {
        if (resumeRef.current > 5) video.currentTime = resumeRef.current;
        video.play().catch(() => {});
      };
      video.onerror = fireError;
    }

    return () => {
      hlsRef.current?.destroy();
      hlsRef.current = null;
      try { video.pause(); video.src = ""; video.load(); } catch {}
    };
  }, [src, isHls]);

  return (
    <video
      ref={videoRef}
      className="w-full h-full bg-black"
      style={{ objectFit: "contain" }}
      poster={poster}
      controls
      playsInline
      onTimeUpdate={e => onTimeUpdate?.((e.target as HTMLVideoElement).currentTime)}
    />
  );
}

// ── Main Component ─────────────────────────────────────────────────────────
export default function KartoonWatch() {
  const [, navigate] = useLocation();
  const params   = useMemo(() => new URLSearchParams(window.location.search), []);
  const title    = params.get("title") || "";
  const ep       = parseInt(params.get("ep") || "1", 10) || 1;
  const thumb    = params.get("thumb") || "";
  const cat      = parseInt(params.get("cat") || "2496", 10) || 2496;
  const thumbUrl = thumb ? decodeURIComponent(thumb) : "";
  const titleDec = decodeURIComponent(title);

  const [sources,  setSources]  = useState<Source[]>([]);
  const [selSrc,   setSelSrc]   = useState<Source | null>(null);
  const [sseDone,  setSseDone]  = useState(false);
  const [episodes, setEpisodes] = useState<EpItem[]>([]);

  const seenUrls     = useRef(new Set<string>());
  const esRef        = useRef<EventSource | null>(null);
  const histSaved    = useRef(false);
  const autoPicked   = useRef(false);
  const lastProgSave = useRef(0);

  const initTime = useMemo(() => loadProgress(titleDec, ep), [titleDec, ep]);

  const playSource = useCallback((src: Source) => {
    setSelSrc(src);
    if (!histSaved.current) {
      histSaved.current = true;
      saveHistory(titleDec, thumbUrl, ep, cat);
    }
  }, [titleDec, thumbUrl, ep, cat]);

  const onFail = useCallback(() => {
    setSelSrc(cur => {
      if (!cur) return cur;
      // Try direct URL fallback first
      if (!cur._retriedDirect && cur.directUrl && cur.proxyUrl !== cur.directUrl && !cur.directUrl.startsWith("/api/")) {
        const retry: Source = { ...cur, proxyUrl: cur.directUrl, _retriedDirect: true };
        setSources(prev => prev.map(s => s === cur ? retry : s));
        setTimeout(() => setSelSrc(retry), 100);
        return retry;
      }
      // Mark as failed, pick next ok
      setSources(prev => {
        const updated = prev.map(s => s === cur ? { ...s, status: "fail" as const } : s);
        const next = updated.find(s => s !== cur && s.status === "ok");
        if (next) setTimeout(() => setSelSrc(next), 200);
        return updated;
      });
      return cur;
    });
  }, []);

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

  // Auto-pick first ok source
  useEffect(() => {
    if (autoPicked.current || selSrc) return;
    const ok = sources.find(s => s.status === "ok");
    if (!ok) return;
    autoPicked.current = true;
    playSource(ok);
  }, [sources, selSrc, playSource]);

  const handleTimeUpdate = useCallback((t: number) => {
    const now = Date.now();
    if (now - lastProgSave.current < 5000) return;
    lastProgSave.current = now;
    saveProgress(titleDec, ep, t);
  }, [titleDec, ep]);

  // SSE stream
  useEffect(() => {
    setSources([]); setSelSrc(null); setSseDone(false);
    seenUrls.current.clear(); histSaved.current = false; autoPicked.current = false;
    esRef.current?.close();

    const q2 = `/api/kartoon/sources-stream?title=${encodeURIComponent(titleDec)}&ep=${ep}&cat=${cat}`;
    const es = new EventSource(q2);
    esRef.current = es;

    es.addEventListener("source", (e) => {
      const src = JSON.parse(e.data) as Source & { isEmbed?: boolean };
      if (src.isEmbed) return;
      const key = src.directUrl || src.url;
      if (!key || seenUrls.current.has(key)) return;
      seenUrls.current.add(key);

      const isHls    = isHlsUrl(src.directUrl || src.proxyUrl || src.url);
      const needMp4  = !isHls && src.directUrl && !src.directUrl.startsWith("/api/");
      const proxyUrl = src.proxyUrl
        || (isHls && src.directUrl && !src.directUrl.startsWith("/") ? wrapHls(src.directUrl, src.url) : undefined)
        || (needMp4 ? wrapMp4(src.directUrl!, src.url) : undefined);

      const resolved: Source = {
        url: src.url, label: src.label, directUrl: src.directUrl,
        proxyUrl: proxyUrl || src.directUrl || src.url,
        status: (src.directUrl || proxyUrl) ? "ok" : "loading",
      };
      resolved.tier = getSourceTier(resolved);

      setSources(prev => {
        if (prev.some(s => (s.directUrl || s.url) === key)) return prev;
        return [...prev, resolved];
      });
      if (resolved.status === "loading") tryExtract(resolved.url);
    });

    es.addEventListener("done", () => { setSseDone(true); es.close(); });
    es.onerror = () => { setSseDone(true); es.close(); };

    return () => { es.close(); };
  }, [title, ep, cat]);

  // Episode list
  useEffect(() => {
    if (!title) return;
    fetch(`/api/kartoon/episodes?q=${encodeURIComponent(titleDec)}&cat=${cat}`)
      .then(r => r.json())
      .then(d => setEpisodes(d.episodes || []))
      .catch(() => {});
  }, [title, cat]);

  const goBack = useCallback(() => {
    document.querySelectorAll<HTMLVideoElement>("video").forEach(v => {
      try { v.pause(); v.src = ""; } catch {}
    });
    navigate(`/kartoon/series?q=${encodeURIComponent(titleDec)}&thumb=${encodeURIComponent(thumbUrl)}&cat=${cat}`);
  }, [titleDec, thumbUrl, cat, navigate]);

  const goEp = (epNum: number) => {
    navigate(`/kartoon/watch?title=${title}&ep=${epNum}&thumb=${thumb}&cat=${cat}`);
  };

  const nextEp = episodes.find(e => e.num === ep + 1) || episodes.find(e => e.num > ep);

  const groupedSources = useMemo(() => {
    const map = new Map<QualityTier, Source[]>(QUALITY_TIERS.map(t => [t, []]));
    for (const s of sources) map.get(s.tier ?? getSourceTier(s))!.push(s);
    return QUALITY_TIERS.map(t => ({ tier: t, sources: map.get(t)! })).filter(g => g.sources.length > 0);
  }, [sources]);

  const playUrl   = selSrc ? (selSrc.proxyUrl || selSrc.directUrl || selSrc.url) : "";
  const playIsHls = playUrl ? isHlsUrl(playUrl) : false;

  return (
    <div className="min-h-screen bg-black flex flex-col" dir="rtl">

      {/* ── Header ── */}
      <div
        className="flex items-center gap-3 px-4 shrink-0 bg-black"
        style={{ paddingTop: "48px", paddingBottom: "12px" }}
      >
        <button
          onClick={goBack}
          className="w-9 h-9 rounded-2xl flex items-center justify-center shrink-0 active:scale-90 transition-transform"
          style={{ background: "rgba(255,255,255,0.08)", border: "1px solid rgba(255,255,255,0.12)" }}
        >
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-[14px] font-black text-white/90 font-['Cairo'] truncate">{titleDec}</p>
          <p className="text-[10px] text-orange-400/80 font-['Cairo']">الحلقة {ep}</p>
        </div>
        {nextEp && (
          <button
            onClick={() => goEp(nextEp.num)}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-[10px] font-black font-['Cairo'] transition-all active:scale-90 shrink-0"
            style={{ background: "rgba(249,115,22,0.15)", color: "#fb923c", border: "1px solid rgba(249,115,22,0.25)" }}
          >
            التالي
            <SkipForward className="w-3 h-3" />
          </button>
        )}
      </div>

      {/* ── Video Player (always at top) ── */}
      <div className="shrink-0 w-full bg-black" style={{ aspectRatio: "16/9", maxHeight: "56.25vw" }}>
        {selSrc && playUrl ? (
          <EmbeddedPlayer
            src={playUrl}
            isHls={playIsHls}
            poster={thumbUrl || undefined}
            resumeTime={initTime}
            onTimeUpdate={handleTimeUpdate}
            onFail={onFail}
          />
        ) : (
          /* Placeholder while loading or no source */
          <div
            className="w-full h-full flex flex-col items-center justify-center relative overflow-hidden"
            style={{ background: "#050507" }}
          >
            {thumbUrl && (
              <img
                src={thumbUrl} alt=""
                className="absolute inset-0 w-full h-full object-cover"
                style={{ opacity: 0.2, filter: "blur(4px)" }}
              />
            )}
            <div className="relative z-10 flex flex-col items-center gap-2.5">
              {!sseDone ? (
                <>
                  <div className="w-12 h-12 rounded-full flex items-center justify-center"
                    style={{ background: "rgba(249,115,22,0.15)", border: "1px solid rgba(249,115,22,0.20)" }}>
                    <Loader2 className="w-5 h-5 text-orange-400 animate-spin" />
                  </div>
                  <p className="text-[11px] text-white/35 font-['Cairo']">جاري البحث عن مصادر…</p>
                </>
              ) : sources.length === 0 ? (
                <>
                  <div className="w-12 h-12 rounded-full flex items-center justify-center"
                    style={{ background: "rgba(239,68,68,0.12)", border: "1px solid rgba(239,68,68,0.20)" }}>
                    <AlertCircle className="w-5 h-5 text-red-400/70" />
                  </div>
                  <p className="text-[11px] text-white/35 font-['Cairo']">لم يُعثر على مصادر لهذه الحلقة</p>
                </>
              ) : (
                <>
                  <div className="w-12 h-12 rounded-full flex items-center justify-center"
                    style={{ background: "rgba(249,115,22,0.15)", border: "1px solid rgba(249,115,22,0.25)" }}>
                    <Play className="w-5 h-5 fill-orange-400 text-orange-400" style={{ marginRight: "-2px" }} />
                  </div>
                  <p className="text-[11px] text-white/35 font-['Cairo']">اختر سيرفراً من الأسفل</p>
                </>
              )}
            </div>
          </div>
        )}
      </div>

      {/* ── Scrollable content below player ── */}
      <div className="flex-1 overflow-y-auto bg-[#09090B]" style={{ scrollbarWidth: "none" }}>

        {/* Servers section */}
        <div className="px-4 pt-4 pb-2">

          {/* Section header */}
          <div className="flex items-center gap-2 mb-3">
            <Wifi className="w-3.5 h-3.5 text-orange-400/60" />
            <p className="text-[12px] font-black text-white/55 font-['Cairo']">
              {!sseDone
                ? "جاري البحث عن سيرفرات…"
                : sources.length > 0
                ? "السيرفرات المتاحة"
                : "لا توجد سيرفرات"}
            </p>
            {!sseDone && (
              <Loader2 className="w-3 h-3 text-orange-400/50 animate-spin" style={{ marginRight: "auto" }} />
            )}
          </div>

          {/* Quality groups */}
          {groupedSources.map(group => {
            const qs = QUALITY_STYLE[group.tier];
            return (
              <div key={group.tier} className="mb-4">
                <div className="flex items-center gap-1.5 mb-2">
                  <div className="w-1.5 h-1.5 rounded-full shrink-0"
                    style={{ background: qs.dot, boxShadow: `0 0 5px ${qs.dot}` }} />
                  <span className="text-[9px] font-black text-white/40 font-['Cairo']">{group.tier}</span>
                </div>
                <div className="space-y-2">
                  {group.sources.map(src => {
                    const isSelected = selSrc === src || (selSrc?.url === src.url && selSrc?.proxyUrl === src.proxyUrl);
                    const isOk   = src.status === "ok";
                    const isFail = src.status === "fail";
                    return (
                      <motion.button
                        key={src.url + (src.proxyUrl || "")}
                        whileTap={{ scale: 0.97 }}
                        disabled={isFail}
                        onClick={() => { if (!isFail) playSource(src); }}
                        className="w-full text-right flex items-center gap-3 rounded-2xl px-4 py-3 transition-all"
                        style={{
                          background: isSelected
                            ? qs.badge
                            : isFail
                            ? "rgba(239,68,68,0.05)"
                            : "rgba(255,255,255,0.03)",
                          border: `1px solid ${
                            isSelected ? qs.border
                            : isFail   ? "rgba(239,68,68,0.12)"
                            : "rgba(255,255,255,0.07)"}`,
                          opacity: isFail ? 0.5 : 1,
                        }}
                      >
                        {/* Icon */}
                        <div
                          className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0"
                          style={{
                            background: isSelected ? qs.badge : "rgba(255,255,255,0.05)",
                            border: `1px solid ${isSelected ? qs.border : "rgba(255,255,255,0.08)"}`,
                          }}
                        >
                          {src.status === "loading" ? (
                            <Loader2 className="w-4 h-4 animate-spin" style={{ color: qs.dot }} />
                          ) : isFail ? (
                            <X className="w-4 h-4 text-red-400/60" />
                          ) : (
                            <Play
                              className="w-4 h-4 fill-current"
                              style={{ color: isSelected ? qs.dot : "rgba(255,255,255,0.30)", marginRight: "-1px" }}
                            />
                          )}
                        </div>

                        {/* Label */}
                        <div className="flex-1 min-w-0">
                          <p
                            className="text-[12px] font-black truncate font-['Cairo']"
                            style={{ color: isSelected ? "rgba(255,255,255,0.95)" : "rgba(255,255,255,0.65)" }}
                          >
                            {src.label}
                          </p>
                          <p
                            className="text-[9px] font-['Cairo'] mt-0.5"
                            style={{
                              color: isFail
                                ? "rgba(239,68,68,0.60)"
                                : isOk
                                ? isSelected ? qs.dot : qs.text
                                : "rgba(255,255,255,0.25)",
                            }}
                          >
                            {isFail ? "غير متاح" : isOk ? (isSelected ? "يُشغَّل الآن ▶" : "جاهز") : "يتحمّل…"}
                          </p>
                        </div>

                        {/* Active pulse */}
                        {isSelected && (
                          <div
                            className="w-2 h-2 rounded-full animate-pulse shrink-0"
                            style={{ background: qs.dot }}
                          />
                        )}
                      </motion.button>
                    );
                  })}
                </div>
              </div>
            );
          })}

          {/* Empty state */}
          {sseDone && sources.length === 0 && (
            <div className="flex flex-col items-center gap-3 py-8">
              <AlertCircle className="w-9 h-9 text-white/15" />
              <p className="text-[12px] text-white/30 font-['Cairo'] text-center">
                لم يُعثر على مصادر لهذه الحلقة
              </p>
            </div>
          )}
        </div>

        {/* ── Episode navigation ── */}
        {episodes.length > 1 && (
          <div
            className="px-4 pb-8 pt-3"
            style={{ borderTop: "1px solid rgba(255,255,255,0.05)" }}
          >
            <p className="text-[10px] font-black text-white/30 font-['Cairo'] mb-2.5">الحلقات</p>
            <div className="flex gap-2 overflow-x-auto pb-1" style={{ scrollbarWidth: "none" }}>
              {episodes.map(e => (
                <button
                  key={e.num}
                  onClick={() => goEp(e.num)}
                  className="shrink-0 w-10 h-10 rounded-xl text-xs font-black font-['Cairo'] transition-all active:scale-90"
                  style={
                    e.num === ep
                      ? { background: "linear-gradient(135deg,#F97316,#EA580C)", color: "#fff" }
                      : { background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.35)", border: "1px solid rgba(255,255,255,0.08)" }
                  }
                >
                  {e.num}
                </button>
              ))}
            </div>
          </div>
        )}

      </div>
    </div>
  );
}

import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Pressable, Image, ScrollView, StyleSheet,
  Platform, Dimensions, Animated, Easing, ActivityIndicator, Linking,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import { secureFetch, secureStreamFetch } from "@/utils/secureApi";
import * as ScreenOrientation from "expo-screen-orientation";

const { width: W, height: H } = Dimensions.get("window");

/* ── Types ── */
type Quality = "1080p FHD" | "720p HD" | "360p SD";
type Screen = "loading" | "picker" | "native" | "embed";

interface AnimSrc {
  url?: string;
  directUrl?: string;
  proxyUrl?: string;
  label?: string;
  subtitleUrl?: string;
  status?: string;
  tier?: string;
  isEmbed?: boolean;
  directType?: string;  // "hls" | "mp4" — used to filter on web
  /** Referer/Origin headers مطلوبة للـ CDN — مُعادة من الخادم مباشرةً */
  headers?: Record<string, string>;
}

const QUALITY_STYLE: Record<Quality, { dot: string; badge: string; border: string; text: string; label: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)", label: "جودة عالية جداً · FHD 1080" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)", border: "rgba(52,211,153,0.24)", text: "rgba(110,231,183,0.92)", label: "جودة عالية · HD 720" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)", border: "rgba(148,163,184,0.16)", text: "rgba(148,163,184,0.70)", label: "جودة متوسطة · SD 360" },
};
const Q_SHORT: Record<Quality, string> = { "1080p FHD": "FHD", "720p HD": "HD", "360p SD": "SD" };
const TIER_RANK: Record<Quality, number> = { "1080p FHD": 3, "720p HD": 2, "360p SD": 1 };

/** استخراج Referer/Origin من رابط proxy (ref= param) — fallback إذا لم تُرسَل headers من الخادم */
function extractHeadersFromProxy(url: string): Record<string, string> | undefined {
  if (!url) return undefined;
  try {
    const fullUrl = url.startsWith("/") ? `http://x.com${url}` : url;
    const u = new URL(fullUrl);
    const ref = u.searchParams.get("ref");
    if (!ref) return undefined;
    let origin = "";
    try { origin = new URL(ref).origin; } catch {}
    return origin ? { Referer: ref, Origin: origin } : { Referer: ref };
  } catch {
    return undefined;
  }
}

function resolveUrl(url: string | undefined, base: string): string {
  if (!url) return "";
  /* hls-proxy يُعيد 307 → CF Worker (يجلب M3U8 + يُعيد كتابة segments عبره)
     video-proxy يُعيد 307 → CF Worker — لا حاجة لـ mobile=1 بعد الآن */
  return url.startsWith("/") ? base + url : url;
}

function getSrcQuality(src: AnimSrc): Quality {
  const tierStr = (src.tier || "").toLowerCase();
  const lbl = (src.label || "").toLowerCase();
  const url = (src.proxyUrl || src.directUrl || src.url || "").toLowerCase();

  if (tierStr.includes("1080") || tierStr.includes("fhd")) return "1080p FHD";
  if (tierStr.includes("720") || tierStr.includes("hd")) return "720p HD";
  if (tierStr.includes("360") || tierStr.includes("sd")) return "360p SD";

  if (lbl.includes("1080") || lbl.includes("fhd") || lbl.includes("4k")) return "1080p FHD";
  if (lbl.startsWith("vyla") || lbl.startsWith("starcima") || lbl.startsWith("videasy") ||
      lbl.startsWith("vidlink") || lbl.startsWith("aflaam") || lbl.startsWith("arabseed") ||
      lbl.startsWith("seepanel") || lbl.startsWith("lordflix") || lbl.startsWith("topcinem") ||
      lbl.startsWith("stardima")) return "1080p FHD";

  if (url.includes("hls-proxy")) return "720p HD";
  if (url.includes(".mp4") || url.includes("video-proxy")) return "720p HD";
  return "360p SD";
}

function isDirectPlayable(src: AnimSrc): boolean {
  if (src.isEmbed) return false;
  const url = (src.proxyUrl || src.directUrl || src.url || "").toLowerCase();
  if (!url) return false;
  if (url.includes("mega.nz") || url.includes("mega.co.nz")) return false;
  return true;
}

function isEmbedSrc(src: AnimSrc): boolean {
  if (!src.isEmbed) return false;
  const url = (src.proxyUrl || src.directUrl || src.url || "").toLowerCase();
  return !!url;
}

function getPlayUrl(src: AnimSrc): string {
  return src.proxyUrl || src.directUrl || src.url || "";
}

function getLabelShort(label: string): string {
  return label?.split(" ")[0] || "مصدر";
}

/* ── Poster image with error fallback ── */
function AnimPosterImg({ uri, type }: { uri: string; type: string }) {
  const [err, setErr] = useState(false);
  if (err) {
    return (
      <View style={[w2.loadPosterImg, { backgroundColor: "rgba(18,10,40,0.95)", alignItems: "center", justifyContent: "center" }]}>
        <View style={{ width: 52, height: 52, borderRadius: 26, backgroundColor: "rgba(139,92,246,0.18)", alignItems: "center", justifyContent: "center" }}>
          <View style={{ width: 26, height: 26, borderRadius: 13, backgroundColor: "rgba(139,92,246,0.40)" }} />
        </View>
      </View>
    );
  }
  return (
    <Image source={{ uri }} style={w2.loadPosterImg} resizeMode="contain" onError={() => setErr(true)} />
  );
}
const w2 = StyleSheet.create({
  loadPosterImg: { width: 176, height: 264, borderRadius: 20, borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", shadowColor: "#000", shadowOpacity: 0.90, shadowRadius: 36, shadowOffset: { width: 0, height: 16 }, elevation: 20 },
});

/* ── Spinning loader ── */
function SpinRing() {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    Animated.loop(
      Animated.timing(rot, { toValue: 1, duration: 900, easing: Easing.linear, useNativeDriver: true })
    ).start();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  return (
    <View style={{ width: 36, height: 36 }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: 18, borderWidth: 2, borderColor: "rgba(139,92,246,0.15)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, { borderRadius: 18, borderWidth: 2, borderColor: "transparent", borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.4)", transform: [{ rotate }] }]} />
    </View>
  );
}

/* ── 2-letter tag from animation source label (mirrors web AnimationWatch) ── */
function getAnimTag(label: string): string {
  const l = label.toLowerCase();
  // ─── المصادر الرئيسية ───
  if (l.startsWith("vyla"))           return "VY";
  if (l.startsWith("videasy"))        return "VE";
  if (l.startsWith("vidlink"))        return "VL";
  if (l.startsWith("vidfast"))        return "VF";
  if (l.startsWith("vidcore"))        return "VC";
  if (l.startsWith("lordflix"))       return "LF";
  if (l.startsWith("starcima"))       return "SC";
  if (l.startsWith("stardima"))       return "SD";
  if (l.startsWith("dulo"))           return "DL";  // Dulo.tv
  // ─── مصادر عربية ───
  if (l.startsWith("mycima") || l.startsWith("ماي سيما") || l.startsWith("maycima")) return "MC";
  if (l.includes("أنمي فاي") || l.startsWith("animeif")) return "AF";
  if (l.includes("ميغا") || l.startsWith("mega"))        return "MG";
  if (l.startsWith("aflaam"))         return "AL";
  if (l.startsWith("arabseed"))       return "AS";
  if (l.startsWith("ezvidapi"))       return "EZ";
  if (l.startsWith("topcinema"))      return "TC";
  if (l.startsWith("moviz"))          return "MV";
  if (l.startsWith("faselhd"))        return "FH";  // FaselHD
  if (l.startsWith("seepan"))         return "SP";
  if (l.startsWith("animewitcher"))   return "AW";
  if (l.startsWith("toonstream"))     return "TS";
  if (l.startsWith("anikoto"))        return "AK";
  if (l.startsWith("anineko"))        return "AN";
  if (l.startsWith("kawaii"))         return "KW";
  if (l.startsWith("animephoenix") || l.startsWith("phoenix")) return "PH";
  if (l.startsWith("animehub"))       return "AH";
  if (l.startsWith("streamrip"))      return "SR";
  if (l.startsWith("cinepro"))        return "CP";
  // ─── مصادر إنجليزية / دولية ───
  if (l.startsWith("icefy"))          return "IF";
  if (l.startsWith("nebula"))         return "NB";
  if (l.startsWith("superembed"))     return "SE";
  if (l.startsWith("cinesrc"))        return "CS";
  if (l.startsWith("moviebox"))       return "MB";
  if (l.startsWith("vidsrc"))         return "VS";
  if (l.startsWith("vixsrc"))         return "VX";
  if (l.startsWith("hexa"))           return "HX";
  if (l.startsWith("mxplayer") || l.startsWith("mx player")) return "MX";
  if (l.startsWith("aether"))         return "AE";
  if (l.startsWith("egydeadnet") || l.startsWith("egydead")) return "EG";
  if (l.startsWith("animetime"))      return "AT";
  // ─── fallback: أول حرفان من label ───
  const word = label.replace(/[^a-zA-Z\u0621-\u064a]/g, "").slice(0, 2).toUpperCase();
  return word || "??";
}

/* ── Source row ── */
function SrcRow({ src, idx, onPlay }: { src: AnimSrc; idx: number; onPlay: (s: AnimSrc) => void }) {
  const q = getSrcQuality(src);
  const qs = QUALITY_STYLE[q];
  const label = src.label || `مصدر ${idx + 1}`;
  const isEmbed = isEmbedSrc(src);
  const tag = getAnimTag(label);
  const hasSub = !!src.subtitleUrl;

  return (
    <Pressable onPress={() => onPlay(src)} style={w.srcRow}>
      <View style={[w.srcIcon, { backgroundColor: qs.badge, borderColor: qs.border }]}>
        <Ionicons name={isEmbed ? "tv" : "play-circle"} size={14} color={qs.text} />
      </View>
      <View style={{ flex: 1, minWidth: 0 }}>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap" }}>
          <Text style={w.srcNum}>سيرفر {idx + 1}</Text>
          <View style={w.srcTag}><Text style={w.srcTagText}>{tag}</Text></View>
          {hasSub && <View style={w.srcSubBadge}><Text style={w.srcSubText}>ترجمة</Text></View>}
        </View>
      </View>
      <View style={w.srcRight}>
        <View style={[w.srcQBadge, { backgroundColor: qs.badge, borderColor: qs.border }]}>
          <Text style={[w.srcQText, { color: qs.text }]}>{Q_SHORT[q]}</Text>
        </View>
        <View style={w.srcPlayBtn}>
          <Ionicons name="play" size={10} color="#fff" />
          <Text style={w.srcPlayText}>تشغيل</Text>
        </View>
      </View>
    </Pressable>
  );
}

/* ══════════════════════════════════════════════════════════════ */
export default function AnimationWatchScreen() {
  const params = useLocalSearchParams<{
    id: string; type: string; ep: string; season: string; title: string; poster: string; etitle?: string; autoplay?: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const topPad = insets.top > 0 ? insets.top : (Platform.OS === "ios" ? 44 : 24);

  const tmdbId    = params.id     || "";
  const type      = params.type   || "movie";
  const ep        = parseInt(params.ep     || "1", 10) || 1;
  const season    = parseInt(params.season || "1", 10) || 1;
  const titleStr  = decodeURIComponent(params.title  || "");
  const posterUrl = params.poster ? decodeURIComponent(params.poster) : "";
  const epTitle   = params.etitle ? decodeURIComponent(params.etitle) : undefined;
  const autoplay  = params.autoplay === "1";

  const [screen, setScreen]       = useState<Screen>("loading");
  const [sources, setSources]     = useState<AnimSrc[]>([]);
  const [loading, setLoading]     = useState(true);
  const [playingSrc, setPlayingSrc] = useState<AnimSrc | null>(null);
  const [resumeTime, setResumeTime] = useState(0);
  const [globalArSubUrl, setGlobalArSubUrl] = useState<string | undefined>();
  const [globalEnSubUrl, setGlobalEnSubUrl] = useState<string | undefined>();
  const [subLang, setSubLang] = useState<"ar" | "en" | "off">("ar");
  /* تُقرأ من الإعدادات عند التهيئة */
  const subPrefLoadedRef = useRef(false);

  const abortRef         = useRef<AbortController | null>(null);
  const lastSaveTs       = useRef(0);
  const lastTimeRef      = useRef(0);
  const seenKeys         = useRef(new Set<string>());
  const autoPlayFiredRef  = useRef(false);
  const autoPlayTimerRef  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const hasCachedRef      = useRef(false); // هل تم تحميل مصادر من الكاش المحلي؟

  const progressKey   = `anim-wp-${tmdbId}-${type}-${season}-${ep}`;
  /* كاش المصادر المحلي لفتح فوري في المرة الثانية */
  const animSrcCacheKey = tmdbId ? `anim-srcs-${tmdbId}-${type}-s${season}-e${ep}` : null;
  const ANIM_SRC_CACHE_TTL = 60 * 60 * 1000; // ساعة واحدة

  /* ── تحميل المصادر المحفوظة + وقت الاستئناف ── */
  useEffect(() => {
    AsyncStorage.getItem(progressKey).then(v => {
      if (v) setResumeTime(parseFloat(v) || 0);
    });
    /* احترام إعداد الترجمة من الإعدادات */
    AsyncStorage.getItem("pref-anim-sub").then(v => {
      if (v === "false") setSubLang("off");
    });

    /* فحص الكاش المحلي للمصادر — يتيح الفتح الفوري */
    if (!animSrcCacheKey) return;
    AsyncStorage.getItem(animSrcCacheKey).then(raw => {
      if (!raw) return;
      try {
        const { sources: cached, ts }: { sources: AnimSrc[]; ts: number } = JSON.parse(raw);
        if (!cached?.length || Date.now() - ts > ANIM_SRC_CACHE_TTL) return;

        const base = getBaseUrl();
        const resolved = cached.map(s => ({
          ...s,
          directUrl: s.directUrl ? (s.directUrl.startsWith("/") ? base + s.directUrl : s.directUrl) : undefined,
          url: s.url ? (s.url.startsWith("/") ? base + s.url : s.url) : undefined,
          proxyUrl: s.proxyUrl ? (s.proxyUrl.startsWith("/") ? base + s.proxyUrl : s.proxyUrl) : undefined,
        }));

        /* أضف المصادر المحفوظة فوراً وانتقل للـ picker */
        hasCachedRef.current = true;
        setSources(resolved);
        seenKeys.current = new Set(resolved.map(s => s.proxyUrl || s.directUrl || s.url || "").filter(Boolean));
        setLoading(false);
        setScreen("picker");

        /* شغّل تلقائياً — أولوية: DU (Dulo) أولاً ثم أي مصدر مباشر */
        if (autoplay) {
          const isDU = (s: AnimSrc) => (s.label || "").toLowerCase().startsWith("dulo");
          const first =
            resolved.find(s => isDirectPlayable(s) && isDU(s)) ??
            resolved.find(s => isDirectPlayable(s));
          if (first) {
            autoPlayFiredRef.current = true;
            setTimeout(() => { setPlayingSrc(first); setScreen("native"); }, 0);
          }
        }
      } catch { /* تجاهل كاش تالف */ }
    }).catch(() => {});
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progressKey, animSrcCacheKey]);

  /* ── Subtitle tracks — fetch in background for sources without subtitleUrl ── */
  useEffect(() => {
    if (!tmdbId) return;
    const base = getBaseUrl();
    const controller = new AbortController();
    secureFetch(
      `${base}/api/animation/subtitle-tracks?tmdbId=${encodeURIComponent(tmdbId)}&type=${type}&ep=${ep}&season=${season}&title=${encodeURIComponent(titleStr)}`,
      { signal: controller.signal as any }
    )
      .then(r => r.json())
      .then((data: any) => {
        const tracks: any[] = data?.tracks || [];
        const arTrack = tracks.find((t: any) => t.lang === "ar" || t.lang === "ar-auto");
        const enTrack = tracks.find((t: any) => t.lang === "en" || t.label?.toLowerCase().includes("english"));
        const b = getBaseUrl();
        /* — مسار العربية — */
        if (arTrack?.url) {
          setGlobalArSubUrl(b
            ? `${b}/api/anime/proxy-text?url=${encodeURIComponent(arTrack.url)}&ref=https://cache.vdrk.site/`
            : arTrack.url);
        } else if (enTrack?.url) {
          /* إنجليزية → ترجمة تلقائية للعربية */
          const proxyUrl = b
            ? `${b}/api/anime/proxy-text?url=${encodeURIComponent(enTrack.url)}`
            : enTrack.url;
          setGlobalArSubUrl(b
            ? `${b}/api/anime/translate-vtt?url=${encodeURIComponent(proxyUrl)}&from=en&to=ar`
            : enTrack.url);
        }
        /* — مسار الإنجليزية المباشرة — */
        if (enTrack?.url) {
          setGlobalEnSubUrl(b
            ? `${b}/api/anime/proxy-text?url=${encodeURIComponent(enTrack.url)}`
            : enTrack.url);
        }
        /* إذا لم تتوفر ترجمة عربية مباشرة، اضبط اللغة على الإنجليزية افتراضياً */
        if (!arTrack?.url && enTrack?.url) setSubLang("en");
      })
      .catch(() => {});
    return () => controller.abort();
  }, [tmdbId, type, ep, season]); // eslint-disable-line

  /* ── Save progress ── */
  const handleTimeUpdate = useCallback((t: number) => {
    lastTimeRef.current = t;
    const now = Date.now();
    if (now - lastSaveTs.current < 5000) return;
    lastSaveTs.current = now;
    if (t > 5) AsyncStorage.setItem(progressKey, String(Math.floor(t))).catch(() => {});
    /* Save to anim-watch-history */
    if (t > 30) {
      AsyncStorage.getItem("anim-watch-history").then(raw => {
        const hist = JSON.parse(raw || "[]");
        const item = { id: tmdbId, type, ep, season, title: titleStr, poster: posterUrl, date: new Date().toISOString() };
        const filtered = hist.filter((h: any) => !(h.id === tmdbId && h.type === type));
        AsyncStorage.setItem("anim-watch-history", JSON.stringify([item, ...filtered].slice(0, 50))).catch(() => {});
      }).catch(() => {});
    }
  }, [progressKey, tmdbId, type, ep, season, titleStr, posterUrl]);

  /* ── SSE fetch ── */
  const fetchSources = useCallback(async () => {
    if (!tmdbId) return;
    autoPlayFiredRef.current = false;
    setLoading(true);
    const hasCached = hasCachedRef.current;
    if (!hasCached) {
      setSources([]);
      seenKeys.current.clear();
      setScreen("loading");
    }

    abortRef.current?.abort();
    abortRef.current = new AbortController();

    const base = getBaseUrl();
    const url = `${base}/api/animation/sources-stream?title=${encodeURIComponent(titleStr)}&type=${type}&id=${tmdbId}&ep=${ep}&season=${season}`;
    const freshSrcs: AnimSrc[] = []; // تتبع المصادر الجديدة من SSE لحفظها

    try {
      const response = await secureStreamFetch(url, {
        signal: abortRef.current.signal as any,
      });
      if (!response.ok) {
        setLoading(false);
        setScreen(s => s === "loading" ? "picker" : s);
        return;
      }
      if (!response.body) throw new Error("No body");
      const reader = response.body.getReader();
      const decoder = new TextDecoder();
      let buffer = "";
      let currentEvent = "";

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });
        const lines = buffer.split("\n");
        buffer = lines.pop() || "";

        for (const line of lines) {
          if (line === "") { currentEvent = ""; continue; }
          if (line.startsWith(": ")) continue;
          if (line.startsWith("event: ")) { currentEvent = line.slice(7).trim(); continue; }
          if (!line.startsWith("data: ")) continue;
          try {
            const data = JSON.parse(line.slice(6));
            const evType = currentEvent || data.type || "";
            const isSource = evType === "source" || (!evType && (data.url || data.directUrl || data.proxyUrl));
            const isDone = evType === "done";

            if (isSource) {
              const src: AnimSrc = {
                ...data,
                directUrl: resolveUrl(data.directUrl, base),
                url: resolveUrl(data.url, base),
                proxyUrl: resolveUrl(data.proxyUrl, base),
              };
              const key = src.proxyUrl || src.directUrl || src.url || "";
              if (!key || seenKeys.current.has(key)) continue;
              seenKeys.current.add(key);
              freshSrcs.push(src);

              setSources(prev => {
                const next = [...prev, src];
                const isGoodSrc = isDirectPlayable(src);
                if (!isGoodSrc || autoPlayFiredRef.current) return next;

                /* أولوية الأنيميشن: DU → SC (StarCima) → SP (SeePanal) → SR (Streamrip) → أي مصدر */
                autoPlayFiredRef.current = true;
                const animPriority = (s: AnimSrc): number => {
                  const l = (s.label || "").toLowerCase();
                  if (l.startsWith("dulo"))       return 100;
                  if (l.startsWith("starcima"))   return 90;
                  if (l.startsWith("seepan"))     return 80;
                  if (l.startsWith("streamrip"))  return 70;
                  return 0;
                };
                const isDuloNow = (src.label || "").toLowerCase().startsWith("dulo");
                /* تأخير 1.2s — يمنح DU فرصة الوصول قبل الاختيار النهائي */
                setTimeout(() => {
                  setSources(latest => {
                    const best =
                      latest
                        .filter(s => isDirectPlayable(s))
                        .sort((a, b) => animPriority(b) - animPriority(a))[0] ??
                      src;
                    setPlayingSrc(best);
                    setScreen("native");
                    return latest;
                  });
                }, isDuloNow ? 0 : 1200);
                return next;
              });

            } else if (isDone) {
              setLoading(false);
              setSources(prev => {
                if (prev.length === 0) setTimeout(() => setScreen("picker"), 0);
                else {
                  /* حفظ المصادر الجديدة في الكاش المحلي */
                  if (animSrcCacheKey && freshSrcs.length > 0) {
                    AsyncStorage.setItem(animSrcCacheKey, JSON.stringify({ sources: freshSrcs, ts: Date.now() })).catch(() => {});
                  }
                }
                return prev;
              });
            }
          } catch {}
        }
      }
    } catch (e: any) {
      if (e?.name !== "AbortError") {
        setLoading(false);
        setScreen(s => s === "loading" ? "picker" : s);
      }
    } finally {
      setLoading(false);
      setSources(prev => {
        if (prev.length === 0) setTimeout(() => setScreen(s => s === "loading" ? "picker" : s), 0);
        return prev;
      });
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [tmdbId, type, ep, season, titleStr, animSrcCacheKey]);

  useEffect(() => {
    fetchSources();
    return () => abortRef.current?.abort();
  }, [fetchSources]);

  /* ── 22-second timeout — انتقل للـ picker بدلاً من الانتظار إلى الأبد ── */
  useEffect(() => {
    const timeout = setTimeout(() => {
      setScreen(s => s === "loading" ? "picker" : s);
      setLoading(false);
    }, 22000);
    return () => clearTimeout(timeout);
  }, [tmdbId, ep, season]);

  /* ── Portrait lock on picker/loading; unlock for embed ── */
  useEffect(() => {
    if (screen === "loading" || screen === "picker") {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    } else if (screen === "embed") {
      ScreenOrientation.unlockAsync().catch(() => {});
    }
    // "native" orientation is handled by RiftPlayer itself
  }, [screen]);

  /* ── Play a source ── */
  const playSrc = useCallback((src: AnimSrc) => {
    setPlayingSrc(src);
    setScreen(isDirectPlayable(src) ? "native" : "embed");
  }, []);

  /* ── Group sources by quality ── */
  const { directSrcs, embedSrcs } = useMemo(() => {
    const seen = new Set<string>();
    const direct: AnimSrc[] = [];
    const embeds: AnimSrc[] = [];
    for (const src of sources) {
      const key = src.proxyUrl || src.directUrl || src.url || "";
      if (seen.has(key)) continue;
      seen.add(key);
      if (isDirectPlayable(src)) direct.push(src);
      else if (isEmbedSrc(src)) embeds.push(src);
    }
    direct.sort((a, b) => TIER_RANK[getSrcQuality(b)] - TIER_RANK[getSrcQuality(a)]);
    return { directSrcs: direct, embedSrcs: embeds };
  }, [sources]);

  const grouped = useMemo<Record<Quality, AnimSrc[]>>(() => ({
    "1080p FHD": directSrcs.filter(s => getSrcQuality(s) === "1080p FHD"),
    "720p HD":   directSrcs.filter(s => getSrcQuality(s) === "720p HD"),
    "360p SD":   directSrcs.filter(s => getSrcQuality(s) === "360p SD"),
  }), [directSrcs]);

  /* Build RiftPlayer sources from directSrcs */
  const riftSources = useMemo((): PlayerSource[] => {
    const base = getBaseUrl();
    const activeSubUrl = subLang === "ar" ? globalArSubUrl : subLang === "en" ? globalEnSubUrl : undefined;
    const NO_SUB_PREFIXES = ["aflaam", "ArabSeed", "arabseed", "SeePanal", "seepanel", "seepan"];
    return directSrcs.map(s => {
      const lbl = s.label || "";
      const wantsNoSub = NO_SUB_PREFIXES.some(p => lbl.toLowerCase().startsWith(p.toLowerCase()));
      const resolvedSubUrl = wantsNoSub ? undefined : (s.subtitleUrl
        ? resolveUrl(s.subtitleUrl, base)
        : activeSubUrl);
      const isArabic = subLang === "ar" && !!resolvedSubUrl;
      const playUrl = getPlayUrl(s);
      /* headers: استخدم الـ headers المُرسَلة من الخادم (Referer/Origin مباشرة)،
         ثم احسبها من رابط الـ proxy كـ fallback */
      const headers = s.headers || extractHeadersFromProxy(playUrl);
      return {
        url: playUrl,
        label: lbl || "مصدر",
        quality: getSrcQuality(s),
        subtitleUrl: resolvedSubUrl,
        isArabic,
        ...(headers ? { headers } : {}),
      };
    }).filter(s => s.url);
  }, [directSrcs, globalArSubUrl, globalEnSubUrl, subLang]);

  /* ── Handle back ── */
  const handleBack = useCallback(() => {
    if (screen === "native" || screen === "embed") {
      setScreen("picker");
      return;
    }
    if (lastTimeRef.current > 5) {
      AsyncStorage.setItem(progressKey, String(Math.floor(lastTimeRef.current))).catch(() => {});
    }
    if (router.canGoBack()) {
      router.back();
    } else if (tmdbId) {
      router.replace(`/animation/${type}/${tmdbId}` as any);
    } else {
      router.replace("/(tabs)/animations" as any);
    }
  }, [screen, tmdbId, type, season, router, progressKey]);

  /* ═══════════════════ LOADING SCREEN ═══════════════════ */
  if (screen === "loading") {
    return (
      <View style={[w.container]}>
        {/* Blurred backdrop */}
        {posterUrl ? (
          <Image source={{ uri: posterUrl }} style={[StyleSheet.absoluteFill, { opacity: 0.13 }]}
            blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" />
        ) : null}
        <LinearGradient
          colors={["rgba(7,7,13,0.90)", "rgba(12,8,24,0.60)", "rgba(7,7,13,0.95)"]}
          style={StyleSheet.absoluteFill} />

        {/* Back button */}
        <Pressable onPress={handleBack} style={[w.loadBackBtn, { top: topPad + 4 }]}>
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.65)" />
        </Pressable>

        {/* Center content */}
        <View style={w.loadCard}>
          <Text style={w.loadPrayerText}>اللهم صلِّ وسلِّم على نبينا محمد ﷺ</Text>

          {/* Poster */}
          <View style={w.loadPosterWrap}>
            {posterUrl ? (
              <AnimPosterImg uri={posterUrl} type={type} />
            ) : (
              <View style={[w.loadPosterImg, w.loadPosterPlaceholder]}>
                <Ionicons name="film" size={36} color="rgba(139,92,246,0.4)" />
              </View>
            )}
          </View>

          {/* Episode/movie badge only — no title text (poster already shows it) */}
          <View style={w.loadEpBadge}>
            <Ionicons name={type === "movie" ? "film" : "tv"} size={10} color="#a78bfa" />
            <Text style={w.loadEpBadgeText}>
              {type === "movie" ? "فيلم" : `الموسم ${season} • الحلقة ${ep}`}
            </Text>
          </View>

          {/* Spinner */}
          <View style={{ alignItems: "center", gap: 10 }}>
            <SpinRing />
            <Text style={w.loadHintNew}>⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.</Text>
          </View>
        </View>
      </View>
    );
  }

  /* ═══════════════════ RIFT PLAYER ═══════════════════ */
  if (screen === "native" && riftSources.length > 0) {
    const startIdx = Math.max(0, riftSources.findIndex(s => s.url === getPlayUrl(playingSrc!)));
    return (
      <RiftPlayer
        sources={riftSources}
        initialSourceIndex={startIdx}
        title={titleStr}
        episode={type !== "movie" ? ep : undefined}
        episodeTitle={epTitle}
        initialPosition={resumeTime}
        onBack={() => setScreen("picker")}
        onProgress={(pos, _dur) => handleTimeUpdate(pos)}
        onError={() => {
          /* جميع المصادر فشلت → العودة للـ picker حتى يرى المستخدم ماذا حدث */
          console.warn("[Animation] جميع المصادر فشلت — العودة للـ picker");
          setScreen("picker");
        }}
        onNextEpisode={type === "tv" ? () => {
          const t = encodeURIComponent(titleStr);
          const p = encodeURIComponent(posterUrl);
          router.replace(`/animation/watch?id=${tmdbId}&type=${type}&ep=${ep + 1}&season=${season}&title=${t}&poster=${p}&autoplay=1`);
        } : undefined}
        onPrevEpisode={type === "tv" && ep > 1 ? () => {
          const t = encodeURIComponent(titleStr);
          const p = encodeURIComponent(posterUrl);
          router.replace(`/animation/watch?id=${tmdbId}&type=${type}&ep=${ep - 1}&season=${season}&title=${t}&poster=${p}`);
        } : undefined}
      />
    );
  }

  /* ═══════════════════ EMBED / WebView ═══════════════════ */
  if (screen === "embed" && playingSrc) {
    const embedUrl = getPlayUrl(playingSrc);
    if (Platform.OS === "web") {
      return (
        <View style={[w.container, { alignItems: "center", justifyContent: "center", gap: 16 }]}>
          <Pressable onPress={() => setScreen("picker")} style={[w.videoBackBtn, { position: "absolute", top: topPad + 4, right: 12 }]}>
            <Ionicons name="arrow-forward" size={18} color="#fff" />
          </Pressable>
          <View style={{ width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center" }}>
            <Ionicons name="tv-outline" size={36} color="rgba(139,92,246,0.7)" />
          </View>
          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>
            {playingSrc?.directType === "hls" ? "بث HLS يحتاج التطبيق الأصلي" : "هذا المصدر يحتاج التطبيق الأصلي"}
          </Text>
          <Text style={{ color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular", fontSize: 13, textAlign: "center", paddingHorizontal: 32 }}>
            {playingSrc?.directType === "hls"
              ? "بروتوكول HLS غير مدعوم في متصفح الويب — حمّل التطبيق للمشاهدة"
              : "مصدر الإطار لا يدعم تشغيل الويب مباشرةً"}
          </Text>
          {playingSrc?.isEmbed && (
            <Pressable
              onPress={() => Linking.openURL(embedUrl)}
              style={{ backgroundColor: "rgba(139,92,246,0.25)", borderRadius: 14, paddingHorizontal: 24, paddingVertical: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.4)", marginTop: 4 }}
            >
              <Text style={{ color: "#c4b5fd", fontFamily: "Cairo_700Bold", fontSize: 14 }}>فتح في المتصفح</Text>
            </Pressable>
          )}
          <Pressable onPress={() => setScreen("picker")} style={{ marginTop: 4 }}>
            <Text style={{ color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 13 }}>العودة للمصادر</Text>
          </Pressable>
        </View>
      );
    }
    // Native: no WebView — show info card with option to open in browser
    return (
      <View style={[w.container, { alignItems: "center", justifyContent: "center", gap: 16 }]}>
        <Pressable onPress={() => setScreen("picker")} style={[w.videoBackBtn, { position: "absolute", top: topPad + 4, right: 12 }]}>
          <Ionicons name="arrow-forward" size={18} color="#fff" />
        </Pressable>
        <View style={{ width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center" }}>
          <Ionicons name="tv-outline" size={36} color="rgba(139,92,246,0.7)" />
        </View>
        <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>
          {playingSrc?.directType === "hls" ? "بث HLS — جاري التحميل" : "هذا المصدر يحتاج متصفحاً خارجياً"}
        </Text>
        <Text style={{ color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular", fontSize: 13, textAlign: "center", paddingHorizontal: 32 }}>
          {playingSrc?.isEmbed
            ? "مصدر الإطار لا يدعم التشغيل المباشر — افتحه في المتصفح"
            : "يتعذّر تشغيل هذا المصدر — اختر مصدراً آخر"}
        </Text>
        {playingSrc?.isEmbed && (
          <Pressable
            onPress={() => Linking.openURL(embedUrl)}
            style={{ backgroundColor: "rgba(139,92,246,0.25)", borderRadius: 14, paddingHorizontal: 24, paddingVertical: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.4)", marginTop: 4 }}
          >
            <Text style={{ color: "#c4b5fd", fontFamily: "Cairo_700Bold", fontSize: 14 }}>فتح في المتصفح</Text>
          </Pressable>
        )}
        <Pressable onPress={() => setScreen("picker")} style={{ marginTop: 4 }}>
          <Text style={{ color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 13 }}>العودة للمصادر</Text>
        </Pressable>
      </View>
    );
  }

  /* ═══════════════════ SOURCE PICKER ═══════════════════ */
  const totalDirect = directSrcs.length;
  const totalEmbed = embedSrcs.length;
  let globalIdx = 0;

  return (
    <View style={[w.container, { paddingTop: topPad }]}>
      {/* Blurred backdrop */}
      {posterUrl ? (
        <Image source={{ uri: posterUrl }} style={[StyleSheet.absoluteFill, { opacity: 0.07 }]} blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" />
      ) : null}
      <LinearGradient colors={["rgba(7,7,13,0.97)", "rgba(7,7,13,0.88)"]} style={StyleSheet.absoluteFill} />

      {/* ── Header: 3-zone fixed layout ── */}
      <View style={w.header}>
        {/* Left: refresh */}
        <View style={w.headerLeft}>
          {loading
            ? <ActivityIndicator color="#8B5CF6" size="small" />
            : <Pressable onPress={fetchSources} style={w.retryBtn}>
                <Ionicons name="refresh" size={13} color="#8B5CF6" />
              </Pressable>
          }
        </View>
        {/* Center: title */}
        <View style={w.headerCenter}>
          <Text style={w.headerTitle} numberOfLines={1}>{titleStr || "مشاهدة"}</Text>
          {type !== "movie" && (
            <Text style={w.headerSub}>الموسم {season} • الحلقة {ep}</Text>
          )}
        </View>
        {/* Right: back button (always same position) */}
        <Pressable onPress={handleBack} style={w.headerBack}>
          <Ionicons name="arrow-forward" size={17} color="rgba(255,255,255,0.75)" />
        </Pressable>
      </View>

      <ScrollView style={{ flex: 1 }} contentContainerStyle={w.pickerContent} showsVerticalScrollIndicator={false}>

        {/* ── Info card ── */}
        <View style={w.infoCard}>
          {posterUrl ? (
            <View style={w.infoPosterWrap}>
              <View style={w.infoPosterGlow} />
              <Image source={{ uri: posterUrl }} style={w.infoPoster} resizeMode="cover" />
            </View>
          ) : (
            <View style={[w.infoPoster, w.infoPosterPlaceholder]}>
              <Ionicons name="film" size={26} color="rgba(139,92,246,0.4)" />
            </View>
          )}
          <View style={w.infoMeta}>
            <Text style={w.infoTitle} numberOfLines={2}>{titleStr || "—"}</Text>
            <View style={w.infoEpRow}>
              <View style={w.infoEpBadge}>
                <Ionicons name={type === "movie" ? "film" : "tv"} size={10} color="#a78bfa" />
                <Text style={w.infoEpText}>{type === "movie" ? "فيلم" : `م${season} • ح${ep}`}</Text>
              </View>
              {totalDirect > 0 && (
                <View style={w.infoSrcBadge}>
                  <View style={[w.dot, { backgroundColor: "#22c55e" }]} />
                  <Text style={w.infoSrcText}>{totalDirect} مصدر</Text>
                </View>
              )}
            </View>
            {loading && (
              <View style={w.loadingBar}>
                <ActivityIndicator color="#8B5CF6" size="small" style={{ transform: [{ scale: 0.75 }] }} />
                <Text style={w.loadingBarText}>جاري جلب المصادر…</Text>
              </View>
            )}
          </View>
        </View>

        {/* Comments button */}
        <Pressable onPress={() => router.push(`/comments?tmdbId=${tmdbId}&ep=${type !== "movie" ? ep : undefined}&title=${encodeURIComponent(titleStr || "")}` as any)} style={w.commentsBtn}>
          <Ionicons name="chatbubble-ellipses" size={15} color="rgba(139,92,246,0.9)" />
          <Text style={w.commentsBtnText}>التعليقات</Text>
          <Ionicons name="chevron-forward" size={13} color="rgba(139,92,246,0.5)" />
        </Pressable>


        {/* Sources — grouped by quality */}
        {(["1080p FHD", "720p HD", "360p SD"] as Quality[]).map(tier => {
          const srcs = grouped[tier];
          if (!srcs.length) return null;
          const qs = QUALITY_STYLE[tier];
          return (
            <View key={tier} style={w.tierSection}>
              <View style={w.tierHeader}>
                <View style={[w.tierDot, { backgroundColor: qs.dot }]} />
                <Text style={[w.tierTitle, { color: qs.text }]}>{qs.label}</Text>
                <View style={[w.tierCount, { backgroundColor: qs.badge, borderColor: qs.border }]}>
                  <Text style={[w.tierCountText, { color: qs.text }]}>{srcs.length}</Text>
                </View>
              </View>
              <View style={w.srcSection}>
                {srcs.map((src, i) => {
                  const idx = globalIdx++;
                  return <SrcRow key={idx} src={src} idx={idx} onPlay={playSrc} />;
                })}
              </View>
            </View>
          );
        })}

        {/* Embed sources */}
        {embedSrcs.length > 0 && (
          <View style={w.tierSection}>
            <View style={w.tierHeader}>
              <View style={[w.tierDot, { backgroundColor: "#64748b" }]} />
              <Text style={[w.tierTitle, { color: "rgba(148,163,184,0.7)" }]}>مصادر بإطار</Text>
            </View>
            <View style={w.srcSection}>
              {embedSrcs.map((src, i) => {
                const idx = globalIdx++;
                return <SrcRow key={idx} src={src} idx={idx} onPlay={playSrc} />;
              })}
            </View>
          </View>
        )}

        {/* Empty state */}
        {!loading && totalDirect === 0 && totalEmbed === 0 && (
          <View style={w.empty}>
            <Ionicons name="search" size={48} color="rgba(139,92,246,0.3)" />
            <Text style={w.emptyTitle}>لا توجد مصادر متاحة</Text>
            <Text style={w.emptySub}>
              {type === "tv"
                ? "قد لا يتوفر هذا المسلسل في مصادرنا حالياً."
                : "قد لا يتوفر هذا الفيلم في مصادرنا حالياً."}
            </Text>
            <Pressable onPress={fetchSources} style={w.retryBigBtn}>
              <Ionicons name="refresh" size={16} color="#c4b5fd" />
              <Text style={w.retryBigText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        )}

        {/* "Still searching..." message while loading */}
        {loading && totalDirect === 0 && (
          <View style={w.searchingWrap}>
            <Ionicons name="hourglass" size={32} color="rgba(139,92,246,0.4)" />
            <Text style={w.searchingText}>لا تزال المصادر تُجمَع، انتظر قليلاً…</Text>
          </View>
        )}
      </ScrollView>

    </View>
  );
}

const w = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#07070d" },
  video: { flex: 1 },

  /* Loading screen — redesigned */
  loadTopBar: { flexDirection: "row", alignItems: "center", gap: 12, paddingHorizontal: 14, paddingBottom: 10, zIndex: 10 },
  loadBackBtn: { position: "absolute", right: 16, width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.45)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", alignItems: "center", justifyContent: "center", zIndex: 10 },
  loadTopTitle: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.88)" },
  loadTopSub: { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  loadCard: { flex: 1, alignItems: "center", justifyContent: "center", gap: 22, paddingHorizontal: 28, paddingBottom: 40 },
  loadPosterWrap: { position: "relative", alignItems: "center", justifyContent: "center", width: 176, height: 264, overflow: "visible" },
  loadPosterImg: { width: 176, height: 264, borderRadius: 20, borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", shadowColor: "#000", shadowOpacity: 0.90, shadowRadius: 36, shadowOffset: { width: 0, height: 16 }, elevation: 20 },
  loadPosterPlaceholder: { backgroundColor: "rgba(18,10,40,0.95)", alignItems: "center", justifyContent: "center" },
  loadCardTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center", lineHeight: 24 },
  loadEpBadge: { flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 10, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 14, paddingVertical: 6 },
  loadEpBadgeText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  loadHintNew: { fontSize: 13, color: "rgba(255,255,255,0.75)", fontFamily: "Cairo_700Bold", textAlign: "center", lineHeight: 22, paddingHorizontal: 16 },
  loadPrayerText: { fontSize: 13, color: "rgba(255,255,255,0.85)", fontFamily: "Cairo_800ExtraBold", textAlign: "center" },
  topBackBtn: { position: "absolute", left: 16, zIndex: 10, width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.5)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", alignItems: "center", justifyContent: "center" },
  commentsBtn: { flexDirection: "row", alignItems: "center", gap: 8, padding: 12, borderRadius: 14, backgroundColor: "rgba(139,92,246,0.06)", borderWidth: 1, borderColor: "rgba(139,92,246,0.18)" },
  commentsBtnText: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.85)" },

  /* Video top bar */
  videoTopBar: { position: "absolute", top: 0, left: 0, right: 0, flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 12, paddingBottom: 20 },
  videoBackBtn: { width: 34, height: 34, borderRadius: 17, backgroundColor: "rgba(0,0,0,0.5)", alignItems: "center", justifyContent: "center" },
  videoTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "#fff" },
  videoEp: { fontSize: 10, color: "rgba(255,255,255,0.5)", fontFamily: "Cairo_400Regular" },
  srcSwitchBtn: { flexDirection: "row", alignItems: "center", gap: 4, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 10, paddingHorizontal: 10, paddingVertical: 6 },
  srcSwitchText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.8)" },

  /* ── Picker header: 3-zone fixed layout ── */
  header: { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingVertical: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.07)", gap: 8 },
  headerLeft: { width: 36, alignItems: "flex-start", justifyContent: "center" },
  headerCenter: { flex: 1, alignItems: "center" },
  headerBack: { width: 36, height: 36, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.07)", borderWidth: 1, borderColor: "rgba(255,255,255,0.11)", alignItems: "center", justifyContent: "center", flexShrink: 0 },
  headerTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center" },
  headerSub: { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  retryBtn: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", alignItems: "center", justifyContent: "center" },

  pickerContent: { padding: 14, paddingBottom: 100, gap: 12 },

  /* ── Info card ── */
  infoCard: { flexDirection: "row", alignItems: "flex-start", gap: 14, backgroundColor: "rgba(15,12,28,0.80)", borderRadius: 18, borderWidth: 1, borderColor: "rgba(139,92,246,0.14)", padding: 14 },
  infoPosterWrap: { width: 72, height: 102, position: "relative", alignItems: "center", justifyContent: "center" },
  infoPosterGlow: { position: "absolute", width: 80, height: 110, borderRadius: 20, backgroundColor: "rgba(109,40,217,0.28)" },
  infoPoster: { width: 72, height: 102, borderRadius: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  infoPosterPlaceholder: { backgroundColor: "rgba(139,92,246,0.08)", alignItems: "center", justifyContent: "center" },
  infoMeta: { flex: 1, gap: 8, paddingTop: 2 },
  infoTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right", lineHeight: 22 },
  infoEpRow: { flexDirection: "row", gap: 8, flexWrap: "wrap" },
  infoEpBadge: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(124,58,237,0.18)", borderRadius: 8, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 10, paddingVertical: 5 },
  infoEpText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  infoSrcBadge: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(34,197,94,0.10)", borderRadius: 8, borderWidth: 1, borderColor: "rgba(34,197,94,0.22)", paddingHorizontal: 10, paddingVertical: 5 },
  infoSrcText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(134,239,172,0.85)" },

  dot: { width: 5, height: 5, borderRadius: 2.5 },
  loadingBar: { flexDirection: "row", alignItems: "center", gap: 8 },
  loadingBarText: { fontSize: 10, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },

  tierSection: { gap: 6 },
  tierHeader: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 2 },
  srcSection: { borderRadius: 16, overflow: "hidden", backgroundColor: "rgba(14,12,24,0.92)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  tierDot: { width: 6, height: 6, borderRadius: 3 },
  tierTitle: { flex: 1, fontSize: 11, fontFamily: "Cairo_700Bold" },
  tierCount: { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 7, borderWidth: 1 },
  tierCountText: { fontSize: 9, fontFamily: "Cairo_700Bold" },

  /* Source row — inside glass card */
  srcRow: { flexDirection: "row", alignItems: "center", gap: 11, paddingHorizontal: 14, paddingVertical: 11, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.05)" },
  srcIcon: { width: 34, height: 34, borderRadius: 11, borderWidth: 1, alignItems: "center", justifyContent: "center" },
  srcNum: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.92)" },
  srcTag: { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(255,255,255,0.10)", borderWidth: 1, borderColor: "rgba(255,255,255,0.18)" },
  srcTagText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.82)", fontVariant: ["tabular-nums"] },
  srcCdn: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.32)", marginTop: 2 },
  srcSubBadge: { paddingHorizontal: 6, paddingVertical: 2, borderRadius: 5, backgroundColor: "rgba(34,197,94,0.12)", borderWidth: 1, borderColor: "rgba(34,197,94,0.28)" },
  srcSubText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(134,239,172,0.9)" },
  srcRight: { flexDirection: "row", alignItems: "center", gap: 7 },
  srcQBadge: { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7, borderWidth: 1 },
  srcQText: { fontSize: 9, fontFamily: "Cairo_700Bold" },
  srcPlayBtn: { flexDirection: "row", alignItems: "center", gap: 4, backgroundColor: "rgba(109,40,217,0.88)", borderRadius: 10, paddingHorizontal: 11, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(167,139,250,0.28)" },
  srcPlayText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  empty: { alignItems: "center", justifyContent: "center", gap: 14, paddingVertical: 60 },
  emptyTitle: { fontSize: 15, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  emptySub: { fontSize: 12, color: "rgba(255,255,255,0.22)", fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 20, paddingHorizontal: 24 },
  retryBigBtn: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 20, paddingVertical: 11 },
  retryBigText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

  searchingWrap: { alignItems: "center", gap: 14, paddingVertical: 40 },
  searchingText: { fontSize: 12, color: "rgba(255,255,255,0.32)", fontFamily: "Cairo_400Regular", textAlign: "center" },

  /* Subtitle language toggle */
  subLangRow: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(14,12,28,0.80)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", paddingHorizontal: 14, paddingVertical: 10 },
  subLangLabel: { color: "rgba(255,255,255,0.50)", fontFamily: "Cairo_700Bold", fontSize: 12, marginEnd: 4, flex: 1 },
  subLangBtn: { paddingHorizontal: 14, paddingVertical: 6, borderRadius: 20, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.10)" },
  subLangBtnActive: { backgroundColor: "rgba(139,92,246,0.25)", borderColor: "rgba(139,92,246,0.60)" },
  subLangText: { color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_700Bold", fontSize: 12 },
  subLangTextActive: { color: "#c4b5fd" },
});

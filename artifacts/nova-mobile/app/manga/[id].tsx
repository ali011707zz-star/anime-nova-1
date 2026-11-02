import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  BackHandler,
  FlatList,
  I18nManager,
  Image,
  Linking,
  Modal,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
  useWindowDimensions,
} from "react-native";
import WebView from "react-native-webview";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";
import { translateMangaGenre } from "@/utils/mangaLocalization";
import { getYoutubeEmbedUrl, getYoutubeReferer } from "@/utils/youtube";
import { TvPressable as Pressable } from "@/utils/tv";

const IS_RTL = I18nManager.isRTL;
const ROW_RTL = (IS_RTL ? "row" : "row-reverse") as "row" | "row-reverse";
const ROW_LTR = (IS_RTL ? "row-reverse" : "row") as "row" | "row-reverse";
const ALIGN_RIGHT = (IS_RTL ? "flex-start" : "flex-end") as "flex-start" | "flex-end";

type MangaChapter = {
  id: string;
  slug: string;
  number: string | number;
  numberStr?: string;
  title?: string;
  date?: string;
  createdAt?: string;
};

type MangaTrailer = {
  id: string;
  site?: string;
  thumbnail?: string;
  url?: string;
};

type MangaDetailData = {
  id: string;
  slug: string;
  source: "manga" | "manhwa";
  arabicTitle?: string;
  englishTitle?: string;
  arTitle?: string;
  enTitle?: string;
  displayTitle?: string;
  title?:
    | string
    | {
        romaji?: string;
        english?: string;
        native?: string;
      };
  description: string;
  poster?: string;
  cover?: string;
  banner?: string;
  coverImage?: { large?: string; extraLarge?: string };
  bannerImage?: string;
  status: string;
  countryOfOrigin: string;
  averageScore?: number | null;
  genres: string[];
  author?: string;
  artist?: string;
  year?: number | null;
  trailer?: MangaTrailer | null;
  trailerYT?: string | null;
  chaptersCount: number;
  chapters: MangaChapter[];
};

const STATUS_AR: Record<string, string> = {
  RELEASING: "مستمرة",
  FINISHED: "مكتملة",
  NOT_YET_RELEASED: "قريباً",
  HIATUS: "متوقفة مؤقتاً",
  CANCELLED: "ملغاة",
};

function originLabel(source?: string, country?: string) {
  if (source === "manhwa" || country === "KR") return "مانهوا ملونة";
  if (country === "CN" || country === "TW") return "مانها صينية";
  return "مانجا مترجمة";
}

type MangaPageData = {
  url: string;
  width?: number;
  height?: number;
};

function formatChapterNumber(ch: MangaChapter): string {
  if (ch.numberStr) return String(ch.numberStr);
  return String(ch.number ?? "");
}

function buildWebtoonReaderHtml(
  pages: MangaPageData[],
  chapterLabel: string,
  nextChapterLabel: string | null,
  zoomPercent: number
): string {
  const safeZoom = Math.max(100, Math.min(250, zoomPercent || 100));
  const pagesJson = JSON.stringify(pages.map((p) => p.url));
  const safeChapterLabel = String(chapterLabel || "الفصل").replace(/</g, "&lt;").replace(/>/g, "&gt;");
  const safeNextLabel = nextChapterLabel
    ? String(nextChapterLabel).replace(/</g, "&lt;").replace(/>/g, "&gt;")
    : "";

  return `<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=5.0, user-scalable=yes" />
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      -webkit-tap-highlight-color: transparent;
      user-select: none;
      -webkit-user-select: none;
    }
    html, body {
      width: 100%;
      min-height: 100%;
      background-color: #050507;
      color: #f4f4f5;
      font-family: system-ui, -apple-system, sans-serif;
      overflow-x: auto;
      overflow-y: auto;
      -webkit-overflow-scrolling: touch;
    }
    #reader-container {
      width: ${safeZoom}%;
      margin: 0 auto;
      display: flex;
      flex-direction: column;
      align-items: stretch;
      background-color: #050507;
    }
    .page-slot {
      width: 100%;
      position: relative;
      background-color: #09090d;
      line-height: 0;
      font-size: 0;
      margin: 0;
      padding: 0;
    }
    .page-slot.loading {
      min-height: 320px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 10px;
      border-bottom: 1px solid rgba(255,255,255,0.04);
    }
    .spinner {
      width: 28px;
      height: 28px;
      border: 3px solid rgba(245, 158, 11, 0.22);
      border-top-color: #F59E0B;
      border-radius: 50%;
      animation: spin 0.75s linear infinite;
    }
    @keyframes spin {
      to { transform: rotate(360deg); }
    }
    .page-status {
      font-size: 12px;
      line-height: 1.4;
      color: #a1a1aa;
      font-weight: 600;
    }
    .page-img {
      width: 100% !important;
      max-width: 100% !important;
      height: auto !important;
      display: block !important;
      margin: 0 !important;
      padding: 0 !important;
      border: 0 !important;
      image-rendering: -webkit-optimize-contrast;
    }
    .retry-btn {
      margin-top: 6px;
      padding: 8px 16px;
      border-radius: 10px;
      border: 0;
      background: #F59E0B;
      color: #09090B;
      font-weight: 700;
      font-size: 12px;
      line-height: 1.4;
    }
    .end-footer {
      width: 100%;
      padding: 36px 18px 46px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 12px;
      background: #09090d;
      border-top: 1px solid rgba(255,255,255,0.08);
      text-align: center;
    }
    .end-badge {
      color: #FBBF24;
      font-size: 15px;
      font-weight: 700;
    }
    .next-btn {
      padding: 12px 22px;
      border-radius: 14px;
      border: 0;
      background: #F59E0B;
      color: #09090B;
      font-weight: 800;
      font-size: 14px;
      box-shadow: 0 6px 18px rgba(245, 158, 11, 0.28);
    }
  </style>
</head>
<body>
  <div id="reader-container"></div>
  <div class="end-footer">
    <div class="end-badge">✓ نهاية ${safeChapterLabel}</div>
    ${
      safeNextLabel
        ? `<button class="next-btn" onclick="goNextChapter()">الانتقال إلى الفصل التالي (${safeNextLabel}) ←</button>`
        : ""
    }
  </div>
  <script>
    const pages = ${pagesJson};
    const container = document.getElementById("reader-container");
    let currentZoom = ${safeZoom};
    let lastTapTime = 0;

    function goNextChapter() {
      if (window.ReactNativeWebView && window.ReactNativeWebView.postMessage) {
        window.ReactNativeWebView.postMessage("NEXT_CHAPTER");
      }
    }

    // Double-tap anywhere on the reader to toggle 100% <-> 175% width zoom
    document.addEventListener("touchend", function (e) {
      if (e.touches && e.touches.length > 0) return;
      const now = Date.now();
      if (now - lastTapTime < 280) {
        currentZoom = currentZoom > 100 ? 100 : 175;
        container.style.width = currentZoom + "%";
        if (window.ReactNativeWebView && window.ReactNativeWebView.postMessage) {
          window.ReactNativeWebView.postMessage("ZOOM:" + currentZoom);
        }
        lastTapTime = 0;
      } else {
        lastTapTime = now;
      }
    }, { passive: true });

    pages.forEach((url, index) => {
      const slot = document.createElement("div");
      slot.className = "page-slot loading";

      const spinner = document.createElement("div");
      spinner.className = "spinner";
      const status = document.createElement("div");
      status.className = "page-status";
      status.textContent = "صفحة " + (index + 1) + " من " + pages.length;

      slot.appendChild(spinner);
      slot.appendChild(status);

      const img = document.createElement("img");
      img.className = "page-img";
      img.decoding = "async";
      img.loading = index < 4 ? "eager" : "lazy";
      img.style.display = "none";

      let retries = 0;
      function loadImg(cacheBust) {
        img.src = cacheBust
          ? url + (url.indexOf("?") !== -1 ? "&" : "?") + "retry=" + cacheBust
          : url;
      }

      img.onload = function () {
        slot.className = "page-slot";
        spinner.remove();
        status.remove();
        img.style.display = "block";
      };

      img.onerror = function () {
        if (retries < 2) {
          retries++;
          setTimeout(() => loadImg(retries + "_" + Date.now()), 500 * retries);
          return;
        }
        spinner.style.display = "none";
        status.textContent = "تعذر تحميل الصفحة " + (index + 1);
        let btn = slot.querySelector(".retry-btn");
        if (!btn) {
          btn = document.createElement("button");
          btn.className = "retry-btn";
          btn.textContent = "إعادة المحاولة";
          btn.onclick = function (ev) {
            ev.stopPropagation();
            retries = 0;
            spinner.style.display = "block";
            status.textContent = "جاري إعادة تحميل الصفحة " + (index + 1) + "...";
            btn.remove();
            loadImg("manual_" + Date.now());
          };
          slot.appendChild(btn);
        }
      };

      slot.appendChild(img);
      container.appendChild(slot);
      loadImg("");
    });
  </script>
</body>
</html>`;
}

function MangaPageItem({
  uri,
  pageIndex,
  totalPages,
  screenWidth,
  initialWidth,
  initialHeight,
}: {
  uri: string;
  pageIndex: number;
  totalPages: number;
  screenWidth: number;
  initialWidth?: number;
  initialHeight?: number;
}) {
  const initialRatio =
    initialWidth && initialHeight && initialWidth > 0 && initialHeight > 0
      ? initialWidth / initialHeight
      : 0.7;
  const [aspectRatio, setAspectRatio] = useState<number>(initialRatio);
  const [loaded, setLoaded] = useState(false);
  const [failed, setFailed] = useState(false);
  const [retrySeed, setRetrySeed] = useState(0);

  const effectiveUri =
    retrySeed > 0 ? `${uri}${uri.includes("?") ? "&" : "?"}r=${retrySeed}` : uri;

  useEffect(() => {
    setLoaded(false);
    setFailed(false);
  }, [effectiveUri]);

  const computedHeight = Math.max(240, Math.round(screenWidth / Math.max(0.01, aspectRatio)));

  return (
    <View style={[styles.pageFrame, { width: screenWidth, minHeight: failed ? 240 : computedHeight }]}>
      {!loaded && !failed && (
        <View style={[styles.pageLoaderOverlay, { height: computedHeight, width: screenWidth }]}>
          <ActivityIndicator size="small" color="#F59E0B" />
          <Text style={styles.pageLoaderText}>
            صفحة {pageIndex + 1} من {totalPages}
          </Text>
        </View>
      )}
      {failed ? (
        <View style={[styles.pageErrorBox, { height: 220 }]}>
          <Ionicons name="image-outline" size={28} color="#9ca3af" />
          <Text style={styles.pageErrorText}>تعذر تحميل الصفحة {pageIndex + 1}</Text>
          <Pressable
            onPress={() => {
              setFailed(false);
              setLoaded(false);
              setRetrySeed((s) => s + 1);
            }}
            style={styles.pageRetryBtn}
          >
            <Ionicons name="refresh" size={14} color="#09090B" />
            <Text style={styles.pageRetryBtnText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : (
        <Image
          source={{ uri: effectiveUri }}
          style={{ width: screenWidth, height: computedHeight }}
          resizeMode="contain"
          onLoad={(e) => {
            const src = e?.nativeEvent?.source;
            if (src?.width && src?.height && src.width > 0 && src.height > 0) {
              setAspectRatio(src.width / src.height);
            }
            setLoaded(true);
          }}
          onError={() => {
            setFailed(true);
          }}
        />
      )}
    </View>
  );
}

export default function MangaDetailScreen() {
  const params = useLocalSearchParams<{
    id: string;
    title?: string;
    english?: string;
    cover?: string;
    status?: string;
    chapters?: string;
    score?: string;
    source?: string;
  }>();
  const router = useRouter();
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const { width, height } = useWindowDimensions();

  const decodedId = useMemo(() => {
    try {
      return decodeURIComponent(String(params.id || ""));
    } catch {
      return String(params.id || "");
    }
  }, [params.id]);

  const inferredSource: "manga" | "manhwa" =
    params.source === "manhwa" || decodedId.startsWith("az--") ? "manhwa" : "manga";

  const [manga, setManga] = useState<MangaDetailData | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(false);
  const [showFullSynopsis, setShowFullSynopsis] = useState(false);
  const [showTrailer, setShowTrailer] = useState(false);

  // Dedicated standalone Chapters Screen state
  const [chaptersPageOpen, setChaptersPageOpen] = useState(false);
  const [chaptersDesc, setChaptersDesc] = useState(true);
  const [chapterSearch, setChapterSearch] = useState("");
  const [chapterPickerVisible, setChapterPickerVisible] = useState(false);

  // Full-screen Reader state
  const [readerOpen, setReaderOpen] = useState(false);
  const [activeChapter, setActiveChapter] = useState<MangaChapter | null>(null);
  const [chapterPages, setChapterPages] = useState<MangaPageData[]>([]);
  const [pagesLoading, setPagesLoading] = useState(false);
  const [pagesError, setPagesError] = useState<string | null>(null);
  const [readerZoom, setReaderZoom] = useState<number>(100);

  const readerWebViewRef = useRef<WebView>(null);

  // Hardware back button handling for standalone Chapters screen
  useEffect(() => {
    if (Platform.OS !== "android" || !chaptersPageOpen || readerOpen) return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      setChaptersPageOpen(false);
      return true;
    });
    return () => sub.remove();
  }, [chaptersPageOpen, readerOpen]);

  const fetchDetail = useCallback(async () => {
    if (!decodedId) {
      setError(true);
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(false);
    try {
      const res = await fetch(`${getBaseUrl()}/api/manga/detail?id=${encodeURIComponent(decodedId)}`);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const data: MangaDetailData = await res.json();
      setManga(data);
    } catch {
      setError(true);
    } finally {
      setLoading(false);
    }
  }, [decodedId]);

  useEffect(() => {
    void fetchDetail();
  }, [fetchDetail]);

  const loadChapterPages = useCallback(
    async (chapter: MangaChapter) => {
      const targetId = manga?.id || decodedId;
      const targetSource = manga?.source || inferredSource;
      if (!targetId) return;
      setPagesLoading(true);
      setPagesError(null);
      setChapterPages([]);
      try {
        const qs = new URLSearchParams({
          id: targetId,
          chapter: chapter.slug,
          source: targetSource,
        });
        const res = await fetch(`${getBaseUrl()}/api/manga/chapter?${qs.toString()}`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const data = await res.json();
        const pages: MangaPageData[] = Array.isArray(data?.pages)
          ? data.pages
              .map((p: any) => {
                if (typeof p === "string") return { url: p };
                return {
                  url: p?.url || "",
                  width: typeof p?.width === "number" ? p.width : undefined,
                  height: typeof p?.height === "number" ? p.height : undefined,
                };
              })
              .filter((p: MangaPageData) => Boolean(p.url))
          : [];
        if (!pages.length) {
          setPagesError("لا تتوفر صفحات لهذا الفصل حالياً.");
        } else {
          setChapterPages(pages);
        }
      } catch {
        setPagesError("تعذر تحميل صفحات الفصل. يرجى المحاولة مرة أخرى.");
      } finally {
        setPagesLoading(false);
      }
    },
    [decodedId, inferredSource, manga]
  );

  const openChapterInApp = useCallback(
    (chapter: MangaChapter) => {
      setActiveChapter(chapter);
      setReaderOpen(true);
      void loadChapterPages(chapter);
    },
    [loadChapterPages]
  );

  // Chapters sorted ascending by numeric order
  const chaptersAsc = useMemo(() => {
    const raw = manga?.chapters || [];
    return [...raw].sort((a, b) => {
      const na = parseFloat(formatChapterNumber(a));
      const nb = parseFloat(formatChapterNumber(b));
      if (!Number.isNaN(na) && !Number.isNaN(nb) && na !== nb) return na - nb;
      return formatChapterNumber(a).localeCompare(formatChapterNumber(b), undefined, {
        numeric: true,
      });
    });
  }, [manga?.chapters]);

  const displayedChapters = useMemo(() => {
    const ordered = chaptersDesc ? [...chaptersAsc].reverse() : chaptersAsc;
    const q = chapterSearch.trim().toLowerCase();
    if (!q) return ordered;
    return ordered.filter(
      (ch) =>
        formatChapterNumber(ch).toLowerCase().includes(q) ||
        String(ch.title || "").toLowerCase().includes(q)
    );
  }, [chaptersAsc, chaptersDesc, chapterSearch]);

  const activeChapterAscIdx = useMemo(() => {
    if (!activeChapter) return -1;
    return chaptersAsc.findIndex((c) => c.slug === activeChapter.slug);
  }, [activeChapter, chaptersAsc]);

  const prevChapter = activeChapterAscIdx > 0 ? chaptersAsc[activeChapterAscIdx - 1] : null;
  const nextChapter =
    activeChapterAscIdx >= 0 && activeChapterAscIdx < chaptersAsc.length - 1
      ? chaptersAsc[activeChapterAscIdx + 1]
      : null;

  // Resolve titles & visuals immediately (using route params while detail loads so there is 0ms delay!)
  const rawTitleStr = typeof manga?.title === "string" ? manga.title : "";
  const rawTitleObj = typeof manga?.title === "object" && manga?.title ? manga.title : undefined;

  const arabicTitle =
    manga?.arTitle ||
    manga?.arabicTitle ||
    rawTitleObj?.native ||
    (rawTitleStr && /[\u0600-\u06FF]/.test(rawTitleStr) ? rawTitleStr : "") ||
    params.title ||
    "";

  const englishTitle =
    manga?.enTitle ||
    manga?.englishTitle ||
    rawTitleObj?.english ||
    rawTitleObj?.romaji ||
    (rawTitleStr && !/[\u0600-\u06FF]/.test(rawTitleStr) ? rawTitleStr : "") ||
    params.english ||
    "";

  const primaryTitle = arabicTitle || englishTitle || "جاري التحميل...";
  const secondaryTitle =
    englishTitle && englishTitle !== primaryTitle ? englishTitle : "";

  const cover =
    manga?.poster ||
    manga?.cover ||
    manga?.coverImage?.extraLarge ||
    manga?.coverImage?.large ||
    params.cover ||
    "";
  const banner = manga?.bannerImage || manga?.banner || cover;
  const currentSource = manga?.source || inferredSource;
  const currentStatus = manga?.status || params.status || "RELEASING";
  const rawScore = manga?.averageScore ?? (params.score ? Number(params.score) : null);
  const score =
    typeof rawScore === "number" && rawScore > 0 ? (rawScore / 10).toFixed(1) : null;
  const totalChaptersCount =
    chaptersAsc.length > 0
      ? chaptersAsc.length
      : manga?.chaptersCount || (params.chapters ? Number(params.chapters) : 0);

  const arabicSynopsis = manga?.description?.trim() || "";
  const trailerYT = manga?.trailer?.id || manga?.trailerYT || null;
  const trailerThumb =
    manga?.trailer?.thumbnail ||
    (trailerYT ? `https://img.youtube.com/vi/${trailerYT}/hqdefault.jpg` : "");

  const firstChapter = chaptersAsc[0] || null;
  const latestChapter = chaptersAsc[chaptersAsc.length - 1] || null;

  if (error && !manga && !params.title) {
    return (
      <View style={[styles.center, { backgroundColor: colors.background }]}>
        <Ionicons name="alert-circle-outline" size={44} color={colors.textMuted} />
        <Text style={[styles.errorText, { color: colors.textSecondary }]}>تعذر تحميل تفاصيل العمل</Text>
        <View style={styles.errorActionsRow}>
          <Pressable
            onPress={() => void fetchDetail()}
            style={[styles.backButton, { borderColor: colors.homeAccent, backgroundColor: "rgba(245,158,11,0.12)" }]}
          >
            <Text style={[styles.backButtonText, { color: colors.homeAccent }]}>إعادة المحاولة</Text>
          </Pressable>
          <Pressable onPress={() => router.back()} style={[styles.backButton, { borderColor: colors.border }]}>
            <Text style={[styles.backButtonText, { color: colors.textPrimary }]}>العودة</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <ScrollView
        contentContainerStyle={{ paddingBottom: insets.bottom + 44 }}
        showsVerticalScrollIndicator={false}
      >
        {/* ── Hero Header ── */}
        <View style={styles.heroWrap}>
          {banner ? (
            <Image
              source={{ uri: banner }}
              style={StyleSheet.absoluteFill}
              resizeMode="cover"
              blurRadius={8}
            />
          ) : null}
          <LinearGradient
            colors={["rgba(9,9,11,0.25)", "rgba(9,9,11,0.85)", colors.background]}
            style={StyleSheet.absoluteFill}
          />

          <View style={[styles.topBar, { paddingTop: insets.top + 10 }]}>
            <Pressable onPress={() => router.back()} style={styles.iconBtn}>
              <Ionicons name="arrow-forward" size={21} color="#fff" />
            </Pressable>
          </View>

          <View style={styles.heroContent}>
            <View style={[styles.posterCard, { borderColor: colors.border }]}>
              {cover ? (
                <Image source={{ uri: cover }} style={StyleSheet.absoluteFill} resizeMode="cover" />
              ) : (
                <View style={styles.center}>
                  <Ionicons name="book-outline" size={32} color={colors.textMuted} />
                </View>
              )}
            </View>

            <View style={styles.heroMeta}>
              <View style={[styles.typeBadge, { backgroundColor: colors.homeAccent }]}>
                <Text style={styles.typeBadgeText}>
                  {originLabel(currentSource, manga?.countryOfOrigin)}
                </Text>
              </View>

              <Text style={[styles.title, { color: colors.textPrimary }]} numberOfLines={3}>
                {primaryTitle}
              </Text>

              {secondaryTitle ? (
                <Text style={[styles.subTitle, { color: colors.textMuted }]} numberOfLines={2}>
                  {secondaryTitle}
                </Text>
              ) : null}

              <View style={styles.statsRow}>
                {score && (
                  <View style={styles.statPill}>
                    <Ionicons name="star" size={13} color="#FACC15" />
                    <Text style={styles.statText}>{score}</Text>
                  </View>
                )}
                <View style={styles.statPill}>
                  <Ionicons name="checkmark-circle-outline" size={13} color="#34D399" />
                  <Text style={styles.statText}>{STATUS_AR[currentStatus] || "مستمرة"}</Text>
                </View>
                {totalChaptersCount > 0 && (
                  <View style={styles.statPill}>
                    <Ionicons name="layers-outline" size={13} color="#60A5FA" />
                    <Text style={styles.statText}>{totalChaptersCount} فصل</Text>
                  </View>
                )}
              </View>
            </View>
          </View>
        </View>

        {/* ── Primary CTA Bar: قراءة الفصول (opens standalone Chapters Screen) ── */}
        <View style={styles.ctaWrap}>
          <Pressable
            onPress={() => setChaptersPageOpen(true)}
            style={[
              styles.chaptersCtaBtn,
              { backgroundColor: colors.homeAccent || "#0EA5E9" },
            ]}
          >
            <View style={styles.chaptersCtaRight}>
              <View style={styles.chaptersCtaIcon}>
                <Ionicons name="book" size={19} color="#09090B" />
              </View>
              <View style={styles.chaptersCtaTextWrap}>
                <Text style={styles.chaptersCtaTitle}>قراءة الفصول</Text>
                <Text style={styles.chaptersCtaSub}>
                  تصفح جميع الفصول وابدأ القراءة فوراً
                </Text>
              </View>
            </View>

            <View style={styles.chaptersCtaPill}>
              {loading && chaptersAsc.length === 0 ? (
                <ActivityIndicator size="small" color="#09090B" />
              ) : (
                <>
                  <Text style={styles.chaptersCtaPillText}>
                    {totalChaptersCount > 0 ? `${totalChaptersCount} فصل` : "الفصول"}
                  </Text>
                  <Ionicons name="chevron-back" size={14} color="#09090B" />
                </>
              )}
            </View>
          </Pressable>
        </View>

        {/* ── Genres ── */}
        {Boolean(manga?.genres?.length) && (
          <View style={styles.genresWrap}>
            {manga!.genres.map((g, idx) => (
              <View
                key={`${g}-${idx}`}
                style={[styles.genreChip, { backgroundColor: colors.surface, borderColor: colors.border }]}
              >
                <Text style={[styles.genreText, { color: colors.textSecondary }]}>
                  {translateMangaGenre(g)}
                </Text>
              </View>
            ))}
          </View>
        )}

        {/* ── 1. القصة (Placed First & Higher Up!) ── */}
        <View style={[styles.sectionCard, { backgroundColor: colors.surface, borderColor: colors.border }]}>
          <View style={styles.synopsisHeaderRow}>
            <View style={styles.sectionHeaderRight}>
              <View style={[styles.sectionBar, { backgroundColor: colors.homeAccent || "#0EA5E9" }]} />
              <Text style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}>
                القصة
              </Text>
            </View>
            <View style={styles.arTag}>
              <Ionicons name="language-outline" size={12} color="#FBBF24" />
              <Text style={styles.arTagText}>مترجمة بالعربية</Text>
            </View>
          </View>

          {loading && !arabicSynopsis ? (
            <View style={{ paddingVertical: 18, alignItems: "center" }}>
              <ActivityIndicator size="small" color={colors.homeAccent} />
            </View>
          ) : (
            <>
              <Text
                style={[styles.synopsisText, { color: colors.textSecondary }]}
                numberOfLines={showFullSynopsis ? undefined : 5}
              >
                {arabicSynopsis || "لا يتوفر ملخص عربي لهذا العمل حالياً."}
              </Text>
              {arabicSynopsis.length > 160 && (
                <Pressable
                  onPress={() => setShowFullSynopsis((v) => !v)}
                  style={[styles.readMoreBtn, { borderTopColor: colors.border }]}
                >
                  <Text style={[styles.readMoreText, { color: colors.textPrimary }]}>
                    {showFullSynopsis ? "عرض أقل" : "قراءة القصة كاملة"}
                  </Text>
                  <Ionicons
                    name={showFullSynopsis ? "chevron-up" : "chevron-down"}
                    size={14}
                    color={colors.textSecondary}
                  />
                </Pressable>
              )}
            </>
          )}
        </View>

        {/* ── 2. الإعلان الدعائي (YouTube Trailer) ── */}
        {trailerYT ? (
          <View style={styles.trailerSection}>
            <View style={[styles.sectionHeaderRight, { marginBottom: 10 }]}>
              <View style={[styles.sectionBar, { backgroundColor: "#EF4444" }]} />
              <Text style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}>
                الإعلان الدعائي
              </Text>
            </View>

            <Pressable onPress={() => setShowTrailer(true)} style={styles.trailerBtn}>
              <Image source={{ uri: trailerThumb }} style={styles.trailerImg} />
              <LinearGradient
                colors={["transparent", "rgba(0,0,0,0.82)"]}
                style={StyleSheet.absoluteFill}
              />
              <View style={styles.trailerPlayBtn}>
                <View style={styles.trailerPlay}>
                  <Ionicons name="play" size={24} color="#fff" style={{ marginLeft: 2 }} />
                </View>
              </View>
              <View style={styles.trailerBottom}>
                <Text style={styles.trailerLabel}>العرض الدعائي الرسمي</Text>
                <Text style={styles.trailerSub}>انقر للمشاهدة</Text>
              </View>
            </Pressable>
          </View>
        ) : null}

        {/* ── 3. معلومات العمل (Placed Below Synopsis) ── */}
        <View style={[styles.sectionCard, { backgroundColor: colors.surface, borderColor: colors.border }]}>
          <View style={[styles.sectionHeaderRight, { marginBottom: 12 }]}>
            <View style={[styles.sectionBar, { backgroundColor: colors.homeAccent || "#0EA5E9" }]} />
            <Text style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}>
              معلومات العمل
            </Text>
          </View>

          <View style={styles.infoGrid}>
            {arabicTitle ? (
              <View style={[styles.infoItem, styles.infoItemWide]}>
                <Text style={[styles.infoLabel, { color: colors.textMuted }]}>الاسم العربي</Text>
                <Text style={[styles.infoValue, { color: colors.textPrimary }]} numberOfLines={2}>
                  {arabicTitle}
                </Text>
              </View>
            ) : null}
            {englishTitle ? (
              <View style={[styles.infoItem, styles.infoItemWide]}>
                <Text style={[styles.infoLabel, { color: colors.textMuted }]}>الاسم الإنجليزي</Text>
                <Text style={[styles.infoValue, { color: colors.textPrimary }]} numberOfLines={2}>
                  {englishTitle}
                </Text>
              </View>
            ) : null}
            <View style={styles.infoItem}>
              <Text style={[styles.infoLabel, { color: colors.textMuted }]}>التصنيف</Text>
              <Text style={[styles.infoValue, { color: colors.textPrimary }]}>
                {originLabel(currentSource, manga?.countryOfOrigin)}
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Text style={[styles.infoLabel, { color: colors.textMuted }]}>الحالة</Text>
              <Text style={[styles.infoValue, { color: colors.textPrimary }]}>
                {STATUS_AR[currentStatus] || "مستمرة"}
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Text style={[styles.infoLabel, { color: colors.textMuted }]}>عدد الفصول</Text>
              <Text style={[styles.infoValue, { color: colors.textPrimary }]}>
                {totalChaptersCount > 0 ? `${totalChaptersCount} فصل` : "غير محدد"}
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Text style={[styles.infoLabel, { color: colors.textMuted }]}>المؤلف / الرسام</Text>
              <Text style={[styles.infoValue, { color: colors.textPrimary }]} numberOfLines={1}>
                {manga?.author || manga?.artist || "غير محدد"}
              </Text>
            </View>
          </View>
        </View>
      </ScrollView>

      {/* ── Standalone Chapters Page Modal (تفتح لوحدها عند الضغط على "قراءة الفصول") ── */}
      <Modal
        visible={chaptersPageOpen}
        animationType="slide"
        presentationStyle="fullScreen"
        onRequestClose={() => setChaptersPageOpen(false)}
      >
        <View style={[styles.chaptersScreen, { backgroundColor: colors.background }]}>
          {/* Chapters Screen Top Header */}
          <View
            style={[
              styles.chaptersScreenHeader,
              {
                paddingTop: insets.top + 10,
                backgroundColor: colors.surface,
                borderBottomColor: colors.border,
              },
            ]}
          >
            <View style={styles.chaptersScreenHeaderRight}>
              <Pressable
                onPress={() => setChaptersPageOpen(false)}
                style={[styles.chaptersBackBtn, { borderColor: colors.border }]}
              >
                <Ionicons name="arrow-forward" size={20} color={colors.textPrimary} />
              </Pressable>

              <View style={styles.chaptersHeaderTitles}>
                <Text style={[styles.chaptersScreenTitle, { color: colors.textPrimary }]} numberOfLines={1}>
                  قائمة الفصول
                </Text>
                <Text style={[styles.chaptersScreenSubtitle, { color: colors.textMuted }]} numberOfLines={1}>
                  {primaryTitle}
                </Text>
              </View>
            </View>

            <View style={styles.chaptersCountBadge}>
              <Text style={styles.chaptersCountText}>{chaptersAsc.length} فصل</Text>
            </View>
          </View>

          {/* Quick Start Buttons + Search + Sort Controls */}
          <View style={styles.chaptersControlsWrap}>
            {firstChapter && (
              <View style={styles.quickReadRow}>
                <Pressable
                  onPress={() => openChapterInApp(firstChapter)}
                  style={[
                    styles.quickReadPrimary,
                    { backgroundColor: colors.homeAccent || "#0EA5E9" },
                  ]}
                >
                  <Ionicons name="play" size={16} color="#09090B" />
                  <Text style={styles.quickReadPrimaryText}>
                    ابدأ من الفصل الأول ({formatChapterNumber(firstChapter)})
                  </Text>
                </Pressable>

                {latestChapter && latestChapter.slug !== firstChapter.slug && (
                  <Pressable
                    onPress={() => openChapterInApp(latestChapter)}
                    style={[
                      styles.quickReadSecondary,
                      { backgroundColor: colors.surface, borderColor: colors.border },
                    ]}
                  >
                    <Ionicons name="flash-outline" size={15} color={colors.homeAccent} />
                    <Text style={[styles.quickReadSecondaryText, { color: colors.textPrimary }]}>
                      آخر فصل ({formatChapterNumber(latestChapter)})
                    </Text>
                  </Pressable>
                )}
              </View>
            )}

            <View style={styles.searchAndSortRow}>
              <View
                style={[
                  styles.chapterSearchBox,
                  { backgroundColor: colors.surface, borderColor: colors.border },
                ]}
              >
                <Ionicons name="search-outline" size={16} color={colors.textMuted} />
                <TextInput
                  value={chapterSearch}
                  onChangeText={setChapterSearch}
                  placeholder="ابحث عن رقم الفصل..."
                  placeholderTextColor={colors.textMuted}
                  style={[styles.chapterSearchInput, { color: colors.textPrimary }]}
                />
                {chapterSearch.length > 0 && (
                  <Pressable onPress={() => setChapterSearch("")}>
                    <Ionicons name="close-circle" size={16} color={colors.textMuted} />
                  </Pressable>
                )}
              </View>

              <Pressable
                onPress={() => setChaptersDesc((d) => !d)}
                style={[
                  styles.sortBtn,
                  { borderColor: colors.border, backgroundColor: colors.surface },
                ]}
              >
                <Ionicons name="swap-vertical" size={14} color={colors.textSecondary} />
                <Text style={[styles.sortBtnText, { color: colors.textSecondary }]}>
                  {chaptersDesc ? "الأحدث" : "الأقدم"}
                </Text>
              </Pressable>
            </View>
          </View>

          {/* Virtualized Chapters FlatList (Smooth 60fps for 1200+ chapters) */}
          {loading && chaptersAsc.length === 0 ? (
            <View style={styles.center}>
              <ActivityIndicator size="large" color={colors.homeAccent} />
              <Text style={[styles.loadingLabel, { color: colors.textSecondary }]}>
                جاري جلب قائمة الفصول...
              </Text>
            </View>
          ) : displayedChapters.length === 0 ? (
            <View style={styles.center}>
              <Ionicons name="book-outline" size={34} color={colors.textMuted} />
              <Text style={[styles.emptyBoxText, { color: colors.textSecondary }]}>
                لا توجد فصول مطابقة حالياً.
              </Text>
            </View>
          ) : (
            <FlatList
              data={displayedChapters}
              keyExtractor={(ch) => `${ch.id}-${ch.slug}`}
              contentContainerStyle={{
                paddingHorizontal: 16,
                paddingTop: 6,
                paddingBottom: insets.bottom + 32,
              }}
              showsVerticalScrollIndicator={false}
              initialNumToRender={14}
              maxToRenderPerBatch={14}
              windowSize={7}
              removeClippedSubviews={Platform.OS === "android"}
              renderItem={({ item: ch }) => {
                const numLabel = formatChapterNumber(ch);
                return (
                  <Pressable
                    onPress={() => openChapterInApp(ch)}
                    style={[
                      styles.chapterCard,
                      {
                        backgroundColor: colors.surface,
                        borderColor: colors.border,
                      },
                    ]}
                  >
                    <View style={styles.chapterRight}>
                      <View
                        style={[
                          styles.chapterIconWrap,
                          {
                            backgroundColor: "rgba(14,165,233,0.14)",
                            borderColor: "rgba(14,165,233,0.38)",
                          },
                        ]}
                      >
                        <Text style={styles.chapterNumBadgeText}>{numLabel}</Text>
                      </View>
                      <View style={styles.chapterTexts}>
                        <Text
                          style={[styles.chapterTitle, { color: colors.textPrimary }]}
                          numberOfLines={1}
                        >
                          {ch.title || `الفصل ${numLabel}`}
                        </Text>
                        <Text
                          style={[styles.chapterSub, { color: colors.textMuted }]}
                          numberOfLines={1}
                        >
                          مترجم بالعربية
                        </Text>
                      </View>
                    </View>

                    <View style={styles.chapterLeft}>
                      <Text style={[styles.chapterTranslatedLabel, { color: colors.homeAccent }]}>
                        قراءة
                      </Text>
                      <Ionicons name="chevron-back" size={16} color={colors.homeAccent} />
                    </View>
                  </Pressable>
                );
              }}
            />
          )}
        </View>
      </Modal>

      {/* ── Trailer Modal — in-app YouTube player ── */}
      <Modal
        visible={showTrailer}
        animationType="slide"
        onRequestClose={() => setShowTrailer(false)}
      >
        <View style={{ flex: 1, backgroundColor: "#000" }}>
          <View
            style={[
              styles.trailerSheetHeader,
              { paddingTop: insets.top + 8, backgroundColor: colors.surface },
            ]}
          >
            <Ionicons name="logo-youtube" size={20} color="#FF0000" />
            <Text style={[styles.trailerModalTitle, { color: colors.textPrimary, flex: 1 }]}>
              الإعلان الدعائي
            </Text>
            {trailerYT && (
              <Pressable
                onPress={() => Linking.openURL(`https://www.youtube.com/watch?v=${trailerYT}`)}
                style={styles.trailerCloseBtn}
              >
                <Ionicons name="open-outline" size={17} color="#fff" />
              </Pressable>
            )}
            <Pressable onPress={() => setShowTrailer(false)} style={styles.trailerCloseBtn}>
              <Ionicons name="close" size={19} color="#fff" />
            </Pressable>
          </View>
          {trailerYT ? (
            <WebView
              source={{
                uri: getYoutubeEmbedUrl(trailerYT),
                headers: { Referer: getYoutubeReferer() },
              }}
              style={{ flex: 1 }}
              allowsFullscreenVideo
              allowsInlineMediaPlayback
              mediaPlaybackRequiresUserAction={false}
              javaScriptEnabled
              domStorageEnabled
              originWhitelist={["*"]}
              mixedContentMode="always"
              thirdPartyCookiesEnabled
              userAgent="Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"
            />
          ) : null}
        </View>
      </Modal>

      {/* ── Quick Chapter Picker inside Reader ── */}
      <Modal
        visible={chapterPickerVisible}
        transparent
        animationType="fade"
        onRequestClose={() => setChapterPickerVisible(false)}
      >
        <View style={styles.modalBackdrop}>
          <View
            style={[
              styles.pickerModal,
              { backgroundColor: "#121217", borderColor: colors.border, maxHeight: height * 0.72 },
            ]}
          >
            <View style={[styles.pickerHeader, { borderBottomColor: colors.border }]}>
              <View style={styles.pickerHeaderRight}>
                <Ionicons name="list" size={18} color="#FBBF24" />
                <Text style={[styles.pickerHeaderTitle, { color: "#fff" }]}>اختر الفصل</Text>
              </View>
              <Pressable onPress={() => setChapterPickerVisible(false)} style={styles.modalCloseBtn}>
                <Ionicons name="close" size={20} color="#fff" />
              </Pressable>
            </View>

            <FlatList
              data={chaptersAsc}
              keyExtractor={(item) => `${item.id}-${item.slug}`}
              contentContainerStyle={{ padding: 12, gap: 8 }}
              initialNumToRender={16}
              maxToRenderPerBatch={16}
              windowSize={7}
              renderItem={({ item }) => {
                const isSelected = activeChapter?.slug === item.slug;
                const numLabel = formatChapterNumber(item);
                return (
                  <Pressable
                    onPress={() => {
                      setChapterPickerVisible(false);
                      openChapterInApp(item);
                    }}
                    style={[
                      styles.pickerItem,
                      {
                        backgroundColor: isSelected
                          ? "rgba(245,158,11,0.18)"
                          : "rgba(255,255,255,0.04)",
                        borderColor: isSelected ? "#F59E0B" : "rgba(255,255,255,0.08)",
                      },
                    ]}
                  >
                    <Text
                      style={[styles.pickerItemText, { color: isSelected ? "#FBBF24" : "#f4f4f5" }]}
                    >
                      {item.title || `الفصل ${numLabel}`}
                    </Text>
                    <Ionicons
                      name={isSelected ? "checkmark-circle" : "book-outline"}
                      size={17}
                      color={isSelected ? "#FBBF24" : "#9ca3af"}
                    />
                  </Pressable>
                );
              }}
            />
          </View>
        </View>
      </Modal>

      {/* ── Full-Screen Vertical Reader Modal ── */}
      <Modal
        visible={readerOpen}
        animationType="slide"
        presentationStyle="fullScreen"
        onRequestClose={() => setReaderOpen(false)}
      >
        <View style={[styles.readerScreen, { backgroundColor: "#050507" }]}>
          <View
            style={[
              styles.readerHeader,
              {
                paddingTop: insets.top + 8,
                borderBottomColor: "rgba(255,255,255,0.1)",
              },
            ]}
          >
            <View style={styles.readerHeaderRight}>
              <Pressable onPress={() => setReaderOpen(false)} style={styles.readerBackBtn}>
                <Ionicons name="arrow-forward" size={20} color="#fff" />
              </Pressable>

              <View style={styles.readerTitleCol}>
                <Text style={styles.readerHeaderTitle} numberOfLines={1}>
                  {activeChapter
                    ? activeChapter.title || `الفصل ${formatChapterNumber(activeChapter)}`
                    : primaryTitle}
                </Text>
                <Text style={styles.readerHeaderSub} numberOfLines={1}>
                  {primaryTitle} {chapterPages.length > 0 ? `• ${chapterPages.length} صفحة` : ""}
                </Text>
              </View>
            </View>

            <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 6 }}>
              <Pressable
                onPress={() => {
                  const nextZ = readerZoom === 100 ? 140 : readerZoom === 140 ? 180 : 100;
                  setReaderZoom(nextZ);
                  readerWebViewRef.current?.injectJavaScript(
                    `(function(){ var c = document.getElementById("reader-container"); if(c){ c.style.width = "${nextZ}%"; currentZoom = ${nextZ}; } })(); true;`
                  );
                }}
                style={styles.qualityPill}
              >
                <Ionicons name="search-outline" size={13} color="#FBBF24" />
                <Text style={styles.qualityPillText}>{readerZoom}%</Text>
              </Pressable>

              <Pressable onPress={() => setChapterPickerVisible(true)} style={styles.qualityPill}>
                <Ionicons name="list" size={13} color="#FBBF24" />
                <Text style={styles.qualityPillText}>الفصول</Text>
              </Pressable>
            </View>
          </View>

          {pagesLoading ? (
            <View style={styles.readerCenter}>
              <ActivityIndicator size="large" color="#F59E0B" />
              <Text style={styles.readerLoadingText}>جاري تحميل صفحات الفصل...</Text>
            </View>
          ) : pagesError ? (
            <View style={styles.readerCenter}>
              <View style={styles.readerFallbackBody}>
                <Ionicons name="alert-circle-outline" size={44} color="#F59E0B" />
                <Text style={styles.readerErrorTitle}>{pagesError}</Text>
                {activeChapter && (
                  <Pressable
                    onPress={() => void loadChapterPages(activeChapter)}
                    style={styles.pageRetryBtn}
                  >
                    <Ionicons name="refresh" size={16} color="#09090B" />
                    <Text style={styles.pageRetryBtnText}>إعادة المحاولة</Text>
                  </Pressable>
                )}
              </View>
            </View>
          ) : (
            <WebView
              ref={readerWebViewRef}
              key={`${activeChapter?.slug || "ch"}-${chapterPages.length}`}
              style={{ flex: 1, backgroundColor: "#050507" }}
              originWhitelist={["*"]}
              source={{
                html: buildWebtoonReaderHtml(
                  chapterPages,
                  activeChapter ? `الفصل ${formatChapterNumber(activeChapter)}` : "الفصل",
                  nextChapter ? formatChapterNumber(nextChapter) : null,
                  readerZoom
                ),
                baseUrl:
                  currentSource === "manhwa"
                    ? "https://azorafly.com/"
                    : "https://mangadar.com/",
              }}
              scalesPageToFit={true}
              setBuiltInZoomControls={true}
              setDisplayZoomControls={false}
              showsVerticalScrollIndicator={true}
              showsHorizontalScrollIndicator={false}
              bounces={false}
              javaScriptEnabled={true}
              domStorageEnabled={true}
              mixedContentMode="always"
              onMessage={(event) => {
                const msg = String(event?.nativeEvent?.data || "");
                if (msg === "NEXT_CHAPTER" && nextChapter) {
                  openChapterInApp(nextChapter);
                } else if (msg.startsWith("ZOOM:")) {
                  const z = parseInt(msg.slice(5), 10);
                  if (!Number.isNaN(z)) setReaderZoom(z);
                }
              }}
            />
          )}

          <View
            style={[
              styles.readerBottomBar,
              {
                paddingBottom: Math.max(insets.bottom, 12),
              },
            ]}
          >
            <Pressable
              disabled={!prevChapter}
              onPress={() => {
                if (prevChapter) openChapterInApp(prevChapter);
              }}
              style={[
                styles.readerNavBtn,
                styles.readerPrevBtn,
                { opacity: prevChapter ? 1 : 0.35 },
              ]}
            >
              <Ionicons name="chevron-forward" size={16} color="#fff" />
              <Text style={[styles.readerNavBtnText, { color: "#fff" }]}>
                {prevChapter ? `السابق (${formatChapterNumber(prevChapter)})` : "الفصل الأول"}
              </Text>
            </Pressable>

            <Pressable
              onPress={() => setChapterPickerVisible(true)}
              style={styles.readerChapterSelectBtn}
            >
              <Ionicons name="albums-outline" size={15} color="#FBBF24" />
              <Text style={styles.readerChapterSelectText}>
                {activeChapter ? `فصل ${formatChapterNumber(activeChapter)}` : "الفصول"}
              </Text>
            </Pressable>

            <Pressable
              disabled={!nextChapter}
              onPress={() => {
                if (nextChapter) openChapterInApp(nextChapter);
              }}
              style={[
                styles.readerNavBtn,
                styles.readerNextBtn,
                { opacity: nextChapter ? 1 : 0.35 },
              ]}
            >
              <Text style={[styles.readerNavBtnText, { color: "#09090B" }]}>
                {nextChapter ? `التالي (${formatChapterNumber(nextChapter)})` : "آخر فصل"}
              </Text>
              <Ionicons name="chevron-back" size={16} color="#09090B" />
            </Pressable>
          </View>
        </View>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12, padding: 24 },
  loadingLabel: { fontSize: 13, fontFamily: "Cairo_600SemiBold", marginTop: 6 },
  errorText: { fontSize: 15, fontFamily: "Cairo_600SemiBold", textAlign: "center" },
  errorActionsRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 10, marginTop: 4 },
  backButton: { borderWidth: 1, borderRadius: 12, paddingHorizontal: 18, paddingVertical: 9 },
  backButtonText: { fontSize: 13, fontFamily: "Cairo_700Bold" },
  heroWrap: { minHeight: 320, justifyContent: "space-between", paddingBottom: 18 },
  topBar: {
    paddingHorizontal: 16,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
  },
  iconBtn: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: "rgba(0,0,0,0.55)",
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.16)",
  },
  heroContent: {
    flexDirection: ROW_RTL,
    paddingHorizontal: 16,
    marginTop: 18,
    gap: 14,
    alignItems: "flex-end",
  },
  posterCard: {
    width: 118,
    height: 172,
    borderRadius: 14,
    overflow: "hidden",
    borderWidth: 1.5,
    backgroundColor: "#18181b",
  },
  heroMeta: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
    gap: 6,
  },
  typeBadge: {
    borderRadius: 999,
    paddingHorizontal: 10,
    paddingVertical: 3,
  },
  typeBadgeText: {
    color: "#09090B",
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  title: {
    fontSize: 19,
    lineHeight: 26,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    writingDirection: "rtl",
    width: "100%",
  },
  subTitle: {
    fontSize: 12.5,
    lineHeight: 18,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    width: "100%",
  },
  statsRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 8,
    marginTop: 4,
  },
  statPill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 4,
    backgroundColor: "rgba(255,255,255,0.09)",
    borderRadius: 999,
    paddingHorizontal: 9,
    paddingVertical: 4,
  },
  statText: {
    color: "#fff",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  /* Primary CTA Button: قراءة الفصول */
  ctaWrap: {
    paddingHorizontal: 16,
    marginTop: 8,
    marginBottom: 10,
  },
  chaptersCtaBtn: {
    width: "100%",
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingVertical: 13,
    paddingHorizontal: 15,
    borderRadius: 18,
    shadowColor: "#0EA5E9",
    shadowOpacity: 0.28,
    shadowRadius: 10,
    elevation: 5,
  },
  chaptersCtaRight: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 11,
    flex: 1,
  },
  chaptersCtaIcon: {
    width: 38,
    height: 38,
    borderRadius: 12,
    backgroundColor: "rgba(9,9,11,0.16)",
    alignItems: "center",
    justifyContent: "center",
  },
  chaptersCtaTextWrap: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  chaptersCtaTitle: {
    color: "#09090B",
    fontSize: 15,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  chaptersCtaSub: {
    color: "rgba(9,9,11,0.72)",
    fontSize: 10.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    marginTop: 1,
  },
  chaptersCtaPill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 4,
    backgroundColor: "rgba(9,9,11,0.14)",
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 999,
  },
  chaptersCtaPillText: {
    color: "#09090B",
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
  },
  genresWrap: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    paddingHorizontal: 16,
    gap: 8,
    marginTop: 4,
    marginBottom: 14,
  },
  genreChip: {
    borderWidth: 1,
    borderRadius: 999,
    paddingHorizontal: 11,
    paddingVertical: 5,
  },
  genreText: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
  },
  sectionCard: {
    marginHorizontal: 16,
    marginBottom: 14,
    borderRadius: 16,
    borderWidth: 1,
    padding: 15,
  },
  sectionHeaderRight: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  sectionBar: {
    width: 4,
    height: 18,
    borderRadius: 2,
  },
  sectionTitle: {
    fontSize: 15,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    writingDirection: "rtl",
    marginBottom: 10,
  },
  synopsisHeaderRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 10,
  },
  arTag: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 4,
    backgroundColor: "rgba(245,158,11,0.12)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.3)",
    borderRadius: 999,
    paddingHorizontal: 8,
    paddingVertical: 2,
  },
  arTagText: {
    color: "#FBBF24",
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  synopsisText: {
    fontSize: 13.5,
    lineHeight: 23,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    writingDirection: "rtl",
  },
  readMoreBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    marginTop: 12,
    paddingTop: 10,
    borderTopWidth: 1,
  },
  readMoreText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  /* Trailer Section */
  trailerSection: {
    marginHorizontal: 16,
    marginBottom: 14,
  },
  trailerBtn: {
    height: 182,
    borderRadius: 16,
    overflow: "hidden",
    position: "relative",
    backgroundColor: "#111",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.12)",
  },
  trailerImg: {
    width: "100%",
    height: "100%",
    resizeMode: "cover",
  },
  trailerPlayBtn: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    alignItems: "center",
    justifyContent: "center",
  },
  trailerPlay: {
    width: 56,
    height: 56,
    backgroundColor: "rgba(255,0,0,0.88)",
    borderRadius: 28,
    alignItems: "center",
    justifyContent: "center",
    shadowColor: "#FF0000",
    shadowOpacity: 0.5,
    shadowRadius: 12,
    elevation: 8,
  },
  trailerBottom: {
    position: "absolute",
    bottom: 0,
    left: 0,
    right: 0,
    padding: 12,
    alignItems: ALIGN_RIGHT,
  },
  trailerLabel: {
    fontSize: 14,
    fontFamily: "Cairo_800ExtraBold",
    color: "#fff",
    textAlign: "right",
  },
  trailerSub: {
    fontSize: 10.5,
    color: "rgba(255,255,255,0.68)",
    fontFamily: "Cairo_400Regular",
    marginTop: 2,
    textAlign: "right",
  },
  trailerSheetHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    paddingHorizontal: 14,
    paddingBottom: 10,
  },
  trailerModalTitle: {
    fontSize: 14,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  trailerCloseBtn: {
    width: 36,
    height: 36,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.1)",
    borderRadius: 12,
  },
  infoGrid: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    rowGap: 12,
  },
  infoItem: {
    width: "50%",
    alignItems: ALIGN_RIGHT,
    paddingLeft: 8,
  },
  infoItemWide: {
    width: "100%",
  },
  infoLabel: {
    fontSize: 11,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    width: "100%",
  },
  infoValue: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
    marginTop: 2,
    textAlign: "right",
    width: "100%",
  },
  /* Standalone Chapters Screen */
  chaptersScreen: {
    flex: 1,
  },
  chaptersScreenHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 16,
    paddingBottom: 12,
    borderBottomWidth: 1,
    gap: 10,
  },
  chaptersScreenHeaderRight: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  chaptersBackBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  chaptersHeaderTitles: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  chaptersScreenTitle: {
    fontSize: 15.5,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  chaptersScreenSubtitle: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    marginTop: 1,
  },
  chaptersCountBadge: {
    backgroundColor: "rgba(14,165,233,0.14)",
    borderWidth: 1,
    borderColor: "rgba(14,165,233,0.35)",
    borderRadius: 999,
    paddingHorizontal: 10,
    paddingVertical: 4,
  },
  chaptersCountText: {
    color: "#38BDF8",
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
  },
  chaptersControlsWrap: {
    paddingHorizontal: 16,
    paddingTop: 12,
    paddingBottom: 6,
    gap: 10,
  },
  quickReadRow: {
    flexDirection: ROW_RTL,
    gap: 10,
  },
  quickReadPrimary: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 7,
    paddingVertical: 11,
    paddingHorizontal: 14,
    borderRadius: 14,
  },
  quickReadPrimaryText: {
    color: "#09090B",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  quickReadSecondary: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    paddingVertical: 11,
    paddingHorizontal: 13,
    borderRadius: 14,
    borderWidth: 1,
  },
  quickReadSecondaryText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  searchAndSortRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  chapterSearchBox: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    borderRadius: 12,
    borderWidth: 1,
    paddingHorizontal: 12,
    height: 40,
    gap: 8,
  },
  chapterSearchInput: {
    flex: 1,
    fontSize: 12.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    paddingVertical: 0,
  },
  sortBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 12,
    height: 40,
    borderRadius: 12,
    borderWidth: 1,
  },
  sortBtnText: {
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
  },
  emptyBoxText: {
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
    lineHeight: 20,
  },
  chapterCard: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 12,
    paddingVertical: 11,
    borderRadius: 15,
    borderWidth: 1,
    marginBottom: 9,
    gap: 10,
  },
  chapterRight: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  chapterIconWrap: {
    minWidth: 38,
    height: 36,
    paddingHorizontal: 6,
    borderRadius: 11,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  chapterNumBadgeText: {
    color: "#38BDF8",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  chapterTexts: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  chapterTitle: {
    fontSize: 13.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  chapterSub: {
    fontSize: 10.5,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    marginTop: 1,
  },
  chapterLeft: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 4,
  },
  chapterTranslatedLabel: {
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
  },
  modalBackdrop: {
    flex: 1,
    backgroundColor: "rgba(0,0,0,0.75)",
    justifyContent: "center",
    padding: 18,
  },
  pickerModal: {
    borderRadius: 20,
    borderWidth: 1,
    overflow: "hidden",
  },
  pickerHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingVertical: 12,
    borderBottomWidth: 1,
  },
  pickerHeaderRight: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    flex: 1,
  },
  pickerHeaderTitle: {
    fontSize: 15,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    flex: 1,
  },
  modalCloseBtn: {
    width: 34,
    height: 34,
    borderRadius: 12,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.08)",
  },
  pickerItem: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 12,
    paddingVertical: 10,
    borderRadius: 12,
    borderWidth: 1,
    gap: 8,
  },
  pickerItemText: {
    fontSize: 12,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    flex: 1,
  },
  /* Full-Screen Reader Styles */
  readerScreen: {
    flex: 1,
  },
  readerHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    borderBottomWidth: 1,
    backgroundColor: "rgba(9, 9, 13, 0.96)",
    gap: 10,
  },
  readerHeaderRight: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  readerBackBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    backgroundColor: "rgba(255,255,255,0.1)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.16)",
    alignItems: "center",
    justifyContent: "center",
  },
  readerTitleCol: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  readerHeaderTitle: {
    color: "#ffffff",
    fontSize: 14,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  readerHeaderSub: {
    color: "#a1a1aa",
    fontSize: 10.5,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  qualityPill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 12,
    backgroundColor: "rgba(245,158,11,0.14)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.38)",
  },
  qualityPillText: {
    color: "#FBBF24",
    fontSize: 10.5,
    fontFamily: "Cairo_700Bold",
  },
  readerCenter: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    gap: 14,
    padding: 24,
  },
  readerLoadingText: {
    color: "#e4e4e7",
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
  },
  readerFallbackBody: {
    padding: 20,
    alignItems: "center",
    gap: 12,
  },
  readerErrorTitle: {
    color: "#f4f4f5",
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
    lineHeight: 21,
  },
  pageFrame: {
    backgroundColor: "#050507",
    alignItems: "center",
    justifyContent: "center",
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: "rgba(255,255,255,0.06)",
  },
  pageLoaderOverlay: {
    position: "absolute",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    zIndex: 2,
  },
  pageLoaderText: {
    color: "#a1a1aa",
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
  },
  pageErrorBox: {
    width: "100%",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    backgroundColor: "#0e0e12",
  },
  pageErrorText: {
    color: "#a1a1aa",
    fontSize: 12,
    fontFamily: "Cairo_600SemiBold",
  },
  pageRetryBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 14,
    paddingVertical: 7,
    borderRadius: 10,
    backgroundColor: "#F59E0B",
  },
  pageRetryBtnText: {
    color: "#09090B",
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
  },
  readerEndFooter: {
    paddingVertical: 32,
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
  },
  readerEndText: {
    color: "#FBBF24",
    fontSize: 14,
    fontFamily: "Cairo_700Bold",
  },
  readerBottomBar: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingTop: 10,
    borderTopWidth: 1,
    borderTopColor: "rgba(255,255,255,0.1)",
    backgroundColor: "rgba(9, 9, 13, 0.96)",
    gap: 10,
  },
  readerNavBtn: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    paddingVertical: 10,
    borderRadius: 12,
  },
  readerPrevBtn: {
    backgroundColor: "rgba(255,255,255,0.08)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.14)",
  },
  readerNextBtn: {
    backgroundColor: "#F59E0B",
  },
  readerNavBtnText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  readerChapterSelectBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 12,
    paddingVertical: 10,
    borderRadius: 12,
    backgroundColor: "rgba(245,158,11,0.12)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.35)",
  },
  readerChapterSelectText: {
    color: "#FBBF24",
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
  },
});

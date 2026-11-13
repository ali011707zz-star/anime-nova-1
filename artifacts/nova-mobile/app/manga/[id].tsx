import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import * as ScreenOrientation from "expo-screen-orientation";
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
import { getWatchContentId, useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";
import { translateMangaGenre } from "@/utils/mangaLocalization";
import { getYoutubeEmbedUrl, getYoutubeReferer } from "@/utils/youtube";
import { YoutubeTrailerModal } from "@/components/YoutubeTrailerModal";
import { TvPressable as Pressable } from "@/utils/tv";

const IS_RTL = I18nManager.isRTL;
const ROW_RTL = (IS_RTL ? "row" : "row-reverse") as "row" | "row-reverse";
const ROW_LTR = (IS_RTL ? "row-reverse" : "row") as "row" | "row-reverse";
const ALIGN_RIGHT = (IS_RTL ? "flex-start" : "flex-end") as "flex-start" | "flex-end";

const CHAPTERS_PER_PAGE = 50;

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

type MangaCharacterEdge = {
  role: "MAIN" | "SUPPORTING" | string;
  node: {
    id: number;
    name: {
      full: string;
      native?: string;
    };
    image?: {
      large?: string;
    };
  };
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
  characters?: MangaCharacterEdge[];
  chaptersCount: number;
  chapters: MangaChapter[];
};

type MangaPageData = {
  url: string;
  width?: number;
  height?: number;
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

function formatChapterNumber(ch: MangaChapter): string {
  if (ch.numberStr) return String(ch.numberStr);
  return String(ch.number ?? "");
}

function buildWebtoonReaderHtml(
  pages: MangaPageData[],
  chapterLabel: string,
  nextChapterLabel: string | null,
  apiBase: string = getBaseUrl()
): string {
  const pagesJson = JSON.stringify(pages.map((p) => p.url));
  const safeChapterLabel = String(chapterLabel || "الفصل")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;");
  const safeNextLabel = nextChapterLabel
    ? String(nextChapterLabel).replace(/</g, "&lt;").replace(/>/g, "&gt;")
    : "";

  return `<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      -webkit-tap-highlight-color: transparent;
      user-select: none;
      -webkit-user-select: none;
      touch-action: pan-y;
    }
    html, body {
      width: 100%;
      max-width: 100%;
      min-height: 100%;
      background-color: #050507;
      color: #f4f4f5;
      font-family: system-ui, -apple-system, sans-serif;
      overflow-x: hidden;
      overflow-y: auto;
      -webkit-overflow-scrolling: touch;
    }
    #reader-container {
      width: 100%;
      max-width: 100%;
      margin: 0 auto;
      display: flex;
      flex-direction: column;
      align-items: stretch;
      background-color: #050507;
      overflow-x: hidden;
    }
    .page-slot {
      width: 100%;
      max-width: 100%;
      position: relative;
      background-color: #09090d;
      line-height: 0;
      font-size: 0;
      margin: 0;
      padding: 0;
      overflow: hidden;
    }
    .page-slot.loading {
      min-height: 300px;
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

    function goNextChapter() {
      if (window.ReactNativeWebView && window.ReactNativeWebView.postMessage) {
        window.ReactNativeWebView.postMessage("NEXT_CHAPTER");
      }
    }

    pages.forEach((rawUrl, index) => {
      const url = String(rawUrl || "").replace("://tempsolo.mangalik.net/", "://leksolo.mangalik.net/");
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
      if (url.indexOf("mangatek.com") !== -1) {
        img.referrerPolicy = "no-referrer";
      }
      img.style.display = "none";

      let retries = 0;
      function loadImg(cacheBust, useProxy) {
        const base = useProxy && url.indexOf("/api/manga/image-proxy") === -1 && url.indexOf("/api/manga/img-proxy") === -1
          ? "${apiBase}/api/manga/image-proxy?url=" + encodeURIComponent(url)
          : url;
        img.src = cacheBust
          ? base + (base.indexOf("?") !== -1 ? "&" : "?") + "retry=" + cacheBust
          : base;
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
          setTimeout(() => loadImg(retries + "_" + Date.now(), retries >= 1), 350 * retries);
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

function buildTextReaderHtml(
  contentHtml: string,
  chapterLabel: string,
  nextChapterLabel: string | null
): string {
  const safeChapterLabel = String(chapterLabel || "الفصل")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;");
  const safeNextLabel = nextChapterLabel
    ? String(nextChapterLabel).replace(/</g, "&lt;").replace(/>/g, "&gt;")
    : "";

  return `<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      -webkit-tap-highlight-color: transparent;
    }
    html, body {
      width: 100%;
      min-height: 100%;
      background-color: #050507;
      color: #e4e4e7;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Cairo", sans-serif;
      overflow-x: hidden;
      overflow-y: auto;
      -webkit-overflow-scrolling: touch;
      padding: 24px 18px 80px 18px;
    }
    .novel-header {
      text-align: center;
      padding: 16px 0 20px 0;
      border-bottom: 1px solid rgba(255,255,255,0.1);
      margin-bottom: 24px;
    }
    .novel-title {
      font-size: 20px;
      font-weight: 700;
      color: #FBBF24;
      line-height: 1.4;
    }
    .novel-body {
      font-size: 18px;
      line-height: 2.2;
      color: #e4e4e7;
      letter-spacing: 0.2px;
      word-break: break-word;
    }
    .novel-body p {
      margin-bottom: 20px;
      text-indent: 14px;
    }
    .novel-body img {
      max-width: 100%;
      height: auto;
      border-radius: 8px;
      margin: 16px 0;
      display: block;
    }
    .next-btn-wrap {
      margin-top: 40px;
      padding-top: 24px;
      border-top: 1px solid rgba(255,255,255,0.1);
      text-align: center;
    }
    .next-btn {
      display: inline-block;
      background: #F59E0B;
      color: #09090B;
      font-weight: 700;
      font-size: 15px;
      padding: 12px 28px;
      border-radius: 12px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="novel-header">
    <div class="novel-title">${safeChapterLabel}</div>
  </div>
  <div class="novel-body">
    ${contentHtml}
  </div>
  ${safeNextLabel ? `
  <div class="next-btn-wrap">
    <div class="next-btn" onclick="window.ReactNativeWebView && window.ReactNativeWebView.postMessage('NEXT_CHAPTER')">
      الانتقال إلى فصل ${safeNextLabel} ←
    </div>
  </div>` : ''}
</body>
</html>`;
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
  const { width } = useWindowDimensions();
  const { isFavorite, toggleFavorite } = useApp();

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

  // Favorite characters state (shared with قائمتي -> الشخصيات)
  const [favCharIds, setFavCharIds] = useState<Set<number>>(new Set());

  // Dedicated standalone Chapters Screen state (with 50-chapters-per-page pagination)
  const [chaptersPageOpen, setChaptersPageOpen] = useState(false);
  const [chaptersDesc, setChaptersDesc] = useState(true);
  const [chapterSearch, setChapterSearch] = useState("");
  const [chapterPage, setChapterPage] = useState(0);
  const [chapterPickerVisible, setChapterPickerVisible] = useState(false);
  const [pickerPage, setPickerPage] = useState(0);

  // Full-screen Reader state (fixed 100% screen width, no zoom)
  const [readerOpen, setReaderOpen] = useState(false);
  const [activeChapter, setActiveChapter] = useState<MangaChapter | null>(null);
  const [chapterPages, setChapterPages] = useState<MangaPageData[]>([]);
  const [chapterContentType, setChapterContentType] = useState<"images" | "text">("images");
  const [chapterTextHtml, setChapterTextHtml] = useState<string>("");
  const [pagesLoading, setPagesLoading] = useState(false);
  const [pagesError, setPagesError] = useState<string | null>(null);

  const readerWebViewRef = useRef<WebView>(null);
  const chaptersFlatListRef = useRef<FlatList<MangaChapter>>(null);

  // Lock Trailer Modal to Horizontal / Landscape orientation automatically
  useEffect(() => {
    if (Platform.OS === "web") return;
    if (showTrailer) {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT).catch(
        () => {}
      );
    } else {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    }
    return () => {
      if (showTrailer) {
        ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(
          () => {}
        );
      }
    };
  }, [showTrailer]);

  // Load saved favorite characters
  useEffect(() => {
    AsyncStorage.getItem("fav-characters")
      .then((raw) => {
        if (!raw) return;
        try {
          const arr = JSON.parse(raw) as Array<{ id: number }>;
          setFavCharIds(new Set(arr.map((c) => Number(c.id))));
        } catch {}
      })
      .catch(() => {});
  }, []);

  const toggleCharacterFavorite = useCallback(
    async (char: {
      id: number;
      name: string;
      image?: string;
      animeId: number;
      animeTitle: string;
    }) => {
      let arr: any[] = [];
      try {
        const raw = await AsyncStorage.getItem("fav-characters");
        const parsed = raw ? JSON.parse(raw) : [];
        arr = Array.isArray(parsed) ? parsed : [];
      } catch {
        arr = [];
      }
      const exists = arr.some((c) => Number(c?.id) === Number(char.id));
      const updated = exists
        ? arr.filter((c) => Number(c?.id) !== Number(char.id))
        : [char, ...arr];
      setFavCharIds(new Set(updated.map((c) => Number(c.id))));
      try {
        await AsyncStorage.setItem("fav-characters", JSON.stringify(updated));
      } catch {}
    },
    []
  );

  const mangaRef = useRef<MangaDetailData | null>(null);
  mangaRef.current = manga;

  // Hardware back button handling for reader and chapters screens
  useEffect(() => {
    if (Platform.OS !== "android") return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      if (chapterPickerVisible) {
        setChapterPickerVisible(false);
        return true;
      }
      if (readerOpen) {
        setReaderOpen(false);
        return true;
      }
      if (chaptersPageOpen) {
        setChaptersPageOpen(false);
        return true;
      }
      return false;
    });
    return () => sub.remove();
  }, [chapterPickerVisible, readerOpen, chaptersPageOpen]);

  const fetchDetail = useCallback(async () => {
    if (!decodedId) {
      setError(true);
      setLoading(false);
      return;
    }
    const cacheKey = `manga_cache_${decodedId}`;
    try {
      const cached = await AsyncStorage.getItem(cacheKey);
      if (cached) {
        const parsed = JSON.parse(cached);
        if (parsed && (parsed.title || parsed.arabicTitle)) {
          setManga(parsed);
          setLoading(false);
        }
      }
    } catch {}

    setError(false);
    try {
      const res = await fetch(
        `${getBaseUrl()}/api/manga/detail?id=${encodeURIComponent(decodedId)}`
      );
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const data: MangaDetailData = await res.json();
      setManga(data);
      try {
        await AsyncStorage.setItem(cacheKey, JSON.stringify(data));
      } catch {}
    } catch {
      if (!mangaRef.current) setError(true);
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
      setChapterTextHtml("");
      setChapterContentType("images");
      try {
        const qs = new URLSearchParams({
          id: targetId,
          chapter: chapter.slug,
          source: targetSource,
        });
        const res = await fetch(`${getBaseUrl()}/api/manga/chapter?${qs.toString()}`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const data = await res.json();

        if (data?.isLocked) {
          setPagesError(data.message || "هذا الفصل مدفوع أو مقفل بالعملات على المصدر الأصلي حالياً.");
          return;
        }

        if (data?.contentType === "text" || (data?.contentHtml && !data?.pages?.length)) {
          setChapterContentType("text");
          setChapterTextHtml(String(data.contentHtml || data.previewText || ""));
          return;
        }

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
          if (data?.contentHtml || data?.previewText) {
            setChapterContentType("text");
            setChapterTextHtml(String(data.contentHtml || data.previewText || ""));
          } else {
            setPagesError("لا تتوفر صفحات لهذا الفصل حالياً.");
          }
        } else {
          setChapterPages(pages);
        }
      } catch {
        setPagesError("تعذر تحميل صفحات الفصل. يرجى المحاولة مرة أخرى.");
      } finally {
        setPagesLoading(false);
      }
    },
    [decodedId, inferredSource, manga?.id, manga?.source]
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

  // Reset pagination page when search or sort changes
  useEffect(() => {
    setChapterPage(0);
  }, [chapterSearch, chaptersDesc]);

  const totalChapterPages = Math.max(
    1,
    Math.ceil(displayedChapters.length / CHAPTERS_PER_PAGE)
  );
  const safeChapterPage = Math.min(chapterPage, totalChapterPages - 1);

  const pagedChapters = useMemo(() => {
    const start = safeChapterPage * CHAPTERS_PER_PAGE;
    return displayedChapters.slice(start, start + CHAPTERS_PER_PAGE);
  }, [displayedChapters, safeChapterPage]);

  const chapterPageRanges = useMemo(() => {
    const ranges: { index: number; label: string }[] = [];
    for (let i = 0; i < totalChapterPages; i++) {
      const slice = displayedChapters.slice(
        i * CHAPTERS_PER_PAGE,
        (i + 1) * CHAPTERS_PER_PAGE
      );
      if (slice.length > 0) {
        const firstNum = formatChapterNumber(slice[0]);
        const lastNum = formatChapterNumber(slice[slice.length - 1]);
        ranges.push({
          index: i,
          label: firstNum === lastNum ? `${firstNum}` : `${firstNum} - ${lastNum}`,
        });
      }
    }
    return ranges;
  }, [displayedChapters, totalChapterPages]);

  // Picker modal 50-chapter pagination
  const totalPickerPages = Math.max(1, Math.ceil(chaptersAsc.length / CHAPTERS_PER_PAGE));
  const safePickerPage = Math.min(pickerPage, totalPickerPages - 1);
  const pagedPickerChapters = useMemo(() => {
    const reversed = [...chaptersAsc].reverse();
    const start = safePickerPage * CHAPTERS_PER_PAGE;
    return reversed.slice(start, start + CHAPTERS_PER_PAGE);
  }, [chaptersAsc, safePickerPage]);

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

  // Favorite support for Manga / Manhwa
  const targetMangaId = manga?.id || decodedId;
  const favNumericId = useMemo(
    () => getWatchContentId("dubbed", targetMangaId || "manga"),
    [targetMangaId]
  );
  const isFav = isFavorite(favNumericId);

  const handleToggleFavorite = useCallback(() => {
    if (!targetMangaId) return;
    void toggleFavorite({
      id: favNumericId,
      mangaId: targetMangaId,
      source: currentSource,
      title: arabicTitle || primaryTitle,
      english: englishTitle || primaryTitle,
      thumbnail: cover,
      episodes: totalChaptersCount || null,
      score: typeof rawScore === "number" ? rawScore : 85,
      addedAt: Date.now(),
      startYear: manga?.year || new Date().getFullYear(),
      genres: manga?.genres || [],
    });
  }, [
    targetMangaId,
    favNumericId,
    currentSource,
    arabicTitle,
    primaryTitle,
    englishTitle,
    cover,
    totalChaptersCount,
    rawScore,
    manga?.year,
    manga?.genres,
    toggleFavorite,
  ]);

  // Characters list
  const characters = useMemo(() => {
    const raw = Array.isArray(manga?.characters) ? manga.characters : [];
    return raw.filter((c) => c?.node?.id && c?.node?.name?.full);
  }, [manga?.characters]);

  const charCardWidth = Math.floor((width - 32 - 20) / 3);

  if (error && !manga && !params.title) {
    return (
      <View style={[styles.center, { backgroundColor: colors.background }]}>
        <Ionicons name="alert-circle-outline" size={44} color={colors.textMuted} />
        <Text style={[styles.errorText, { color: colors.textSecondary }]}>
          تعذر تحميل تفاصيل العمل
        </Text>
        <View style={styles.errorActionsRow}>
          <Pressable
            onPress={() => void fetchDetail()}
            style={[
              styles.backButton,
              { borderColor: colors.homeAccent, backgroundColor: "rgba(245,158,11,0.12)" },
            ]}
          >
            <Text style={[styles.backButtonText, { color: colors.homeAccent }]}>
              إعادة المحاولة
            </Text>
          </Pressable>
          <Pressable
            onPress={() => router.back()}
            style={[styles.backButton, { borderColor: colors.border }]}
          >
            <Text style={[styles.backButtonText, { color: colors.textPrimary }]}>العودة</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      {/* Status bar protective scrim so scrolling text never overlaps top system icons */}
      <View
        pointerEvents="none"
        style={{
          position: "absolute",
          top: 0,
          left: 0,
          right: 0,
          height: insets.top + 6,
          backgroundColor: "rgba(9,9,11,0.75)",
          zIndex: 20,
        }}
      />

      <ScrollView
        contentContainerStyle={{ paddingBottom: insets.bottom + 48 }}
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
            colors={["rgba(9,9,11,0.3)", "rgba(9,9,11,0.86)", colors.background]}
            style={StyleSheet.absoluteFill}
          />

          {/* Top Bar: Back button on Right + Favorite button on Left */}
          <View style={[styles.topBar, { paddingTop: insets.top + 10 }]}>
            <Pressable onPress={() => router.back()} style={styles.iconBtn}>
              <Ionicons name="arrow-forward" size={21} color="#fff" />
            </Pressable>

            <Pressable
              onPress={handleToggleFavorite}
              style={[
                styles.favTopBtn,
                isFav && {
                  backgroundColor: "rgba(239, 68, 68, 0.22)",
                  borderColor: "rgba(239, 68, 68, 0.55)",
                },
              ]}
            >
              <Ionicons
                name={isFav ? "heart" : "heart-outline"}
                size={18}
                color={isFav ? "#EF4444" : "#fff"}
              />
              <Text style={[styles.favTopBtnText, isFav && { color: "#FCA5A5" }]}>
                {isFav ? "في المفضلة" : "أضف للمفضلة"}
              </Text>
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
                  {loading && chaptersAsc.length === 0
                    ? "جاري تجهيز قائمة الفصول..."
                    : totalChaptersCount > 0
                    ? `تصفح جميع الفصول المتوفرة (${totalChaptersCount} فصل)`
                    : "لم تصدر فصول بعد (قيد الترجمة والرفع)"}
                </Text>
              </View>
            </View>

            <View style={styles.chaptersCtaPill}>
              <Text style={styles.chaptersCtaPillText}>
                {totalChaptersCount > 0 ? `${totalChaptersCount} فصل` : "الفصول"}
              </Text>
              <Ionicons name="chevron-back" size={15} color="#09090B" />
            </View>
          </Pressable>
        </View>

        {/* ── Genres ── */}
        {manga?.genres && manga.genres.length > 0 && (
          <View style={styles.genresWrap}>
            {manga.genres.map((g, idx) => (
              <View
                key={`${g}-${idx}`}
                style={[
                  styles.genreChip,
                  { backgroundColor: colors.surface, borderColor: colors.border },
                ]}
              >
                <Text style={[styles.genreText, { color: colors.textSecondary }]}>
                  {translateMangaGenre(g)}
                </Text>
              </View>
            ))}
          </View>
        )}

        {/* ── 1. Synopsis Card (القصة — بالاعلى قبل معلومات العمل) ── */}
        <View
          style={[
            styles.sectionCard,
            { backgroundColor: colors.surface, borderColor: colors.border },
          ]}
        >
          <View style={styles.synopsisHeaderRow}>
            <View style={styles.sectionHeaderRight}>
              <View
                style={[styles.sectionBar, { backgroundColor: colors.homeAccent || "#0EA5E9" }]}
              />
              <Text
                style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}
              >
                القصة
              </Text>
            </View>

            <View style={styles.arTag}>
              <Ionicons name="language-outline" size={11} color="#FBBF24" />
              <Text style={styles.arTagText}>مترجمة بالعربية</Text>
            </View>
          </View>

          {loading && !arabicSynopsis ? (
            <View style={{ paddingVertical: 14, alignItems: "center" }}>
              <ActivityIndicator size="small" color={colors.homeAccent} />
            </View>
          ) : (
            <>
              <Text
                style={[styles.synopsisText, { color: colors.textSecondary }]}
                numberOfLines={showFullSynopsis ? undefined : 4}
              >
                {arabicSynopsis || "لا يتوفر ملخص عربي لهذا العمل حالياً."}
              </Text>

              {arabicSynopsis.length > 160 && (
                <Pressable
                  onPress={() => setShowFullSynopsis((v) => !v)}
                  style={[styles.readMoreBtn, { borderTopColor: colors.border }]}
                >
                  <Text style={[styles.readMoreText, { color: colors.textSecondary }]}>
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

        {/* ── 2. YouTube Trailer (الإعلان الدعائي — افقي وكامل دائماً) ── */}
        {trailerYT ? (
          <View style={styles.trailerSection}>
            <View style={[styles.sectionHeaderRight, { marginBottom: 10 }]}>
              <View style={[styles.sectionBar, { backgroundColor: "#EF4444" }]} />
              <Text
                style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}
              >
                الإعلان الدعائي
              </Text>
            </View>

            <Pressable onPress={() => setShowTrailer(true)} style={styles.trailerBtn}>
              <Image source={{ uri: trailerThumb }} style={styles.trailerImg} />
              <LinearGradient
                colors={["rgba(0,0,0,0.1)", "rgba(0,0,0,0.82)"]}
                style={StyleSheet.absoluteFill}
              />
              <View style={styles.trailerPlayBtn}>
                <View style={styles.trailerPlay}>
                  <Ionicons name="play" size={22} color="#fff" style={{ marginLeft: 3 }} />
                </View>
              </View>
              <View style={styles.trailerBottom}>
                <Text style={styles.trailerLabel}>العرض الدعائي الرسمي</Text>
                <Text style={styles.trailerSub}>انقر للمشاهدة بالوضع الأفقي الكامل</Text>
              </View>
            </Pressable>
          </View>
        ) : null}

        {/* ── 3. Info Grid (معلومات العمل — بدون أي اسم موقع) ── */}
        <View
          style={[
            styles.sectionCard,
            { backgroundColor: colors.surface, borderColor: colors.border },
          ]}
        >
          <View style={[styles.sectionHeaderRight, { marginBottom: 12 }]}>
            <View
              style={[styles.sectionBar, { backgroundColor: colors.homeAccent || "#0EA5E9" }]}
            />
            <Text style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}>
              معلومات العمل
            </Text>
          </View>

          <View style={styles.infoGrid}>
            {arabicTitle ? (
              <View style={[styles.infoItem, styles.infoItemWide]}>
                <Text style={[styles.infoLabel, { color: colors.textMuted }]}>الاسم العربي</Text>
                <Text
                  style={[styles.infoValue, { color: colors.textPrimary }]}
                  numberOfLines={2}
                >
                  {arabicTitle}
                </Text>
              </View>
            ) : null}

            {englishTitle ? (
              <View style={[styles.infoItem, styles.infoItemWide]}>
                <Text style={[styles.infoLabel, { color: colors.textMuted }]}>
                  الاسم الإنجليزي
                </Text>
                <Text
                  style={[styles.infoValue, { color: colors.textPrimary }]}
                  numberOfLines={2}
                >
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
              <Text
                style={[styles.infoValue, { color: colors.textPrimary }]}
                numberOfLines={1}
              >
                {manga?.author || manga?.artist || "غير محدد"}
              </Text>
            </View>
          </View>
        </View>

        {/* ── 4. Characters Section (شخصيات العمل — تحت صفحة التفاصيل) ── */}
        <View
          style={[
            styles.sectionCard,
            { backgroundColor: colors.surface, borderColor: colors.border },
          ]}
        >
          <View style={[styles.synopsisHeaderRow, { marginBottom: 12 }]}>
            <View style={styles.sectionHeaderRight}>
              <View
                style={[styles.sectionBar, { backgroundColor: colors.homeAccent || "#0EA5E9" }]}
              />
              <Text
                style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}
              >
                شخصيات العمل
              </Text>
            </View>

            {characters.length > 0 && (
              <View style={styles.arTag}>
                <Ionicons name="people-outline" size={11} color="#FBBF24" />
                <Text style={styles.arTagText}>{characters.length} شخصية</Text>
              </View>
            )}
          </View>

          {loading && characters.length === 0 ? (
            <View style={{ paddingVertical: 18, alignItems: "center" }}>
              <ActivityIndicator size="small" color={colors.homeAccent} />
            </View>
          ) : characters.length === 0 ? (
            <Text style={[styles.emptyBoxText, { color: colors.textMuted, paddingVertical: 10 }]}>
              لا تتوفر بيانات إضافية للشخصيات حالياً
            </Text>
          ) : (
            <View style={styles.charGrid}>
              {characters.map((edge) => {
                const node = edge.node;
                const isCharFav = favCharIds.has(Number(node.id));
                const charImg = node.image?.large || cover;
                const isMain = String(edge.role || "").toUpperCase() === "MAIN";
                return (
                  <View
                    key={String(node.id)}
                    style={[styles.charCard, { width: charCardWidth }]}
                  >
                    <View
                      style={[
                        styles.charImgWrap,
                        { width: charCardWidth, height: Math.round(charCardWidth * 1.32) },
                        isMain && { borderColor: colors.homeAccent || "#0EA5E9", borderWidth: 1.5 },
                      ]}
                    >
                      {charImg ? (
                        <Image
                          source={{ uri: charImg }}
                          style={StyleSheet.absoluteFill}
                          resizeMode="cover"
                        />
                      ) : (
                        <View style={styles.center}>
                          <Ionicons name="person-outline" size={24} color={colors.textMuted} />
                        </View>
                      )}

                      <LinearGradient
                        colors={["transparent", "rgba(0,0,0,0.75)"]}
                        style={StyleSheet.absoluteFill}
                      />

                      <View
                        style={[
                          styles.charRoleBadge,
                          {
                            backgroundColor: isMain
                              ? "rgba(14, 165, 233, 0.88)"
                              : "rgba(24, 24, 27, 0.82)",
                          },
                        ]}
                      >
                        <Text style={styles.charRoleText}>{isMain ? "رئيسي" : "مساعد"}</Text>
                      </View>

                      <Pressable
                        onPress={() =>
                          void toggleCharacterFavorite({
                            id: Number(node.id),
                            name: node.name?.full || "",
                            image: charImg,
                            animeId: favNumericId,
                            animeTitle: primaryTitle,
                          })
                        }
                        style={[
                          styles.charHeartBtn,
                          isCharFav && { backgroundColor: "#EF4444" },
                        ]}
                        hitSlop={6}
                      >
                        <Ionicons
                          name={isCharFav ? "heart" : "heart-outline"}
                          size={12}
                          color="#fff"
                        />
                      </Pressable>
                    </View>

                    <Text
                      style={[
                        styles.charName,
                        { color: colors.textPrimary, width: charCardWidth },
                      ]}
                      numberOfLines={2}
                    >
                      {node.name?.full}
                    </Text>
                  </View>
                );
              })}
            </View>
          )}
        </View>
      </ScrollView>

      {/* ── Standalone Chapters Page Modal (حد أقصى 50 فصل لكل صفحة مع أزرار التنقل) ── */}
      <Modal
        visible={chaptersPageOpen}
        animationType="slide"
        presentationStyle="fullScreen"
        onRequestClose={() => setChaptersPageOpen(false)}
      >
        <View style={[styles.chaptersScreen, { backgroundColor: colors.background }]}>
          {/* Top Bar */}
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
                style={[
                  styles.chaptersBackBtn,
                  { backgroundColor: colors.background, borderColor: colors.border },
                ]}
              >
                <Ionicons name="arrow-forward" size={20} color={colors.textPrimary} />
              </Pressable>

              <View style={styles.chaptersHeaderTexts}>
                <Text
                  style={[styles.chaptersScreenTitle, { color: colors.textPrimary }]}
                  numberOfLines={1}
                >
                  فصول {primaryTitle}
                </Text>
                <Text
                  style={[styles.chaptersScreenSub, { color: colors.textMuted }]}
                  numberOfLines={1}
                >
                  {chaptersAsc.length > 0
                    ? `إجمالي ${chaptersAsc.length} فصل • يعرض ${pagedChapters.length} فصل في هذه الصفحة`
                    : "قائمة الفصول"}
                </Text>
              </View>
            </View>

            <Pressable
              onPress={() => setChaptersDesc((v) => !v)}
              style={[
                styles.sortBtn,
                { backgroundColor: colors.background, borderColor: colors.border },
              ]}
            >
              <Ionicons name="swap-vertical" size={14} color={colors.homeAccent} />
              <Text style={[styles.sortBtnText, { color: colors.textPrimary }]}>
                {chaptersDesc ? "الأحدث أولاً" : "الأقدم أولاً"}
              </Text>
            </Pressable>
          </View>

          {/* Quick Start / Latest Buttons + Search Input */}
          <View
            style={[
              styles.chaptersToolbar,
              { backgroundColor: colors.surface, borderBottomColor: colors.border },
            ]}
          >
            {chaptersAsc.length > 0 && (
              <View style={styles.quickReadRow}>
                {firstChapter && (
                  <Pressable
                    onPress={() => openChapterInApp(firstChapter)}
                    style={[
                      styles.quickReadBtn,
                      { backgroundColor: colors.homeAccent || "#0EA5E9" },
                    ]}
                  >
                    <Ionicons name="play" size={15} color="#09090B" />
                    <Text style={styles.quickReadPrimaryText}>
                      ابدأ من الفصل ({formatChapterNumber(firstChapter)})
                    </Text>
                  </Pressable>
                )}

                {latestChapter && latestChapter.slug !== firstChapter?.slug && (
                  <Pressable
                    onPress={() => openChapterInApp(latestChapter)}
                    style={[
                      styles.quickReadSecondaryBtn,
                      { backgroundColor: colors.background, borderColor: colors.border },
                    ]}
                  >
                    <Ionicons name="flash-outline" size={15} color={colors.homeAccent} />
                    <Text
                      style={[styles.quickReadSecondaryText, { color: colors.textPrimary }]}
                    >
                      آخر فصل ({formatChapterNumber(latestChapter)})
                    </Text>
                  </Pressable>
                )}
              </View>
            )}

            {chaptersAsc.length > 5 && (
              <View
                style={[
                  styles.searchBox,
                  { backgroundColor: colors.background, borderColor: colors.border },
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
            )}

            {/* 50-Chapters Pagination Range Bar */}
            {totalChapterPages > 1 && (
              <View style={styles.paginationWrap}>
                <ScrollView
                  horizontal
                  showsHorizontalScrollIndicator={false}
                  contentContainerStyle={styles.paginationScroll}
                >
                  {chapterPageRanges.map((r) => {
                    const active = r.index === safeChapterPage;
                    return (
                      <Pressable
                        key={`range-${r.index}`}
                        onPress={() => {
                          setChapterPage(r.index);
                          chaptersFlatListRef.current?.scrollToOffset({
                            offset: 0,
                            animated: true,
                          });
                        }}
                        style={[
                          styles.pageRangePill,
                          {
                            backgroundColor: active
                              ? colors.homeAccent || "#0EA5E9"
                              : colors.background,
                            borderColor: active
                              ? colors.homeAccent || "#0EA5E9"
                              : colors.border,
                          },
                        ]}
                      >
                        <Text
                          style={[
                            styles.pageRangePillText,
                            { color: active ? "#09090B" : colors.textSecondary },
                          ]}
                        >
                          فصل {r.label}
                        </Text>
                      </Pressable>
                    );
                  })}
                </ScrollView>
              </View>
            )}
          </View>

          {/* Virtualized FlatList of at most 50 Chapters per page */}
          {loading && chaptersAsc.length === 0 ? (
            <View style={styles.center}>
              <ActivityIndicator size="large" color={colors.homeAccent} />
              <Text style={[styles.loadingLabel, { color: colors.textSecondary }]}>
                جاري تحميل الفصول...
              </Text>
            </View>
          ) : (
            <FlatList
              ref={chaptersFlatListRef}
              removeClippedSubviews={false}
              data={pagedChapters}
              keyExtractor={(ch, idx) => `${ch.id || ch.slug}-${idx}`}
              contentContainerStyle={{
                paddingHorizontal: 16,
                paddingTop: 12,
                paddingBottom: insets.bottom + 36,
              }}
              showsVerticalScrollIndicator={false}
              initialNumToRender={16}
              maxToRenderPerBatch={16}
              windowSize={7}
              ListEmptyComponent={
                <View style={{ paddingVertical: 48, alignItems: "center", gap: 10, paddingHorizontal: 24 }}>
                  <Ionicons
                    name={chapterSearch.trim() ? "search-outline" : "hourglass-outline"}
                    size={42}
                    color={colors.textMuted}
                  />
                  <Text style={[styles.emptyBoxText, { color: colors.textPrimary, textAlign: "center", fontSize: 14, fontFamily: "Cairo_700Bold" }]}>
                    {chapterSearch.trim()
                      ? "لا توجد فصول مطابقة للبحث."
                      : "لم تصدر فصول لهذا العمل بعد، أو قيد الترجمة والرفع من المصدر."}
                  </Text>
                  {!chapterSearch.trim() && (
                    <Text style={{ color: colors.textMuted, textAlign: "center", fontSize: 12, fontFamily: "Cairo_400Regular", marginTop: 4 }}>
                      العمل مسجل في المصدر، وسيتم إدراج فصوله هنا تلقائياً فور نشرها من فرق الترجمة.
                    </Text>
                  )}
                </View>
              }
              ListFooterComponent={
                totalChapterPages > 1 ? (
                  <View style={styles.paginationFooterRow}>
                    <Pressable
                      disabled={safeChapterPage <= 0}
                      onPress={() => {
                        if (safeChapterPage > 0) {
                          setChapterPage(safeChapterPage - 1);
                          chaptersFlatListRef.current?.scrollToOffset({
                            offset: 0,
                            animated: true,
                          });
                        }
                      }}
                      style={[
                        styles.pageStepBtn,
                        {
                          backgroundColor: colors.surface,
                          borderColor: colors.border,
                          opacity: safeChapterPage > 0 ? 1 : 0.4,
                        },
                      ]}
                    >
                      <Ionicons name="chevron-forward" size={16} color={colors.textPrimary} />
                      <Text style={[styles.pageStepBtnText, { color: colors.textPrimary }]}>
                        الـ 50 السابقة
                      </Text>
                    </Pressable>

                    <Text style={[styles.pageIndicatorText, { color: colors.textSecondary }]}>
                      صفحة {safeChapterPage + 1} من {totalChapterPages}
                    </Text>

                    <Pressable
                      disabled={safeChapterPage >= totalChapterPages - 1}
                      onPress={() => {
                        if (safeChapterPage < totalChapterPages - 1) {
                          setChapterPage(safeChapterPage + 1);
                          chaptersFlatListRef.current?.scrollToOffset({
                            offset: 0,
                            animated: true,
                          });
                        }
                      }}
                      style={[
                        styles.pageStepBtn,
                        {
                          backgroundColor: colors.homeAccent || "#0EA5E9",
                          borderColor: colors.homeAccent || "#0EA5E9",
                          opacity: safeChapterPage < totalChapterPages - 1 ? 1 : 0.4,
                        },
                      ]}
                    >
                      <Text style={[styles.pageStepBtnText, { color: "#09090B" }]}>
                        الـ 50 التالية
                      </Text>
                      <Ionicons name="chevron-back" size={16} color="#09090B" />
                    </Pressable>
                  </View>
                ) : null
              }
              renderItem={({ item: ch }) => {
                const isCurrent = activeChapter?.slug === ch.slug;
                const numLabel = formatChapterNumber(ch);
                const dateLabel = ch.date || (ch.createdAt ? ch.createdAt.slice(0, 10) : "");
                return (
                  <Pressable
                    onPress={() => openChapterInApp(ch)}
                    style={[
                      styles.chapterCard,
                      {
                        backgroundColor: isCurrent
                          ? "rgba(245, 158, 11, 0.14)"
                          : colors.surface,
                        borderColor: isCurrent ? colors.homeAccent : colors.border,
                      },
                    ]}
                  >
                    <View style={styles.chapterRight}>
                      <View
                        style={[
                          styles.chapterIconWrap,
                          {
                            backgroundColor: isCurrent
                              ? "rgba(245, 158, 11, 0.22)"
                              : "rgba(56, 189, 248, 0.12)",
                            borderColor: isCurrent
                              ? "rgba(245, 158, 11, 0.45)"
                              : "rgba(56, 189, 248, 0.28)",
                          },
                        ]}
                      >
                        <Text
                          style={[
                            styles.chapterNumBadgeText,
                            isCurrent && { color: "#FBBF24" },
                          ]}
                        >
                          {numLabel}
                        </Text>
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
                          {dateLabel ? `تاريخ النشر: ${dateLabel}` : "مترجم بالعربية"}
                        </Text>
                      </View>
                    </View>

                    <View style={styles.chapterLeft}>
                      <Text
                        style={[styles.chapterTranslatedLabel, { color: colors.homeAccent }]}
                      >
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

      {/* ── YouTube Trailer Modal (أفقي دائماً وكامل الشاشة بدون قص) ── */}
      <YoutubeTrailerModal
        visible={showTrailer}
        videoId={trailerYT}
        title={primaryTitle}
        onClose={() => setShowTrailer(false)}
      />

      {/* ── Chapter Picker Modal inside Reader (مع تقسيم 50 فصل لكل صفحة) ── */}
      <Modal
        visible={chapterPickerVisible}
        transparent
        animationType="fade"
        onRequestClose={() => setChapterPickerVisible(false)}
      >
        <View style={styles.modalBackdrop}>
          <Pressable
            style={StyleSheet.absoluteFill}
            onPress={() => setChapterPickerVisible(false)}
          />
          <View
            style={[
              styles.pickerModal,
              {
                backgroundColor: "#121216",
                borderColor: "rgba(255,255,255,0.12)",
                maxHeight: 520,
              },
            ]}
          >
            <View
              style={[styles.pickerHeader, { borderBottomColor: "rgba(255,255,255,0.08)" }]}
            >
              <View style={styles.pickerHeaderRight}>
                <Ionicons name="list" size={18} color="#FBBF24" />
                <Text style={[styles.pickerHeaderTitle, { color: "#fff" }]}>
                  اختر الفصل ({chaptersAsc.length})
                </Text>
              </View>
              <Pressable
                onPress={() => setChapterPickerVisible(false)}
                style={styles.modalCloseBtn}
              >
                <Ionicons name="close" size={18} color="#9ca3af" />
              </Pressable>
            </View>

            {totalPickerPages > 1 && (
              <View
                style={{
                  flexDirection: ROW_RTL,
                  alignItems: "center",
                  justifyContent: "space-between",
                  paddingHorizontal: 14,
                  paddingVertical: 8,
                  borderBottomWidth: 1,
                  borderBottomColor: "rgba(255,255,255,0.08)",
                }}
              >
                <Pressable
                  disabled={safePickerPage <= 0}
                  onPress={() => setPickerPage(Math.max(0, safePickerPage - 1))}
                  style={[
                    styles.qualityPill,
                    { opacity: safePickerPage > 0 ? 1 : 0.35 },
                  ]}
                >
                  <Text style={styles.qualityPillText}>الـ 50 السابقة</Text>
                </Pressable>
                <Text style={{ color: "#d4d4d8", fontSize: 11.5, fontFamily: "Cairo_700Bold" }}>
                  صفحة {safePickerPage + 1} / {totalPickerPages}
                </Text>
                <Pressable
                  disabled={safePickerPage >= totalPickerPages - 1}
                  onPress={() =>
                    setPickerPage(Math.min(totalPickerPages - 1, safePickerPage + 1))
                  }
                  style={[
                    styles.qualityPill,
                    { opacity: safePickerPage < totalPickerPages - 1 ? 1 : 0.35 },
                  ]}
                >
                  <Text style={styles.qualityPillText}>الـ 50 التالية</Text>
                </Pressable>
              </View>
            )}

            <FlatList
              data={pagedPickerChapters}
              removeClippedSubviews={false}
              keyExtractor={(item, index) => `${item.id || item.slug}-${index}`}
              contentContainerStyle={{ padding: 14, gap: 8 }}
              showsVerticalScrollIndicator={false}
              initialNumToRender={15}
              maxToRenderPerBatch={15}
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
                          ? "rgba(245, 158, 11, 0.16)"
                          : "rgba(255,255,255,0.04)",
                        borderColor: isSelected ? "#F59E0B" : "rgba(255,255,255,0.08)",
                      },
                    ]}
                  >
                    <Text
                      style={[
                        styles.pickerItemText,
                        { color: isSelected ? "#FBBF24" : "#f4f4f5" },
                      ]}
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

      {/* ── Full-Screen Vertical Reader Modal (بحجم الشاشة المناسب 100% بدون زوم) ── */}
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
                  {primaryTitle} {chapterContentType === "text" ? "• قراءة نصية" : chapterPages.length > 0 ? `• ${chapterPages.length} صفحة` : ""}
                </Text>
              </View>
            </View>

            <Pressable onPress={() => setChapterPickerVisible(true)} style={styles.qualityPill}>
              <Ionicons name="list" size={13} color="#FBBF24" />
              <Text style={styles.qualityPillText}>الفصول</Text>
            </Pressable>
          </View>

          {pagesLoading ? (
            <View style={styles.readerCenter}>
              <ActivityIndicator size="large" color="#F59E0B" />
              <Text style={styles.readerLoadingText}>جاري تحميل محتوى الفصل...</Text>
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
              key={`${activeChapter?.slug || "ch"}-${chapterContentType}-${chapterPages.length}-${chapterTextHtml.length}`}
              style={{ flex: 1, backgroundColor: "#050507" }}
              originWhitelist={["*"]}
              source={{
                html:
                  chapterContentType === "text"
                    ? buildTextReaderHtml(
                        chapterTextHtml,
                        activeChapter
                          ? activeChapter.title || `الفصل ${formatChapterNumber(activeChapter)}`
                          : "الفصل",
                        nextChapter ? formatChapterNumber(nextChapter) : null
                      )
                    : buildWebtoonReaderHtml(
                        chapterPages,
                        activeChapter ? `الفصل ${formatChapterNumber(activeChapter)}` : "الفصل",
                        nextChapter ? formatChapterNumber(nextChapter) : null,
                        getBaseUrl()
                      ),
                baseUrl:
                  currentSource === "manhwa"
                    ? "https://azorafly.com/"
                    : "https://mangalik.net/",
              }}
              scalesPageToFit={false}
              setBuiltInZoomControls={false}
              setDisplayZoomControls={false}
              showsVerticalScrollIndicator={true}
              showsHorizontalScrollIndicator={false}
              bounces={false}
              overScrollMode="never"
              javaScriptEnabled={true}
              domStorageEnabled={true}
              mixedContentMode="always"
              onMessage={(event) => {
                const msg = String(event?.nativeEvent?.data || "");
                if (msg === "NEXT_CHAPTER" && nextChapter) {
                  openChapterInApp(nextChapter);
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
  favTopBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 13,
    height: 40,
    borderRadius: 20,
    backgroundColor: "rgba(0,0,0,0.55)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.18)",
  },
  favTopBtnText: {
    color: "#ffffff",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
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
    height: 170,
    borderRadius: 14,
    overflow: "hidden",
    backgroundColor: "#18181b",
    borderWidth: 1.5,
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
    height: 186,
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
    color: "rgba(255,255,255,0.72)",
    fontFamily: "Cairo_400Regular",
    marginTop: 2,
    textAlign: "right",
  },
  trailerLandscapeTopBar: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 18,
    paddingVertical: 10,
    backgroundColor: "rgba(0,0,0,0.92)",
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.12)",
  },
  trailerModalTitle: {
    fontSize: 13.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  trailerCloseBtn: {
    width: 36,
    height: 36,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.12)",
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
  /* Characters Section */
  charGrid: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 10,
  },
  charCard: {
    alignItems: "center",
    gap: 5,
  },
  charImgWrap: {
    borderRadius: 12,
    overflow: "hidden",
    backgroundColor: "#18181b",
    position: "relative",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.08)",
  },
  charRoleBadge: {
    position: "absolute",
    bottom: 6,
    right: 6,
    paddingHorizontal: 7,
    paddingVertical: 2,
    borderRadius: 6,
  },
  charRoleText: {
    color: "#ffffff",
    fontSize: 9,
    fontFamily: "Cairo_700Bold",
  },
  charHeartBtn: {
    position: "absolute",
    top: 6,
    left: 6,
    width: 24,
    height: 24,
    borderRadius: 12,
    backgroundColor: "rgba(0,0,0,0.6)",
    alignItems: "center",
    justifyContent: "center",
  },
  charName: {
    fontSize: 11,
    lineHeight: 15,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
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
    width: 40,
    height: 40,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  chaptersHeaderTexts: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  chaptersScreenTitle: {
    fontSize: 15,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  chaptersScreenSub: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    marginTop: 1,
  },
  chaptersToolbar: {
    paddingHorizontal: 16,
    paddingVertical: 12,
    borderBottomWidth: 1,
    gap: 10,
  },
  quickReadRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  quickReadBtn: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 7,
    paddingVertical: 11,
    paddingHorizontal: 12,
    borderRadius: 13,
  },
  quickReadPrimaryText: {
    color: "#09090B",
    fontSize: 13,
    fontFamily: "Cairo_800ExtraBold",
  },
  quickReadSecondaryBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    paddingVertical: 11,
    paddingHorizontal: 13,
    borderRadius: 13,
    borderWidth: 1,
  },
  quickReadSecondaryText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  searchBox: {
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
  paginationWrap: {
    marginTop: 2,
  },
  paginationScroll: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    paddingVertical: 2,
  },
  pageRangePill: {
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 10,
    borderWidth: 1,
  },
  pageRangePillText: {
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
  },
  paginationFooterRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingVertical: 16,
    gap: 10,
  },
  pageStepBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 14,
    paddingVertical: 9,
    borderRadius: 12,
    borderWidth: 1,
  },
  pageStepBtnText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  pageIndicatorText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
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
    backgroundColor: "rgba(9, 9, 13, 0.98)",
    gap: 10,
    zIndex: 9999,
    elevation: 20,
  },
  readerHeaderRight: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  readerBackBtn: {
    width: 42,
    height: 42,
    borderRadius: 12,
    backgroundColor: "rgba(255,255,255,0.12)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.2)",
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
    paddingHorizontal: 12,
    paddingVertical: 7,
    borderRadius: 12,
    backgroundColor: "rgba(245,158,11,0.16)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.45)",
  },
  qualityPillText: {
    color: "#FBBF24",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  readerCenter: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    gap: 14,
    padding: 24,
    zIndex: 50,
    elevation: 5,
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
    gap: 14,
    maxWidth: 360,
  },
  readerErrorTitle: {
    color: "#f4f4f5",
    fontSize: 13.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
    lineHeight: 22,
  },
  pageRetryBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 7,
    paddingHorizontal: 18,
    paddingVertical: 9,
    borderRadius: 12,
    backgroundColor: "#F59E0B",
    elevation: 10,
    shadowColor: "#F59E0B",
    shadowOpacity: 0.35,
    shadowRadius: 8,
  },
  pageRetryBtnText: {
    color: "#09090B",
    fontSize: 12.5,
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
    backgroundColor: "rgba(9, 9, 13, 0.98)",
    gap: 10,
    zIndex: 9999,
    elevation: 20,
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
    backgroundColor: "rgba(255,255,255,0.1)",
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
    justifyContent: "center",
    gap: 6,
    paddingHorizontal: 14,
    paddingVertical: 10,
    borderRadius: 12,
    backgroundColor: "rgba(245, 158, 11, 0.14)",
    borderWidth: 1,
    borderColor: "rgba(245, 158, 11, 0.35)",
  },
  readerChapterSelectText: {
    color: "#FBBF24",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
});

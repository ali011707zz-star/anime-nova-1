import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import * as ScreenOrientation from "expo-screen-orientation";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  Alert,
  Animated,
  BackHandler,
  FlatList,
  I18nManager,
  Image,
  Linking,
  Modal,
  Platform,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  TextInput,
  View,
  useWindowDimensions,
} from "react-native";
import WebView from "react-native-webview";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { getWatchContentId, useApp } from "@/context/AppContext";
import { WatchlistStatusModal } from "@/components/WatchlistStatusModal";
import { getWatchlistStatusMeta, WatchlistStatus } from "@/utils/watchlistStatus";
import { useColors } from "@/hooks/useColors";
import { getPrimaryCtaMetrics } from "@/utils/responsiveUiLogic.mjs";
import { getBaseUrl } from "@/utils/api";
import { translateMangaGenre } from "@/utils/mangaLocalization";
import {
  ActiveMangaDownload,
  DownloadedMangaChapter,
  deleteDownloadedMangaChapter,
  downloadMangaChapter,
  getActiveMangaDownloadsSnapshot,
  getDownloadedChapter,
  getDownloadedChaptersForManga,
  readOfflineChapterText,
  subscribeMangaDownloads,
} from "@/utils/mangaDownloadManager";
import { getYoutubeEmbedUrl, getYoutubeReferer } from "@/utils/youtube";
import { YoutubeTrailerModal } from "@/components/YoutubeTrailerModal";
import {
  MangaPageInfoSheet,
  MangaReaderSettingsSheet,
  type LongPressPagePayload,
} from "@/components/MangaReaderSettingsSheet";
import { TvPressable as Pressable, tvFocusStyle, useTvListFocusScroll, useTvMetrics } from "@/utils/tv";
import { queueOrientationLock } from "@/utils/watchOrientation";
import {
  DEFAULT_GLOBAL_READER_SETTINGS,
  type MangaReaderGlobalSettings,
  type ReadingMode,
  getReaderLayoutFamily,
  getReaderThemePalette,
  isHorizontalReadingMode,
  isPagedReadingMode,
  resolveEffectiveReadingMode,
} from "@/utils/mangaReaderSettings.mjs";
import {
  loadGlobalReaderSettings,
  loadMangaReadingMode,
  saveGlobalReaderSettings,
  saveMangaReadingMode,
} from "@/utils/mangaReaderStorage";
import {
  buildApplyReaderSettingsScript,
  buildMangaReaderHtml,
  buildReloadReaderPageScript,
  buildScrollReaderScript,
  buildThemedTextReaderHtml,
} from "@/utils/mangaReaderHtml.mjs";

const IS_RTL = I18nManager.isRTL;
const ROW_RTL = (IS_RTL ? "row" : "row-reverse") as "row" | "row-reverse";
const ROW_LTR = (IS_RTL ? "row-reverse" : "row") as "row" | "row-reverse";
const ALIGN_RIGHT = (IS_RTL ? "flex-start" : "flex-end") as "flex-start" | "flex-end";

const CHAPTERS_PER_PAGE = 50;

const ARABIC_MONTHS = [
  "يناير", "فبراير", "مارس", "أبريل", "مايو", "يونيو",
  "يوليو", "أغسطس", "سبتمبر", "أكتوبر", "نوفمبر", "ديسمبر",
];

function formatArabicChapterDate(raw?: string | null): string {
  if (!raw || typeof raw !== "string") return "";
  const trimmed = raw.trim();
  if (!trimmed) return "";
  const ms = Date.parse(trimmed);
  if (!Number.isFinite(ms)) return trimmed.slice(0, 10);
  const d = new Date(ms);
  const now = new Date();
  const diffDays = Math.floor((now.getTime() - d.getTime()) / (24 * 60 * 60 * 1000));
  const formatted = `${d.getDate()} ${ARABIC_MONTHS[d.getMonth()]} ${d.getFullYear()}`;
  if (diffDays === 0 && d.getDate() === now.getDate()) return `اليوم • ${formatted}`;
  if (diffDays === 1) return `أمس • ${formatted}`;
  return formatted;
}

const OfflinePageImage = React.memo(function OfflinePageImage({
  uri,
  screenWidth,
  screenHeight,
  backgroundColor,
  sidePadding,
  cropBorders,
  isPaged,
  isContinuousGap,
  pageIndex,
  totalPages,
  longPressEnabled,
  onTapCenter,
  onLongPressPage,
}: {
  uri: string;
  screenWidth: number;
  screenHeight: number;
  backgroundColor: string;
  sidePadding: number;
  cropBorders: boolean;
  isPaged: boolean;
  isContinuousGap: boolean;
  pageIndex: number;
  totalPages: number;
  longPressEnabled: boolean;
  onTapCenter: () => void;
  onLongPressPage: (payload: LongPressPagePayload) => void;
}) {
  const [dims, setDims] = useState<{ w: number; h: number }>({ w: 0, h: 0 });
  const [ratio, setRatio] = useState(1.42);
  useEffect(() => {
    let active = true;
    Image.getSize(
      uri,
      (w, h) => {
        if (active && w > 0 && h > 0) {
          setDims({ w, h });
          setRatio(Math.min(Math.max(h / w, 0.35), 8));
        }
      },
      () => {},
    );
    return () => {
      active = false;
    };
  }, [uri]);

  const horizontalInset = Math.round((screenWidth * sidePadding) / 100);
  const contentWidth = Math.max(120, screenWidth - horizontalInset * 2);
  const imgHeight = isPaged ? screenHeight : Math.round(contentWidth * ratio);

  return (
    <Pressable
      onPress={onTapCenter}
      onLongPress={
        longPressEnabled
          ? () =>
              onLongPressPage({
                page: pageIndex + 1,
                total: totalPages,
                url: uri,
                naturalWidth: dims.w,
                naturalHeight: dims.h,
                loaded: dims.w > 0,
                isOffline: true,
              })
          : undefined
      }
      delayLongPress={480}
      style={{
        width: screenWidth,
        height: isPaged ? screenHeight : undefined,
        paddingHorizontal: horizontalInset,
        marginBottom: !isPaged && isContinuousGap ? 14 : 0,
        backgroundColor,
        alignItems: "center",
        justifyContent: "center",
        overflow: "hidden",
      }}
    >
      <Image
        source={{ uri }}
        style={{
          width: contentWidth,
          height: imgHeight,
          backgroundColor,
          transform: cropBorders ? [{ scale: 1.055 }] : undefined,
        }}
        resizeMode="contain"
        fadeDuration={0}
      />
    </Pressable>
  );
});

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
    offlineChapter?: string;
  }>();
  const router = useRouter();
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const { width, height } = useWindowDimensions();
  const { isFavorite, setFavoriteStatus, removeFavorite, getFavoriteStatus } = useApp();

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
  const [offlineLocalPages, setOfflineLocalPages] = useState<string[]>([]);
  const [readingOffline, setReadingOffline] = useState(false);
  const [chapterContentType, setChapterContentType] = useState<"images" | "text">("images");
  const [chapterTextHtml, setChapterTextHtml] = useState<string>("");
  const [pagesLoading, setPagesLoading] = useState(false);
  const [pagesError, setPagesError] = useState<string | null>(null);

  // Offline downloaded chapters state for this manga/manhwa
  const [downloadedMap, setDownloadedMap] = useState<Map<string, DownloadedMangaChapter>>(new Map());
  const [activeDownloadsMap, setActiveDownloadsMap] = useState<Map<string, ActiveMangaDownload>>(new Map());
  const offlineAutoOpenedRef = useRef(false);

  const readerWebViewRef = useRef<WebView>(null);
  const { tv: tvMode } = useTvMetrics();
  const chaptersFlatListRef = useRef<FlatList<MangaChapter>>(null);
  const { scrollToFocusedIndex: scrollChapterIntoView } = useTvListFocusScroll(chaptersFlatListRef, 0.35);

  // Mobile Manga/Manhwa Reader Settings state (global + per-manga mode)
  const [readerSettings, setReaderSettings] = useState<MangaReaderGlobalSettings>(() => ({
    ...DEFAULT_GLOBAL_READER_SETTINGS,
  }));
  const [selectedReadingMode, setSelectedReadingMode] = useState<ReadingMode>("default");
  const [readerSettingsOpen, setReaderSettingsOpen] = useState(false);
  const [readerChromeVisible, setReaderChromeVisible] = useState(true);
  const [readerCurrentPage, setReaderCurrentPage] = useState(1);
  const [longPressPageInfo, setLongPressPageInfo] = useState<LongPressPagePayload | null>(null);
  const readerSettingsRef = useRef(readerSettings);
  readerSettingsRef.current = readerSettings;
  const readerCurrentPageRef = useRef(1);
  readerCurrentPageRef.current = readerCurrentPage;

  const mangaModeStorageKey = manga?.id || decodedId;

  useEffect(() => {
    let active = true;
    loadGlobalReaderSettings()
      .then((loaded) => {
        if (active) setReaderSettings(loaded);
      })
      .catch(() => {});
    return () => {
      active = false;
    };
  }, []);

  useEffect(() => {
    if (!mangaModeStorageKey) return;
    let active = true;
    loadMangaReadingMode(mangaModeStorageKey)
      .then((mode) => {
        if (active) setSelectedReadingMode(mode);
      })
      .catch(() => {});
    return () => {
      active = false;
    };
  }, [mangaModeStorageKey]);

  const readerChromeOpacity = useRef(new Animated.Value(1)).current;

  useEffect(() => {
    const shouldShow = !readerSettings.fullscreen || readerChromeVisible;
    readerChromeOpacity.stopAnimation();
    Animated.timing(readerChromeOpacity, {
      toValue: shouldShow ? 1 : 0,
      duration: shouldShow ? 170 : 190,
      useNativeDriver: true,
    }).start();
  }, [readerSettings.fullscreen, readerChromeVisible, readerChromeOpacity]);

  const handleUpdateReaderSettings = useCallback(
    (patch: Partial<MangaReaderGlobalSettings>) => {
      setReaderSettings((prev) => {
        const next = { ...prev, ...patch };
        if (patch.fullscreen === true) {
          setReaderChromeVisible(false);
        } else if (patch.fullscreen === false) {
          setReaderChromeVisible(true);
        }
        void saveGlobalReaderSettings(next);
        return next;
      });
    },
    []
  );

  const handleSelectReadingMode = useCallback(
    (mode: ReadingMode) => {
      setSelectedReadingMode(mode);
      if (mangaModeStorageKey) {
        void saveMangaReadingMode(mangaModeStorageKey, mode);
      }
    },
    [mangaModeStorageKey]
  );

  const handleResetReaderSettings = useCallback(() => {
    const defaults = { ...DEFAULT_GLOBAL_READER_SETTINGS };
    setReaderSettings(defaults);
    setSelectedReadingMode("default");
    setReaderChromeVisible(true);
    void saveGlobalReaderSettings(defaults);
    if (mangaModeStorageKey) {
      void saveMangaReadingMode(mangaModeStorageKey, "default");
    }
  }, [mangaModeStorageKey]);

  // Coordinated screen orientation owner for Trailer Modal & Manga Reader (ANR-safe queue)
  useEffect(() => {
    if (Platform.OS === "web" || tvMode) return;
    let cancelled = false;

    if (showTrailer) {
      queueOrientationLock(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT);
    } else if (readerOpen) {
      const rot = readerSettings.rotation;
      if (rot === "free") {
        queueOrientationLock(ScreenOrientation.OrientationLock.ALL, true);
      } else if (rot === "portrait") {
        queueOrientationLock(ScreenOrientation.OrientationLock.PORTRAIT_UP, true);
      } else if (rot === "landscape") {
        queueOrientationLock(ScreenOrientation.OrientationLock.LANDSCAPE, true);
      } else if (rot === "locked") {
        ScreenOrientation.getOrientationAsync()
          .then((current) => {
            if (cancelled) return;
            if (current === ScreenOrientation.Orientation.LANDSCAPE_LEFT) {
              queueOrientationLock(ScreenOrientation.OrientationLock.LANDSCAPE_LEFT, true);
            } else if (current === ScreenOrientation.Orientation.LANDSCAPE_RIGHT) {
              queueOrientationLock(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT, true);
            } else {
              queueOrientationLock(ScreenOrientation.OrientationLock.PORTRAIT_UP, true);
            }
          })
          .catch(() => {
            if (!cancelled) {
              queueOrientationLock(ScreenOrientation.OrientationLock.PORTRAIT_UP, true);
            }
          });
      }
    } else {
      queueOrientationLock(ScreenOrientation.OrientationLock.PORTRAIT_UP);
    }

    return () => {
      cancelled = true;
    };
  }, [showTrailer, readerOpen, readerSettings.rotation, tvMode]);

  useEffect(() => {
    if (Platform.OS === "web" || tvMode) return;
    return () => {
      queueOrientationLock(ScreenOrientation.OrientationLock.PORTRAIT_UP);
    };
  }, [tvMode]);

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
      if (longPressPageInfo) {
        setLongPressPageInfo(null);
        return true;
      }
      if (readerSettingsOpen) {
        setReaderSettingsOpen(false);
        return true;
      }
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
  }, [longPressPageInfo, readerSettingsOpen, chapterPickerVisible, readerOpen, chaptersPageOpen]);

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

  const refreshMangaDownloads = useCallback(async () => {
    const targetId = manga?.id || decodedId;
    if (!targetId) return;
    const saved = await getDownloadedChaptersForManga(targetId);
    const nextMap = new Map<string, DownloadedMangaChapter>();
    for (const item of saved) nextMap.set(item.chapterSlug, item);
    setDownloadedMap(nextMap);

    const active = getActiveMangaDownloadsSnapshot();
    const actMap = new Map<string, ActiveMangaDownload>();
    for (const a of active) {
      if (a.mangaId === targetId) actMap.set(a.chapterSlug, a);
    }
    setActiveDownloadsMap(actMap);
  }, [decodedId, manga?.id]);

  useEffect(() => {
    void refreshMangaDownloads();
    return subscribeMangaDownloads(() => {
      void refreshMangaDownloads();
    });
  }, [refreshMangaDownloads]);

  const loadChapterPages = useCallback(
    async (chapter: MangaChapter) => {
      const targetId = manga?.id || decodedId;
      const targetSource = manga?.source || inferredSource;
      if (!targetId) return;
      setPagesLoading(true);
      setPagesError(null);
      setChapterPages([]);
      setOfflineLocalPages([]);
      setReadingOffline(false);
      setChapterTextHtml("");
      setChapterContentType("images");
      try {
        // 1. Offline-first: if chapter is already downloaded locally, open immediately with zero internet!
        const offlineRec = await getDownloadedChapter(targetId, chapter.slug);
        if (offlineRec) {
          setReadingOffline(true);
          if (offlineRec.contentType === "text") {
            const html = await readOfflineChapterText(offlineRec);
            if (html) {
              setChapterContentType("text");
              setChapterTextHtml(html);
              return;
            }
          } else if (offlineRec.localPages.length > 0) {
            setChapterContentType("images");
            setOfflineLocalPages(offlineRec.localPages);
            return;
          }
          setReadingOffline(false);
        }

        // 2. Online fetch
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
      setReaderCurrentPage(1);
      setLongPressPageInfo(null);
      setReaderChromeVisible(!readerSettingsRef.current.fullscreen);
      setReaderOpen(true);
      void loadChapterPages(chapter);
    },
    [loadChapterPages]
  );

  // If navigated directly from Downloads screen with ?offlineChapter=<slug>, open offline immediately!
  useEffect(() => {
    const slugParam = typeof params.offlineChapter === "string" ? params.offlineChapter.trim() : "";
    if (!slugParam || offlineAutoOpenedRef.current) return;
    const saved = downloadedMap.get(slugParam);
    if (saved) {
      offlineAutoOpenedRef.current = true;
      openChapterInApp({
        id: saved.chapterSlug,
        slug: saved.chapterSlug,
        number: saved.chapterNumber,
        numberStr: saved.chapterNumber,
        title: saved.chapterTitle,
        date: saved.chapterDate,
      });
    }
  }, [params.offlineChapter, downloadedMap, openChapterInApp]);

  // Chapters sorted ascending by numeric order (falls back to locally downloaded chapters when offline!)
  const chaptersAsc = useMemo(() => {
    const raw: MangaChapter[] =
      manga?.chapters && manga.chapters.length > 0
        ? manga.chapters
        : Array.from(downloadedMap.values()).map((d) => ({
            id: d.chapterSlug,
            slug: d.chapterSlug,
            number: d.chapterNumber,
            numberStr: d.chapterNumber,
            title: d.chapterTitle,
            date: d.chapterDate,
          }));
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

  const effectiveReadingMode = useMemo(
    () =>
      resolveEffectiveReadingMode(
        selectedReadingMode,
        currentSource,
        manga?.countryOfOrigin
      ),
    [selectedReadingMode, currentSource, manga?.countryOfOrigin]
  );
  const readerTheme = useMemo(
    () => getReaderThemePalette(readerSettings.background),
    [readerSettings.background]
  );
  const readerLayoutFamily = useMemo(
    () => getReaderLayoutFamily(effectiveReadingMode),
    [effectiveReadingMode]
  );
  const offlineIsPaged = isPagedReadingMode(effectiveReadingMode);
  const offlineIsHorizontal = isHorizontalReadingMode(effectiveReadingMode);

  // Build WebView HTML only when chapter or layout family changes; live settings apply via injectJavaScript
  const readerWebViewHtml = useMemo(() => {
    if (chapterContentType === "text") {
      return buildThemedTextReaderHtml({
        contentHtml: chapterTextHtml,
        chapterLabel: activeChapter
          ? activeChapter.title || `الفصل ${formatChapterNumber(activeChapter)}`
          : "الفصل",
        nextChapterLabel: nextChapter ? formatChapterNumber(nextChapter) : null,
        settings: readerSettingsRef.current,
      });
    }
    return buildMangaReaderHtml({
      pages: chapterPages,
      chapterLabel: activeChapter
        ? `الفصل ${formatChapterNumber(activeChapter)}`
        : "الفصل",
      nextChapterLabel: nextChapter ? formatChapterNumber(nextChapter) : null,
      apiBase: getBaseUrl(),
      settings: readerSettingsRef.current,
      effectiveMode: effectiveReadingMode,
      initialPage: readerCurrentPageRef.current,
    });
  }, [
    activeChapter,
    chapterContentType,
    chapterPages,
    chapterTextHtml,
    nextChapter,
    readerLayoutFamily,
    chapterContentType === "text" ? readerSettings.background : null,
    chapterContentType === "text" ? readerSettings.sidePadding : null,
  ]);

  useEffect(() => {
    if (!readerOpen || readingOffline || chapterContentType !== "images") return;
    if (!readerWebViewRef.current) return;
    readerWebViewRef.current.injectJavaScript(
      buildApplyReaderSettingsScript(readerSettings, effectiveReadingMode)
    );
  }, [readerOpen, readerSettingsOpen, readingOffline, chapterContentType, readerSettings, effectiveReadingMode]);

  const handleToggleReaderChrome = useCallback(() => {
    if (!readerSettingsRef.current.fullscreen) return;
    setReaderChromeVisible((prev) => !prev);
  }, []);

  const offlineViewabilityConfig = useRef({ itemVisiblePercentThreshold: 50 }).current;
  const handleOfflineViewableItemsChanged = useRef(
    ({ viewableItems }: { viewableItems: Array<{ index: number | null }> }) => {
      const firstIdx = viewableItems?.[0]?.index;
      if (typeof firstIdx === "number" && firstIdx >= 0) {
        setReaderCurrentPage(firstIdx + 1);
      }
    }
  ).current;
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
  const currentWatchStatus = getFavoriteStatus(favNumericId);
  const watchStatusMeta = isFav ? getWatchlistStatusMeta(currentWatchStatus) : null;
  const [showWatchlist, setShowWatchlist] = useState(false);

  const handleChapterDownload = useCallback(
    async (ch: MangaChapter) => {
      const targetId = manga?.id || decodedId;
      if (!targetId) return;
      const existing = downloadedMap.get(ch.slug);
      if (existing) {
        Alert.alert(
          "حذف الفصل المحمّل",
          `هل تريد حذف ${ch.title || `الفصل ${formatChapterNumber(ch)}`} من التنزيلات؟`,
          [
            { text: "إلغاء", style: "cancel" },
            {
              text: "حذف",
              style: "destructive",
              onPress: () => {
                void deleteDownloadedMangaChapter(existing.id);
              },
            },
          ],
        );
        return;
      }
      if (activeDownloadsMap.has(ch.slug)) return;
      try {
        await downloadMangaChapter({
          mangaId: targetId,
          source: manga?.source || inferredSource,
          mangaTitle: primaryTitle || "مانجا",
          mangaTitleEn: englishTitle || primaryTitle || "Manga",
          coverUrl: cover || "",
          chapterSlug: ch.slug,
          chapterNumber: formatChapterNumber(ch),
          chapterTitle: ch.title || `الفصل ${formatChapterNumber(ch)}`,
          chapterDate: ch.createdAt || ch.date || "",
        });
      } catch (err: any) {
        Alert.alert("تعذر التحميل", err?.message || "حدث خطأ أثناء تحميل الفصل. حاول مرة أخرى.");
      }
    },
    [
      manga?.id,
      manga?.source,
      decodedId,
      inferredSource,
      downloadedMap,
      activeDownloadsMap,
      primaryTitle,
      englishTitle,
      cover,
    ],
  );

  const handleSelectWatchStatus = useCallback((status: WatchlistStatus) => {
    if (!targetMangaId) return;
    void setFavoriteStatus({
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
    }, status);
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
    setFavoriteStatus,
  ]);

  // Characters list
  const characters = useMemo(() => {
    const raw = Array.isArray(manga?.characters) ? manga.characters : [];
    return raw.filter((c) => c?.node?.id && c?.node?.name?.full);
  }, [manga?.characters]);

  const charCardWidth = Math.floor((width - 32 - 20) / 3);

  useEffect(() => {
    if (tvMode) router.replace("/(tabs)" as any);
  }, [router, tvMode]);

  if (tvMode) return null;

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
            colors={["rgba(9,9,11,0.35)", "rgba(9,9,11,0.84)", "rgba(9,9,11,0.95)"]}
            style={StyleSheet.absoluteFill}
          />

          {/* Top Bar: Back button on Right + Favorite button on Left */}
          <View style={[styles.topBar, { paddingTop: insets.top + 10 }]}>
            <Pressable onPress={() => router.back()} style={styles.iconBtn}>
              <Ionicons name="arrow-forward" size={21} color="#fff" />
            </Pressable>

            <Pressable
              onPress={() => setShowWatchlist(true)}
              style={[
                styles.favTopBtn,
                watchStatusMeta && {
                  backgroundColor: watchStatusMeta.bg,
                  borderColor: watchStatusMeta.border,
                },
              ]}
            >
              <Ionicons
                name={(watchStatusMeta ? watchStatusMeta.activeIcon : "bookmark-outline") as any}
                size={18}
                color={watchStatusMeta ? watchStatusMeta.color : "#fff"}
              />
              <Text style={[styles.favTopBtnText, watchStatusMeta && { color: watchStatusMeta.color }]}>
                {watchStatusMeta ? watchStatusMeta.shortLabel : "قائمتي"}
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

              <Text
                style={[
                  styles.title,
                  {
                    color: "#FFFFFF",
                    textShadowColor: "rgba(0,0,0,0.75)",
                    textShadowOffset: { width: 0, height: 1 },
                    textShadowRadius: 6,
                  },
                ]}
                numberOfLines={3}
              >
                {primaryTitle}
              </Text>

              {secondaryTitle ? (
                <Text
                  style={[
                    styles.subTitle,
                    {
                      color: "rgba(255,255,255,0.86)",
                      textShadowColor: "rgba(0,0,0,0.6)",
                      textShadowOffset: { width: 0, height: 1 },
                      textShadowRadius: 4,
                    },
                  ]}
                  numberOfLines={2}
                >
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
          {(() => {
            const cta = getPrimaryCtaMetrics({ width, tvMode });
            return (
              <Pressable
                onPress={() => setChaptersPageOpen(true)}
                hasTVPreferredFocus={tvMode}
                style={[
                  styles.chaptersCtaBtn,
                  {
                    backgroundColor: colors.homeAccent || "#0EA5E9",
                    minHeight: cta.minHeight,
                    paddingVertical: cta.paddingVertical,
                    paddingHorizontal: cta.paddingHorizontal,
                    borderRadius: cta.borderRadius,
                    maxWidth: cta.maxWidth,
                    alignSelf: cta.maxWidth ? "center" : undefined,
                  },
                ]}
              >
                <View style={[styles.chaptersCtaRight, { gap: cta.gap }]}>
                  <View style={[styles.chaptersCtaIcon, { width: cta.iconBoxSize, height: cta.iconBoxSize, borderRadius: cta.iconBoxRadius }]}>
                    <Ionicons name="book" size={cta.iconSize} color="#FFFFFF" />
                  </View>
                  <View style={styles.chaptersCtaTextWrap}>
                    <Text style={[styles.chaptersCtaTitle, { fontSize: cta.titleSize, lineHeight: cta.titleLineHeight }]}>قراءة الفصول</Text>
                    <Text style={[styles.chaptersCtaSub, { fontSize: cta.subSize, lineHeight: cta.subLineHeight }]} numberOfLines={1}>
                      {loading && chaptersAsc.length === 0
                        ? "جاري تجهيز قائمة الفصول..."
                        : totalChaptersCount > 0
                        ? `تصفح جميع الفصول المتوفرة (${totalChaptersCount} فصل)`
                        : "لم تصدر فصول بعد (قيد الترجمة والرفع)"}
                    </Text>
                  </View>
                </View>

                <View style={[styles.chaptersCtaPill, { paddingHorizontal: cta.pillPadH, paddingVertical: cta.pillPadV, borderRadius: cta.pillRadius }]}>
                  <Text style={[styles.chaptersCtaPillText, { fontSize: cta.pillTextSize }]}>
                    {totalChaptersCount > 0 ? `${totalChaptersCount} فصل` : "الفصول"}
                  </Text>
                  <Ionicons name="chevron-back" size={13} color="#FFFFFF" />
                </View>
              </Pressable>
            );
          })()}
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
                hasTVPreferredFocus={tvMode}
                style={({ focused }) => [
                  styles.chaptersBackBtn,
                  { backgroundColor: colors.background, borderColor: colors.border },
                  tvMode && tvFocusStyle(focused),
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
                  focusable={false}
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
                const dateLabel = formatArabicChapterDate(ch.createdAt || ch.date);
                const isDownloaded = downloadedMap.has(ch.slug);
                const activeDl = activeDownloadsMap.get(ch.slug);
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
                              : isDownloaded
                                ? "rgba(16, 185, 129, 0.14)"
                                : "rgba(56, 189, 248, 0.12)",
                            borderColor: isCurrent
                              ? "rgba(245, 158, 11, 0.45)"
                              : isDownloaded
                                ? "rgba(16, 185, 129, 0.42)"
                                : "rgba(56, 189, 248, 0.28)",
                          },
                        ]}
                      >
                        <Text
                          style={[
                            styles.chapterNumBadgeText,
                            isCurrent && { color: "#FBBF24" },
                            !isCurrent && isDownloaded && { color: "#10B981" },
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
                          {dateLabel
                            ? `📅 ${dateLabel}${isDownloaded ? " • بدون إنترنت" : ""}`
                            : isDownloaded
                              ? "متاح للقراءة بدون إنترنت ✓"
                              : "مترجم بالعربية"}
                        </Text>
                      </View>
                    </View>

                    <View style={[styles.chapterLeft, { gap: 8 }]}>
                      <Pressable
                        onPress={(e: any) => {
                          e?.stopPropagation?.();
                          void handleChapterDownload(ch);
                        }}
                        hitSlop={6}
                        accessibilityRole="button"
                        accessibilityLabel={isDownloaded ? "الفصل محمّل" : "تحميل الفصل للقراءة بدون إنترنت"}
                        style={{
                          flexDirection: "row",
                          alignItems: "center",
                          gap: 4,
                          paddingHorizontal: 8,
                          paddingVertical: 5,
                          borderRadius: 8,
                          borderWidth: 1,
                          backgroundColor: isDownloaded
                            ? "rgba(16, 185, 129, 0.14)"
                            : activeDl
                              ? "rgba(245, 158, 11, 0.14)"
                              : "rgba(56, 189, 248, 0.10)",
                          borderColor: isDownloaded
                            ? "rgba(16, 185, 129, 0.42)"
                            : activeDl
                              ? "rgba(245, 158, 11, 0.42)"
                              : "rgba(56, 189, 248, 0.28)",
                        }}
                      >
                        {activeDl ? (
                          <>
                            <ActivityIndicator size={12} color="#F59E0B" />
                            <Text style={{ fontSize: 10.5, fontFamily: "Cairo_700Bold", color: "#F59E0B" }}>
                              {activeDl.progress}%
                            </Text>
                          </>
                        ) : isDownloaded ? (
                          <>
                            <Ionicons name="checkmark-circle" size={14} color="#10B981" />
                            <Text style={{ fontSize: 10.5, fontFamily: "Cairo_700Bold", color: "#10B981" }}>
                              محمّل
                            </Text>
                          </>
                        ) : (
                          <Ionicons name="download-outline" size={15} color={colors.homeAccent} />
                        )}
                      </Pressable>
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
            focusable={false}
            accessible={false}
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
                hasTVPreferredFocus={tvMode}
                style={({ focused }) => [styles.modalCloseBtn, tvMode && tvFocusStyle(focused)]}
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

      {/* ── Full-Screen Manga & Webtoon Reader Modal ── */}
      <Modal
        visible={readerOpen}
        animationType="slide"
        presentationStyle="fullScreen"
        supportedOrientations={["portrait", "portrait-upside-down", "landscape", "landscape-left", "landscape-right"]}
        statusBarTranslucent={readerSettings.fullscreen}
        onRequestClose={() => setReaderOpen(false)}
      >
        <View style={[styles.readerScreen, { backgroundColor: readerTheme.bg }]}>
          <StatusBar
            hidden={readerOpen && readerSettings.fullscreen && !readerChromeVisible}
            barStyle={readerTheme.isLight ? "dark-content" : "light-content"}
            translucent={readerSettings.fullscreen}
            animated
          />
          <Animated.View
            pointerEvents={!readerSettings.fullscreen || readerChromeVisible ? "auto" : "none"}
            style={[
              styles.readerHeader,
              readerSettings.fullscreen && styles.readerHeaderFloating,
              {
                opacity: readerChromeOpacity,
                paddingTop: insets.top + 8,
                backgroundColor: readerTheme.chromeBg,
                borderBottomColor: readerTheme.border,
              },
            ]}
          >
              <View style={styles.readerHeaderRight}>
                <Pressable
                  onPress={() => setReaderOpen(false)}
                  hasTVPreferredFocus={tvMode}
                  style={({ focused }) => [
                    styles.readerBackBtn,
                    {
                      backgroundColor: readerTheme.isLight
                        ? "rgba(17,19,24,0.08)"
                        : "rgba(255,255,255,0.10)",
                      borderColor: readerTheme.border,
                    },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons name="arrow-forward" size={20} color={readerTheme.text} />
                </Pressable>
                <View style={styles.readerTitleCol}>
                  <Text
                    style={[styles.readerHeaderTitle, { color: readerTheme.text }]}
                    numberOfLines={1}
                  >
                    {activeChapter
                      ? activeChapter.title || `الفصل ${formatChapterNumber(activeChapter)}`
                      : primaryTitle}
                  </Text>
                  <Text
                    style={[styles.readerHeaderSub, { color: readerTheme.muted }]}
                    numberOfLines={1}
                  >
                    {primaryTitle}{" "}
                    {readingOffline
                      ? `• بدون إنترنت (${offlineLocalPages.length || 1} صفحة)`
                      : chapterContentType === "text"
                        ? "• قراءة نصية"
                        : chapterPages.length > 0
                          ? `• ${chapterPages.length} صفحة`
                          : ""}
                  </Text>
                </View>
              </View>

              <View style={{ flexDirection: "row", alignItems: "center", gap: 6 }}>
                {activeChapter ? (() => {
                  const isDl = downloadedMap.has(activeChapter.slug);
                  const actDl = activeDownloadsMap.get(activeChapter.slug);
                  return (
                    <Pressable
                      onPress={() => void handleChapterDownload(activeChapter)}
                      style={[
                        styles.qualityPill,
                        isDl && {
                          borderColor: "rgba(16,185,129,0.5)",
                          backgroundColor: "rgba(16,185,129,0.16)",
                        },
                      ]}
                    >
                      {actDl ? (
                        <>
                          <ActivityIndicator size={11} color="#FBBF24" />
                          <Text style={styles.qualityPillText}>{actDl.progress}%</Text>
                        </>
                      ) : (
                        <>
                          <Ionicons
                            name={isDl ? "checkmark-circle" : "download-outline"}
                            size={13}
                            color={isDl ? "#34D399" : "#38BDF8"}
                          />
                          <Text style={[styles.qualityPillText, isDl && { color: "#34D399" }]}>
                            {isDl ? "محمّل" : "تحميل"}
                          </Text>
                        </>
                      )}
                    </Pressable>
                  );
                })() : null}

                <Pressable
                  onPress={() => setChapterPickerVisible(true)}
                  style={styles.qualityPill}
                >
                  <Ionicons name="list" size={13} color="#FBBF24" />
                  <Text style={styles.qualityPillText}>الفصول</Text>
                </Pressable>

                <Pressable
                  onPress={() => setReaderSettingsOpen(true)}
                  accessibilityLabel="إعدادات القارئ"
                  focusable={tvMode}
                  style={({ pressed, focused }) => [
                    styles.readerSettingsBtn,
                    {
                      backgroundColor: readerTheme.isLight
                        ? "rgba(217,119,6,0.12)"
                        : "rgba(255,255,255,0.09)",
                      borderColor: readerTheme.border,
                    },
                    pressed && { opacity: 0.78 },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons
                    name="options-outline"
                    size={18}
                    color={readerTheme.accent}
                  />
                </Pressable>
              </View>
            </Animated.View>

          {pagesLoading ? (
            <View style={styles.readerCenter}>
              <ActivityIndicator size="large" color={readerTheme.accent} />
              <Text style={[styles.readerLoadingText, { color: readerTheme.text }]}>
                جاري تحميل محتوى الفصل...
              </Text>
            </View>
          ) : pagesError ? (
            <View style={styles.readerCenter}>
              <View style={styles.readerFallbackBody}>
                <Ionicons name="alert-circle-outline" size={44} color={readerTheme.accent} />
                <Text style={[styles.readerErrorTitle, { color: readerTheme.text }]}>
                  {pagesError}
                </Text>
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
          ) : readingOffline && chapterContentType === "images" && offlineLocalPages.length > 0 ? (
            <FlatList
              key={`offline-${activeChapter?.slug || "ch"}-${readerLayoutFamily}`}
              data={offlineLocalPages}
              keyExtractor={(uri, idx) => `offline-page-${idx}-${uri}`}
              horizontal={offlineIsHorizontal}
              inverted={effectiveReadingMode === "rtl" || effectiveReadingMode === "continuous_rtl"}
              pagingEnabled={offlineIsPaged}
              style={{ flex: 1, backgroundColor: readerTheme.bg }}
              showsVerticalScrollIndicator={!offlineIsHorizontal}
              showsHorizontalScrollIndicator={offlineIsHorizontal}
              initialNumToRender={4}
              maxToRenderPerBatch={4}
              windowSize={5}
              removeClippedSubviews={false}
              viewabilityConfig={offlineViewabilityConfig}
              onViewableItemsChanged={handleOfflineViewableItemsChanged}
              renderItem={({ item: localUri, index }) => (
                <OfflinePageImage
                  uri={localUri}
                  screenWidth={width}
                  screenHeight={height}
                  backgroundColor={readerTheme.bg}
                  sidePadding={readerSettings.sidePadding}
                  cropBorders={readerSettings.cropBorders}
                  isPaged={offlineIsPaged}
                  isContinuousGap={effectiveReadingMode === "continuous_vertical"}
                  pageIndex={index}
                  totalPages={offlineLocalPages.length}
                  longPressEnabled={readerSettings.longPressInfo}
                  onTapCenter={handleToggleReaderChrome}
                  onLongPressPage={(payload) => setLongPressPageInfo(payload)}
                />
              )}
              ListFooterComponent={
                <View
                  style={{
                    padding: 28,
                    alignItems: "center",
                    justifyContent: "center",
                    gap: 14,
                    backgroundColor: readerTheme.surface,
                    minWidth: offlineIsHorizontal ? width : undefined,
                    minHeight: offlineIsHorizontal ? height : undefined,
                  }}
                >
                  <View
                    style={{
                      paddingHorizontal: 14,
                      paddingVertical: 6,
                      borderRadius: 999,
                      backgroundColor: "rgba(16,185,129,0.16)",
                      borderWidth: 1,
                      borderColor: "rgba(16,185,129,0.4)",
                    }}
                  >
                    <Text style={{ color: "#34D399", fontSize: 13, fontFamily: "Cairo_700Bold" }}>
                      ✓ نهاية{" "}
                      {activeChapter
                        ? activeChapter.title || `الفصل ${formatChapterNumber(activeChapter)}`
                        : "الفصل"}{" "}
                      (قراءة بدون إنترنت)
                    </Text>
                  </View>
                  {nextChapter ? (
                    <Pressable
                      onPress={() => openChapterInApp(nextChapter)}
                      style={{
                        backgroundColor: "#F59E0B",
                        paddingHorizontal: 22,
                        paddingVertical: 11,
                        borderRadius: 12,
                      }}
                    >
                      <Text style={{ color: "#09090B", fontSize: 14, fontFamily: "Cairo_700Bold" }}>
                        الانتقال إلى الفصل التالي ({formatChapterNumber(nextChapter)}) ←
                      </Text>
                    </Pressable>
                  ) : null}
                </View>
              }
            />
          ) : (
            <WebView
              ref={readerWebViewRef}
              key={`${activeChapter?.slug || "ch"}-${chapterContentType}-${chapterPages.length}-${chapterTextHtml.length}-${readerLayoutFamily}-${chapterContentType === "text" ? readerSettings.background : "img"}`}
              style={{ flex: 1, backgroundColor: readerTheme.bg }}
              originWhitelist={["*"]}
              source={{
                html: readerWebViewHtml,
                baseUrl:
                  currentSource === "manhwa"
                    ? "https://azorafly.com/"
                    : "https://mangalik.net/",
              }}
              scalesPageToFit={false}
              setBuiltInZoomControls={false}
              setDisplayZoomControls={false}
              showsVerticalScrollIndicator={!isHorizontalReadingMode(effectiveReadingMode)}
              showsHorizontalScrollIndicator={isHorizontalReadingMode(effectiveReadingMode)}
              bounces={false}
              overScrollMode="never"
              javaScriptEnabled={true}
              domStorageEnabled={true}
              mixedContentMode="always"
              onLoadEnd={() => {
                if (chapterContentType === "images" && readerWebViewRef.current) {
                  readerWebViewRef.current.injectJavaScript(
                    buildApplyReaderSettingsScript(readerSettingsRef.current, effectiveReadingMode)
                  );
                }
              }}
              onMessage={(event) => {
                const rawMsg = String(event?.nativeEvent?.data || "");
                if (rawMsg === "NEXT_CHAPTER") {
                  if (nextChapter) openChapterInApp(nextChapter);
                  return;
                }
                try {
                  const parsed = JSON.parse(rawMsg);
                  if (parsed?.type === "NEXT_CHAPTER" && nextChapter) {
                    openChapterInApp(nextChapter);
                  } else if (parsed?.type === "TOGGLE_CHROME") {
                    handleToggleReaderChrome();
                  } else if (parsed?.type === "PAGE_CHANGE" && typeof parsed.page === "number") {
                    setReaderCurrentPage(parsed.page);
                  } else if (parsed?.type === "PAGE_LONG_PRESS" && readerSettingsRef.current.longPressInfo) {
                    setLongPressPageInfo({
                      page: Number(parsed.page) || 1,
                      total: Number(parsed.total) || chapterPages.length,
                      url: String(parsed.url || ""),
                      naturalWidth: Number(parsed.naturalWidth) || 0,
                      naturalHeight: Number(parsed.naturalHeight) || 0,
                      loaded: !!parsed.loaded,
                      isOffline: false,
                    });
                  }
                } catch {
                  // Ignore non-JSON bridge messages
                }
              }}
            />
          )}

          {/* Subtle Floating Page Number Indicator */}
          {readerSettings.showPageNumber &&
            !pagesLoading &&
            !pagesError &&
            chapterContentType === "images" &&
            (readingOffline ? offlineLocalPages.length : chapterPages.length) > 0 && (
              <View
                pointerEvents="none"
                style={[
                  styles.pageNumberBadge,
                  {
                    bottom:
                      !readerSettings.fullscreen || readerChromeVisible
                        ? Math.max(insets.bottom, 12) + 66
                        : Math.max(insets.bottom, 14) + 8,
                    backgroundColor: readerTheme.badgeBg,
                    borderColor: readerTheme.badgeBorder,
                  },
                ]}
              >
                <Text style={[styles.pageNumberBadgeText, { color: readerTheme.badgeText }]}>
                  {readerCurrentPage} / {readingOffline ? offlineLocalPages.length : chapterPages.length}
                </Text>
              </View>
            )}

          <Animated.View
            pointerEvents={!readerSettings.fullscreen || readerChromeVisible ? "auto" : "none"}
            style={[
              styles.readerBottomBar,
              readerSettings.fullscreen && styles.readerBottomBarFloating,
              {
                opacity: readerChromeOpacity,
                paddingBottom: Math.max(insets.bottom, 12),
                backgroundColor: readerTheme.chromeBg,
                borderTopColor: readerTheme.border,
              },
            ]}
          >
              <Pressable
                disabled={!prevChapter}
                focusable={tvMode}
                onPress={() => {
                  if (prevChapter) openChapterInApp(prevChapter);
                }}
                style={({ focused }) => [
                  styles.readerNavBtn,
                  styles.readerPrevBtn,
                  {
                    opacity: prevChapter ? 1 : 0.35,
                    backgroundColor: readerTheme.isLight
                      ? "rgba(17,19,24,0.08)"
                      : "rgba(255,255,255,0.10)",
                    borderColor: readerTheme.border,
                  },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="chevron-forward" size={16} color={readerTheme.text} />
                <Text style={[styles.readerNavBtnText, { color: readerTheme.text }]}>
                  {prevChapter ? `السابق (${formatChapterNumber(prevChapter)})` : "الفصل الأول"}
                </Text>
              </Pressable>

              {tvMode && !pagesLoading && !pagesError && (
                <>
                  <Pressable
                    focusable={true}
                    accessibilityLabel="تمرير الصفحة لأعلى"
                    onPress={() => {
                      readerWebViewRef.current?.injectJavaScript(buildScrollReaderScript("up"));
                    }}
                    style={({ focused }) => [styles.readerChapterSelectBtn, tvFocusStyle(focused)]}
                  >
                    <Ionicons name="chevron-up" size={17} color="#FBBF24" />
                  </Pressable>
                  <Pressable
                    focusable={true}
                    hasTVPreferredFocus={!nextChapter}
                    accessibilityLabel="تمرير الصفحة لأسفل"
                    onPress={() => {
                      readerWebViewRef.current?.injectJavaScript(buildScrollReaderScript("down"));
                    }}
                    style={({ focused }) => [styles.readerChapterSelectBtn, tvFocusStyle(focused)]}
                  >
                    <Ionicons name="chevron-down" size={17} color="#FBBF24" />
                  </Pressable>
                </>
              )}

              <Pressable
                focusable={tvMode}
                onPress={() => setChapterPickerVisible(true)}
                style={({ focused }) => [styles.readerChapterSelectBtn, tvMode && tvFocusStyle(focused)]}
              >
                <Ionicons name="albums-outline" size={15} color="#FBBF24" />
                <Text style={styles.readerChapterSelectText}>
                  {activeChapter ? `فصل ${formatChapterNumber(activeChapter)}` : "الفصول"}
                </Text>
              </Pressable>

              <Pressable
                disabled={!nextChapter}
                focusable={tvMode}
                onPress={() => {
                  if (nextChapter) openChapterInApp(nextChapter);
                }}
                style={({ focused }) => [
                  styles.readerNavBtn,
                  styles.readerNextBtn,
                  { opacity: nextChapter ? 1 : 0.35 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text style={[styles.readerNavBtnText, { color: "#09090B" }]}>
                  {nextChapter ? `التالي (${formatChapterNumber(nextChapter)})` : "آخر فصل"}
                </Text>
                <Ionicons name="chevron-back" size={16} color="#09090B" />
              </Pressable>
            </Animated.View>

          {/* Elegant Reader Settings Bottom Sheet (Mobile Only) */}
          <MangaReaderSettingsSheet
            visible={readerSettingsOpen}
            mangaTitle={primaryTitle}
            mangaSource={currentSource}
            countryOfOrigin={manga?.countryOfOrigin}
            selectedReadingMode={selectedReadingMode}
            effectiveReadingMode={effectiveReadingMode}
            settings={readerSettings}
            onSelectReadingMode={handleSelectReadingMode}
            onUpdateSettings={handleUpdateReaderSettings}
            onResetDefaults={handleResetReaderSettings}
            onClose={() => setReaderSettingsOpen(false)}
          />

          {/* Sleek Long-Press Page Info Sheet */}
          <MangaPageInfoSheet
            info={longPressPageInfo}
            effectiveMode={effectiveReadingMode}
            color32Bit={readerSettings.color32Bit}
            onReloadPage={(pageNum) => {
              readerWebViewRef.current?.injectJavaScript(buildReloadReaderPageScript(pageNum));
            }}
            onOpenExternal={(url) => {
              Linking.openURL(url).catch(() => {});
            }}
            onClose={() => setLongPressPageInfo(null)}
          />
        </View>
      </Modal>

      <WatchlistStatusModal
        visible={showWatchlist}
        title={arabicTitle || primaryTitle}
        thumbnail={cover || undefined}
        currentStatus={currentWatchStatus}
        isSaved={isFav}
        onSelect={handleSelectWatchStatus}
        onRemove={isFav ? () => void removeFavorite(favNumericId) : undefined}
        onClose={() => setShowWatchlist(false)}
      />
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
    color: "#FFFFFF",
    fontSize: 10.5,
    fontFamily: "Cairo_700Bold",
  },
  title: {
    fontSize: 19,
    lineHeight: 26,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    writingDirection: "rtl",
    width: "100%",
    textShadowColor: "rgba(0,0,0,0.75)",
    textShadowOffset: { width: 0, height: 1 },
    textShadowRadius: 4,
  },
  subTitle: {
    fontSize: 12.5,
    lineHeight: 18,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    width: "100%",
    textShadowColor: "rgba(0,0,0,0.65)",
    textShadowOffset: { width: 0, height: 1 },
    textShadowRadius: 3,
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
    backgroundColor: "rgba(255,255,255,0.14)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.20)",
    borderRadius: 999,
    paddingHorizontal: 9,
    paddingVertical: 4,
  },
  statText: {
    color: "#FFFFFF",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  /* Primary CTA Button: قراءة الفصول */
  ctaWrap: {
    paddingHorizontal: 16,
    marginTop: 12,
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
    backgroundColor: "rgba(255,255,255,0.18)",
    alignItems: "center",
    justifyContent: "center",
  },
  chaptersCtaTextWrap: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  chaptersCtaTitle: {
    color: "#FFFFFF",
    fontSize: 15,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  chaptersCtaSub: {
    color: "rgba(255,255,255,0.88)",
    fontSize: 10.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    marginTop: 1,
  },
  chaptersCtaPill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 4,
    backgroundColor: "rgba(255,255,255,0.18)",
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 999,
  },
  chaptersCtaPillText: {
    color: "#FFFFFF",
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
  readerSettingsBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  readerHeaderFloating: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
  },
  readerBottomBarFloating: {
    position: "absolute",
    bottom: 0,
    left: 0,
    right: 0,
  },
  pageNumberBadge: {
    position: "absolute",
    left: 14,
    paddingHorizontal: 11,
    paddingVertical: 4,
    borderRadius: 10,
    borderWidth: 1,
    zIndex: 400,
    elevation: 10,
  },
  pageNumberBadgeText: {
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
    letterSpacing: 0.4,
  },
});

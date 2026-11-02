import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
  Image,
  Modal,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";
import { translateMangaGenre } from "@/utils/mangaLocalization";
import { TvPressable as Pressable } from "@/utils/tv";

const IS_RTL = I18nManager.isRTL;
const ROW_RTL = (IS_RTL ? "row" : "row-reverse") as "row" | "row-reverse";
const ROW_LTR = (IS_RTL ? "row-reverse" : "row") as "row" | "row-reverse";
const ALIGN_RIGHT = (IS_RTL ? "flex-start" : "flex-end") as "flex-start" | "flex-end";

type MangaChapter = {
  id: string;
  slug: string;
  number: string;
  title?: string;
  date?: string;
};

type MangaDetailData = {
  id: string;
  slug: string;
  source: "manga" | "manhwa";
  arabicTitle?: string;
  englishTitle?: string;
  arTitle?: string;
  enTitle?: string;
  title?: string | {
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

function MangaPageItem({
  uri,
  pageIndex,
  totalPages,
  screenWidth,
}: {
  uri: string;
  pageIndex: number;
  totalPages: number;
  screenWidth: number;
}) {
  const [aspectRatio, setAspectRatio] = useState<number>(0.7);
  const [loaded, setLoaded] = useState(false);
  const [failed, setFailed] = useState(false);
  const [retrySeed, setRetrySeed] = useState(0);

  const effectiveUri = retrySeed > 0
    ? `${uri}${uri.includes("?") ? "&" : "?"}r=${retrySeed}`
    : uri;

  useEffect(() => {
    setLoaded(false);
    setFailed(false);
  }, [effectiveUri]);

  const computedHeight = Math.max(240, Math.round(screenWidth / Math.max(0.18, aspectRatio)));

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
  const { id } = useLocalSearchParams<{ id: string }>();
  const router = useRouter();
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const { width, height } = useWindowDimensions();

  const decodedId = useMemo(() => {
    try {
      return decodeURIComponent(String(id || ""));
    } catch {
      return String(id || "");
    }
  }, [id]);

  const [manga, setManga] = useState<MangaDetailData | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(false);

  const [chaptersDesc, setChaptersDesc] = useState(true);
  const [chapterSearch, setChapterSearch] = useState("");
  const [chapterPickerVisible, setChapterPickerVisible] = useState(false);

  const [readerOpen, setReaderOpen] = useState(false);
  const [activeChapter, setActiveChapter] = useState<MangaChapter | null>(null);
  const [chapterPages, setChapterPages] = useState<string[]>([]);
  const [pagesLoading, setPagesLoading] = useState(false);
  const [pagesError, setPagesError] = useState<string | null>(null);

  const readerListRef = useRef<FlatList<string>>(null);

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
      if (!manga) return;
      setPagesLoading(true);
      setPagesError(null);
      setChapterPages([]);
      try {
        const qs = new URLSearchParams({
          id: manga.id,
          chapter: chapter.slug,
          source: manga.source,
        });
        const res = await fetch(`${getBaseUrl()}/api/manga/chapter?${qs.toString()}`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const data = await res.json();
        const pages: string[] = Array.isArray(data?.pages)
          ? data.pages
              .map((p: any) => (typeof p === "string" ? p : p?.url || ""))
              .filter(Boolean)
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
    [manga]
  );

  const openChapterInApp = useCallback(
    (chapter: MangaChapter) => {
      setActiveChapter(chapter);
      setReaderOpen(true);
      void loadChapterPages(chapter);
    },
    [loadChapterPages]
  );

  // Chapters sorted ascending by numeric order for prev/next navigation
  const chaptersAsc = useMemo(() => {
    const raw = manga?.chapters || [];
    return [...raw].sort((a, b) => {
      const na = parseFloat(a.number);
      const nb = parseFloat(b.number);
      if (!Number.isNaN(na) && !Number.isNaN(nb) && na !== nb) return na - nb;
      return String(a.number).localeCompare(String(b.number), undefined, { numeric: true });
    });
  }, [manga?.chapters]);

  const displayedChapters = useMemo(() => {
    const ordered = chaptersDesc ? [...chaptersAsc].reverse() : chaptersAsc;
    const q = chapterSearch.trim().toLowerCase();
    if (!q) return ordered;
    return ordered.filter(
      (ch) =>
        String(ch.number).toLowerCase().includes(q) ||
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

  if (loading) {
    return (
      <View style={[styles.center, { backgroundColor: colors.background }]}>
        <ActivityIndicator size="large" color={colors.homeAccent} />
        <Text style={[styles.loadingLabel, { color: colors.textSecondary }]}>جاري تحميل تفاصيل العمل...</Text>
      </View>
    );
  }

  if (error || !manga) {
    return (
      <View style={[styles.center, { backgroundColor: colors.background }]}>
        <Ionicons name="alert-circle-outline" size={44} color={colors.textMuted} />
        <Text style={[styles.errorText, { color: colors.textSecondary }]}>تعذر تحميل تفاصيل المانجا</Text>
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

  const rawTitleStr = typeof manga.title === "string" ? manga.title : "";
  const rawTitleObj = typeof manga.title === "object" && manga.title ? manga.title : undefined;
  const primaryTitle =
    manga.arabicTitle ||
    manga.arTitle ||
    rawTitleStr ||
    rawTitleObj?.native ||
    manga.englishTitle ||
    manga.enTitle ||
    rawTitleObj?.english ||
    "بدون عنوان";
  const enCandidate = manga.englishTitle || manga.enTitle || rawTitleObj?.english || rawTitleObj?.romaji || "";
  const secondaryTitle = enCandidate && enCandidate !== primaryTitle ? enCandidate : "";
  const cover = manga.poster || manga.cover || manga.coverImage?.extraLarge || manga.coverImage?.large || "";
  const banner = manga.bannerImage || manga.banner || cover;
  const score = typeof manga.averageScore === "number" && manga.averageScore > 0
    ? (manga.averageScore / 10).toFixed(1)
    : null;
  const arabicSynopsis = manga.description?.trim() || "لا يتوفر ملخص عربي لهذا العمل حالياً.";
  const firstChapter = chaptersAsc[0] || null;
  const latestChapter = chaptersAsc[chaptersAsc.length - 1] || null;

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <ScrollView contentContainerStyle={{ paddingBottom: insets.bottom + 44 }} showsVerticalScrollIndicator={false}>
        {/* Hero Header */}
        <View style={styles.heroWrap}>
          {banner ? (
            <Image source={{ uri: banner }} style={StyleSheet.absoluteFill} resizeMode="cover" blurRadius={6} />
          ) : null}
          <LinearGradient
            colors={["rgba(9,9,11,0.3)", "rgba(9,9,11,0.84)", colors.background]}
            style={StyleSheet.absoluteFill}
          />

          <View style={[styles.topBar, { paddingTop: insets.top + 10 }]}>
            <Pressable onPress={() => router.back()} style={styles.iconBtn}>
              <Ionicons name="arrow-forward" size={21} color="#fff" />
            </Pressable>
            <View style={styles.sourceBadge}>
              <Ionicons name="book" size={12} color="#FBBF24" />
              <Text style={styles.sourceBadgeText}>
                {manga.source === "manhwa" ? "أزورا مانجا • مانهوا" : "مانجا دار • مانجا"}
              </Text>
            </View>
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
                <Text style={styles.typeBadgeText}>{originLabel(manga.source, manga.countryOfOrigin)}</Text>
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
                  <Text style={styles.statText}>{STATUS_AR[manga.status || ""] || "مستمرة"}</Text>
                </View>
                <View style={styles.statPill}>
                  <Ionicons name="layers-outline" size={13} color="#60A5FA" />
                  <Text style={styles.statText}>{chaptersAsc.length} فصل</Text>
                </View>
              </View>
            </View>
          </View>
        </View>

        {/* Action Buttons: Start Reading First / Latest Chapter */}
        <View style={styles.actionsWrap}>
          <Pressable
            onPress={() => {
              if (firstChapter) openChapterInApp(firstChapter);
            }}
            disabled={!firstChapter}
            style={[
              styles.readPrimaryBtn,
              {
                backgroundColor: colors.homeAccent || "#F59E0B",
                opacity: firstChapter ? 1 : 0.5,
              },
            ]}
          >
            <Ionicons name="book" size={18} color="#09090B" />
            <Text style={styles.readPrimaryBtnText}>
              {firstChapter ? `ابدأ القراءة (فصل ${firstChapter.number})` : "لا تتوفر فصول"}
            </Text>
          </Pressable>

          {latestChapter && latestChapter.slug !== firstChapter?.slug && (
            <Pressable
              onPress={() => openChapterInApp(latestChapter)}
              style={[
                styles.SelectSourceBtn,
                { backgroundColor: colors.surface, borderColor: colors.border },
              ]}
            >
              <Ionicons name="flash-outline" size={16} color={colors.homeAccent} />
              <Text style={[styles.SelectSourceBtnText, { color: colors.textPrimary }]}>
                آخر فصل ({latestChapter.number})
              </Text>
            </Pressable>
          )}
        </View>

        {/* Genres */}
        {Boolean(manga.genres?.length) && (
          <View style={styles.genresWrap}>
            {manga.genres.map((g, idx) => (
              <View key={`${g}-${idx}`} style={[styles.genreChip, { backgroundColor: colors.surface, borderColor: colors.border }]}>
                <Text style={[styles.genreText, { color: colors.textSecondary }]}>{translateMangaGenre(g)}</Text>
              </View>
            ))}
          </View>
        )}

        {/* Info Grid */}
        <View style={[styles.sectionCard, { backgroundColor: colors.surface, borderColor: colors.border }]}>
          <Text style={[styles.sectionTitle, { color: colors.textPrimary }]}>معلومات العمل</Text>
          <View style={styles.infoGrid}>
            <View style={styles.infoItem}>
              <Text style={[styles.infoLabel, { color: colors.textMuted }]}>التصنيف</Text>
              <Text style={[styles.infoValue, { color: colors.textPrimary }]}>
                {originLabel(manga.source, manga.countryOfOrigin)}
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Text style={[styles.infoLabel, { color: colors.textMuted }]}>الحالة</Text>
              <Text style={[styles.infoValue, { color: colors.textPrimary }]}>
                {STATUS_AR[manga.status || ""] || "مستمرة"}
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Text style={[styles.infoLabel, { color: colors.textMuted }]}>عدد الفصول</Text>
              <Text style={[styles.infoValue, { color: colors.textPrimary }]}>
                {chaptersAsc.length > 0 ? `${chaptersAsc.length} فصل` : "غير محدد"}
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Text style={[styles.infoLabel, { color: colors.textMuted }]}>المؤلف / الرسام</Text>
              <Text style={[styles.infoValue, { color: colors.textPrimary }]} numberOfLines={1}>
                {manga.author || manga.artist || "غير محدد"}
              </Text>
            </View>
          </View>
        </View>

        {/* Arabic Synopsis */}
        <View style={[styles.sectionCard, { backgroundColor: colors.surface, borderColor: colors.border }]}>
          <View style={styles.synopsisHeaderRow}>
            <Text style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}>القصة</Text>
            <View style={styles.arTag}>
              <Ionicons name="language-outline" size={12} color="#FBBF24" />
              <Text style={styles.arTagText}>مترجمة بالعربية</Text>
            </View>
          </View>
          <Text style={[styles.synopsisText, { color: colors.textSecondary }]}>{arabicSynopsis}</Text>
        </View>

        {/* Chapters List Section */}
        <View style={styles.chaptersSection}>
          <View style={styles.chaptersHeaderRow}>
            <View style={styles.chaptersTitleRow}>
              <Text style={[styles.sectionTitle, { color: colors.textPrimary, marginBottom: 0 }]}>
                الفصول المتوفرة
              </Text>
              <View style={styles.chaptersCountBadge}>
                <Text style={styles.chaptersCountText}>{chaptersAsc.length}</Text>
              </View>
            </View>

            <View style={styles.chaptersFilterRow}>
              <Pressable
                onPress={() => setChaptersDesc((d) => !d)}
                style={[styles.sortBtn, { borderColor: colors.border, backgroundColor: colors.surface }]}
              >
                <Ionicons name="swap-vertical" size={13} color={colors.textSecondary} />
                <Text style={[styles.sortBtnText, { color: colors.textSecondary }]}>
                  {chaptersDesc ? "الأحدث أولاً" : "الأقدم أولاً"}
                </Text>
              </Pressable>
            </View>
          </View>

          {chaptersAsc.length > 8 && (
            <View style={[styles.chapterSearchBox, { backgroundColor: colors.surface, borderColor: colors.border }]}>
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

          {displayedChapters.length === 0 ? (
            <View style={[styles.emptyBox, { backgroundColor: colors.surface, borderColor: colors.border }]}>
              <Ionicons name="book-outline" size={28} color={colors.textMuted} />
              <Text style={[styles.emptyBoxText, { color: colors.textSecondary }]}>
                لا توجد فصول مطابقة حالياً.
              </Text>
            </View>
          ) : (
            displayedChapters.map((ch) => (
              <Pressable
                key={ch.id}
                onPress={() => openChapterInApp(ch)}
                style={[
                  styles.chapterCard,
                  {
                    backgroundColor: colors.surface,
                    borderColor: "rgba(245,158,11,0.32)",
                  },
                ]}
              >
                <View style={styles.chapterRight}>
                  <View
                    style={[
                      styles.chapterIconWrap,
                      {
                        backgroundColor: "rgba(245,158,11,0.16)",
                        borderColor: "rgba(245,158,11,0.45)",
                      },
                    ]}
                  >
                    <Ionicons name="book" size={15} color="#FBBF24" />
                  </View>
                  <View style={styles.chapterTexts}>
                    <Text style={[styles.chapterTitle, { color: colors.textPrimary }]} numberOfLines={1}>
                      {ch.title || `الفصل ${ch.number}`}
                    </Text>
                    <Text style={[styles.chapterSub, { color: colors.textMuted }]} numberOfLines={1}>
                      {[
                        manga.source === "manhwa" ? "أزورا مانجا" : "مانجا دار",
                        ch.date ? ch.date : null,
                      ]
                        .filter(Boolean)
                        .join(" • ")}
                    </Text>
                  </View>
                </View>

                <View style={styles.chapterLeft}>
                  <Text style={styles.chapterTranslatedLabel}>قراءة</Text>
                  <Ionicons name="chevron-back" size={17} color="#FBBF24" />
                </View>
              </Pressable>
            ))
          )}
        </View>
      </ScrollView>

      {/* Chapter Picker Modal */}
      <Modal
        visible={chapterPickerVisible}
        transparent
        animationType="fade"
        onRequestClose={() => setChapterPickerVisible(false)}
      >
        <View style={styles.modalBackdrop}>
          <View style={[styles.pickerModal, { backgroundColor: "#121217", borderColor: colors.border, maxHeight: height * 0.72 }]}>
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
              keyExtractor={(item) => item.id}
              contentContainerStyle={{ padding: 12, gap: 8 }}
              renderItem={({ item }) => {
                const isSelected = activeChapter?.slug === item.slug;
                return (
                  <Pressable
                    onPress={() => {
                      setChapterPickerVisible(false);
                      openChapterInApp(item);
                    }}
                    style={[
                      styles.pickerItem,
                      {
                        backgroundColor: isSelected ? "rgba(245,158,11,0.18)" : "rgba(255,255,255,0.04)",
                        borderColor: isSelected ? "#F59E0B" : "rgba(255,255,255,0.08)",
                      },
                    ]}
                  >
                    <Text style={[styles.pickerItemText, { color: isSelected ? "#FBBF24" : "#f4f4f5" }]}>
                      {item.title || `الفصل ${item.number}`}
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

      {/* Full-Screen Vertical Reader Modal */}
      <Modal
        visible={readerOpen}
        animationType="slide"
        presentationStyle="fullScreen"
        onRequestClose={() => setReaderOpen(false)}
      >
        <View style={[styles.readerScreen, { backgroundColor: "#050507" }]}>
          {/* Reader Top Bar */}
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
                  {activeChapter ? activeChapter.title || `الفصل ${activeChapter.number}` : primaryTitle}
                </Text>
                <Text style={styles.readerHeaderSub} numberOfLines={1}>
                  {primaryTitle} {chapterPages.length > 0 ? `• ${chapterPages.length} صفحة` : ""}
                </Text>
              </View>
            </View>

            <Pressable
              onPress={() => setChapterPickerVisible(true)}
              style={styles.qualityPill}
            >
              <Ionicons name="list" size={13} color="#FBBF24" />
              <Text style={styles.qualityPillText}>الفصول</Text>
            </Pressable>
          </View>

          {/* Reader Body */}
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
            <FlatList
              ref={readerListRef}
              data={chapterPages}
              keyExtractor={(uri, index) => `${activeChapter?.slug || "ch"}-${index}-${uri}`}
              showsVerticalScrollIndicator={false}
              initialNumToRender={4}
              maxToRenderPerBatch={4}
              windowSize={7}
              renderItem={({ item: uri, index }) => (
                <MangaPageItem
                  uri={uri}
                  pageIndex={index}
                  totalPages={chapterPages.length}
                  screenWidth={width}
                />
              )}
              ListFooterComponent={
                <View style={styles.readerEndFooter}>
                  <Ionicons name="checkmark-done-circle" size={32} color="#FBBF24" />
                  <Text style={styles.readerEndText}>
                    نهاية {activeChapter ? `الفصل ${activeChapter.number}` : "الفصل"}
                  </Text>
                  {nextChapter && (
                    <Pressable
                      onPress={() => openChapterInApp(nextChapter)}
                      style={[styles.pageRetryBtn, { marginTop: 8, paddingHorizontal: 18, paddingVertical: 10 }]}
                    >
                      <Text style={styles.pageRetryBtnText}>
                        الانتقال إلى الفصل التالي ({nextChapter.number})
                      </Text>
                      <Ionicons name="arrow-back" size={15} color="#09090B" />
                    </Pressable>
                  )}
                </View>
              }
            />
          )}

          {/* Reader Bottom Bar: Chapter Navigation */}
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
                {prevChapter ? `السابق (${prevChapter.number})` : "الفصل الأول"}
              </Text>
            </Pressable>

            <Pressable
              onPress={() => setChapterPickerVisible(true)}
              style={styles.readerChapterSelectBtn}
            >
              <Ionicons name="albums-outline" size={15} color="#FBBF24" />
              <Text style={styles.readerChapterSelectText}>
                {activeChapter ? `فصل ${activeChapter.number}` : "الفصول"}
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
                {nextChapter ? `التالي (${nextChapter.number})` : "آخر فصل"}
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
  heroWrap: { minHeight: 330, justifyContent: "space-between", paddingBottom: 18 },
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
  sourceBadge: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 999,
    backgroundColor: "rgba(0,0,0,0.6)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.4)",
  },
  sourceBadgeText: {
    color: "#FBBF24",
    fontSize: 11,
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
    fontSize: 12,
    lineHeight: 17,
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
  actionsWrap: {
    flexDirection: ROW_RTL,
    paddingHorizontal: 16,
    marginTop: 6,
    marginBottom: 8,
    gap: 10,
  },
  readPrimaryBtn: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    paddingVertical: 13,
    paddingHorizontal: 16,
    borderRadius: 16,
  },
  readPrimaryBtnText: {
    color: "#09090B",
    fontSize: 14,
    fontFamily: "Cairo_700Bold",
  },
  SelectSourceBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    paddingVertical: 13,
    paddingHorizontal: 14,
    borderRadius: 16,
    borderWidth: 1,
  },
  SelectSourceBtnText: {
    fontSize: 12.5,
    fontFamily: "Cairo_700Bold",
  },
  genresWrap: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    paddingHorizontal: 16,
    gap: 8,
    marginTop: 6,
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
  synopsisText: {
    fontSize: 13.5,
    lineHeight: 23,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    writingDirection: "rtl",
  },
  chaptersSection: {
    marginHorizontal: 16,
    marginTop: 4,
  },
  chaptersHeaderRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 12,
    flexWrap: "wrap",
    gap: 8,
  },
  chaptersTitleRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  chaptersCountBadge: {
    backgroundColor: "rgba(245,158,11,0.16)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.38)",
    borderRadius: 999,
    paddingHorizontal: 9,
    paddingVertical: 2,
  },
  chaptersCountText: {
    color: "#FBBF24",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  chaptersFilterRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  sortBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 4,
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 999,
    borderWidth: 1,
  },
  sortBtnText: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
  },
  chapterSearchBox: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    borderRadius: 12,
    borderWidth: 1,
    paddingHorizontal: 12,
    height: 40,
    gap: 8,
    marginBottom: 12,
  },
  chapterSearchInput: {
    flex: 1,
    fontSize: 12.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    paddingVertical: 0,
  },
  emptyBox: {
    borderRadius: 16,
    borderWidth: 1,
    padding: 24,
    alignItems: "center",
    justifyContent: "center",
    gap: 10,
  },
  emptyBoxText: {
    fontSize: 12.5,
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
    borderRadius: 16,
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
    width: 36,
    height: 36,
    borderRadius: 11,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
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
    color: "#FBBF24",
    fontSize: 11,
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

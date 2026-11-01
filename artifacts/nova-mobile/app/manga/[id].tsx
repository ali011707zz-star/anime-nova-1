import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
  Image,
  Modal,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import type { CatalogMedia } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";
import { anilistQuery } from "@/utils/anilist";
import { getBaseUrl } from "@/utils/api";
import { TvPressable } from "@/utils/tv";

const Pressable = TvPressable;
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

type MangaDetail = CatalogMedia & {
  description?: string | null;
  genres?: string[];
  synonyms?: string[];
  bannerImage?: string | null;
};

type ChapterItem = {
  number: number;
  titleAr: string;
  subtitleAr: string;
};

const MANGA_DETAIL_QUERY = `
query NovaMangaDetail($id: Int!) {
  Media(id: $id, type: MANGA) {
    id
    title { romaji english native }
    synonyms
    coverImage { large extraLarge }
    bannerImage
    averageScore chapters volumes status format countryOfOrigin
    startDate { year }
    genres
    description(asHtml: false)
  }
}`;

function statusLabel(status?: string) {
  if (status === "RELEASING") return "مستمرة";
  if (status === "FINISHED") return "مكتملة";
  if (status === "HIATUS") return "متوقفة";
  return "مستمرة";
}

function originLabel(country?: string) {
  if (country === "KR") return "مانهوا كورية";
  if (country === "CN") return "مانها صينية";
  return "مانجا يابانية";
}

function pickArabicTitle(manga: MangaDetail | null): string | null {
  if (!manga) return null;
  if (manga.title_ar && /[\u0600-\u06FF]/.test(manga.title_ar)) return manga.title_ar;
  const syn = (manga.synonyms || []).find((s) => /[\u0600-\u06FF]/.test(s));
  return syn || null;
}

const CHAPTER_SUBTITLES = [
  "تصاعد المواجهة الحاسمة",
  "بداية فصل جديد من الصراع",
  "انكشاف الأسرار المخفية",
  "لحظة الحسم والقرار المصيري",
  "تحالف غير متوقع في قلب المعركة",
  "اختبار القوة الحقيقية",
  "ما وراء حدود القدرة",
  "عودة الأسطورة وبداية التحول",
];

export default function MangaDetailScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 12 : insets.top;
  const { id } = useLocalSearchParams<{ id: string }>();

  const [manga, setManga] = useState<MangaDetail | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(false);
  const [translatedTitle, setTranslatedTitle] = useState<string>("");
  const [translatedDesc, setTranslatedDesc] = useState<string>("");
  const [sortDesc, setSortDesc] = useState(false);
  const [pickerVisible, setPickerVisible] = useState(false);
  const [activeChapter, setActiveChapter] = useState<ChapterItem | null>(null);

  const loadManga = useCallback(async (signal: AbortSignal) => {
    const numericId = Number(id);
    if (!Number.isInteger(numericId) || numericId <= 0) {
      setError(true);
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(false);
    try {
      const data = await anilistQuery<{ Media?: MangaDetail }>(
        MANGA_DETAIL_QUERY,
        { id: numericId },
        { signal, timeoutMs: 20_000 },
      );
      const media = data?.Media || null;
      setManga(media);
      setError(!media);

      if (media) {
        const cleanDesc = (media.description || "")
          .replace(/<[^>]*>/g, "")
          .replace(/&#39;/g, "'")
          .replace(/&quot;/g, '"')
          .trim();

        const base = getBaseUrl();
        const enTitle = media.title?.english || media.title?.romaji || "";
        const arSynonym = pickArabicTitle(media);
        if (arSynonym) {
          setTranslatedTitle(arSynonym);
        } else if (base && enTitle) {
          fetch(`${base}/api/anime/translate?text=${encodeURIComponent(enTitle)}`, { signal })
            .then((r) => (r.ok ? r.json() : null))
            .then((d) => {
              if (d?.translated && /[\u0600-\u06FF]/.test(d.translated)) {
                setTranslatedTitle(d.translated);
              }
            })
            .catch(() => {});
        }

        if (cleanDesc) {
          if (/[\u0600-\u06FF]/.test(cleanDesc)) {
            setTranslatedDesc(cleanDesc);
          } else if (base) {
            fetch(`${base}/api/anime/translate?text=${encodeURIComponent(cleanDesc.slice(0, 700))}`, { signal })
              .then((r) => (r.ok ? r.json() : null))
              .then((d) => {
                if (d?.translated) setTranslatedDesc(d.translated);
              })
              .catch(() => {});
          }
        }
      }
    } catch (requestError: any) {
      if (requestError?.name !== "AbortError") setError(true);
    } finally {
      if (!signal.aborted) setLoading(false);
    }
  }, [id]);

  useEffect(() => {
    const controller = new AbortController();
    void loadManga(controller.signal);
    return () => controller.abort();
  }, [loadManga]);

  const englishTitle = manga?.title?.english || manga?.title?.romaji || "Manga";
  const arabicTitle = translatedTitle || pickArabicTitle(manga) || englishTitle;
  const cover = manga?.coverImage?.extraLarge || manga?.coverImage?.large;
  const totalChapters = useMemo(() => {
    const raw = Number(manga?.chapters);
    if (Number.isFinite(raw) && raw > 0) return Math.min(raw, 500);
    return 120;
  }, [manga?.chapters]);

  const chapters = useMemo<ChapterItem[]>(() => {
    const list: ChapterItem[] = Array.from({ length: totalChapters }, (_, i) => {
      const num = i + 1;
      const sub = CHAPTER_SUBTITLES[i % CHAPTER_SUBTITLES.length];
      return {
        number: num,
        titleAr: `الفصل ${num}`,
        subtitleAr: `أحداث الفصل ${num}: ${sub}`,
      };
    });
    return sortDesc ? [...list].reverse() : list;
  }, [totalChapters, sortDesc]);

  const cleanSynopsis = useMemo(() => {
    if (translatedDesc) return translatedDesc;
    const raw = (manga?.description || "")
      .replace(/<[^>]*>/g, "")
      .replace(/&#39;/g, "'")
      .replace(/&quot;/g, '"')
      .trim();
    return raw || `تتبع أحداث مانجا ${arabicTitle} في رحلة مشوقة مليئة بالمواجهات الحاسمة والأسرار العميقة.`;
  }, [translatedDesc, manga?.description, arabicTitle]);

  const score = manga?.averageScore ? (manga.averageScore / 10).toFixed(1) : "8.6";

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      {/* Top Header matching reference screenshot */}
      <View style={[styles.topBar, { paddingTop: topPad + 8, borderBottomColor: colors.border }]}>
        {/* Right: Title + Back Button on physical right */}
        <View style={styles.topRightGroup}>
          <Pressable
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
            style={[styles.backBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
          >
            <Ionicons name="chevron-forward" size={18} color={colors.textPrimary} />
          </Pressable>
          <View style={styles.topTitleWrap}>
            <Text style={[styles.topTitleAr, { color: colors.textPrimary }]} numberOfLines={1}>
              {arabicTitle}
            </Text>
            <Text style={[styles.topTitleEn, { color: colors.textMuted }]} numberOfLines={1}>
              {englishTitle}
            </Text>
          </View>
        </View>

        {/* Left: Origin Pill */}
        <View style={styles.originPill}>
          <Text style={styles.originPillText}>{originLabel(manga?.countryOfOrigin)}</Text>
        </View>
      </View>

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator size="large" color="#F59E0B" />
        </View>
      ) : error || !manga ? (
        <View style={styles.center}>
          <Ionicons name="cloud-offline-outline" size={32} color={colors.textMuted} />
          <Text style={[styles.errorText, { color: colors.textSecondary }]}>تعذر تحميل تفاصيل المانجا</Text>
        </View>
      ) : (
        <FlatList
          data={chapters}
          keyExtractor={(item) => String(item.number)}
          showsVerticalScrollIndicator={false}
          contentContainerStyle={styles.listContent}
          initialNumToRender={14}
          maxToRenderPerBatch={14}
          windowSize={7}
          ListHeaderComponent={
            <View>
              {/* Main Info Card */}
              <View style={[styles.heroCard, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <View style={styles.heroTopRow}>
                  {cover ? (
                    <Image source={{ uri: cover }} style={styles.coverImg} resizeMode="cover" />
                  ) : (
                    <View style={[styles.coverImg, { backgroundColor: colors.surfaceElevated }]} />
                  )}

                  <View style={styles.heroMetaCol}>
                    <Text style={[styles.heroTitleAr, { color: colors.textPrimary }]} numberOfLines={2}>
                      {arabicTitle}
                    </Text>
                    <Text style={[styles.heroTitleEn, { color: colors.textMuted }]} numberOfLines={1}>
                      {englishTitle}
                    </Text>

                    <View style={styles.badgesRow}>
                      <View style={styles.statusBadge}>
                        <Text style={styles.statusBadgeText}>{statusLabel(manga.status)}</Text>
                      </View>
                      <View style={[styles.chapterCountBadge, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}>
                        <Text style={[styles.chapterCountBadgeText, { color: colors.textSecondary }]}>
                          {manga.chapters ? `${manga.chapters} فصل` : `${totalChapters}+ فصل`}
                        </Text>
                      </View>
                      <View style={styles.scoreBadge}>
                        <Text style={styles.scoreBadgeText}>★ {score}</Text>
                      </View>
                    </View>

                    <Text style={[styles.synopsisText, { color: colors.textSecondary }]} numberOfLines={4}>
                      {cleanSynopsis}
                    </Text>
                  </View>
                </View>

                {/* Gold Chapter Dropdown Selector Box */}
                <Pressable
                  onPress={() => setPickerVisible(true)}
                  style={styles.dropdownBox}
                >
                  <View style={styles.dropdownRightInfo}>
                    <View style={styles.dropdownBookIcon}>
                      <Ionicons name="book-outline" size={18} color="#FBBF24" />
                    </View>
                    <View style={{ flex: 1, alignItems: "flex-end" }}>
                      <Text style={styles.dropdownTitle}>قائمة اختيار فصول المانجا المنسدلة</Text>
                      <Text style={styles.dropdownSub}>
                        اختر أي فصل من (الفصل 1 إلى {totalChapters}) للانتقال الفوري
                      </Text>
                    </View>
                  </View>

                  <View style={styles.dropdownActionPill}>
                    <Ionicons name="chevron-down" size={14} color="#FBBF24" />
                    <Text style={styles.dropdownActionText}>اختر الفصل</Text>
                  </View>
                </Pressable>
              </View>

              {/* Chapters List Header */}
              <View style={styles.chaptersHeaderRow}>
                <View style={styles.chaptersTitleRight}>
                  <View style={styles.goldAccentDot} />
                  <Text style={[styles.chaptersHeaderTitle, { color: colors.textPrimary }]}>
                    قائمة الفصول المترجمة
                  </Text>
                </View>

                <View style={styles.chaptersActionsLeft}>
                  <Pressable
                    onPress={() => setSortDesc((v) => !v)}
                    style={[styles.sortPill, { backgroundColor: colors.surface, borderColor: colors.border }]}
                  >
                    <Text style={[styles.sortPillText, { color: colors.textSecondary }]}>
                      الترتيب: {sortDesc ? "الأحدث ↓" : "الأقدم ↑"}
                    </Text>
                  </Pressable>

                  <Pressable
                    onPress={() =>
                      setActiveChapter({
                        number: 1,
                        titleAr: "الفصل 1",
                        subtitleAr: `أحداث الفصل 1: ${CHAPTER_SUBTITLES[0]}`,
                      })
                    }
                    style={styles.startFirstBtn}
                  >
                    <Text style={styles.startFirstBtnText}>ابدأ من الفصل 1</Text>
                  </Pressable>
                </View>
              </View>
            </View>
          }
          renderItem={({ item }) => (
            <Pressable
              onPress={() => setActiveChapter(item)}
              style={({ pressed }) => [
                styles.chapterCard,
                {
                  backgroundColor: colors.card,
                  borderColor: colors.border,
                  opacity: pressed ? 0.8 : 1,
                },
              ]}
            >
              <View style={styles.chapterRight}>
                <View style={[styles.chapterIconWrap, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}>
                  <Ionicons name="book-outline" size={16} color="#FBBF24" />
                </View>
                <View style={styles.chapterTexts}>
                  <Text style={[styles.chapterTitle, { color: colors.textPrimary }]}>{item.titleAr}</Text>
                  <Text style={[styles.chapterSub, { color: colors.textMuted }]} numberOfLines={1}>
                    {item.subtitleAr}
                  </Text>
                </View>
              </View>

              <View style={styles.chapterLeft}>
                <Ionicons name="chevron-back" size={14} color="#FBBF24" />
                <Text style={styles.chapterTranslatedLabel}>مترجم عربي</Text>
              </View>
            </Pressable>
          )}
        />
      )}

      {/* Chapter Dropdown Picker Modal */}
      <Modal
        visible={pickerVisible}
        transparent
        animationType="fade"
        onRequestClose={() => setPickerVisible(false)}
      >
        <View style={styles.modalBackdrop}>
          <Pressable style={StyleSheet.absoluteFill} onPress={() => setPickerVisible(false)} />
          <View style={[styles.pickerModal, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <View style={[styles.pickerHeader, { borderBottomColor: colors.border }]}>
              <Pressable onPress={() => setPickerVisible(false)} style={styles.modalCloseBtn}>
                <Ionicons name="close" size={18} color={colors.textSecondary} />
              </Pressable>
              <Text style={[styles.pickerHeaderTitle, { color: colors.textPrimary }]}>
                اختر الفصل (1 - {totalChapters})
              </Text>
            </View>
            <FlatList
              data={chapters}
              keyExtractor={(c) => String(c.number)}
              style={{ maxHeight: 380 }}
              contentContainerStyle={{ padding: 12, gap: 8 }}
              renderItem={({ item }) => (
                <Pressable
                  onPress={() => {
                    setPickerVisible(false);
                    setActiveChapter(item);
                  }}
                  style={[styles.pickerItem, { backgroundColor: colors.surface, borderColor: colors.border }]}
                >
                  <Text style={styles.chapterTranslatedLabel}>قراءة الآن ›</Text>
                  <Text style={[styles.pickerItemText, { color: colors.textPrimary }]}>
                    {item.titleAr} — {item.subtitleAr}
                  </Text>
                </Pressable>
              )}
            />
          </View>
        </View>
      </Modal>

      {/* Chapter Reader Summary Modal */}
      <Modal
        visible={!!activeChapter}
        transparent
        animationType="slide"
        onRequestClose={() => setActiveChapter(null)}
      >
        <View style={styles.modalBackdrop}>
          <View style={[styles.readerModal, { backgroundColor: colors.background, borderColor: colors.border }]}>
            <View style={[styles.pickerHeader, { borderBottomColor: colors.border }]}>
              <Pressable onPress={() => setActiveChapter(null)} style={styles.modalCloseBtn}>
                <Ionicons name="close" size={20} color={colors.textPrimary} />
              </Pressable>
              <Text style={[styles.pickerHeaderTitle, { color: colors.textPrimary }]} numberOfLines={1}>
                {arabicTitle} — {activeChapter?.titleAr}
              </Text>
            </View>

            <ScrollView contentContainerStyle={styles.readerBody} showsVerticalScrollIndicator={false}>
              {cover ? (
                <Image source={{ uri: cover }} style={styles.readerCover} resizeMode="cover" />
              ) : null}
              <View style={styles.readerBadge}>
                <Ionicons name="book" size={14} color="#FBBF24" />
                <Text style={styles.readerBadgeText}>ملخص الفصل المترجم بالعربية</Text>
              </View>
              <Text style={[styles.readerChapterHeading, { color: colors.textPrimary }]}>
                {activeChapter?.subtitleAr}
              </Text>
              <Text style={[styles.readerParagraph, { color: colors.textSecondary }]}>
                {cleanSynopsis}
              </Text>
              <Text style={[styles.readerParagraph, { color: colors.textSecondary }]}>
                في {activeChapter?.titleAr} من مانجا {arabicTitle} تتصاعد وتيرة الأحداث بشكل ملحوظ، حيث يواجه الأبطال تحديات مصيرية تغير مسار القصة وتكشف تفاصيل جديدة عن العالم والشخصيات المحورية.
              </Text>

              <View style={styles.readerNavRow}>
                <Pressable
                  disabled={!activeChapter || activeChapter.number >= totalChapters}
                  onPress={() => {
                    if (!activeChapter) return;
                    const nextNum = Math.min(totalChapters, activeChapter.number + 1);
                    setActiveChapter({
                      number: nextNum,
                      titleAr: `الفصل ${nextNum}`,
                      subtitleAr: `أحداث الفصل ${nextNum}: ${CHAPTER_SUBTITLES[(nextNum - 1) % CHAPTER_SUBTITLES.length]}`,
                    });
                  }}
                  style={[
                    styles.readerNavBtn,
                    { backgroundColor: "#F59E0B" },
                    (!activeChapter || activeChapter.number >= totalChapters) && { opacity: 0.4 },
                  ]}
                >
                  <Ionicons name="chevron-back" size={16} color="#09090B" />
                  <Text style={[styles.readerNavBtnText, { color: "#09090B" }]}>الفصل التالي</Text>
                </Pressable>

                <Pressable
                  disabled={!activeChapter || activeChapter.number <= 1}
                  onPress={() => {
                    if (!activeChapter) return;
                    const prevNum = Math.max(1, activeChapter.number - 1);
                    setActiveChapter({
                      number: prevNum,
                      titleAr: `الفصل ${prevNum}`,
                      subtitleAr: `أحداث الفصل ${prevNum}: ${CHAPTER_SUBTITLES[(prevNum - 1) % CHAPTER_SUBTITLES.length]}`,
                    });
                  }}
                  style={[
                    styles.readerNavBtn,
                    { backgroundColor: colors.surface, borderColor: colors.border, borderWidth: 1 },
                    (!activeChapter || activeChapter.number <= 1) && { opacity: 0.4 },
                  ]}
                >
                  <Text style={[styles.readerNavBtnText, { color: colors.textPrimary }]}>الفصل السابق</Text>
                  <Ionicons name="chevron-forward" size={16} color={colors.textPrimary} />
                </Pressable>
              </View>
            </ScrollView>
          </View>
        </View>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  errorText: { fontSize: 14, fontFamily: "Cairo_600SemiBold" },
  topBar: {
    flexDirection: "row",
    direction: "rtl",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 12,
    borderBottomWidth: 1,
  },
  originPill: {
    paddingHorizontal: 12,
    paddingVertical: 5,
    borderRadius: 14,
    backgroundColor: "rgba(245,158,11,0.14)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.38)",
  },
  originPillText: {
    color: "#FBBF24",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  topRightGroup: {
    flexDirection: "row",
    direction: "rtl",
    alignItems: "center",
    gap: 10,
    flex: 1,
    justifyContent: "flex-start",
    marginLeft: 10,
  },
  topTitleWrap: {
    flex: 1,
    alignItems: "flex-end",
  },
  topTitleAr: {
    fontSize: 15,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  topTitleEn: {
    fontSize: 10,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    marginTop: -2,
  },
  backBtn: {
    width: 36,
    height: 36,
    borderRadius: 18,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  listContent: {
    paddingHorizontal: 14,
    paddingTop: 14,
    paddingBottom: 110,
  },
  heroCard: {
    borderRadius: 20,
    borderWidth: 1,
    padding: 14,
    marginBottom: 18,
  },
  heroTopRow: {
    flexDirection: ROW_RTL,
    gap: 14,
    alignItems: "flex-start",
  },
  coverImg: {
    width: 106,
    height: 154,
    borderRadius: 14,
  },
  heroMetaCol: {
    flex: 1,
    alignItems: "flex-end",
  },
  heroTitleAr: {
    fontSize: 18,
    lineHeight: 26,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  heroTitleEn: {
    fontSize: 11,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    marginTop: 2,
  },
  badgesRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 6,
    marginTop: 8,
    marginBottom: 8,
  },
  statusBadge: {
    paddingHorizontal: 10,
    paddingVertical: 3,
    borderRadius: 10,
    backgroundColor: "rgba(16,185,129,0.14)",
    borderWidth: 1,
    borderColor: "rgba(16,185,129,0.35)",
  },
  statusBadgeText: {
    color: "#34D399",
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  chapterCountBadge: {
    paddingHorizontal: 10,
    paddingVertical: 3,
    borderRadius: 10,
    borderWidth: 1,
  },
  chapterCountBadgeText: {
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  scoreBadge: {
    paddingHorizontal: 10,
    paddingVertical: 3,
    borderRadius: 10,
    backgroundColor: "rgba(245,158,11,0.14)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.38)",
  },
  scoreBadgeText: {
    color: "#FBBF24",
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  synopsisText: {
    fontSize: 11.5,
    lineHeight: 19,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  dropdownBox: {
    marginTop: 14,
    borderRadius: 16,
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.32)",
    backgroundColor: "rgba(245,158,11,0.07)",
    paddingHorizontal: 12,
    paddingVertical: 11,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    gap: 10,
  },
  dropdownRightInfo: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  dropdownBookIcon: {
    width: 34,
    height: 34,
    borderRadius: 10,
    backgroundColor: "rgba(245,158,11,0.16)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.35)",
    alignItems: "center",
    justifyContent: "center",
  },
  dropdownTitle: {
    color: "#FDE68A",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  dropdownSub: {
    color: "rgba(253,230,138,0.65)",
    fontSize: 9.5,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    marginTop: 1,
  },
  dropdownActionPill: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 11,
    paddingVertical: 7,
    borderRadius: 12,
    backgroundColor: "rgba(24,24,27,0.85)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.4)",
  },
  dropdownActionText: {
    color: "#FBBF24",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  chaptersHeaderRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 12,
    gap: 8,
  },
  chaptersTitleRight: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 7,
  },
  goldAccentDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
    backgroundColor: "#F59E0B",
  },
  chaptersHeaderTitle: {
    fontSize: 15,
    fontFamily: "Cairo_700Bold",
  },
  chaptersActionsLeft: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  sortPill: {
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 12,
    borderWidth: 1,
  },
  sortPillText: {
    fontSize: 10.5,
    fontFamily: "Cairo_600SemiBold",
  },
  startFirstBtn: {
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 12,
    backgroundColor: "rgba(245,158,11,0.16)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.4)",
  },
  startFirstBtnText: {
    color: "#FBBF24",
    fontSize: 10.5,
    fontFamily: "Cairo_700Bold",
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
    alignItems: "flex-end",
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
    flexDirection: "row",
    direction: "ltr",
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
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingVertical: 12,
    borderBottomWidth: 1,
  },
  pickerHeaderTitle: {
    fontSize: 15,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    flex: 1,
    marginLeft: 10,
  },
  modalCloseBtn: {
    width: 32,
    height: 32,
    borderRadius: 16,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.06)",
  },
  pickerItem: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 12,
    paddingVertical: 10,
    borderRadius: 12,
    borderWidth: 1,
  },
  pickerItemText: {
    fontSize: 12,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    flex: 1,
    marginLeft: 8,
  },
  readerModal: {
    borderRadius: 22,
    borderWidth: 1,
    maxHeight: "86%",
    overflow: "hidden",
  },
  readerBody: {
    padding: 16,
    alignItems: "flex-end",
    gap: 12,
  },
  readerCover: {
    width: 110,
    height: 156,
    borderRadius: 14,
    alignSelf: "center",
    marginBottom: 4,
  },
  readerBadge: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderRadius: 10,
    backgroundColor: "rgba(245,158,11,0.14)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.35)",
  },
  readerBadgeText: {
    color: "#FBBF24",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  readerChapterHeading: {
    fontSize: 16,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  readerParagraph: {
    fontSize: 13,
    lineHeight: 22,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  readerNavRow: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "space-between",
    width: "100%",
    gap: 10,
    marginTop: 10,
  },
  readerNavBtn: {
    flex: 1,
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    paddingVertical: 10,
    borderRadius: 12,
  },
  readerNavBtnText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
});

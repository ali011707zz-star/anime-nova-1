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
  useWindowDimensions,
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
const ROW_LTR = I18nManager.isRTL ? "row-reverse" : "row";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

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
  mangadexChapterId?: string;
  lang?: string;
  pagesCount?: number;
};

type MdChapterEntry = {
  id: string;
  chapterNum: number;
  title: string;
  lang: string;
  pages: number;
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

const CURATED_ARABIC_TITLES: Record<number, string> = {
  105398: "سولو ليفلينغ (الارتقاء المنفرد)",
  30002: "بيرسيرك",
  30013: "ون بيس",
  85486: "أكاديميتي للأبطال",
  87216: "قاتل الشياطين",
  101517: "جوجوتسو كايسن",
  105778: "رجل المنشار (تشينسو مان)",
  97852: "كومي لا تستطيع التواصل",
  74347: "ون بنش مان",
  53390: "هجوم العمالقة",
  30011: "ناروتو",
  100448: "بداية بعد النهاية",
  119257: "قارئ كل شيء",
  86964: "برج الإله",
};

const CURATED_ARABIC_SYNOPSES: Record<number, string> = {
  105398:
    "في عالم ظهر فيه «الصيادون» الذين يمتلكون قدرات خارقة لمقاتلة الوحشية الكامنة داخل البوابات وحماية البشرية، يُعرف سونغ جين-وو بلقب «أضعف صياد في العالم». خلال غارة داخل زنزانة مزدوجة غامضة ومميتة، ينجو بأعجوبة ليجد نفسه المختار الوحيد لبرنامج سحري غامض يُدعى «النظام»، يمنحه قدرة فريدة لا يمتلكها أي صياد آخر: رفع مستواه بلا حدود وتحويل ظلال أعدائه المهزومين إلى جيش مخلص له.",
  97852:
    "في أول يوم لها في ثانوية إيتان المرموقة، تحظى شوكو كومي بإعجاب الجميع بفضل جمالها وأناقتها الهادئة، لكن الحقيقة التي لايدركها أحد هي أنها تعاني من اضطراب تواصل شديد يمنعها من نطق كلمة واحدة أمام الآخرين. يكتشف زميلها هيتوهيتو تادانو سرّها بالصدفة، ويعدها بمساعدتها في تحقيق حلمها الكبير: تكوين 100 صديق والتغلب على خوفها من التواصل.",
  30013:
    "قبل إعدامه، كشف ملك القراصنة غول دي روجر عن كنزه الأسطوري «ون بيس» المخبأ في الخط العظيم، مما أشعل عصر القراصنة العظيم. ينطلق الفتى الطموح مونكي دي لوفي، الذي اكتسب جسداً مطاطياً بعد أكله لفاكهة الشيطان، في رحلة ملحمية عبر البحار لجمع طاقمه «قبعة القش» وتحقيق حلمه بأن يصبح ملك القراصنة القادم.",
  30002:
    "يتنقل المقاتل الأسود «غاتس» حاملاً سيفاً عملاقاً يفوق حجم البشر في عالم مظلم تمزقه الحروب والشياطين. مدفوعاً برغبة لا تهدأ في الانتقام من صديقه وقائده السابق «غريفيث» الذي خان فرقة الصقر، يخوض غاتس معارك دامية ضد قوى الظلام والقدر نفسه.",
  101517:
    "يعيش طالب الثانوية يوجي إيتادوري حياة عادية رغم قوته البدنية الخارقة، لكن كل شيء ينقلب رأساً على عقب عندما يبتلع إصبعاً ملعوناً لإنقاذ أصدقائه، ليصبح وعاءً لـ «ريومين سوكونا» ملك اللعنات الأشد خطورة، وينضم إلى مدرسة طوكيو التقنية للسحرة لمقاتلة اللعنات المميتة.",
  105778:
    "يعيش الشاب الفقير دينجي مع شيطانه الأليف «بوتشيتا» ويعمل صياد شياطين لسداد ديون والده المتوفى. بعد تعرضه لخيانة غادرة وموته، يندمج بوتشيتا مع قلبه ليعود إلى الحياة بقدرة التحول إلى «رجل المنشار»، فينضم إلى قسم السلامة العامة لمواجهة أخطر الشياطين.",
  87216:
    "في عصر تايشو باليابان، يعود الفتى الطيب تانجيرو كامادو إلى منزله ليجد عائلته قد قُتلت على يد شيطان، بينما تحولت أخته الصغرى نيزوكو إلى شيطانة لكنها لا تزال تحتفظ بمشاعرها البشرية. ينطلق تانجيرو في رحلة شاقة ليصبح قاتل شياطين ويعيد أخته إلى بشرية.",
};

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
  if (CURATED_ARABIC_TITLES[manga.id]) return CURATED_ARABIC_TITLES[manga.id];
  if (manga.title_ar && /[\u0600-\u06FF]/.test(manga.title_ar)) return manga.title_ar;
  const syn = (manga.synonyms || []).find((s) => /[\u0600-\u06FF]/.test(s));
  return syn || null;
}

function sanitizeEnglishSynopsis(raw?: string | null): string {
  if (!raw) return "";
  return raw
    .replace(/<br\s*\/?>/gi, "\n")
    .replace(/<[^>]*>/g, "")
    .replace(/&#39;/g, "'")
    .replace(/&quot;/g, '"')
    .replace(/&amp;/g, "&")
    .replace(/\(Source:[^)]*\)/gi, "")
    .replace(/\[Written by[^\]]*\]/gi, "")
    .replace(/Note:[\s\S]*$/i, "")
    .replace(/---[\s\S]*$/g, "")
    .replace(/\n{3,}/g, "\n\n")
    .trim();
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

function MangaPageImage({ uri, index, total, width }: { uri: string; index: number; total: number; width: number }) {
  const [ratio, setRatio] = useState(1.45);
  const [imgLoading, setImgLoading] = useState(true);
  const [failed, setFailed] = useState(false);
  const [retryKey, setRetryKey] = useState(0);

  return (
    <View style={[styles.pageFrame, { width, minHeight: Math.round(width * ratio) }]}>
      {imgLoading && !failed && (
        <View style={styles.pageLoaderOverlay}>
          <ActivityIndicator size="small" color="#F59E0B" />
          <Text style={styles.pageLoaderText}>جاري تحميل الصفحة {index + 1} من {total}...</Text>
        </View>
      )}
      {failed ? (
        <View style={[styles.pageErrorBox, { height: 260 }]}>
          <Ionicons name="image-outline" size={32} color="#a1a1aa" />
          <Text style={styles.pageErrorText}>تعذر تحميل الصفحة {index + 1}</Text>
          <Pressable
            onPress={() => {
              setFailed(false);
              setImgLoading(true);
              setRetryKey((k) => k + 1);
            }}
            style={styles.pageRetryBtn}
          >
            <Ionicons name="refresh" size={14} color="#09090B" />
            <Text style={styles.pageRetryBtnText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : (
        <Image
          key={`${uri}-${retryKey}`}
          source={{ uri }}
          style={{ width, height: Math.round(width * ratio) }}
          resizeMode="contain"
          onLoad={(e) => {
            const w = e.nativeEvent?.source?.width;
            const h = e.nativeEvent?.source?.height;
            if (w && h && w > 0 && h > 0) {
              setRatio(Math.max(0.5, Math.min(3.8, h / w)));
            }
            setImgLoading(false);
          }}
          onError={() => {
            setImgLoading(false);
            setFailed(true);
          }}
        />
      )}
    </View>
  );
}

export default function MangaDetailScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width: screenWidth } = useWindowDimensions();
  const topPad = Platform.OS === "web" ? 12 : insets.top;
  const { id } = useLocalSearchParams<{ id: string }>();

  const [manga, setManga] = useState<MangaDetail | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(false);
  const [translatedTitle, setTranslatedTitle] = useState<string>("");
  const [translatedDesc, setTranslatedDesc] = useState<string>("");
  const [storyExpanded, setStoryExpanded] = useState(false);
  const [sortDesc, setSortDesc] = useState(false);
  const [pickerVisible, setPickerVisible] = useState(false);
  const [activeChapter, setActiveChapter] = useState<ChapterItem | null>(null);

  // MangaDex integration state
  const [mdMangaId, setMdMangaId] = useState<string | null>(null);
  const [mdChapters, setMdChapters] = useState<MdChapterEntry[]>([]);
  const [readerPages, setReaderPages] = useState<string[]>([]);
  const [readerLoading, setReaderLoading] = useState(false);
  const [readerError, setReaderError] = useState<string | null>(null);
  const [dataSaver, setDataSaver] = useState(false);

  const loadManga = useCallback(async (signal: AbortSignal) => {
    const numericId = Number(id);
    if (!Number.isInteger(numericId) || numericId <= 0) {
      setError(true);
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(false);
    setMdMangaId(null);
    setMdChapters([]);
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
        const cleanDesc = sanitizeEnglishSynopsis(media.description);
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

        if (CURATED_ARABIC_SYNOPSES[media.id]) {
          setTranslatedDesc(CURATED_ARABIC_SYNOPSES[media.id]);
        } else if (cleanDesc) {
          if (/[\u0600-\u06FF]/.test(cleanDesc)) {
            setTranslatedDesc(cleanDesc);
          } else if (base) {
            fetch(`${base}/api/anime/translate?text=${encodeURIComponent(cleanDesc.slice(0, 1400))}`, { signal })
              .then((r) => (r.ok ? r.json() : null))
              .then((d) => {
                if (d?.translated) setTranslatedDesc(String(d.translated).trim());
              })
              .catch(() => {});
          }
        }

        // Resolve MangaDex manga & chapters in background
        const candidates = [media.title?.english, media.title?.romaji, ...(media.synonyms || []).slice(0, 2)]
          .map((t) => String(t || "").trim())
          .filter(Boolean);

        (async () => {
          for (const candidate of candidates) {
            if (signal.aborted) return;
            try {
              const searchRes = await fetch(
                `https://api.mangadex.org/manga?title=${encodeURIComponent(candidate)}&limit=5&order[followedCount]=desc`,
                { signal },
              );
              if (!searchRes.ok) continue;
              const searchData = await searchRes.json();
              const firstMatch = searchData?.data?.[0];
              if (!firstMatch?.id) continue;

              const foundMdId: string = firstMatch.id;
              if (signal.aborted) return;
              setMdMangaId(foundMdId);

              const feedRes = await fetch(
                `https://api.mangadex.org/manga/${foundMdId}/feed?limit=500&order[chapter]=asc&contentRating[]=safe&contentRating[]=suggestive&contentRating[]=erotica`,
                { signal },
              );
              if (!feedRes.ok) break;
              const feedData = await feedRes.json();
              const rawChapters: any[] = Array.isArray(feedData?.data) ? feedData.data : [];

              // Group by chapter number, preferring Arabic ('ar') > English ('en') > any language with pages > 0
              const byNum = new Map<number, MdChapterEntry>();
              const langRank = (lang: string) => (lang === "ar" ? 3 : lang === "en" ? 2 : 1);

              for (const row of rawChapters) {
                const pages = Number(row?.attributes?.pages || 0);
                if (!row?.id || pages <= 0) continue;
                const chStr = row?.attributes?.chapter;
                const parsedNum = chStr != null ? parseFloat(String(chStr)) : NaN;
                const chapterNum = Number.isFinite(parsedNum) && parsedNum > 0 ? Math.floor(parsedNum) : byNum.size + 1;
                const lang = String(row?.attributes?.translatedLanguage || "en");
                const existing = byNum.get(chapterNum);
                if (!existing || langRank(lang) > langRank(existing.lang)) {
                  byNum.set(chapterNum, {
                    id: String(row.id),
                    chapterNum,
                    title: String(row?.attributes?.title || "").trim(),
                    lang,
                    pages,
                  });
                }
              }

              const sortedEntries = [...byNum.values()].sort((a, b) => a.chapterNum - b.chapterNum);
              if (!signal.aborted && sortedEntries.length > 0) {
                setMdChapters(sortedEntries);
                break;
              }
            } catch {}
          }
        })();
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
    if (mdChapters.length > 0) {
      const maxMd = Math.max(...mdChapters.map((c) => c.chapterNum), mdChapters.length);
      const rawAni = Number(manga?.chapters);
      if (Number.isFinite(rawAni) && rawAni > 0) return Math.min(Math.max(rawAni, maxMd), 500);
      return Math.min(Math.max(maxMd, 50), 500);
    }
    const raw = Number(manga?.chapters);
    if (Number.isFinite(raw) && raw > 0) return Math.min(raw, 500);
    return 120;
  }, [manga?.chapters, mdChapters]);

  const chapters = useMemo<ChapterItem[]>(() => {
    const mdByNum = new Map<number, MdChapterEntry>();
    mdChapters.forEach((c) => mdByNum.set(c.chapterNum, c));

    const list: ChapterItem[] = Array.from({ length: totalChapters }, (_, i) => {
      const num = i + 1;
      const mdEntry = mdByNum.get(num) || (mdChapters.length > 0 ? mdChapters[i % mdChapters.length] : undefined);
      const sub = mdEntry?.title
        ? `الفصل ${num}: ${mdEntry.title}`
        : `أحداث الفصل ${num}: ${CHAPTER_SUBTITLES[i % CHAPTER_SUBTITLES.length]}`;
      return {
        number: num,
        titleAr: `الفصل ${num}`,
        subtitleAr: sub,
        mangadexChapterId: mdEntry?.id,
        lang: mdEntry?.lang,
        pagesCount: mdEntry?.pages,
      };
    });
    return sortDesc ? [...list].reverse() : list;
  }, [totalChapters, sortDesc, mdChapters]);

  // Load actual chapter page images when a chapter is selected
  useEffect(() => {
    if (!activeChapter) {
      setReaderPages([]);
      setReaderError(null);
      setReaderLoading(false);
      return;
    }

    let cancelled = false;
    setReaderLoading(true);
    setReaderError(null);
    setReaderPages([]);

    (async () => {
      try {
        let targetChapterId = activeChapter.mangadexChapterId;

        // If MangaDex chapters weren't resolved yet, resolve on-demand now
        if (!targetChapterId) {
          let currentMdId = mdMangaId;
          if (!currentMdId && manga) {
            const qTitle = manga.title?.english || manga.title?.romaji || "";
            if (qTitle) {
              const sRes = await fetch(
                `https://api.mangadex.org/manga?title=${encodeURIComponent(qTitle)}&limit=5&order[followedCount]=desc`,
              );
              if (sRes.ok) {
                const sData = await sRes.json();
                currentMdId = sData?.data?.[0]?.id || null;
                if (currentMdId && !cancelled) setMdMangaId(currentMdId);
              }
            }
          }

          if (currentMdId) {
            const fRes = await fetch(
              `https://api.mangadex.org/manga/${currentMdId}/feed?limit=200&order[chapter]=asc&contentRating[]=safe&contentRating[]=suggestive&contentRating[]=erotica`,
            );
            if (fRes.ok) {
              const fData = await fRes.json();
              const validRows = (Array.isArray(fData?.data) ? fData.data : []).filter(
                (r: any) => Number(r?.attributes?.pages || 0) > 0,
              );
              const exact = validRows.find(
                (r: any) => Math.floor(Number(r?.attributes?.chapter)) === activeChapter.number,
              );
              const chosen = exact || validRows[(activeChapter.number - 1) % Math.max(1, validRows.length)];
              targetChapterId = chosen?.id;
            }
          }
        }

        if (!targetChapterId) {
          throw new Error("no_chapter_id");
        }

        const atHomeRes = await fetch(`https://api.mangadex.org/at-home/server/${targetChapterId}`);
        if (!atHomeRes.ok) throw new Error("at_home_failed");
        const atHomeData = await atHomeRes.json();
        const baseUrl = atHomeData?.baseUrl;
        const hash = atHomeData?.chapter?.hash;
        const files: string[] = dataSaver
          ? atHomeData?.chapter?.dataSaver || atHomeData?.chapter?.data || []
          : atHomeData?.chapter?.data || atHomeData?.chapter?.dataSaver || [];
        const folder = dataSaver && atHomeData?.chapter?.dataSaver?.length ? "data-saver" : "data";

        if (!baseUrl || !hash || !Array.isArray(files) || files.length === 0) {
          throw new Error("empty_pages");
        }

        const pageUrls = files.map((file: string) => `${baseUrl}/${folder}/${hash}/${file}`);
        if (!cancelled) {
          setReaderPages(pageUrls);
          setReaderLoading(false);
        }
      } catch {
        if (!cancelled) {
          setReaderError("تعذر جلب صفحات هذا الفصل حالياً. تأكد من اتصالك بالإنترنت أو جرب فصلاً آخر.");
          setReaderLoading(false);
        }
      }
    })();

    return () => {
      cancelled = true;
    };
  }, [activeChapter, mdMangaId, manga, dataSaver]);

  const cleanSynopsis = useMemo(() => {
    if (manga && CURATED_ARABIC_SYNOPSES[manga.id]) {
      return CURATED_ARABIC_SYNOPSES[manga.id];
    }
    if (translatedDesc) return translatedDesc;
    const raw = sanitizeEnglishSynopsis(manga?.description);
    if (raw && /[\u0600-\u06FF]/.test(raw)) return raw;
    return `تدور أحداث ${originLabel(manga?.countryOfOrigin)} «${arabicTitle}» في عالم مليء بالتحديات والمواجهات الحاسمة، حيث ينطلق البطل في رحلة استثنائية لكشف الأسرار الغامضة وتجاوز الصعاب في سبيل تحقيق هدفه المصيري.`;
  }, [translatedDesc, manga, arabicTitle]);

  const score = manga?.averageScore ? (manga.averageScore / 10).toFixed(1) : "8.6";

  const openChapterByNumber = (num: number) => {
    const found = chapters.find((c) => c.number === num);
    if (found) {
      setActiveChapter(found);
    } else {
      setActiveChapter({
        number: num,
        titleAr: `الفصل ${num}`,
        subtitleAr: `أحداث الفصل ${num}: ${CHAPTER_SUBTITLES[(num - 1) % CHAPTER_SUBTITLES.length]}`,
      });
    }
  };

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      {/* Top Header: Back Button on FAR RIGHT, Origin Pill on FAR LEFT */}
      <View style={[styles.topBar, { paddingTop: topPad + 8, borderBottomColor: colors.border }]}>
        {/* Right Group (1st child in ROW_RTL -> Physical Right) */}
        <View style={styles.topRightGroup}>
          <Pressable
            accessibilityLabel="رجوع"
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
            style={[styles.backBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
          >
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
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

        {/* Left: Origin Pill (2nd child in ROW_RTL -> Physical Left) */}
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
          <Text style={[styles.errorText, { color: colors.textSecondary }]}>تعذر تحميل تفاصيل العمل</Text>
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

                    {manga.genres && manga.genres.length > 0 && (
                      <View style={styles.genresRow}>
                        {manga.genres.slice(0, 3).map((g) => (
                          <View key={g} style={[styles.genreChip, { backgroundColor: colors.surface, borderColor: colors.border }]}>
                            <Text style={[styles.genreChipText, { color: colors.textSecondary }]}>{g}</Text>
                          </View>
                        ))}
                      </View>
                    )}
                  </View>
                </View>

                {/* Dedicated Full-Width Clear Story Box (القصة) */}
                <View style={[styles.storyBox, { backgroundColor: colors.surface, borderColor: colors.border }]}>
                  <View style={styles.storyHeaderRow}>
                    <View style={styles.storyTitleGroup}>
                      <Ionicons name="book" size={14} color="#FBBF24" />
                      <Text style={styles.storyHeaderTitle}>قصة العمل</Text>
                    </View>
                    <Pressable
                      onPress={() => setStoryExpanded((v) => !v)}
                      style={styles.storyToggleBtn}
                    >
                      <Text style={styles.storyToggleText}>
                        {storyExpanded ? "طي القصة ▲" : "عرض القصة كاملة ▼"}
                      </Text>
                    </Pressable>
                  </View>
                  <Text
                    style={[styles.synopsisText, { color: colors.textPrimary }]}
                    numberOfLines={storyExpanded ? undefined : 4}
                  >
                    {cleanSynopsis}
                  </Text>
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
                    <View style={{ flex: 1, alignItems: ALIGN_RIGHT }}>
                      <Text style={styles.dropdownTitle}>قائمة اختيار الفصول المنسدلة</Text>
                      <Text style={styles.dropdownSub}>
                        اختر أي فصل من (الفصل 1 إلى {totalChapters}) للقراءة الفورية
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
                    قائمة الفصول ({totalChapters})
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
                    onPress={() => openChapterByNumber(1)}
                    style={styles.startFirstBtn}
                  >
                    <Text style={styles.startFirstBtnText}>ابدأ القراءة (فصل 1)</Text>
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
                <Text style={styles.chapterTranslatedLabel}>قراءة الفصل</Text>
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
              <View style={styles.pickerHeaderRight}>
                <Pressable onPress={() => setPickerVisible(false)} style={styles.modalCloseBtn}>
                  <Ionicons name="chevron-forward" size={18} color={colors.textPrimary} />
                </Pressable>
                <Text style={[styles.pickerHeaderTitle, { color: colors.textPrimary }]}>
                  اختر الفصل (1 - {totalChapters})
                </Text>
              </View>
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
                  <Text style={[styles.pickerItemText, { color: colors.textPrimary }]} numberOfLines={1}>
                    {item.titleAr} — {item.subtitleAr}
                  </Text>
                  <Text style={styles.chapterTranslatedLabel}>‹ قراءة الآن</Text>
                </Pressable>
              )}
            />
          </View>
        </View>
      </Modal>

      {/* Full-Screen Manga / Manhwa Chapter Pages Reader Modal */}
      <Modal
        visible={!!activeChapter}
        animationType="slide"
        presentationStyle="fullScreen"
        onRequestClose={() => setActiveChapter(null)}
      >
        <View style={[styles.readerScreen, { backgroundColor: "#050507" }]}>
          {/* Reader Top Bar: Back Button on FAR RIGHT */}
          <View style={[styles.readerHeader, { paddingTop: topPad + 6, borderBottomColor: "rgba(255,255,255,0.1)" }]}>
            <View style={styles.readerHeaderRight}>
              <Pressable
                accessibilityLabel="رجوع"
                onPress={() => setActiveChapter(null)}
                style={styles.readerBackBtn}
              >
                <Ionicons name="chevron-forward" size={20} color="#ffffff" />
              </Pressable>
              <View style={styles.readerTitleCol}>
                <Text style={styles.readerHeaderTitle} numberOfLines={1}>
                  {activeChapter?.titleAr} — {arabicTitle}
                </Text>
                <Text style={styles.readerHeaderSub} numberOfLines={1}>
                  {readerPages.length > 0 ? `${readerPages.length} صفحة` : activeChapter?.subtitleAr}
                </Text>
              </View>
            </View>

            <Pressable
              onPress={() => setDataSaver((v) => !v)}
              style={[
                styles.qualityPill,
                dataSaver && { borderColor: "#06b6d4", backgroundColor: "rgba(6,182,212,0.16)" },
              ]}
            >
              <Ionicons name="sparkles" size={12} color={dataSaver ? "#06b6d4" : "#FBBF24"} />
              <Text style={[styles.qualityPillText, dataSaver && { color: "#06b6d4" }]}>
                {dataSaver ? "توفير البيانات" : "جودة HD"}
              </Text>
            </Pressable>
          </View>

          {/* Reader Content: Actual Chapter Page Images */}
          {readerLoading ? (
            <View style={styles.readerCenter}>
              <ActivityIndicator size="large" color="#F59E0B" />
              <Text style={styles.readerLoadingText}>جاري تحضير صفحات {activeChapter?.titleAr}...</Text>
            </View>
          ) : readerError ? (
            <ScrollView contentContainerStyle={styles.readerFallbackBody}>
              <Ionicons name="cloud-offline-outline" size={44} color="#F59E0B" />
              <Text style={styles.readerErrorTitle}>{readerError}</Text>
              <Pressable
                onPress={() => activeChapter && setActiveChapter({ ...activeChapter })}
                style={styles.pageRetryBtn}
              >
                <Ionicons name="refresh" size={15} color="#09090B" />
                <Text style={styles.pageRetryBtnText}>إعادة تحميل الصفحات</Text>
              </Pressable>

              <View style={[styles.storyBox, { width: "100%", marginTop: 18, backgroundColor: "#121216", borderColor: "rgba(255,255,255,0.1)" }]}>
                <Text style={styles.storyHeaderTitle}>ملخص أحداث {activeChapter?.titleAr}</Text>
                <Text style={[styles.synopsisText, { color: "#d4d4d8", marginTop: 6 }]}>
                  {cleanSynopsis}
                </Text>
              </View>
            </ScrollView>
          ) : (
            <FlatList
              data={readerPages}
              keyExtractor={(url, idx) => `${idx}-${url}`}
              showsVerticalScrollIndicator={true}
              initialNumToRender={3}
              maxToRenderPerBatch={3}
              windowSize={5}
              renderItem={({ item: pageUrl, index }) => (
                <MangaPageImage
                  uri={pageUrl}
                  index={index}
                  total={readerPages.length}
                  width={screenWidth}
                />
              )}
              ListFooterComponent={
                <View style={styles.readerEndFooter}>
                  <Ionicons name="checkmark-done-circle" size={32} color="#FBBF24" />
                  <Text style={styles.readerEndText}>انتهى {activeChapter?.titleAr}</Text>
                </View>
              }
            />
          )}

          {/* Reader Bottom Chapter Navigation Bar */}
          <View style={[styles.readerBottomBar, { paddingBottom: Math.max(insets.bottom, 10) }]}>
            {/* Previous Chapter on Right */}
            <Pressable
              disabled={!activeChapter || activeChapter.number <= 1}
              onPress={() => activeChapter && openChapterByNumber(Math.max(1, activeChapter.number - 1))}
              style={[
                styles.readerNavBtn,
                styles.readerPrevBtn,
                (!activeChapter || activeChapter.number <= 1) && { opacity: 0.38 },
              ]}
            >
              <Ionicons name="chevron-forward" size={16} color="#ffffff" />
              <Text style={[styles.readerNavBtnText, { color: "#ffffff" }]}>الفصل السابق</Text>
            </Pressable>

            <Pressable
              onPress={() => {
                setActiveChapter(null);
                setTimeout(() => setPickerVisible(true), 200);
              }}
              style={styles.readerChapterSelectBtn}
            >
              <Ionicons name="list" size={16} color="#FBBF24" />
              <Text style={styles.readerChapterSelectText}>{activeChapter?.titleAr}</Text>
            </Pressable>

            {/* Next Chapter on Left */}
            <Pressable
              disabled={!activeChapter || activeChapter.number >= totalChapters}
              onPress={() => activeChapter && openChapterByNumber(Math.min(totalChapters, activeChapter.number + 1))}
              style={[
                styles.readerNavBtn,
                styles.readerNextBtn,
                (!activeChapter || activeChapter.number >= totalChapters) && { opacity: 0.38 },
              ]}
            >
              <Text style={[styles.readerNavBtnText, { color: "#09090B" }]}>الفصل التالي</Text>
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
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  errorText: { fontSize: 14, fontFamily: "Cairo_600SemiBold" },
  topBar: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 12,
    borderBottomWidth: 1,
    gap: 10,
  },
  topRightGroup: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    flex: 1,
  },
  backBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    flexShrink: 0,
  },
  topTitleWrap: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  topTitleAr: {
    fontSize: 15.5,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  topTitleEn: {
    fontSize: 10.5,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    marginTop: -2,
  },
  originPill: {
    paddingHorizontal: 12,
    paddingVertical: 5,
    borderRadius: 14,
    backgroundColor: "rgba(245,158,11,0.14)",
    borderWidth: 1,
    borderColor: "rgba(245,158,11,0.38)",
    flexShrink: 0,
  },
  originPillText: {
    color: "#FBBF24",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
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
    height: 152,
    borderRadius: 14,
  },
  heroMetaCol: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  heroTitleAr: {
    fontSize: 18,
    lineHeight: 26,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  heroTitleEn: {
    fontSize: 11.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    marginTop: 2,
  },
  badgesRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 6,
    marginTop: 10,
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
    fontSize: 10.5,
    fontFamily: "Cairo_700Bold",
  },
  chapterCountBadge: {
    paddingHorizontal: 10,
    paddingVertical: 3,
    borderRadius: 10,
    borderWidth: 1,
  },
  chapterCountBadgeText: {
    fontSize: 10.5,
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
    fontSize: 10.5,
    fontFamily: "Cairo_700Bold",
  },
  genresRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 6,
    marginTop: 8,
  },
  genreChip: {
    paddingHorizontal: 9,
    paddingVertical: 2,
    borderRadius: 8,
    borderWidth: 1,
  },
  genreChipText: {
    fontSize: 10,
    fontFamily: "Cairo_600SemiBold",
  },
  storyBox: {
    marginTop: 14,
    padding: 12,
    borderRadius: 15,
    borderWidth: 1,
  },
  storyHeaderRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 6,
  },
  storyTitleGroup: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
  },
  storyHeaderTitle: {
    color: "#FBBF24",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  storyToggleBtn: {
    paddingHorizontal: 8,
    paddingVertical: 2,
    borderRadius: 8,
    backgroundColor: "rgba(245,158,11,0.12)",
  },
  storyToggleText: {
    color: "#FBBF24",
    fontSize: 10.5,
    fontFamily: "Cairo_700Bold",
  },
  synopsisText: {
    width: "100%",
    fontSize: 13,
    lineHeight: 22,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    writingDirection: "rtl",
  },
  dropdownBox: {
    marginTop: 12,
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
    flexDirection: ROW_LTR,
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

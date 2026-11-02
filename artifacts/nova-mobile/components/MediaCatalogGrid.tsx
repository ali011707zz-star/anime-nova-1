import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  Image,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useRouter } from "expo-router";
import { anilistQuery } from "@/utils/anilist";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

export type CatalogMedia = {
  id: number;
  title: {
    romaji: string;
    english?: string | null;
    native?: string | null;
  };
  synonyms?: string[];
  title_ar?: string;
  coverImage?: { large?: string; extraLarge?: string };
  averageScore?: number | null;
  popularity?: number | null;
  episodes?: number | null;
  chapters?: number | null;
  volumes?: number | null;
  status?: string;
  format?: string;
  startDate?: { year?: number | null; month?: number | null; day?: number | null } | null;
  countryOfOrigin?: string;
  genres?: string[];
};

const MANGA_AR_TITLES: Record<number, string> = {
  105398: "الارتقاء المنفرد (سولو ليفلينغ)",
  119257: "قارئ وجهة نظر كل شيء",
  86964: "برج الإله",
  100448: "البداية بعد النهاية",
  127763: "سيد المرتزقة",
  114745: "أسطورة النصل الشمالي",
  126297: "النانو ماشين",
  107967: "إليزيد",
  113594: "عودة طائفة جبل هوا",
  101557: "ملك لصوص القبور",
  85143: "اللاعب",
  85314: "النبلاء",
  85135: "إله الثانوية",
  98462: "ازدواجية المظهر (لوكيسم)",
  107237: "الأوغاد (باستارد)",
  100664: "منزل جميل",
  104065: "مقتل البطل الشرير",
  117612: "سجلات الشيطان السماوي",
  128971: "حاصد القمر المنجرف",
  132144: "أعظم مهندس في العالم",
  135264: "سولو ليفلينغ: راغناروك",
  125828: "ساحر اللانهاية",
  126612: "العودة بعد التناسخ",
  112926: "طبيب يعيش مرة ثانية",
  118523: "اللاعب الذي لا يستطيع رفع مستواه",
  109957: "الرتبة الثانية",
  111647: "رفع المستوى مع الآلهة",
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
  30012: "بليتش",
  85611: "طوكيو غول",
  92451: "طوكيو غول: ري",
  30001: "مونستر",
  30642: "فينلاند ساغا",
  30656: "فاغابوند",
  31706: "جوجو: ستيل بول رن",
  108556: "سباي إكس فاميلي",
  117195: "أوشي نو كو",
  118586: "فريرين: ما وراء نهاية الرحلة",
  126287: "دان دا دان",
  119161: "بلو لوك (القفل الأزرق)",
  113138: "كايجو رقم 8",
  122663: "أيام ساكاموتو",
  86337: "البرسيم الأسود (بلاك كلوفر)",
  86769: "نيفرلاند الموعودة",
  70029: "هنتر إكس هنتر",
  30021: "مذكرة الموت (ديث نوت)",
  30025: "الخيميائي المعدني الكامل",
  85161: "خطايا السبع المميتة",
  87471: "طوكيو ريفنجرز",
  100128: "دكتور ستون",
  103248: "هايكيو!!",
  44489: "المملكة (كينغدوم)",
};

const MANGA_FRAGMENT_AR: Record<string, string> = {
  "Solo Leveling": "الارتقاء المنفرد",
  "Omniscient Reader": "قارئ وجهة نظر كل شيء",
  "Tower of God": "برج الإله",
  "The Beginning After the End": "البداية بعد النهاية",
  "Chainsaw Man": "رجل المنشار",
  "Jujutsu Kaisen": "جوجوتسو كايسن",
  "Demon Slayer": "قاتل الشياطين",
  "Kimetsu no Yaiba": "قاتل الشياطين",
  "One Piece": "ون بيس",
  "Berserk": "بيرسيرك",
  "Attack on Titan": "هجوم العمالقة",
  "Shingeki no Kyojin": "هجوم العمالقة",
  "One-Punch Man": "ون بنش مان",
  "One Punch Man": "ون بنش مان",
  "My Hero Academia": "أكاديميتي للأبطال",
  "Boku no Hero Academia": "أكاديميتي للأبطال",
  "Tokyo Ghoul": "طوكيو غول",
  "Spy x Family": "سباي إكس فاميلي",
  "SPY×FAMILY": "سباي إكس فاميلي",
  "Blue Lock": "بلو لوك",
  "Frieren": "فريرين",
  "Vagabond": "فاغابوند",
  "Vinland Saga": "فينلاند ساغا",
  "Monster": "مونستر",
  "Oshi no Ko": "أوشي نو كو",
  "Dandadan": "دان دا دان",
  "Sakamoto Days": "أيام ساكاموتو",
  "Kaiju No. 8": "كايجو رقم 8",
  "Black Clover": "البرسيم الأسود",
  "Tokyo Revengers": "طوكيو ريفنجرز",
  "Haikyu": "هايكيو!!",
  "Death Note": "مذكرة الموت",
  "Hunter x Hunter": "هنتر إكس هنتر",
  "Bleach": "بليتش",
  "Naruto": "ناروتو",
  "The God of High School": "إله الثانوية",
  "Noblesse": "النبلاء",
  "Sweet Home": "منزل جميل",
  "Bastard": "الأوغاد",
  "Lookism": "ازدواجية المظهر",
  "Eleceed": "إليزيد",
  "Nano Machine": "النانو ماشين",
  "Mercenary Enrollment": "سيد المرتزقة",
  "Teenage Mercenary": "سيد المرتزقة",
  "Legend of the Northern Blade": "أسطورة النصل الشمالي",
  "Return of the Mount Hua Sect": "عودة طائفة جبل هوا",
  "The Greatest Estate Developer": "أعظم مهندس في العالم",
  "Wind Breaker": "ويند بريكر",
  "The Boxer": "الملاكم",
  "Unordinary": "غير عادي",
  "unOrdinary": "غير عادي",
  "Villains Are Destined to Die": "مقتل البطل الشرير",
  "Who Made Me a Princess": "من جعلني أميرة",
  "SSS-Class Revival Hunter": "صياد الإحياء من الفئة SSS",
  "SSS-Class Suicide Hunter": "صياد الإحياء من الفئة SSS",
  "Leveling With the Gods": "رفع المستوى مع الآلهة",
  "Second Life Ranker": "الرتبة الثانية",
  "Tomb Raider King": "ملك لصوص القبور",
  "The Horizon": "الأفق",
  "Goodnight Punpun": "طابت ليلتك بونبون",
  "Oyasumi Punpun": "طابت ليلتك بونبون",
  "Kaguya-sama": "كاغويا ساما: الحب حرب",
  "Horimiya": "هوريميا",
  "Classroom of the Elite": "فصل النخبة",
  "JoJo": "مغامرات جوجو العجيبة",
  "Kingdom": "المملكة (كينغدوم)",
  "Slam Dunk": "سلام دانك",
  "20th Century Boys": "فتيان القرن العشرين",
  "Gantz": "غانتز",
  "Claymore": "كلايمور",
  "Fire Punch": "فاير بنش",
  "Hell's Paradise": "جنة الجحيم",
  "Jigokuraku": "جنة الجحيم",
  "Mashle": "ماشل: السحر والعضلات",
  "Undead Unluck": "أنديد أنلاك",
  "Blue Box": "الصندوق الأزرق",
  "Ao no Hako": "الصندوق الأزرق",
  "Komi Can't Communicate": "كومي لا تستطيع التواصل",
};

function getArabicTitleForItem(item: CatalogMedia): string | null {
  if (item.title_ar && /[\u0600-\u06FF]/.test(item.title_ar)) return item.title_ar;
  if (MANGA_AR_TITLES[item.id]) return MANGA_AR_TITLES[item.id];
  const arSyn = (item.synonyms || []).find((s) => /[\u0600-\u06FF]/.test(s));
  if (arSyn) return arSyn;
  const en = String(item.title?.english || item.title?.romaji || "");
  for (const [frag, ar] of Object.entries(MANGA_FRAGMENT_AR)) {
    if (en.toLowerCase().includes(frag.toLowerCase())) return ar;
  }
  return null;
}

type CatalogVariant = "standard" | "upcoming" | "stats" | "manga";

type Props = {
  mediaType: "ANIME" | "MANGA";
  variant?: CatalogVariant;
  status?: string;
  format?: string;
  season?: string;
  seasonYear?: number;
  countryOfOrigin?: string;
  sort?: string;
  emptyText?: string;
  search?: string;
};

function buildMediaCatalogQuery(params: {
  status?: string;
  format?: string;
  season?: string;
  seasonYear?: number;
  countryOfOrigin?: string;
  search?: string;
}) {
  const varDefs: string[] = ["$page: Int!", "$type: MediaType!", "$sort: [MediaSort!]"];
  const filterArgs: string[] = [
    "type: $type",
    "isAdult: false",
    'genre_not_in: ["Hentai"]',
    "sort: $sort",
  ];

  if (params.search) {
    varDefs.push("$search: String");
    filterArgs.push("search: $search");
  }
  if (params.status) {
    varDefs.push("$status: MediaStatus");
    filterArgs.push("status: $status");
  }
  if (params.format) {
    varDefs.push("$format: MediaFormat");
    filterArgs.push("format: $format");
  }
  if (params.season) {
    varDefs.push("$season: MediaSeason");
    filterArgs.push("season: $season");
  }
  if (typeof params.seasonYear === "number") {
    varDefs.push("$seasonYear: Int");
    filterArgs.push("seasonYear: $seasonYear");
  }
  if (params.countryOfOrigin) {
    varDefs.push("$countryOfOrigin: CountryCode");
    filterArgs.push("countryOfOrigin: $countryOfOrigin");
  }

  return `
query NovaMediaCatalog(${varDefs.join(", ")}) {
  Page(page: $page, perPage: 30) {
    pageInfo { hasNextPage }
    media(${filterArgs.join(", ")}) {
      id
      title { romaji english native }
      synonyms
      coverImage { large extraLarge }
      averageScore popularity episodes chapters volumes
      status format startDate { year month day } countryOfOrigin genres
    }
  }
}`;
}

const FORMAT_LABELS: Record<string, string> = {
  TV: "مسلسل",
  MOVIE: "فيلم",
  OVA: "OVA",
  ONA: "ONA",
  SPECIAL: "خاص",
  MUSIC: "موسيقى",
  MANGA: "مانجا",
  NOVEL: "رواية",
  ONE_SHOT: "فصل مستقل",
};

function statusLabel(status?: string) {
  if (status === "RELEASING") return "مستمرة";
  if (status === "FINISHED") return "مكتملة";
  if (status === "NOT_YET_RELEASED") return "قريباً";
  if (status === "HIATUS") return "متوقفة";
  if (status === "CANCELLED") return "ملغاة";
  return "مانجا";
}

function formatLabel(format?: string) {
  return format ? FORMAT_LABELS[format] || format : "أنمي";
}

function mangaOriginLabel(country?: string) {
  if (country === "KR") return "مانهوا ملونة";
  if (country === "CN" || country === "TW") return "مانهوا صينية";
  return "مانجا يابانية";
}

export function MediaCatalogGrid({
  mediaType,
  variant = "standard",
  status,
  format,
  season,
  seasonYear,
  countryOfOrigin,
  sort = "POPULARITY_DESC",
  emptyText = "لا توجد عناوين في هذا القسم حالياً",
  search,
}: Props) {
  const colors = useColors();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const columns = tvMode ? 5 : 3;
  const gridWidth = Math.max(0, width - 32);
  const cardGap = 12;
  const cardWidth = Math.floor((gridWidth - cardGap * (columns - 1)) / columns);
  const posterHeight = Math.round(cardWidth * 1.48);

  const [items, setItems] = useState<CatalogMedia[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [error, setError] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [focusedItemId, setFocusedItemId] = useState<number | null>(null);
  const requestSequence = useRef(0);
  const controllerRef = useRef<AbortController | null>(null);

  const loadPage = useCallback(async (requestedPage: number, append: boolean) => {
    controllerRef.current?.abort();
    const controller = new AbortController();
    controllerRef.current = controller;
    const sequence = ++requestSequence.current;
    if (append) setLoadingMore(true);
    else {
      setLoading(true);
      setError(false);
    }

    try {
      const query = buildMediaCatalogQuery({
        status,
        format,
        season,
        seasonYear,
        countryOfOrigin,
        search,
      });

      const variables: Record<string, unknown> = {
        page: requestedPage,
        type: mediaType,
        sort: [sort],
      };
      if (search) variables.search = search;
      if (status) variables.status = status;
      if (format) variables.format = format;
      if (season) variables.season = season;
      if (typeof seasonYear === "number") variables.seasonYear = seasonYear;
      if (countryOfOrigin) variables.countryOfOrigin = countryOfOrigin;

      const data = await anilistQuery<{
        Page?: { pageInfo?: { hasNextPage?: boolean }; media?: CatalogMedia[] };
      }>(query, variables, { signal: controller.signal, timeoutMs: 25_000 });
      if (sequence !== requestSequence.current || controller.signal.aborted) return;

      const nextItems = data?.Page?.media || [];
      setItems((previous) => {
        if (!append) return nextItems;
        const existingIds = new Set(previous.map((item) => item.id));
        return [...previous, ...nextItems.filter((item) => !existingIds.has(item.id))];
      });
      setPage(requestedPage);
      setHasMore(Boolean(data?.Page?.pageInfo?.hasNextPage));
      setError(false);
    } catch (requestError: any) {
      if (requestError?.name !== "AbortError" && sequence === requestSequence.current) {
        setError(true);
      }
    } finally {
      if (sequence === requestSequence.current) {
        setLoading(false);
        setLoadingMore(false);
      }
    }
  }, [countryOfOrigin, format, mediaType, search, season, seasonYear, sort, status]);

  useEffect(() => {
    setItems([]);
    setPage(1);
    setHasMore(true);
    setError(false);
    void loadPage(1, false);
    return () => controllerRef.current?.abort();
  }, [loadPage]);

  const openMedia = (item: CatalogMedia) => {
    router.push((mediaType === "MANGA" ? `/manga/${item.id}` : `/anime/${item.id}`) as any);
  };

  const renderItem = ({ item }: { item: CatalogMedia }) => {
    const arTitle = getArabicTitleForItem(item);
    const enTitle = item.title?.english || item.title?.romaji || item.title?.native || "";
    const title = arTitle || (mediaType === "MANGA" ? `${mangaOriginLabel(item.countryOfOrigin)}: ${enTitle}` : enTitle);
    const hasArabicTitle = /[\u0600-\u06FF]/.test(title);
    const year = item.startDate?.year || null;
    const cover = item.coverImage?.extraLarge || item.coverImage?.large;
    const cardSubtitle = variant === "manga"
      ? (arTitle ? enTitle : mangaOriginLabel(item.countryOfOrigin))
      : formatLabel(item.format);

    return (
      <Pressable
        testID={`catalog-item-${item.id}`}
        onPress={() => openMedia(item)}
        onFocus={() => setFocusedItemId(item.id)}
        onBlur={() => setFocusedItemId((current) => current === item.id ? null : current)}
        focusable={tvMode}
        style={[
          styles.card,
          { width: cardWidth },
          tvMode && tvFocusStyle(focusedItemId === item.id),
        ]}
      >
        <View style={[styles.poster, { height: posterHeight, backgroundColor: colors.surface, borderColor: colors.border }]}>
          {cover ? (
            <Image source={{ uri: cover }} style={StyleSheet.absoluteFill} resizeMode="cover" />
          ) : (
            <View style={styles.posterPlaceholder}>
              <Ionicons name={mediaType === "MANGA" ? "book-outline" : "film-outline"} size={28} color={colors.textMuted} />
            </View>
          )}
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.78)"]}
            style={styles.posterGradient}
          >
            {variant === "manga" ? (
              <View style={styles.posterMetaRow}>
                <Text style={styles.posterMetaText}>
                  {typeof item.chapters === "number" ? `${item.chapters} فصل` : "عدد الفصول غير معروف"}
                </Text>
              </View>
            ) : variant === "stats" ? (
              <View style={styles.posterMetaRow}>
                <Text style={styles.posterMetaText}>{year || "—"}</Text>
                {typeof item.averageScore === "number" && item.averageScore > 0 && (
                  <Text style={styles.posterScore}>★ {(item.averageScore / 10).toFixed(1)}</Text>
                )}
              </View>
            ) : variant === "upcoming" ? (
              <Text style={[styles.posterMetaText, styles.posterYear]}>{year || "قريباً"}</Text>
            ) : null}
          </LinearGradient>
          {variant === "manga" && (
            <View style={[styles.statusBadge, { backgroundColor: item.status === "RELEASING" ? colors.success : colors.homeAccent }]}>
              <Text style={styles.statusBadgeText}>{statusLabel(item.status)}</Text>
            </View>
          )}
        </View>
        <Text
          style={[
            styles.cardTitle,
            {
              color: colors.textPrimary,
              textAlign: hasArabicTitle ? "right" : "left",
              writingDirection: hasArabicTitle ? "rtl" : "ltr",
            },
          ]}
          numberOfLines={1}
        >
          {title || "عنوان غير متوفر"}
        </Text>
        <Text style={[styles.cardSubtitle, { color: colors.textMuted }]} numberOfLines={1}>
          {cardSubtitle}
        </Text>
      </Pressable>
    );
  };

  const renderEmpty = () => {
    if (loading) {
      return <View style={styles.message}><ActivityIndicator color={colors.homeAccent} size="large" /></View>;
    }
    if (error) {
      return (
        <View style={styles.message}>
          <Ionicons name="cloud-offline-outline" size={28} color={colors.textMuted} />
          <Text style={[styles.messageText, { color: colors.textSecondary }]}>تعذر تحميل العناوين</Text>
          <Pressable onPress={() => void loadPage(1, false)} style={[styles.retryButton, { borderColor: colors.border }]}>
            <Text style={[styles.retryText, { color: colors.textPrimary }]}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      );
    }
    return (
      <View style={styles.message}>
        <Ionicons name={mediaType === "MANGA" ? "book-outline" : "albums-outline"} size={28} color={colors.textMuted} />
        <Text style={[styles.messageText, { color: colors.textSecondary }]}>{emptyText}</Text>
      </View>
    );
  };

  return (
    <FlatList
      key={`catalog-${columns}`}
      data={items}
      numColumns={columns}
      keyExtractor={(item) => String(item.id)}
      renderItem={renderItem}
      columnWrapperStyle={columns > 1 ? styles.row : undefined}
      contentContainerStyle={[styles.grid, !items.length && styles.emptyGrid]}
      showsVerticalScrollIndicator={false}
      onEndReached={() => {
        if (!loading && !loadingMore && hasMore && !error) void loadPage(page + 1, true);
      }}
      onEndReachedThreshold={0.45}
      ListEmptyComponent={renderEmpty}
      ListFooterComponent={loadingMore ? <ActivityIndicator style={styles.footerLoader} color={colors.homeAccent} /> : null}
      initialNumToRender={12}
      maxToRenderPerBatch={12}
      windowSize={5}
      removeClippedSubviews={!tvMode}
    />
  );
}

const styles = StyleSheet.create({
  grid: { paddingHorizontal: 16, paddingTop: 12, paddingBottom: 110 },
  emptyGrid: { flexGrow: 1, justifyContent: "center" },
  row: { justifyContent: "space-between", marginBottom: 18 },
  card: { marginBottom: 18 },
  poster: { width: "100%", overflow: "hidden", borderRadius: 13, borderWidth: 1, position: "relative" },
  posterPlaceholder: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  posterGradient: { position: "absolute", left: 0, right: 0, bottom: 0, paddingHorizontal: 9, paddingBottom: 9, paddingTop: 38 },
  posterMetaRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between" },
  posterMetaText: { color: "#fff", fontSize: 11, fontWeight: "800", textShadowColor: "rgba(0,0,0,0.8)", textShadowRadius: 4 },
  posterScore: { color: "#FACC15", fontSize: 11, fontWeight: "800" },
  posterYear: { alignSelf: "flex-end" },
  statusBadge: { position: "absolute", top: 8, right: 8, borderRadius: 12, paddingHorizontal: 8, paddingVertical: 3 },
  statusBadgeText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  cardTitle: { fontSize: 13, lineHeight: 19, marginTop: 6, fontFamily: "Cairo_700Bold", textAlign: "left" },
  cardSubtitle: { fontSize: 11, lineHeight: 16, marginTop: 2, fontFamily: "Cairo_400Regular", textAlign: "right" },
  message: { minHeight: 220, alignItems: "center", justifyContent: "center", gap: 10, padding: 20 },
  messageText: { fontSize: 13, fontFamily: "Cairo_600SemiBold", textAlign: "center" },
  retryButton: { borderWidth: 1, borderRadius: 12, paddingHorizontal: 14, paddingVertical: 8, marginTop: 4 },
  retryText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  footerLoader: { paddingVertical: 14 },
});

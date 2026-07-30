import React, { useState, useEffect, useCallback } from "react";
import {
  View, Text, Pressable, Image, ScrollView,
  ActivityIndicator, StyleSheet, Platform, Modal,
  Dimensions, Linking,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import WebView from "react-native-webview";
import * as ScreenOrientation from "expo-screen-orientation";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";

const { width: W } = Dimensions.get("window");

/* ── AniList query ── */
const DETAIL_QUERY = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal isAdult
    title { romaji english native }
    synonyms
    coverImage { large extraLarge }
    bannerImage
    description
    episodes duration status format source
    startDate { year month day }
    endDate { year month day }
    averageScore meanScore popularity favourites
    nextAiringEpisode { airingAt episode timeUntilAiring }
    genres tags { name rank }
    studios { nodes { name isAnimationStudio } }
    trailer { id site thumbnail }
    characters(sort:[ROLE,RELEVANCE], page:1, perPage:16) {
      edges { role node { id name { full } image { large } favourites } }
    }
    relations { edges { relationType node { id title { romaji } coverImage { large } averageScore format } } }
    recommendations(sort:RATING_DESC, page:1, perPage:12) {
      nodes { mediaRecommendation { id title { romaji } coverImage { large } averageScore } }
    }
    rankings { rank type context allTime year season }
  }
}`;

/* ── Maps ── */
const GENRE_MAP: Record<string,string> = {
  Action:"أكشن", Adventure:"مغامرة", Comedy:"كوميدي", Drama:"دراما",
  Fantasy:"فانتازيا", Horror:"رعب", Mystery:"غموض", Romance:"رومانسي",
  "Sci-Fi":"خيال علمي", "Slice of Life":"حياة يومية", Sports:"رياضة",
  Supernatural:"خوارق", Thriller:"إثارة", Mecha:"ميكا",
  Music:"موسيقى", Psychological:"نفسي", School:"مدرسي",
  Isekai:"إيسيكاي", "Martial Arts":"فنون قتالية", Harem:"حريم",
  "Sword Art":"سيف فن", Military:"عسكري", Police:"شرطة", Magic:"سحر",
};
const STATUS_MAP: Record<string,string> = {
  RELEASING:"يُعرض الآن", FINISHED:"مكتمل",
  NOT_YET_RELEASED:"لم يُعرض بعد", CANCELLED:"ملغي", HIATUS:"موقوف",
};
const FORMAT_MAP: Record<string,string> = {
  TV:"مسلسل", MOVIE:"فيلم", OVA:"OVA", ONA:"ONA", SPECIAL:"خاص", MUSIC:"موسيقى",
};
const SOURCE_MAP: Record<string,string> = {
  MANGA:"مانجا", ORIGINAL:"أصلي", LIGHT_NOVEL:"رواية خفيفة",
  VISUAL_NOVEL:"لعبة مرئية", VIDEO_GAME:"لعبة فيديو", OTHER:"آخر",
  NOVEL:"رواية", ONE_SHOT:"شات واحد", DOUJINSHI:"دوجين", ANIME:"أنمي",
};
const REL_TYPE: Record<string,string> = {
  SEQUEL:"تكملة", PREQUEL:"مقدمة", SIDE_STORY:"قصة جانبية",
  ALTERNATIVE:"بديل", SPIN_OFF:"مشتق", ADAPTATION:"اقتباس", OTHER:"آخر",
};

function stripHtml(html?: string | null) {
  if (!html) return "";
  return html.replace(/<[^>]+>/g, "").replace(/&[a-z]+;/gi, c => ({
    "&amp;":"&","&lt;":"<","&gt;":">","&quot;":'"',"&apos;":"'","&#39;":"'",
    "&nbsp;":" "
  }[c] || c)).trim();
}

function fmtDate(d?: { year?: number; month?: number; day?: number } | null) {
  if (!d?.year) return null;
  return `${d.day || 1}/${d.month || 1}/${d.year}`;
}
function fmtRuntime(min?: number | null) {
  if (!min) return null;
  if (min >= 60) return `${Math.floor(min/60)}س ${min%60}د`;
  return `${min} دقيقة`;
}

function fmtCountdown(secs: number) {
  const d = Math.floor(secs / 86400);
  const h = Math.floor((secs % 86400) / 3600);
  const m = Math.floor((secs % 3600) / 60);
  if (d > 0) return `${d} يوم و ${h} ساعة`;
  if (h > 0) return `${h} ساعة و ${m} دقيقة`;
  return `${m} دقيقة`;
}

function getAgeRating(genres: string[], isAdult?: boolean) {
  const has = (g: string) => genres.includes(g);
  if (isAdult || has("Hentai"))
    return { warn: "⚠️ هذا المحتوى مخصص للبالغين (+18) ويحتوي على مشاهد صريحة." };
  if (has("Ecchi"))
    return { warn: "⚠️ هذا المحتوى مصنّف (+17) ويحتوي على مشاهد للكبار." };
  return { warn: null };
}

/* ── Sub-components ── */
function SectionHeader({ title }: { title: string }) {
  return (
    <View style={d.sectionHeader}>
      <View style={d.sectionBar} />
      <Text style={d.sectionTitle}>{title}</Text>
    </View>
  );
}

function MetaRow({ label, value, badge }: { label: string; value: string; badge?: boolean }) {
  return (
    <View style={d.metaRow}>
      <Text style={d.metaLabel}>{label}</Text>
      {badge ? (
        <View style={d.metaBadge}><Text style={d.metaBadgeText}>{value}</Text></View>
      ) : (
        <Text style={d.metaValue}>{value}</Text>
      )}
    </View>
  );
}

function CharCard({ e, animeId, animeTitle, favIds, onToggle }: {
  e: any;
  animeId: number;
  animeTitle: string;
  favIds: Set<number>;
  onToggle: (c: { id: number; name: string; image?: string; animeId: number; animeTitle: string }) => void;
}) {
  const n = e.node;
  const isFav = favIds.has(n.id);
  return (
    <View style={d.charCard}>
      <View style={[d.charImgWrap, e.role === "MAIN" && d.charImgMain]}>
        {n.image?.large ? <Image source={{ uri: n.image.large }} style={d.charImg} /> : null}
        {/* Heart button — tap to toggle favourite */}
        <Pressable
          onPress={() => onToggle({ id: n.id, name: n.name?.full || "", image: n.image?.large, animeId, animeTitle })}
          style={[d.charHeartBtn, isFav && d.charHeartBtnActive]}
          hitSlop={6}
        >
          <Ionicons name={isFav ? "heart" : "heart-outline"} size={12} color={isFav ? "#fff" : "rgba(255,255,255,0.90)"} />
        </Pressable>
      </View>
      <Text style={d.charName} numberOfLines={2}>{n.name?.full}</Text>
    </View>
  );
}

export default function AnimeDetailScreen() {
  const { id } = useLocalSearchParams<{ id: string }>();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const { isFavorite, toggleFavorite } = useApp();

  const [anime, setAnime] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [showFull, setShowFull] = useState(false);
  const [tab, setTab] = useState<"chars" | "related" | "similar">("chars");
  const [showTrailer, setShowTrailer] = useState(false);
  const [showRating, setShowRating] = useState(false);
  const [myRating, setMyRating] = useState(0);
  const [saved, setSaved] = useState(false);
  const [warnDismissed, setWarnDismissed] = useState(false);
  const [descAr, setDescAr] = useState<string | null>(null);
  const [descLoading, setDescLoading] = useState(false);
  const [countdown, setCountdown] = useState<number | null>(null);
  const [favCharIds, setFavCharIds] = useState<Set<number>>(new Set());
  const [loadError, setLoadError] = useState(false);
  const [retryTick, setRetryTick] = useState(0);

  const isFav = anime ? isFavorite(anime.id) : false;

  useEffect(() => {
    AsyncStorage.getItem("fav-characters").then(raw => {
      if (!raw) return;
      try {
        const arr = JSON.parse(raw) as Array<{ id: number }>;
        setFavCharIds(new Set(arr.map(c => c.id)));
      } catch {}
    });
  }, []);

  const toggleChar = useCallback(async (char: { id: number; name: string; image?: string; animeId: number; animeTitle: string }) => {
    const raw = await AsyncStorage.getItem("fav-characters");
    const arr = raw ? (JSON.parse(raw) as any[]) : [];
    const exists = arr.findIndex(c => c.id === char.id);
    let updated: any[];
    if (exists >= 0) {
      updated = arr.filter((_: any, i: number) => i !== exists);
      setFavCharIds(prev => { const next = new Set(prev); next.delete(char.id); return next; });
    } else {
      updated = [char, ...arr];
      setFavCharIds(prev => new Set([...prev, char.id]));
    }
    await AsyncStorage.setItem("fav-characters", JSON.stringify(updated));
    
  }, []);

  useEffect(() => {
    if (!id) return;
    setLoading(true);
    setLoadError(false);
    setAnime(null);
    setDescAr(null);

    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), 15000);

    fetch(`${getBaseUrl()}/api/anilist`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: DETAIL_QUERY, variables: { id: parseInt(id) } }),
      signal: controller.signal,
    }).then(r => r.json()).then(data => {
      const a = data.data?.Media;
      if (!a) { setLoadError(true); return; }
      setAnime(a);
      if (a?.nextAiringEpisode?.timeUntilAiring) {
        setCountdown(a.nextAiringEpisode.timeUntilAiring);
      }
      if (a?.description) {
        const cacheKey = `desc-ar-${id}`;
        AsyncStorage.getItem(cacheKey).then(cached => {
          if (controller.signal.aborted) return;
          if (cached) { setDescAr(cached); return; }
          const stripped = stripHtml(a.description).substring(0, 500);
          fetch(`${getBaseUrl()}/api/anime/translate?text=${encodeURIComponent(stripped)}`, { signal: controller.signal })
            .then(r2 => r2.json()).then(d2 => {
              if (controller.signal.aborted) return;
              const t = d2.translated;
              if (t && t !== stripped && t.length > 10) {
                setDescAr(t);
                AsyncStorage.setItem(cacheKey, t);
              } else {
                setDescAr(stripped);
              }
            }).catch(() => { if (!controller.signal.aborted) setDescAr(stripped); });
        });
      }
    }).catch((e: any) => { if (e?.name !== "AbortError") setLoadError(true); })
      .finally(() => { clearTimeout(timeoutId); setLoading(false); });

    AsyncStorage.getItem(`my-rating-${id}`).then(v => { if (v) setMyRating(parseInt(v)); });
    AsyncStorage.getItem(`saved-${id}`).then(v => { if (v === "1") setSaved(true); });
    AsyncStorage.getItem(`adult-warn-${id}`).then(v => { if (v === "1") setWarnDismissed(true); });

    return () => { clearTimeout(timeoutId); controller.abort(); };
  }, [id, retryTick]);

  /* Update countdown timer every minute */
  useEffect(() => {
    if (!countdown || countdown <= 0) return;
    const timer = setInterval(() => {
      setCountdown(prev => (prev && prev > 60) ? prev - 60 : 0);
    }, 60_000);
    return () => clearInterval(timer);
  }, [countdown]);

  /* ── قفل الاتجاه أفقياً عند فتح التريلر، استعادة العمودي عند الإغلاق أو unmount ── */
  useEffect(() => {
    if (showTrailer) {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT).catch(() => {});
    } else {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    }
    /* cleanup: يُعيد العمودي إن غادر المستخدم الصفحة أثناء فتح التريلر */
    return () => {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    };
  }, [showTrailer]);

  const handleFavorite = useCallback(async () => {
    if (!anime) return;
    
    await toggleFavorite({
      id: anime.id,
      title: anime.title.romaji,
      english: anime.title.english || "",
      thumbnail: anime.coverImage.extraLarge || anime.coverImage.large,
      episodes: anime.episodes,
      score: anime.averageScore,
      addedAt: Date.now(),
    });
  }, [anime, toggleFavorite]);

  async function toggleSave() {
    const next = !saved;
    setSaved(next);
    await AsyncStorage.setItem(`saved-${id}`, next ? "1" : "0");
  }

  async function submitRating(n: number) {
    setMyRating(n);
    setShowRating(false);
    await AsyncStorage.setItem(`my-rating-${id}`, String(n));
  }

  if (loading) return (
    <View style={[d.container, { paddingTop: topPad }]}>
      <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")}
        style={{ position: "absolute", right: 14, top: 14, width: 36, height: 36, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)", zIndex: 10 }}>
        <Ionicons name="chevron-back" size={20} color="#fff" />
      </Pressable>
      <View style={d.center}><ActivityIndicator color="#8B5CF6" size="large" /></View>
    </View>
  );
  if (!anime) return (
    <View style={[d.container, { paddingTop: topPad }]}>
      <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")}
        style={{ position: "absolute", right: 14, top: 14, width: 36, height: 36, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)", zIndex: 10 }}>
        <Ionicons name="chevron-back" size={20} color="#fff" />
      </Pressable>
      <View style={[d.center, { paddingHorizontal: 32, gap: 14 }]}>
        <Ionicons name="cloud-offline-outline" size={44} color="rgba(255,255,255,0.3)" />
        <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 15, textAlign: "center" }}>
          تعذّر تحميل بيانات الأنمي
        </Text>
        <Text style={{ color: "rgba(255,255,255,0.4)", fontFamily: "Cairo_400Regular", fontSize: 12, textAlign: "center" }}>
          يبدو أن هناك مشكلة في الاتصال بمصدر البيانات، حاول مرة أخرى
        </Text>
        <Pressable onPress={() => setRetryTick(t => t + 1)}
          style={{ marginTop: 6, backgroundColor: "#7C3AED", paddingHorizontal: 24, paddingVertical: 12, borderRadius: 14, flexDirection: "row", alignItems: "center", gap: 8 }}>
          <Ionicons name="refresh" size={16} color="#fff" />
          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 13 }}>إعادة المحاولة</Text>
        </Pressable>
      </View>
    </View>
  );

  const desc = descAr || stripHtml(anime.description);
  const mainChars = (anime.characters?.edges || []).filter((e: any) => e.role === "MAIN");
  const suppChars = (anime.characters?.edges || []).filter((e: any) => e.role === "SUPPORTING");
  const related = anime.relations?.edges || [];
  const recs = anime.recommendations?.nodes || [];
  const trailerYT = anime.trailer?.site === "youtube" ? anime.trailer.id : null;
  const startD = fmtDate(anime.startDate);
  const endD = fmtDate(anime.endDate);
  const score = anime.meanScore ? (anime.meanScore / 10).toFixed(1) : null;
  const allTimeRank = anime.rankings?.find((r: any) => r.allTime && r.type === "RATED")?.rank;
  const ageRating = getAgeRating(anime.genres || [], anime.isAdult);
  const studio = anime.studios?.nodes?.find((s: any) => s.isAnimationStudio)?.name || anime.studios?.nodes?.[0]?.name;
  const nextEp = anime.nextAiringEpisode;

  return (
    <View style={[d.container, { paddingTop: topPad }]}>
      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 100 }}>

        {/* ── Hero Banner ── */}
        <View style={d.hero}>
          {(anime.bannerImage || anime.coverImage?.extraLarge || anime.coverImage?.large) ? (
            <Image
              source={{ uri: anime.bannerImage || anime.coverImage?.extraLarge || anime.coverImage?.large }}
              style={StyleSheet.absoluteFill}
            />
          ) : null}
          <LinearGradient
            colors={["rgba(9,9,11,0.2)", "rgba(9,9,11,0.6)", "#09090B"]}
            style={StyleSheet.absoluteFill}
          />
          {/* Back */}
          <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")} style={d.backBtn}>
            <Ionicons name="chevron-back" size={20} color="#fff" />
          </Pressable>
        </View>

        {/* ── Cover + Title ── */}
        <View style={d.infoRow}>
          {anime.coverImage?.large ? (
            <Image source={{ uri: anime.coverImage.extraLarge || anime.coverImage.large }} style={d.cover} />
          ) : null}
          <View style={d.infoText}>
            <Text style={d.titleMain} numberOfLines={2}>
              {anime.title?.english || anime.title?.romaji}
            </Text>
            {anime.title?.romaji && anime.title?.english && (
              <Text style={d.titleNative} numberOfLines={1}>{anime.title.romaji}</Text>
            )}
            <View style={d.badgeRow}>
              {anime.format && (
                <View style={[d.badge, d.badgePrimary]}>
                  <Text style={d.badgePrimaryText}>{FORMAT_MAP[anime.format] || anime.format}</Text>
                </View>
              )}
              {anime.status && (
                <View style={[d.badge, d.badgeDefault]}>
                  <Text style={d.badgeDefaultText}>{STATUS_MAP[anime.status] || anime.status}</Text>
                </View>
              )}
            </View>
            <View style={d.statsRow}>
              {anime.averageScore ? (
                <View style={d.statItem}>
                  <Ionicons name="star" size={11} color="#FBBF24" />
                  <Text style={d.statText}>{(anime.averageScore / 10).toFixed(1)}</Text>
                </View>
              ) : null}
              {anime.episodes ? (
                <View style={d.statItem}>
                  <Ionicons name="play-circle" size={11} color="rgba(255,255,255,0.4)" />
                  <Text style={[d.statText, { color: "rgba(255,255,255,0.55)" }]}>{anime.episodes} حلقة</Text>
                </View>
              ) : null}
            </View>
          </View>
        </View>

        {/* ── Next episode countdown ── */}
        {nextEp && countdown && countdown > 0 ? (
          <View style={d.countdownBox}>
            <Ionicons name="time" size={14} color="#a78bfa" />
            <Text style={d.countdownText}>
              الحلقة {nextEp.episode} تُبث بعد {fmtCountdown(countdown)}
            </Text>
          </View>
        ) : null}

        {/* ── Watch buttons ── */}
        <View style={{ paddingHorizontal: 16, marginTop: nextEp && countdown && countdown > 0 ? 8 : 16, flexDirection: "row", gap: 10 }}>
          <Pressable
            onPress={() => router.push({ pathname: "/episodes/[id]", params: { id } } as any)}
            style={[d.watchBtn, { flex: 1 }]}
          >
            <View style={d.watchBtnIcon}>
              <Ionicons name="play" size={16} color="#fff" />
            </View>
            <Text style={d.watchBtnText}>مشاهدة الآن</Text>
          </Pressable>
        </View>

        {/* ── Age rating warning ── */}
        {ageRating.warn && !warnDismissed && (
          <View style={d.warnBox}>
            <Text style={d.warnText}>🔞 {ageRating.warn}</Text>
            <Pressable onPress={() => { setWarnDismissed(true); AsyncStorage.setItem(`adult-warn-${id}`, "1"); }}
              style={d.warnBtn}>
              <Text style={d.warnBtnText}>فهمتُ، لا تُظهر مجدداً</Text>
            </Pressable>
          </View>
        )}

        {/* ── 4-col action grid ── */}
        <View style={d.actionGrid}>
          {[
            { icon: "chatbubble",  label: "التعليقات", active: false,        activeColor: "#8B5CF6", onPress: () => router.push(`/comments?animeId=${anime?.id}&title=${encodeURIComponent(anime?.title?.romaji || "")}` as any) },
            { icon: "heart",       label: "المفضلة",   active: isFav,        activeColor: "#8B5CF6", onPress: handleFavorite },
            { icon: "star",        label: "تقييمي",    active: myRating > 0, activeColor: "#FBBF24", onPress: () => setShowRating(true) },
          ].map(({ icon, label, active, activeColor, onPress }) => (
            <Pressable key={label} onPress={onPress}
              style={[d.actionBtn, active && { backgroundColor: activeColor + "18", borderColor: activeColor + "40" }]}>
              <Ionicons name={icon as any} size={16} color={active ? activeColor : "rgba(255,255,255,0.4)"} />
              <Text style={[d.actionBtnLabel, active && { color: activeColor }]}>{label}</Text>
              {label === "تقييمي" && myRating > 0 ? (
                <Text style={[d.actionBtnSub, { color: "#FBBF24" }]}>{myRating}/10</Text>
              ) : null}
              {label === "المفضلة" && isFav ? (
                <Text style={[d.actionBtnSub, { color: "#8B5CF6" }]}>مضاف</Text>
              ) : null}
            </Pressable>
          ))}
        </View>

        {/* ── MAL Stats ── */}
        {(score || allTimeRank || anime.idMal) && (
          <View style={[d.malBox, { marginHorizontal: 16 }]}>
            <View style={d.malHeader}>
              <Text style={d.malTitle}>MyAnimeList</Text>
              {anime.idMal ? <Text style={d.malId}>#{anime.idMal}</Text> : null}
            </View>
            <View style={d.malStats}>
              {score ? (
                <View style={d.malStat}>
                  <View style={{ flexDirection: "row", alignItems: "center", gap: 4 }}>
                    <Ionicons name="star" size={14} color="#FBBF24" />
                    <Text style={d.malStatVal}>{score}</Text>
                  </View>
                  {anime.popularity ? (
                    <Text style={d.malStatSub}>{anime.popularity.toLocaleString()} مستخدم</Text>
                  ) : null}
                </View>
              ) : null}
              {allTimeRank ? (
                <View style={[d.malStat, { borderLeftWidth: 1, borderLeftColor: "rgba(255,255,255,0.08)" }]}>
                  <Text style={d.malStatVal}>#{allTimeRank}</Text>
                  <Text style={d.malStatSub}>الترتيب</Text>
                </View>
              ) : null}
              {(anime.favourites || 0) > 0 ? (
                <View style={[d.malStat, { borderLeftWidth: 1, borderLeftColor: "rgba(255,255,255,0.08)" }]}>
                  <Text style={d.malStatVal}>{anime.favourites.toLocaleString()}</Text>
                  <Text style={d.malStatSub}>المفضلة</Text>
                </View>
              ) : null}
            </View>
          </View>
        )}

        {/* ── Synopsis ── */}
        {desc ? (
          <View style={d.section}>
            <SectionHeader title="القصة" />
            <View style={d.descBox}>
              <Text
                style={d.descText}
                numberOfLines={showFull ? undefined : 4}
              >{desc}</Text>
              {desc.length > 200 && (
                <Pressable onPress={() => setShowFull(f => !f)} style={d.readMoreBtn}>
                  <Text style={d.readMoreText}>{showFull ? "عرض أقل" : "عرض المزيد"}</Text>
                  <Ionicons name={showFull ? "chevron-up" : "chevron-down"} size={13} color="#8B5CF6" />
                </Pressable>
              )}
            </View>
          </View>
        ) : null}

        {/* ── Genres ── */}
        {(anime.genres?.length || 0) > 0 && (
          <ScrollView horizontal showsHorizontalScrollIndicator={false}
            contentContainerStyle={{ paddingHorizontal: 16, gap: 8 }} style={{ marginTop: 14 }}>
            {anime.genres.slice(0, 10).map((g: string) => (
              <View key={g} style={d.genreChip}>
                <Text style={d.genreChipText}>{GENRE_MAP[g] || g}</Text>
              </View>
            ))}
          </ScrollView>
        )}

        {/* ── Metadata ── */}
        <View style={d.section}>
          <View style={d.metaBox}>
            {anime.source ? <MetaRow label="المصدر" value={SOURCE_MAP[anime.source] || anime.source} /> : null}
            {anime.duration ? <MetaRow label="مدة الحلقة" value={fmtRuntime(anime.duration) || ""} /> : null}
            {(startD || endD) ? <MetaRow label="عرض من : إلى" value={`${startD || "؟"} : ${endD || "مستمر"}`} /> : null}
            {studio ? <MetaRow label="الاستوديو" value={studio} badge /> : null}
            {anime.title?.english ? <MetaRow label="الاسم الإنجليزي" value={anime.title.english} /> : null}
          </View>
        </View>

        {/* ── Trailer ── */}
        {trailerYT ? (
          <View style={d.section}>
            <SectionHeader title="الإعلان الدعائي" />
            <Pressable
              onPress={() => setShowTrailer(true)}
              style={d.trailerBtn}
            >
              <Image
                source={{ uri: anime.trailer?.thumbnail || `https://img.youtube.com/vi/${trailerYT}/hqdefault.jpg` }}
                style={d.trailerImg}
              />
              <LinearGradient
                colors={["transparent", "rgba(0,0,0,0.8)"]}
                style={StyleSheet.absoluteFill}
              />
              <View style={d.trailerPlayBtn}>
                <View style={d.trailerPlay}>
                  <Ionicons name="play" size={24} color="#fff" style={{ marginLeft: 2 }} />
                </View>
              </View>
              <View style={d.trailerBottom}>
                <Text style={d.trailerLabel}>العرض الدعائي</Text>
                <Text style={d.trailerSub}>انقر للمشاهدة</Text>
              </View>
            </Pressable>
          </View>
        ) : null}

        {/* ── Tabs ── */}
        <View style={d.section}>
          {/* Tab nav */}
          <View style={d.tabNav}>
            {([
              { key: "chars", label: "الشخصيات" },
              { key: "related", label: "ذات صلة" },
              { key: "similar", label: "مشابهة" },
            ] as const).map(t => (
              <Pressable key={t.key} onPress={() => setTab(t.key)} style={d.tabBtn}>
                <Text style={[d.tabBtnText, tab === t.key && d.tabBtnTextActive]}>{t.label}</Text>
                {tab === t.key && <View style={d.tabIndicator} />}
              </Pressable>
            ))}
          </View>

          {/* Characters */}
          {tab === "chars" && (
            <View>
              {mainChars.length > 0 && (
                <>
                  <Text style={d.tabSubTitle}>الشخصيات الرئيسية</Text>
                  <View style={d.charGrid}>
                    {mainChars.map((e: any) => <CharCard key={e.node.id} e={e} animeId={anime.id} animeTitle={anime.title?.romaji || ""} favIds={favCharIds} onToggle={toggleChar} />)}
                  </View>
                </>
              )}
              {suppChars.length > 0 && (
                <>
                  <Text style={[d.tabSubTitle, { marginTop: 12 }]}>الشخصيات المساعدة</Text>
                  <View style={d.charGrid}>
                    {suppChars.slice(0, 8).map((e: any) => <CharCard key={e.node.id} e={e} animeId={anime.id} animeTitle={anime.title?.romaji || ""} favIds={favCharIds} onToggle={toggleChar} />)}
                  </View>
                </>
              )}
              {mainChars.length === 0 && suppChars.length === 0 && (
                <Text style={d.emptyTabText}>لا توجد بيانات</Text>
              )}
            </View>
          )}

          {/* Related */}
          {tab === "related" && (
            related.length === 0 ? (
              <Text style={d.emptyTabText}>لا توجد أعمال ذات صلة</Text>
            ) : (
              <ScrollView horizontal showsHorizontalScrollIndicator={false}
                contentContainerStyle={{ gap: 10, paddingBottom: 4 }}>
                {related.map((e: any) => {
                  const n = e.node;
                  return (
                    <Pressable key={n.id} onPress={() => router.replace(`/anime/${n.id}` as any)} style={d.relCard}>
                      <View style={d.relImgWrap}>
                        {n.coverImage?.large ? (
                          <Image source={{ uri: n.coverImage.large }} style={d.relImg} />
                        ) : null}
                        <View style={d.relTypeBadge}>
                          <Text style={d.relTypeBadgeText}>{REL_TYPE[e.relationType] || e.relationType}</Text>
                        </View>
                        {n.averageScore ? (
                          <View style={d.relScoreBadge}>
                            <Ionicons name="star" size={7} color="#FBBF24" />
                            <Text style={{ fontSize: 7, color: "#fff", fontWeight: "800" }}>
                              {" "}{(n.averageScore / 10).toFixed(1)}
                            </Text>
                          </View>
                        ) : null}
                      </View>
                      <Text style={d.relTitle} numberOfLines={2}>{n.title?.english || n.title?.romaji}</Text>
                    </Pressable>
                  );
                })}
              </ScrollView>
            )
          )}

          {/* Similar */}
          {tab === "similar" && (
            recs.length === 0 ? (
              <Text style={d.emptyTabText}>لا توجد توصيات</Text>
            ) : (
              <View style={d.simGrid}>
                {recs.slice(0, 12).map((n: any) => {
                  const rec = n.mediaRecommendation;
                  if (!rec) return null;
                  return (
                    <Pressable key={rec.id} onPress={() => router.replace(`/anime/${rec.id}` as any)} style={d.simCard}>
                      <View style={d.simImgWrap}>
                        {rec.coverImage?.large ? (
                          <Image source={{ uri: rec.coverImage.large }} style={d.simImg} />
                        ) : null}
                        {rec.averageScore ? (
                          <View style={d.simScore}>
                            <Ionicons name="star" size={7} color="#FBBF24" />
                            <Text style={{ fontSize: 7, color: "#fff", fontWeight: "800" }}>
                              {" "}{(rec.averageScore / 10).toFixed(1)}
                            </Text>
                          </View>
                        ) : null}
                      </View>
                      <Text style={d.simTitle} numberOfLines={2}>{rec.title?.english || rec.title?.romaji}</Text>
                    </Pressable>
                  );
                })}
              </View>
            )
          )}
        </View>
      </ScrollView>

      {/* ── Trailer Modal — in-app YouTube player ── */}
      <Modal visible={showTrailer} animationType="slide" onRequestClose={() => setShowTrailer(false)}>
        <View style={{ flex: 1, backgroundColor: "#000" }}>
          <View style={[d.trailerSheetHeader, { paddingTop: topPad + 4 }]}>
            <Ionicons name="logo-youtube" size={20} color="#FF0000" />
            <Text style={[d.trailerModalTitle, { flex: 1 }]}>الإعلان الدعائي</Text>
            <Pressable
              onPress={() => Linking.openURL(`https://www.youtube.com/watch?v=${trailerYT}`)}
              style={d.trailerCloseBtn}
            >
              <Ionicons name="open-outline" size={16} color="rgba(255,255,255,0.5)" />
            </Pressable>
            <Pressable onPress={() => setShowTrailer(false)} style={d.trailerCloseBtn}>
              <Ionicons name="close" size={18} color="rgba(255,255,255,0.6)" />
            </Pressable>
          </View>
          {/* تحميل رابط إيمبيد يوتيوب مباشرةً (لا HTML wrapper) —
              source={{ html }} يجعل الـ referer فارغاً فيحجب يوتيوب التشغيل.
              مع URI مباشر يرى يوتيوب الطلب كأنه من youtube-nocookie.com نفسه. */}
          <WebView
            source={{
              uri: `https://www.youtube-nocookie.com/embed/${trailerYT}?autoplay=1&playsinline=1&rel=0&modestbranding=1&fs=1`,
            }}
            style={{ flex: 1 }}
            allowsFullscreenVideo
            allowsInlineMediaPlayback
            mediaPlaybackRequiresUserAction={false}
            javaScriptEnabled
            domStorageEnabled
            originWhitelist={["*"]}
            mixedContentMode="always"
            userAgent="Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"
            onShouldStartLoadWithRequest={(req) => {
              const url = req.url;
              if (
                url.startsWith("about:") ||
                url.startsWith("data:") ||
                url.startsWith("blob:") ||
                url.includes("googlevideo.com") ||
                url.includes("ytimg.com") ||
                url.includes("googleapis.com") ||
                url.includes("youtube.com") ||
                url.includes("youtube-nocookie.com")
              ) {
                return true;
              }
              Linking.openURL(url).catch(() => {});
              return false;
            }}
          />
        </View>
      </Modal>

      {/* ── Rating bottom sheet ── */}
      <Modal visible={showRating} animationType="slide" transparent onRequestClose={() => setShowRating(false)}>
        <View style={d.ratingOverlay}>
          <Pressable style={StyleSheet.absoluteFill} onPress={() => setShowRating(false)} />
          <View style={d.ratingSheet}>
            <Text style={d.ratingTitle}>أضف تقييمك</Text>
            <Text style={d.ratingSub}>اختر تقييمك من 1 إلى 10</Text>
            <View style={d.ratingBtns}>
              {Array.from({ length: 10 }, (_, i) => i + 1).map(n => (
                <Pressable key={n} onPress={() => submitRating(n)}
                  style={[d.ratingNum, n <= (myRating) && d.ratingNumActive]}>
                  <Text style={[d.ratingNumText, n <= myRating && d.ratingNumTextActive]}>{n}</Text>
                </Pressable>
              ))}
            </View>
            {myRating > 0 && (
              <Pressable onPress={() => submitRating(0)} style={{ marginTop: 10 }}>
                <Text style={{ color: "rgba(239,68,68,0.6)", fontSize: 11, fontFamily: "Cairo_700Bold", textAlign: "center" }}>
                  حذف التقييم
                </Text>
              </Pressable>
            )}
          </View>
        </View>
      </Modal>
    </View>
  );
}

const d = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
  hero: { height: 240, justifyContent: "flex-end", overflow: "hidden" },
  backBtn: { position: "absolute", right: 14, top: 14, width: 36, height: 36, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  favBtn: { position: "absolute", right: 14, top: 14, width: 36, height: 36, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  infoRow: { flexDirection: "row", paddingHorizontal: 16, marginTop: -52, gap: 14, alignItems: "flex-end" },
  cover: { width: 100, height: 145, borderRadius: 16, borderWidth: 2, borderColor: "#09090B" },
  infoText: { flex: 1, paddingBottom: 8, gap: 6 },
  titleMain: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff", lineHeight: 22 },
  titleNative: { fontSize: 11, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  badgeRow: { flexDirection: "row", gap: 6, flexWrap: "wrap" },
  badge: { borderRadius: 8, paddingHorizontal: 8, paddingVertical: 3, borderWidth: 1 },
  badgePrimary: { backgroundColor: "rgba(139,92,246,0.18)", borderColor: "rgba(139,92,246,0.35)" },
  badgePrimaryText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  badgeDefault: { backgroundColor: "rgba(255,255,255,0.06)", borderColor: "rgba(255,255,255,0.1)" },
  badgeDefaultText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.55)" },
  statsRow: { flexDirection: "row", gap: 10 },
  statItem: { flexDirection: "row", alignItems: "center", gap: 4 },
  statText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#fff" },
  countdownBox: {
    flexDirection: "row", alignItems: "center", gap: 8,
    marginHorizontal: 16, marginTop: 12, paddingHorizontal: 12, paddingVertical: 10,
    borderRadius: 12, backgroundColor: "rgba(139,92,246,0.08)",
    borderWidth: 1, borderColor: "rgba(139,92,246,0.2)",
  },
  countdownText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#a78bfa", flex: 1 },
  watchBtn: { height: 52, borderRadius: 18, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 10, backgroundColor: "#7C3AED" },
  epListBtn: { height: 52, borderRadius: 18, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1.5, borderColor: "rgba(139,92,246,0.40)", paddingHorizontal: 18 },
  epListBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  watchBtnIcon: { width: 32, height: 32, backgroundColor: "rgba(255,255,255,0.2)", borderRadius: 12, alignItems: "center", justifyContent: "center" },
  watchBtnText: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  warnBox: { margin: 16, borderRadius: 16, backgroundColor: "rgba(239,68,68,0.1)", borderWidth: 1, borderColor: "rgba(239,68,68,0.35)", overflow: "hidden" },
  warnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#fca5a5", padding: 14, lineHeight: 18 },
  warnBtn: { borderTopWidth: 1, borderTopColor: "rgba(239,68,68,0.2)", paddingVertical: 10, alignItems: "center", backgroundColor: "rgba(239,68,68,0.07)" },
  warnBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(252,165,165,0.7)" },
  actionGrid: { flexDirection: "row", gap: 8, paddingHorizontal: 16, marginTop: 12 },
  actionBtn: { flex: 1, alignItems: "center", gap: 4, paddingVertical: 12, borderRadius: 18, backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  actionBtnLabel: { fontSize: 9, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.45)" },
  actionBtnSub: { fontSize: 9, fontFamily: "Cairo_700Bold", opacity: 0.7 },
  malBox: { borderRadius: 18, overflow: "hidden", borderWidth: 1, borderColor: "rgba(59,130,246,0.25)", backgroundColor: "#1a2d4a", marginTop: 14 },
  malHeader: { flexDirection: "row", justifyContent: "center", alignItems: "center", gap: 8, paddingVertical: 8, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.1)" },
  malTitle: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "rgba(147,197,253,0.8)" },
  malId: { fontSize: 9, color: "rgba(147,197,253,0.4)", fontFamily: "Cairo_400Regular" },
  malStats: { flexDirection: "row" },
  malStat: { flex: 1, alignItems: "center", paddingVertical: 12 },
  malStatVal: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  malStatSub: { fontSize: 9, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", marginTop: 2 },
  section: { paddingHorizontal: 16, marginTop: 18 },
  sectionHeader: { flexDirection: "row", alignItems: "center", gap: 8, marginBottom: 10 },
  sectionBar: { width: 3, height: 16, backgroundColor: "#8B5CF6", borderRadius: 2 },
  sectionTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  descBox: { backgroundColor: "rgba(255,255,255,0.03)", borderRadius: 14, padding: 14, borderWidth: 1, borderColor: "rgba(255,255,255,0.06)" },
  descText: { fontSize: 13, color: "rgba(255,255,255,0.75)", lineHeight: 22, fontFamily: "Cairo_400Regular", textAlign: "right" },
  readMoreBtn: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 4, marginTop: 10 },
  readMoreText: { fontSize: 12, color: "#8B5CF6", fontFamily: "Cairo_700Bold" },
  genreChip: { paddingHorizontal: 12, paddingVertical: 6, borderRadius: 20, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)" },
  genreChipText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  metaBox: { backgroundColor: "rgba(255,255,255,0.03)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(255,255,255,0.06)", overflow: "hidden" },
  metaRow: { flexDirection: "row", justifyContent: "space-between", alignItems: "center", paddingHorizontal: 14, paddingVertical: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.04)" },
  metaLabel: { fontSize: 11, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  metaValue: { fontSize: 11, color: "rgba(255,255,255,0.8)", fontFamily: "Cairo_700Bold", textAlign: "right", flex: 1, marginRight: 8 },
  metaBadge: { backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 8, paddingHorizontal: 8, paddingVertical: 2 },
  metaBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  trailerBtn: { height: 180, borderRadius: 16, overflow: "hidden", position: "relative", backgroundColor: "#111" },
  trailerImg: { width: "100%", height: "100%", resizeMode: "cover" },
  trailerPlayBtn: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, alignItems: "center", justifyContent: "center" },
  trailerPlay: { width: 56, height: 56, backgroundColor: "rgba(255,0,0,0.85)", borderRadius: 28, alignItems: "center", justifyContent: "center", shadowColor: "#FF0000", shadowOpacity: 0.5, shadowRadius: 12, elevation: 8 },
  trailerBottom: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 12 },
  trailerLabel: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  trailerSub: { fontSize: 10, color: "rgba(255,255,255,0.55)", fontFamily: "Cairo_400Regular", marginTop: 2 },
  trailerSheetHeader: { flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 14, paddingVertical: 10, backgroundColor: "#111" },
  trailerModalTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  trailerCloseBtn: { width: 36, height: 36, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.08)", borderRadius: 12 },
  tabNav: { flexDirection: "row", borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.07)", marginBottom: 14 },
  tabBtn: { flex: 1, alignItems: "center", paddingBottom: 10, position: "relative" },
  tabBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.35)" },
  tabBtnTextActive: { color: "#fff" },
  tabIndicator: { position: "absolute", bottom: 0, left: "20%", right: "20%", height: 2, backgroundColor: "#8B5CF6", borderRadius: 1 },
  tabSubTitle: { fontSize: 10, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_700Bold", marginBottom: 10, textAlign: "right" },
  charGrid: { flexDirection: "row", flexWrap: "wrap", gap: 10 },
  charCard: { width: (W - 32 - 60) / 5, alignItems: "center", gap: 4 },
  charImgWrap: { width: (W - 32 - 60) / 5, aspectRatio: 0.7, borderRadius: 10, overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", backgroundColor: "#1C1C22", position: "relative" },
  charImgMain: { borderColor: "rgba(139,92,246,0.4)", borderWidth: 2 },
  charImg: { width: "100%", height: "100%" },
  charHeartBtn: { position: "absolute", bottom: 4, right: 4, backgroundColor: "rgba(0,0,0,0.65)", borderRadius: 10, padding: 4, zIndex: 2, borderWidth: 1.5, borderColor: "rgba(255,255,255,0.35)" },
  charHeartBtnActive: { backgroundColor: "rgba(244,63,94,0.85)", borderColor: "#f43f5e" },
  charName: { fontSize: 8, color: "rgba(255,255,255,0.6)", fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 12 },
  emptyTabText: { textAlign: "center", color: "rgba(255,255,255,0.2)", fontSize: 12, fontFamily: "Cairo_400Regular", paddingVertical: 20 },
  relCard: { width: 100, gap: 6 },
  relImgWrap: { width: 100, height: 140, borderRadius: 12, overflow: "hidden", position: "relative", backgroundColor: "#1C1C22" },
  relImg: { width: "100%", height: "100%" },
  relTypeBadge: { position: "absolute", top: 5, right: 5, backgroundColor: "rgba(0,0,0,0.75)", borderRadius: 6, paddingHorizontal: 5, paddingVertical: 2 },
  relTypeBadgeText: { fontSize: 7, color: "#fff", fontFamily: "Cairo_700Bold" },
  relScoreBadge: { position: "absolute", bottom: 5, left: 5, flexDirection: "row", alignItems: "center", gap: 2, backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 6, paddingHorizontal: 4, paddingVertical: 2 },
  relTitle: { fontSize: 10, color: "rgba(255,255,255,0.7)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  simGrid: { flexDirection: "row", flexWrap: "wrap", gap: 8 },
  simCard: { width: (W - 32 - 16) / 3, gap: 4 },
  simImgWrap: { width: "100%", aspectRatio: 0.7, borderRadius: 12, overflow: "hidden", position: "relative", backgroundColor: "#1C1C22" },
  simImg: { width: "100%", height: "100%" },
  simScore: { position: "absolute", bottom: 5, left: 5, flexDirection: "row", alignItems: "center", gap: 2, backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 6, paddingHorizontal: 4, paddingVertical: 2 },
  simTitle: { fontSize: 10, color: "rgba(255,255,255,0.65)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  ratingOverlay: { flex: 1, backgroundColor: "rgba(0,0,0,0.6)", justifyContent: "flex-end" },
  ratingSheet: { backgroundColor: "#18181B", borderTopLeftRadius: 28, borderTopRightRadius: 28, padding: 24, gap: 16, borderTopWidth: 1, borderTopColor: "rgba(255,255,255,0.08)" },
  ratingTitle: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center" },
  ratingSub: { fontSize: 12, color: "rgba(255,255,255,0.4)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  ratingBtns: { flexDirection: "row", flexWrap: "wrap", gap: 8, justifyContent: "center" },
  ratingNum: { width: 44, height: 44, borderRadius: 14, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  ratingNumActive: { backgroundColor: "rgba(139,92,246,0.25)", borderColor: "#8B5CF6" },
  ratingNumText: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.5)" },
  ratingNumTextActive: { color: "#fff" },
});

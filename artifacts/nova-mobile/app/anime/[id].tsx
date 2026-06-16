import React, { useState, useEffect, useCallback } from "react";
import {
  View, Text, Pressable, Image, ScrollView,
  ActivityIndicator, StyleSheet, Platform, Modal,
  Dimensions, TextInput,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { WebView } from "react-native-webview";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import * as Haptics from "expo-haptics";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useApp } from "@/context/AppContext";
import { CommentsSheet } from "@/components/CommentsSheet";

const { width: W } = Dimensions.get("window");

/* ── AniList query ── */
const DETAIL_QUERY = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal isAdult
    title { romaji english native }
    coverImage { large extraLarge }
    bannerImage
    description
    episodes duration status format source
    startDate { year month day }
    endDate { year month day }
    averageScore meanScore popularity favourites
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

function CharCard({ e }: { e: any }) {
  const n = e.node;
  return (
    <View style={d.charCard}>
      <View style={[d.charImgWrap, e.role === "MAIN" && d.charImgMain]}>
        {n.image?.large ? (
          <Image source={{ uri: n.image.large }} style={d.charImg} />
        ) : null}
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
  const [showComments, setShowComments] = useState(false);
  const [myRating, setMyRating] = useState(0);
  const [saved, setSaved] = useState(false);
  const [warnDismissed, setWarnDismissed] = useState(false);
  const [hoverRating, setHoverRating] = useState(0);

  const isFav = anime ? isFavorite(anime.id) : false;

  useEffect(() => {
    if (!id) return;
    setLoading(true);
    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: DETAIL_QUERY, variables: { id: parseInt(id) } }),
    }).then(r => r.json()).then(data => {
      const a = data.data?.Media;
      setAnime(a);
    }).finally(() => setLoading(false));

    AsyncStorage.getItem(`my-rating-${id}`).then(v => { if (v) setMyRating(parseInt(v)); });
    AsyncStorage.getItem(`saved-${id}`).then(v => { if (v === "1") setSaved(true); });
    AsyncStorage.getItem(`adult-warn-${id}`).then(v => { if (v === "1") setWarnDismissed(true); });
  }, [id]);

  const handleFavorite = useCallback(async () => {
    if (!anime) return;
    await Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light);
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
      <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")} style={{ padding: 16 }}>
        <Ionicons name="arrow-back" size={22} color="#fff" />
      </Pressable>
      <View style={d.center}><ActivityIndicator color="#8B5CF6" size="large" /></View>
    </View>
  );
  if (!anime) return null;

  const desc = stripHtml(anime.description);
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
            <Ionicons name="arrow-back" size={20} color="#fff" />
          </Pressable>
          {/* Fav */}
          <Pressable onPress={handleFavorite}
            style={[d.favBtn, isFav && { backgroundColor: "rgba(139,92,246,0.3)" }]}>
            <Ionicons name={isFav ? "heart" : "heart-outline"} size={20} color={isFav ? "#8B5CF6" : "#fff"} />
          </Pressable>
        </View>

        {/* ── Cover + Title ── */}
        <View style={d.infoRow}>
          {anime.coverImage?.large ? (
            <Image source={{ uri: anime.coverImage.extraLarge || anime.coverImage.large }} style={d.cover} />
          ) : null}
          <View style={d.infoText}>
            <Text style={d.titleMain} numberOfLines={2}>{anime.title?.romaji}</Text>
            {anime.title?.native && (
              <Text style={d.titleNative} numberOfLines={1}>{anime.title.native}</Text>
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
                  <Ionicons name="play-circle-outline" size={11} color="rgba(255,255,255,0.4)" />
                  <Text style={[d.statText, { color: "rgba(255,255,255,0.55)" }]}>{anime.episodes} حلقة</Text>
                </View>
              ) : null}
            </View>
          </View>
        </View>

        {/* ── Watch button ── */}
        <View style={{ paddingHorizontal: 16, marginTop: 16 }}>
          <Pressable
            onPress={() => router.push(`/episodes/${id}?title=${encodeURIComponent(anime.title?.romaji || "")}&english=${encodeURIComponent(anime.title?.english || "")}`)}
            style={d.watchBtn}
          >
            <View style={d.watchBtnIcon}>
              <Ionicons name="play" size={16} color="#fff" />
            </View>
            <Text style={d.watchBtnText}>مشاهدة الأنمي</Text>
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

        {/* ── 3-col action grid ── */}
        <View style={d.actionGrid}>
          {[
            { icon: "chatbubble-outline",  label: "التعليقات", active: false, activeColor: "#8B5CF6", onPress: () => setShowComments(true) },
            { icon: "add-circle-outline",  label: "قائمتي",    active: saved,       activeColor: "#8B5CF6", onPress: toggleSave },
            { icon: "star-outline",        label: "تقييمي",    active: myRating > 0, activeColor: "#FBBF24", onPress: () => setShowRating(true) },
          ].map(({ icon, label, active, activeColor, onPress }) => (
            <Pressable key={label} onPress={onPress}
              style={[d.actionBtn, active && { backgroundColor: activeColor + "18", borderColor: activeColor + "40" }]}>
              <Ionicons name={icon as any} size={16} color={active ? activeColor : "rgba(255,255,255,0.4)"} />
              <Text style={[d.actionBtnLabel, active && { color: activeColor }]}>{label}</Text>
              {label === "تقييمي" && myRating > 0 ? (
                <Text style={[d.actionBtnSub, { color: "#FBBF24" }]}>{myRating}/10</Text>
              ) : null}
              {label === "قائمتي" && saved ? (
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
            <Pressable onPress={() => setShowTrailer(true)} style={d.trailerBtn}>
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
                    {mainChars.map((e: any) => <CharCard key={e.node.id} e={e} />)}
                  </View>
                </>
              )}
              {suppChars.length > 0 && (
                <>
                  <Text style={[d.tabSubTitle, { marginTop: 12 }]}>الشخصيات المساعدة</Text>
                  <View style={d.charGrid}>
                    {suppChars.slice(0, 8).map((e: any) => <CharCard key={e.node.id} e={e} />)}
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
                    <Pressable key={n.id} onPress={() => router.push(`/anime/${n.id}`)} style={d.relCard}>
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
                      <Text style={d.relTitle} numberOfLines={2}>{n.title?.romaji}</Text>
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
                    <Pressable key={rec.id} onPress={() => router.push(`/anime/${rec.id}`)} style={d.simCard}>
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
                      <Text style={d.simTitle} numberOfLines={2}>{rec.title.romaji}</Text>
                    </Pressable>
                  );
                })}
              </View>
            )
          )}
        </View>
      </ScrollView>

      {/* ── Trailer Modal ── */}
      <Modal visible={showTrailer} animationType="slide" onRequestClose={() => setShowTrailer(false)}>
        <View style={{ flex: 1, backgroundColor: "#000" }}>
          <View style={[d.trailerModalHeader, { paddingTop: topPad + 4 }]}>
            <Pressable onPress={() => setShowTrailer(false)} style={d.trailerCloseBtn}>
              <Ionicons name="close" size={20} color="#fff" />
            </Pressable>
            <Text style={d.trailerModalTitle}>الإعلان الدعائي</Text>
            <View style={{ width: 36 }} />
          </View>
          <WebView
            source={{
              uri: `https://www.youtube-nocookie.com/embed/${trailerYT}?autoplay=1&rel=0&fs=1&playsinline=1&modestbranding=1`,
            }}
            style={{ flex: 1 }}
            allowsFullscreenVideo
            allowsInlineMediaPlayback
            mediaPlaybackRequiresUserAction={false}
            javaScriptEnabled
            domStorageEnabled
            originWhitelist={["*"]}
            userAgent="Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1"
          />
        </View>
      </Modal>

      {/* ── Comments bottom sheet ── */}
      <CommentsSheet
        visible={showComments}
        onClose={() => setShowComments(false)}
        animeId={anime?.id}
        title={anime?.title?.romaji}
      />

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
  backBtn: { position: "absolute", left: 14, top: 14, width: 36, height: 36, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
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
  watchBtn: { height: 52, borderRadius: 18, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 10, backgroundColor: "#7C3AED" },
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
  sectionBar: { width: 4, height: 18, backgroundColor: "#8B5CF6", borderRadius: 2 },
  sectionTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  descBox: { backgroundColor: "#111116", borderWidth: 1, borderColor: "rgba(255,255,255,0.06)", borderRadius: 18, padding: 14 },
  descText: { fontSize: 13, color: "#B4B4B8", lineHeight: 24, fontFamily: "Cairo_400Regular", textAlign: "right" },
  readMoreBtn: { flexDirection: "row", alignItems: "center", gap: 4, marginTop: 10 },
  readMoreText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#8B5CF6" },
  genreChip: { paddingHorizontal: 12, paddingVertical: 7, backgroundColor: "#18181B", borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.06)" },
  genreChipText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.55)" },
  metaBox: { borderRadius: 18, borderWidth: 1, borderColor: "rgba(255,255,255,0.06)", overflow: "hidden", backgroundColor: "rgba(255,255,255,0.025)" },
  metaRow: { flexDirection: "row", justifyContent: "space-between", alignItems: "center", paddingHorizontal: 16, paddingVertical: 11, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  metaLabel: { fontSize: 11, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  metaValue: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.8)", maxWidth: "60%", textAlign: "right" },
  metaBadge: { paddingHorizontal: 10, paddingVertical: 4, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1, borderColor: "rgba(139,92,246,0.3)" },
  metaBadgeText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#c4b5fd" },
  trailerBtn: { borderRadius: 18, overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", aspectRatio: 16 / 9 },
  trailerImg: { width: "100%", height: "100%" },
  trailerPlayBtn: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  trailerPlay: { width: 64, height: 64, backgroundColor: "#DC2626", borderRadius: 32, alignItems: "center", justifyContent: "center" },
  trailerBottom: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 14 },
  trailerLabel: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  trailerSub: { fontSize: 10, color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular" },
  tabNav: { flexDirection: "row", borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.08)", marginBottom: 14 },
  tabBtn: { flex: 1, alignItems: "center", paddingBottom: 10, position: "relative" },
  tabBtnText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.3)" },
  tabBtnTextActive: { color: "#c4b5fd" },
  tabIndicator: { position: "absolute", bottom: 0, left: 0, right: 0, height: 2, backgroundColor: "#8B5CF6", borderRadius: 1 },
  tabSubTitle: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.35)", marginBottom: 10, textAlign: "center" },
  charGrid: { flexDirection: "row", flexWrap: "wrap", gap: 8 },
  charCard: { width: (W - 32 - 24) / 4, alignItems: "center", gap: 6 },
  charImgWrap: { width: "100%", aspectRatio: 3 / 4, borderRadius: 12, overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  charImgMain: { borderColor: "rgba(139,92,246,0.5)" },
  charImg: { width: "100%", height: "100%", resizeMode: "cover" },
  charName: { fontSize: 8, color: "rgba(255,255,255,0.5)", fontFamily: "Cairo_700Bold", textAlign: "center", lineHeight: 12 },
  emptyTabText: { textAlign: "center", color: "rgba(255,255,255,0.2)", fontSize: 13, fontFamily: "Cairo_400Regular", paddingVertical: 24 },
  relCard: { width: 110, gap: 4 },
  relImgWrap: { width: 110, height: 155, borderRadius: 16, overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", backgroundColor: "#18181B", position: "relative" },
  relImg: { width: "100%", height: "100%", resizeMode: "cover" },
  relTypeBadge: { position: "absolute", top: 6, right: 6, backgroundColor: "rgba(139,92,246,0.9)", borderRadius: 6, paddingHorizontal: 5, paddingVertical: 2 },
  relTypeBadgeText: { fontSize: 7, color: "#fff", fontFamily: "Cairo_700Bold" },
  relScoreBadge: { position: "absolute", top: 6, left: 6, flexDirection: "row", alignItems: "center", backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 6, paddingHorizontal: 4, paddingVertical: 2 },
  relTitle: { fontSize: 9, color: "rgba(255,255,255,0.65)", fontFamily: "Cairo_700Bold", lineHeight: 13 },
  simGrid: { flexDirection: "row", flexWrap: "wrap", gap: 10 },
  simCard: { width: (W - 32 - 20) / 3, gap: 6 },
  simImgWrap: { width: "100%", aspectRatio: 2 / 3, borderRadius: 14, overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", backgroundColor: "#18181B", position: "relative" },
  simImg: { width: "100%", height: "100%", resizeMode: "cover" },
  simScore: { position: "absolute", top: 5, right: 5, flexDirection: "row", alignItems: "center", backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 6, paddingHorizontal: 4, paddingVertical: 2 },
  simTitle: { fontSize: 9, color: "rgba(255,255,255,0.55)", fontFamily: "Cairo_700Bold", lineHeight: 13 },
  trailerModalHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingBottom: 12, backgroundColor: "#000" },
  trailerCloseBtn: { width: 36, height: 36, backgroundColor: "rgba(255,255,255,0.1)", borderRadius: 18, alignItems: "center", justifyContent: "center" },
  trailerModalTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "#fff" },
  ratingOverlay: { flex: 1, backgroundColor: "rgba(0,0,0,0.75)", justifyContent: "flex-end" },
  ratingSheet: { backgroundColor: "#111116", borderTopLeftRadius: 28, borderTopRightRadius: 28, padding: 24, paddingBottom: 40, borderTopWidth: 1, borderTopColor: "rgba(255,255,255,0.08)" },
  ratingTitle: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center", marginBottom: 6 },
  ratingSub: { fontSize: 11, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular", textAlign: "center", marginBottom: 20 },
  ratingBtns: { flexDirection: "row", flexWrap: "wrap", gap: 8, justifyContent: "center" },
  ratingNum: { width: 40, height: 40, borderRadius: 12, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.05)", borderWidth: 1, borderColor: "rgba(255,255,255,0.06)" },
  ratingNumActive: { backgroundColor: "rgba(234,179,8,0.2)", borderColor: "rgba(234,179,8,0.4)" },
  ratingNumText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.25)" },
  ratingNumTextActive: { color: "#EAB308" },
});

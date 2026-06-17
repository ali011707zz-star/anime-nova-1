import React, { useState, useEffect, useCallback } from "react";
import {
  View, Text, Pressable, Image, ScrollView, Modal,
  ActivityIndicator, StyleSheet, Platform, Dimensions, Linking,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { WebView } from "react-native-webview";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";

const { width: W } = Dimensions.get("window");
const IMG_W = "https://image.tmdb.org/t/p/w500";
const IMG_O = "https://image.tmdb.org/t/p/original";

const GENRE_AR: Record<number, string> = {
  16: "رسوم متحركة", 28: "أكشن", 12: "مغامرة", 35: "كوميدي",
  80: "جريمة", 99: "وثائقي", 18: "دراما", 10751: "عائلي",
  14: "فانتازيا", 36: "تاريخي", 27: "رعب", 10402: "موسيقى",
  9648: "غموض", 10749: "رومانسي", 878: "خيال علمي", 10770: "تلفزيوني",
  53: "إثارة", 10752: "حرب", 37: "غرب",
};

function formatRuntime(mins: number) {
  if (!mins || mins <= 0) return "";
  if (mins < 60) return `${mins} دقيقة`;
  const h = Math.floor(mins / 60);
  const m = mins % 60;
  return m > 0 ? `${h} ساعة ${m} دقيقة` : `${h} ساعة`;
}

function StarRow({ score }: { score: number }) {
  return (
    <View style={{ flexDirection: "row", alignItems: "center", gap: 3 }}>
      {[1, 2, 3, 4, 5].map(i => {
        const filled = score / 2 >= i;
        return (
          <Ionicons
            key={i}
            name={filled ? "star" : "star"}
            size={13}
            color={filled ? "#FBBF24" : "rgba(255,255,255,0.15)"}
          />
        );
      })}
    </View>
  );
}

export default function AnimationDetailScreen() {
  const { type, id } = useLocalSearchParams<{ type: string; id: string }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();

  const [detail, setDetail] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [descAr, setDescAr] = useState<string | null>(null);
  const [saved, setSaved] = useState(false);
  const [showFull, setShowFull] = useState(false);
  const [showTrailer, setShowTrailer] = useState(false);

  const saveKey = `anim-saved-${type}-${id}`;

  useEffect(() => {
    if (!id || !type) return;
    setLoading(true);
    setDetail(null);
    setDescAr(null);

    AsyncStorage.getItem(saveKey).then(v => setSaved(v === "1"));

    const base = getBaseUrl();
    fetch(`${base}/api/animation/detail?type=${type}&id=${id}`)
      .then(r => r.json())
      .then(async d => {
        setDetail(d);
        setLoading(false);
        const overview = d.overview || "";
        if (!overview) return;
        const cacheKey = `anim-desc-ar-${type}-${id}`;
        const cached = await AsyncStorage.getItem(cacheKey);
        if (cached) { setDescAr(cached); return; }
        try {
          const r2 = await fetch(`${base}/api/anime/translate?text=${encodeURIComponent(overview.slice(0, 480))}`);
          const d2 = await r2.json();
          if (d2.translated && d2.translated !== overview && d2.translated.length > 10) {
            setDescAr(d2.translated);
            AsyncStorage.setItem(cacheKey, d2.translated).catch(() => {});
          } else {
            setDescAr(overview);
          }
        } catch { setDescAr(overview); }
      })
      .catch(() => setLoading(false));
  }, [type, id]);

  const toggleSave = useCallback(async () => {
    const next = !saved;
    setSaved(next);
    if (next) await AsyncStorage.setItem(saveKey, "1");
    else await AsyncStorage.removeItem(saveKey);
  }, [saved, saveKey]);

  const getWatchUrl = () => {
    const title = encodeURIComponent(
      detail?.original_title || detail?.original_name || detail?.title || detail?.name || ""
    );
    const poster = encodeURIComponent(detail?.poster_path ? `${IMG_W}${detail.poster_path}` : "");
    return `/animation/watch?id=${id}&type=${type}&ep=1&season=1&title=${title}&poster=${poster}`;
  };

  const getEpisodesUrl = () =>
    `/animation/episodes?id=${id}&type=${type}&season=1`;

  if (loading) {
    return (
      <View style={[s.center, { paddingTop: insets.top }]}>
        <ActivityIndicator color="#8B5CF6" size="large" />
        <Text style={s.loadingText}>جاري تحميل التفاصيل…</Text>
      </View>
    );
  }

  if (!detail) {
    return (
      <View style={[s.center, { paddingTop: insets.top }]}>
        <Ionicons name="film" size={48} color="rgba(139,92,246,0.4)" />
        <Text style={s.emptyText}>لم يتم العثور على البيانات</Text>
        <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)} style={s.backBtn}>
          <Text style={s.backBtnText}>العودة</Text>
        </Pressable>
      </View>
    );
  }

  const title = detail.original_title || detail.original_name || detail.title || detail.name || "—";
  const year = (detail.release_date || detail.first_air_date || "").slice(0, 4);
  const runtime = detail.runtime || (detail.episode_run_time?.[0]) || 0;
  const score = detail.vote_average || 0;
  const genres: { id: number; name: string }[] = detail.genres || [];
  const overview = descAr || detail.overview || "";
  const cast = (detail.credits?.cast || detail.aggregate_credits?.cast || []).slice(0, 10);
  const recs: any[] = (detail.recommendations?.results || []).slice(0, 8);
  const studios = (detail.production_companies || []).slice(0, 2).map((c: any) => c.name).join(" · ");
  const isTV = type === "tv";

  const trailerKey = (detail.videos?.results || []).find(
    (v: any) => v.site === "YouTube" && (v.type === "Trailer" || v.type === "Teaser")
  )?.key || null;

  return (
  <View style={{ flex: 1, backgroundColor: "#09090B" }}>
    <ScrollView style={s.container} showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 100 }}>

      {/* ── Hero Banner ── */}
      <View style={{ height: 240, width: "100%" }}>
        {detail.backdrop_path ? (
          <Image
            source={{ uri: `${IMG_O}${detail.backdrop_path}` }}
            style={StyleSheet.absoluteFillObject}
            resizeMode="cover"
          />
        ) : (
          <View style={[StyleSheet.absoluteFillObject, { backgroundColor: "#1a0a3a" }]} />
        )}
        <LinearGradient
          colors={["rgba(9,9,11,0.2)", "rgba(9,9,11,0.6)", "#09090B"]}
          style={StyleSheet.absoluteFillObject}
        />
        <View style={[s.heroTopRow, { paddingTop: insets.top + 8 }]}>
          <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)} style={s.backCircle}>
            <Ionicons name="chevron-forward" size={20} color="#fff" />
          </Pressable>
          {score > 0 && (
            <View style={s.scorePill}>
              <Ionicons name="star" size={11} color="#FBBF24" />
              <Text style={s.scorePillText}>{score.toFixed(1)}</Text>
            </View>
          )}
        </View>
        <View style={s.typePill}>
          <Ionicons name={isTV ? "tv" : "film"} size={11} color="#8B5CF6" />
          <Text style={s.typePillText}>{isTV ? "مسلسل" : "فيلم"}</Text>
        </View>
      </View>

      {/* ── Cover + Title ── */}
      <View style={s.coverRow}>
        <View style={s.coverWrap}>
          {detail.poster_path ? (
            <Image source={{ uri: `${IMG_W}${detail.poster_path}` }} style={s.coverImg} />
          ) : (
            <View style={[s.coverImg, s.coverPlaceholder]}>
              <Ionicons name="film" size={28} color="rgba(255,255,255,0.2)" />
            </View>
          )}
        </View>
        <View style={s.titleCol}>
          <Text style={s.titleText} numberOfLines={3}>{title}</Text>
          <View style={s.metaRow}>
            {year ? <Text style={s.metaChip}>{year}</Text> : null}
            {runtime > 0 ? <Text style={s.metaChip}>{formatRuntime(runtime)}</Text> : null}
            {isTV && detail.number_of_seasons > 0 && (
              <Text style={[s.metaChip, s.metaChipPurple]}>{detail.number_of_seasons} موسم</Text>
            )}
          </View>
        </View>
      </View>

      {/* ── Score row ── */}
      {score > 0 && (
        <View style={s.scoreRow}>
          <StarRow score={score} />
          <Text style={s.scoreVal}>{score.toFixed(1)}</Text>
          <Text style={s.scoreDivider}>/ 10</Text>
          {detail.vote_count > 0 && (
            <Text style={s.voteCount}>{detail.vote_count.toLocaleString()} تقييم</Text>
          )}
        </View>
      )}

      {/* ── Genres ── */}
      {genres.length > 0 && (
        <ScrollView horizontal showsHorizontalScrollIndicator={false} style={s.genresScroll} contentContainerStyle={{ paddingHorizontal: 16, gap: 8 }}>
          {genres.map(g => (
            <Text key={g.id} style={s.genreChip}>
              {GENRE_AR[g.id] || g.name}
            </Text>
          ))}
        </ScrollView>
      )}

      {/* ── Studios ── */}
      {studios ? (
        <View style={s.studioRow}>
          <Ionicons name="business" size={12} color="rgba(255,255,255,0.3)" />
          <Text style={s.studioText}>{studios}</Text>
        </View>
      ) : null}

      {/* ── Watch Button ── */}
      <View style={s.watchBtnWrap}>
        <Pressable
          style={s.watchBtn}
          onPress={() => router.push((isTV ? getEpisodesUrl() : getWatchUrl()) as any)}
        >
          <LinearGradient
            colors={["#8B5CF6", "#6D28D9", "#5B21B6"]}
            start={{ x: 0, y: 0 }} end={{ x: 1, y: 0 }}
            style={s.watchBtnGrad}
          >
            <View style={s.watchBtnIconWrap}>
              <Ionicons name="play" size={16} color="#fff" />
            </View>
            <Text style={s.watchBtnText}>
              {isTV ? "مشاهدة المسلسل" : "مشاهدة الفيلم"}
            </Text>
          </LinearGradient>
        </Pressable>
      </View>

      {/* ── Action row ── */}
      <View style={s.actionRow}>
        <Pressable onPress={toggleSave} style={s.actionBtn}>
          <Ionicons
            name={saved ? "bookmark" : "bookmark"}
            size={20}
            color={saved ? "#8B5CF6" : "rgba(255,255,255,0.45)"}
          />
          <Text style={[s.actionLabel, saved && { color: "#8B5CF6" }]}>قائمتي</Text>
        </Pressable>
        {isTV && (
          <Pressable onPress={() => router.push(getEpisodesUrl() as any)} style={s.actionBtn}>
            <Ionicons name="list" size={20} color="rgba(255,255,255,0.45)" />
            <Text style={s.actionLabel}>الحلقات</Text>
          </Pressable>
        )}
        <Pressable
          onPress={() => router.push(`/comments?tmdbId=${id}&title=${encodeURIComponent(title)}` as any)}
          style={s.actionBtn}
        >
          <Ionicons name="chatbubble" size={20} color="rgba(255,255,255,0.45)" />
          <Text style={s.actionLabel}>التعليقات</Text>
        </Pressable>
      </View>

      {/* ── Overview ── */}
      {overview ? (
        <View style={s.section}>
          <Text style={s.sectionTitle}>القصة</Text>
          <View style={s.storyBox}>
            <Text style={s.overviewText} numberOfLines={showFull ? undefined : 4}>
              {overview}
            </Text>
            {overview.length > 200 && (
              <Pressable onPress={() => setShowFull(p => !p)} style={s.showMoreBtn}>
                <Text style={s.showMoreText}>{showFull ? "عرض أقل" : "عرض المزيد"}</Text>
                <Ionicons name={showFull ? "chevron-up" : "chevron-down"} size={13} color="#8B5CF6" />
              </Pressable>
            )}
          </View>
        </View>
      ) : null}

      {/* ── Cast ── */}
      {cast.length > 0 && (
        <View style={s.section}>
          <Text style={s.sectionTitle}>أبرز الأصوات / الشخصيات</Text>
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
            {cast.map((c: any, i: number) => (
              <View key={c.id || i} style={s.castCard}>
                {c.profile_path ? (
                  <Image
                    source={{ uri: `https://image.tmdb.org/t/p/w185${c.profile_path}` }}
                    style={s.castImg}
                  />
                ) : (
                  <View style={[s.castImg, s.castPlaceholder]}>
                    <Ionicons name="person" size={16} color="rgba(255,255,255,0.2)" />
                  </View>
                )}
                <Text style={s.castName} numberOfLines={2}>{c.name}</Text>
                {c.character ? (
                  <Text style={s.castChar} numberOfLines={1}>{c.character}</Text>
                ) : null}
              </View>
            ))}
          </ScrollView>
        </View>
      )}

      {/* ── Recommendations ── */}
      {recs.length > 0 && (
        <View style={s.section}>
          <Text style={s.sectionTitle}>قد يعجبك أيضاً</Text>
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 12 }}>
            {recs.map((r: any) => (
              <Pressable
                key={r.id}
                style={s.recCard}
                onPress={() => router.push(`/animation/${type}/${r.id}`)}
              >
                {r.poster_path ? (
                  <Image source={{ uri: `${IMG_W}${r.poster_path}` }} style={s.recImg} />
                ) : (
                  <View style={[s.recImg, s.recPlaceholder]}>
                    <Ionicons name="film" size={18} color="rgba(255,255,255,0.2)" />
                  </View>
                )}
                {(r.vote_average || 0) > 0 && (
                  <View style={s.recScoreBadge}>
                    <Ionicons name="star" size={7} color="#FBBF24" />
                    <Text style={s.recScoreText}>{r.vote_average.toFixed(1)}</Text>
                  </View>
                )}
                <Text style={s.recTitle} numberOfLines={2}>
                  {r.original_title || r.original_name || r.title || r.name || "—"}
                </Text>
              </Pressable>
            ))}
          </ScrollView>
        </View>
      )}

      {/* ── Trailer section ── */}
      {trailerKey ? (
        <View style={s.section}>
          <Text style={s.sectionTitle}>الإعلان الدعائي</Text>
          <Pressable onPress={() => setShowTrailer(true)} style={s.trailerBtn}>
            <Image
              source={{ uri: `https://img.youtube.com/vi/${trailerKey}/hqdefault.jpg` }}
              style={s.trailerImg}
            />
            <LinearGradient colors={["transparent", "rgba(0,0,0,0.8)"]} style={StyleSheet.absoluteFill} />
            <View style={s.trailerPlayWrap}>
              <View style={s.trailerPlay}>
                <Ionicons name="play" size={22} color="#fff" style={{ marginLeft: 2 }} />
              </View>
            </View>
            <View style={s.trailerLabelWrap}>
              <Text style={s.trailerLabelText}>العرض الدعائي</Text>
            </View>
          </Pressable>
        </View>
      ) : null}
    </ScrollView>

    {/* ── Trailer Modal ── */}
    <Modal visible={showTrailer} animationType="slide" onRequestClose={() => setShowTrailer(false)}>
      <View style={{ flex: 1, backgroundColor: "#000" }}>
        <View style={[s.trailerHeader, { paddingTop: insets.top + 4 }]}>
          <Pressable onPress={() => setShowTrailer(false)} style={s.trailerClose}>
            <Ionicons name="close" size={20} color="#fff" />
          </Pressable>
          <Text style={s.trailerHeaderText}>الإعلان الدعائي</Text>
          <Pressable
            onPress={() => Linking.openURL(`https://www.youtube.com/watch?v=${trailerKey}`)}
            style={s.trailerClose}
          >
            <Ionicons name="open" size={18} color="rgba(255,255,255,0.7)" />
          </Pressable>
        </View>
        {trailerKey ? (
          <WebView
            source={{
              uri: `https://www.youtube.com/embed/${trailerKey}?autoplay=1&rel=0&fs=1&playsinline=1&modestbranding=1&enablejsapi=1`,
            }}
            style={{ flex: 1 }}
            allowsFullscreenVideo
            allowsInlineMediaPlayback
            mediaPlaybackRequiresUserAction={false}
            javaScriptEnabled
            domStorageEnabled
            originWhitelist={["*"]}
            mixedContentMode="always"
            userAgent="Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36"
          />
        ) : null}
      </View>
    </Modal>

  </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  center: { flex: 1, backgroundColor: "#09090B", alignItems: "center", justifyContent: "center", gap: 12 },
  loadingText: { fontSize: 12, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  emptyText: { fontSize: 15, color: "rgba(255,255,255,0.4)", fontFamily: "Cairo_700Bold" },
  backBtn: { paddingHorizontal: 20, paddingVertical: 10, borderRadius: 14, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1, borderColor: "rgba(139,92,246,0.3)" },
  backBtnText: { color: "#c4b5fd", fontSize: 13, fontFamily: "Cairo_700Bold" },

  heroTopRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16 },
  backCircle: { position: "absolute", right: 14, width: 38, height: 38, borderRadius: 19, backgroundColor: "rgba(0,0,0,0.45)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", alignItems: "center", justifyContent: "center" },
  scorePill: { flexDirection: "row", alignItems: "center", gap: 4, backgroundColor: "rgba(0,0,0,0.55)", borderRadius: 10, borderWidth: 1, borderColor: "rgba(251,191,36,0.3)", paddingHorizontal: 8, paddingVertical: 5 },
  scorePillText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#FDE047" },
  typePill: { position: "absolute", bottom: 60, left: 14, flexDirection: "row", alignItems: "center", gap: 4, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 10, borderWidth: 1, borderColor: "rgba(139,92,246,0.3)", paddingHorizontal: 7, paddingVertical: 4 },
  typePillText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.8)" },

  coverRow: { flexDirection: "row", paddingHorizontal: 16, marginTop: -60, alignItems: "flex-end", gap: 14, zIndex: 10 },
  coverWrap: { shadowColor: "#000", shadowOffset: { width: 0, height: 8 }, shadowOpacity: 0.8, shadowRadius: 16, elevation: 12 },
  coverImg: { width: 88, height: 128, borderRadius: 14, borderWidth: 1, borderColor: "rgba(255,255,255,0.12)" },
  coverPlaceholder: { backgroundColor: "rgba(139,92,246,0.1)", alignItems: "center", justifyContent: "center" },
  titleCol: { flex: 1, paddingBottom: 8, gap: 8 },
  titleText: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff", lineHeight: 22, textAlign: "right" },
  metaRow: { flexDirection: "row", flexWrap: "wrap", gap: 6 },
  metaChip: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.38)", paddingHorizontal: 8, paddingVertical: 4, borderRadius: 8, borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", backgroundColor: "rgba(255,255,255,0.05)" },
  metaChipPurple: { color: "#a78bfa", borderColor: "rgba(139,92,246,0.25)", backgroundColor: "rgba(139,92,246,0.1)" },

  scoreRow: { flexDirection: "row", alignItems: "center", gap: 8, marginHorizontal: 16, marginTop: 16, backgroundColor: "rgba(251,191,36,0.07)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(251,191,36,0.18)", paddingHorizontal: 14, paddingVertical: 10 },
  scoreVal: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#FCD34D" },
  scoreDivider: { fontSize: 10, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  voteCount: { fontSize: 9, color: "rgba(255,255,255,0.25)", fontFamily: "Cairo_400Regular", marginRight: "auto" },

  genresScroll: { marginTop: 12 },
  genreChip: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.55)", paddingHorizontal: 12, paddingVertical: 6, borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", backgroundColor: "#18181B" },

  studioRow: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 16, marginTop: 10 },
  studioText: { fontSize: 10, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },

  watchBtnWrap: { paddingHorizontal: 16, marginTop: 18 },
  watchBtn: { borderRadius: 18, overflow: "hidden", shadowColor: "#7C3AED", shadowOffset: { width: 0, height: 6 }, shadowOpacity: 0.45, shadowRadius: 14, elevation: 10 },
  watchBtnGrad: { height: 52, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 10 },
  watchBtnIconWrap: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.2)", alignItems: "center", justifyContent: "center" },
  watchBtnText: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  actionRow: { flexDirection: "row", paddingHorizontal: 16, marginTop: 10, gap: 10 },
  actionBtn: { flex: 1, alignItems: "center", justifyContent: "center", gap: 5, paddingVertical: 12, borderRadius: 14, backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  actionLabel: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },

  section: { marginTop: 22 },
  sectionTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", paddingHorizontal: 16, marginBottom: 10 },
  storyBox: { marginHorizontal: 16, backgroundColor: "rgba(255,255,255,0.04)", borderRadius: 16, borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", padding: 14 },
  overviewText: { fontSize: 13, color: "rgba(255,255,255,0.65)", lineHeight: 22, fontFamily: "Cairo_400Regular", textAlign: "right" },
  showMoreBtn: { flexDirection: "row", alignItems: "center", gap: 4, marginTop: 10 },
  showMoreText: { fontSize: 12, color: "#8B5CF6", fontFamily: "Cairo_700Bold" },

  castCard: { width: 70, alignItems: "center", gap: 5 },
  castImg: { width: 60, height: 60, borderRadius: 30, borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  castPlaceholder: { backgroundColor: "rgba(255,255,255,0.05)", alignItems: "center", justifyContent: "center" },
  castName: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.7)", textAlign: "center", lineHeight: 13 },
  castChar: { fontSize: 8, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular", textAlign: "center" },

  recCard: { width: 90 },
  recImg: { width: 90, height: 130, borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", marginBottom: 6 },
  recPlaceholder: { backgroundColor: "rgba(139,92,246,0.08)", alignItems: "center", justifyContent: "center" },
  recScoreBadge: { position: "absolute", top: 5, left: 5, flexDirection: "row", alignItems: "center", gap: 2, backgroundColor: "rgba(0,0,0,0.65)", borderRadius: 6, paddingHorizontal: 4, paddingVertical: 2 },
  recScoreText: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "#fff" },
  recTitle: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.7)", lineHeight: 13, textAlign: "right" },

  trailerBtn: { marginHorizontal: 16, borderRadius: 18, overflow: "hidden", aspectRatio: 16 / 9, borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  trailerImg: { width: "100%", height: "100%" },
  trailerPlayWrap: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  trailerPlay: { width: 60, height: 60, borderRadius: 30, backgroundColor: "#DC2626", alignItems: "center", justifyContent: "center" },
  trailerLabelWrap: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 12 },
  trailerLabelText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  trailerHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingBottom: 12 },
  trailerClose: { width: 36, height: 36, backgroundColor: "rgba(255,255,255,0.1)", borderRadius: 14, alignItems: "center", justifyContent: "center" },
  trailerHeaderText: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
});

import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import {
  View, Text, Pressable, TextInput, Image, FlatList,
  ScrollView, ActivityIndicator, StyleSheet, Platform, useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle } from "@/utils/tv";

/* ── AniList query ── */
const ANIME_QUERY = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    synonyms
    coverImage { large extraLarge }
    bannerImage episodes duration status format
    nextAiringEpisode { episode airingAt }
    averageScore genres
  }
}`;

const ANIME_BY_SEARCH_QUERY = ANIME_QUERY.replace(
  "query ($id: Int) {\n  Media(id: $id, type: ANIME)",
  "query ($search: String) {\n  Media(search: $search, type: ANIME)",
);

function extractArabicTitle(synonyms?: string[]): string {
  if (!synonyms) return "";
  return synonyms.find(s => /[\u0600-\u06FF]/.test(s)) || "";
}

const PAGE_SIZE = 100;

/* ── Watch progress storage ── */
async function getWatched(animeId: string): Promise<Set<number>> {
  try {
    const v = await AsyncStorage.getItem(`watched-${animeId}`);
    return new Set(v ? JSON.parse(v) : []);
  } catch { return new Set(); }
}
async function saveWatched(animeId: string, watched: Set<number>) {
  await AsyncStorage.setItem(`watched-${animeId}`, JSON.stringify([...watched]));
}

/* ── Comment counts storage (simple cache) ── */
async function getCommentCounts(animeId: string): Promise<Record<number, number>> {
  try {
    const v = await AsyncStorage.getItem(`ep-comment-counts-${animeId}`);
    return v ? JSON.parse(v) : {};
  } catch { return {}; }
}
async function saveCommentCounts(animeId: string, counts: Record<number, number>) {
  await AsyncStorage.setItem(`ep-comment-counts-${animeId}`, JSON.stringify(counts));
}

/* ── Episode thumbnail row ── */
function EpisodeRow({
  n, anime, epData, episodeTitlesAr, watched, commentCount, onToggleWatched, onWatch, onComment,
}: {
  n: number; anime: any; epData: any[]; episodeTitlesAr: Record<number, string>; watched: boolean; commentCount: number;
  onToggleWatched: (n: number) => void; onWatch: (n: number) => void; onComment: (n: number) => void;
}) {
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const ep = epData?.find((e: any) => e.mal_id === n || e.episode_id === n);
  const thumb = ep?.images?.jpg?.image_url || anime?.coverImage?.large;
  const originalTitle = ep?.title || ep?.title_romanji || "";
  const arabicTitle = episodeTitlesAr[n] || "";
  const durationMin = anime?.duration || 24;
  const dur = durationMin >= 60
    ? `${Math.floor(durationMin / 60)}:${String(durationMin % 60).padStart(2, "0")}:00`
    : `${String(durationMin).padStart(2, "0")}:00`;

  return (
    <Pressable
      onPress={() => onWatch(n)}
      focusable={tvMode}
      style={({ focused }) => [
        ep_s.row,
        tvMode && ep_s.tvRow,
        tvMode && tvFocusStyle(focused),
        watched && ep_s.rowWatched,
      ]}
    >
      {/* Thumbnail */}
      <View style={ep_s.thumbWrap}>
        {thumb ? (
          <Image source={{ uri: thumb }} style={ep_s.thumb} />
        ) : (
          <View style={[ep_s.thumb, ep_s.thumbFallback]} />
        )}
        <Text style={ep_s.durText}>{dur}</Text>
        {watched && <View style={ep_s.watchedBorder} />}
      </View>

      {/* Info */}
      <View style={[ep_s.info, tvMode && ep_s.tvInfo]}>
        <Text style={[ep_s.epNum, tvMode && ep_s.tvEpNum, watched && { color: "#8B5CF6" }]}>الحلقة {n}</Text>
        {arabicTitle ? <Text style={[ep_s.epTitleAr, tvMode && ep_s.tvEpTitle]} numberOfLines={tvMode ? 2 : 1}>{arabicTitle}</Text> : null}
        {originalTitle ? <Text style={[ep_s.epTitleOriginal, tvMode && ep_s.tvEpOriginal]} numberOfLines={tvMode ? 2 : 1}>{originalTitle}</Text> : null}
      </View>

      <View style={[ep_s.episodeActions, tvMode && ep_s.tvEpisodeActions]}>
        {/* Comment button */}
        <Pressable
          onPress={() => onComment(n)}
          focusable={tvMode}
          style={({ focused }) => [ep_s.commentBtn, tvMode && ep_s.tvSmallButton, tvMode && tvFocusStyle(focused)]}
          accessibilityRole="button"
          accessibilityLabel={`تعليقات الحلقة ${n}`}
        >
          <Ionicons name="chatbubble-ellipses" size={tvMode ? 26 : 11} color={commentCount > 0 ? "#c4b5fd" : "rgba(255,255,255,0.2)"} />
          {commentCount > 0 && (
            <Text style={[ep_s.commentCount, tvMode && ep_s.tvCommentCount]}>{commentCount}</Text>
          )}
        </Pressable>

        {/* Eye toggle */}
        <Pressable
          onPress={() => onToggleWatched(n)}
          focusable={tvMode}
          style={({ focused }) => [ep_s.eyeBtn, watched && ep_s.eyeBtnWatched, tvMode && ep_s.tvSmallButton, tvMode && tvFocusStyle(focused)]}
          accessibilityRole="button"
          accessibilityLabel={watched ? `إلغاء مشاهدة الحلقة ${n}` : `تحديد الحلقة ${n} كمشاهدة`}
        >
          <Ionicons name={watched ? "eye" : "eye-off"} size={tvMode ? 26 : 12} color={watched ? "#8B5CF6" : "rgba(255,255,255,0.2)"} />
        </Pressable>
      </View>
    </Pressable>
  );
}

export default function EpisodeListScreen() {
  const { id, src, title, english, cover, ep } = useLocalSearchParams<{
    id: string;
    src?: string;
    title?: string;
    english?: string;
    cover?: string;
    ep?: string;
  }>();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const tvMode = isTvDevice(width, height);

  const [anime, setAnime] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [epData, setEpData] = useState<any[]>([]);
  const [episodeCatalogTotal, setEpisodeCatalogTotal] = useState(0);
  const [episodeTitlesAr, setEpisodeTitlesAr] = useState<Record<number, string>>({});
  const [search, setSearch] = useState("");
  const [page, setPage] = useState(1);
  const [watched, setWatched] = useState<Set<number>>(new Set());
  const [commentCounts, setCommentCounts] = useState<Record<number, number>>({});

  useEffect(() => {
    if (!id) return;
    const ctrl = new AbortController();
    setLoading(true);
    setEpData([]); setEpisodeCatalogTotal(0); setPage(1); setSearch("");
    getWatched(id).then(v => { if (!ctrl.signal.aborted) setWatched(v); });
    getCommentCounts(id).then(v => { if (!ctrl.signal.aborted) setCommentCounts(v); });

    const base = getBaseUrl();
    const source = Array.isArray(src) ? src[0] : src;
    const sourceTitle = (
      (Array.isArray(title) ? title[0] : title)
      || (Array.isArray(english) ? english[0] : english)
      || ""
    ).trim();
    const sourceCover = (Array.isArray(cover) ? cover[0] : cover) || "";
    const sourceEpisode = parseInt((Array.isArray(ep) ? ep[0] : ep) || "0", 10) || 0;

    const fetchMeta = async (useProxy: boolean): Promise<any> => {
      const request = (query: string, variables: Record<string, unknown>) =>
        fetch(`${base}${useProxy ? "/api/anime/anilist" : "/api/anilist"}`, {
          method: "POST",
          headers: { "Content-Type": "application/json", "Accept": "application/json" },
          body: JSON.stringify({ query, variables }),
          cache: "no-store",
          signal: ctrl.signal,
        }).then(async r => {
          if (!r.ok) throw new Error(`anilist_${r.status}`);
          return r.json();
        });

      if ((source === "mal" || source === "kitsu") && id) {
        return fetch(
          `${base}/api/anime/meta-by-id?id=${encodeURIComponent(id)}&source=${source}`,
          { cache: "no-store", signal: ctrl.signal },
        ).then(r => r.json());
      }
      if ((source === "anslayer" || !/^\d+$/.test(String(id || ""))) && sourceTitle) {
        return request(ANIME_BY_SEARCH_QUERY, { search: sourceTitle });
      }
      return request(ANIME_QUERY, { id: parseInt(id, 10) });
    };

    fetchMeta(true).then(async d => {
      if (ctrl.signal.aborted) return;
      let a = d.data?.Media;

      // The proxy is the source of truth for the mobile app, but keep a
      // direct AniList retry for transient VPS/upstream failures.
      if (!a && source !== "mal" && source !== "kitsu") {
        try {
          const direct = await fetchMeta(false);
          a = direct?.data?.Media;
        } catch {}
      }

      // Source cards can use catalog ids that AniList does not know. Keep the
      // card usable instead of showing a dead details/episodes screen.
      if (!a && sourceTitle) {
        a = {
          id: parseInt(id, 10) || 0,
          idMal: null,
          title: { romaji: sourceTitle, english: sourceTitle, native: sourceTitle },
          coverImage: { large: sourceCover, extraLarge: sourceCover },
          bannerImage: sourceCover || null,
          episodes: sourceEpisode || 0,
          duration: 0, status: "RELEASING", format: "TV",
          averageScore: 0, genres: [],
        };
      }
      setAnime(a);
      setEpisodeTitlesAr({});
      if (a?.idMal) {
        fetch(`${base}/api/anime/episode-titles?malId=${a.idMal}&anilistId=${Number(a.id || 0)}&page=1`, { signal: ctrl.signal })
          .then(r => r.json())
          .then(d => {
            if (ctrl.signal.aborted) return;
            if (Array.isArray(d?.episodes)) setEpData(d.episodes);
            const catalogTotal = a.status === "RELEASING"
              ? Number(d?.releasedTotal || 0)
              : Number(d?.total || 0);
            if (catalogTotal > 0) setEpisodeCatalogTotal(catalogTotal);
          })
          .catch((e) => {
            if (e?.name === "AbortError") return;
            // Last resort for an already-rendered details page.
            fetch(`https://api.jikan.moe/v4/anime/${a.idMal}/episodes?page=1`, { signal: ctrl.signal })
              .then(r => r.json())
              .then(fallback => {
                if (!ctrl.signal.aborted && Array.isArray(fallback?.data)) setEpData(fallback.data);
              })
              .catch(() => {});
          });
      }
    }).catch((e) => { if (e?.name !== "AbortError") console.warn("[Episodes] anilist fetch error"); })
      .finally(() => { if (!ctrl.signal.aborted) setLoading(false); });
    return () => ctrl.abort();
  }, [id]);

  /* Load comment counts from server (background, non-blocking) */
  useEffect(() => {
    if (!id) return;
    const ctrl = new AbortController();
    fetch(`${getBaseUrl()}/api/comments/count?animeId=${id}`, { signal: ctrl.signal })
      .then(r => r.json())
      .then(d => {
        if (ctrl.signal.aborted) return;
        if (d.counts && typeof d.counts === "object") {
          const numericCounts: Record<number, number> = {};
          for (const [k, v] of Object.entries(d.counts)) {
            const n = parseInt(k);
            if (!isNaN(n)) numericCounts[n] = v as number;
          }
          setCommentCounts(numericCounts);
          saveCommentCounts(id, numericCounts);
        }
      })
      .catch((e) => { if (e?.name !== "AbortError") console.warn("[Episodes] comment count error"); });
    return () => ctrl.abort();
  }, [id]);

  const toggleWatched = useCallback((n: number) => {
    setWatched(prev => {
      const next = new Set(prev);
      if (next.has(n)) next.delete(n); else next.add(n);
      saveWatched(id, next);
      return next;
    });
  }, [id]);

  function watchEp(n: number) {
    if (n < 1 || n > total) return;
    setWatched(prev => {
      const next = new Set(prev);
      next.add(n);
      saveWatched(id, next);
      return next;
    });
    const t = encodeURIComponent(anime?.title?.romaji || "");
    const eng = encodeURIComponent(anime?.title?.english || "");
    const fmt = encodeURIComponent(anime?.format || "");
    const epInfo = epData?.find((e: any) => e.mal_id === n || e.episode_id === n);
    const epTitleRaw = epInfo?.title || epInfo?.title_romanji || "";
    const et = epTitleRaw ? `&etitle=${encodeURIComponent(epTitleRaw)}` : "";
    const totalParam = total > 0 ? `&totalEps=${total}` : "";
    const coverParam = anime?.coverImage?.large ? `&cover=${encodeURIComponent(anime.coverImage.extraLarge || anime.coverImage.large)}` : "";
    const arTitle = extractArabicTitle(anime?.synonyms);
    const arParam = arTitle ? `&titleAr=${encodeURIComponent(arTitle)}` : "";
    router.push(`/watch?anime=${id}&ep=${n}${t ? `&title=${t}` : ""}${eng ? `&english=${eng}` : ""}${fmt ? `&format=${fmt}` : ""}${et}${totalParam}${coverParam}${arParam}`);
  }

  function openComments(n: number) {
    const t = encodeURIComponent(anime?.title?.romaji || "");
    router.push(`/comments?animeId=${id}&title=${t}&ep=${n}` as any);
  }

  const total = useMemo(() => {
    if (!anime) return 0;
    const airedBySchedule = anime.nextAiringEpisode?.episode
      ? Math.max(0, anime.nextAiringEpisode.episode - 1)
      : 0;
    if (anime.status === "NOT_YET_RELEASED") return 0;
    if (anime.status === "RELEASING") {
      return episodeCatalogTotal || airedBySchedule;
    }
    return Math.max(0, Number(anime.episodes || 0), episodeCatalogTotal);
  }, [anime, episodeCatalogTotal]);

  const allEps = useMemo(() => Array.from({ length: total }, (_, i) => i + 1), [total]);
  const watchedCount = useMemo(() => [...watched].filter(n => n >= 1 && n <= total).length, [watched, total]);
  const pct = total > 0 ? Math.round((watchedCount / total) * 100) : 0;

  const isSearching = search.trim().length > 0;
  const filtered = useMemo(() => {
    if (!isSearching) return allEps;
    return allEps.filter(n => n.toString().includes(search.trim()));
  }, [allEps, search]);

  const totalPages = isSearching ? 1 : Math.ceil(total / PAGE_SIZE);
  const currentPage = isSearching ? 1 : Math.min(page, totalPages);

  const displayedEps = useMemo(() => {
    if (isSearching) return filtered;
    const start = (currentPage - 1) * PAGE_SIZE;
    return allEps.slice(start, start + PAGE_SIZE);
  }, [allEps, filtered, isSearching, currentPage]);

  /* ترجمة عناوين الصفحة الحالية دفعةً بدفعة، مع الاعتماد على كاش الخادم */
  useEffect(() => {
    const pending = displayedEps
      .map(n => {
        const ep = epData.find((e: any) => e.mal_id === n || e.episode_id === n);
        return { n, title: ep?.title || ep?.title_romanji || "" };
      })
      .filter(item => item.title && !episodeTitlesAr[item.n]);
    if (!pending.length) return;
    let cancelled = false;
    (async () => {
      const translated: Record<number, string> = {};
      for (let i = 0; i < pending.length; i += 6) {
        const batch = pending.slice(i, i + 6);
        const results = await Promise.all(batch.map(async item => {
          try {
            const r = await fetch(`${getBaseUrl()}/api/anime/translate?text=${encodeURIComponent(item.title)}&from=auto&to=ar&kind=title`);
            const d = await r.json();
            const value = String(d?.translated || "").trim();
            return /[\u0600-\u06FF]/.test(value) ? { n: item.n, value } : null;
          } catch { return null; }
        }));
        for (const result of results) if (result) translated[result.n] = result.value;
        if (cancelled) return;
        if (Object.keys(translated).length) setEpisodeTitlesAr(prev => ({ ...prev, ...translated }));
      }
    })();
    return () => { cancelled = true; };
  }, [displayedEps, epData, episodeTitlesAr]);

  if (loading) return (
    <View style={ep_s.container}>
      <View style={ep_s.center}>
        <ActivityIndicator color="#8B5CF6" size="large" />
      </View>
    </View>
  );
  if (!anime) return (
    <View style={ep_s.container}>
      <View style={ep_s.center}>
        <Text style={ep_s.notFound}>لم يُعثر على الأنمي</Text>
      </View>
    </View>
  );

  return (
    <View style={[ep_s.container, { paddingTop: topPad }, tvMode && ep_s.tvContainer]}>
      {/* ── Hero Banner ── */}
      <View style={[ep_s.hero, tvMode && ep_s.tvHero]}>
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
        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")}
          focusable={tvMode}
          style={({ focused }) => [ep_s.backBtn, { top: 12 }, tvMode && ep_s.tvBackBtn, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-back" size={tvMode ? 30 : 18} color="#fff" />
        </Pressable>

        {/* Cover + info */}
        <View style={[ep_s.heroBottom, tvMode && ep_s.tvHeroBottom]}>
          {anime.coverImage?.large ? (
            <Image source={{ uri: anime.coverImage.large }} style={[ep_s.heroCover, tvMode && ep_s.tvHeroCover]} />
          ) : null}
          <View style={[ep_s.heroInfo, tvMode && ep_s.tvHeroInfo]}>
            <Text style={[ep_s.heroTitle, tvMode && ep_s.tvHeroTitle]} numberOfLines={1}>{anime.title?.romaji}</Text>
            <View style={{ flexDirection: "row", gap: 8, marginTop: 4 }}>
              <Text style={[ep_s.heroBadge, tvMode && ep_s.tvHeroBadge]}>{total} حلقة</Text>
              {watchedCount > 0 && (
                <Text style={[ep_s.heroBadge, { color: "#34D399" }]}>👁 {watchedCount} مشاهدة</Text>
              )}
              {anime.averageScore ? (
                <Text style={[ep_s.heroBadge, { color: "#FBBF24" }]}>⭐ {(anime.averageScore / 10).toFixed(1)}</Text>
              ) : null}
            </View>
          </View>
        </View>
      </View>

      {/* ── Sticky controls ── */}
      <View style={[ep_s.controls, tvMode && ep_s.tvControls]}>
        {/* Progress bar */}
        <View style={ep_s.progressRow}>
          <View style={ep_s.progressTrack}>
            <View style={[ep_s.progressFill, { width: `${pct}%` }]} />
          </View>
          <Text style={ep_s.pctText}>{pct}%</Text>
        </View>
        {/* Search */}
        <View style={[ep_s.searchBar, tvMode && ep_s.tvSearchBar]}>
          <Ionicons name="search" size={15} color="rgba(255,255,255,0.25)" />
          <TextInput
            value={search}
            onChangeText={setSearch}
            placeholder="اذهب لحلقة..."
            placeholderTextColor="rgba(255,255,255,0.25)"
            keyboardType="number-pad"
            style={[ep_s.searchInput, tvMode && ep_s.tvText]}
          />
          {search ? (
            <Pressable onPress={() => setSearch("")}>
              <Ionicons name="close" size={16} color="rgba(255,255,255,0.3)" />
            </Pressable>
          ) : null}
        </View>
        {/* Page nav */}
        {!isSearching && totalPages > 1 && (
          <View style={ep_s.pageNav}>
            <Text style={ep_s.pageRangeText}>
              الحلقات {(currentPage - 1) * PAGE_SIZE + 1}–{Math.min(currentPage * PAGE_SIZE, total)}
            </Text>
            <View style={{ flexDirection: "row", gap: 6 }}>
              <Pressable
                onPress={() => setPage(p => Math.max(1, p - 1))}
                disabled={currentPage <= 1}
                focusable={tvMode}
                style={({ focused }) => [ep_s.pageBtn, currentPage <= 1 && { opacity: 0.3 }, tvMode && ep_s.tvPageBtn, tvMode && tvFocusStyle(focused)]}>
                <Ionicons name="chevron-forward" size={14} color="rgba(255,255,255,0.6)" />
              </Pressable>
              <Text style={ep_s.pageNumText}>{currentPage}/{totalPages}</Text>
              <Pressable
                onPress={() => setPage(p => Math.min(totalPages, p + 1))}
                disabled={currentPage >= totalPages}
                focusable={tvMode}
                style={({ focused }) => [ep_s.pageBtn, currentPage >= totalPages && { opacity: 0.3 }, tvMode && ep_s.tvPageBtn, tvMode && tvFocusStyle(focused)]}>
                <Ionicons name="chevron-back" size={14} color="rgba(255,255,255,0.6)" />
              </Pressable>
            </View>
          </View>
        )}
      </View>

      {/* ── Episode list ── */}
      <FlatList
        key={tvMode ? "tv-episode-grid" : "phone-episode-list"}
        data={displayedEps}
        numColumns={tvMode ? 4 : 1}
        keyExtractor={n => n.toString()}
        showsVerticalScrollIndicator={false}
        columnWrapperStyle={tvMode ? ep_s.tvColumnWrapper : undefined}
        contentContainerStyle={[{ paddingBottom: 100 }, tvMode && ep_s.tvListContent]}
        ListHeaderComponent={
          <Pressable
            onPress={() => watchEp(displayedEps[0] || 1)}
            focusable={tvMode}
            style={({ focused }) => [ep_s.watchFromBtn, tvMode && ep_s.tvWatchFromBtn, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="play" size={tvMode ? 24 : 14} color="#8B5CF6" />
            <Text style={[ep_s.watchFromBtnText, tvMode && ep_s.tvWatchFromBtnText]}>
              {watchedCount > 0 ? `متابعة من حيث توقفت (${watchedCount + 1})` : "مشاهدة من البداية"}
            </Text>
          </Pressable>
        }
        renderItem={({ item: n }) => (
          <EpisodeRow
            n={n}
            anime={anime}
            epData={epData}
            episodeTitlesAr={episodeTitlesAr}
            watched={watched.has(n)}
            commentCount={commentCounts[n] || 0}
            onToggleWatched={toggleWatched}
            onWatch={watchEp}
            onComment={openComments}
          />
        )}
      />

    </View>
  );
}

const ep_s = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
  notFound: { fontSize: 14, color: "rgba(255,255,255,0.4)", fontFamily: "Cairo_400Regular" },
  hero: { height: 220, justifyContent: "flex-end", overflow: "hidden" },
  backBtn: { position: "absolute", right: 14, width: 36, height: 36, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  commentsBtn: { position: "absolute", left: 14, top: 12, width: 36, height: 36, backgroundColor: "rgba(139,92,246,0.25)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(139,92,246,0.4)" },
  commentsListBtn: { flexDirection: "row", alignItems: "center", gap: 8, marginHorizontal: 12, marginBottom: 8, padding: 12, borderRadius: 14, backgroundColor: "rgba(139,92,246,0.06)", borderWidth: 1, borderColor: "rgba(139,92,246,0.18)" },
  commentsListBtnText: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.85)" },
  heroBottom: { flexDirection: "row", alignItems: "flex-end", gap: 12, paddingHorizontal: 14, paddingBottom: 14 },
  heroCover: { width: 64, height: 88, borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  heroInfo: { flex: 1, paddingBottom: 4 },
  heroTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  heroBadge: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#8B5CF6" },
  controls: { backgroundColor: "rgba(9,9,11,0.97)", borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)", paddingHorizontal: 14, paddingTop: 10, paddingBottom: 8 },
  progressRow: { flexDirection: "row", alignItems: "center", gap: 8, marginBottom: 8 },
  progressTrack: { flex: 1, height: 6, backgroundColor: "rgba(255,255,255,0.08)", borderRadius: 3, overflow: "hidden" },
  progressFill: { height: "100%", backgroundColor: "#8B5CF6", borderRadius: 3 },
  pctText: { fontSize: 9, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_700Bold" },
  searchBar: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "#1C1C22", borderRadius: 12, paddingHorizontal: 12, paddingVertical: 9, borderWidth: 1, borderColor: "rgba(255,255,255,0.06)", marginBottom: 6 },
  searchInput: { flex: 1, color: "#fff", fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "right" },
  pageNav: { flexDirection: "row", justifyContent: "space-between", alignItems: "center" },
  pageRangeText: { fontSize: 10, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_700Bold" },
  pageBtn: { width: 28, height: 28, borderRadius: 8, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", alignItems: "center", justifyContent: "center" },
  pageNumText: { fontSize: 11, color: "rgba(255,255,255,0.4)", fontFamily: "Cairo_700Bold", paddingHorizontal: 4 },
  watchFromBtn: { flexDirection: "row", alignItems: "center", gap: 8, margin: 12, padding: 12, borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", backgroundColor: "rgba(139,92,246,0.07)" },
  watchFromBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#8B5CF6" },
  row: { flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 12, paddingVertical: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  rowWatched: { backgroundColor: "rgba(139,92,246,0.03)", borderBottomColor: "rgba(139,92,246,0.08)" },
  thumbWrap: { width: 72, height: 41, borderRadius: 8, overflow: "hidden", backgroundColor: "#1C1C22", position: "relative" },
  thumb: { width: "100%", height: "100%" },
  thumbFallback: { backgroundColor: "rgba(139,92,246,0.1)" },
  durText: { position: "absolute", bottom: 3, left: 3, fontSize: 6, color: "#fff", backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 3, paddingHorizontal: 2, paddingVertical: 1, fontWeight: "900" },
  watchedBorder: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, borderWidth: 2, borderColor: "rgba(139,92,246,0.4)", borderRadius: 8 },
  info: { flex: 1 },
  episodeActions: { flexDirection: "row", alignItems: "center", gap: 8 },
  epNum: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.9)" },
  epTitleAr: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.92)", textAlign: "right" },
  epTitleOriginal: { fontSize: 8, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.42)", textAlign: "right" },
  commentBtn: {
    width: 27, height: 27, borderRadius: 8, alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(139,92,246,0.06)", borderWidth: 1, borderColor: "rgba(139,92,246,0.15)",
    position: "relative",
  },
  commentCount: {
    position: "absolute", top: -4, right: -4,
    minWidth: 12, height: 12, backgroundColor: "#8B5CF6", borderRadius: 6,
    fontSize: 6, color: "#fff", fontFamily: "Cairo_700Bold",
    textAlign: "center", lineHeight: 12, paddingHorizontal: 2,
  },
  tvCommentCount: { minWidth: 20, height: 20, borderRadius: 10, fontSize: 10, lineHeight: 20, top: -6, right: -6 },
  eyeBtn: { width: 27, height: 27, borderRadius: 8, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  eyeBtnWatched: { backgroundColor: "rgba(139,92,246,0.15)", borderColor: "rgba(139,92,246,0.3)" },
  tvContainer: { paddingHorizontal: 56 },
  tvControls: { paddingHorizontal: 56, paddingTop: 22, paddingBottom: 18 },
  tvHero: { height: 390 },
  tvBackBtn: { width: 64, height: 64, borderRadius: 20 },
  tvHeroBottom: { paddingHorizontal: 56, paddingBottom: 24, gap: 24 },
  tvHeroCover: { width: 150, height: 210, borderRadius: 18 },
  tvHeroInfo: { paddingBottom: 10 },
  tvHeroBadge: { fontSize: 17, lineHeight: 26 },
  tvHeroTitle: { fontSize: 36, lineHeight: 48 },
  tvText: { fontSize: 20 },
  tvRow: { width: "23.5%", minHeight: 320, flexDirection: "column", alignItems: "stretch", paddingHorizontal: 20, paddingVertical: 20, gap: 16, borderRadius: 22, borderWidth: 2, borderBottomWidth: 2, borderColor: "rgba(255,255,255,0.08)", backgroundColor: "rgba(18,16,28,0.76)" },
  tvColumnWrapper: { justifyContent: "space-between", paddingHorizontal: 28, gap: 24 },
  tvListContent: { paddingTop: 8, gap: 24 },
  tvSmallButton: { width: 64, height: 64, borderRadius: 18 },
  tvSearchBar: { minHeight: 64, paddingVertical: 14, paddingHorizontal: 18, borderRadius: 16 },
  tvThumbWrap: { width: "100%", aspectRatio: 1.72, height: undefined, borderRadius: 16 },
  tvInfo: { flex: 0, width: "100%", minHeight: 82 },
  tvEpisodeActions: { width: "100%", justifyContent: "flex-end" },
  tvEpNum: { fontSize: 23 },
  tvEpTitle: { fontSize: 20, lineHeight: 30 },
  tvEpOriginal: { fontSize: 15, lineHeight: 23 },
  tvPageBtn: { width: 64, height: 64, borderRadius: 16 },
  tvWatchFromBtn: { marginHorizontal: 28, paddingVertical: 22, minHeight: 88, borderRadius: 22 },
  tvWatchFromBtnText: { fontSize: 20 },
});

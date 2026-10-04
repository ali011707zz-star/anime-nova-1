import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import {
  View, Text, TextInput, Image, FlatList,
  ScrollView, ActivityIndicator, StyleSheet, Platform, useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvFocusGuideView, TvPressable } from "@/utils/tv";
const Pressable = TvPressable;
import { useTvFocusMemory } from "@/utils/tvFocus";
import { useColors } from "@/hooks/useColors";

/* ── AniList query ── */
const ANIME_QUERY = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    synonyms
    coverImage { large extraLarge }
    bannerImage episodes duration status format
    seasonYear season startDate { year }
    nextAiringEpisode { episode airingAt }
    averageScore genres
    relations {
      edges {
        relationType
        node {
          id idMal title { romaji english }
          synonyms
          coverImage { large extraLarge }
          bannerImage episodes duration status format
          seasonYear season startDate { year }
          nextAiringEpisode { episode airingAt }
          averageScore
        }
      }
    }
  }
}`;

const ANIME_BY_SEARCH_QUERY = ANIME_QUERY.replace(
  "query ($id: Int) {\n  Media(id: $id, type: ANIME)",
  "query ($search: String) {\n  Media(search: $search, type: ANIME)",
);

const ANIME_RELATIONS_QUERY = `
query ($ids: [Int]) {
  Page(page: 1, perPage: 50) {
    media(id_in: $ids, type: ANIME) {
      id idMal title { romaji english }
      synonyms
      coverImage { large extraLarge }
      bannerImage episodes duration status format
      seasonYear season startDate { year }
      nextAiringEpisode { episode airingAt }
      averageScore
      relations {
        edges {
          relationType
          node {
            id idMal title { romaji english }
            synonyms
            coverImage { large extraLarge }
            bannerImage episodes duration status format
            seasonYear season startDate { year }
            nextAiringEpisode { episode airingAt }
            averageScore
          }
        }
      }
    }
  }
}`;

const MAIN_SERIES_FORMATS = new Set(["TV", "TV_SHORT", "ONA"]);
const SERIES_RELATION_TYPES = new Set(["PREQUEL", "SEQUEL"]);

function isMainSeriesEntry(media: any): boolean {
  return Number(media?.id) > 0
    && (!media?.format || MAIN_SERIES_FORMATS.has(String(media.format)));
}

function knownEpisodeCount(media: any): number | null {
  if (media?.status === "NOT_YET_RELEASED") return 0;
  if (media?.status === "RELEASING") {
    const nextEpisode = Number(media?.nextAiringEpisode?.episode || 0);
    return nextEpisode > 0 ? Math.max(0, nextEpisode - 1) : null;
  }
  const count = Number(media?.episodes || 0);
  return count > 0 ? count : null;
}

function compareSeriesChronologically(a: any, b: any): number {
  const yearA = Number(a?.seasonYear || a?.startDate?.year || 9999);
  const yearB = Number(b?.seasonYear || b?.startDate?.year || 9999);
  if (yearA !== yearB) return yearA - yearB;

  const seasonOrder: Record<string, number> = {
    WINTER: 0,
    SPRING: 1,
    SUMMER: 2,
    FALL: 3,
  };
  const seasonA = seasonOrder[String(a?.season || "").toUpperCase()] ?? 4;
  const seasonB = seasonOrder[String(b?.season || "").toUpperCase()] ?? 4;
  return seasonA - seasonB || Number(a?.id || 0) - Number(b?.id || 0);
}

function sortAnimeSeries(mediaById: Map<number, any>, links: Array<{ from: number; to: number }>): any[] {
  const ids = [...mediaById.keys()];
  const inSeries = new Set(ids);
  const nextById = new Map<number, Set<number>>();
  const indegree = new Map<number, number>();
  for (const id of ids) indegree.set(id, 0);

  for (const link of links) {
    if (!inSeries.has(link.from) || !inSeries.has(link.to) || link.from === link.to) continue;
    const next = nextById.get(link.from) || new Set<number>();
    if (next.has(link.to)) continue;
    next.add(link.to);
    nextById.set(link.from, next);
    indegree.set(link.to, (indegree.get(link.to) || 0) + 1);
  }

  const compareIds = (idA: number, idB: number) =>
    compareSeriesChronologically(mediaById.get(idA), mediaById.get(idB));
  const ready = ids.filter(id => indegree.get(id) === 0).sort(compareIds);
  const ordered: number[] = [];

  while (ready.length) {
    const current = ready.shift()!;
    ordered.push(current);
    for (const nextId of nextById.get(current) || []) {
      const nextIndegree = (indegree.get(nextId) || 0) - 1;
      indegree.set(nextId, nextIndegree);
      if (nextIndegree === 0) {
        ready.push(nextId);
        ready.sort(compareIds);
      }
    }
  }

  if (ordered.length < ids.length) {
    const remaining = ids.filter(id => !ordered.includes(id)).sort(compareIds);
    ordered.push(...remaining);
  }
  return ordered.map(id => mediaById.get(id)).filter(Boolean);
}

async function queryAniList(
  base: string,
  query: string,
  variables: Record<string, unknown>,
  signal: AbortSignal,
  useProxy = true,
): Promise<any> {
  const response = await fetch(`${base}${useProxy ? "/api/anime/anilist" : "/api/anilist"}`, {
    method: "POST",
    headers: { "Content-Type": "application/json", "Accept": "application/json" },
    body: JSON.stringify({ query, variables }),
    cache: "no-store",
    signal,
  });
  if (!response.ok) throw new Error(`anilist_${response.status}`);
  const payload = await response.json();
  if (Array.isArray(payload?.errors) && payload.errors.length) {
    throw new Error("anilist_graphql_error");
  }
  return payload?.data;
}

async function loadAnimeSeries(root: any, base: string, signal: AbortSignal): Promise<any[]> {
  const rootId = Number(root?.id);
  if (!Number.isFinite(rootId) || rootId <= 0 || !isMainSeriesEntry(root)) return root ? [root] : [];

  const mediaById = new Map<number, any>([[rootId, { ...root, relations: undefined }]]);
  const links: Array<{ from: number; to: number }> = [];
  const scanned = new Set<number>();
  let pending = [root];

  try {
    for (let depth = 0; depth < 8 && mediaById.size < 40; depth += 1) {
      const nextIds = new Set<number>();

      for (const media of pending) {
        const fromId = Number(media?.id);
        if (!Number.isFinite(fromId) || fromId <= 0 || scanned.has(fromId)) continue;
        scanned.add(fromId);

        const edges = Array.isArray(media?.relations?.edges) ? media.relations.edges : [];
        for (const edge of edges) {
          const relationType = String(edge?.relationType || "").toUpperCase();
          const node = edge?.node;
          const toId = Number(node?.id);
          if (!SERIES_RELATION_TYPES.has(relationType) || !isMainSeriesEntry(node) || toId === fromId) continue;
          if (!mediaById.has(toId) && mediaById.size >= 40) continue;

          mediaById.set(toId, { ...node, relations: undefined });
          links.push(relationType === "SEQUEL"
            ? { from: fromId, to: toId }
            : { from: toId, to: fromId });
          if (!scanned.has(toId)) nextIds.add(toId);
        }
      }

      const ids = [...nextIds].slice(0, Math.max(0, 40 - scanned.size));
      if (!ids.length) break;

      const fetched: any[] = [];
      try {
        for (let index = 0; index < ids.length; index += 25) {
          const data = await queryAniList(base, ANIME_RELATIONS_QUERY, { ids: ids.slice(index, index + 25) }, signal);
          const media = data?.Page?.media;
          if (Array.isArray(media)) fetched.push(...media);
        }
      } catch (error: any) {
        if (signal.aborted) throw error;
        console.warn("[Episodes] season chain lookup incomplete");
        break;
      }
      if (!fetched.length) break;

      for (const media of fetched) {
        const mediaId = Number(media?.id);
        if (Number.isFinite(mediaId) && mediaId > 0) {
          mediaById.set(mediaId, { ...media, relations: undefined });
        }
      }
      pending = fetched;
    }
  } catch (error: any) {
    if (signal.aborted) throw error;
    console.warn("[Episodes] season chain lookup incomplete");
  }

  return sortAnimeSeries(mediaById, links);
}

function extractArabicTitle(synonyms?: string[]): string {
  if (!synonyms) return "";
  return synonyms.find(s => /[\u0600-\u06FF]/.test(s)) || "";
}

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
  n, anime, epByNumber, episodeTitlesAr, watched, commentCount, onToggleWatched, onWatch, onComment,
  onFocus,
  hasTVPreferredFocus = false,
}: {
  n: number; anime: any; epByNumber: Map<number, any>; episodeTitlesAr: Record<number, string>; watched: boolean; commentCount: number;
  onToggleWatched: (n: number) => void; onWatch: (n: number) => void; onComment: (n: number) => void;
  onFocus?: () => void;
  hasTVPreferredFocus?: boolean;
}) {
  const colors = useColors();
  const ep_s = useMemo(() => createEpStyles(colors), [colors]);
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const ep = epByNumber.get(n);
  const isFiller = ep?.filler === true;
  const thumb = ep?.images?.jpg?.image_url || anime?.coverImage?.large;
  const originalTitle = ep?.title || ep?.title_romanji || "";
  const arabicTitle = episodeTitlesAr[n] || "";
  const durationMin = anime?.duration || 24;
  const dur = durationMin >= 60
    ? `${Math.floor(durationMin / 60)}:${String(durationMin % 60).padStart(2, "0")}:00`
    : `${String(durationMin).padStart(2, "0")}:00`;

  return (
    <View style={[
      ep_s.row,
      tvMode && ep_s.tvRow,
      watched && ep_s.rowWatched,
      { backgroundColor: watched ? colors.surfaceElevated : colors.card, borderColor: colors.border },
    ]}>
      <Pressable
        onPress={() => onWatch(n)}
        focusable={tvMode}
        hasTVPreferredFocus={hasTVPreferredFocus}
        onFocus={onFocus}
        style={({ focused, pressed }) => [
          ep_s.episodeMain,
          tvMode && ep_s.tvEpisodeMain,
          tvMode && tvFocusStyle(focused),
          pressed && { opacity: 0.82 },
        ]}
      >
      {/* Thumbnail */}
      <View style={[ep_s.thumbWrap, tvMode && ep_s.tvThumbWrap]}>
        {thumb ? (
          <Image source={{ uri: thumb }} style={ep_s.thumb} />
        ) : (
          <View style={[ep_s.thumb, ep_s.thumbFallback]} />
        )}
        <Text style={[ep_s.durText, tvMode && ep_s.tvDurText]}>{dur}</Text>
        {watched && <View style={ep_s.watchedBorder} />}
      </View>

      {/* Info */}
      <View style={[ep_s.info, tvMode && ep_s.tvInfo]}>
        <View style={ep_s.epNumRow}>
          {isFiller ? <Text style={[ep_s.fillerBadge, tvMode && ep_s.tvFillerBadge]}>فلر</Text> : null}
          <Text style={[ep_s.epNum, tvMode && ep_s.tvEpNum, { color: watched ? colors.accent : colors.textPrimary }]}>الحلقة {n}</Text>
        </View>
        {arabicTitle ? <Text style={[ep_s.epTitleAr, tvMode && ep_s.tvEpTitle, { color: colors.textPrimary }]} numberOfLines={tvMode ? 2 : 1}>{arabicTitle}</Text> : null}
        {originalTitle ? <Text style={[ep_s.epTitleOriginal, tvMode && ep_s.tvEpOriginal, { color: colors.textSecondary }]} numberOfLines={tvMode ? 2 : 1}>{originalTitle}</Text> : null}
      </View>
      </Pressable>

      <View style={[ep_s.episodeActions, tvMode && ep_s.tvEpisodeActions]}>
        {/* Comment button */}
        <Pressable
          onPress={() => onComment(n)}
          focusable={tvMode}
          style={({ focused }) => [ep_s.commentBtn, tvMode && ep_s.tvSmallButton, tvMode && tvFocusStyle(focused)]}
          accessibilityRole="button"
          accessibilityLabel={`تعليقات الحلقة ${n}`}
        >
          <Ionicons name="chatbubble-ellipses" size={tvMode ? 26 : 11} color={commentCount > 0 ? colors.accent : colors.textMuted} />
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
          <Ionicons name={watched ? "eye" : "eye-off"} size={tvMode ? 26 : 12} color={watched ? colors.accent : colors.textMuted} />
        </Pressable>
      </View>
    </View>
  );
}

export default function EpisodeListScreen() {
  const colors = useColors();
  const ep_s = useMemo(() => createEpStyles(colors), [colors]);
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
  const [seasons, setSeasons] = useState<any[]>([]);
  const [selectedSeasonId, setSelectedSeasonId] = useState("");
  const [sortOrder, setSortOrder] = useState<"asc" | "desc">("asc");
  const [loading, setLoading] = useState(true);
  const [epData, setEpData] = useState<any[]>([]);
  const [episodeCatalogTotal, setEpisodeCatalogTotal] = useState(0);
  const [episodeTitlesAr, setEpisodeTitlesAr] = useState<Record<number, string>>({});
  const [search, setSearch] = useState("");
  const [watched, setWatched] = useState<Set<number>>(new Set());
  const [commentCounts, setCommentCounts] = useState<Record<number, number>>({});
  const episodeListRef = useRef<FlatList<number>>(null);
  const episodePagesFetchedRef = useRef<Set<number>>(new Set());
  const episodePageControllersRef = useRef<Map<number, AbortController>>(new Map());
  const fetchEpisodePageRef = useRef<(page: number) => void>(() => {});
  const routeSource = (Array.isArray(src) ? src[0] : src) || "";
  const selectedAnime = useMemo(
    () => seasons.find(item => String(item?.id) === selectedSeasonId) || anime,
    [anime, seasons, selectedSeasonId],
  );
  const selectedSeasonAnimeKey = String(selectedAnime?.id || selectedSeasonId || "");
  const selectedAnimeIsRouteEntry = String(selectedAnime?.id || "") === String(anime?.id || "");
  const selectedAnimeId = String(
    selectedAnimeIsRouteEntry ? (id || selectedAnime?.id || "") : (selectedAnime?.id || id || ""),
  );
  const selectedSeasonIndex = Math.max(
    0,
    seasons.findIndex(item => String(item?.id) === selectedSeasonAnimeKey),
  );
  const { preferredKey, ready, rememberFocus } = useTvFocusMemory(`episodes:${selectedAnimeId || "unknown"}`);

  useEffect(() => {
    if (!id) return;
    const ctrl = new AbortController();
    setLoading(true);
    setAnime(null);
    setSeasons([]);
    setSelectedSeasonId("");
    setEpData([]); setEpisodeCatalogTotal(0); setSearch("");
    setEpisodeTitlesAr({});

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
      if (!a) {
        setSeasons([]);
        return;
      }

      const rootSeason = { ...a, relations: undefined };
      setSeasons([rootSeason]);
      setSelectedSeasonId(String(a.id || id));
      if (source === "mal" || source === "kitsu" || Number(a.id) <= 0) return;

      loadAnimeSeries(a, base, ctrl.signal)
        .then(series => {
          if (ctrl.signal.aborted) return;
          const nextSeasons = series.length ? series : [rootSeason];
          setSeasons(nextSeasons);
          setSelectedSeasonId(current =>
            nextSeasons.some(item => String(item?.id) === current)
              ? current
              : String(a.id || id),
          );
        })
        .catch(error => {
          if (error?.name !== "AbortError" && !ctrl.signal.aborted) {
            console.warn("[Episodes] related anime lookup failed");
            setSeasons([rootSeason]);
            setSelectedSeasonId(String(a.id || id));
          }
        });
    }).catch((e) => { if (e?.name !== "AbortError") console.warn("[Episodes] anilist fetch error"); })
      .finally(() => { if (!ctrl.signal.aborted) setLoading(false); });
    return () => ctrl.abort();
  }, [id]);

  useEffect(() => {
    if (!selectedAnimeId) return;
    let cancelled = false;
    setWatched(new Set());
    setCommentCounts({});
    getWatched(selectedAnimeId).then(value => {
      if (!cancelled) setWatched(value);
    });
    getCommentCounts(selectedAnimeId).then(value => {
      if (!cancelled) setCommentCounts(value);
    });
    return () => {
      cancelled = true;
    };
  }, [selectedAnimeId]);

  /*
   * Jikan returns 100 episode records per page. The web app loads the page
   * matching the visible range; mobile used to keep only page 1, so filler
   * flags and titles disappeared after episode 100 even though the number
   * list continued. Load metadata lazily as the virtualized list approaches
   * each page, and allow a direct search to request its page immediately.
   */
  const fetchEpisodePage = useCallback((page: number) => {
    const malId = Number(selectedAnime?.idMal || 0);
    if (!malId || !Number.isFinite(page) || page < 1) return;
    if (episodePagesFetchedRef.current.has(page) || episodePageControllersRef.current.has(page)) return;

    const pageCtrl = new AbortController();
    episodePageControllersRef.current.set(page, pageCtrl);
    const sourceUsesExternalId = selectedAnime?.idSource === "mal" || selectedAnime?.idSource === "kitsu" || routeSource === "mal" || routeSource === "kitsu";
    const anilistId = sourceUsesExternalId ? 0 : Number(selectedAnime?.id || 0);
    fetch(`${getBaseUrl()}/api/anime/episode-titles?malId=${malId}&anilistId=${anilistId}&page=${page}`, {
      signal: pageCtrl.signal,
      cache: "no-store",
    })
      .then(r => r.ok ? r.json() : null)
      .then(d => {
        if (!d || pageCtrl.signal.aborted) return;
        if (Array.isArray(d.episodes)) {
          setEpData(prev => {
            const merged = new Map<number, any>();
            for (const item of prev) {
              const n = Number(item?.mal_id || item?.episode_id || item?.episode || 0);
              if (n > 0) merged.set(n, item);
            }
            for (const item of d.episodes) {
              const n = Number(item?.mal_id || item?.episode_id || item?.episode || 0);
              if (n > 0) merged.set(n, item);
            }
            return Array.from(merged.values());
          });
        }
        /* Keep the same aired/total rule as the web episode list. */
        const catalogTotal = selectedAnime?.status === "RELEASING"
          ? Math.max(Number(d.releasedTotal || 0), Number(d.latestEpisode || 0), Number(d.anilistAiredEpisode || 0))
          : Number(d.total || 0);
        if (catalogTotal > 0) setEpisodeCatalogTotal(prev => Math.max(prev, catalogTotal));
        episodePagesFetchedRef.current.add(page);
      })
      .catch(() => {})
      .finally(() => {
        episodePageControllersRef.current.delete(page);
      });
  }, [selectedAnime?.id, selectedAnime?.idMal, selectedAnime?.idSource, selectedAnime?.status, routeSource]);

  fetchEpisodePageRef.current = fetchEpisodePage;

  useEffect(() => {
    setEpData([]);
    setEpisodeCatalogTotal(0);
    setEpisodeTitlesAr({});
    setSearch("");
    episodePagesFetchedRef.current.clear();
    for (const controller of episodePageControllersRef.current.values()) controller.abort();
    episodePageControllersRef.current.clear();
    if (!selectedAnime?.idMal) return;
    fetchEpisodePage(1);
    return () => {
      for (const controller of episodePageControllersRef.current.values()) controller.abort();
      episodePageControllersRef.current.clear();
      episodePagesFetchedRef.current.clear();
    };
  }, [selectedAnime?.id, selectedAnime?.idMal, fetchEpisodePage]);

  useEffect(() => {
    const requestedEpisode = Number.parseInt(search.trim(), 10);
    if (requestedEpisode > 0) {
      fetchEpisodePage(Math.ceil(requestedEpisode / 100));
    }
  }, [fetchEpisodePage, search]);

  /* Load comment counts from server (background, non-blocking) */
  useEffect(() => {
    if (!selectedAnimeId) return;
    const ctrl = new AbortController();
    fetch(`${getBaseUrl()}/api/comments/count?animeId=${encodeURIComponent(selectedAnimeId)}`, { signal: ctrl.signal })
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
          saveCommentCounts(selectedAnimeId, numericCounts);
        }
      })
      .catch((e) => { if (e?.name !== "AbortError") console.warn("[Episodes] comment count error"); });
    return () => ctrl.abort();
  }, [selectedAnimeId]);

  const toggleWatched = useCallback((n: number) => {
    setWatched(prev => {
      const next = new Set(prev);
      if (next.has(n)) next.delete(n); else next.add(n);
      saveWatched(selectedAnimeId, next);
      return next;
    });
  }, [selectedAnimeId]);

  function watchEp(n: number) {
    if (n < 1 || n > total) return;
    setWatched(prev => {
      const next = new Set(prev);
      next.add(n);
      saveWatched(selectedAnimeId, next);
      return next;
    });
    const t = encodeURIComponent(selectedAnime?.title?.romaji || "");
    const eng = encodeURIComponent(selectedAnime?.title?.english || "");
    const fmt = encodeURIComponent(selectedAnime?.format || "");
    const epInfo = epData?.find((e: any) => e.mal_id === n || e.episode_id === n);
    const epTitleRaw = epInfo?.title || epInfo?.title_romanji || "";
    const et = epTitleRaw ? `&etitle=${encodeURIComponent(epTitleRaw)}` : "";
    const totalParam = total > 0 ? `&totalEps=${total}` : "";
    const coverParam = selectedAnime?.coverImage?.large ? `&cover=${encodeURIComponent(selectedAnime.coverImage.extraLarge || selectedAnime.coverImage.large)}` : "";
    const arTitle = extractArabicTitle(selectedAnime?.synonyms);
    const arParam = arTitle ? `&titleAr=${encodeURIComponent(arTitle)}` : "";
    router.push(`/watch?anime=${selectedAnimeId}&ep=${n}${t ? `&title=${t}` : ""}${eng ? `&english=${eng}` : ""}${fmt ? `&format=${fmt}` : ""}${et}${totalParam}${coverParam}${arParam}`);
  }

  function openComments(n: number) {
    const t = encodeURIComponent(selectedAnime?.title?.romaji || "");
    router.push(`/comments?animeId=${selectedAnimeId}&title=${t}&ep=${n}` as any);
  }

  const total = useMemo(() => {
    if (!selectedAnime) return 0;
    const airedBySchedule = selectedAnime.nextAiringEpisode?.episode
      ? Math.max(0, selectedAnime.nextAiringEpisode.episode - 1)
      : 0;
    if (selectedAnime.status === "NOT_YET_RELEASED") return 0;
    if (selectedAnime.status === "RELEASING") {
      /* Do not let a stale Jikan/source catalog hide episodes that AniList
         already scheduled as aired. `nextAiringEpisode` is the boundary:
         episode N+1 is upcoming, so only N episodes are watchable now. */
      return Math.max(episodeCatalogTotal, airedBySchedule);
    }
    return Math.max(0, Number(selectedAnime.episodes || 0), episodeCatalogTotal);
  }, [selectedAnime, episodeCatalogTotal]);

  const allEps = useMemo(() => Array.from({ length: total }, (_, i) => i + 1), [total]);
  const watchedCount = useMemo(() => [...watched].filter(n => n >= 1 && n <= total).length, [watched, total]);
  const pct = total > 0 ? Math.round((watchedCount / total) * 100) : 0;

  const isSearching = search.trim().length > 0;
  const filtered = useMemo(() => {
    const ordered = sortOrder === "asc" ? allEps : [...allEps].reverse();
    if (!isSearching) return ordered;
    return ordered.filter(n => n.toString().includes(search.trim()));
  }, [allEps, isSearching, search, sortOrder]);

  const displayedEps = useMemo(() => {
    /*
     * FlatList virtualizes the rows, so there is no need to expose only the
     * first 100 episodes. That artificial page boundary hid the rest of
     * long-running series when the catalog total was temporarily incomplete.
     */
    return filtered;
  }, [filtered]);
  const epByNumber = useMemo(() => {
    const map = new Map<number, any>();
    for (const item of epData) {
      const n = Number(item?.mal_id || item?.episode_id || item?.episode || 0);
      if (n > 0) map.set(n, item);
    }
    return map;
  }, [epData]);
  const preferredEpisodeNumber = Number(preferredKey);
  const shouldFocusContinue = !preferredKey
    || preferredKey === "continue"
    || !displayedEps.includes(preferredEpisodeNumber);

  const onViewableItemsChanged = useRef(({ viewableItems }: { viewableItems: Array<{ item: number; index: number | null }> }) => {
    const maxEpisode = viewableItems.reduce((max, item) => Math.max(max, Number(item.item) || 0), 0);
    if (maxEpisode > 0) fetchEpisodePageRef.current(Math.floor((maxEpisode - 1) / 100) + 1);
  }).current;
  const viewabilityConfig = useRef({
    itemVisiblePercentThreshold: 35,
    minimumViewTime: 100,
  }).current;

  /* ترجمة عناوين الصفحة الحالية دفعةً بدفعة، مع الاعتماد على كاش الخادم */
  useEffect(() => {
    const pending = displayedEps
      .map(n => {
        const ep = epByNumber.get(n);
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
  }, [displayedEps, epByNumber, episodeTitlesAr]);

  if (loading) return (
    <View style={[ep_s.container, { backgroundColor: colors.background }]}>
      <View style={ep_s.center}>
        <ActivityIndicator color="#8B5CF6" size="large" />
      </View>
    </View>
  );
  if (!anime) return (
    <View style={[ep_s.container, { backgroundColor: colors.background }]}>
      <View style={ep_s.center}>
          <Text style={[ep_s.notFound, { color: colors.textSecondary }]}>لم يُعثر على الأنمي</Text>
      </View>
    </View>
  );

  return (
    <View style={[ep_s.container, tvMode && ep_s.tvContainer, { backgroundColor: colors.background, paddingTop: topPad }]}>
      {/* ── Hero Banner ── */}
      <View style={[ep_s.hero, tvMode && ep_s.tvHero]}>
        {(selectedAnime?.bannerImage || selectedAnime?.coverImage?.extraLarge || selectedAnime?.coverImage?.large) ? (
          <Image
            source={{ uri: selectedAnime.bannerImage || selectedAnime.coverImage?.extraLarge || selectedAnime.coverImage?.large }}
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
          {selectedAnime?.coverImage?.large ? (
            <Image source={{ uri: selectedAnime.coverImage.large }} style={[ep_s.heroCover, tvMode && ep_s.tvHeroCover]} />
          ) : null}
          <View style={[ep_s.heroInfo, tvMode && ep_s.tvHeroInfo]}>
            <Text style={[ep_s.heroTitle, tvMode && ep_s.tvHeroTitle]} numberOfLines={1}>{selectedAnime?.title?.romaji}</Text>
            <View style={{ flexDirection: "row", gap: 8, marginTop: 4 }}>
              <Text style={[ep_s.heroBadge, tvMode && ep_s.tvHeroBadge]}>{total} حلقة</Text>
              {seasons.length > 1 && (
                <Text style={[ep_s.heroBadge, tvMode && ep_s.tvHeroBadge]}>
                  الموسم {selectedSeasonIndex + 1}
                </Text>
              )}
              {watchedCount > 0 && (
          <Text style={[ep_s.heroBadge, tvMode && ep_s.tvHeroBadge, { color: "#34D399" }]}>👁 {watchedCount} مشاهدة</Text>
              )}
              {selectedAnime?.averageScore ? (
          <Text style={[ep_s.heroBadge, tvMode && ep_s.tvHeroBadge, { color: "#FBBF24" }]}>⭐ {(selectedAnime.averageScore / 10).toFixed(1)}</Text>
              ) : null}
            </View>
          </View>
        </View>
      </View>

      {/* ── Sticky controls ── */}
      <View style={[ep_s.controls, tvMode && ep_s.tvControls, { backgroundColor: colors.surface, borderBottomColor: colors.border }]}>
        {/* Progress bar */}
        <View style={ep_s.progressRow}>
        <View style={[ep_s.progressTrack, { backgroundColor: colors.surfaceElevated }]}>
            <View style={[ep_s.progressFill, { width: `${pct}%` }]} />
          </View>
           <Text style={[ep_s.pctText, tvMode && ep_s.tvText, { color: colors.textMuted }]}>{pct}%</Text>
        </View>
        {seasons.length > 1 && (
          <View style={ep_s.seasonSection}>
            <View style={ep_s.seasonSectionHeader}>
              <Text style={[ep_s.seasonSectionTitle, tvMode && ep_s.tvSeasonSectionTitle, { color: colors.textPrimary }]}>المواسم</Text>
              <Text style={[ep_s.seasonTotal, tvMode && ep_s.tvText, { color: colors.textMuted }]}>{seasons.length} مواسم</Text>
            </View>
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={ep_s.seasonTabs}
            >
              {seasons.map((season, index) => {
                const isActive = String(season?.id) === selectedSeasonAnimeKey;
                const episodeCount = isActive ? total : knownEpisodeCount(season);
                return (
                  <Pressable
                    key={String(season?.id)}
                    onPress={() => {
                      setSelectedSeasonId(String(season?.id));
                      setSearch("");
                      episodeListRef.current?.scrollToOffset({ offset: 0, animated: false });
                    }}
                    focusable={tvMode}
                    testID={`anime-season-${season?.id}`}
                    accessibilityRole="button"
                    accessibilityLabel={`الموسم ${index + 1}${episodeCount === null ? "" : `، ${episodeCount} حلقة`}`}
                    accessibilityState={{ selected: isActive }}
                    style={({ focused, pressed }) => [
                      ep_s.seasonTab,
                      isActive && ep_s.seasonTabActive,
                      tvMode && ep_s.tvSeasonTab,
                      {
                        backgroundColor: isActive ? colors.accentSurface : colors.surface,
                        borderColor: isActive ? colors.accentBorder : colors.border,
                      },
                      tvMode && tvFocusStyle(focused),
                      pressed && { opacity: 0.84 },
                    ]}
                  >
                    <Text style={[
                      ep_s.seasonTabTitle,
                      tvMode && ep_s.tvSeasonTabTitle,
                      isActive && ep_s.seasonTabTitleActive,
                      { color: isActive ? colors.accent : colors.textPrimary },
                    ]}>
                      الموسم {index + 1}
                    </Text>
                    <Text style={[ep_s.seasonTabCount, tvMode && ep_s.tvSeasonTabCount, { color: colors.textMuted }]}>
                      {episodeCount === null ? "العدد غير متاح" : `${episodeCount} حلقة`}
                    </Text>
                  </Pressable>
                );
              })}
            </ScrollView>
          </View>
        )}
        <View style={ep_s.episodeTools}>
          <Text style={[ep_s.episodeSectionTitle, tvMode && ep_s.tvEpisodeSectionTitle, { color: colors.textPrimary }]}>الحلقات</Text>
          <Pressable
            onPress={() => {
              setSortOrder(current => current === "asc" ? "desc" : "asc");
              episodeListRef.current?.scrollToOffset({ offset: 0, animated: false });
            }}
            focusable={tvMode}
            testID="anime-episode-sort"
            accessibilityRole="button"
            accessibilityLabel={`ترتيب الحلقات: ${sortOrder === "asc" ? "الأقدم أولاً" : "الأحدث أولاً"}`}
            style={({ focused, pressed }) => [
              ep_s.sortButton,
              tvMode && ep_s.tvSortButton,
              tvMode && tvFocusStyle(focused),
              pressed && { opacity: 0.84 },
            ]}
          >
            <Ionicons name="swap-vertical" size={tvMode ? 20 : 14} color={colors.accent} />
            <Text style={[ep_s.sortButtonText, tvMode && ep_s.tvSortButtonText, { color: colors.accent }]}>
              {sortOrder === "asc" ? "الأقدم أولاً" : "الأحدث أولاً"}
            </Text>
          </Pressable>
        </View>
        {/* Search */}
        <View style={[ep_s.searchBar, tvMode && ep_s.tvSearchBar, { backgroundColor: colors.input, borderColor: colors.border }]}>
           <Ionicons name="search" size={tvMode ? 24 : 15} color={colors.textMuted} />
          <TextInput
            value={search}
            onChangeText={setSearch}
            placeholder="اذهب لحلقة..."
            placeholderTextColor={colors.textMuted}
            keyboardType="number-pad"
            style={[ep_s.searchInput, tvMode && ep_s.tvText, { color: colors.textPrimary }]}
          />
          {search ? (
             <Pressable onPress={() => setSearch("")} focusable={tvMode}
               style={({ focused }) => [tvMode && tvFocusStyle(focused)]}>
              <Ionicons name="close" size={16} color={colors.textMuted} />
            </Pressable>
          ) : null}
        </View>
      </View>

      {/* ── Episode list ── */}
      <TvFocusGuideView autoFocus={tvMode} style={ep_s.tvFocusGuide}>
        <FlatList
          ref={episodeListRef}
          key={`${tvMode ? "tv" : "phone"}-${selectedAnimeId}`}
          data={displayedEps}
          numColumns={1}
          keyExtractor={n => n.toString()}
          showsVerticalScrollIndicator={false}
          removeClippedSubviews={Platform.OS === "android" && !tvMode}
          initialNumToRender={tvMode ? 16 : 12}
          maxToRenderPerBatch={tvMode ? 12 : 12}
          updateCellsBatchingPeriod={50}
          windowSize={tvMode ? 7 : 9}
          onViewableItemsChanged={onViewableItemsChanged}
          viewabilityConfig={viewabilityConfig}
          onEndReached={() => {
            const lastEpisode = displayedEps[displayedEps.length - 1] || 1;
            fetchEpisodePageRef.current(Math.floor((lastEpisode - 1) / 100) + 1);
          }}
          onEndReachedThreshold={0.35}
          onScrollToIndexFailed={({ index }) => {
            episodeListRef.current?.scrollToOffset({
              offset: Math.max(0, index * (tvMode ? 116 : 72)),
              animated: true,
            });
          }}
          columnWrapperStyle={undefined}
          contentContainerStyle={[{ paddingBottom: 100 }, tvMode && ep_s.tvListContent]}
          ListHeaderComponent={
            <Pressable
              onPress={() => watchEp(
                isSearching
                  ? (displayedEps[0] || 1)
                  : (watchedCount > 0 ? Math.min(total, watchedCount + 1) : 1),
              )}
              hasTVPreferredFocus={tvMode && ready && shouldFocusContinue}
              onFocus={() => { if (tvMode) rememberFocus("continue"); }}
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
              anime={selectedAnime}
              epByNumber={epByNumber}
              episodeTitlesAr={episodeTitlesAr}
              watched={watched.has(n)}
              commentCount={commentCounts[n] || 0}
              onToggleWatched={toggleWatched}
              onWatch={watchEp}
              onComment={openComments}
              onFocus={() => {
                if (!tvMode) return;
                rememberFocus(String(n));
                const index = displayedEps.indexOf(n);
                if (index >= 0) episodeListRef.current?.scrollToIndex({ index, animated: true, viewPosition: 0.35 });
              }}
              hasTVPreferredFocus={tvMode && ready && preferredKey === String(n)}
            />
          )}
        />
      </TvFocusGuideView>

    </View>
  );
}

function createEpStyles(colors: ReturnType<typeof useColors>) {
return StyleSheet.create({
  container: { flex: 1, backgroundColor: colors.background },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
  notFound: { fontSize: 14, color: colors.textSecondary, fontFamily: "Cairo_400Regular" },
  hero: { height: 220, justifyContent: "flex-end", overflow: "hidden" },
  backBtn: { position: "absolute", right: 14, width: 36, height: 36, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  commentsBtn: { position: "absolute", left: 14, top: 12, width: 36, height: 36, backgroundColor: "rgba(139,92,246,0.25)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(139,92,246,0.4)" },
  commentsListBtn: { flexDirection: "row", alignItems: "center", gap: 8, marginHorizontal: 12, marginBottom: 8, padding: 12, borderRadius: 14, backgroundColor: colors.accentSurface, borderWidth: 1, borderColor: colors.accentBorder },
  commentsListBtnText: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold", color: colors.accent },
  heroBottom: { flexDirection: "row", alignItems: "flex-end", gap: 12, paddingHorizontal: 14, paddingBottom: 14 },
  heroCover: { width: 64, height: 88, borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  heroInfo: { flex: 1, paddingBottom: 4 },
  heroTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  heroBadge: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#8B5CF6" },
  controls: { backgroundColor: colors.surface, borderBottomWidth: 1, borderBottomColor: colors.border, paddingHorizontal: 14, paddingTop: 10, paddingBottom: 8 },
  seasonSection: { marginTop: 1, marginBottom: 7 },
  seasonSectionHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginBottom: 5 },
  seasonSectionTitle: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
  seasonTotal: { fontSize: 9, fontFamily: "Cairo_400Regular", color: colors.textMuted },
  seasonTabs: { gap: 7, paddingHorizontal: 1, paddingBottom: 2 },
  seasonTab: { minWidth: 106, alignItems: "flex-end", paddingHorizontal: 10, paddingVertical: 6, borderRadius: 11, backgroundColor: colors.surface, borderWidth: 1, borderColor: colors.border },
  seasonTabActive: { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
  seasonTabTitle: { fontSize: 10, lineHeight: 16, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
  seasonTabTitleActive: { color: colors.accent },
  seasonTabCount: { fontSize: 8, lineHeight: 13, fontFamily: "Cairo_400Regular", color: colors.textMuted },
  episodeTools: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginTop: 1, marginBottom: 6 },
  episodeSectionTitle: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
  sortButton: { minHeight: 30, flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 9, paddingVertical: 4, borderRadius: 10, backgroundColor: colors.accentSurface, borderWidth: 1, borderColor: colors.accentBorder },
  sortButtonText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: colors.accent },
  progressRow: { flexDirection: "row", alignItems: "center", gap: 8, marginBottom: 8 },
  progressTrack: { flex: 1, height: 6, backgroundColor: colors.surfaceElevated, borderRadius: 3, overflow: "hidden" },
  progressFill: { height: "100%", backgroundColor: "#8B5CF6", borderRadius: 3 },
  pctText: { fontSize: 9, color: colors.textMuted, fontFamily: "Cairo_700Bold" },
  searchBar: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: colors.input, borderRadius: 12, paddingHorizontal: 12, paddingVertical: 9, borderWidth: 1, borderColor: colors.border, marginBottom: 6 },
  searchInput: { flex: 1, color: colors.textPrimary, fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "right" },
  pageNav: { flexDirection: "row", justifyContent: "space-between", alignItems: "center" },
  pageRangeText: { fontSize: 10, color: colors.textMuted, fontFamily: "Cairo_700Bold" },
  pageBtn: { width: 28, height: 28, borderRadius: 8, backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border, alignItems: "center", justifyContent: "center" },
  pageNumText: { fontSize: 11, color: colors.textSecondary, fontFamily: "Cairo_700Bold", paddingHorizontal: 4 },
  watchFromBtn: { flexDirection: "row", alignItems: "center", gap: 8, margin: 12, padding: 12, borderRadius: 14, borderWidth: 1, borderColor: colors.accentBorder, backgroundColor: colors.accentSurface },
  watchFromBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.accent },
  row: { flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 12, paddingVertical: 10, borderBottomWidth: 1, borderBottomColor: colors.border },
  episodeMain: { flex: 1, flexDirection: "row", alignItems: "center", gap: 10 },
  rowWatched: { backgroundColor: colors.accentSurface, borderBottomColor: colors.accentBorder },
  thumbWrap: { width: 72, height: 41, borderRadius: 8, overflow: "hidden", backgroundColor: colors.surfaceElevated, position: "relative" },
  thumb: { width: "100%", height: "100%" },
  thumbFallback: { backgroundColor: "rgba(139,92,246,0.1)" },
  durText: { position: "absolute", bottom: 3, left: 3, fontSize: 6, color: "#fff", backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 3, paddingHorizontal: 2, paddingVertical: 1, fontWeight: "900" },
  watchedBorder: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, borderWidth: 2, borderColor: "rgba(139,92,246,0.4)", borderRadius: 8 },
  info: { flex: 1 },
  episodeActions: { flexDirection: "row", alignItems: "center", gap: 8 },
  epNumRow: { flexDirection: "row", alignItems: "center", justifyContent: "flex-end", gap: 6 },
  epNum: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
  fillerBadge: { backgroundColor: "#df2f39", color: "#fff", fontSize: 9, lineHeight: 16, paddingHorizontal: 7, borderRadius: 1, fontFamily: "Cairo_700Bold", overflow: "hidden" },
  epTitleAr: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.92)", textAlign: "right" },
  epTitleOriginal: { fontSize: 8, fontFamily: "Cairo_400Regular", color: colors.textSecondary, textAlign: "right" },
  commentBtn: {
    width: 27, height: 27, borderRadius: 8, alignItems: "center", justifyContent: "center",
    backgroundColor: colors.accentSurface, borderWidth: 1, borderColor: colors.accentBorder,
    position: "relative",
  },
  commentCount: {
    position: "absolute", top: -4, right: -4,
    minWidth: 12, height: 12, backgroundColor: "#8B5CF6", borderRadius: 6,
    fontSize: 6, color: "#fff", fontFamily: "Cairo_700Bold",
    textAlign: "center", lineHeight: 12, paddingHorizontal: 2,
  },
  tvCommentCount: { minWidth: 20, height: 20, borderRadius: 10, fontSize: 10, lineHeight: 20, top: -6, right: -6 },
  eyeBtn: { width: 27, height: 27, borderRadius: 8, alignItems: "center", justifyContent: "center", backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  eyeBtnWatched: { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
  tvContainer: { paddingHorizontal: 28 },
  tvFocusGuide: { flex: 1 },
  tvControls: { paddingHorizontal: 28, paddingTop: 12, paddingBottom: 10 },
  tvSeasonSectionTitle: { fontSize: 16, lineHeight: 24 },
  tvSeasonTab: { minWidth: 150, paddingHorizontal: 15, paddingVertical: 9, borderRadius: 14 },
  tvSeasonTabTitle: { fontSize: 14, lineHeight: 21 },
  tvSeasonTabCount: { fontSize: 11, lineHeight: 17 },
  tvEpisodeSectionTitle: { fontSize: 18, lineHeight: 27 },
  tvSortButton: { minHeight: 44, paddingHorizontal: 14, paddingVertical: 8, borderRadius: 12 },
  tvSortButtonText: { fontSize: 13, lineHeight: 20 },
  tvHero: { height: 260 },
  tvBackBtn: { width: 46, height: 46, borderRadius: 14 },
  tvHeroBottom: { paddingHorizontal: 28, paddingBottom: 16, gap: 16 },
  tvHeroCover: { width: 104, height: 146, borderRadius: 14 },
  tvHeroInfo: { paddingBottom: 4 },
  tvHeroBadge: { fontSize: 14, lineHeight: 22 },
  tvHeroTitle: { fontSize: 25, lineHeight: 34 },
  tvText: { fontSize: 15, lineHeight: 23 },
  tvRow: { width: "100%", minHeight: 100, flexDirection: "row", alignItems: "center", paddingHorizontal: 10, paddingVertical: 8, gap: 10, borderRadius: 12, borderWidth: 1, borderBottomWidth: 1, borderColor: colors.border, backgroundColor: colors.card },
  tvEpisodeMain: { flex: 1, flexDirection: "row", alignItems: "center", gap: 10, borderRadius: 10 },
  tvListContent: { paddingTop: 6, gap: 8 },
  tvSmallButton: { width: 38, height: 38, borderRadius: 10 },
  tvSearchBar: { minHeight: 48, paddingVertical: 8, paddingHorizontal: 14, borderRadius: 12 },
  tvThumbWrap: { width: 132, height: 74, borderRadius: 9 },
  tvDurText: { fontSize: 8, paddingHorizontal: 4, paddingVertical: 2, borderRadius: 4 },
  tvInfo: { flex: 1, minHeight: 0 },
  tvEpisodeActions: { justifyContent: "flex-end", gap: 5 },
  tvEpNum: { fontSize: 14, lineHeight: 20 },
  tvFillerBadge: { fontSize: 12, lineHeight: 22, paddingHorizontal: 9 },
  tvEpTitle: { fontSize: 13, lineHeight: 20 },
  tvEpOriginal: { fontSize: 11, lineHeight: 16 },
  tvPageBtn: { width: 44, height: 44, borderRadius: 12 },
  tvWatchFromBtn: { marginHorizontal: 12, paddingVertical: 12, minHeight: 58, borderRadius: 16 },
  tvWatchFromBtnText: { fontSize: 15, lineHeight: 23 },
});
}

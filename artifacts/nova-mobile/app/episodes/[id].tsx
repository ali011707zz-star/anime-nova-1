import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import {
  View, Text, TextInput, Image, FlatList,
  ScrollView, ActivityIndicator, StyleSheet, Platform, useWindowDimensions, I18nManager,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";
import { isTvDevice, tvFocusStyle, TvFocusGuideView, TvPressable, useTvListFocusScroll } from "@/utils/tv";
const Pressable = TvPressable;
import { useTvFocusMemory } from "@/utils/tvFocus";
import { useColors } from "@/hooks/useColors";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

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
  return synonyms.find(s =>
    /[\u0600-\u06FF]/.test(s) &&
    !/[گچپژی]/.test(s) &&
    !/(?:^|\s)(?:فصل|به|در|از)(?:\s|$)/.test(s)
  ) || "";
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
  const thumb = ep?.images?.jpg?.image_url || anime?.bannerImage || anime?.coverImage?.large;
  const originalTitle = ep?.title || ep?.title_romanji || `Episode ${n}`;
  const arabicTitle = ep?.title_ar || episodeTitlesAr[n] || (originalTitle && !originalTitle.startsWith("Episode ") ? originalTitle : `الحلقة ${n}`);

  return (
    <View style={[
      ep_s.row,
      tvMode && ep_s.tvRow,
      { backgroundColor: colors.card, borderColor: watched ? "rgba(16,185,129,0.28)" : colors.border },
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
          pressed && { opacity: 0.84 },
        ]}
      >
        {/* Thumbnail on physical right */}
        <View style={[ep_s.thumbWrap, tvMode && ep_s.tvThumbWrap]}>
          {thumb ? (
            <Image source={{ uri: thumb }} style={ep_s.thumb} resizeMode="cover" />
          ) : (
            <View style={[ep_s.thumb, ep_s.thumbFallback]} />
          )}
          <View style={ep_s.thumbOverlay}>
            <View style={[
              ep_s.thumbPlayCircle,
              watched ? ep_s.thumbPlayCircleWatched : ep_s.thumbPlayCircleDefault,
            ]}>
              <Ionicons
                name={watched ? "checkmark" : "play"}
                size={watched ? 15 : 13}
                color="#fff"
                style={watched ? undefined : { marginLeft: 2 }}
              />
            </View>
          </View>
          <View style={ep_s.epNumBadgeOverlay}>
            <Text style={ep_s.epNumBadgeText}>{n}</Text>
          </View>
        </View>

        {/* Info in middle (right-aligned) */}
        <View style={[ep_s.info, tvMode && ep_s.tvInfo]}>
          <View style={ep_s.epNumRow}>
            <Text style={[ep_s.epNum, tvMode && ep_s.tvEpNum, { color: colors.textPrimary }]}>الحلقة {n}</Text>
            {watched ? (
              <View style={ep_s.watchedBadge}>
                <Text style={ep_s.watchedBadgeText}>مشاهدة</Text>
              </View>
            ) : null}
            {isFiller ? <Text style={[ep_s.fillerBadge, tvMode && ep_s.tvFillerBadge]}>فلر</Text> : null}
          </View>
          <Text style={[ep_s.epTitleAr, tvMode && ep_s.tvEpTitle, { color: colors.textPrimary }]} numberOfLines={1}>
            {arabicTitle}
          </Text>
        </View>
      </Pressable>

      {/* Actions on physical left */}
      <View style={[ep_s.episodeActions, tvMode && ep_s.tvEpisodeActions]}>
        {/* Comment button */}
        <Pressable
          onPress={() => onComment(n)}
          onFocus={onFocus}
          focusable={tvMode}
          style={({ focused }) => [ep_s.commentBtn, tvMode && ep_s.tvSmallButton, tvMode && tvFocusStyle(focused)]}
          accessibilityRole="button"
          accessibilityLabel={`تعليقات الحلقة ${n}`}
        >
          <Ionicons name="chatbubble-outline" size={tvMode ? 24 : 15} color={colors.textSecondary} />
          {commentCount > 0 && (
            <View style={ep_s.commentCountBadge}>
              <Text style={[ep_s.commentCount, tvMode && ep_s.tvCommentCount]}>{commentCount}</Text>
            </View>
          )}
        </Pressable>

        {/* Eye toggle */}
        <Pressable
          onPress={() => onToggleWatched(n)}
          onFocus={onFocus}
          focusable={tvMode}
          style={({ focused }) => [ep_s.eyeBtn, watched && ep_s.eyeBtnWatched, tvMode && ep_s.tvSmallButton, tvMode && tvFocusStyle(focused)]}
          accessibilityRole="button"
          accessibilityLabel={watched ? `إلغاء مشاهدة الحلقة ${n}` : `تحديد الحلقة ${n} كمشاهدة`}
        >
          <Ionicons name={watched ? "eye-outline" : "eye-off-outline"} size={tvMode ? 24 : 16} color={watched ? "#10B981" : colors.textMuted} />
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
  const [rangeStart, setRangeStart] = useState<number | null>(null);
  const [watched, setWatched] = useState<Set<number>>(new Set());
  const [commentCounts, setCommentCounts] = useState<Record<number, number>>({});
  const episodeListRef = useRef<FlatList<number>>(null);
  const visibleEpisodeIndicesRef = useRef<Set<number>>(new Set());
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
  const { scrollToFocusedIndex } = useTvListFocusScroll(episodeListRef, 0.35);

  useEffect(() => {
    if (!id) return;
    const ctrl = new AbortController();
    setLoading(true);
    setAnime(null);
    setSeasons([]);
    setSelectedSeasonId("");
    setEpData([]); setEpisodeCatalogTotal(0); setSearch(""); setRangeStart(null);
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
    const sourceUsesExternalId = selectedAnime?.idSource === "mal" || selectedAnime?.idSource === "kitsu" || routeSource === "mal" || routeSource === "kitsu";
    const anilistId = sourceUsesExternalId ? 0 : Number(selectedAnime?.id || 0);
    if ((!malId && !anilistId) || !Number.isFinite(page) || page < 1) return;
    if (episodePagesFetchedRef.current.has(page) || episodePageControllersRef.current.has(page)) return;

    const pageCtrl = new AbortController();
    episodePageControllersRef.current.set(page, pageCtrl);
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
          const arMap: Record<number, string> = {};
          for (const item of d.episodes) {
            const n = Number(item?.mal_id || item?.episode_id || item?.episode || 0);
            if (n > 0 && item?.title_ar) arMap[n] = item.title_ar;
          }
          if (Object.keys(arMap).length > 0) {
            setEpisodeTitlesAr(prev => ({ ...prev, ...arMap }));
          }
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
    setRangeStart(null);
    episodePagesFetchedRef.current.clear();
    for (const controller of episodePageControllersRef.current.values()) controller.abort();
    episodePageControllersRef.current.clear();
    if (!selectedAnime?.idMal && !selectedAnime?.id) return;
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
    const epInfo = epData?.find((e: any) => e.mal_id === n || e.episode_id === n || e.episode === n);
    const epTitleAr = epInfo?.title_ar || episodeTitlesAr[n] || "";
    const epTitleRaw = epTitleAr || epInfo?.title || epInfo?.title_romanji || "";
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

  const rangeOptions = useMemo(() => {
    if (total <= 0) return [];
    const options: Array<{ start: number | null; end: number; label: string }> = [
      { start: null, end: total, label: `الكل (${total})` },
    ];
    for (let start = 1; start <= total; start += 12) {
      options.push({ start, end: Math.min(total, start + 11), label: `${start} - ${Math.min(total, start + 11)}` });
    }
    return options;
  }, [total]);

  const allEps = useMemo(() => Array.from({ length: total }, (_, i) => i + 1), [total]);
  const watchedCount = useMemo(() => [...watched].filter(n => n >= 1 && n <= total).length, [watched, total]);
  const continueEpisode = watchedCount > 0 ? Math.min(total, watchedCount + 1) : 1;
  const pct = total > 0 ? Math.round((watchedCount / total) * 100) : 0;

  const epByNumber = useMemo(() => {
    const map = new Map<number, any>();
    for (const item of epData) {
      const n = Number(item?.mal_id || item?.episode_id || item?.episode || 0);
      if (n > 0) map.set(n, item);
    }
    return map;
  }, [epData]);

  const isSearching = search.trim().length > 0;
  const filtered = useMemo(() => {
    const ordered = sortOrder === "asc" ? allEps : [...allEps].reverse();
    const inRange = rangeStart === null
      ? ordered
      : ordered.filter(n => n >= rangeStart && n <= Math.min(total, rangeStart + 11));
    if (!isSearching) return inRange;
    const q = search.trim().toLowerCase();
    return inRange.filter(n => {
      if (n.toString().includes(q)) return true;
      const ep = epByNumber.get(n);
      const orig = String(ep?.title || ep?.title_romanji || "").toLowerCase();
      const ar = String(episodeTitlesAr[n] || "").toLowerCase();
      return orig.includes(q) || ar.includes(q);
    });
  }, [allEps, epByNumber, episodeTitlesAr, isSearching, rangeStart, search, sortOrder, total]);

  const displayedEps = useMemo(() => filtered, [filtered]);
  const preferredEpisodeNumber = Number(preferredKey);
  const shouldFocusContinue = !preferredKey
    || preferredKey === "continue"
    || !displayedEps.includes(preferredEpisodeNumber);

  const onViewableItemsChanged = useRef(({ viewableItems }: { viewableItems: Array<{ item: number; index: number | null }> }) => {
    const visibleIndices = new Set<number>();
    for (const item of viewableItems) {
      if (typeof item.index === "number") visibleIndices.add(item.index);
    }
    visibleEpisodeIndicesRef.current = visibleIndices;
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
            const r = await secureFetch(`${getBaseUrl()}/api/anime/translate?text=${encodeURIComponent(item.title)}&from=auto&to=ar&kind=title`);
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

  const scrollToTop = useCallback(() => {
    episodeListRef.current?.scrollToOffset({ offset: 0, animated: true });
  }, []);

  const scrollToBottom = useCallback(() => {
    if (displayedEps.length > 0) {
      episodeListRef.current?.scrollToEnd({ animated: true });
    }
  }, [displayedEps.length]);

  if (loading) return (
    <View style={[ep_s.container, { backgroundColor: colors.background }]}>
      <View style={[ep_s.topBar, tvMode && ep_s.tvTopBar]}>
        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")}
          focusable={tvMode}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          style={({ focused }) => [ep_s.topBarBack, tvMode && ep_s.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
      </View>
      <View style={ep_s.center}>
        <ActivityIndicator color="#0EA5E9" size="large" />
      </View>
    </View>
  );
  if (!anime) return (
    <View style={[ep_s.container, { backgroundColor: colors.background }]}>
      <View style={[ep_s.topBar, tvMode && ep_s.tvTopBar]}>
        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")}
          focusable={tvMode}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          style={({ focused }) => [ep_s.topBarBack, tvMode && ep_s.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
      </View>
      <View style={ep_s.center}>
        <Text style={[ep_s.notFound, { color: colors.textSecondary }]}>لم يُعثر على الأنمي</Text>
      </View>
    </View>
  );

  return (
    <View style={[ep_s.container, tvMode && ep_s.tvContainer, { backgroundColor: colors.background, paddingTop: topPad }]}>
      <View style={[ep_s.topBar, tvMode && ep_s.tvTopBar]}>
        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")}
          focusable={tvMode}
          hasTVPreferredFocus={tvMode && ready && (!preferredKey || preferredKey === "back")}
          onFocus={() => { if (tvMode) rememberFocus("back"); }}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          style={({ focused }) => [ep_s.topBarBack, tvMode && ep_s.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={tvMode ? 26 : 20} color={colors.textPrimary} />
        </Pressable>
        <View style={[ep_s.topBarHeading, tvMode && ep_s.tvTopBarHeading]}>
          <Text style={[ep_s.topBarTitle, tvMode && ep_s.tvTopBarTitle]} numberOfLines={1}>
            {extractArabicTitle(selectedAnime?.synonyms)
              || (Array.isArray(title) ? title[0] : title)
              || selectedAnime?.title?.english
              || selectedAnime?.title?.romaji
              || "الحلقات"}
          </Text>
          <View style={ep_s.topBarSubRow}>
            <Text style={[ep_s.topBarSubtitle, tvMode && ep_s.tvText]} numberOfLines={1}>
              الموسم {selectedSeasonIndex + 1} · {total} حلقة
            </Text>
            {watchedCount > 0 ? (
              <Text style={ep_s.topBarPctText}>({pct}% مكتمل)</Text>
            ) : null}
          </View>
        </View>
        <View style={ep_s.topBarLeftTools}>
              <Pressable
                onPress={scrollToTop}
                focusable={tvMode}
                style={({ focused, pressed }) => [ep_s.topBarJumpBtn, tvMode && tvFocusStyle(focused), pressed && { opacity: 0.8 }]}
                accessibilityRole="button"
                accessibilityLabel="التمرير للأعلى"
              >
                <Ionicons name="chevron-up" size={15} color={colors.textPrimary} />
              </Pressable>
              <Pressable
                onPress={scrollToBottom}
                focusable={tvMode}
                style={({ focused, pressed }) => [ep_s.topBarJumpBtn, tvMode && tvFocusStyle(focused), pressed && { opacity: 0.8 }]}
                accessibilityRole="button"
                accessibilityLabel="التمرير للأسفل"
              >
                <Ionicons name="chevron-down" size={15} color={colors.textPrimary} />
              </Pressable>
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
                  ep_s.topBarSort,
                  tvMode && ep_s.tvTopBarSort,
                  tvMode && tvFocusStyle(focused),
                  pressed && { opacity: 0.84 },
                ]}
              >
                <Text style={[ep_s.topBarSortText, tvMode && ep_s.tvText, { color: colors.textPrimary }]}>
                  {sortOrder === "asc" ? "الأقدم" : "الأحدث"}
                </Text>
                <Ionicons name="swap-vertical" size={tvMode ? 20 : 13} color={colors.textPrimary} />
              </Pressable>
            </View>
          </View>

          {/* ── Episode list (with scrollable Hero + Controls header) ── */}
          <TvFocusGuideView autoFocus={tvMode} style={ep_s.tvFocusGuide}>
            <FlatList
              ListHeaderComponent={
                <View>
                  {/* ── Hero Banner ── */}
          <View style={[ep_s.hero, tvMode && width >= 700 && ep_s.tvHero]}>
            {(selectedAnime?.bannerImage || selectedAnime?.coverImage?.extraLarge || selectedAnime?.coverImage?.large) ? (
              <Image
                source={{ uri: selectedAnime.bannerImage || selectedAnime.coverImage?.extraLarge || selectedAnime.coverImage?.large }}
                style={StyleSheet.absoluteFill}
                resizeMode="cover"
              />
            ) : null}
            <LinearGradient
              colors={["rgba(9,9,11,0.18)", "rgba(9,9,11,0.68)", colors.background]}
              style={StyleSheet.absoluteFill}
            />

            {/* Cover (Right) + info + progress */}
            <View style={[ep_s.heroBottom, tvMode && width >= 700 && ep_s.tvHeroBottom]}>
              <View style={[ep_s.heroContent, tvMode && width >= 700 && ep_s.tvHeroContent]}>
                {selectedAnime?.coverImage?.large ? (
                  <Image source={{ uri: selectedAnime.coverImage.large }} style={[ep_s.heroCover, tvMode && width >= 700 && ep_s.tvHeroCover]} />
                ) : null}
                <View style={[ep_s.heroInfo, tvMode && width >= 700 && ep_s.tvHeroInfo]}>
                  <Text style={[ep_s.heroTitle, tvMode && width >= 700 && ep_s.tvHeroTitle]} numberOfLines={1}>
                    {extractArabicTitle(selectedAnime?.synonyms)
                      || (Array.isArray(title) ? title[0] : title)
                      || selectedAnime?.title?.english
                      || selectedAnime?.title?.romaji}
                  </Text>
                  <View style={ep_s.heroBadgesRow}>
                    <View style={ep_s.heroPill}>
                      <Text style={ep_s.heroPillText}>{total} حلقة</Text>
                    </View>
                    {watchedCount > 0 ? (
                      <View style={[ep_s.heroPill, ep_s.heroPillWatched]}>
                        <Text style={[ep_s.heroPillText, { color: "#10B981" }]}>تمت مشاهدة {watchedCount}</Text>
                      </View>
                    ) : null}
                    {selectedAnime?.averageScore ? (
                      <View style={ep_s.heroPill}>
                        <Ionicons name="star" size={11} color="#fff" />
                        <Text style={ep_s.heroPillText}>{(selectedAnime.averageScore / 10).toFixed(1)}</Text>
                      </View>
                    ) : null}
                  </View>
                  <View style={ep_s.heroProgress}>
                    <View style={ep_s.heroProgressLabels}>
                      <Text style={[ep_s.heroProgressCount, tvMode && ep_s.tvText]}>تقدم المشاهدة</Text>
                      <Text style={[ep_s.heroProgressPercent, tvMode && ep_s.tvText]}>
                        {watchedCount} / {total} ({pct}%)
                      </Text>
                    </View>
                    <View style={[ep_s.progressTrack, ep_s.heroProgressTrack]}>
                      <View style={[ep_s.progressFill, { width: `${pct}%` }]} />
                    </View>
                  </View>
                </View>
              </View>
            </View>
          </View>

          {/* ── Sticky controls ── */}
          <View style={[ep_s.controls, tvMode && width >= 700 && ep_s.tvControls, { backgroundColor: colors.background, borderBottomColor: colors.border }]}>
            {seasons.length > 0 && (
              <View style={ep_s.seasonSection}>
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
                          setRangeStart(null);
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
                          tvMode && tvFocusStyle(focused),
                          pressed && { opacity: 0.84 },
                        ]}
                      >
                        <Text style={[
                          ep_s.seasonTabTitle,
                          tvMode && ep_s.tvSeasonTabTitle,
                          isActive && ep_s.seasonTabTitleActive,
                        ]}>
                          الموسم {index + 1}
                        </Text>
                        {episodeCount !== null ? (
                          <Text style={[ep_s.seasonTabCount, tvMode && ep_s.tvSeasonTabCount, isActive && ep_s.seasonTabCountActive]}>
                            {episodeCount} حلقة
                          </Text>
                        ) : null}
                      </Pressable>
                    );
                  })}
                </ScrollView>
              </View>
            )}

            {/* Search and continue watching */}
            <View style={[ep_s.episodeQuickRow, tvMode && ep_s.tvEpisodeQuickRow]}>
              {total > 0 ? (
                <Pressable
                  onPress={() => watchEp(continueEpisode)}
                  focusable={tvMode}
                  hasTVPreferredFocus={tvMode && ready && shouldFocusContinue}
                  onFocus={() => {
                    if (tvMode) {
                      rememberFocus("continue");
                      episodeListRef.current?.scrollToOffset({ offset: 0, animated: true });
                    }
                  }}
                  testID="anime-continue-watching"
                  accessibilityRole="button"
                  accessibilityLabel={watchedCount > 0 ? `متابعة من الحلقة ${continueEpisode}` : "مشاهدة من البداية"}
                  style={({ focused, pressed }) => [
                    ep_s.quickWatchBtn,
                    tvMode && ep_s.tvQuickWatchBtn,
                    tvMode && tvFocusStyle(focused),
                    pressed && { opacity: 0.84 },
                  ]}>
                  <Ionicons name="play" size={tvMode ? 18 : 13} color="#fff" />
                  <Text style={[ep_s.quickWatchBtnText, tvMode && ep_s.tvQuickWatchBtnText]} numberOfLines={1}>
                    متابعة ح {continueEpisode}
                  </Text>
                </Pressable>
              ) : null}
              <View style={[ep_s.searchBar, ep_s.quickSearchBar, tvMode && ep_s.tvSearchBar, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <Ionicons name="search" size={tvMode ? 18 : 16} color={colors.textMuted} />
                <TextInput
                  value={search}
                  onChangeText={value => {
                    setSearch(value);
                    if (value.trim()) {
                      setRangeStart(null);
                      episodeListRef.current?.scrollToOffset({ offset: 0, animated: false });
                    }
                  }}
                  placeholder="ابحث عن رقم أو عنوان الحلقة..."
                  placeholderTextColor={colors.textMuted}
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
            {total > 12 ? (
              <ScrollView
                horizontal
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={ep_s.rangeChips}
                style={ep_s.rangeControls}
                accessibilityLabel="تصفية نطاق الحلقات"
              >
                {rangeOptions.map(option => {
                  const isActive = rangeStart === option.start;
                  return (
                    <Pressable
                      key={option.start === null ? "all" : option.start}
                      onPress={() => {
                        setSearch("");
                        setRangeStart(option.start);
                        episodeListRef.current?.scrollToOffset({ offset: 0, animated: false });
                      }}
                      focusable={tvMode}
                      accessibilityRole="button"
                      accessibilityLabel={option.start === null
                        ? `كل الحلقات، ${total}`
                        : `الحلقات من ${option.start} إلى ${option.end}`}
                      accessibilityState={{ selected: isActive }}
                      style={({ focused, pressed }) => [
                        ep_s.rangeChip,
                        isActive && ep_s.rangeChipActive,
                        tvMode && ep_s.tvRangeChip,
                        tvMode && tvFocusStyle(focused),
                        pressed && { opacity: 0.84 },
                      ]}
                    >
                      <Text style={[
                        ep_s.rangeChipText,
                        isActive && ep_s.rangeChipTextActive,
                        tvMode && ep_s.tvRangeChipText,
                      ]}>{option.label}</Text>
                    </Pressable>
                  );
                })}
              </ScrollView>
            ) : null}
          </View>
                </View>
              }
              ref={episodeListRef}
              key={`${tvMode ? "tv" : "phone"}-${selectedAnimeId}`}
              data={displayedEps}
              numColumns={1}
              keyExtractor={n => n.toString()}
              showsVerticalScrollIndicator={false}
              removeClippedSubviews={Platform.OS === "android" && !tvMode}
              initialNumToRender={tvMode ? 12 : 12}
              maxToRenderPerBatch={tvMode ? 10 : 12}
              updateCellsBatchingPeriod={40}
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
                  offset: Math.max(0, index * (tvMode ? 116 : 76)),
                  animated: false,
                });
              }}
              columnWrapperStyle={undefined}
              contentContainerStyle={[{ paddingTop: 6, paddingBottom: 100 }, tvMode && ep_s.tvListContent]}
              renderItem={({ item: n, index }) => (
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
                    scrollToFocusedIndex(index);
                  }}
                  hasTVPreferredFocus={tvMode && ready && preferredKey === String(n)}
                />
              )}
              ItemSeparatorComponent={() => <View style={ep_s.rowSeparator} />}
            />
          </TvFocusGuideView>

        </View>
      );
    }

function createEpStyles(colors: ReturnType<typeof useColors>) {
return StyleSheet.create({
  container: { flex: 1, backgroundColor: colors.background },
  topBar: { height: 60, flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", gap: 10, paddingHorizontal: 14, backgroundColor: colors.surface, borderBottomWidth: 1, borderBottomColor: colors.border },
  topBarHeading: { flex: 1, alignItems: "flex-end", justifyContent: "center", gap: 2 },
  topBarTitle: { color: colors.textPrimary, fontSize: 15, lineHeight: 21, fontFamily: "Cairo_800ExtraBold", textAlign: "right", maxWidth: "100%" },
  topBarSubRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
  topBarSubtitle: { color: colors.textSecondary, fontSize: 11, lineHeight: 16, fontFamily: "Cairo_700Bold", textAlign: "right" },
  topBarPctText: { color: "#94A3B8", fontSize: 11, lineHeight: 16, fontFamily: "Cairo_600SemiBold" },
  topBarLeftTools: { flexDirection: "row", alignItems: "center", gap: 6 },
  topBarJumpBtn: { width: 34, height: 34, borderRadius: 10, alignItems: "center", justifyContent: "center", backgroundColor: colors.surfaceElevated, borderWidth: 1, borderColor: colors.border },
  topBarSort: { minHeight: 34, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 5, paddingHorizontal: 11, borderRadius: 10, backgroundColor: colors.surfaceElevated, borderWidth: 1, borderColor: colors.border },
  topBarSortText: { fontSize: 11, lineHeight: 16, fontFamily: "Cairo_700Bold" },
  topBarBack: { width: 38, height: 38, borderRadius: 12, alignItems: "center", justifyContent: "center", backgroundColor: colors.surfaceElevated, borderWidth: 1, borderColor: colors.border },
  tvTopBar: { height: 68, paddingHorizontal: 22 },
  tvTopBarHeading: {},
  tvTopBarTitle: { fontSize: 18, lineHeight: 25 },
  tvTopBarBack: { width: 48, height: 48, borderRadius: 14 },
  tvTopBarSort: { minHeight: 42, paddingHorizontal: 14, borderRadius: 12 },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
  notFound: { fontSize: 14, color: colors.textSecondary, fontFamily: "Cairo_400Regular" },
  hero: { height: 224, justifyContent: "flex-end", overflow: "hidden" },
  heroBottom: { flexDirection: "column", gap: 8, paddingHorizontal: 16, paddingBottom: 14 },
  heroContent: { flexDirection: ROW_RTL, alignItems: "flex-end", gap: 14 },
  heroCover: { width: 78, height: 114, borderRadius: 14, borderWidth: 1.5, borderColor: "rgba(255,255,255,0.16)" },
  heroInfo: { flex: 1, alignItems: "flex-end", gap: 7 },
  heroTitle: { fontSize: 19, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right" },
  heroArabicTitle: { fontSize: 12, lineHeight: 19, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.78)", textAlign: "right" },
  tvHeroArabicTitle: { fontSize: 17, lineHeight: 25 },
  heroBadgesRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 7, flexWrap: "wrap" },
  heroPill: { flexDirection: ROW_RTL, alignItems: "center", gap: 4, paddingHorizontal: 10, paddingVertical: 4, borderRadius: 10, backgroundColor: "rgba(24,24,27,0.78)", borderWidth: 1, borderColor: "rgba(255,255,255,0.14)" },
  heroPillWatched: { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.4)" },
  heroPillText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#fff" },
  heroProgress: { width: "100%", gap: 5, marginTop: 2 },
  heroProgressLabels: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between" },
  heroProgressPercent: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  heroProgressCount: { fontSize: 11, fontFamily: "Cairo_600SemiBold", color: "rgba(255,255,255,0.78)" },
  heroProgressTrack: { flex: 0, width: "100%", height: 6, marginBottom: 0, backgroundColor: "rgba(255,255,255,0.18)", flexDirection: ROW_RTL },
  progressTrack: { flex: 1, height: 6, backgroundColor: colors.surfaceElevated, borderRadius: 4, overflow: "hidden" },
  progressFill: { height: "100%", backgroundColor: "#0EA5E9", borderRadius: 3 },
  controls: { backgroundColor: colors.background, borderBottomWidth: 1, borderBottomColor: colors.border, paddingHorizontal: 16, paddingTop: 12, paddingBottom: 10, gap: 10 },
  seasonSection: {},
  seasonTabs: { flexDirection: ROW_RTL, gap: 8, paddingHorizontal: 1 },
  seasonTab: { flexDirection: ROW_RTL, alignItems: "center", gap: 8, paddingHorizontal: 16, paddingVertical: 8, borderRadius: 22, backgroundColor: colors.card, borderWidth: 1, borderColor: colors.border },
  seasonTabActive: { backgroundColor: "#0EA5E9", borderColor: "#38BDF8" },
  seasonTabTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
  seasonTabTitleActive: { color: "#fff" },
  seasonTabCount: { fontSize: 11, fontFamily: "Cairo_600SemiBold", color: colors.textSecondary },
  seasonTabCountActive: { color: "rgba(255,255,255,0.9)" },
  episodeQuickRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 10 },
  quickWatchBtn: { minHeight: 44, flexDirection: ROW_RTL, alignItems: "center", justifyContent: "center", gap: 7, paddingHorizontal: 16, borderRadius: 14, backgroundColor: "#0EA5E9", borderWidth: 1, borderColor: "#38BDF8" },
  quickWatchBtnText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  searchBar: { flexDirection: ROW_RTL, alignItems: "center", gap: 8, backgroundColor: colors.card, borderRadius: 14, paddingHorizontal: 14, minHeight: 44, borderWidth: 1, borderColor: colors.border },
  quickSearchBar: { flex: 1, minWidth: 0 },
  searchInput: { flex: 1, color: colors.textPrimary, fontSize: 12, fontFamily: "Cairo_600SemiBold", textAlign: "right", paddingVertical: 0 },
  rangeControls: {},
  rangeChips: { flexDirection: ROW_RTL, gap: 8, paddingHorizontal: 1 },
  rangeChip: { minHeight: 36, alignItems: "center", justifyContent: "center", paddingHorizontal: 16, borderRadius: 20, borderWidth: 1, borderColor: colors.border, backgroundColor: colors.card },
  rangeChipActive: { backgroundColor: "#0EA5E9", borderColor: "#38BDF8" },
  rangeChipText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
  rangeChipTextActive: { color: "#fff" },
  row: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", gap: 12, minHeight: 82, marginHorizontal: 16, marginVertical: 5, paddingHorizontal: 12, paddingVertical: 11, borderRadius: 16, borderWidth: 1 },
  rowSeparator: { height: 0 },
  episodeMain: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 12 },
  thumbWrap: { width: 96, height: 58, borderRadius: 11, overflow: "hidden", backgroundColor: colors.surfaceElevated, position: "relative" },
  thumb: { width: "100%", height: "100%" },
  thumbFallback: { backgroundColor: "rgba(14,165,233,0.12)" },
  thumbOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.22)", alignItems: "center", justifyContent: "center" },
  thumbPlayCircle: { width: 28, height: 28, borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1.5, borderColor: "rgba(255,255,255,0.65)" },
  thumbPlayCircleDefault: { backgroundColor: "rgba(14,165,233,0.88)" },
  thumbPlayCircleWatched: { backgroundColor: "rgba(16,185,129,0.9)" },
  epNumBadgeOverlay: { position: "absolute", bottom: 4, right: 5, backgroundColor: "rgba(0,0,0,0.72)", borderRadius: 5, paddingHorizontal: 5, paddingVertical: 1 },
  epNumBadgeText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  info: { flex: 1, alignItems: "flex-end", gap: 2 },
  episodeActions: { flexDirection: "row", alignItems: "center", gap: 8 },
  epNumRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  epNum: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
  watchedBadge: { paddingHorizontal: 8, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(16,185,129,0.16)", borderWidth: 1, borderColor: "rgba(16,185,129,0.35)" },
  watchedBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#10B981" },
  fillerBadge: { backgroundColor: "#df2f39", color: "#fff", fontSize: 9, lineHeight: 16, paddingHorizontal: 7, borderRadius: 5, fontFamily: "Cairo_700Bold", overflow: "hidden" },
  epTitleAr: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary, textAlign: "right" },
  epTitleOriginal: { fontSize: 11, fontFamily: "Cairo_400Regular", color: colors.textSecondary, textAlign: "right" },
  commentBtn: {
    width: 36, height: 36, borderRadius: 11, alignItems: "center", justifyContent: "center",
    backgroundColor: colors.surfaceElevated, borderWidth: 1, borderColor: colors.border,
    position: "relative",
  },
  commentCountBadge: {
    position: "absolute", top: -5, right: -5,
    minWidth: 16, height: 16, backgroundColor: "#0EA5E9", borderRadius: 8,
    alignItems: "center", justifyContent: "center", paddingHorizontal: 3,
  },
  commentCount: {
    fontSize: 9, color: "#fff", fontFamily: "Cairo_800ExtraBold",
    textAlign: "center", lineHeight: 13,
  },
  tvCommentCount: { minWidth: 20, height: 20, borderRadius: 10, fontSize: 10, lineHeight: 20, top: -6, right: -6 },
  eyeBtn: { width: 36, height: 36, borderRadius: 11, alignItems: "center", justifyContent: "center", backgroundColor: colors.surfaceElevated, borderWidth: 1, borderColor: colors.border },
  eyeBtnWatched: { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.45)" },
  tvContainer: { paddingHorizontal: 28 },
  tvFocusGuide: { flex: 1 },
  tvControls: { paddingHorizontal: 20, paddingTop: 8, paddingBottom: 8, gap: 7 },
  tvEpisodeQuickRow: { gap: 10, marginBottom: 4 },
  tvQuickWatchBtn: { minHeight: 40, maxWidth: 200, paddingHorizontal: 14, borderRadius: 12 },
  tvQuickWatchBtnText: { maxWidth: 170, fontSize: 12, lineHeight: 18 },
  tvRangeChip: { minHeight: 34, paddingHorizontal: 12, borderRadius: 16 },
  tvRangeChipText: { fontSize: 11, lineHeight: 16 },
  tvSeasonSectionTitle: { fontSize: 14, lineHeight: 20 },
  tvSeasonTab: { minWidth: 118, paddingHorizontal: 12, paddingVertical: 6, borderRadius: 12 },
  tvSeasonTabTitle: { fontSize: 12, lineHeight: 18 },
  tvSeasonTabCount: { fontSize: 10, lineHeight: 15 },
  tvEpisodeSectionTitle: { fontSize: 15, lineHeight: 22 },
  tvSortButton: { minHeight: 36, paddingHorizontal: 12, paddingVertical: 6, borderRadius: 10 },
  tvSortButtonText: { fontSize: 12, lineHeight: 18 },
  tvHero: { height: 126 },
  tvBackBtn: { width: 38, height: 38, borderRadius: 11 },
  tvHeroBottom: { paddingHorizontal: 20, paddingBottom: 8, gap: 8 },
  tvHeroContent: { gap: 12 },
  tvHeroCover: { width: 62, height: 88, borderRadius: 10 },
  tvHeroInfo: { paddingBottom: 2 },
  tvHeroBadge: { fontSize: 11, lineHeight: 16 },
  tvHeroTitle: { fontSize: 17, lineHeight: 23 },
  tvText: { fontSize: 12, lineHeight: 18 },
  tvRow: { width: "100%", minHeight: 74, flexDirection: ROW_RTL, alignItems: "center", paddingHorizontal: 10, paddingVertical: 6, gap: 10, borderRadius: 12, borderWidth: 1, borderBottomWidth: 1, borderColor: colors.border, backgroundColor: colors.card },
  tvEpisodeMain: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 10, borderRadius: 10 },
  tvListContent: { paddingTop: 4, paddingBottom: 90, gap: 7 },
  tvSmallButton: { width: 34, height: 34, borderRadius: 9 },
  tvSearchBar: { minHeight: 40, paddingVertical: 4, paddingHorizontal: 12, borderRadius: 11 },
  tvThumbWrap: { width: 106, height: 60, borderRadius: 8 },
  tvDurText: { fontSize: 8, paddingHorizontal: 4, paddingVertical: 2, borderRadius: 4 },
  tvInfo: { flex: 1, minHeight: 0 },
  tvEpisodeActions: { justifyContent: "flex-end", gap: 5 },
  tvEpNum: { fontSize: 14, lineHeight: 20 },
  tvFillerBadge: { fontSize: 12, lineHeight: 22, paddingHorizontal: 9 },
  tvEpTitle: { fontSize: 13, lineHeight: 20 },
  tvEpOriginal: { fontSize: 11, lineHeight: 16 },
  tvPageBtn: { width: 44, height: 44, borderRadius: 12 },
});
}

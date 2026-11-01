/**
 * (tabs)/aw-dubbed.tsx — تبويب "رسوم متحركة مدبلجة ومترجمة"
 * يجمع ثلاثة أقسام بتبويبات داخلية:
 *   • أنيميشن — أنيميشن مدبلج (aw_links / Supabase)
 *   • سبيستون — المسلسلات والحلقات من مصدر سبيستون
 *   • كرتون   — كرتون مدبلج عربي (arabic-toons)
 */
import React, { useState, useEffect, useCallback, useRef } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";
import {
  View, Text, TextInput, FlatList, Image,
  ActivityIndicator, StyleSheet, Platform, Animated, Easing,
  useWindowDimensions,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import {
  catalogBadge,
  isLegacyCartoonEntry,
  mergeCatalogRows,
  trustedLegacyBadge,
  useDubbedCatalogFeed,
  type DubbedCatalogTitle,
} from "@/hooks/useDubbedCatalogFeed";

// ─────────────────────────────────────────────────────────
// Types
// ─────────────────────────────────────────────────────────

interface AwSeason  { label: string; animeId: string }
interface AwSeries  {
  key: string; title: string; titleAr?: string; poster?: string;
  seasons: AwSeason[]; dubbedConfirmed?: boolean;
}

interface DubbedSeason  { label: string; arabicToonsId: string }
interface DubbedSeries  {
  key: string; title: string; image?: string; poster?: string;
  seasons: DubbedSeason[]; tmdbId?: number; slug?: string;
}

interface SpacetoonSeries {
  id: number;
  provider: "sp";
  providerLabel: string;
  title: string;
  image: string;
  category: string;
  episodeCount: number;
  isMovie: boolean;
  year: string;
}

interface SpacetoonCatalogCacheEntry {
  series: SpacetoonSeries[];
  page: number;
  totalPages: number;
  savedAt: number;
}

type TabKey = "animation" | "spacetoon" | "cartoon";
const CARTOON_CATALOG_CACHE_KEY = "nova:cartoon-catalog:v2";
const CARTOON_CATALOG_CACHE_LIMIT = 60;
const SPACETOON_CATALOG_CACHE_TTL_MS = 10 * 60_000;
const SPACETOON_CATALOG_CACHE_LIMIT = 6;
const spacetoonCatalogCache = new Map<string, SpacetoonCatalogCacheEntry>();

function posterRequestUri(uri: string | null): string | null {
  if (!uri) return null;
  const match = uri.match(
    /^https:\/\/image\.tmdb\.org\/t\/p\/(w92|w154|w185|w342|w500|w780|w1280|original)\/([A-Za-z0-9_-]+\.(?:jpe?g|png|webp))(?:\?[^#]*)?(?:#.*)?$/i,
  );
  if (!match) return uri;
  return `${getBaseUrl().replace(/\/+$/, "")}/api/source-catalog/tmdb-poster/${match[1]}/${match[2]}`;
}

function spacetoonQueryKey(searchQ: string): string {
  const query = searchQ.trim();
  return query.length >= 2 ? query.toLocaleLowerCase("ar") : "";
}

function rememberSpacetoonCatalog(key: string, entry: SpacetoonCatalogCacheEntry): void {
  spacetoonCatalogCache.delete(key);
  spacetoonCatalogCache.set(key, entry);
  while (spacetoonCatalogCache.size > SPACETOON_CATALOG_CACHE_LIMIT) {
    const oldestKey = spacetoonCatalogCache.keys().next().value;
    if (oldestKey === undefined) break;
    spacetoonCatalogCache.delete(oldestKey);
  }
}

function normalizeAwSeries(item: any): AwSeries | null {
  if (!item || typeof item !== "object") return null;
  const key = String(item.key ?? "").trim();
  if (!key) return null;
  const seasons = Array.isArray(item.seasons)
    ? item.seasons
        .filter((s: any) => s && typeof s === "object" && String(s.animeId ?? "").trim())
        .map((s: any) => ({
          label: String(s.label ?? "الحلقات"),
          animeId: String(s.animeId),
        }))
    : [];
  return {
    key,
    title: String(item.title ?? key),
    titleAr: item.titleAr ? String(item.titleAr) : undefined,
    poster: item.poster ? String(item.poster) : undefined,
    dubbedConfirmed: item.dubbedConfirmed === true,
    seasons: seasons.length ? seasons : [{ label: "الحلقات", animeId: key }],
  };
}
function gridColumnsForWidth(width: number) {
  // TV has more pixels, not necessarily more decoding headroom. Match the
  // phone layout so posters stay readable and scrolling stays fluid.
  return 3;
}

// ─────────────────────────────────────────────────────────
// Shared card helpers
// ─────────────────────────────────────────────────────────

function PosterCard({ uri, title, seasons, tint, badge, badgeTint, sourceBadge, meta, testID, onPress, retryToken, retryDelayMs }: {
  uri: string | null; title: string; seasons: number;
  tint: string; badge?: string; badgeTint?: string; sourceBadge?: string;
  meta?: string; testID?: string; onPress: () => void;
  retryToken?: number; retryDelayMs?: number;
}) {
  const colors = useColors();
  const [failedUri, setFailedUri] = useState<string | null>(null);
  const [imageRetry, setImageRetry] = useState(0);
  const imageRetryTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastRetryTokenRef = useRef(retryToken ?? 0);
  const tvMode = isTvDevice();
  const imageUri = posterRequestUri(uri);
  const show = !!imageUri && failedUri !== uri;

  useEffect(() => {
    setFailedUri(null);
    setImageRetry(0);
    if (imageRetryTimerRef.current) clearTimeout(imageRetryTimerRef.current);
    imageRetryTimerRef.current = null;
    return () => {
      if (imageRetryTimerRef.current) clearTimeout(imageRetryTimerRef.current);
    };
  }, [uri]);

  useEffect(() => {
    if (retryToken === undefined || retryToken === lastRetryTokenRef.current) return;
    lastRetryTokenRef.current = retryToken;
    if (!uri || failedUri !== uri) return;

    if (imageRetryTimerRef.current) clearTimeout(imageRetryTimerRef.current);
    imageRetryTimerRef.current = setTimeout(() => {
      imageRetryTimerRef.current = null;
      setFailedUri(null);
      // Bypass a potentially stale native image-cache entry on recovery.
      setImageRetry(1);
    }, Math.max(0, retryDelayMs ?? 0));
    return () => {
      if (imageRetryTimerRef.current) {
        clearTimeout(imageRetryTimerRef.current);
        imageRetryTimerRef.current = null;
      }
    };
  }, [failedUri, retryDelayMs, retryToken, uri]);

  return (
    <Pressable onPress={onPress} testID={testID} focusable={tvMode}
      style={({ pressed, focused }) => [card.wrap, { opacity: pressed ? 0.72 : 1 }, tvMode && tvFocusStyle(focused)]}>
      <View style={[card.poster, { backgroundColor: colors.surface }]}>
        {show ? (
          <Image
            key={`${uri}:${imageRetry}`}
            source={{ uri: imageUri!, cache: imageRetry > 0 ? "reload" : "force-cache" }}
            style={StyleSheet.absoluteFill}
            resizeMode="cover"
            resizeMethod="resize"
            fadeDuration={0}
            onError={() => {
              if (imageRetry < 2) {
                if (imageRetryTimerRef.current) clearTimeout(imageRetryTimerRef.current);
                imageRetryTimerRef.current = setTimeout(() => {
                  imageRetryTimerRef.current = null;
                  setImageRetry(current => current + 1);
                }, 500 * (imageRetry + 1));
              } else {
                setFailedUri(uri);
              }
            }}
          />
        ) : (
          <View style={[card.placeholder, { backgroundColor: `${tint}18` }]}>
            <Text style={{ fontSize: 22 }}>🎬</Text>
          </View>
        )}
        <LinearGradient colors={["transparent", "rgba(0,0,0,0.88)"]}
          style={StyleSheet.absoluteFill} pointerEvents="none" />
        {badge ? (
          <View style={[card.badge, { backgroundColor: badgeTint || "#35B955" }]}>
            <Text style={card.badgeText} numberOfLines={1}>{badge}</Text>
          </View>
        ) : null}
        {sourceBadge ? (
          <View style={card.sourceBadge}>
            <Text style={card.sourceBadgeText} numberOfLines={1}>{sourceBadge}</Text>
          </View>
        ) : null}
        <View style={card.label}>
          <Text style={card.title} numberOfLines={2}>{title}</Text>
          {meta ? (
            <Text style={card.seasons} numberOfLines={1}>{meta}</Text>
          ) : seasons > 1 ? (
            <Text style={[card.seasons, { color: `${tint}99` }]}>{seasons} مواسم</Text>
          ) : null}
        </View>
      </View>
    </Pressable>
  );
}

// ─────────────────────────────────────────────────────────
// أنيميشن مدبلج list
// ─────────────────────────────────────────────────────────

function AnimationList({ searchQ }: { searchQ: string }) {
  const colors = useColors();
  const { width } = useWindowDimensions();
  const gridWidth = Math.min(Math.max(width - 24, 0), 900);
  const columns = gridColumnsForWidth(width);
  const router = useRouter();
  const BASE = getBaseUrl();
  const catalog = useDubbedCatalogFeed("animation", searchQ);
  const [series,      setSeries]      = useState<AwSeries[]>([]);
  const [page,        setPage]        = useState(1);
  const [totalPages,  setTotalPages]  = useState(1);
  const [loading,     setLoading]     = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchRes,   setSearchRes]   = useState<AwSeries[]>([]);
  const [searchLoad,  setSearchLoad]  = useState(false);
  const ctrlRef = useRef<AbortController | null>(null);
  const timer   = useRef<ReturnType<typeof setTimeout> | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    if (reset) {
      ctrlRef.current?.abort();
      ctrlRef.current = new AbortController();
    }
    const ctrl = reset ? ctrlRef.current! : new AbortController();
    reset ? setLoading(true) : setLoadingMore(true);
    try {
      const r = await fetch(`${BASE}/api/aw-dubbed/catalog?page=${p}`, { signal: ctrl.signal });
      const d = await r.json();
      if (ctrl.signal.aborted) return;
       const next = Array.isArray(d.results)
         ? d.results.map(normalizeAwSeries).filter(Boolean) as AwSeries[]
         : [];
       setSeries(prev => reset ? next : [...prev, ...next]);
      setTotalPages(d.totalPages || 1);
      setPage(p);
    } catch (e: any) { if (e?.name === "AbortError") return; }
    if (!ctrlRef.current?.signal.aborted) { setLoading(false); setLoadingMore(false); }
  }, [BASE]);

  useEffect(() => { loadPage(1, true); }, [loadPage]);

  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchRes([]); return; }
    setSearchLoad(true);
    if (timer.current) clearTimeout(timer.current);
    const ctrl = new AbortController();
    timer.current = setTimeout(async () => {
      try {
        const r = await fetch(`${BASE}/api/aw-dubbed/catalog?q=${encodeURIComponent(q)}&page=1`, { signal: ctrl.signal });
         const d = await r.json();
         setSearchRes(Array.isArray(d.results)
           ? d.results.map(normalizeAwSeries).filter(Boolean) as AwSeries[]
           : []);
      } catch (e: any) {
        if (e?.name !== "AbortError") setSearchRes([]);
      }
      if (!ctrl.signal.aborted) setSearchLoad(false);
    }, 400);
    return () => { if (timer.current) clearTimeout(timer.current); ctrl.abort(); };
  }, [searchQ, BASE]);

  const openDetail = (s: AwSeries) => {
    router.push({
      pathname: "/aw-dubbed/[key]",
      params: {
        key:     encodeURIComponent(s.key),
        title:   s.title,
        titleAr: s.titleAr || "",
        seasons: encodeURIComponent(JSON.stringify(s.seasons)),
        poster:  encodeURIComponent(s.poster || ""),
      },
    });
  };

  const openCatalogDetail = (item: DubbedCatalogTitle) => {
    router.push({
      pathname: "/stardima-title" as any,
      params: { providerTitleId: item.provider_title_id },
    });
  };

  const displayList = searchQ.trim().length >= 2 ? searchRes : series;
  const rows = mergeCatalogRows(
    displayList.map((item) => ({ kind: "aw" as const, item })),
    catalog.items.map((item) => ({ kind: "catalog" as const, item })),
  );
  const displayedStarDima = rows.filter((row) => row.kind === "catalog").length;

  useEffect(() => {
    if (catalog.loading) return;
    console.info("[dubbed-catalog-feed]", JSON.stringify({
      section: "animation",
      retrievedFromApi: catalog.stats.retrievedFromApi,
      acceptedByBelongsInSection: catalog.stats.acceptedBySection,
      eligibleTotal: catalog.stats.eligibleTotal,
      providerTotal: catalog.stats.providerTotal,
      legacyDisplayed: displayList.length,
      totalDisplayed: rows.length,
      starDimaDisplayed: displayedStarDima,
      duplicatesSuppressed: Math.max(0, catalog.items.length - displayedStarDima),
    }));
  }, [
    catalog.loading,
    catalog.stats.retrievedFromApi,
    catalog.stats.acceptedBySection,
    catalog.stats.eligibleTotal,
    catalog.stats.providerTotal,
    catalog.items.length,
    displayList.length,
    rows.length,
    displayedStarDima,
  ]);

  if (loading && series.length === 0 && catalog.items.length === 0) return (
    <View style={shared.center}>
      <ActivityIndicator color={colors.accent} size="large" />
    </View>
  );

  return (
    <FlatList
      data={rows}
      style={{ width: gridWidth, alignSelf: "center" }}
      key={`aw-animation-grid-${columns}`}
      keyExtractor={row => row.kind === "aw" ? `aw:${row.item.key}` : `catalog:${row.item.provider_title_id}`}
      numColumns={columns}
      contentContainerStyle={shared.grid}
      columnWrapperStyle={{ gap: 10 }}
      initialNumToRender={6}
      maxToRenderPerBatch={3}
      updateCellsBatchingPeriod={50}
      windowSize={5}
      removeClippedSubviews={Platform.OS !== "web"}
       renderItem={({ item: row }) => (
        <View style={{ flex: 1 / columns }}>
           {row.kind === "aw" ? (
             <PosterCard
               uri={row.item.poster || null}
               title={row.item.titleAr || row.item.title}
               seasons={row.item.seasons.length}
               tint="#10B981"
                 badge={trustedLegacyBadge(row.item, "animewitcher")}
                 badgeTint="#35B955"
               onPress={() => openDetail(row.item)}
             />
           ) : (
             <PosterCard
               uri={row.item.poster_url || row.item.backdrop_url || null}
               title={row.item.title_ar || row.item.title || row.item.title_en || "عنوان"}
               seasons={0}
               tint="#10B981"
               badge={catalogBadge(row.item, "animation")}
                badgeTint={catalogBadge(row.item, "animation")?.includes("مترجم") ? "#D94141" : "#35B955"}
                sourceBadge="StarDima"
               meta={`${row.item.media_type === "movie" ? "فيلم" : "مسلسل"}${row.item.episode_count ? ` · ${row.item.episode_count} حلقة` : ""}${row.item.release_year ? ` · ${row.item.release_year}` : ""}`}
               onPress={() => openCatalogDetail(row.item)}
             />
           )}
        </View>
      )}
      onEndReached={() => {
         if (searchQ.trim().length < 2 && !loadingMore && page < totalPages) loadPage(page + 1);
         void catalog.loadMore();
      }}
      onEndReachedThreshold={0.3}
       ListFooterComponent={loadingMore || catalog.loadingMore ? (
         <ActivityIndicator color={colors.accent} style={{ marginVertical: 16 }} />
       ) : catalog.error ? (
         <Pressable onPress={catalog.retry} style={shared.retryBtn}>
           <Ionicons name="refresh" size={15} color="#A78BFA" />
           <Text style={[shared.retryText, { color: colors.buttonText }]}>إعادة تحميل القائمة</Text>
         </Pressable>
       ) : null}
      ListEmptyComponent={
        <View style={shared.center}>
           {catalog.loading ? <ActivityIndicator color={colors.accent} /> : null}
           <Text style={[shared.emptyText, { color: colors.textMuted }]}>
             {searchQ.length >= 2
               ? (searchLoad || catalog.loading ? "جاري البحث..." : "لا توجد نتائج")
               : catalog.loading ? "جارٍ تحميل القائمة..." : "لا يوجد محتوى"}
           </Text>
        </View>
      }
    />
  );
}

// ─────────────────────────────────────────────────────────
// كرتون مدبلج list
// ─────────────────────────────────────────────────────────

function dubbedImgUri(s: DubbedSeries, base: string): string | null {
  const img = s.poster || s.image;
  if (!img) return null;
  if (img.startsWith("http")) return img;
  if (img.startsWith("/api/dubbed/img")) return `${base}${img}`;
  const f = img.split("?f=")[1] || img.split("/").pop();
  return f ? `${base}/api/dubbed/img?f=${f}` : null;
}

function CartoonList({ searchQ }: { searchQ: string }) {
  const colors = useColors();
  const { width } = useWindowDimensions();
  const gridWidth = Math.min(Math.max(width - 24, 0), 900);
  const columns = gridColumnsForWidth(width);
  const router = useRouter();
  const BASE = getBaseUrl();
  const catalog = useDubbedCatalogFeed("cartoon", searchQ);
  const [series,      setSeries]      = useState<DubbedSeries[]>([]);
  const [page,        setPage]        = useState(1);
  const [totalPages,  setTotalPages]  = useState(1);
  const [loading,     setLoading]     = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [loadError,   setLoadError]   = useState(false);
  const [searchRes,   setSearchRes]   = useState<DubbedSeries[]>([]);
  const [searchLoad,  setSearchLoad]  = useState(false);
  const timer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const seriesRef = useRef<DubbedSeries[]>([]);
  const catalogCtrlRef = useRef<AbortController | null>(null);
  const loadingMoreRef = useRef(false);
  const [cacheReady, setCacheReady] = useState(false);

  const loadPage = useCallback(async (p: number, reset = false) => {
    if (!reset && loadingMoreRef.current) return;
    if (reset) {
      catalogCtrlRef.current?.abort();
      loadingMoreRef.current = false;
      setLoadingMore(false);
      setLoadError(false);
      if (!seriesRef.current.length) setLoading(true);
    } else {
      loadingMoreRef.current = true;
      setLoadingMore(true);
    }
    const ctrl = new AbortController();
    catalogCtrlRef.current = ctrl;
    try {
      const r = await fetch(`${BASE}/api/dubbed/catalog?page=${p}`, { signal: ctrl.signal });
      if (!r.ok) throw new Error(`catalog ${r.status}`);
      const d = await r.json();
      if (!Array.isArray(d.results)) throw new Error("invalid catalog response");
      if (ctrl.signal.aborted) return;
      const filteredResults = d.results.filter(isLegacyCartoonEntry) as DubbedSeries[];
      const next = reset
        ? filteredResults
        : [...seriesRef.current, ...filteredResults];
      seriesRef.current = next;
      setSeries(next);
      setTotalPages(d.totalPages || 1);
      setPage(p);
      if (reset) {
        void AsyncStorage.setItem(
          CARTOON_CATALOG_CACHE_KEY,
          JSON.stringify(next.slice(0, CARTOON_CATALOG_CACHE_LIMIT)),
        ).catch(() => {});
      }
    } catch (error: any) {
      if (error?.name !== "AbortError" && reset && !seriesRef.current.length) setLoadError(true);
    } finally {
      if (catalogCtrlRef.current === ctrl) {
        catalogCtrlRef.current = null;
        if (reset) setLoading(false);
        else {
          loadingMoreRef.current = false;
          setLoadingMore(false);
        }
      }
    }
  }, [BASE]);

  useEffect(() => {
    let active = true;
    AsyncStorage.getItem(CARTOON_CATALOG_CACHE_KEY)
      .then(raw => {
        if (!active || !raw) return;
        const parsed = JSON.parse(raw);
        if (!Array.isArray(parsed)) return;
        const cached = parsed.filter((item: any) =>
          item && typeof item === "object" &&
          typeof item.title === "string" &&
          Array.isArray(item.seasons) &&
          isLegacyCartoonEntry(item),
        ) as DubbedSeries[];
        if (cached.length) {
          seriesRef.current = cached;
          setSeries(cached);
          setLoadError(false);
          setLoading(false);
        }
      })
      .catch(() => {})
      .finally(() => { if (active) setCacheReady(true); });
    return () => {
      active = false;
      catalogCtrlRef.current?.abort();
      if (timer.current) clearTimeout(timer.current);
    };
  }, []);

  useEffect(() => {
    if (cacheReady) void loadPage(1, true);
  }, [cacheReady, loadPage]);

  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchRes([]); return; }
    setSearchLoad(true);
    if (timer.current) clearTimeout(timer.current);
    timer.current = setTimeout(async () => {
      try {
        const r = await fetch(`${BASE}/api/dubbed/search?q=${encodeURIComponent(q)}`);
        const d = await r.json();
        setSearchRes(
          (Array.isArray(d.results) ? d.results : [])
            .filter(isLegacyCartoonEntry),
        );
      } catch { setSearchRes([]); }
      setSearchLoad(false);
    }, 400);
    return () => { if (timer.current) clearTimeout(timer.current); };
  }, [searchQ, BASE]);

  const openDetail = (s: DubbedSeries) => {
    router.push({
      pathname: "/dubbed/[id]",
      params: {
        id:      encodeURIComponent(s.key || s.title),
        title:   s.title,
        seasons: JSON.stringify(s.seasons),
        img:     s.poster || s.image || "",
      },
    });
  };

  const openCatalogDetail = (item: DubbedCatalogTitle) => {
    router.push({
      pathname: "/stardima-title" as any,
      params: { providerTitleId: item.provider_title_id },
    });
  };

  const displayList = searchQ.trim().length >= 2 ? searchRes : series;
  const rows = mergeCatalogRows(
    displayList.map((item) => ({ kind: "dubbed" as const, item })),
    catalog.items.map((item) => ({ kind: "catalog" as const, item })),
  );
  const displayedStarDima = rows.filter((row) => row.kind === "catalog").length;

  useEffect(() => {
    if (catalog.loading) return;
    console.info("[dubbed-catalog-feed]", JSON.stringify({
      section: "cartoon",
      retrievedFromApi: catalog.stats.retrievedFromApi,
      acceptedByBelongsInSection: catalog.stats.acceptedBySection,
      eligibleTotal: catalog.stats.eligibleTotal,
      providerTotal: catalog.stats.providerTotal,
      legacyDisplayed: displayList.length,
      totalDisplayed: rows.length,
      starDimaDisplayed: displayedStarDima,
      duplicatesSuppressed: Math.max(0, catalog.items.length - displayedStarDima),
    }));
  }, [
    catalog.loading,
    catalog.stats.retrievedFromApi,
    catalog.stats.acceptedBySection,
    catalog.stats.eligibleTotal,
    catalog.stats.providerTotal,
    catalog.items.length,
    displayList.length,
    rows.length,
    displayedStarDima,
  ]);

  if (loading && series.length === 0 && catalog.items.length === 0) return (
    <View style={shared.center}>
      <ActivityIndicator color={colors.accent} size="large" />
    </View>
  );

  if (loadError && series.length === 0 && catalog.items.length === 0 && !catalog.loading) return (
    <View style={shared.center}>
      <Ionicons name="cloud-offline-outline" size={42} color="rgba(167,139,250,0.55)" />
      <Text style={[shared.emptyText, { color: colors.textMuted }]}>تعذّر تحميل الكرتون المدبلج</Text>
      <Pressable onPress={() => {
        void loadPage(1, true);
        catalog.retry();
      }} style={shared.retryBtn}>
        <Ionicons name="refresh" size={15} color="#A78BFA" />
        <Text style={[shared.retryText, { color: colors.buttonText }]}>إعادة المحاولة</Text>
      </Pressable>
    </View>
  );

  return (
    <FlatList
      data={rows}
        style={{ width: gridWidth, alignSelf: "center" }}
      key={`aw-cartoon-grid-${columns}`}
      keyExtractor={row => row.kind === "dubbed" ? `dubbed:${row.item.key || row.item.title}` : `catalog:${row.item.provider_title_id}`}
      numColumns={columns}
      contentContainerStyle={shared.grid}
      columnWrapperStyle={{ gap: 10 }}
      initialNumToRender={6}
      maxToRenderPerBatch={3}
      updateCellsBatchingPeriod={50}
      windowSize={5}
      removeClippedSubviews={Platform.OS !== "web"}
      renderItem={({ item: row }) => (
        <View style={{ flex: 1 / columns }}>
          {row.kind === "dubbed" ? (
            <PosterCard
              uri={dubbedImgUri(row.item, BASE)}
              title={row.item.title}
              seasons={row.item.seasons.length}
              tint="#7C3AED"
              badge={trustedLegacyBadge(row.item, "arabic-toons")}
              badgeTint="#35B955"
              onPress={() => openDetail(row.item)}
            />
          ) : (
            <PosterCard
              uri={row.item.poster_url || row.item.backdrop_url || null}
              title={row.item.title_ar || row.item.title || row.item.title_en || "عنوان"}
              seasons={0}
              tint="#7C3AED"
              badge={catalogBadge(row.item, "cartoon")}
              badgeTint={catalogBadge(row.item, "cartoon")?.includes("مترجم") ? "#D94141" : "#35B955"}
              sourceBadge="StarDima"
              meta={`${row.item.media_type === "movie" ? "فيلم" : "مسلسل"}${row.item.episode_count ? ` · ${row.item.episode_count} حلقة` : ""}${row.item.release_year ? ` · ${row.item.release_year}` : ""}`}
              onPress={() => openCatalogDetail(row.item)}
            />
          )}
        </View>
      )}
      onEndReached={() => {
        if (searchQ.trim().length < 2 && !loadingMore && page < totalPages) loadPage(page + 1);
        void catalog.loadMore();
      }}
      onEndReachedThreshold={0.3}
      ListFooterComponent={loadingMore || catalog.loadingMore ? (
        <ActivityIndicator color={colors.accent} style={{ marginVertical: 16 }} />
      ) : catalog.error ? (
        <Pressable onPress={catalog.retry} style={shared.retryBtn}>
          <Ionicons name="refresh" size={15} color="#A78BFA" />
          <Text style={[shared.retryText, { color: colors.buttonText }]}>إعادة تحميل القائمة</Text>
        </Pressable>
      ) : null}
      ListEmptyComponent={
        <View style={shared.center}>
          {catalog.loading ? <ActivityIndicator color={colors.accent} /> : null}
          <Text style={[shared.emptyText, { color: colors.textMuted }]}>
            {searchQ.length >= 2
              ? (searchLoad || catalog.loading ? "جاري البحث..." : "لا توجد نتائج")
              : catalog.loading ? "جارٍ تحميل القائمة..." : "لا توجد أعمال كرتونية"}
          </Text>
        </View>
      }
    />
  );
}

// ─────────────────────────────────────────────────────────
// مسلسلات سبيستون list
// ─────────────────────────────────────────────────────────

function isSpacetoonSeries(item: unknown): item is SpacetoonSeries {
  if (!item || typeof item !== "object") return false;
  const row = item as Partial<SpacetoonSeries>;
  return row.provider === "sp" && Number.isSafeInteger(row.id) && typeof row.title === "string";
}

function SpacetoonList({ searchQ }: { searchQ: string }) {
  const colors = useColors();
  const { width } = useWindowDimensions();
  const gridWidth = Math.min(Math.max(width - 24, 0), 900);
  const columns = gridColumnsForWidth(width);
  const router = useRouter();
  const tvMode = isTvDevice();
  const [posterRetryToken, setPosterRetryToken] = useState(0);
  useFocusEffect(useCallback(() => {
    setPosterRetryToken(token => token + 1);
  }, []));
  const BASE = getBaseUrl();
  const queryKey = spacetoonQueryKey(searchQ);
  const initialCache = spacetoonCatalogCache.get(queryKey);
  const [series, setSeries] = useState<SpacetoonSeries[]>(() => initialCache?.series ?? []);
  const [page, setPage] = useState(() => initialCache?.page ?? 1);
  const [totalPages, setTotalPages] = useState(() => initialCache?.totalPages ?? 1);
  const [loading, setLoading] = useState(() => !initialCache?.series.length);
  const [loadingMore, setLoadingMore] = useState(false);
  const [loadError, setLoadError] = useState(false);
  const [failedPage, setFailedPage] = useState<number | null>(null);
  const loadingMoreRef = useRef(false);
  const requestIdRef = useRef(0);

  const loadPage = useCallback(async (nextPage: number, reset = false) => {
    if (!reset && loadingMoreRef.current) return;
    const requestId = ++requestIdRef.current;
    if (reset) {
      const cached = spacetoonCatalogCache.get(queryKey);
      loadingMoreRef.current = false;
      setLoading(!cached?.series.length);
      setLoadingMore(false);
      setLoadError(false);
      setFailedPage(null);
      setSeries(cached?.series ?? []);
      setPage(cached?.page ?? 1);
      setTotalPages(cached?.totalPages ?? 1);
    } else {
      loadingMoreRef.current = true;
      setLoadingMore(true);
    }

    try {
      const query = searchQ.trim().length >= 2 ? searchQ.trim() : "";
      const params = new URLSearchParams({
        page: String(nextPage),
        limit: "36",
        provider: "sp",
      });
      if (query) params.set("q", query);
      const response = await fetch(`${BASE}/api/dubbed/carateen/catalog?${params}`);
      if (!response.ok) throw new Error(`catalog_${response.status}`);
      const data = await response.json();
      if (requestId !== requestIdRef.current) return;

      const results = Array.isArray(data.results)
        ? data.results.filter(isSpacetoonSeries)
        : [];
      const responsePage = Number(data.page) || nextPage;
      const responseTotalPages = Math.max(1, Number(data.totalPages) || 1);
      const cached = spacetoonCatalogCache.get(queryKey);
      const merged = new Map<number, SpacetoonSeries>();
      if (reset) {
        for (const item of results) merged.set(item.id, item);
        for (const item of cached?.series ?? []) {
          if (!merged.has(item.id)) merged.set(item.id, item);
        }
      } else {
        for (const item of cached?.series ?? []) merged.set(item.id, item);
        for (const item of results) merged.set(item.id, item);
      }
      const nextSeries = [...merged.values()];
      const nextCachedPage = reset && cached?.series.length
        ? Math.max(responsePage, cached.page)
        : responsePage;
      rememberSpacetoonCatalog(queryKey, {
        series: nextSeries,
        page: nextCachedPage,
        totalPages: responseTotalPages,
        savedAt: Date.now(),
      });
      setSeries(nextSeries);
      setPage(nextCachedPage);
      setTotalPages(responseTotalPages);
      setLoadError(false);
      setFailedPage(null);
    } catch {
      if (requestId === requestIdRef.current) {
        setLoadError(true);
        setFailedPage(nextPage);
      }
    } finally {
      if (requestId === requestIdRef.current) {
        setLoading(false);
        setLoadingMore(false);
        loadingMoreRef.current = false;
      }
    }
  }, [BASE, queryKey, searchQ]);

  useEffect(() => {
    requestIdRef.current += 1;
    loadingMoreRef.current = false;
    const cached = spacetoonCatalogCache.get(queryKey);
    if (cached) {
      setSeries(cached.series);
      setPage(cached.page);
      setTotalPages(cached.totalPages);
      setLoading(false);
      setLoadingMore(false);
      loadingMoreRef.current = false;
      setLoadError(false);
      setFailedPage(null);
    } else {
      setSeries([]);
      setPage(1);
      setTotalPages(1);
      setLoading(true);
      setLoadError(false);
      setFailedPage(null);
    }

    if (cached && Date.now() - cached.savedAt < SPACETOON_CATALOG_CACHE_TTL_MS) {
      return;
    }

    const timer = setTimeout(() => { void loadPage(1, true); }, queryKey ? 300 : 0);
    return () => clearTimeout(timer);
  }, [loadPage, queryKey]);

  useEffect(() => () => {
    requestIdRef.current += 1;
    loadingMoreRef.current = false;
  }, []);

  const openDetail = (item: SpacetoonSeries) => {
    router.push({
      pathname: "/dubbed/[id]",
      params: {
        id: `sp-${item.id}`,
        provider: "sp",
        showId: String(item.id),
        isMovie: item.isMovie ? "1" : "0",
        title: item.title,
        img: item.image,
      },
    });
  };

  return (
    <FlatList
      data={series}
      style={{ width: gridWidth, alignSelf: "center" }}
      key={`spacetoon-grid-${columns}`}
      keyExtractor={item => `sp:${item.id}`}
      numColumns={columns}
      contentContainerStyle={shared.grid}
      columnWrapperStyle={{ gap: 10 }}
      initialNumToRender={6}
      maxToRenderPerBatch={3}
      updateCellsBatchingPeriod={50}
      windowSize={tvMode ? 7 : Platform.OS === "android" ? 3 : 5}
      removeClippedSubviews={Platform.OS === "android" && !tvMode}
      renderItem={({ item }) => (
        <View style={{ flex: 1 / columns }}>
          <PosterCard
            uri={item.image || null}
            title={item.title}
            seasons={0}
            tint="#06B6D4"
            retryToken={posterRetryToken}
            retryDelayMs={(item.id % 5) * 90}
            meta={`${item.isMovie ? "فيلم" : "مسلسل"}${item.episodeCount ? ` · ${item.episodeCount} حلقة` : ""}${item.year ? ` · ${item.year}` : ""}`}
            testID={`spacetoon-title-${item.id}`}
            onPress={() => openDetail(item)}
          />
        </View>
      )}
      onEndReached={() => {
        if (!loading && !loadingMore && page < totalPages) void loadPage(page + 1);
      }}
      onEndReachedThreshold={0.35}
      ListFooterComponent={loadingMore ? (
        <ActivityIndicator color="#22D3EE" style={{ marginVertical: 16 }} />
      ) : loadError && series.length > 0 ? (
        <Pressable
          onPress={() => {
            const retryPage = failedPage ?? page + 1;
            void loadPage(retryPage, retryPage === 1);
          }}
          style={shared.retryBtn}
        >
          <Ionicons name="refresh" size={15} color="#22D3EE" />
          <Text style={[shared.retryText, { color: colors.buttonText }]}>تعذّر تحميل المزيد — أعد المحاولة</Text>
        </Pressable>
      ) : null}
      ListEmptyComponent={
        <View style={shared.center}>
          {loading ? <ActivityIndicator color="#22D3EE" /> : null}
          {loadError && !loading ? (
            <>
              <Text style={[shared.emptyText, { color: colors.textMuted }]}>تعذّر تحميل مسلسلات سبيستون</Text>
              <Pressable onPress={() => { void loadPage(1, true); }} style={shared.retryBtn}>
                <Ionicons name="refresh" size={15} color="#22D3EE" />
                <Text style={[shared.retryText, { color: colors.buttonText }]}>إعادة المحاولة</Text>
              </Pressable>
            </>
          ) : !loading ? (
            <Text style={[shared.emptyText, { color: colors.textMuted }]}>
              {searchQ.trim().length >= 2 ? "لا توجد نتائج مطابقة" : "لا توجد مسلسلات سبيستون"}
            </Text>
          ) : null}
        </View>
      }
    />
  );
}

// ─────────────────────────────────────────────────────────
// Main Screen
// ─────────────────────────────────────────────────────────

export default function DubbedTabScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const tvMode = isTvDevice();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const routeParams = useLocalSearchParams<{ tab?: string | string[] }>();
  const routeTab = Array.isArray(routeParams.tab) ? routeParams.tab[0] : routeParams.tab;
  const requestedTab: TabKey = routeTab === "cartoon"
    ? "cartoon"
    : routeTab === "spacetoon"
      ? "spacetoon"
      : "animation";

  const [activeTab, setActiveTab] = useState<TabKey>(requestedTab);
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchQ,    setSearchQ]    = useState("");
  const searchInput = useRef<TextInput>(null);

  // Tab underline slide animation
  const tabPosition = (tab: TabKey) => tab === "animation" ? 0 : tab === "spacetoon" ? 1 : 2;
  const slideAnim = useRef(new Animated.Value(tabPosition(requestedTab))).current;
  useEffect(() => {
    setActiveTab(requestedTab);
    slideAnim.setValue(tabPosition(requestedTab));
  }, [requestedTab, slideAnim]);
  const handleTab = (tab: TabKey) => {
    if (tab === activeTab) return;
    setActiveTab(tab);
    setSearchQ("");
    Animated.timing(slideAnim, {
      toValue: tabPosition(tab),
      duration: 220,
      easing: Easing.out(Easing.cubic),
      useNativeDriver: false,
    }).start();
  };

  return (
    <View style={[s.screen, { backgroundColor: colors.background, paddingTop: topPad }]}>
      {/* ── Header ── */}
      <View style={[s.header, { borderBottomColor: colors.border }]}>
        <View style={{ flex: 1 }}>
          <Text style={[s.headerTitle, { color: colors.textPrimary }]}>رسوم متحركة مدبلجة ومترجمة</Text>
          <Text style={[s.headerSub, { color: colors.textSecondary }]}>
            {activeTab === "animation"
              ? "أنيميشن مدبلج ومترجم"
              : activeTab === "spacetoon"
                ? "مسلسلات سبيستون"
                : "كرتون مدبلج أو مترجم للعربية"}
          </Text>
        </View>
        <Pressable
          onPress={() => {
            const open = !searchOpen;
            setSearchOpen(open);
            if (open) setTimeout(() => searchInput.current?.focus(), 120);
            else setSearchQ("");
          }}
           focusable={tvMode}
           style={({ focused }) => [s.iconBtn, { backgroundColor: colors.input, borderColor: colors.border }, searchOpen && { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder }, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name={searchOpen ? "close" : "search"} size={18} color={colors.textSecondary} />
        </Pressable>
      </View>

      {/* ── Inner tabs ── */}
      <View style={[s.tabsRow, { borderBottomColor: colors.border }]}>
        {(["animation", "spacetoon", "cartoon"] as TabKey[]).map(tab => {
          const active = activeTab === tab;
          const color = tab === "animation" ? "#10B981" : tab === "spacetoon" ? "#06B6D4" : "#7C3AED";
          return (
              <Pressable key={tab} testID={`dubbed-tab-${tab}`} onPress={() => handleTab(tab)}
              focusable={tvMode}
              style={({ focused }) => [
                s.tabBtn,
                { backgroundColor: colors.surface, borderColor: colors.border },
                active && { borderColor: `${color}55`, backgroundColor: `${color}12` },
                tvMode && tvFocusStyle(focused),
              ]}>
              <Text style={[s.tabText, { color: active ? color : colors.textSecondary }]}>
                {tab === "animation"
                  ? "أنيميشن مدبلج ومترجم"
                  : tab === "spacetoon"
                    ? "مسلسلات سبيستون"
                    : "كرتون مدبلج ومترجم"}
              </Text>
            </Pressable>
          );
        })}
      </View>

      {/* ── Search ── */}
      {searchOpen && (
        <View style={[s.searchBox, { backgroundColor: colors.input, borderColor: colors.border }]}>
          <Ionicons name="search" size={16} color={colors.textMuted} style={{ marginLeft: 8 }} />
          <TextInput
            ref={searchInput}
            value={searchQ}
            onChangeText={setSearchQ}
            placeholder={
              activeTab === "animation"
                ? "ابحث في الأنيميشن المدبلج والمترجم..."
                : activeTab === "spacetoon"
                  ? "ابحث في مسلسلات سبيستون..."
                  : "ابحث في الكرتون المدبلج والمترجم..."
            }
            placeholderTextColor={colors.textMuted}
            style={[s.searchInput, { color: colors.textPrimary }]}
            autoFocus
          />
          {searchQ ? (
             <Pressable onPress={() => setSearchQ("")} focusable={tvMode}
               style={({ focused }) => [ { marginRight: 8 }, tvMode && tvFocusStyle(focused)]}>
              <Ionicons name="close-circle" size={18} color={colors.textSecondary} />
            </Pressable>
          ) : null}
        </View>
      )}

      {/* ── Content ── */}
      {activeTab === "animation" ? (
        <AnimationList key="animation" searchQ={searchQ} />
      ) : activeTab === "spacetoon" ? (
        <SpacetoonList key="spacetoon" searchQ={searchQ} />
      ) : (
        <CartoonList key="cartoon" searchQ={searchQ} />
      )}
    </View>
  );
}

// ─────────────────────────────────────────────────────────
// Styles
// ─────────────────────────────────────────────────────────

const s = StyleSheet.create({
  screen:       { flex: 1, backgroundColor: "#09090B" },
  header:       {
    flexDirection: "row", alignItems: "center",
    paddingHorizontal: 16, paddingTop: 14, paddingBottom: 10,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  headerTitle:  { color: "#fff", fontSize: 18, fontFamily: "Cairo_800ExtraBold" },
  headerSub:    { color: "rgba(255,255,255,0.35)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  iconBtn:      {
    width: 36, height: 36, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  tabsRow: {
    flexDirection: "row", gap: 10,
    paddingHorizontal: 16, paddingVertical: 10,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  tabBtn: {
    flex: 1, paddingVertical: 8, borderRadius: 14, alignItems: "center",
    backgroundColor: "rgba(255,255,255,0.04)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.07)",
  },
  tabText: {
    fontSize: 11, lineHeight: 16, textAlign: "center",
    fontFamily: "Cairo_700Bold",
    color: "rgba(255,255,255,0.38)",
  },
  searchBox: {
    flexDirection: "row", alignItems: "center",
    marginHorizontal: 16, marginBottom: 8, marginTop: 4,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
    paddingVertical: 10,
  },
  searchInput: {
    flex: 1, color: "#fff", fontSize: 14,
    fontFamily: "Cairo_400Regular", textAlign: "right", paddingRight: 8,
  },
});

const shared = StyleSheet.create({
  grid:       { padding: 12, paddingBottom: 110, gap: 10 },
  center:     { flex: 1, alignItems: "center", justifyContent: "center", paddingVertical: 60 },
  emptyText:  { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  retryBtn:   { flexDirection: "row", alignItems: "center", gap: 7, marginTop: 10, paddingHorizontal: 16, paddingVertical: 9, borderRadius: 12, backgroundColor: "rgba(124,58,237,0.15)", borderWidth: 1, borderColor: "rgba(124,58,237,0.3)" },
  retryText:  { color: "#A78BFA", fontFamily: "Cairo_700Bold", fontSize: 12 },
});

const card = StyleSheet.create({
  wrap:        { borderRadius: 12, overflow: "hidden" },
  poster:      { aspectRatio: 2 / 3, backgroundColor: "rgba(255,255,255,0.05)", borderRadius: 12, overflow: "hidden" },
  placeholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  badge:       { position: "absolute", top: 7, right: 7, maxWidth: "88%", paddingHorizontal: 7, paddingVertical: 3, borderRadius: 6 },
  badgeText:   { color: "#FFFFFF", fontSize: 9, fontFamily: "Cairo_700Bold" },
  sourceBadge: {
    position: "absolute", top: 7, left: 7, maxWidth: "45%",
    paddingHorizontal: 6, paddingVertical: 3, borderRadius: 6,
    backgroundColor: "rgba(18, 18, 24, 0.86)",
    borderWidth: 1, borderColor: "rgba(167,139,250,0.58)",
  },
  sourceBadgeText: { color: "#DDD0FF", fontSize: 8, fontFamily: "Cairo_700Bold" },
  label:       { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6 },
  title:       { color: "#fff", fontSize: 10, fontFamily: "Cairo_700Bold", lineHeight: 14 },
  seasons:     { fontSize: 9, fontFamily: "Cairo_400Regular" },
});

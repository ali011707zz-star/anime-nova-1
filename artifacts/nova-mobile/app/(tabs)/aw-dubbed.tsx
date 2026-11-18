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
  View, Text, TextInput, FlatList, Image, ScrollView,
  ActivityIndicator, StyleSheet, Platform, Animated, Easing, I18nManager,
  useWindowDimensions,
} from "react-native";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
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

interface Cartoon2Item {
  id: number;
  slug: string;
  provider: "sd2";
  providerLabel: string;
  title: string;
  image: string;
  mediaType: "series" | "movie";
  isMovie: boolean;
  year: string;
  languageLabel: string;
  isDubbed: boolean;
  isSubbed: boolean;
  category: string;
}

interface Cartoon2CacheEntry {
  items: Cartoon2Item[];
  page: number;
  totalPages: number;
  savedAt: number;
}

interface AnimeZidItem {
  id: string;
  slug: string;
  url: string;
  title: string;
  poster: string | null;
  badge: string;
  year: string;
  seasonsCount: number;
  episodesCount: number;
  mediaType: "series" | "movie";
}

interface AnimeZidCacheEntry {
  items: AnimeZidItem[];
  page: number;
  totalPages: number;
  savedAt: number;
}

type TabKey = "anime" | "animation" | "spacetoon" | "cartoon" | "cartoon2";
type AnimeZidSortFilter = "newest" | "oldest" | "name";
const ANIMEZID_CATALOG_CACHE_KEY = "nova:animezid-catalog:v2";
const animeZidCatalogCache = new Map<string, AnimeZidCacheEntry>();
let animeZidStorageHydrated = false;
type Cartoon2TypeFilter = "all" | "series" | "movie";
type Cartoon2OrderFilter = "newest" | "oldest" | "title";
const CARTOON2_CATALOG_CACHE_KEY = "nova:cartoon2-catalog:v2";
const cartoon2CatalogCache = new Map<string, Cartoon2CacheEntry>();
let cartoon2StorageHydrated = false;
let cartoon2PrewarmPromise: Promise<void> | null = null;

function rememberCartoon2Catalog(key: string, entry: Cartoon2CacheEntry): void {
  cartoon2CatalogCache.delete(key);
  cartoon2CatalogCache.set(key, entry);
  while (cartoon2CatalogCache.size > 12) {
    const oldest = cartoon2CatalogCache.keys().next().value;
    if (oldest === undefined) break;
    cartoon2CatalogCache.delete(oldest);
  }
  if (key === "all|newest|" && entry.items.length > 0) {
    AsyncStorage.setItem(
      CARTOON2_CATALOG_CACHE_KEY,
      JSON.stringify({
        items: entry.items.slice(0, 72),
        page: entry.page,
        totalPages: entry.totalPages,
        savedAt: entry.savedAt,
      }),
    ).catch(() => {});
  }
}

async function hydrateAndPrewarmCartoon2Catalog(): Promise<void> {
  if (!cartoon2StorageHydrated) {
    cartoon2StorageHydrated = true;
    try {
      const raw = await AsyncStorage.getItem(CARTOON2_CATALOG_CACHE_KEY);
      if (raw && !cartoon2CatalogCache.has("all|newest|")) {
        const parsed = JSON.parse(raw) as Cartoon2CacheEntry;
        if (parsed && Array.isArray(parsed.items) && parsed.items.length > 0) {
          cartoon2CatalogCache.set("all|newest|", {
            items: parsed.items,
            page: Number(parsed.page) || 1,
            totalPages: Math.max(1, Number(parsed.totalPages) || 1),
            savedAt: Number(parsed.savedAt) || 0,
          });
        }
      }
    } catch {}
  }
  const existing = cartoon2CatalogCache.get("all|newest|");
  if (existing && Date.now() - existing.savedAt < 5 * 60_000) return;
  if (cartoon2PrewarmPromise) return cartoon2PrewarmPromise;
  cartoon2PrewarmPromise = (async () => {
    try {
      const BASE = getBaseUrl();
      const r = await fetch(`${BASE}/api/dubbed/sd2/catalog?page=1&limit=36&type=all&order=newest`);
      if (!r.ok) return;
      const d = await r.json();
      const results: Cartoon2Item[] = Array.isArray(d?.results) ? d.results.filter(isCartoon2Item) : [];
      if (results.length > 0) {
        rememberCartoon2Catalog("all|newest|", {
          items: results,
          page: 1,
          totalPages: Math.max(1, Number(d?.totalPages) || 1),
          savedAt: Date.now(),
        });
      }
    } catch {} finally {
      cartoon2PrewarmPromise = null;
    }
  })();
  return cartoon2PrewarmPromise;
}
const CARTOON_CATALOG_CACHE_KEY = "nova:cartoon-catalog:v3";
const CARTOON_CATALOG_CACHE_LIMIT = 60;
const SPACETOON_CATALOG_CACHE_TTL_MS = 10 * 60_000;
const SPACETOON_CATALOG_CACHE_LIMIT = 6;
const spacetoonCatalogCache = new Map<string, SpacetoonCatalogCacheEntry>();

function posterRequestUri(uri: string | null): string | null {
  if (!uri) return null;
  const base = getBaseUrl().replace(/\/+$/, "");
  if (uri.startsWith("/api/")) return `${base}${uri}`;
  const match = uri.match(
    /^https?:\/\/image\.tmdb\.org\/t\/p\/(w\d+|original)\/([A-Za-z0-9_-]+\.(?:jpe?g|png|webp))(?:\?[^#]*)?(?:#.*)?$/i,
  );
  if (match) {
    const size = match[1] === "w500" || match[1] === "w300" ? "w342" : match[1];
    return `${base}/api/source-catalog/tmdb-poster/${size}/${match[2]}`;
  }
  if (/^https?:\/\/watch-\d+\.stardima\.com\.im\/storage\//i.test(uri)) {
    return `${base}/api/dubbed/sd2/poster?url=${encodeURIComponent(uri)}`;
  }
  if (/^https?:\/\/(?:(?:www\.)?carateen\.tv|cdn\.spacetoongo\.com)\//i.test(uri)) {
    return `${base}/api/dubbed/carateen/poster?url=${encodeURIComponent(uri)}`;
  }
  if (/^https?:\/\/(?:www\.)?animezid\.org\/uploads\//i.test(uri)) {
    return `${base}/api/dubbed/animezid/poster?url=${encodeURIComponent(uri)}`;
  }
  return uri;
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
function gridColumnsForWidth(width: number, tvMode = false) {
  if (tvMode) return width >= 750 ? 5 : 4;
  if (width >= 900) return 5;
  if (width >= 600) return 4;
  return 3;
}

function getGridMetrics(width: number, tvMode = false) {
  const columns = gridColumnsForWidth(width, tvMode);
  const gridWidth = tvMode
    ? Math.min(Math.max(width - 40, 320), 1380)
    : Math.min(Math.max(width - 24, 280), 900);
  const gap = tvMode ? 12 : 10;
  const cardWidth = Math.max(88, Math.floor((gridWidth - 24 - gap * (columns - 1)) / columns));
  const cardHeight = Math.round(cardWidth * 1.44);
  return { tvMode, columns, gridWidth, gap, cardWidth, cardHeight };
}

// ─────────────────────────────────────────────────────────
// Shared card helpers
// ─────────────────────────────────────────────────────────

const PosterCard = React.memo(function PosterCard({ uri, title, seasons, tint, badge, badgeTint, sourceBadge, meta, testID, onPress, onSelectItem, itemPayload, retryToken, retryDelayMs, cardWidth, cardHeight, tvMode: tvModeProp, onFocus }: {
  uri: string | null; title: string; seasons: number;
  tint: string; badge?: string; badgeTint?: string; sourceBadge?: string;
  meta?: string; testID?: string; onPress?: () => void;
  onSelectItem?: (item: any) => void; itemPayload?: any;
  retryToken?: number; retryDelayMs?: number;
  cardWidth?: number; cardHeight?: number;
  tvMode?: boolean;
  onFocus?: () => void;
}) {
  const colors = useColors();
  const [failedUri, setFailedUri] = useState<string | null>(null);
  const [imageRetry, setImageRetry] = useState(0);
  const imageRetryTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastRetryTokenRef = useRef(retryToken ?? 0);
  const { tv: reactiveTv } = useTvMetrics();
  const tvMode = tvModeProp ?? reactiveTv;
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

  const handleCardPress = useCallback(() => {
    if (onSelectItem && itemPayload !== undefined) {
      onSelectItem(itemPayload);
    } else {
      onPress?.();
    }
  }, [onSelectItem, itemPayload, onPress]);

  return (
    <Pressable
      onPress={handleCardPress}
      onFocus={onFocus}
      testID={testID}
      focusable={tvMode}
      style={({ pressed, focused }) => [
        card.wrap,
        cardWidth && cardHeight ? { width: cardWidth, height: cardHeight } : undefined,
        { opacity: pressed ? 0.78 : 1 },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View
        style={[
          card.poster,
          cardWidth && cardHeight ? { width: "100%", height: "100%" } : { aspectRatio: 2 / 3 },
          { backgroundColor: colors.surface },
        ]}
      >
        {show ? (
          <Image
            key={imageRetry > 0 ? `${imageUri}:${imageRetry}` : imageUri!}
            source={{ uri: imageUri! }}
            style={{ width: "100%", height: "100%" }}
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
        <View style={card.scrimTop} pointerEvents="none" />
        <View style={card.scrimBottom} pointerEvents="none" />
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
          <Text style={[card.seasons, { color: tint }]} numberOfLines={1}>
            {meta ? meta : seasons > 1 ? `${seasons} مواسم` : "مدبلج عربي"}
          </Text>
        </View>
      </View>
    </Pressable>
  );
});

// ─────────────────────────────────────────────────────────
// أنيميشن مدبلج list
// ─────────────────────────────────────────────────────────

function AnimationList({ searchQ }: { searchQ: string }) {
  const colors = useColors();
  const { width } = useWindowDimensions();
  const { tv: tvMode } = useTvMetrics();
  const { gridWidth, columns, gap, cardWidth, cardHeight } = getGridMetrics(width, tvMode);
  const listRef = useRef<FlatList<any>>(null);
  const scrollRow = useCallback((idx: number) => {
    if (!tvMode) return;
    const row = Math.floor(idx / columns);
    try { listRef.current?.scrollToIndex({ index: row, animated: true, viewPosition: 0.35 }); }
    catch { listRef.current?.scrollToOffset({ offset: Math.max(0, row * (cardHeight + gap)), animated: true }); }
  }, [tvMode, columns, cardHeight, gap]);
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
      ref={listRef}
      data={rows}
      style={{ width: gridWidth, alignSelf: "center" }}
      key={`aw-animation-grid-${columns}`}
      onScrollToIndexFailed={({ index: r }) => listRef.current?.scrollToOffset({ offset: Math.max(0, r * (cardHeight + gap)), animated: true })}
      keyExtractor={row => row.kind === "aw" ? `aw:${row.item.key}` : `catalog:${row.item.provider_title_id}`}
      numColumns={columns}
      contentContainerStyle={shared.grid}
      columnWrapperStyle={{ gap }}
      getItemLayout={(_data, rowIndex) => ({
        length: cardHeight + gap,
        offset: (cardHeight + gap) * rowIndex,
        index: rowIndex,
      })}
      initialNumToRender={9}
      maxToRenderPerBatch={6}
      updateCellsBatchingPeriod={40}
      windowSize={tvMode ? 7 : 5}
      removeClippedSubviews={false}
      renderItem={({ item: row, index: rowIdx }) => (
        <View style={{ width: cardWidth }}>
          {row.kind === "aw" ? (
            <PosterCard
              onFocus={() => scrollRow(rowIdx)}
              uri={row.item.poster || null}
              title={row.item.titleAr || row.item.title}
              seasons={row.item.seasons.length}
              tint="#10B981"
              badge={trustedLegacyBadge(row.item, "animewitcher")}
              badgeTint="#35B955"
              cardWidth={cardWidth}
              cardHeight={cardHeight}
            tvMode={tvMode}
              onPress={() => openDetail(row.item)}
            />
          ) : (
            <PosterCard
              onFocus={() => scrollRow(rowIdx)}
              uri={row.item.poster_url || row.item.backdrop_url || null}
              title={row.item.title_ar || row.item.title || row.item.title_en || "عنوان"}
              seasons={0}
              tint="#10B981"
              badge={catalogBadge(row.item, "animation")}
              badgeTint={catalogBadge(row.item, "animation")?.includes("مترجم") ? "#D94141" : "#35B955"}
              sourceBadge="StarDima"
              meta={`${row.item.media_type === "movie" ? "فيلم" : "مسلسل"}${row.item.episode_count ? ` · ${row.item.episode_count} حلقة` : ""}${row.item.release_year ? ` · ${row.item.release_year}` : ""}`}
              cardWidth={cardWidth}
              cardHeight={cardHeight}
            tvMode={tvMode}
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
         <Pressable onPress={catalog.retry} focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}>
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
  const { tv: tvMode } = useTvMetrics();
  const { gridWidth, columns, gap, cardWidth, cardHeight } = getGridMetrics(width, tvMode);
  const listRef = useRef<FlatList<any>>(null);
  const scrollRow = useCallback((idx: number) => {
    if (!tvMode) return;
    const row = Math.floor(idx / columns);
    try { listRef.current?.scrollToIndex({ index: row, animated: true, viewPosition: 0.35 }); }
    catch { listRef.current?.scrollToOffset({ offset: Math.max(0, row * (cardHeight + gap)), animated: true }); }
  }, [tvMode, columns, cardHeight, gap]);
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
      }} focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}>
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
      columnWrapperStyle={{ gap }}
      getItemLayout={(_data, rowIndex) => ({
        length: cardHeight + gap,
        offset: (cardHeight + gap) * rowIndex,
        index: rowIndex,
      })}
      initialNumToRender={9}
      maxToRenderPerBatch={6}
      updateCellsBatchingPeriod={40}
      windowSize={tvMode ? 7 : 5}
      removeClippedSubviews={false}
      renderItem={({ item: row, index: rowIdx }) => (
        <View style={{ width: cardWidth }}>
          {row.kind === "dubbed" ? (
            <PosterCard
              onFocus={() => scrollRow(rowIdx)}
              uri={dubbedImgUri(row.item, BASE)}
              title={row.item.title}
              seasons={row.item.seasons.length}
              tint="#7C3AED"
              badge={trustedLegacyBadge(row.item, "arabic-toons")}
              badgeTint="#35B955"
              cardWidth={cardWidth}
              cardHeight={cardHeight}
            tvMode={tvMode}
              onPress={() => openDetail(row.item)}
            />
          ) : (
            <PosterCard
              onFocus={() => scrollRow(rowIdx)}
              uri={row.item.poster_url || row.item.backdrop_url || null}
              title={row.item.title_ar || row.item.title || row.item.title_en || "عنوان"}
              seasons={0}
              tint="#7C3AED"
              badge={catalogBadge(row.item, "cartoon")}
              badgeTint={catalogBadge(row.item, "cartoon")?.includes("مترجم") ? "#D94141" : "#35B955"}
              sourceBadge="StarDima"
              meta={`${row.item.media_type === "movie" ? "فيلم" : "مسلسل"}${row.item.episode_count ? ` · ${row.item.episode_count} حلقة` : ""}${row.item.release_year ? ` · ${row.item.release_year}` : ""}`}
              cardWidth={cardWidth}
              cardHeight={cardHeight}
            tvMode={tvMode}
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
        <Pressable onPress={catalog.retry} focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}>
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
  const { tv: tvMode } = useTvMetrics();
  const { gridWidth, columns, gap, cardWidth, cardHeight } = getGridMetrics(width, tvMode);
  const listRef = useRef<FlatList<any>>(null);
  const scrollRow = useCallback((idx: number) => {
    if (!tvMode) return;
    const row = Math.floor(idx / columns);
    try { listRef.current?.scrollToIndex({ index: row, animated: true, viewPosition: 0.35 }); }
    catch { listRef.current?.scrollToOffset({ offset: Math.max(0, row * (cardHeight + gap)), animated: true }); }
  }, [tvMode, columns, cardHeight, gap]);
  const router = useRouter();
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
      ref={listRef}
      data={series}
      style={{ width: gridWidth, alignSelf: "center" }}
      key={`spacetoon-grid-${columns}`}
      onScrollToIndexFailed={({ index: r }) => listRef.current?.scrollToOffset({ offset: Math.max(0, r * (cardHeight + gap)), animated: true })}
      keyExtractor={item => `sp:${item.id}`}
      numColumns={columns}
      contentContainerStyle={shared.grid}
      columnWrapperStyle={{ gap }}
      getItemLayout={(_data, rowIndex) => ({
        length: cardHeight + gap,
        offset: (cardHeight + gap) * rowIndex,
        index: rowIndex,
      })}
      initialNumToRender={9}
      maxToRenderPerBatch={6}
      updateCellsBatchingPeriod={40}
      windowSize={tvMode ? 7 : 5}
      removeClippedSubviews={false}
      renderItem={({ item, index: rowIdx }) => (
        <View style={{ width: cardWidth }}>
          <PosterCard
            onFocus={() => scrollRow(rowIdx)}
            uri={item.image || null}
            title={item.title}
            seasons={0}
            tint="#06B6D4"
            retryToken={posterRetryToken}
            retryDelayMs={(item.id % 5) * 90}
            meta={`${item.isMovie ? "فيلم" : "مسلسل"}${item.episodeCount ? ` · ${item.episodeCount} حلقة` : ""}${item.year ? ` · ${item.year}` : ""}`}
            testID={`spacetoon-title-${item.id}`}
            cardWidth={cardWidth}
            cardHeight={cardHeight}
            tvMode={tvMode}
            itemPayload={item}
            onSelectItem={openDetail}
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
          focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}
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
              <Pressable onPress={() => { void loadPage(1, true); }} focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}>
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
// كرتون مدبلج 2 list (StarDima V2)
// ─────────────────────────────────────────────────────────

function isCartoon2Item(item: unknown): item is Cartoon2Item {
  if (!item || typeof item !== "object") return false;
  const row = item as Partial<Cartoon2Item>;
  return row.provider === "sd2" && typeof row.slug === "string" && typeof row.title === "string";
}

function Cartoon2List({ searchQ }: { searchQ: string }) {
  const colors = useColors();
  const { width } = useWindowDimensions();
  const { tv: tvMode } = useTvMetrics();
  const { gridWidth, columns, gap, cardWidth, cardHeight } = getGridMetrics(width, tvMode);
  const listRef = useRef<FlatList<any>>(null);
  const scrollRow = useCallback((idx: number) => {
    if (!tvMode) return;
    const row = Math.floor(idx / columns);
    try { listRef.current?.scrollToIndex({ index: row, animated: true, viewPosition: 0.35 }); }
    catch { listRef.current?.scrollToOffset({ offset: Math.max(0, row * (cardHeight + gap)), animated: true }); }
  }, [tvMode, columns, cardHeight, gap]);
  const router = useRouter();
  const [posterRetryToken, setPosterRetryToken] = useState(0);
  useFocusEffect(useCallback(() => {
    setPosterRetryToken(token => token + 1);
  }, []));
  const BASE = getBaseUrl();
  const [typeFilter, setTypeFilter] = useState<Cartoon2TypeFilter>("all");
  const [orderFilter, setOrderFilter] = useState<Cartoon2OrderFilter>("newest");
  const queryPart = spacetoonQueryKey(searchQ);
  const cacheKey = `${typeFilter}|${orderFilter}|${queryPart}`;
  const initialCache = cartoon2CatalogCache.get(cacheKey);
  const [items, setItems] = useState<Cartoon2Item[]>(() => initialCache?.items ?? []);
  const [page, setPage] = useState(() => initialCache?.page ?? 1);
  const [totalPages, setTotalPages] = useState(() => initialCache?.totalPages ?? 1);
  const [loading, setLoading] = useState(() => !initialCache?.items.length);
  const [loadingMore, setLoadingMore] = useState(false);
  const [loadError, setLoadError] = useState(false);
  const [failedPage, setFailedPage] = useState<number | null>(null);
  const loadingMoreRef = useRef(false);
  const requestIdRef = useRef(0);

  const loadPage = useCallback(async (nextPage: number, reset = false) => {
    if (!reset && loadingMoreRef.current) return;
    const requestId = ++requestIdRef.current;
    if (reset) {
      const cached = cartoon2CatalogCache.get(cacheKey);
      loadingMoreRef.current = false;
      setLoading(!cached?.items.length);
      setLoadingMore(false);
      setLoadError(false);
      setFailedPage(null);
      setItems(cached?.items ?? []);
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
        type: typeFilter,
        order: orderFilter,
      });
      if (query) params.set("q", query);
      const response = await fetch(`${BASE}/api/dubbed/sd2/catalog?${params}`);
      if (!response.ok) throw new Error(`sd2_catalog_${response.status}`);
      const data = await response.json();
      if (requestId !== requestIdRef.current) return;
      const results = Array.isArray(data.results) ? data.results.filter(isCartoon2Item) : [];
      const responsePage = Number(data.page) || nextPage;
      const responseTotalPages = Math.max(1, Number(data.totalPages) || 1);
      const cached = cartoon2CatalogCache.get(cacheKey);
      const merged = new Map<string, Cartoon2Item>();
      if (reset) {
        for (const item of results) merged.set(`${item.mediaType}:${item.slug}`, item);
        for (const item of cached?.items ?? []) {
          const k = `${item.mediaType}:${item.slug}`;
          if (!merged.has(k)) merged.set(k, item);
        }
      } else {
        for (const item of cached?.items ?? []) merged.set(`${item.mediaType}:${item.slug}`, item);
        for (const item of results) merged.set(`${item.mediaType}:${item.slug}`, item);
      }
      const nextItems = [...merged.values()];
      const nextCachedPage = reset && cached?.items.length ? Math.max(responsePage, cached.page) : responsePage;
      rememberCartoon2Catalog(cacheKey, {
        items: nextItems,
        page: nextCachedPage,
        totalPages: responseTotalPages,
        savedAt: Date.now(),
      });
      setItems(nextItems);
      setPage(nextCachedPage);
      setTotalPages(responseTotalPages);
      if (nextPage === 1) {
        for (const it of results.slice(0, 12)) {
          const pUri = posterRequestUri(it.image || null);
          if (pUri) Image.prefetch(pUri).catch(() => {});
        }
      }
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
  }, [BASE, cacheKey, orderFilter, searchQ, typeFilter]);

  useEffect(() => {
    requestIdRef.current += 1;
    loadingMoreRef.current = false;
    const cached = cartoon2CatalogCache.get(cacheKey);
    if (cached) {
      setItems(cached.items);
      setPage(cached.page);
      setTotalPages(cached.totalPages);
      setLoading(false);
      setLoadingMore(false);
      setLoadError(false);
      setFailedPage(null);
    } else {
      setItems([]);
      setPage(1);
      setTotalPages(1);
      setLoading(true);
      setLoadError(false);
      setFailedPage(null);
    }
    if (cached && Date.now() - cached.savedAt < SPACETOON_CATALOG_CACHE_TTL_MS) return;
    if (!cached && cacheKey === "all|newest|") {
      void hydrateAndPrewarmCartoon2Catalog().then(() => {
        const hydrated = cartoon2CatalogCache.get("all|newest|");
        if (hydrated && hydrated.items.length > 0) {
          setItems(hydrated.items);
          setPage(hydrated.page);
          setTotalPages(hydrated.totalPages);
          setLoading(false);
        }
      });
    }
    const timer = setTimeout(() => { void loadPage(1, true); }, queryPart ? 300 : 0);
    return () => clearTimeout(timer);
  }, [cacheKey, loadPage, queryPart]);

  useEffect(() => () => {
    requestIdRef.current += 1;
    loadingMoreRef.current = false;
  }, []);

  const openDetail = (item: Cartoon2Item) => {
    router.push({
      pathname: "/dubbed/[id]",
      params: {
        id: `sd2-${item.slug}`,
        provider: "sd2",
        showId: item.slug,
        slug: item.slug,
        isMovie: item.isMovie ? "1" : "0",
        title: item.title,
        img: item.image || "",
        languageLabel: item.languageLabel || "",
      },
    });
  };

  const cycleOrder = () => {
    setOrderFilter(prev => prev === "newest" ? "oldest" : prev === "oldest" ? "title" : "newest");
  };
  const orderLabel = orderFilter === "newest" ? "الأحدث" : orderFilter === "oldest" ? "الأقدم" : "الاسم";

  return (
    <View style={{ flex: 1 }}>
      <View style={[s.filterBar, { borderBottomColor: colors.border }]}>
        <View style={s.filterGroup}>
          {([
            { key: "all" as const, label: "الكل" },
            { key: "series" as const, label: "مسلسلات" },
            { key: "movie" as const, label: "أفلام" },
          ]).map(opt => {
            const active = typeFilter === opt.key;
            return (
              <Pressable
                key={opt.key}
                onPress={() => setTypeFilter(opt.key)}
                focusable={tvMode}
                style={({ focused }) => [
                  s.filterChip,
                  { backgroundColor: colors.surface, borderColor: colors.border },
                  active && { backgroundColor: "rgba(245,158,11,0.16)", borderColor: "rgba(245,158,11,0.55)" },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text style={[s.filterChipText, { color: active ? "#FBBF24" : colors.textSecondary }]}>{opt.label}</Text>
              </Pressable>
            );
          })}
        </View>
        <Pressable
          onPress={cycleOrder}
          focusable={tvMode}
          style={({ focused }) => [
            s.sortChip,
            { backgroundColor: colors.surface, borderColor: colors.border },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="swap-vertical" size={13} color="#FBBF24" />
          <Text style={[s.filterChipText, { color: colors.textPrimary }]}>{orderLabel}</Text>
        </Pressable>
      </View>

      <FlatList
        ref={listRef}
        data={items}
        style={{ width: gridWidth, alignSelf: "center" }}
        key={`cartoon2-grid-${columns}`}
        onScrollToIndexFailed={({ index: r }) => listRef.current?.scrollToOffset({ offset: Math.max(0, r * (cardHeight + gap)), animated: true })}
        keyExtractor={item => `sd2:${item.mediaType}:${item.slug}`}
        numColumns={columns}
        contentContainerStyle={shared.grid}
        columnWrapperStyle={{ gap }}
        initialNumToRender={10}
        maxToRenderPerBatch={6}
        updateCellsBatchingPeriod={50}
        windowSize={tvMode ? 9 : 7}
        removeClippedSubviews={false}
        renderItem={({ item, index: rowIdx }) => (
          <View style={{ width: cardWidth }}>
            <PosterCard
              onFocus={() => scrollRow(rowIdx)}
              uri={item.image || null}
              title={item.title}
              seasons={0}
              tint="#F59E0B"
              badge={item.languageLabel}
              badgeTint={item.isSubbed ? "#D94141" : "#35B955"}
              retryToken={posterRetryToken}
              retryDelayMs={(item.id % 5) * 90}
              meta={`${item.isMovie ? "فيلم" : "مسلسل"}${item.year ? ` · ${item.year}` : ""}`}
              testID={`cartoon2-title-${item.slug}`}
              cardWidth={cardWidth}
              cardHeight={cardHeight}
            tvMode={tvMode}
              itemPayload={item}
              onSelectItem={openDetail}
            />
          </View>
        )}
        onEndReached={() => {
          if (!loading && !loadingMore && page < totalPages) void loadPage(page + 1);
        }}
        onEndReachedThreshold={0.35}
        ListFooterComponent={loadingMore ? (
          <ActivityIndicator color="#FBBF24" style={{ marginVertical: 16 }} />
        ) : loadError && items.length > 0 ? (
          <Pressable
            onPress={() => {
              const retryPage = failedPage ?? page + 1;
              void loadPage(retryPage, retryPage === 1);
            }}
            focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="refresh" size={15} color="#FBBF24" />
            <Text style={[shared.retryText, { color: colors.buttonText }]}>تعذّر تحميل المزيد — أعد المحاولة</Text>
          </Pressable>
        ) : null}
        ListEmptyComponent={
          <View style={shared.center}>
            {loading ? <ActivityIndicator color="#FBBF24" /> : null}
            {loadError && !loading ? (
              <>
                <Text style={[shared.emptyText, { color: colors.textMuted }]}>تعذّر تحميل كرتون مدبلج 2</Text>
                <Pressable onPress={() => { void loadPage(1, true); }} focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}>
                  <Ionicons name="refresh" size={15} color="#FBBF24" />
                  <Text style={[shared.retryText, { color: colors.buttonText }]}>إعادة المحاولة</Text>
                </Pressable>
              </>
            ) : !loading ? (
              <Text style={[shared.emptyText, { color: colors.textMuted }]}>
                {searchQ.trim().length >= 2 ? "لا توجد نتائج مطابقة" : "لا توجد أعمال متاحة"}
              </Text>
            ) : null}
          </View>
        }
      />
    </View>
  );
}


// ─────────────────────────────────────────────────────────
// أنمي مدبلج list (AnimeZid)
// ─────────────────────────────────────────────────────────

function isAnimeZidItem(item: unknown): item is AnimeZidItem {
  if (!item || typeof item !== "object") return false;
  const row = item as Partial<AnimeZidItem>;
  return typeof row.slug === "string" && row.slug.length > 0 && typeof row.title === "string";
}

function rememberAnimeZidCatalog(key: string, entry: AnimeZidCacheEntry): void {
  animeZidCatalogCache.delete(key);
  animeZidCatalogCache.set(key, entry);
  while (animeZidCatalogCache.size > 10) {
    const oldest = animeZidCatalogCache.keys().next().value;
    if (oldest === undefined) break;
    animeZidCatalogCache.delete(oldest);
  }
  if (key === "newest|" && entry.items.length > 0) {
    AsyncStorage.setItem(
      ANIMEZID_CATALOG_CACHE_KEY,
      JSON.stringify({
        items: entry.items.slice(0, 220),
        page: entry.page,
        totalPages: entry.totalPages,
        savedAt: entry.savedAt,
      }),
    ).catch(() => {});
  }
}

async function hydrateAnimeZidCatalog(): Promise<void> {
  if (animeZidStorageHydrated) return;
  animeZidStorageHydrated = true;
  try {
    const raw = await AsyncStorage.getItem(ANIMEZID_CATALOG_CACHE_KEY);
    if (raw && !animeZidCatalogCache.has("newest|")) {
      const parsed = JSON.parse(raw) as AnimeZidCacheEntry;
      if (parsed && Array.isArray(parsed.items) && parsed.items.length > 0) {
        animeZidCatalogCache.set("newest|", {
          items: parsed.items,
          page: Number(parsed.page) || 1,
          totalPages: Math.max(1, Number(parsed.totalPages) || 1),
          savedAt: Number(parsed.savedAt) || 0,
        });
      }
    }
  } catch {}
}

function DubbedAnimeList({ searchQ }: { searchQ: string }) {
  const colors = useColors();
  const { width } = useWindowDimensions();
  const { tv: tvMode } = useTvMetrics();
  const { gridWidth, columns, gap, cardWidth, cardHeight } = getGridMetrics(width, tvMode);
  const listRef = useRef<FlatList<any>>(null);
  const scrollRow = useCallback((idx: number) => {
    if (!tvMode) return;
    const row = Math.floor(idx / columns);
    try { listRef.current?.scrollToIndex({ index: row, animated: true, viewPosition: 0.35 }); }
    catch { listRef.current?.scrollToOffset({ offset: Math.max(0, row * (cardHeight + gap)), animated: true }); }
  }, [tvMode, columns, cardHeight, gap]);
  const router = useRouter();
  const [posterRetryToken, setPosterRetryToken] = useState(0);
  useFocusEffect(useCallback(() => {
    setPosterRetryToken(token => token + 1);
  }, []));
  const BASE = getBaseUrl();
  const [sortFilter, setSortFilter] = useState<AnimeZidSortFilter>("newest");
  const queryPart = spacetoonQueryKey(searchQ);
  const cacheKey = `${sortFilter}|${queryPart}`;
  const initialCache = animeZidCatalogCache.get(cacheKey);
  const [items, setItems] = useState<AnimeZidItem[]>(() => initialCache?.items ?? []);
  const [page, setPage] = useState(() => initialCache?.page ?? 1);
  const [totalPages, setTotalPages] = useState(() => initialCache?.totalPages ?? 1);
  const [loading, setLoading] = useState(() => !initialCache?.items.length);
  const [loadingMore, setLoadingMore] = useState(false);
  const [loadError, setLoadError] = useState(false);
  const [failedPage, setFailedPage] = useState<number | null>(null);
  const loadingMoreRef = useRef(false);
  const requestIdRef = useRef(0);

  const loadPage = useCallback(async (nextPage: number, reset = false) => {
    if (!reset && loadingMoreRef.current) return;
    const requestId = ++requestIdRef.current;
    if (reset) {
      const cached = animeZidCatalogCache.get(cacheKey);
      loadingMoreRef.current = false;
      setLoading(!cached?.items.length);
      setLoadingMore(false);
      setLoadError(false);
      setFailedPage(null);
      setItems(cached?.items ?? []);
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
        sort: sortFilter,
      });
      if (query) params.set("q", query);
      const response = await fetch(`${BASE}/api/dubbed/animezid/catalog?${params}`);
      if (!response.ok) throw new Error(`animezid_catalog_${response.status}`);
      const data = await response.json();
      if (requestId !== requestIdRef.current) return;
      const results = Array.isArray(data.results) ? data.results.filter(isAnimeZidItem) : [];
      const responsePage = Number(data.page) || nextPage;
      const responseTotalPages = Math.max(1, Number(data.totalPages) || 1);
      const cached = animeZidCatalogCache.get(cacheKey);
      const merged = new Map<string, AnimeZidItem>();
      if (reset) {
        for (const item of results) merged.set(item.slug, item);
        if (!query) {
          for (const item of cached?.items ?? []) {
            if (!merged.has(item.slug)) merged.set(item.slug, item);
          }
        }
      } else {
        for (const item of cached?.items ?? []) merged.set(item.slug, item);
        for (const item of results) merged.set(item.slug, item);
      }
      const nextItems = [...merged.values()];
      const nextCachedPage = reset && !query && cached?.items.length ? Math.max(responsePage, cached.page) : responsePage;
      rememberAnimeZidCatalog(cacheKey, {
        items: nextItems,
        page: nextCachedPage,
        totalPages: responseTotalPages,
        savedAt: Date.now(),
      });
      setItems(nextItems);
      setPage(nextCachedPage);
      setTotalPages(responseTotalPages);
      if (nextPage === 1) {
        for (const it of results.slice(0, 12)) {
          const pUri = posterRequestUri(it.poster || null);
          if (pUri) Image.prefetch(pUri).catch(() => {});
        }
      }
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
  }, [BASE, cacheKey, searchQ, sortFilter]);

  useEffect(() => {
    requestIdRef.current += 1;
    loadingMoreRef.current = false;
    const cached = animeZidCatalogCache.get(cacheKey);
    if (cached) {
      setItems(cached.items);
      setPage(cached.page);
      setTotalPages(cached.totalPages);
      setLoading(false);
      setLoadingMore(false);
      setLoadError(false);
      setFailedPage(null);
    } else {
      setItems([]);
      setPage(1);
      setTotalPages(1);
      setLoading(true);
      setLoadError(false);
      setFailedPage(null);
    }
    if (cached && Date.now() - cached.savedAt < SPACETOON_CATALOG_CACHE_TTL_MS) return;
    if (!cached && cacheKey === "newest|") {
      void hydrateAnimeZidCatalog().then(() => {
        const hydrated = animeZidCatalogCache.get("newest|");
        if (hydrated && hydrated.items.length > 0) {
          setItems(hydrated.items);
          setPage(hydrated.page);
          setTotalPages(hydrated.totalPages);
          setLoading(false);
        }
      });
    }
    const timer = setTimeout(() => { void loadPage(1, true); }, queryPart ? 300 : 0);
    return () => clearTimeout(timer);
  }, [cacheKey, loadPage, queryPart]);

  useEffect(() => () => {
    requestIdRef.current += 1;
    loadingMoreRef.current = false;
  }, []);

  const openDetail = useCallback((item: AnimeZidItem) => {
    router.push({
      pathname: "/dubbed-anime/[slug]" as any,
      params: {
        slug: item.slug,
        title: item.title,
        poster: item.poster || "",
      },
    });
  }, [router]);

  const sortOptions: { key: AnimeZidSortFilter; label: string }[] = [
    { key: "newest", label: "الأحدث" },
    { key: "oldest", label: "الأقدم" },
    { key: "name", label: "بالاسم" },
  ];

  return (
    <View style={{ flex: 1 }}>
      <View style={[s.filterBar, { borderBottomColor: colors.border }]}>
        <View style={s.filterGroup}>
          {sortOptions.map(opt => {
            const active = sortFilter === opt.key;
            return (
              <Pressable
                key={opt.key}
                onPress={() => setSortFilter(opt.key)}
                focusable={tvMode}
                style={({ focused }) => [
                  s.filterChip,
                  { backgroundColor: colors.surface, borderColor: colors.border },
                  active && { backgroundColor: "rgba(6,182,212,0.16)", borderColor: "rgba(6,182,212,0.55)" },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text style={[s.filterChipText, { color: active ? "#22D3EE" : colors.textSecondary }]}>{opt.label}</Text>
              </Pressable>
            );
          })}
        </View>
        <Text style={[s.filterChipText, { color: colors.textMuted }]}>
          {items.length > 0 ? `${items.length} أنمي مدبلج` : "أنمي مدبلج"}
        </Text>
      </View>

      <FlatList
        ref={listRef}
        data={items}
        style={{ width: gridWidth, alignSelf: "center" }}
        key={`animezid-grid-${columns}`}
        onScrollToIndexFailed={({ index: r }) => listRef.current?.scrollToOffset({ offset: Math.max(0, r * (cardHeight + gap)), animated: true })}
        keyExtractor={item => `az:${item.slug}`}
        numColumns={columns}
        contentContainerStyle={shared.grid}
        columnWrapperStyle={{ gap }}
        initialNumToRender={10}
        maxToRenderPerBatch={6}
        updateCellsBatchingPeriod={50}
        windowSize={tvMode ? 9 : 7}
        removeClippedSubviews={false}
        renderItem={({ item, index }) => {
          const metaParts: string[] = [];
          if (item.seasonsCount > 1) metaParts.push(`${item.seasonsCount} مواسم`);
          if (item.episodesCount > 0) metaParts.push(`${item.episodesCount} ح`);
          if (item.year) metaParts.push(item.year);
          return (
            <View style={{ width: cardWidth }}>
              <PosterCard
                onFocus={() => scrollRow(index)}
                uri={item.poster || null}
                title={item.title}
                seasons={item.seasonsCount}
                tint="#06B6D4"
                badge={item.badge || "مدبلج"}
                badgeTint="#10B981"
                retryToken={posterRetryToken}
                retryDelayMs={(index % 5) * 90}
                meta={metaParts.join(" · ") || "أنمي مدبلج"}
                testID={`animezid-title-${item.slug}`}
                cardWidth={cardWidth}
                cardHeight={cardHeight}
                tvMode={tvMode}
                itemPayload={item}
                onSelectItem={openDetail}
              />
            </View>
          );
        }}
        onEndReached={() => {
          if (!loading && !loadingMore && page < totalPages) void loadPage(page + 1);
        }}
        onEndReachedThreshold={0.35}
        ListFooterComponent={loadingMore ? (
          <ActivityIndicator color="#06B6D4" style={{ marginVertical: 16 }} />
        ) : loadError && items.length > 0 ? (
          <Pressable
            onPress={() => {
              const retryPage = failedPage ?? page + 1;
              void loadPage(retryPage, retryPage === 1);
            }}
            focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="refresh" size={15} color="#22D3EE" />
            <Text style={[shared.retryText, { color: colors.buttonText }]}>تعذّر تحميل المزيد — أعد المحاولة</Text>
          </Pressable>
        ) : null}
        ListEmptyComponent={
          <View style={shared.center}>
            {loading ? <ActivityIndicator color="#06B6D4" /> : null}
            {loadError && !loading ? (
              <>
                <Text style={[shared.emptyText, { color: colors.textMuted }]}>تعذّر تحميل الأنمي المدبلج</Text>
                <Pressable onPress={() => { void loadPage(1, true); }} focusable={tvMode}
            style={({ focused }) => [shared.retryBtn, tvMode && tvFocusStyle(focused)]}>
                  <Ionicons name="refresh" size={15} color="#22D3EE" />
                  <Text style={[shared.retryText, { color: colors.buttonText }]}>إعادة المحاولة</Text>
                </Pressable>
              </>
            ) : !loading ? (
              <Text style={[shared.emptyText, { color: colors.textMuted }]}>
                {searchQ.trim().length >= 2 ? "لا توجد نتائج مطابقة" : "لا توجد أعمال متاحة"}
              </Text>
            ) : null}
          </View>
        }
      />
    </View>
  );
}

// ─────────────────────────────────────────────────────────
// Main Screen
// ─────────────────────────────────────────────────────────

export default function DubbedTabScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { tv: tvMode } = useTvMetrics();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const routeParams = useLocalSearchParams<{ tab?: string | string[] }>();
  const routeTab = Array.isArray(routeParams.tab) ? routeParams.tab[0] : routeParams.tab;
  const requestedTab: TabKey = routeTab === "cartoon2"
    ? "cartoon2"
    : routeTab === "cartoon"
      ? "cartoon"
      : routeTab === "spacetoon"
        ? "spacetoon"
        : routeTab === "animation"
          ? "animation"
          : "anime";

  const [activeTab, setActiveTab] = useState<TabKey>(requestedTab);
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchQ,    setSearchQ]    = useState("");
  const searchInput = useRef<TextInput>(null);
  const tabsScrollRef = useRef<ScrollView>(null);

  // Tab underline slide animation
  const tabPosition = (tab: TabKey) =>
    tab === "anime" ? 0 : tab === "animation" ? 1 : tab === "spacetoon" ? 2 : tab === "cartoon" ? 3 : 4;
  const slideAnim = useRef(new Animated.Value(tabPosition(requestedTab))).current;
  useEffect(() => {
    void hydrateAndPrewarmCartoon2Catalog();
  }, []);

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
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
          focusable={tvMode}
          hitSlop={8}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          style={({ focused }) => [
            s.iconBtn,
            { backgroundColor: colors.input, borderColor: colors.border },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="chevron-forward" size={18} color={colors.textPrimary} />
        </Pressable>
        <View style={{ flex: 1, alignItems: I18nManager.isRTL ? "flex-start" : "flex-end" }}>
          <Text style={[s.headerTitle, { color: colors.textPrimary }]} numberOfLines={1}>
            {activeTab === "anime"
              ? "أنمي مدبلج"
              : activeTab === "animation"
                ? "أنيميشن مدبلج"
                : activeTab === "spacetoon"
                  ? "سبيستون"
                  : activeTab === "cartoon2"
                    ? "كرتون مدبلج 2"
                    : "كرتون مدبلج"}
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
           hitSlop={8}
           style={({ focused }) => [s.iconBtn, { backgroundColor: colors.input, borderColor: colors.border }, searchOpen && { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder }, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name={searchOpen ? "close" : "search"} size={16} color={colors.textSecondary} />
        </Pressable>
      </View>

      {/* ── Inner tabs (horizontal ScrollView — full section names without shrinking) ── */}
      <View style={[s.tabsWrap, { borderBottomColor: colors.border }]}>
        <ScrollView
        focusable={false}
          ref={tabsScrollRef}
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={s.tabsRowContent}
        >
          {(["anime", "animation", "spacetoon", "cartoon", "cartoon2"] as TabKey[]).map(tab => {
            const active = activeTab === tab;
            const color =
              tab === "anime"
                ? "#06B6D4"
                : tab === "animation"
                  ? "#10B981"
                  : tab === "spacetoon"
                    ? "#38BDF8"
                    : tab === "cartoon2"
                      ? "#F59E0B"
                      : "#7C3AED";
            const label =
              tab === "anime"
                ? "أنمي مدبلج"
                : tab === "animation"
                  ? "أنيميشن مدبلج"
                  : tab === "spacetoon"
                    ? "سبيستون"
                    : tab === "cartoon2"
                      ? "كرتون مدبلج 2"
                      : "كرتون مدبلج";
            return (
              <Pressable
                key={tab}
                testID={`dubbed-tab-${tab}`}
                onPress={() => handleTab(tab)}
                focusable={tvMode}
                style={({ focused }) => [
                  s.tabBtn,
                  { backgroundColor: colors.surface, borderColor: colors.border },
                  active && { borderColor: `${color}88`, backgroundColor: `${color}1A` },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text style={[s.tabText, { color: active ? color : colors.textSecondary }]}>
                  {` ${label} `}
                </Text>
              </Pressable>
            );
          })}
        </ScrollView>
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
              activeTab === "anime"
                ? "ابحث في الأنمي المدبلج..."
                : activeTab === "animation"
                  ? "ابحث في الأنيميشن المدبلج..."
                  : activeTab === "spacetoon"
                    ? "ابحث في مسلسلات سبيستون..."
                    : activeTab === "cartoon2"
                      ? "ابحث في كرتون مدبلج 2..."
                      : "ابحث في الكرتون المدبلج..."
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
      {activeTab === "anime" ? (
        <DubbedAnimeList key="anime" searchQ={searchQ} />
      ) : activeTab === "animation" ? (
        <AnimationList key="animation" searchQ={searchQ} />
      ) : activeTab === "spacetoon" ? (
        <SpacetoonList key="spacetoon" searchQ={searchQ} />
      ) : activeTab === "cartoon2" ? (
        <Cartoon2List key="cartoon2" searchQ={searchQ} />
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
    flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", gap: 10,
    paddingHorizontal: 14, paddingTop: 6, paddingBottom: 6,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  headerTitle:  { color: "#fff", fontSize: 15, fontFamily: "Cairo_800ExtraBold" },
  headerSub:    { color: "rgba(255,255,255,0.35)", fontSize: 10, fontFamily: "Cairo_400Regular" },
  iconBtn:      {
    width: 32, height: 32, borderRadius: 9,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  tabsWrap: {
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  tabsRowContent: {
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 8,
    paddingHorizontal: 12,
    paddingVertical: 8,
  },
  filterBar: {
    flexDirection: "row-reverse", alignItems: "center", justifyContent: "space-between",
    paddingHorizontal: 12, paddingVertical: 5, gap: 6,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  filterGroup: { flexDirection: "row-reverse", alignItems: "center", gap: 5 },
  filterChip: {
    paddingHorizontal: 9, paddingVertical: 3.5, borderRadius: 8, borderWidth: 1,
  },
  sortChip: {
    flexDirection: "row", alignItems: "center", gap: 4,
    paddingHorizontal: 9, paddingVertical: 3.5, borderRadius: 8, borderWidth: 1,
  },
  filterChipText: { fontSize: 10.5, fontFamily: "Cairo_700Bold" },
  tabBtn: {
    paddingVertical: 8, paddingHorizontal: 16, borderRadius: 12, alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.04)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.07)",
    flexShrink: 0,
  },
  tabText: {
    fontSize: 13, lineHeight: 20, textAlign: "center",
    fontFamily: "Cairo_700Bold",
    color: "rgba(255,255,255,0.45)",
    includeFontPadding: false,
    paddingHorizontal: 3,
    flexShrink: 0,
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
  grid:       { paddingHorizontal: 12, paddingTop: 8, paddingBottom: 110, gap: 10 },
  center:     { flex: 1, alignItems: "center", justifyContent: "center", paddingVertical: 60 },
  emptyText:  { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  retryBtn:   { flexDirection: "row", alignItems: "center", gap: 7, marginTop: 10, paddingHorizontal: 16, paddingVertical: 9, borderRadius: 12, backgroundColor: "rgba(124,58,237,0.15)", borderWidth: 1, borderColor: "rgba(124,58,237,0.3)" },
  retryText:  { color: "#A78BFA", fontFamily: "Cairo_700Bold", fontSize: 12 },
});

const card = StyleSheet.create({
  wrap:        { borderRadius: 12, overflow: "hidden" },
  poster:      { backgroundColor: "rgba(255,255,255,0.05)", borderRadius: 12, overflow: "hidden" },
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
  scrimTop:    { position: "absolute", bottom: 42, left: 0, right: 0, height: 34, backgroundColor: "rgba(0,0,0,0.22)" },
  scrimBottom: { position: "absolute", bottom: 0, left: 0, right: 0, height: 42, backgroundColor: "rgba(0,0,0,0.72)" },
  label:       { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6 },
  title:       { color: "#fff", fontSize: 10, fontFamily: "Cairo_700Bold", lineHeight: 14 },
  seasons:     { fontSize: 9, fontFamily: "Cairo_400Regular" },
});

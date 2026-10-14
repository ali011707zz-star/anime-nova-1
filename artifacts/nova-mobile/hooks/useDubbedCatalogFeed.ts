import { useCallback, useEffect, useRef, useState } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import {
  belongsInSection,
  catalogBadge,
  isLegacyCartoonEntry,
  normalizedLocalizationLabel,
} from "./dubbedCatalogClassification.mjs";

export type { DubbedCatalogSection } from "./dubbedCatalogClassification.mjs";

export type DubbedCatalogTitle = {
  id: string | number;
  provider_title_id: string;
  title: string;
  title_ar?: string | null;
  title_en?: string | null;
  media_type?: string;
  release_year?: number | null;
  episode_count?: number | null;
  poster_url?: string | null;
  backdrop_url?: string | null;
  tags?: string[];
  classification?: {
    status?: string;
    contentFamilies?: string[];
    familyEvidence?: string;
    localizationLabels?: string[];
    sourceTags?: string[];
    sourceCategories?: string[];
    detailCheckedAt?: string | null;
  } | null;
  synonyms?: string[] | null;
};

type CatalogPage = {
  results?: DubbedCatalogTitle[];
  total?: number;
  providerTotal?: number;
};

const PAGE_SIZE = 30;
const PAGES_PER_BATCH = 4;
const MATCHES_PER_BATCH = 12;
const CACHE_LIMIT = 60;
export {
  catalogBadge,
  isLegacyCartoonEntry,
  mergeCatalogRows,
  normalizedLocalizationLabel,
  trustedLegacyBadge,
};

export type DubbedCatalogFeedStats = {
  retrievedFromApi: number;
  acceptedBySection: number;
  eligibleTotal: number;
  providerTotal: number;
};

const EMPTY_STATS: DubbedCatalogFeedStats = {
  retrievedFromApi: 0,
  acceptedBySection: 0,
  eligibleTotal: 0,
  providerTotal: 0,
};

function mergeTitles(current: DubbedCatalogTitle[], incoming: DubbedCatalogTitle[]) {
  const seen = new Set(current.map((item) => String(item.id || item.provider_title_id)));
  return [
    ...current,
    ...incoming.filter((item) => {
      const key = String(item.id || item.provider_title_id);
      if (seen.has(key)) return false;
      seen.add(key);
      return true;
    }),
  ];
}

export function useDubbedCatalogFeed(
  section: DubbedCatalogSection,
  searchText: string,
) {
  const rawQuery = searchText.trim().length >= 2 ? searchText.trim() : "";
  const [query, setQuery] = useState(rawQuery);
  const [items, setItems] = useState<DubbedCatalogTitle[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [hasMore, setHasMore] = useState(false);
  const [error, setError] = useState(false);
  const [retryKey, setRetryKey] = useState(0);
  const [stats, setStats] = useState<DubbedCatalogFeedStats>(EMPTY_STATS);
  const itemsRef = useRef<DubbedCatalogTitle[]>([]);
  const requestIdRef = useRef(0);
  const pageRef = useRef(0);
  const hasMoreRef = useRef(false);
  const loadingMoreRef = useRef(false);
  const initialRequestRef = useRef<AbortController | null>(null);
  const moreRequestRef = useRef<AbortController | null>(null);
  const cacheKey = query ? "" : `nova:dubbed-catalog-feed:v4:${section}`;

  const appendTitles = useCallback((incoming: DubbedCatalogTitle[], targetCacheKey: string) => {
    const merged = mergeTitles(itemsRef.current, incoming);
    itemsRef.current = merged;
    setItems(merged);
    if (targetCacheKey) {
      void AsyncStorage.setItem(targetCacheKey, JSON.stringify(merged.slice(0, CACHE_LIMIT))).catch(() => {});
    }
  }, []);

  useEffect(() => {
    const timer = setTimeout(() => setQuery(rawQuery), 350);
    return () => clearTimeout(timer);
  }, [rawQuery]);

  useEffect(() => {
    const requestId = ++requestIdRef.current;
    const controller = new AbortController();
    initialRequestRef.current?.abort();
    moreRequestRef.current?.abort();
    initialRequestRef.current = controller;
    loadingMoreRef.current = false;
    pageRef.current = 0;
    hasMoreRef.current = false;
    itemsRef.current = [];
    setItems([]);
    setLoading(true);
    setLoadingMore(false);
    setHasMore(false);
    setError(false);
    setStats(EMPTY_STATS);

    let firstPageReceived = false;
    if (cacheKey) void AsyncStorage.getItem(cacheKey)
      .then((raw) => {
        if (controller.signal.aborted || requestId !== requestIdRef.current || firstPageReceived || !raw) return;
        const cached = JSON.parse(raw) as DubbedCatalogTitle[];
        if (Array.isArray(cached)) {
          itemsRef.current = cached;
          setItems(cached);
        }
      })
      .catch(() => {});

    void (async () => {
      const collected: DubbedCatalogTitle[] = [];
      let currentPage = 1;
      let more = false;
      try {
        for (let attempt = 0; attempt < PAGES_PER_BATCH; attempt += 1) {
          const params = new URLSearchParams({
            provider: "stardima_catalog",
            section,
            page: String(currentPage),
            limit: String(PAGE_SIZE),
          });
          if (query) params.set("q", query);
          const response = await fetch(
            `${getBaseUrl()}/api/source-catalog/titles?${params.toString()}`,
            { signal: controller.signal },
          );
          if (!response.ok) throw new Error(`catalog_${response.status}`);
          const data = await response.json() as CatalogPage;
          if (controller.signal.aborted || requestId !== requestIdRef.current) return;
          firstPageReceived = true;
          const results = Array.isArray(data.results) ? data.results : [];
          const matches = results.filter((item) => belongsInSection(item, section));
          collected.push(...matches);
          appendTitles(matches, cacheKey);
          setStats((previous) => ({
            retrievedFromApi: previous.retrievedFromApi + results.length,
            acceptedBySection: previous.acceptedBySection + matches.length,
            eligibleTotal: Number(data.total) || previous.eligibleTotal,
            providerTotal: Number(data.providerTotal) || previous.providerTotal,
          }));
          pageRef.current = currentPage;
          more = results.length === PAGE_SIZE;
          if (collected.length >= MATCHES_PER_BATCH || !more) break;
          currentPage += 1;
        }
        if (requestId !== requestIdRef.current) return;
        hasMoreRef.current = more;
        setHasMore(more);
      } catch {
        if (!controller.signal.aborted && requestId === requestIdRef.current) setError(true);
      } finally {
        if (!controller.signal.aborted && requestId === requestIdRef.current) setLoading(false);
      }
    })();

    return () => {
      controller.abort();
      moreRequestRef.current?.abort();
    };
  }, [appendTitles, cacheKey, query, retryKey, section]);

  const loadMore = useCallback(async () => {
    if (loading || loadingMoreRef.current || !hasMoreRef.current) return;
    const requestId = requestIdRef.current;
    const controller = new AbortController();
    moreRequestRef.current?.abort();
    moreRequestRef.current = controller;
    loadingMoreRef.current = true;
    setLoadingMore(true);
    const collected: DubbedCatalogTitle[] = [];
    let currentPage = pageRef.current + 1;
    let more = false;
    try {
      for (let attempt = 0; attempt < PAGES_PER_BATCH; attempt += 1) {
        const params = new URLSearchParams({
          provider: "stardima_catalog",
          section,
          page: String(currentPage),
          limit: String(PAGE_SIZE),
        });
        if (query) params.set("q", query);
        const response = await fetch(
          `${getBaseUrl()}/api/source-catalog/titles?${params.toString()}`,
          { signal: controller.signal },
        );
        if (!response.ok) throw new Error(`catalog_${response.status}`);
        const data = await response.json() as CatalogPage;
        if (controller.signal.aborted || requestId !== requestIdRef.current) return;
        const results = Array.isArray(data.results) ? data.results : [];
        const matches = results.filter((item) => belongsInSection(item, section));
        collected.push(...matches);
        setStats((previous) => ({
          retrievedFromApi: previous.retrievedFromApi + results.length,
          acceptedBySection: previous.acceptedBySection + matches.length,
          eligibleTotal: Number(data.total) || previous.eligibleTotal,
          providerTotal: Number(data.providerTotal) || previous.providerTotal,
        }));
        pageRef.current = currentPage;
        more = results.length === PAGE_SIZE;
        if (collected.length >= MATCHES_PER_BATCH || !more) break;
        currentPage += 1;
      }
      if (requestId !== requestIdRef.current) return;
      appendTitles(collected, cacheKey);
      hasMoreRef.current = more;
      setHasMore(more);
    } catch {
      if (!controller.signal.aborted && requestId === requestIdRef.current) setError(true);
    } finally {
      if (requestId === requestIdRef.current) {
        loadingMoreRef.current = false;
        setLoadingMore(false);
      }
    }
  }, [appendTitles, cacheKey, loading, query, section]);

  const retry = useCallback(() => setRetryKey((value) => value + 1), []);

  return { items, loading, loadingMore, hasMore, error, loadMore, retry, stats };
}

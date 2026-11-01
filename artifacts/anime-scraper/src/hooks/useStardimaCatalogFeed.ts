import { useCallback, useEffect, useRef, useState } from "react";
import { API_BASE } from "@/lib/apiBase";
import type { StardimaCatalogTitle } from "@/lib/dubbedCatalogUtils.mjs";

type CatalogPage = {
  results?: StardimaCatalogTitle[];
  total?: number;
};

const PAGE_SIZE = 30;

export function useStardimaCatalogFeed(section: "animation" | "cartoon", searchText: string) {
  const rawQuery = searchText.trim().length >= 2 ? searchText.trim() : "";
  const [query, setQuery] = useState(rawQuery);
  const [items, setItems] = useState<StardimaCatalogTitle[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [hasMore, setHasMore] = useState(false);
  const [error, setError] = useState(false);
  const [retryKey, setRetryKey] = useState(0);
  const pageRef = useRef(1);
  const totalRef = useRef(0);
  const requestIdRef = useRef(0);
  const itemsRef = useRef<StardimaCatalogTitle[]>([]);
  const moreControllerRef = useRef<AbortController | null>(null);

  useEffect(() => {
    const timer = window.setTimeout(() => setQuery(rawQuery), 300);
    return () => window.clearTimeout(timer);
  }, [rawQuery]);

  useEffect(() => {
    const requestId = ++requestIdRef.current;
    const controller = new AbortController();
    moreControllerRef.current?.abort();
    pageRef.current = 1;
    totalRef.current = 0;
    itemsRef.current = [];
    setItems([]);
    setLoading(true);
    setLoadingMore(false);
    setHasMore(false);
    setError(false);

    const params = new URLSearchParams({
      provider: "stardima_catalog",
      section,
      page: "1",
      limit: String(PAGE_SIZE),
    });
    if (query) params.set("q", query);

    void fetch(`${API_BASE}/api/source-catalog/titles?${params}`, { signal: controller.signal })
      .then(async (response) => {
        if (!response.ok) throw new Error(`catalog_${response.status}`);
        return await response.json() as CatalogPage;
      })
      .then((data) => {
        if (controller.signal.aborted || requestId !== requestIdRef.current) return;
        const rows = Array.isArray(data.results)
          ? data.results.filter((item) => Boolean(item.provider_title_id))
          : [];
        itemsRef.current = rows;
        setItems(rows);
        pageRef.current = 1;
        totalRef.current = Number(data.total) || 0;
        setHasMore(rows.length > 0 && rows.length < totalRef.current);
      })
      .catch(() => {
        if (!controller.signal.aborted && requestId === requestIdRef.current) setError(true);
      })
      .finally(() => {
        if (!controller.signal.aborted && requestId === requestIdRef.current) setLoading(false);
      });

    return () => {
      controller.abort();
      moreControllerRef.current?.abort();
    };
  }, [query, retryKey, section]);

  const loadMore = useCallback(async () => {
    if (loading || loadingMore || !hasMore || error) return;
    const requestId = requestIdRef.current;
    const nextPage = pageRef.current + 1;
    const controller = new AbortController();
    moreControllerRef.current?.abort();
    moreControllerRef.current = controller;
    setLoadingMore(true);

    const params = new URLSearchParams({
      provider: "stardima_catalog",
      section,
      page: String(nextPage),
      limit: String(PAGE_SIZE),
    });
    if (query) params.set("q", query);

    try {
      const response = await fetch(`${API_BASE}/api/source-catalog/titles?${params}`, {
        signal: controller.signal,
      });
      if (!response.ok) throw new Error(`catalog_${response.status}`);
      const data = await response.json() as CatalogPage;
      if (controller.signal.aborted || requestId !== requestIdRef.current) return;
      const seen = new Set(itemsRef.current.map((item) => String(item.provider_title_id)));
      const additions = (Array.isArray(data.results) ? data.results : [])
        .filter((item) => Boolean(item.provider_title_id))
        .filter((item) => !seen.has(String(item.provider_title_id)));
      const merged = [...itemsRef.current, ...additions];
      itemsRef.current = merged;
      pageRef.current = nextPage;
      totalRef.current = Number(data.total) || totalRef.current;
      setItems(merged);
      setHasMore(nextPage * PAGE_SIZE < totalRef.current);
    } catch {
      if (!controller.signal.aborted && requestId === requestIdRef.current) setError(true);
    } finally {
      if (requestId === requestIdRef.current) setLoadingMore(false);
    }
  }, [error, hasMore, loading, loadingMore, query, section]);

  return {
    items,
    loading,
    loadingMore,
    hasMore,
    error,
    loadMore,
    retry: useCallback(() => setRetryKey((value) => value + 1), []),
  };
}

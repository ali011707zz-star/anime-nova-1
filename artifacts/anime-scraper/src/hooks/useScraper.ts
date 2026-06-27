import { API_BASE } from "@/lib/apiBase";
/**
 * useScraper Hook
 * Hook مخصص للتعامل مع سحب روابط الفيديو من المواقع العربية
 * محسّن بـ Caching و Resilience (Retry + Fallback)
 */

import { useState, useEffect, useCallback } from 'react';
import { getEpisodesWithCache } from '../utils/episodeService';
import { withRetry, withFallback } from '../utils/resilience';

export interface EpisodeData {
  episode: number;
  title?: string;
  videoLinks: Array<{
    server: string;
    name: string;
    url: string;
    quality: '1080p' | '720p' | '480p' | '360p' | 'SD';
    qualityRank: number;
    isDirect: boolean;
    source: string;
  }>;
}

interface UsScraperState {
  loading: boolean;
  error: string | null;
  episodes: EpisodeData[];
  currentEpisode: EpisodeData | null;
}

export const useScraper = (animeId: string, episodeNum: number) => {
  const [state, setState] = useState<UsScraperState>({
    loading: true,
    error: null,
    episodes: [],
    currentEpisode: null,
  });

  const fetchEpisodes = useCallback(async () => {
    if (!animeId) return;
    setState((prev) => ({ ...prev, loading: true, error: null }));

    try {
      // محاولة جلب من الخدمة المحسّنة مع Caching و Retry و Fallback
      const fetchWithFallback = withFallback(
        [
          () => getEpisodesWithCache(animeId),
          () => fetch(`${API_BASE}/api/anime/${animeId}/episodes`).then(r => r.json()),
        ],
        'Failed to fetch episodes'
      );

      const fetchWithRetry = withRetry(fetchWithFallback, 3, 1000);
      const data: EpisodeData[] = await fetchWithRetry();

      const current = data.find((ep) => ep.episode === episodeNum) || data[0];

      setState((prev) => ({
        ...prev,
        episodes: data,
        currentEpisode: current,
        loading: false,
      }));
    } catch (error: any) {
      console.error('[useScraper] Error:', error);
      setState((prev) => ({
        ...prev,
        error: error.message || 'حدث خطأ في سحب البيانات',
        loading: false,
      }));
    }
  }, [animeId, episodeNum]);

  useEffect(() => {
    fetchEpisodes();
  }, [fetchEpisodes]);

  return {
    ...state,
    refetch: fetchEpisodes,
  };
};

export default useScraper;

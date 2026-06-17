/**
 * useScraper Hook
 * Hook مخصص للتعامل مع سحب روابط الفيديو من المواقع العربية
 */

import { useState, useEffect, useCallback } from 'react';

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
      // استدعاء API الخاص بك
      const response = await fetch(`/api/anime/${animeId}/episodes`);
      if (!response.ok) throw new Error('Failed to fetch episodes');

      const data: EpisodeData[] = await response.json();
      const current = data.find((ep) => ep.episode === episodeNum) || data[0];

      setState((prev) => ({
        ...prev,
        episodes: data,
        currentEpisode: current,
        loading: false,
      }));
    } catch (error: any) {
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

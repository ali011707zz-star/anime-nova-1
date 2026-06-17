/**
 * Episode Service with Caching and Parallel Requests
 * Optimizes performance for fetching episodes and streaming links
 */

import { episodeCache, sourceCache } from './cache';
import { fetchEpisodeSources, processSourceUrls } from '../lib/allanime';

export interface EpisodeInfo {
  episode: number;
  title?: string;
}

export interface StreamingSource {
  url: string;
  label: string;
  isM3U8: boolean;
  isEmbed: boolean;
}

interface CachedEpisodeSource {
  episode: number;
  sources: StreamingSource[];
  fetchedAt: number;
}

/**
 * Fetch episode list with caching
 */
export async function getEpisodeList(showId: string, maxEpisodes?: number): Promise<EpisodeInfo[]> {
  const cacheKey = `episodes:${showId}`;
  const cached = episodeCache.get(cacheKey);

  if (cached) {
    console.log(`[episodeService] Using cached episodes for ${showId}`);
    return cached;
  }

  try {
    // Placeholder - integrate with your actual episode list fetching
    console.log(`[episodeService] Fetching episode list for ${showId}`);
    const episodes: EpisodeInfo[] = [];
    
    if (episodes.length > 0) {
      episodeCache.set(cacheKey, episodes);
    }

    return episodes;
  } catch (error) {
    console.error(`[episodeService] Failed to fetch episodes: ${error}`);
    return [];
  }
}

/**
 * Fetch streaming sources for an episode with caching
 */
export async function getStreamingSources(
  showId: string,
  episodeNum: number,
  timeout: number = 15000
): Promise<StreamingSource[]> {
  const cacheKey = `sources:${showId}:${episodeNum}`;
  const cached = sourceCache.get(cacheKey);

  if (cached) {
    console.log(`[episodeService] Using cached sources for ${showId} EP${episodeNum}`);
    return cached;
  }

  try {
    console.log(`[episodeService] Fetching sources for ${showId} EP${episodeNum}`);
    
    // Create a promise that rejects after timeout
    const timeoutPromise = new Promise<never>((_, reject) =>
      setTimeout(() => reject(new Error('Request timeout')), timeout)
    );

    // Race: either fetch completes or timeout
    const sources = await Promise.race([
      (async () => {
        const allAnimeSources = await fetchEpisodeSources(showId, episodeNum);
        return processSourceUrls(allAnimeSources);
      })(),
      timeoutPromise,
    ]);

    if (sources.length > 0) {
      sourceCache.set(cacheKey, sources);
    }

    return sources;
  } catch (error) {
    console.error(`[episodeService] Failed to fetch sources for EP${episodeNum}: ${error}`);
    return [];
  }
}

/**
 * Fetch multiple episodes in parallel for faster preloading
 */
export async function preloadEpisodes(
  showId: string,
  episodeNumbers: number[],
  concurrency: number = 3
): Promise<Map<number, StreamingSource[]>> {
  const results = new Map<number, StreamingSource[]>();

  // Process in batches to avoid overwhelming the API
  for (let i = 0; i < episodeNumbers.length; i += concurrency) {
    const batch = episodeNumbers.slice(i, i + concurrency);
    const promises = batch.map((epNum) =>
      getStreamingSources(showId, epNum, 10000)
        .then((sources) => {
          results.set(epNum, sources);
          console.log(`[episodeService] Preloaded EP${epNum} (${sources.length} sources)`);
        })
        .catch((error) => {
          console.warn(`[episodeService] Preload failed for EP${epNum}: ${error}`);
          results.set(epNum, []);
        })
    );

    await Promise.all(promises);
  }

  return results;
}

/**
 * Invalidate cache for specific anime
 */
export function invalidateCache(showId?: string): void {
  if (showId) {
    episodeCache.invalidate(`episodes:${showId}`);
    sourceCache.invalidate(`sources:${showId}`);
    console.log(`[episodeService] Invalidated cache for ${showId}`);
  } else {
    episodeCache.clear();
    sourceCache.clear();
    console.log(`[episodeService] Cleared all caches`);
  }
}

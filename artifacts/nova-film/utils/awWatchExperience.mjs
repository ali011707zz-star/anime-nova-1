function qualityBucket(value) {
  const quality = String(value ?? "").toLowerCase();
  if (/(?:2160|1440|1080)\s*p?|\b(?:2k|4k|uhd)\b/.test(quality)) return "1080p";
  if (/(?:720)\s*p?/.test(quality) || /\bhd\b/.test(quality)) return "720p";
  if (/(?:480)\s*p?/.test(quality)) return "480p";
  if (/(?:360)\s*p?/.test(quality) || /\bsd\b/.test(quality)) return "360p";
  return "360p";
}

/**
 * Normalize the real AW watch-src response for the shared source picker.
 * Keep the original quality and URL; the quality bucket is only for grouping
 * rows in the watch page's existing picker.
 */
export function normalizeAwWatchSources(rows, baseUrl) {
  if (!Array.isArray(rows)) return [];
  let base;
  try {
    base = new URL(baseUrl);
  } catch {
    return [];
  }

  let serverNumber = 0;
  return rows.flatMap((row) => {
    const rawUrl = String(row?.hlsUrl || row?.rawUrl || "").trim();
    const quality = String(row?.quality || "720p").trim() || "720p";
    const serverName = String(row?.name || row?.server || "").trim();
    if (!rawUrl || !serverName) return [];

    try {
      const url = new URL(rawUrl, base);
      if (url.protocol !== "http:" && url.protocol !== "https:") return [];
      const qualityKey = qualityBucket(quality);
      serverNumber += 1;
      return [{
        pickerKey: `aw-${serverNumber}-${qualityKey}`,
        serverNumber,
        serverName,
        quality,
        qualityKey,
        url: url.toString(),
      }];
    } catch {
      return [];
    }
  });
}

function episodeNumbers(seasons, episodeNumbersBySeason, seasonIndex) {
  const season = seasons[seasonIndex];
  if (!season?.animeId) return [];
  const values = episodeNumbersBySeason?.[season.animeId];
  if (!Array.isArray(values)) return [];
  return [...new Set(values.map(Number).filter((value) => Number.isFinite(value) && value > 0))]
    .sort((a, b) => a - b);
}

export function hasAwEpisode(seasons, episodeNumbersBySeason, seasonIndex, episode) {
  const number = Number(episode);
  return Number.isFinite(number)
    && episodeNumbers(seasons, episodeNumbersBySeason, seasonIndex).includes(number);
}

/**
 * Return only a data-confirmed adjacent episode. At season boundaries, move
 * to the first populated later season or the last populated earlier season.
 */
export function getAdjacentAwEpisode(
  seasons,
  episodeNumbersBySeason,
  seasonIndex,
  currentEpisode,
  direction,
) {
  if (direction !== 1 && direction !== -1) return null;
  const currentNumbers = episodeNumbers(seasons, episodeNumbersBySeason, seasonIndex);
  const currentPosition = currentNumbers.indexOf(Number(currentEpisode));
  if (currentPosition < 0) return null;

  const nextNumber = currentNumbers[currentPosition + direction];
  if (nextNumber !== undefined) {
    const season = seasons[seasonIndex];
    return {
      episode: nextNumber,
      seasonIndex,
      seasonLabel: season.label,
      series: season.animeId,
    };
  }

  for (let index = seasonIndex + direction; index >= 0 && index < seasons.length; index += direction) {
    const numbers = episodeNumbers(seasons, episodeNumbersBySeason, index);
    if (!numbers.length) continue;
    const season = seasons[index];
    return {
      episode: direction > 0 ? numbers[0] : numbers[numbers.length - 1],
      seasonIndex: index,
      seasonLabel: season.label,
      series: season.animeId,
    };
  }
  return null;
}

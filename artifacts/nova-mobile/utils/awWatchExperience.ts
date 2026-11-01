export type AwEpisodeTarget = {
  seasonIndex: number;
  episode: number;
};

type AwSeason = {
  animeId?: string | number;
};

type EpisodeMap = Record<string, number[] | undefined>;

function episodeNumbers(
  seasons: AwSeason[],
  episodeNumbersBySeason: EpisodeMap,
  seasonIndex: number,
): number[] {
  const season = seasons[seasonIndex];
  if (!season?.animeId) return [];

  const numbers = episodeNumbersBySeason[String(season.animeId)];
  if (!Array.isArray(numbers)) return [];

  return [...new Set(numbers
    .map(Number)
    .filter((number) => Number.isFinite(number) && number > 0))]
    .sort((a, b) => a - b);
}

export function hasAwEpisode(
  seasons: AwSeason[],
  episodeNumbersBySeason: EpisodeMap,
  seasonIndex: number,
  episode: number,
): boolean {
  return Number.isInteger(episode) &&
    episodeNumbers(seasons, episodeNumbersBySeason, seasonIndex).includes(episode);
}

export function getAdjacentAwEpisode(
  seasons: AwSeason[],
  episodeNumbersBySeason: EpisodeMap,
  seasonIndex: number,
  episode: number,
  direction: -1 | 1,
): AwEpisodeTarget | null {
  if (!Number.isInteger(seasonIndex) || !Number.isFinite(episode) || !seasons[seasonIndex]) {
    return null;
  }

  const currentNumbers = episodeNumbers(seasons, episodeNumbersBySeason, seasonIndex);
  const previousNumbers = currentNumbers.filter((number) => number < episode);
  const sameSeasonTarget = direction < 0
    ? previousNumbers[previousNumbers.length - 1]
    : currentNumbers.find((number) => number > episode);

  if (sameSeasonTarget !== undefined) {
    return { seasonIndex, episode: sameSeasonTarget };
  }

  for (
    let nextSeasonIndex = seasonIndex + direction;
    nextSeasonIndex >= 0 && nextSeasonIndex < seasons.length;
    nextSeasonIndex += direction
  ) {
    const numbers = episodeNumbers(seasons, episodeNumbersBySeason, nextSeasonIndex);
    if (!numbers.length) continue;
    return {
      seasonIndex: nextSeasonIndex,
      episode: direction < 0 ? numbers[numbers.length - 1] : numbers[0],
    };
  }

  return null;
}

export type AwWatchSource = {
  quality: string;
  qualityKey: "1080p" | "720p" | "480p" | "360p";
  name: string;
  serverNumber: number;
  pickerKey: string;
  url: string;
};

function qualityKey(value: unknown): AwWatchSource["qualityKey"] {
  const digits = String(value ?? "").match(/\d+/)?.[0];
  const resolution = Number(digits);
  if (resolution >= 1080) return "1080p";
  if (resolution >= 720) return "720p";
  if (resolution >= 480) return "480p";
  if (resolution >= 360) return "360p";
  return "720p";
}

function absoluteUrl(value: unknown, baseUrl: string): string {
  const source = typeof value === "string" ? value.trim() : "";
  if (!source) return "";
  try {
    return new URL(source, baseUrl).toString();
  } catch {
    return source;
  }
}

function keyPart(value: string): string {
  return value
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9_-]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .slice(0, 40) || "server";
}

export function normalizeAwWatchSources(
  value: unknown,
  baseUrl: string,
): AwWatchSource[] {
  if (!Array.isArray(value)) return [];

  const serverNumbers = new Map<string, number>();
  const seen = new Set<string>();
  const result: AwWatchSource[] = [];

  for (const item of value) {
    if (!item || typeof item !== "object") continue;
    const source = item as Record<string, unknown>;
    const url = absoluteUrl(source.rawUrl ?? source.url ?? source.hlsUrl, baseUrl);
    if (!url) continue;

    const name = String(source.name ?? source.server ?? "").trim() || "السيرفر";
    const providerKey = keyPart(name);
    let serverNumber = serverNumbers.get(providerKey);
    if (serverNumber === undefined) {
      serverNumber = serverNumbers.size + 1;
      serverNumbers.set(providerKey, serverNumber);
    }

    const resolvedQuality = qualityKey(source.quality);
    const identity = `${providerKey}|${resolvedQuality}|${url}`;
    if (seen.has(identity)) continue;
    seen.add(identity);

    result.push({
      quality: resolvedQuality,
      qualityKey: resolvedQuality,
      name,
      serverNumber,
      pickerKey: `aw-${providerKey}`,
      url,
    });
  }

  return result;
}

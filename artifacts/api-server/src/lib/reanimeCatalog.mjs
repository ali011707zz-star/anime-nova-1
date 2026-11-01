const REANIME_BASE = "https://reanime.to";
const API_BASE = `${REANIME_BASE}/api/v1`;
const API_TIMEOUT_MS = 8_000;
const CATALOG_TTL_MS = 6 * 60 * 60_000;
const EPISODE_TTL_MS = 15 * 60_000;

const catalogCache = new Map();
const episodeCache = new Map();

export function buildReanimeSearchUrl(query) {
  const url = new URL(`${API_BASE}/search`);
  url.searchParams.set("limit", "36");
  url.searchParams.set("offset", "0");
  if (String(query || "").trim()) url.searchParams.set("q", String(query).trim());
  return url.toString();
}

export function buildReanimeAnimeUrl(slug) {
  return `${API_BASE}/anime/${encodeURIComponent(String(slug || "").trim())}`;
}

export function buildReanimeEpisodesUrl(slug) {
  return `${buildReanimeAnimeUrl(slug)}/episodes?limit=2000`;
}

export function buildReanimeFlixUrl(anilistId, episodeNumber) {
  const id = Number(anilistId);
  const episode = Number(episodeNumber);
  if (!Number.isInteger(id) || id < 1 || !Number.isFinite(episode) || episode < 1) {
    throw new TypeError("A positive AniList id and episode number are required");
  }
  return `${REANIME_BASE}/api/flix/${id}/${String(episode)}`;
}

export function normalizeReanimeTitle(value) {
  return String(value || "")
    .normalize("NFKD")
    .replace(/[\u0300-\u036f]/g, "")
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, " ")
    .trim();
}

function animeTitles(anime) {
  const title = anime?.title || {};
  return [
    title.user_preferred,
    title.english,
    title.romaji,
    title.native,
  ].filter(value => typeof value === "string" && value.trim());
}

export function selectReanimeSearchResult(results, anilistId, titleCandidates = []) {
  if (!Array.isArray(results)) return null;
  const valid = results.filter(item =>
    item && typeof item.anime_id === "string" && item.anime_id.trim(),
  );
  const expectedId = Number(anilistId) || 0;
  if (expectedId > 0) {
    return valid.find(item => Number(item.anilist_id) === expectedId) || null;
  }

  const expectedTitles = new Set(
    titleCandidates.map(normalizeReanimeTitle).filter(Boolean),
  );
  if (!expectedTitles.size) return null;
  return valid.find(item =>
    animeTitles(item).some(title => expectedTitles.has(normalizeReanimeTitle(title))),
  ) || null;
}

export function findPlayableReanimeEpisode(episodes, episodeNumber) {
  const target = Number(episodeNumber);
  if (!Array.isArray(episodes) || !Number.isFinite(target) || target < 1) return null;
  return episodes.find(episode =>
    episode &&
    episode.playable === true &&
    Number(episode.episode_number) === target,
  ) || null;
}

async function fetchJson(fetchImpl, url, referer) {
  const response = await fetchImpl(url, {
    headers: {
      Accept: "application/json, text/plain, */*",
      "Accept-Language": "en-US,en;q=0.9",
      Referer: referer,
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/126 Safari/537.36",
    },
    signal: AbortSignal.timeout(API_TIMEOUT_MS),
  });
  if (!response.ok) return null;
  return response.json();
}

function unwrapObject(payload) {
  if (!payload || typeof payload !== "object" || Array.isArray(payload)) return null;
  return payload.data && typeof payload.data === "object" && !Array.isArray(payload.data)
    ? payload.data
    : payload;
}

/**
 * Resolve a Nova episode through Re:Anime's current v1 catalog before asking
 * the legacy-compatible Flix endpoint for the corresponding AniList/episode
 * pair. The fetch implementation is injectable so this contract can be tested
 * without starting the app or contacting the media host.
 */
export async function resolveReanimeEpisode({
  anilistId,
  episodeNumber,
  titleCandidates = [],
  fetchImpl = fetch,
} = {}) {
  const expectedId = Number(anilistId) || 0;
  const episode = Number(episodeNumber);
  if (!Number.isFinite(episode) || episode < 1) return null;

  const titles = [...new Set(
    titleCandidates
      .filter(value => typeof value === "string")
      .map(value => value.trim())
      .filter(Boolean),
  )].slice(0, 8);
  const cacheKey = expectedId > 0
    ? `anilist:${expectedId}`
    : `title:${normalizeReanimeTitle(titles[0] || "")}`;
  if (cacheKey === "title:" || (!expectedId && !titles.length)) return null;

  let cachedAnime = catalogCache.get(cacheKey);
  if (!cachedAnime || cachedAnime.expiresAt <= Date.now()) {
    let selected = null;
    for (const query of titles) {
      try {
        const search = unwrapObject(await fetchJson(
          fetchImpl,
          buildReanimeSearchUrl(query),
          `${REANIME_BASE}/search`,
        ));
        selected = selectReanimeSearchResult(search?.results, expectedId, titles);
        if (selected) break;
      } catch {
        // Try the next known title spelling.
      }
    }
    if (!selected) return null;

    const slug = selected.anime_id.trim();
    const detail = unwrapObject(await fetchJson(
      fetchImpl,
      buildReanimeAnimeUrl(slug),
      `${REANIME_BASE}/anime/${encodeURIComponent(slug)}`,
    ));
    if (!detail) return null;

    const detailId = Number(detail.anilist_id) || 0;
    const selectedId = Number(selected.anilist_id) || 0;
    if (expectedId > 0 && detailId > 0 && detailId !== expectedId) return null;
    const resolvedId = detailId || selectedId || expectedId;
    if (!resolvedId) return null;

    cachedAnime = {
      slug,
      anilistId: resolvedId,
      expiresAt: Date.now() + CATALOG_TTL_MS,
    };
    catalogCache.set(cacheKey, cachedAnime);
  }

  let cachedEpisodes = episodeCache.get(cachedAnime.slug);
  if (!cachedEpisodes || cachedEpisodes.expiresAt <= Date.now()) {
    const payload = unwrapObject(await fetchJson(
      fetchImpl,
      buildReanimeEpisodesUrl(cachedAnime.slug),
      `${REANIME_BASE}/anime/${encodeURIComponent(cachedAnime.slug)}`,
    ));
    if (!Array.isArray(payload?.data)) return null;
    cachedEpisodes = {
      rows: payload.data,
      expiresAt: Date.now() + EPISODE_TTL_MS,
    };
    episodeCache.set(cachedAnime.slug, cachedEpisodes);
  }

  const match = findPlayableReanimeEpisode(cachedEpisodes.rows, episode);
  if (!match) return null;
  return {
    slug: cachedAnime.slug,
    anilistId: cachedAnime.anilistId,
    episodeNumber: Number(match.episode_number),
    watchUrl: `${REANIME_BASE}/watch/${encodeURIComponent(cachedAnime.slug)}?ep=${encodeURIComponent(String(match.episode_number))}`,
    episode: match,
  };
}

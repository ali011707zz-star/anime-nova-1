import { randomBytes } from "node:crypto";

// These are the public Android/Firebase client identifiers embedded in the
// official StarDima APK. The StarDima API key itself is fetched at runtime
// from Firebase Remote Config and is never logged or persisted.
const FIREBASE_API_KEY = "AIzaSyD7W_oU5CGLwrFhcFU_-p-pL1f8ayzatDE";
const FIREBASE_APP_ID = "1:823307516616:android:d596b0be539ba5b59083fd";
const FIREBASE_PROJECT_ID = "jcartoon2026";
const FIREBASE_PROJECT_NUMBER = "823307516616";
const ANDROID_PACKAGE = "com.stardima";
const ANDROID_CERT_SHA1 = "C7DDF2C99745E027ECE5495B081A7B10EA24E741";
const ANDROID_APP_VERSION = "1.0.7";
const ANDROID_APP_BUILD = "1";
const API_BASE_URL = "https://app.wiib.top";
const HTTP_TIMEOUT_MS = 20_000;
const MEDIA_FILE_EXTENSION = /\.(?:m3u8?|mpd|mp4|m4v|mkv|webm|mov|ts|flv|avi|wmv|mp3|m4a|aac|ogg)(?:$|[?#&])/i;

let cachedApiHeaders;

function text(value) {
  return value == null ? null : String(value).trim() || null;
}

function int(value) {
  const parsed = Number.parseInt(String(value ?? ""), 10);
  return Number.isFinite(parsed) ? parsed : null;
}

function numberValue(value) {
  const parsed = Number.parseFloat(String(value ?? "").replace(",", "."));
  return Number.isFinite(parsed) ? parsed : null;
}

function wait(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

async function mapConcurrent(items, limit, mapper) {
  const output = new Array(items.length);
  let cursor = 0;
  async function worker() {
    while (true) {
      const index = cursor++;
      if (index >= items.length) return;
      output[index] = await mapper(items[index], index);
    }
  }
  await Promise.all(Array.from({ length: Math.min(limit, items.length) }, worker));
  return output;
}

async function requestJson(url, options = {}) {
  let lastError;
  for (let attempt = 1; attempt <= 3; attempt++) {
    try {
      const response = await fetch(url, {
        ...options,
        signal: AbortSignal.timeout(HTTP_TIMEOUT_MS),
      });
      if (response.ok) return await response.json();

      const error = new Error(`HTTP ${response.status}`);
      error.status = response.status;
      error.retryAfterMs = Math.min(
        30_000,
        Math.max(0, Number(response.headers.get("retry-after")) * 1000 || attempt * 1000),
      );
      throw error;
    } catch (error) {
      lastError = error;
      const retryable = !error.status || [408, 429, 500, 502, 503, 504].includes(error.status);
      if (!retryable || attempt === 3) {
        throw new Error(`StarDima request failed (${error.status || "network error"})`);
      }
      await wait(error.retryAfterMs || attempt * 750);
    }
  }
  throw lastError || new Error("StarDima request failed");
}

async function firebasePost(url, body, headers) {
  return requestJson(url, {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
      ...headers,
    },
    body: JSON.stringify(body),
  });
}

async function getApiHeaders() {
  if (cachedApiHeaders) return cachedApiHeaders;

  const fidBytes = randomBytes(17);
  fidBytes[0] = (fidBytes[0] & 0x0f) | 0x70;
  const fid = fidBytes.toString("base64url");
  const firebaseHeaders = {
    "X-Goog-Api-Key": FIREBASE_API_KEY,
    "X-Android-Package": ANDROID_PACKAGE,
    "X-Android-Cert": ANDROID_CERT_SHA1,
    "Cache-Control": "no-cache",
  };

  const installation = await firebasePost(
    `https://firebaseinstallations.googleapis.com/v1/projects/${FIREBASE_PROJECT_ID}/installations`,
    {
      fid,
      appId: FIREBASE_APP_ID,
      authVersion: "FIS_v2",
      sdkVersion: "a:22.0.0",
    },
    firebaseHeaders,
  );
  const installationToken = installation?.authToken?.token;
  if (typeof installationToken !== "string" || !installationToken) {
    throw new Error("StarDima Firebase installation did not return an auth token");
  }

  const remoteConfig = await firebasePost(
    `https://firebaseremoteconfig.googleapis.com/v1/projects/${FIREBASE_PROJECT_NUMBER}/namespaces/firebase:fetch`,
    {
      appInstanceId: fid,
      appInstanceIdToken: installationToken,
      appId: FIREBASE_APP_ID,
      countryCode: "SA",
      languageCode: "ar-SA",
      platformVersion: "35",
      timeZone: "Asia/Riyadh",
      appVersion: ANDROID_APP_VERSION,
      appBuild: ANDROID_APP_BUILD,
      packageName: ANDROID_PACKAGE,
      sdkVersion: "22.0.0",
    },
    {
      ...firebaseHeaders,
      "X-Goog-Firebase-Installations-Auth": installationToken,
      "X-Google-GFE-Can-Retry": "yes",
    },
  );
  const rawApiKey = remoteConfig?.entries?.API_KEY;
  const apiKey = typeof rawApiKey === "string" ? rawApiKey : rawApiKey?.value;
  if (typeof apiKey !== "string" || apiKey.length < 16) {
    throw new Error("StarDima Remote Config did not return an API key");
  }

  cachedApiHeaders = {
    Accept: "application/json",
    "User-Agent": "okhttp/4.12.0",
    "X-API-Key": apiKey,
  };
  return cachedApiHeaders;
}

function apiUrl(path, params = {}) {
  const url = new URL(path, `${API_BASE_URL}/`);
  for (const [key, value] of Object.entries(params)) {
    if (value != null) url.searchParams.set(key, String(value));
  }
  return url;
}

async function stardimaGet(path, params = {}) {
  const headers = await getApiHeaders();
  return requestJson(apiUrl(path, params), { headers });
}

function stringList(value) {
  if (Array.isArray(value)) {
    return value.map((entry) => {
      if (typeof entry === "string" || typeof entry === "number") return String(entry).trim();
      if (!entry || typeof entry !== "object") return "";
      return String(entry.name || entry.title || entry.label || entry.category_name || "").trim();
    }).filter(Boolean);
  }
  if (typeof value !== "string") return [];
  const normalized = value.trim();
  if (!normalized) return [];
  if (normalized.startsWith("[")) {
    try {
      const parsed = JSON.parse(normalized);
      if (Array.isArray(parsed)) return stringList(parsed);
    } catch {}
  }
  return normalized.split(/[|,،]/).map((item) => item.trim()).filter(Boolean);
}

function unique(values) {
  return [...new Set(values.map(text).filter(Boolean))];
}

function pageReference(value) {
  const raw = text(value);
  if (!raw) return null;
  try {
    const url = new URL(raw);
    if (!["http:", "https:"].includes(url.protocol)) return null;
    const inspected = `${url.pathname} ${[...url.searchParams.values()].join(" ")}`;
    if (MEDIA_FILE_EXTENSION.test(inspected)) return null;
    return url.href;
  } catch {
    return null;
  }
}

function hostOf(value) {
  try {
    return new URL(value).hostname.toLowerCase();
  } catch {
    return null;
  }
}

async function fetchCollection(path) {
  const rows = [];
  let page = 1;
  let lastPage = 1;
  do {
    const response = await stardimaGet(path, { page, per_page: 100 });
    const batch = Array.isArray(response?.videos) ? response.videos : null;
    if (!batch) throw new Error(`StarDima ${path} returned an invalid catalog page`);
    rows.push(...batch);
    lastPage = Math.max(1, Math.min(10_000, int(response?.pagination?.last_page) || 1));
    if (page >= lastPage || batch.length === 0) break;
    page++;
  } while (page <= lastPage);
  return rows;
}

async function stardimaList() {
  const [series, movies] = await Promise.all([
    fetchCollection("/api/series"),
    fetchCollection("/api/movies"),
  ]);

  return [
    ...series.map((item) => ({ ...item, _catalog_kind: "series" })),
    ...movies.map((item) => ({ ...item, _catalog_kind: "movie" })),
  ].map((item) => {
    const providerTitleId = text(item.id);
    const title = text(item.title) || text(item.videoName);
    if (!providerTitleId || !title) return null;

    const titleEn = text(item.title_en) || text(item.video_orgname) || text(item.original_title);
    const titleNative = text(item.title_native) || text(item.video_title_japanese);
    const titleAr = text(item.title_ar) ||
      (/\p{Script=Arabic}/u.test(title) ? title : null);
    const categories = stringList(item.category || item.categories || item.video_genres);
    const tags = stringList(item.tags || item.video_tags);

    return {
      provider: "stardima_catalog",
      provider_title_id: providerTitleId,
      title,
      title_en: titleEn,
      title_ar: titleAr,
      title_native: titleNative,
      synonyms: unique([titleEn, titleAr, titleNative]).filter((name) => name !== title),
      genres: unique(categories),
      tags: unique([...categories, ...tags]),
      media_type: item._catalog_kind,
      status: text(item.status_text) || text(item.status),
      release_year: int(item.year) || int(item.videoRelease),
      episode_count: int(item.episode_count) || int(item.total_episodes),
      poster_url: text(item.poster_url) || text(item.videoCover),
      backdrop_url: text(item.background_url) || text(item.videoLandscapeCover),
      provider_metadata: {
        content_type: item._catalog_kind,
        source_api: "app.wiib.top",
        original_type: text(item.type),
      },
      _catalog_kind: item._catalog_kind,
    };
  }).filter(Boolean);
}

function mapServers(servers) {
  if (!Array.isArray(servers)) return [];
  return servers.flatMap((server, index) => {
    if (!server || typeof server !== "object") return [];
    const pageUrl = pageReference(server.url || server.page_url || server.link || server.embed_url);
    if (!pageUrl) return [];

    const name = text(server.label) || text(server.name) || text(server.title);
    const keyPart = text(server.id) || (name || `server-${index + 1}`)
      .toLowerCase()
      .replace(/[^a-z0-9]+/g, "-")
      .replace(/^-|-$/g, "");
    return [{
      server_key: `stardima-${keyPart}-${index + 1}`,
      server_name: name,
      quality: text(server.quality) || text(server.resolution) || "",
      language: text(server.language) || "",
      source_kind: "provider_page",
      page_url: pageUrl,
      source_host: hostOf(pageUrl),
      availability_status: "link_found",
    }];
  });
}

function mapEpisode(raw, title, season, episodeIndex, isMovie = false) {
  const episodeNumber = numberValue(raw?.episode_number) ??
    numberValue(raw?.video_episode) ??
    (isMovie ? 1 : episodeIndex + 1);
  const seasonNumber = int(season?.normalizedNumber) || int(season?.season_number) || 1;
  const servers = mapServers(raw?.servers);
  const providerEpisodeId = text(raw?.id) ||
    `${title.provider_title_id}:${season?.id || seasonNumber}:${episodeNumber}`;

  return {
    provider_episode_id: providerEpisodeId,
    season_number: seasonNumber,
    episode_number: episodeNumber,
    episode_label: text(raw?.episode_number) || (isMovie ? "Movie" : String(episodeNumber)),
    title: text(raw?.title) || (isMovie ? title.title : null),
    episode_status: servers.length ? "link_found" : "episode_found",
    provider_metadata: {
      content_type: isMovie ? "movie" : "series_episode",
      ...(season?.id != null ? { season_id: String(season.id) } : {}),
      ...(text(season?.name) ? { season_name: text(season.name) } : {}),
      ...(int(season?.season_number) != null ? { original_season_number: int(season.season_number) } : {}),
    },
    _servers: servers,
  };
}

function normalizedSeasons(seasons) {
  const valid = seasons.filter((season) => season && season.id != null);
  const numbers = valid.map((season, index) => int(season.season_number) || index + 1);
  const counts = new Map();
  for (const number of numbers) counts.set(number, (counts.get(number) || 0) + 1);
  return valid.map((season, index) => ({
    ...season,
    normalizedNumber: counts.get(numbers[index]) > 1 ? index + 1 : numbers[index],
  }));
}

async function stardimaEpisodes(title) {
  const detail = await stardimaGet(`/api/video/${encodeURIComponent(title.provider_title_id)}`);
  if (title._catalog_kind === "movie" || detail?.type === "movie") {
    const response = await stardimaGet(`/api/episodes/${encodeURIComponent(title.provider_title_id)}/servers`);
    if (!response || typeof response !== "object") return [];
    return [mapEpisode(response, title, { season_number: 1 }, 0, true)];
  }

  const seasons = normalizedSeasons(Array.isArray(detail?.seasons) ? detail.seasons : []);
  const groups = await mapConcurrent(seasons, 3, async (season) => {
    const response = await stardimaGet(`/api/seasons/${encodeURIComponent(season.id)}/servers`);
    const episodes = Array.isArray(response?.data) ? response.data : [];
    return episodes.map((episode, index) => mapEpisode(episode, title, season, index));
  });
  return groups.flat().filter((episode) => episode.provider_episode_id);
}

export const stardimaCatalogAdapter = {
  list: stardimaList,
  episodes: stardimaEpisodes,
};
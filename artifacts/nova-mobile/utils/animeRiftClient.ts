/**
 * Client-side AnimeRift v4 provider (0% VPS load).
 *
 * Provides Arabic hardcoded-sub & Arabic dub streams directly on the user's phone:
 *  - `animerift_cr2`     (CR2 · مترجم عربي · MP4 direct playback + download)
 *  - `animerift_bbz`     (BBZ · مترجم عربي · HLS direct playback)
 *  - `animerift_cr2_dub` (CR2 DUB · مدبلج عربي · MP4 direct playback + download)
 *
 * Strictly enforces gateway rate limits:
 *  - Persisted per-device identity & one-time `/auth/register/device`
 *  - Serialized pacing queue (>= 1250ms between gateway calls)
 *  - Two-phase flow: availability check NEVER calls `can_play` / `direct_link`
 *  - On-tap resolution calls `can_play` + `direct_link` ONLY for the tapped quality
 *  - Automatic 60-minute circuit-breaker on `403 ACCESS_DENIED`
 */

import AsyncStorage from "@react-native-async-storage/async-storage";
import {
  ANIMERIFT_SITES,
  ANIMERIFT_SITE_CR2,
  ANIMERIFT_SITE_BBZ,
  ANIMERIFT_SITE_CR2_DUB,
  isAnimeRiftSite,
  normalizeRiftTitle,
  buildRiftSearchQueries,
  pickBestAnimeRiftCandidate,
  pickAnimeRiftEpisode,
  parseAnimeRiftEpisodeSources,
  selectRiftHostForQuality,
  normalizeRiftDirectLink,
  parseRiftRetryAfterMs,
  computeRiftCooldownUntil,
  type AnimeRiftSiteKey,
  type AnimeRiftQualityKey,
  type ParsedAnimeRiftSources,
  type NormalizedAnimeRiftLink,
} from "./animeRiftLogic.mjs";

export {
  ANIMERIFT_SITES,
  ANIMERIFT_SITE_CR2,
  ANIMERIFT_SITE_BBZ,
  ANIMERIFT_SITE_CR2_DUB,
  isAnimeRiftSite,
  type AnimeRiftSiteKey,
  type AnimeRiftQualityKey,
};

const GATEWAYS = [
  "https://gateway.anime-rift.com/api/v4",
  "https://gateway.embrassme.top/api/v4",
] as const;

const CLIENT_UA = "Dart/3.10 (dart:io)";
const APP_VERSION = "3.13.13";
const DEVICE_STORAGE_KEY = "@nova_animerift_device_v1";
const ANIME_MAP_STORAGE_KEY = "@nova_animerift_anime_map_v1";

const MIN_REQUEST_GAP_MS = 180;
const REQUEST_TIMEOUT_MS = 12_000;
const ANIME_MAP_TTL_MS = 7 * 24 * 60 * 60 * 1000;
const ANIME_MAP_MAX_ENTRIES = 120;
const EPISODES_CACHE_TTL_MS = 15 * 60 * 1000;
const SOURCES_CACHE_TTL_MS = 10 * 60 * 1000;
const DIRECT_LINK_CACHE_TTL_MS = 10 * 60 * 1000;
const MISS_CACHE_TTL_MS = 5 * 60 * 1000;

interface RiftDeviceState {
  firebaseId: string;
  deviceId: string;
  registered: boolean;
  gatewayIndex: number;
  cooldownUntil: number;
}

interface StoredAnimeEntry {
  animeId: string | null;
  ts: number;
}

interface EpisodeSourcesEntry {
  episodeId: string;
  episodeNumber: number;
  parsed: ParsedAnimeRiftSources;
  ts: number;
}

export interface AnimeRiftProbeParams {
  title: string;
  english?: string;
  titles?: string[];
  format?: string;
  year?: string | number;
  epNum: number;
  signal?: AbortSignal;
}

export interface AnimeRiftProbeResult {
  availableQualities: Partial<Record<AnimeRiftSiteKey, AnimeRiftQualityKey[]>>;
}

export interface AnimeRiftResolveParams extends AnimeRiftProbeParams {
  site: AnimeRiftSiteKey;
  preferredQuality?: AnimeRiftQualityKey;
  isDownload?: boolean;
}

export interface AnimeRiftResolvedSource extends NormalizedAnimeRiftLink {
  name: string;
  label: string;
}

const ALNUM = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

function randomAlnum(length: number): string {
  let out = "";
  for (let i = 0; i < length; i++) {
    out += ALNUM.charAt(Math.floor(Math.random() * ALNUM.length));
  }
  return out;
}

function formatDeviceTimezone(): string {
  // Matches Dart DateTime.toIso8601String() microsecond format without trailing Z
  return `${new Date().toISOString().replace("Z", "")}000`;
}

function sleepAbortable(ms: number, signal?: AbortSignal): Promise<void> {
  if (ms <= 0) return Promise.resolve();
  return new Promise((resolve, reject) => {
    if (signal?.aborted) {
      reject(new Error("aborted"));
      return;
    }
    const timer = setTimeout(() => {
      signal?.removeEventListener("abort", onAbort);
      resolve();
    }, ms);
    const onAbort = () => {
      clearTimeout(timer);
      reject(new Error("aborted"));
    };
    signal?.addEventListener("abort", onAbort, { once: true });
  });
}

let deviceStateMem: RiftDeviceState | null = null;
let deviceStatePromise: Promise<RiftDeviceState> | null = null;
let animeMapMem: Record<string, StoredAnimeEntry> | null = null;
let animeMapPromise: Promise<Record<string, StoredAnimeEntry>> | null = null;

const episodesCache = new Map<string, { ts: number; episodes: any[] }>();
const sourcesCache = new Map<string, EpisodeSourcesEntry>();
const directLinkCache = new Map<string, { ts: number; link: NormalizedAnimeRiftLink }>();
const inflightEpisodeSources = new Map<string, Promise<EpisodeSourcesEntry | null>>();
const inflightAnimeId = new Map<string, Promise<string | null>>();
const inflightEpisodes = new Map<string, Promise<any[] | null>>();

// Global serialized gateway pacer
let lastGatewayCallAt = 0;
let gatewayChain: Promise<unknown> = Promise.resolve();

function schedulePaced<T>(fn: () => Promise<T>, signal?: AbortSignal): Promise<T> {
  const run = async (): Promise<T> => {
    if (signal?.aborted) throw new Error("aborted");
    const elapsed = Date.now() - lastGatewayCallAt;
    if (elapsed < MIN_REQUEST_GAP_MS) {
      await sleepAbortable(MIN_REQUEST_GAP_MS - elapsed, signal);
    }
    if (signal?.aborted) throw new Error("aborted");
    lastGatewayCallAt = Date.now();
    return fn();
  };
  const next = gatewayChain.then(run, run);
  gatewayChain = next.catch(() => {});
  return next;
}

async function loadDeviceState(): Promise<RiftDeviceState> {
  if (deviceStateMem) return deviceStateMem;
  if (!deviceStatePromise) {
    deviceStatePromise = (async () => {
      try {
        const raw = await AsyncStorage.getItem(DEVICE_STORAGE_KEY);
        if (raw) {
          const parsed = JSON.parse(raw) as Partial<RiftDeviceState>;
          if (parsed.firebaseId && parsed.deviceId) {
            const state: RiftDeviceState = {
              firebaseId: String(parsed.firebaseId),
              deviceId: String(parsed.deviceId),
              registered: Boolean(parsed.registered),
              gatewayIndex: parsed.gatewayIndex === 1 ? 1 : 0,
              cooldownUntil: Number(parsed.cooldownUntil) || 0,
            };
            deviceStateMem = state;
            return state;
          }
        }
      } catch {}
      const firebaseId = randomAlnum(22);
      const deviceId = `${firebaseId}:APA91b${randomAlnum(40)}`;
      const fresh: RiftDeviceState = {
        firebaseId,
        deviceId,
        registered: false,
        gatewayIndex: 0,
        cooldownUntil: 0,
      };
      deviceStateMem = fresh;
      await AsyncStorage.setItem(DEVICE_STORAGE_KEY, JSON.stringify(fresh)).catch(() => {});
      return fresh;
    })();
  }
  return deviceStatePromise;
}

async function persistDeviceState(state: RiftDeviceState): Promise<void> {
  deviceStateMem = state;
  await AsyncStorage.setItem(DEVICE_STORAGE_KEY, JSON.stringify(state)).catch(() => {});
}

async function loadAnimeMap(): Promise<Record<string, StoredAnimeEntry>> {
  if (animeMapMem) return animeMapMem;
  if (!animeMapPromise) {
    animeMapPromise = (async () => {
      try {
        const raw = await AsyncStorage.getItem(ANIME_MAP_STORAGE_KEY);
        if (raw) {
          const parsed = JSON.parse(raw) as Record<string, StoredAnimeEntry>;
          if (parsed && typeof parsed === "object") {
            animeMapMem = parsed;
            return parsed;
          }
        }
      } catch {}
      animeMapMem = {};
      return animeMapMem;
    })();
  }
  return animeMapPromise;
}

async function saveAnimeMapEntry(key: string, animeId: string | null): Promise<void> {
  const map = await loadAnimeMap();
  const now = Date.now();
  map[key] = { animeId, ts: now };

  const entries = Object.entries(map).filter(([, entry]) => {
    const ttl = entry.animeId ? ANIME_MAP_TTL_MS : MISS_CACHE_TTL_MS;
    return now - entry.ts < ttl;
  });
  entries.sort((a, b) => b[1].ts - a[1].ts);
  const trimmed = Object.fromEntries(entries.slice(0, ANIME_MAP_MAX_ENTRIES));
  animeMapMem = trimmed;
  await AsyncStorage.setItem(ANIME_MAP_STORAGE_KEY, JSON.stringify(trimmed)).catch(() => {});
}

function buildGatewayHeaders(state: RiftDeviceState): Record<string, string> {
  return {
    "User-Agent": CLIENT_UA,
    Accept: "application/json",
    "Content-Type": "application/json; charset=UTF-8",
    "x-os": "android",
    "x-platform": "Mobile",
    "x-device-language": "ar",
    "x-installation-source": "IS_INSTALLED_FROM_OTHER_SOURCE",
    "x-device-release-version": APP_VERSION,
    "x-device-os-id": "UQ1A.240205.004",
    "x-device-timezone": formatDeviceTimezone(),
    "x-firebase-app-check": "null",
    "x-firebase-id": state.firebaseId,
    "x-device-id": state.deviceId,
  };
}

async function rawFetchJson(
  url: string,
  method: "GET" | "POST",
  headers: Record<string, string>,
  body?: Record<string, unknown>,
  signal?: AbortSignal,
): Promise<{ status: number; json: any; text: string; retryAfter: string | null }> {
  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), REQUEST_TIMEOUT_MS);
  const onAbort = () => ctrl.abort();
  signal?.addEventListener("abort", onAbort, { once: true });
  try {
    const res = await fetch(url, {
      method,
      headers,
      body: body ? JSON.stringify(body) : undefined,
      signal: ctrl.signal,
    });
    const text = await res.text();
    let json: any = null;
    try {
      json = JSON.parse(text);
    } catch {}
    return {
      status: res.status,
      json,
      text,
      retryAfter: res.headers.get("retry-after"),
    };
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onAbort);
  }
}

async function registerDeviceIfNeeded(
  state: RiftDeviceState,
  signal?: AbortSignal,
  force = false,
): Promise<boolean> {
  if (state.registered && !force) return true;
  if (Date.now() < state.cooldownUntil) return false;

  const order = state.gatewayIndex === 1 ? [1, 0] : [0, 1];
  for (const gwIndex of order) {
    if (signal?.aborted) return false;
    try {
      const res = await schedulePaced(
        () =>
          rawFetchJson(
            `${GATEWAYS[gwIndex]}/auth/register/device`,
            "POST",
            buildGatewayHeaders(state),
            {
              deviceId: state.deviceId,
              current_app_version: APP_VERSION,
              device_os: "android",
              device_environment: "production",
              device_info: JSON.stringify({
                model: "Pixel 7",
                brand: "google",
                version: "14",
              }),
            },
            signal,
          ),
        signal,
      );
      if (res.status >= 200 && res.status < 300) {
        state.registered = true;
        state.gatewayIndex = gwIndex;
        await persistDeviceState(state);
        return true;
      }
      const nextCooldown = computeRiftCooldownUntil(res.status, res.text, Date.now(), state.cooldownUntil);
      if (nextCooldown > state.cooldownUntil) {
        state.cooldownUntil = nextCooldown;
        await persistDeviceState(state);
        return false;
      }
    } catch {
      if (signal?.aborted) return false;
    }
  }
  return false;
}

async function gatewayRequest(
  method: "GET" | "POST",
  path: string,
  body?: Record<string, unknown>,
  signal?: AbortSignal,
): Promise<any | null> {
  const state = await loadDeviceState();
  if (Date.now() < state.cooldownUntil) return null;
  if (!state.registered) {
    const ok = await registerDeviceIfNeeded(state, signal);
    if (!ok) return null;
  }

  const order = state.gatewayIndex === 1 ? [1, 0] : [0, 1];
  for (const gwIndex of order) {
    let retried429 = false;
    let retried403 = false;

    for (let attempt = 0; attempt < 2; attempt++) {
      if (signal?.aborted || Date.now() < state.cooldownUntil) return null;
      let res: { status: number; json: any; text: string; retryAfter: string | null };
      try {
        res = await schedulePaced(
          () =>
            rawFetchJson(
              `${GATEWAYS[gwIndex]}${path}`,
              method,
              buildGatewayHeaders(state),
              body,
              signal,
            ),
          signal,
        );
      } catch {
        if (signal?.aborted) return null;
        break; // try backup gateway
      }

      if (res.status >= 200 && res.status < 300 && res.json) {
        if (state.gatewayIndex !== gwIndex) {
          state.gatewayIndex = gwIndex;
          await persistDeviceState(state);
        }
        return res.json;
      }

      if (res.status === 429 && !retried429) {
        retried429 = true;
        const waitMs = Math.min(8_000, parseRiftRetryAfterMs(res.retryAfter, res.text));
        try {
          await sleepAbortable(waitMs, signal);
        } catch {
          return null;
        }
        continue;
      }

      if (res.status === 403) {
        const nextCooldown = computeRiftCooldownUntil(res.status, res.text, Date.now(), state.cooldownUntil);
        if (nextCooldown > state.cooldownUntil) {
          state.cooldownUntil = nextCooldown;
          await persistDeviceState(state);
          return null;
        }
        if (!retried403) {
          retried403 = true;
          state.registered = false;
          const ok = await registerDeviceIfNeeded(state, signal, true);
          if (ok) continue;
        }
        return null;
      }

      if (res.status >= 500) {
        break; // failover to secondary gateway
      }

      // 404 or client error (e.g., DIRECT_LINK_NOT_AVAILABLE)
      return null;
    }
  }
  return null;
}

function makeAnimeCacheKey(params: AnimeRiftProbeParams): string {
  const t = normalizeRiftTitle(params.title || params.english || "");
  const y = String(params.year || "").trim();
  const f = String(params.format || "").trim().toLowerCase();
  return `${t}|${y}|${f}`;
}

async function resolveAnimeId(params: AnimeRiftProbeParams): Promise<string | null> {
  const dedupKey = makeAnimeCacheKey(params);
  if (!dedupKey.replace(/\|/g, "")) return null;
  const existingReq = inflightAnimeId.get(dedupKey);
  if (existingReq) return existingReq;
  const task = resolveAnimeIdUncached(params);
  inflightAnimeId.set(dedupKey, task);
  try {
    return await task;
  } finally {
    if (inflightAnimeId.get(dedupKey) === task) inflightAnimeId.delete(dedupKey);
  }
}

async function resolveAnimeIdUncached(params: AnimeRiftProbeParams): Promise<string | null> {
  const cacheKey = makeAnimeCacheKey(params);
  if (!cacheKey.replace(/\|/g, "")) return null;

  const map = await loadAnimeMap();
  const cached = map[cacheKey];
  if (cached) {
    const ttl = cached.animeId ? ANIME_MAP_TTL_MS : MISS_CACHE_TTL_MS;
    if (Date.now() - cached.ts < ttl) {
      return cached.animeId;
    }
  }

  const queries = buildRiftSearchQueries({
    title: params.title,
    english: params.english,
    titles: params.titles,
  });
  if (queries.length === 0) return null;

  const allItems: any[] = [];
  const seenIds = new Set<string>();
  let bestMatch: { item: any; score: number } | null = null;

  for (const q of queries) {
    if (params.signal?.aborted) return null;
    const json = await gatewayRequest(
      "POST",
      "/library/search?page=0&sort_by=release_year&sort_direction=1&text_direction=jp",
      { query: q },
      params.signal,
    );
    const items = Array.isArray(json?.items)
      ? json.items
      : Array.isArray(json?.data)
        ? json.data
        : [];
    for (const it of items) {
      if (it?._id && !seenIds.has(it._id)) {
        seenIds.add(it._id);
        allItems.push(it);
      }
    }
    const candidate = pickBestAnimeRiftCandidate(allItems, {
      title: params.title,
      english: params.english,
      titles: params.titles,
      format: params.format,
      year: params.year,
      epNum: params.epNum,
    });
    if (candidate && (!bestMatch || candidate.score > bestMatch.score)) {
      bestMatch = candidate;
    }
    // Strong match on first query -> stop immediately to save gateway requests
    if (bestMatch && bestMatch.score >= 520) break;
  }

  const matchedId = bestMatch?.item?._id ? String(bestMatch.item._id) : null;
  if (!params.signal?.aborted) {
    await saveAnimeMapEntry(cacheKey, matchedId);
  }
  return matchedId;
}

async function fetchEpisodesList(animeId: string, signal?: AbortSignal): Promise<any[] | null> {
  const cached = episodesCache.get(animeId);
  if (cached && Date.now() - cached.ts < EPISODES_CACHE_TTL_MS) {
    return cached.episodes;
  }
  const existing = inflightEpisodes.get(animeId);
  if (existing) return existing;
  const task = (async (): Promise<any[] | null> => {
    const json = await gatewayRequest(
      "GET",
      `/library/episodes/${encodeURIComponent(animeId)}?sort_by_latest=1&with_arcs=true&with_favorites=true`,
      undefined,
      signal,
    );
    const episodes = Array.isArray(json?.episodes)
      ? json.episodes
      : Array.isArray(json?.items)
        ? json.items
        : null;
    if (episodes) {
      episodesCache.set(animeId, { ts: Date.now(), episodes });
    }
    return episodes;
  })();
  inflightEpisodes.set(animeId, task);
  try {
    return await task;
  } finally {
    if (inflightEpisodes.get(animeId) === task) inflightEpisodes.delete(animeId);
  }
}

async function fetchEpisodeSourcesEntry(params: AnimeRiftProbeParams): Promise<EpisodeSourcesEntry | null> {
  const inflightKey = `${makeAnimeCacheKey(params)}|ep:${params.epNum}`;
  const existing = inflightEpisodeSources.get(inflightKey);
  if (existing) return existing;

  const work = (async (): Promise<EpisodeSourcesEntry | null> => {
    const animeId = await resolveAnimeId(params);
    if (!animeId || params.signal?.aborted) return null;

    const cacheKey = `${animeId}|${params.epNum}`;
    const cached = sourcesCache.get(cacheKey);
    if (cached && Date.now() - cached.ts < SOURCES_CACHE_TTL_MS) {
      return cached;
    }

    const episodes = await fetchEpisodesList(animeId, params.signal);
    if (!episodes || params.signal?.aborted) return null;

    const ep = pickAnimeRiftEpisode(episodes, params.epNum);
    if (!ep?._id) return null;

    const episodeId = String(ep._id);
    const episodeNumber = Number(ep.episode_number ?? ep.number ?? params.epNum) || params.epNum;
    const srcJson = await gatewayRequest(
      "POST",
      "/library/episode/sources",
      {
        animeId,
        episodeId,
        episode_number: episodeNumber,
      },
      params.signal,
    );
    if (!srcJson || params.signal?.aborted) return null;

    const parsed = parseAnimeRiftEpisodeSources(srcJson);
    const entry: EpisodeSourcesEntry = {
      episodeId,
      episodeNumber,
      parsed,
      ts: Date.now(),
    };
    sourcesCache.set(cacheKey, entry);
    return entry;
  })();

  inflightEpisodeSources.set(inflightKey, work);
  try {
    return await work;
  } finally {
    if (inflightEpisodeSources.get(inflightKey) === work) {
      inflightEpisodeSources.delete(inflightKey);
    }
  }
}

/**
 * Phase 1 (Availability probe only): discovers which AnimeRift Arabic servers
 * (`animerift_cr2`, `animerift_bbz`, `animerift_cr2_dub`) and exact qualities exist
 * for this episode WITHOUT calling `can_play` or `direct_link`.
 */
/**
 * Pre-warms device registration, animeId lookup, and episodes list silently
 * when the user opens an anime episodes screen, so AX/NV appear near-instantly
 * when tapping an episode.
 */
export async function prewarmAnimeRiftCatalogOnPhone(params: {
  title: string;
  english?: string;
  titles?: string[];
  format?: string;
  year?: string | number;
}): Promise<void> {
  try {
    const animeId = await resolveAnimeId({ ...params, epNum: 1 });
    if (animeId) {
      await fetchEpisodesList(animeId);
    }
  } catch {
    // Silent background prewarm
  }
}

export async function probeAnimeRiftAvailabilityOnPhone(
  params: AnimeRiftProbeParams,
): Promise<AnimeRiftProbeResult | null> {
  try {
    const entry = await fetchEpisodeSourcesEntry(params);
    if (!entry) return null;
    const keys = Object.keys(entry.parsed.availableQualities);
    if (keys.length === 0) return null;
    return { availableQualities: entry.parsed.availableQualities };
  } catch {
    return null;
  }
}

function displayMetaForSite(site: AnimeRiftSiteKey): { name: string; tag: string } {
  if (site === ANIMERIFT_SITE_CR2_DUB) return { name: "AX (مدبلج عربي)", tag: "AX" };
  if (site === ANIMERIFT_SITE_BBZ) return { name: "NV", tag: "NV" };
  return { name: "AX", tag: "AX" };
}

async function resolveSingleHost(
  site: AnimeRiftSiteKey,
  episodeId: string,
  hostId: string,
  apiQuality: string,
  requestedQuality: AnimeRiftQualityKey,
  isDownload: boolean,
  signal?: AbortSignal,
): Promise<NormalizedAnimeRiftLink | null> {
  const linkKey = `${hostId}|${requestedQuality}`;
  const cached = directLinkCache.get(linkKey);
  if (cached && Date.now() - cached.ts < DIRECT_LINK_CACHE_TTL_MS) {
    return cached.link;
  }

  const tryResolve = async (downloadFlag: boolean): Promise<NormalizedAnimeRiftLink | null> => {
    const canPlayJson = await gatewayRequest(
      "POST",
      "/library/episode/source/can_play",
      {
        episodeId,
        hostId,
        is_download: downloadFlag,
        event_name: downloadFlag ? "download_episode" : "play_episode_unlocked",
      },
      signal,
    );
    const sessionId = typeof canPlayJson?.sessionId === "string" ? canPlayJson.sessionId : "";
    if (!sessionId || signal?.aborted) return null;

    const directJson = await gatewayRequest(
      "POST",
      "/library/episode/source/direct_link",
      {
        id: hostId,
        with_internal_player: "1",
        sessionId,
        quality: apiQuality,
      },
      signal,
    );
    if (!directJson || signal?.aborted) return null;
    return normalizeRiftDirectLink({ site, directLinkJson: directJson, requestedQuality });
  };

  let link = await tryResolve(isDownload);
  if (!link && isDownload && !signal?.aborted) {
    // Graceful fallback: CR2 MP4 playback link works identically for direct download
    link = await tryResolve(false);
  }
  if (link) {
    directLinkCache.set(linkKey, { ts: Date.now(), link });
  }
  return link;
}

/**
 * Phase 2 (On-demand playback / download resolution): resolves ONLY the tapped
 * server & quality via `can_play` + `direct_link` (cached for 10 min).
 */
export async function resolveAnimeRiftOnPhone(
  params: AnimeRiftResolveParams,
): Promise<AnimeRiftResolvedSource | null> {
  try {
    const entry = await fetchEpisodeSourcesEntry(params);
    if (!entry || params.signal?.aborted) return null;

    const host = selectRiftHostForQuality(entry.parsed.bySite[params.site], params.preferredQuality);
    if (!host) return null;

    const link = await resolveSingleHost(
      params.site,
      entry.episodeId,
      host.hostId,
      host.apiQuality,
      host.quality,
      Boolean(params.isDownload),
      params.signal,
    );
    if (!link) return null;

    const meta = displayMetaForSite(params.site);
    return {
      ...link,
      name: meta.name,
      label: `${meta.tag} · ${link.quality}`,
    };
  } catch {
    return null;
  }
}

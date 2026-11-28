import AsyncStorage from "@react-native-async-storage/async-storage";
import React, { createContext, useCallback, useContext, useEffect, useMemo, useRef, useState } from "react";
import { AppState, StyleSheet, Text, View } from "react-native";
import { DEFAULT_CONFIG, fetchRemoteConfig, getBaseUrl, RemoteConfig } from "@/utils/api";
import { getAuthToken, secureFetch, setUserAuthToken } from "@/utils/secureApi";
import { setActiveThemeIsWhite } from "@/utils/tv";
import { resolveDubbedHistoryParams } from "@/utils/carateenEpisodeRef.mjs";
import { normalizeWatchlistStatus, resolveWatchlistStatus, WatchlistStatus } from "@/utils/watchlistStatus";

export type Theme = "white" | "black";

export type WatchContentKind = "anime" | "dubbed" | "aw-dubbed" | "stardima";

export type WatchProgress = {
  animeId: number;
  ep: number;
  totalEps?: number;
  season?: number;
  contentKind?: WatchContentKind;
  contentKey?: string;
  episodeUrl?: string;
  catalogEpisodeId?: string;
  catalogMediaType?: "movie" | "series";
  episodeTitle?: string;
  seasonLabel?: string;
  titleAr?: string;
  title: string;
  english: string;
  thumbnail: string;
  position?: number;
  duration?: number;
  updatedAt: number;
};

export type FavoriteContentKind =
  | "anime"
  | "manga"
  | "dubbed-anime"
  | "dubbed"
  | "aw-dubbed"
  | "stardima";

export type FavoriteAnime = {
  id: number;
  mangaId?: string;
  source?: "manga" | "manhwa";
  contentKind?: FavoriteContentKind;
  contentKey?: string;
  routeParams?: Record<string, string>;
  title: string;
  english: string;
  titleAr?: string;
  thumbnail: string;
  episodes: number | null;
  score: number | null;
  addedAt: number;
  startYear?: number | null;
  genres?: string[];
  watchStatus?: WatchlistStatus;
};

export type MobileUser = {
  email: string;
  displayName: string;
  id: string;
  username?: string;
  avatarColor?: number;
  profileImageUrl?: string | null;
};

type AppContextType = {
  theme: Theme;
  themeHydrated: boolean;
  setTheme: (t: Theme) => void;
  remoteConfig: RemoteConfig;
  refreshConfig: () => Promise<void>;
  watchHistory: WatchProgress[];
  addToHistory: (item: WatchProgress) => Promise<void>;
  removeFromHistory: (animeId: number) => Promise<void>;
  clearHistory: () => Promise<void>;
  favorites: FavoriteAnime[];
  toggleFavorite: (anime: FavoriteAnime) => Promise<void>;
  setFavoriteStatus: (anime: FavoriteAnime, status: WatchlistStatus) => Promise<void>;
  removeFavorite: (id: number) => Promise<void>;
  updateFavorite: (anime: FavoriteAnime) => Promise<void>;
  clearFavorites: () => Promise<void>;
  isFavorite: (id: number) => boolean;
  getFavoriteStatus: (id: number) => WatchlistStatus | undefined;
  currentUser: MobileUser | null;
  authReady: boolean;
  setCurrentUser: (user: MobileUser | null) => void;
  restoreAuth: () => Promise<void>;
  syncAccountNow: (force?: boolean) => Promise<boolean>;
};

const AppContext = createContext<AppContextType | null>(null);

const HISTORY_DELETED_KEY = (userId: string) => `nova-history-deleted:${userId}`;
const FAVORITES_DELETED_KEY = (userId: string) => `nova-favorites-deleted:${userId}`;
const HISTORY_CLEAR_PENDING_KEY = (userId: string) => `nova-history-clear-pending:${userId}`;
const FAVORITES_CLEAR_PENDING_KEY = (userId: string) => `nova-favorites-clear-pending:${userId}`;
const ACCOUNT_HISTORY_KEY = (userId: string) => `nova-history:account:${userId}`;
const ACCOUNT_FAVORITES_KEY = (userId: string) => `nova-favorites:account:${userId}`;
const ANONYMOUS_HISTORY_KEY = "nova-history";
const ANONYMOUS_FAVORITES_KEY = "nova-favorites";
const MAX_FAVORITES = 5000;

function asNumber(value: unknown, fallback = 0): number {
  const parsed = Number(value);
  return Number.isFinite(parsed) ? parsed : fallback;
}

export function getWatchContentId(kind: WatchContentKind, key: string): number {
  if (kind === "anime") {
    const numeric = Number(key);
    return Number.isSafeInteger(numeric) && numeric > 0 ? numeric : 0;
  }
  // The production watch tables use a numeric anime_id. Keep a stable
  // positive surrogate for string-based dubbed/animation series IDs while
  // storing the real key in anime_type.
  let hash = 2166136261;
  for (const char of `${kind}:${key}`) {
    hash ^= char.charCodeAt(0);
    hash = Math.imul(hash, 16777619);
  }
  return 100_000_000 + ((hash >>> 0) % 1_900_000_000);
}

function historyKey(item: Pick<WatchProgress, "animeId" | "ep" | "season" | "contentKind" | "contentKey">): string {
  const kind = item.contentKind || "anime";
  const key = item.contentKey || String(item.animeId);
  return `${kind}:${key}:${item.ep}:${item.season || 1}`;
}

function serverAnimeType(item: WatchProgress): string {
  const kind = item.contentKind || "anime";
  if (kind === "anime") return "anime";
  const key = encodeURIComponent(item.contentKey || String(item.animeId));
  const season = encodeURIComponent(item.seasonLabel || "");
  if (kind === "stardima") {
    return `stardima:${key}:${encodeURIComponent(item.catalogEpisodeId || "")}:` +
      `${encodeURIComponent(item.catalogMediaType || "series")}:${season}:` +
      encodeURIComponent(item.episodeTitle || "");
  }
  if (kind === "dubbed") {
    const epUrlPart = encodeURIComponent(item.episodeUrl || "");
    const epIdPart = item.catalogEpisodeId ? encodeURIComponent(item.catalogEpisodeId) : "";
    const mediaPart = item.catalogMediaType === "movie" ? "movie" : "";
    const tail = epIdPart || mediaPart ? `:${epIdPart}:${mediaPart}` : "";
    return `${kind}:${key}:${epUrlPart}:${season}${tail}`;
  }
  return `${kind}:${key}:${season}`;
}

function decodeServerAnimeType(value: unknown): {
  kind: WatchContentKind;
  key: string;
  episodeUrl: string;
  catalogEpisodeId: string;
  catalogMediaType: "movie" | "series";
  episodeTitle: string;
  seasonLabel: string;
} {
  const raw = String(value ?? "anime");
  const match = /^(dubbed|aw-dubbed|stardima):(.*)$/.exec(raw);
  if (!match) {
    return { kind: "anime", key: "", episodeUrl: "", catalogEpisodeId: "", catalogMediaType: "series", episodeTitle: "", seasonLabel: "" };
  }
  const parts = match[2].split(":");
  const decode = (part?: string) => {
    try { return decodeURIComponent(part || ""); } catch { return part || ""; }
  };
  const kind = match[1] as WatchContentKind;
  const mediaIndex = kind === "stardima" ? 2 : kind === "dubbed" ? 4 : -1;
  const catalogMediaType = mediaIndex >= 0 && decode(parts[mediaIndex]) === "movie" ? "movie" : "series";
  return {
    kind,
    key: decode(parts[0]),
    episodeUrl: kind === "dubbed" ? decode(parts[1]) : "",
    catalogEpisodeId: kind === "stardima" ? decode(parts[1]) : kind === "dubbed" ? decode(parts[3]) : "",
    catalogMediaType: kind === "stardima" || kind === "dubbed" ? catalogMediaType : "series",
    episodeTitle: kind === "stardima" ? decode(parts[4]) : "",
    seasonLabel: decode(kind === "dubbed" ? parts[2] : kind === "stardima" ? parts[3] : parts[1]),
  };
}

export function historyRoute(item: WatchProgress): string {
  const kind = item.contentKind || "anime";
  if (kind === "dubbed") {
    const query = new URLSearchParams(resolveDubbedHistoryParams(item));
    return `/dubbed/watch?${query.toString()}`;
  }
  if (kind === "aw-dubbed") {
    return `/aw-dubbed/watch?series=${encodeURIComponent(item.contentKey || "")}` +
      `&ep=${item.ep}` +
      `&title=${encodeURIComponent(item.title)}` +
      `&titleAr=${encodeURIComponent(item.titleAr || "")}` +
      `&season=${encodeURIComponent(item.seasonLabel || "الحلقات")}` +
      `&poster=${encodeURIComponent(item.thumbnail || "")}`;
  }
  if (kind === "stardima") {
    return `/stardima-servers?providerTitleId=${encodeURIComponent(item.contentKey || "")}` +
      `&episodeId=${encodeURIComponent(item.catalogEpisodeId || "")}` +
      `&episodeNumber=${item.ep}` +
      `&seasonNumber=${item.season || 1}` +
      `&episodeTitle=${encodeURIComponent(item.episodeTitle || (item.catalogMediaType === "movie" ? "الفيلم" : `الحلقة ${item.ep}`))}` +
      `&title=${encodeURIComponent(item.title || "StarDima")}` +
      `&mediaType=${item.catalogMediaType || "series"}` +
      `&poster=${encodeURIComponent(item.thumbnail || "")}`;
  }
  return `/watch?anime=${item.animeId}&ep=${item.ep}` +
    `&title=${encodeURIComponent(item.title)}` +
    `&english=${encodeURIComponent(item.english)}` +
    `${item.totalEps ? `&totalEps=${item.totalEps}` : ""}` +
    `${item.thumbnail ? `&cover=${encodeURIComponent(item.thumbnail)}` : ""}`;
}

function mapServerHistory(row: any): WatchProgress | null {
  const animeId = asNumber(row?.anime_id ?? row?.animeId);
  const ep = asNumber(row?.episode_number ?? row?.episode ?? row?.ep);
  if (!animeId || !ep) return null;
  const encoded = decodeServerAnimeType(row?.anime_type ?? row?.animeType);
  return {
    animeId,
    ep,
    season: asNumber(row?.season_number ?? row?.season, 1),
    contentKind: encoded.kind,
    contentKey: encoded.key || String(animeId),
    episodeUrl: encoded.episodeUrl || String(row?.episode_url ?? row?.episodeUrl ?? ""),
    catalogEpisodeId: encoded.catalogEpisodeId,
    catalogMediaType: encoded.catalogMediaType,
    episodeTitle: encoded.episodeTitle,
    seasonLabel: encoded.seasonLabel || String(row?.season_label ?? row?.seasonLabel ?? ""),
    totalEps: asNumber(row?.total_eps ?? row?.totalEps) || undefined,
    position: asNumber(row?.position) || undefined,
    duration: asNumber(row?.duration) || undefined,
    titleAr: String(row?.title_ar ?? row?.titleAr ?? ""),
    title: String(row?.anime_title ?? row?.title ?? ""),
    english: String(row?.english_title ?? row?.english ?? row?.anime_title ?? row?.title ?? ""),
    thumbnail: String(row?.anime_cover ?? row?.image ?? row?.poster ?? ""),
    updatedAt: Date.parse(row?.watched_at || row?.updated_at || "") || Date.now(),
  };
}

function serverFavoriteType(item: FavoriteAnime): string {
  if (item.mangaId) {
    return `fav:manga:${encodeURIComponent(item.source || "manga")}:${encodeURIComponent(item.mangaId)}`;
  }
  const kind = item.contentKind;
  if (!kind || kind === "anime") return "anime";
  if (kind === "dubbed-anime") {
    const slug = item.contentKey || item.routeParams?.slug || "";
    return slug ? `fav:dubbed-anime:${encodeURIComponent(slug)}` : "anime";
  }
  if (kind === "stardima") {
    const pid = item.contentKey || item.routeParams?.providerTitleId || "";
    return pid ? `fav:stardima:${encodeURIComponent(pid)}` : "anime";
  }
  if (kind === "aw-dubbed") {
    const payload = JSON.stringify({
      key: item.contentKey || item.routeParams?.key || "",
      seasons: item.routeParams?.seasons || "",
    });
    return `fav:aw-dubbed:${encodeURIComponent(payload)}`;
  }
  if (kind === "dubbed") {
    const rp = item.routeParams || {};
    const compact: Record<string, string> = {};
    for (const k of ["id", "provider", "showId", "slug", "isMovie", "languageLabel", "seasons"]) {
      if (rp[k]) compact[k] = rp[k];
    }
    if (!compact.id && item.contentKey) compact.id = item.contentKey;
    return `fav:dubbed:${encodeURIComponent(JSON.stringify(compact))}`;
  }
  return "anime";
}

function decodeServerFavoriteType(value: unknown): Partial<FavoriteAnime> {
  const raw = String(value ?? "");
  if (!raw.startsWith("fav:")) return {};
  const decode = (part?: string) => {
    try { return decodeURIComponent(part || ""); } catch { return part || ""; }
  };
  const rest = raw.slice(4);
  if (rest.startsWith("manga:")) {
    const parts = rest.slice(6).split(":");
    const src = decode(parts[0]) === "manhwa" ? "manhwa" : "manga";
    const mangaId = decode(parts.slice(1).join(":"));
    return mangaId ? { contentKind: "manga", mangaId, source: src } : {};
  }
  if (rest.startsWith("dubbed-anime:")) {
    const slug = decode(rest.slice("dubbed-anime:".length));
    return slug ? { contentKind: "dubbed-anime", contentKey: slug, routeParams: { slug } } : {};
  }
  if (rest.startsWith("stardima:")) {
    const pid = decode(rest.slice("stardima:".length));
    return pid ? { contentKind: "stardima", contentKey: pid, routeParams: { providerTitleId: pid } } : {};
  }
  if (rest.startsWith("aw-dubbed:")) {
    try {
      const parsed = JSON.parse(decode(rest.slice("aw-dubbed:".length)));
      const key = String(parsed?.key || "");
      const seasons = String(parsed?.seasons || "");
      return key ? { contentKind: "aw-dubbed", contentKey: key, routeParams: { key, ...(seasons ? { seasons } : {}) } } : {};
    } catch { return {}; }
  }
  if (rest.startsWith("dubbed:")) {
    try {
      const parsed = JSON.parse(decode(rest.slice("dubbed:".length)));
      if (parsed && typeof parsed === "object") {
        const routeParams: Record<string, string> = {};
        for (const [k, v] of Object.entries(parsed)) {
          if (typeof v === "string" && v) routeParams[k] = v;
        }
        const key = routeParams.provider && routeParams.slug
          ? `${routeParams.provider}:${routeParams.slug}`
          : routeParams.provider && routeParams.showId
            ? `${routeParams.provider}:${routeParams.showId}`
            : routeParams.id || "";
        return { contentKind: "dubbed", contentKey: key, routeParams };
      }
    } catch { return {}; }
  }
  return {};
}

export type FavoriteRouteTarget = {
  pathname: string;
  params: Record<string, string>;
};

export function getFavoriteRouteTarget(item: FavoriteAnime): FavoriteRouteTarget {
  if (item.mangaId) {
    return {
      pathname: "/manga/[id]",
      params: {
        id: item.mangaId,
        title: item.title,
        english: item.english,
        cover: item.thumbnail || "",
        source: item.source || (item.mangaId.startsWith("az--") ? "manhwa" : "manga"),
      },
    };
  }
  if (item.contentKind === "dubbed-anime") {
    const slug = item.contentKey || item.routeParams?.slug || "";
    if (slug) {
      return {
        pathname: "/dubbed-anime/[slug]",
        params: {
          slug,
          title: item.titleAr || item.title,
          poster: item.thumbnail || "",
        },
      };
    }
  }
  if (item.contentKind === "dubbed") {
    const rp = item.routeParams || {};
    const params: Record<string, string> = {
      id: rp.id || item.contentKey || String(item.id),
      title: item.titleAr || item.title,
      img: rp.img || item.thumbnail || "",
    };
    if (rp.provider) params.provider = rp.provider;
    if (rp.showId) params.showId = rp.showId;
    if (rp.slug) params.slug = rp.slug;
    if (rp.seasons) params.seasons = rp.seasons;
    if (rp.isMovie) params.isMovie = rp.isMovie;
    if (rp.languageLabel) params.languageLabel = rp.languageLabel;
    return { pathname: "/dubbed/[id]", params };
  }
  if (item.contentKind === "aw-dubbed") {
    const key = item.contentKey || item.routeParams?.key || "";
    const seasons = item.routeParams?.seasons || JSON.stringify([{ label: "الحلقات", animeId: key }]);
    return {
      pathname: "/aw-dubbed/[key]",
      params: {
        key: encodeURIComponent(key),
        title: item.english || item.title,
        titleAr: item.titleAr || item.title,
        seasons: encodeURIComponent(seasons),
        poster: encodeURIComponent(item.thumbnail || ""),
      },
    };
  }
  if (item.contentKind === "stardima") {
    const providerTitleId = item.contentKey || item.routeParams?.providerTitleId || "";
    if (providerTitleId) {
      return {
        pathname: "/stardima-title",
        params: { providerTitleId },
      };
    }
  }
  return {
    pathname: "/anime/[id]",
    params: {
      id: String(item.id),
      title: item.title,
      english: item.english || item.title,
    },
  };
}

export async function resolveFavoriteRouteTarget(
  item: FavoriteAnime,
  watchHistory: WatchProgress[] = [],
): Promise<FavoriteRouteTarget & { upgraded?: FavoriteAnime }> {
  if (item.mangaId || (item.contentKind && item.contentKind !== "anime")) {
    return getFavoriteRouteTarget(item);
  }
  // Legacy dubbed-anime favorites saved before contentKind was persisted use synthetic IDs >= 100_000_000.
  const isSyntheticDubbedId = item.id >= 100_000_000 || (item.thumbnail || "").includes("/api/dubbed/");
  if (!isSyntheticDubbedId) {
    return getFavoriteRouteTarget(item);
  }

  const normalizedScore =
    typeof item.score === "number" && item.score > 0 && item.score <= 10
      ? Math.round(item.score * 10)
      : item.score;

  // 1. Fast path: recover exact slug/key from local watchHistory if present.
  const histMatch = watchHistory.find((h) => h.animeId === item.id && h.contentKey);
  if (histMatch?.contentKey) {
    if (histMatch.contentKey.startsWith("az:")) {
      const slug = histMatch.contentKey.slice(3);
      const upgraded: FavoriteAnime = {
        ...item,
        contentKind: "dubbed-anime",
        contentKey: slug,
        routeParams: { slug },
        score: normalizedScore,
      };
      return { ...getFavoriteRouteTarget(upgraded), upgraded };
    }
    if (histMatch.contentKind === "stardima") {
      const upgraded: FavoriteAnime = {
        ...item,
        contentKind: "stardima",
        contentKey: histMatch.contentKey,
        routeParams: { providerTitleId: histMatch.contentKey },
      };
      return { ...getFavoriteRouteTarget(upgraded), upgraded };
    }
    if (histMatch.contentKind === "aw-dubbed") {
      const upgraded: FavoriteAnime = {
        ...item,
        contentKind: "aw-dubbed",
        contentKey: histMatch.contentKey,
        routeParams: { key: histMatch.contentKey },
      };
      return { ...getFavoriteRouteTarget(upgraded), upgraded };
    }
  }

  // 2. Fallback: look up the dubbed anime slug on the AnimeZid catalog API and match by exact ID hash or title.
  const base = getBaseUrl().replace(/\/$/, "");
  const queries = [...new Set([item.titleAr, item.title, item.english].map((q) => (q || "").trim()).filter(Boolean))];
  const norm = (s: string) => s.toLowerCase().replace(/[^\p{L}\p{N}]+/gu, " ").trim();
  const targetNorms = queries.map(norm).filter(Boolean);

  for (const q of [...queries, ""]) {
    try {
      const url = q
        ? `${base}/api/dubbed/animezid/catalog?page=1&q=${encodeURIComponent(q)}`
        : `${base}/api/dubbed/animezid/catalog?page=1&sort=newest`;
      const res = await fetch(url);
      if (!res.ok) continue;
      const data = await res.json();
      const rows: any[] = Array.isArray(data?.results) ? data.results : [];
      const exactHash = rows.find((r) => r?.slug && getWatchContentId("dubbed", `az:${r.slug}`) === item.id);
      const titleMatch = exactHash || rows.find((r) => {
        if (!r?.slug) return false;
        const cand = norm(String(r.title || ""));
        return cand && targetNorms.some((t) => cand === t || cand.includes(t) || t.includes(cand));
      });
      if (titleMatch?.slug) {
        const slug = String(titleMatch.slug);
        const upgraded: FavoriteAnime = {
          ...item,
          contentKind: "dubbed-anime",
          contentKey: slug,
          routeParams: { slug },
          score: normalizedScore,
        };
        return { ...getFavoriteRouteTarget(upgraded), upgraded };
      }
    } catch {}
  }

  return getFavoriteRouteTarget(item);
}

function mapServerFavorite(row: any): FavoriteAnime | null {
  const id = asNumber(row?.anime_id ?? row?.animeId ?? row?.content_id);
  if (!id) return null;
  const decoded = decodeServerFavoriteType(row?.anime_type ?? row?.animeType);
  return {
    id,
    ...decoded,
    title: String(row?.anime_title ?? row?.title ?? ""),
    titleAr: row?.title_ar || row?.titleAr ? String(row?.title_ar ?? row?.titleAr) : undefined,
    english: String(row?.english_title ?? row?.english ?? row?.anime_title ?? row?.title ?? ""),
    thumbnail: String(row?.anime_cover ?? row?.image ?? row?.poster ?? ""),
    episodes: row?.episodes == null ? null : asNumber(row.episodes),
    score: row?.score == null ? null : asNumber(row.score),
    startYear: row?.start_year == null && row?.startYear == null ? undefined : asNumber(row?.start_year ?? row?.startYear),
    addedAt: Date.parse(row?.added_at || row?.created_at || "") || Date.now(),
    watchStatus: normalizeWatchlistStatus(row?.watch_status ?? row?.watchStatus),
  };
}

export function AppProvider({ children }: { children: React.ReactNode }) {
  const [theme, setThemeState] = useState<Theme>("white");
  const [themeHydrated, setThemeHydrated] = useState(false);
  const [remoteConfig, setRemoteConfig] = useState<RemoteConfig>(DEFAULT_CONFIG);
  const [watchHistory, setWatchHistory] = useState<WatchProgress[]>([]);
  const [favorites, setFavorites] = useState<FavoriteAnime[]>([]);
  const [historyHydrated, setHistoryHydrated] = useState(false);
  const [favoritesHydrated, setFavoritesHydrated] = useState(false);
  const [officialAppRequired, setOfficialAppRequired] = useState(false);
  const [currentUser, setCurrentUser] = useState<MobileUser | null>(null);
  const [authReady, setAuthReady] = useState(false);
  const currentUserRef = useRef<MobileUser | null>(null);
  // "loading" prevents a user switch from persisting the previous account's
  // in-memory data into the anonymous cache before the new owner is loaded.
  const dataOwnerRef = useRef<string | null | "loading">("loading");
  const watchHistoryRef = useRef<WatchProgress[]>([]);
  const favoritesRef = useRef<FavoriteAnime[]>([]);
  const pendingHistoryKeysRef = useRef<Set<string>>(new Set());
  const pendingFavoriteIdsRef = useRef<Set<number>>(new Set());
  const syncedUserIdRef = useRef<string | null>(null);
  const syncInFlightRef = useRef<Promise<boolean> | null>(null);
  const lastSyncedAtRef = useRef<number>(0);

  useEffect(() => {
    currentUserRef.current = currentUser;
  }, [currentUser]);

  useEffect(() => {
    watchHistoryRef.current = watchHistory;
  }, [watchHistory]);

  useEffect(() => {
    favoritesRef.current = favorites;
  }, [favorites]);

  const restoreAuth = useCallback(async () => {
    try {
      const stored = await AsyncStorage.getItem("nova-mobile-user");
      if (stored) {
        try { setCurrentUser(JSON.parse(stored) as MobileUser); } catch { await AsyncStorage.removeItem("nova-mobile-user"); }
      }
      const response = await secureFetch(`${getBaseUrl()}/api/auth/me`);
      if (!response.ok) {
        if (response.status === 401 || response.status === 403) {
          await setUserAuthToken(null);
          await AsyncStorage.removeItem("nova-mobile-user");
          setCurrentUser(null);
        }
        return;
      }
      const data = await response.json() as any;
      if (!data?.id) return;
      if (data.authToken) await setUserAuthToken(String(data.authToken));
      const next: MobileUser = {
        id: String(data.id),
        email: data.email || "",
        displayName: data.displayName || data.display_name || data.username || data.email?.split("@")[0] || "مستخدم",
        username: data.username,
        avatarColor: data.avatarColor ?? data.avatar_color ?? 0,
        profileImageUrl: data.profileImageUrl || data.profile_image_custom || data.profile_image_url || null,
      };
      await AsyncStorage.setItem("nova-mobile-user", JSON.stringify(next));
      setCurrentUser(next);
    } catch {
      // A stored user remains usable while the VPS is temporarily unavailable.
    } finally {
      setAuthReady(true);
    }
  }, []);

  useEffect(() => {
    loadAll();
    refreshConfig();
    // Pre-warm the auth token so first API call is instant
    getAuthToken().catch(() => {});
    void restoreAuth();
  }, [restoreAuth]);

  const accountUrl = useCallback((path: string) => `${getBaseUrl()}/api${path}`, []);

  const readDeletedIds = useCallback(async (key: string): Promise<number[]> => {
    try {
      const raw = await AsyncStorage.getItem(key);
      const parsed = raw ? JSON.parse(raw) : [];
      return Array.isArray(parsed) ? parsed.map(Number).filter(Number.isFinite) : [];
    } catch {
      return [];
    }
  }, []);

  const writeDeletedIds = useCallback(async (key: string, ids: number[]) => {
    await AsyncStorage.setItem(key, JSON.stringify([...new Set(ids)]));
  }, []);

  const postHistory = useCallback(async (item: WatchProgress): Promise<boolean> => {
    try {
      const response = await secureFetch(accountUrl("/user/history"), {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          animeId: item.animeId,
          animeTitle: item.english || item.title,
          animeCover: item.thumbnail || null,
          animeType: serverAnimeType(item),
          episodeNumber: item.ep,
          seasonNumber: item.season || 1,
          ...(item.position ? { position: Math.floor(item.position) } : {}),
          ...(item.duration ? { duration: Math.floor(item.duration) } : {}),
          ...(item.totalEps ? { totalEps: item.totalEps } : {}),
          ...(item.titleAr ? { titleAr: item.titleAr } : {}),
          ...(item.english ? { english: item.english } : {}),
        }),
      });
      return response.ok;
    } catch {
      return false;
    }
  }, [accountUrl]);

  const postFavorite = useCallback(async (item: FavoriteAnime): Promise<boolean> => {
    try {
      const response = await secureFetch(accountUrl("/user/favorites"), {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          animeId: item.id,
          animeTitle: item.titleAr || item.title || item.english,
          animeCover: item.thumbnail || null,
          animeType: serverFavoriteType(item),
          ...(item.titleAr ? { titleAr: item.titleAr } : {}),
          ...(item.english ? { english: item.english } : {}),
          ...(item.episodes != null ? { episodes: item.episodes } : {}),
          ...(item.score != null ? { score: item.score } : {}),
          ...(item.startYear != null ? { startYear: item.startYear } : {}),
          ...(item.watchStatus ? { watchStatus: item.watchStatus } : {}),
        }),
      });
      return response.ok;
    } catch {
      return false;
    }
  }, [accountUrl]);

  const syncAccountData = useCallback(async (
    userId: string,
    localHistory: WatchProgress[],
    localFavorites: FavoriteAnime[],
    mode: "initial" | "refresh" = "initial",
  ): Promise<boolean> => {
    if (syncInFlightRef.current) return syncInFlightRef.current;
    const task = (async (): Promise<boolean> => {
    try {
      const [historyResponse, favoritesResponse] = await Promise.all([
        secureFetch(accountUrl("/user/history?limit=100")),
        secureFetch(accountUrl("/user/favorites")),
      ]);
      if (!historyResponse.ok || !favoritesResponse.ok) return false;

      const [historyPayload, favoritesPayload] = await Promise.all([
        historyResponse.json() as Promise<any>,
        favoritesResponse.json() as Promise<any>,
      ]);
      const [deletedHistory, deletedFavorites] = await Promise.all([
        readDeletedIds(HISTORY_DELETED_KEY(userId)),
        readDeletedIds(FAVORITES_DELETED_KEY(userId)),
      ]);
      const deletedHistorySet = new Set(deletedHistory);
      const deletedFavoritesSet = new Set(deletedFavorites);
      const [historyClearPending, favoritesClearPending] = await Promise.all([
        AsyncStorage.getItem(HISTORY_CLEAR_PENDING_KEY(userId)),
        AsyncStorage.getItem(FAVORITES_CLEAR_PENDING_KEY(userId)),
      ]);

      const remoteHistoryRows: any[] = Array.isArray(historyPayload?.history)
        ? historyPayload.history
        : [];
      const remoteFavoritesRows: any[] = Array.isArray(favoritesPayload?.favorites)
        ? favoritesPayload.favorites
        : [];
      const remoteHistory: WatchProgress[] = remoteHistoryRows
        .map(mapServerHistory)
        .filter((item): item is WatchProgress => Boolean(item));
      const remoteFavorites: FavoriteAnime[] = remoteFavoritesRows
        .map(mapServerFavorite)
        .filter((item): item is FavoriteAnime => Boolean(item));

      // A local delete wins over a stale remote row. Retry that delete before
      // clearing its tombstone, so a temporary outage cannot resurrect content.
      let historyDeletesSucceeded = true;
      for (const animeId of deletedHistorySet) {
        try {
          const response = await secureFetch(accountUrl(`/user/history/anime/${animeId}`), { method: "DELETE" });
          if (!response.ok) historyDeletesSucceeded = false;
        } catch {
          historyDeletesSucceeded = false;
        }
      }
      let favoriteDeletesSucceeded = true;
      for (const animeId of deletedFavoritesSet) {
        try {
          const response = await secureFetch(accountUrl(`/user/favorites/${animeId}`), { method: "DELETE" });
          if (!response.ok) favoriteDeletesSucceeded = false;
        } catch {
          favoriteDeletesSucceeded = false;
        }
      }

      if (historyClearPending === "1") {
        try {
          const response = await secureFetch(accountUrl("/user/history"), { method: "DELETE" });
          if (response.ok) await AsyncStorage.removeItem(HISTORY_CLEAR_PENDING_KEY(userId));
          else historyDeletesSucceeded = false;
        } catch {
          historyDeletesSucceeded = false;
        }
      }
      if (favoritesClearPending === "1") {
        try {
          const response = await secureFetch(accountUrl("/user/favorites"), { method: "DELETE" });
          if (response.ok) await AsyncStorage.removeItem(FAVORITES_CLEAR_PENDING_KEY(userId));
          else favoriteDeletesSucceeded = false;
        } catch {
          favoriteDeletesSucceeded = false;
        }
      }

      const remoteHistoryByKey = new Map<string, WatchProgress>(
        remoteHistory
          .filter(item => !deletedHistorySet.has(item.animeId))
          .map(item => [historyKey(item), item]),
      );
      const mergedHistory = new Map<string, WatchProgress>();
      if (historyClearPending !== "1") {
        remoteHistoryByKey.forEach((item, key) => mergedHistory.set(key, item));
      }
      const historyToUpload: WatchProgress[] = [];
      for (const item of localHistory) {
        if (deletedHistorySet.has(item.animeId)) continue;
        const key = historyKey(item);
        const remote = historyClearPending === "1" ? undefined : remoteHistoryByKey.get(key);
        const isPendingLocal = pendingHistoryKeysRef.current.has(key);
        if (mode === "refresh" && !remote && !isPendingLocal) {
          // On live refresh after initial sync, remote deletion wins unless this device has an un-uploaded local write
          continue;
        }
        if (!remote || item.updatedAt >= remote.updatedAt) {
          mergedHistory.set(key, item);
          if (!remote || (item.updatedAt - remote.updatedAt > 10000) || historyClearPending === "1" || isPendingLocal) {
            historyToUpload.push(item);
          }
        }
      }

      const remoteFavoritesById = new Map<number, FavoriteAnime>(
        remoteFavorites
          .filter(item => !deletedFavoritesSet.has(item.id))
          .map(item => [item.id, item]),
      );
      const mergedFavorites = new Map<number, FavoriteAnime>();
      if (favoritesClearPending !== "1") {
        remoteFavoritesById.forEach((item, key) => mergedFavorites.set(key, item));
      }
      const favoritesToUpload: FavoriteAnime[] = [];
      for (const item of localFavorites) {
        if (deletedFavoritesSet.has(item.id)) continue;
        const remote = favoritesClearPending === "1" ? undefined : remoteFavoritesById.get(item.id);
        const isPendingLocal = pendingFavoriteIdsRef.current.has(item.id);
        if (mode === "refresh" && !remote && !isPendingLocal) {
          // On live refresh after initial sync, remote deletion wins unless this device has an un-uploaded local save
          continue;
        }
        const localHasRichRouting = Boolean((item.contentKind && item.contentKind !== "anime") || item.mangaId);
        const remoteMissingRichRouting = Boolean(remote && !remote.contentKind && !remote.mangaId);
        const localHasStatus = Boolean(item.watchStatus);
        const remoteMissingStatus = Boolean(remote && !remote.watchStatus);
        if (!remote || item.addedAt >= remote.addedAt || (localHasRichRouting && remoteMissingRichRouting) || (localHasStatus && remoteMissingStatus) || isPendingLocal) {
          const mergedItem: FavoriteAnime = remote && !item.watchStatus && remote.watchStatus
            ? { ...item, watchStatus: remote.watchStatus }
            : item;
          mergedFavorites.set(item.id, mergedItem);
          if (!remote || item.addedAt > remote.addedAt || favoritesClearPending === "1" || (localHasRichRouting && remoteMissingRichRouting) || (localHasStatus && remoteMissingStatus) || isPendingLocal) {
            favoritesToUpload.push(mergedItem);
          }
        }
      }

      // Upload local-only/newer rows. Failures intentionally leave local state
      // and tombstones intact; the next auth restore can retry safely.
      const runBatched = async <T,>(items: T[], fn: (item: T) => Promise<boolean>): Promise<boolean[]> => {
        const results: boolean[] = [];
        const capped = items.slice(0, 12);
        for (let i = 0; i < capped.length; i += 2) {
          const chunk = capped.slice(i, i + 2);
          const r = await Promise.all(chunk.map(fn));
          results.push(...r);
        }
        return results;
      };
      const historyUploadResults = await runBatched(historyToUpload, postHistory);
      const favoriteUploadResults = await runBatched(favoritesToUpload, postFavorite);
      const historyUploadsSucceeded = historyUploadResults.every(Boolean);
      const favoriteUploadsSucceeded = favoriteUploadResults.every(Boolean);

      if (historyDeletesSucceeded && historyUploadsSucceeded) {
        await AsyncStorage.removeItem(HISTORY_DELETED_KEY(userId));
        historyToUpload.slice(0, 12).forEach((it) => pendingHistoryKeysRef.current.delete(historyKey(it)));
      }
      if (favoriteDeletesSucceeded && favoriteUploadsSucceeded) {
        await AsyncStorage.removeItem(FAVORITES_DELETED_KEY(userId));
        favoritesToUpload.slice(0, 12).forEach((it) => pendingFavoriteIdsRef.current.delete(it.id));
      }

      // A logout or account switch may happen while the requests above are in
      // flight. Never let a previous account repopulate the new account's UI.
      if (currentUserRef.current?.id !== userId) return false;
      syncedUserIdRef.current = userId;
      lastSyncedAtRef.current = Date.now();
      setWatchHistory([...mergedHistory.values()].sort((a, b) => b.updatedAt - a.updatedAt).slice(0, 100));
      setFavorites([...mergedFavorites.values()].sort((a, b) => b.addedAt - a.addedAt).slice(0, MAX_FAVORITES));
      return historyDeletesSucceeded && favoriteDeletesSucceeded &&
        historyUploadsSucceeded && favoriteUploadsSucceeded;
    } catch {
      // Local state remains the offline source of truth.
      return false;
    } finally {
      syncInFlightRef.current = null;
    }
    })();
    syncInFlightRef.current = task;
    return task;
  }, [accountUrl, postFavorite, postHistory, readDeletedIds]);

  const syncAccountNow = useCallback(async (force = false): Promise<boolean> => {
    const userId = currentUserRef.current?.id;
    if (!userId || dataOwnerRef.current !== userId) return false;
    const now = Date.now();
    if (!force && now - lastSyncedAtRef.current < 5000) return true;
    const mode: "initial" | "refresh" = syncedUserIdRef.current === userId ? "refresh" : "initial";
    return syncAccountData(userId, watchHistoryRef.current, favoritesRef.current, mode);
  }, [syncAccountData]);

  // Automatic cross-device sync (Phone <-> TV):
  // 1) Sync immediately whenever the app returns to foreground (AppState -> "active")
  // 2) Lightweight 30s active poll while logged in so TV & Phone stay in sync without restarting!
  useEffect(() => {
    const userId = currentUser?.id;
    if (!userId || !authReady) return;
    let appState = AppState.currentState;
    const sub = AppState.addEventListener("change", (nextState) => {
      const wasBackground = appState !== "active";
      appState = nextState;
      if (wasBackground && nextState === "active") {
        void syncAccountNow(true);
      }
    });
    const timer = setInterval(() => {
      if (AppState.currentState === "active") {
        void syncAccountNow(false);
      }
    }, 30_000);
    return () => {
      sub.remove();
      clearInterval(timer);
    };
  }, [authReady, currentUser?.id, syncAccountNow]);

  useEffect(() => {
    if (!authReady || !historyHydrated || !favoritesHydrated) return;

    let cancelled = false;
    const userId = currentUser?.id || null;
    dataOwnerRef.current = "loading";
    if (syncedUserIdRef.current !== userId) {
      syncedUserIdRef.current = null;
      pendingHistoryKeysRef.current.clear();
      pendingFavoriteIdsRef.current.clear();
    }

    const parseArray = <T,>(raw: string | null): T[] => {
      if (!raw) return [];
      try {
        const parsed = JSON.parse(raw);
        return Array.isArray(parsed) ? parsed : [];
      } catch {
        return [];
      }
    };

    if (!userId) {
      // Logout only removes the local identity. Restore the anonymous local
      // collection without touching any account rows on the backend.
      void Promise.all([
        AsyncStorage.getItem(ANONYMOUS_HISTORY_KEY),
        AsyncStorage.getItem(ANONYMOUS_FAVORITES_KEY),
      ]).then(([historyRaw, favoritesRaw]) => {
        if (cancelled || currentUserRef.current) return;
        dataOwnerRef.current = null;
        setWatchHistory(parseArray<WatchProgress>(historyRaw));
        setFavorites(parseArray<FavoriteAnime>(favoritesRaw));
      });
      return () => { cancelled = true; };
    }

    void (async () => {
      const [historyRaw, favoritesRaw] = await Promise.all([
        AsyncStorage.getItem(ACCOUNT_HISTORY_KEY(userId)).catch(() => null),
        AsyncStorage.getItem(ACCOUNT_FAVORITES_KEY(userId)).catch(() => null),
      ]);
      if (cancelled || currentUserRef.current?.id !== userId) return;

      const localHistory = parseArray<WatchProgress>(historyRaw);
      const localFavorites = parseArray<FavoriteAnime>(favoritesRaw);
      dataOwnerRef.current = userId;
      setWatchHistory(localHistory);
      setFavorites(localFavorites);

      // Supabase is authoritative for account-owned data. The account-scoped
      // cache is only an offline queue/cache and is never mixed with anonymous
      // data or another user's collection.
      await syncAccountData(userId, localHistory, localFavorites);
      if (!cancelled && currentUserRef.current?.id === userId) {
        dataOwnerRef.current = userId;
      }
    })();

    return () => { cancelled = true; };
  }, [
    authReady,
    currentUser?.id,
    favoritesHydrated,
    historyHydrated,
    syncAccountData,
  ]);

  /** حذف مفاتيح الكاش القديمة عند الإطلاق — يمنع امتلاء AsyncStorage (6MB Android limit) */
  const cleanOldCacheKeys = async () => {
    try {
      const keys = await AsyncStorage.getAllKeys();
      const toRemove: string[] = [];
      // progress-* keys: keep only last 30 episodes
      const progressKeys = keys.filter(k => k.startsWith("progress-"));
      if (progressKeys.length > 30) toRemove.push(...progressKeys.slice(0, progressKeys.length - 30));
      // anime-srcs-* keys: keep only last 20 episodes
      const srcKeys = keys.filter(k => k.startsWith("anime-srcs-"));
      if (srcKeys.length > 20) toRemove.push(...srcKeys.slice(0, srcKeys.length - 20));
      // anim-srcs-* keys (animation/movies): keep only last 20
      const animSrcKeys = keys.filter(k => k.startsWith("anim-srcs-"));
      if (animSrcKeys.length > 20) toRemove.push(...animSrcKeys.slice(0, animSrcKeys.length - 20));
      // sub-ar-* keys: keep only last 10 episodes
      const subKeys = keys.filter(k => k.startsWith("sub-ar-"));
      if (subKeys.length > 10) toRemove.push(...subKeys.slice(0, subKeys.length - 10));
      // desc-ar-* keys (translated descriptions): keep only last 30
      const descKeys = keys.filter(k => k.startsWith("desc-ar-"));
      if (descKeys.length > 30) toRemove.push(...descKeys.slice(0, descKeys.length - 30));
      // my-rating-* + saved-* + adult-warn-*: keep only last 50
      const ratingKeys = keys.filter(k => k.startsWith("my-rating-") || k.startsWith("saved-") || k.startsWith("adult-warn-"));
      if (ratingKeys.length > 50) toRemove.push(...ratingKeys.slice(0, ratingKeys.length - 50));
      if (toRemove.length > 0) await AsyncStorage.multiRemove(toRemove).catch(() => {});
    } catch {}
  };

  const loadAll = async () => {
    // أجّل تنظيف الكاش القديم (AsyncStorage.getAllKeys) 8 ثوانٍ حتى لا ينافس
    // الإقلاع البارد على قفل SQLite ويساعد في منع ANR على أجهزة Android TV الضعيفة
    setTimeout(() => {
      cleanOldCacheKeys().catch(() => {});
    }, 8_000);

    const [themeVal, historyVal, favVal] = await Promise.all([
      AsyncStorage.getItem("nova-theme").catch(() => null),
      AsyncStorage.getItem(ANONYMOUS_HISTORY_KEY).catch(() => null),
      AsyncStorage.getItem(ANONYMOUS_FAVORITES_KEY).catch(() => null),
    ]);
    if (themeVal) {
      const nextTheme: Theme =
        themeVal === "white" || themeVal === "light" ? "white" : "black";
      setThemeState(nextTheme);
      setActiveThemeIsWhite(nextTheme === "white");
      if (themeVal !== nextTheme) {
        await AsyncStorage.setItem("nova-theme", nextTheme).catch(() => {});
      }
    } else {
      setActiveThemeIsWhite(true);
    }
    setThemeHydrated(true);
    if (historyVal) {
      try {
        const parsed = JSON.parse(historyVal);
        if (Array.isArray(parsed)) {
          setWatchHistory(parsed);
        } else {
          await AsyncStorage.removeItem("nova-history").catch(() => {});
        }
      } catch {
        await AsyncStorage.removeItem("nova-history").catch(() => {});
      }
    }
    if (favVal) {
      try {
        const parsed = JSON.parse(favVal);
        if (Array.isArray(parsed)) {
          setFavorites(parsed);
        } else {
          await AsyncStorage.removeItem("nova-favorites").catch(() => {});
        }
      } catch {
        await AsyncStorage.removeItem("nova-favorites").catch(() => {});
      }
    }
    setHistoryHydrated(true);
    setFavoritesHydrated(true);
  };

  const refreshConfig = useCallback(async () => {
    try {
      const cfg = await fetchRemoteConfig();
      if (cfg) setRemoteConfig({ ...DEFAULT_CONFIG, ...cfg });
    } catch (error) {
      if (error instanceof Error && error.message === "OFFICIAL_APP_REQUIRED") {
        setOfficialAppRequired(true);
      }
    }
  }, []);

  const setTheme = useCallback(async (t: Theme) => {
    // Normalize stale callers and older persisted values to the two supported themes.
    const nextTheme: Theme = (t as string) === "white" || (t as string) === "light"
      ? "white"
      : "black";
    setThemeState(nextTheme);
    setActiveThemeIsWhite(nextTheme === "white");
    await AsyncStorage.setItem("nova-theme", nextTheme);
  }, []);

  /*
   * Keep the state updater pure. React may invoke functional updaters more than
   * once in concurrent mode, so AsyncStorage must never be written from inside
   * this callback.
   */
  const addToHistory = useCallback(async (item: WatchProgress) => {
    const userId = currentUser?.id;
    if (userId) {
      const key = HISTORY_DELETED_KEY(userId);
      const deleted = await readDeletedIds(key);
      if (deleted.includes(item.animeId)) {
        await writeDeletedIds(key, deleted.filter(id => id !== item.animeId));
      }
    }
    setWatchHistory((prev) => {
      const withoutCurrent = prev.filter(
        (historyItem) =>
          !(historyKey(historyItem) === historyKey(item) &&
            historyItem.ep === item.ep &&
            (historyItem.season || 1) === (item.season || 1)),
      );
      // Keep the most recently exited episode at index 0. Home renders this
      // list from the right, so the latest item must be the first item.
      return [item, ...withoutCurrent].slice(0, 100);
    });
    // The caller invokes this when leaving the episode. Keep the network
    // write at that boundary; onProgress only updates an in-memory ref.
    if (userId) {
      const hKey = historyKey(item);
      pendingHistoryKeysRef.current.add(hKey);
      void postHistory(item).then((ok) => {
        if (ok) pendingHistoryKeysRef.current.delete(hKey);
      });
    }
  }, [currentUser?.id, postHistory, readDeletedIds, writeDeletedIds]);

  /*
   * Persist after React commits the new state. This keeps storage I/O out of
   * the state updater and prevents render/update loops in React 19.
   */
  useEffect(() => {
    if (!historyHydrated) return;
    const owner = dataOwnerRef.current;
    if (owner === "loading") return;
    const key = owner ? ACCOUNT_HISTORY_KEY(owner) : ANONYMOUS_HISTORY_KEY;
    AsyncStorage.setItem(key, JSON.stringify(watchHistory)).catch(() => {});
  }, [historyHydrated, watchHistory, currentUser?.id]);

  useEffect(() => {
    if (!favoritesHydrated) return;
    const owner = dataOwnerRef.current;
    if (owner === "loading") return;
    const key = owner ? ACCOUNT_FAVORITES_KEY(owner) : ANONYMOUS_FAVORITES_KEY;
    AsyncStorage.setItem(key, JSON.stringify(favorites)).catch(() => {});
  }, [favorites, favoritesHydrated, currentUser?.id]);

  const removeFromHistory = useCallback(async (animeId: number) => {
    setWatchHistory((prev) => prev.filter((h) => h.animeId !== animeId));
    const userId = currentUser?.id;
    if (!userId) return;

    const key = HISTORY_DELETED_KEY(userId);
    const deleted = await readDeletedIds(key);
    await writeDeletedIds(key, [...deleted, animeId]);
    try {
      const response = await secureFetch(accountUrl(`/user/history/anime/${animeId}`), { method: "DELETE" });
      if (response.ok) {
        await writeDeletedIds(key, deleted.filter(id => id !== animeId));
      }
    } catch {}
  }, [accountUrl, currentUser?.id, readDeletedIds, writeDeletedIds]);

  const clearHistory = useCallback(async () => {
    setWatchHistory([]);
    const userId = currentUser?.id;
    if (!userId) return;
    const pendingKey = HISTORY_CLEAR_PENDING_KEY(userId);
    await AsyncStorage.setItem(pendingKey, "1");
    try {
      const response = await secureFetch(accountUrl("/user/history"), { method: "DELETE" });
      if (response.ok) await AsyncStorage.removeItem(pendingKey);
    } catch {}
  }, [accountUrl, currentUser?.id]);

  const toggleFavorite = useCallback(async (anime: FavoriteAnime) => {
    const exists = favorites.some((f) => f.id === anime.id);
    setFavorites((prev) => {
      return exists ? prev.filter((f) => f.id !== anime.id) : [anime, ...prev].slice(0, MAX_FAVORITES);
    });
    const userId = currentUser?.id;
    if (!userId) return;

    const key = FAVORITES_DELETED_KEY(userId);
    const deleted = await readDeletedIds(key);
    if (exists) {
      await writeDeletedIds(key, [...deleted, anime.id]);
      try {
        const response = await secureFetch(accountUrl(`/user/favorites/${anime.id}`), { method: "DELETE" });
        if (response.ok) {
          await writeDeletedIds(key, deleted.filter(id => id !== anime.id));
        }
      } catch {}
    } else {
      if (deleted.includes(anime.id)) {
        await writeDeletedIds(key, deleted.filter(id => id !== anime.id));
      }
      pendingFavoriteIdsRef.current.add(anime.id);
      void postFavorite(anime).then((ok) => {
        if (ok) pendingFavoriteIdsRef.current.delete(anime.id);
      });
    }
  }, [accountUrl, currentUser?.id, favorites, postFavorite, readDeletedIds, writeDeletedIds]);

  const updateFavorite = useCallback(async (anime: FavoriteAnime) => {
    setFavorites((prev) => {
      const idx = prev.findIndex((f) => f.id === anime.id);
      if (idx < 0) return prev;
      const next = [...prev];
      next[idx] = { ...prev[idx], ...anime };
      return next;
    });
    const userId = currentUser?.id;
    if (userId) {
      pendingFavoriteIdsRef.current.add(anime.id);
      void postFavorite(anime).then((ok) => {
        if (ok) pendingFavoriteIdsRef.current.delete(anime.id);
      });
    }
  }, [currentUser?.id, postFavorite]);

  const clearFavorites = useCallback(async () => {
    setFavorites([]);
    const userId = currentUser?.id;
    if (!userId) return;
    const pendingKey = FAVORITES_CLEAR_PENDING_KEY(userId);
    await AsyncStorage.setItem(pendingKey, "1");
    try {
      const response = await secureFetch(accountUrl("/user/favorites"), { method: "DELETE" });
      if (response.ok) await AsyncStorage.removeItem(pendingKey);
    } catch {}
  }, [accountUrl, currentUser?.id]);

  const setFavoriteStatus = useCallback(async (anime: FavoriteAnime, status: WatchlistStatus) => {
    const now = Date.now();
    const existing = favoritesRef.current.find((f) => f.id === anime.id);
    const merged: FavoriteAnime = {
      ...(existing || {}),
      ...anime,
      watchStatus: status,
      addedAt: now,
    };
    setFavorites((prev) => {
      const rest = prev.filter((f) => f.id !== anime.id);
      return [merged, ...rest].slice(0, MAX_FAVORITES);
    });
    const userId = currentUser?.id;
    if (!userId) return;

    const key = FAVORITES_DELETED_KEY(userId);
    const deleted = await readDeletedIds(key);
    if (deleted.includes(anime.id)) {
      await writeDeletedIds(key, deleted.filter((id) => id !== anime.id));
    }
    pendingFavoriteIdsRef.current.add(anime.id);
    void postFavorite(merged).then((ok) => {
      if (ok) pendingFavoriteIdsRef.current.delete(anime.id);
    });
  }, [currentUser?.id, postFavorite, readDeletedIds, writeDeletedIds]);

  const removeFavorite = useCallback(async (id: number) => {
    setFavorites((prev) => prev.filter((f) => f.id !== id));
    const userId = currentUser?.id;
    if (!userId) return;

    const key = FAVORITES_DELETED_KEY(userId);
    const deleted = await readDeletedIds(key);
    await writeDeletedIds(key, [...deleted, id]);
    try {
      const response = await secureFetch(accountUrl(`/user/favorites/${id}`), { method: "DELETE" });
      if (response.ok) {
        await writeDeletedIds(key, deleted.filter((itemId) => itemId !== id));
      }
    } catch {}
  }, [accountUrl, currentUser?.id, readDeletedIds, writeDeletedIds]);

  const isFavorite = useCallback((id: number) => favorites.some((f) => f.id === id), [favorites]);

  const getFavoriteStatus = useCallback((id: number): WatchlistStatus | undefined => {
    const found = favorites.find((f) => f.id === id);
    if (!found) return undefined;
    return resolveWatchlistStatus(found.watchStatus);
  }, [favorites]);

  const contextValue = useMemo<AppContextType>(() => ({
    theme,
    themeHydrated,
    setTheme,
    remoteConfig,
    refreshConfig,
    watchHistory,
    addToHistory,
    removeFromHistory,
    clearHistory,
    favorites,
    toggleFavorite,
    setFavoriteStatus,
    removeFavorite,
    updateFavorite,
    clearFavorites,
    isFavorite,
    getFavoriteStatus,
    currentUser,
    authReady,
    setCurrentUser,
    restoreAuth,
    syncAccountNow,
  }), [
    addToHistory,
    authReady,
    clearFavorites,
    clearHistory,
    currentUser,
    favorites,
    getFavoriteStatus,
    isFavorite,
    refreshConfig,
    removeFavorite,
    setFavoriteStatus,
    remoteConfig,
    removeFromHistory,
    restoreAuth,
    syncAccountNow,
    setTheme,
    theme,
    toggleFavorite,
    updateFavorite,
    themeHydrated,
    watchHistory,
  ]);

  return (
    <AppContext.Provider value={contextValue}>
      {officialAppRequired ? (
        <View style={blockedStyles.container}>
          <Text style={blockedStyles.title}>النسخة الرسمية مطلوبة</Text>
          <Text style={blockedStyles.message}>
            هذه النسخة غير رسمية أو معدلة. حمّل التطبيق الرسمي من موقع Anime NOVA.
          </Text>
        </View>
      ) : remoteConfig.maintenanceMode ? (
        <View style={blockedStyles.container}>
          <Text style={blockedStyles.title}>التطبيق تحت الصيانة</Text>
          <Text style={blockedStyles.message}>
            {remoteConfig.maintenanceMessage || "سنعود قريبًا. يرجى المحاولة لاحقًا."}
          </Text>
        </View>
      ) : children}
    </AppContext.Provider>
  );
}

export function useApp() {
  const ctx = useContext(AppContext);
  if (!ctx) throw new Error("useApp must be inside AppProvider");
  return ctx;
}

const blockedStyles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#09090B",
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 28,
  },
  title: {
    color: "#F4F4F5",
    fontSize: 22,
    fontWeight: "800",
    marginBottom: 12,
    textAlign: "center",
  },
  message: {
    color: "#A1A1AA",
    fontSize: 15,
    lineHeight: 24,
    textAlign: "center",
  },
});

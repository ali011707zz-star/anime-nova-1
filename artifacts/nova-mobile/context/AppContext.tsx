import AsyncStorage from "@react-native-async-storage/async-storage";
import React, { createContext, useCallback, useContext, useEffect, useMemo, useRef, useState } from "react";
import { StyleSheet, Text, View } from "react-native";
import { DEFAULT_CONFIG, fetchRemoteConfig, getBaseUrl, RemoteConfig } from "@/utils/api";
import { getAuthToken, secureFetch, setUserAuthToken } from "@/utils/secureApi";

type Theme = "dark" | "amoled" | "violet" | "blue" | "pink";

export type WatchProgress = {
  animeId: number;
  ep: number;
  season?: number;
  title: string;
  english: string;
  thumbnail: string;
  position?: number;
  duration?: number;
  updatedAt: number;
};

export type FavoriteAnime = {
  id: number;
  title: string;
  english: string;
  thumbnail: string;
  episodes: number | null;
  score: number | null;
  addedAt: number;
  startYear?: number | null;
  genres?: string[];
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
  setTheme: (t: Theme) => void;
  remoteConfig: RemoteConfig;
  refreshConfig: () => Promise<void>;
  watchHistory: WatchProgress[];
  addToHistory: (item: WatchProgress) => Promise<void>;
  removeFromHistory: (animeId: number) => Promise<void>;
  clearHistory: () => Promise<void>;
  favorites: FavoriteAnime[];
  toggleFavorite: (anime: FavoriteAnime) => Promise<void>;
  clearFavorites: () => Promise<void>;
  isFavorite: (id: number) => boolean;
  currentUser: MobileUser | null;
  authReady: boolean;
  setCurrentUser: (user: MobileUser | null) => void;
  restoreAuth: () => Promise<void>;
};

const AppContext = createContext<AppContextType | null>(null);

const HISTORY_DELETED_KEY = (userId: string) => `nova-history-deleted:${userId}`;
const FAVORITES_DELETED_KEY = (userId: string) => `nova-favorites-deleted:${userId}`;
const HISTORY_CLEAR_PENDING_KEY = (userId: string) => `nova-history-clear-pending:${userId}`;
const FAVORITES_CLEAR_PENDING_KEY = (userId: string) => `nova-favorites-clear-pending:${userId}`;

function asNumber(value: unknown, fallback = 0): number {
  const parsed = Number(value);
  return Number.isFinite(parsed) ? parsed : fallback;
}

function historyKey(item: Pick<WatchProgress, "animeId" | "ep" | "season">): string {
  return `${item.animeId}:${item.ep}:${item.season || 1}`;
}

function mapServerHistory(row: any): WatchProgress | null {
  const animeId = asNumber(row?.anime_id ?? row?.animeId);
  const ep = asNumber(row?.episode_number ?? row?.episode ?? row?.ep);
  if (!animeId || !ep) return null;
  return {
    animeId,
    ep,
    season: asNumber(row?.season_number ?? row?.season, 1),
    title: String(row?.anime_title ?? row?.title ?? ""),
    english: String(row?.english_title ?? row?.english ?? row?.anime_title ?? row?.title ?? ""),
    thumbnail: String(row?.anime_cover ?? row?.image ?? row?.poster ?? ""),
    updatedAt: Date.parse(row?.watched_at || row?.updated_at || "") || Date.now(),
  };
}

function mapServerFavorite(row: any): FavoriteAnime | null {
  const id = asNumber(row?.anime_id ?? row?.animeId ?? row?.content_id);
  if (!id) return null;
  return {
    id,
    title: String(row?.anime_title ?? row?.title ?? ""),
    english: String(row?.english_title ?? row?.english ?? row?.anime_title ?? row?.title ?? ""),
    thumbnail: String(row?.anime_cover ?? row?.image ?? row?.poster ?? ""),
    episodes: row?.episodes == null ? null : asNumber(row.episodes),
    score: row?.score == null ? null : asNumber(row.score),
    addedAt: Date.parse(row?.added_at || row?.created_at || "") || Date.now(),
  };
}

export function AppProvider({ children }: { children: React.ReactNode }) {
  // Nova Mobile is dark-only. A legacy "light" value is migrated below.
  const [theme, setThemeState] = useState<Theme>("dark");
  const [remoteConfig, setRemoteConfig] = useState<RemoteConfig>(DEFAULT_CONFIG);
  const [watchHistory, setWatchHistory] = useState<WatchProgress[]>([]);
  const [favorites, setFavorites] = useState<FavoriteAnime[]>([]);
  const [historyHydrated, setHistoryHydrated] = useState(false);
  const [favoritesHydrated, setFavoritesHydrated] = useState(false);
  const [officialAppRequired, setOfficialAppRequired] = useState(false);
  const [currentUser, setCurrentUser] = useState<MobileUser | null>(null);
  const [authReady, setAuthReady] = useState(false);
  const syncedUserRef = useRef<string | null>(null);

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
          animeType: "anime",
          episodeNumber: item.ep,
          seasonNumber: item.season || 1,
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
          animeTitle: item.english || item.title,
          animeCover: item.thumbnail || null,
          animeType: "anime",
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
  ): Promise<boolean> => {
    try {
      const [historyResponse, favoritesResponse] = await Promise.all([
        secureFetch(accountUrl("/user/history")),
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

      const remoteHistory = (Array.isArray(historyPayload?.history) ? historyPayload.history : [])
        .map(mapServerHistory)
        .filter((item): item is WatchProgress => Boolean(item));
      const remoteFavorites = (Array.isArray(favoritesPayload?.favorites) ? favoritesPayload.favorites : [])
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

      const remoteHistoryByKey = new Map(
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
        const remote = historyClearPending === "1" ? undefined : remoteHistoryByKey.get(historyKey(item));
        if (!remote || item.updatedAt >= remote.updatedAt) {
          mergedHistory.set(historyKey(item), item);
          if (!remote || item.updatedAt > remote.updatedAt || historyClearPending === "1") {
            historyToUpload.push(item);
          }
        }
      }

      const remoteFavoritesById = new Map(
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
        if (!remote || item.addedAt >= remote.addedAt) {
          mergedFavorites.set(item.id, item);
          if (!remote || item.addedAt > remote.addedAt || favoritesClearPending === "1") {
            favoritesToUpload.push(item);
          }
        }
      }

      // Upload local-only/newer rows. Failures intentionally leave local state
      // and tombstones intact; the next auth restore can retry safely.
      const historyUploadResults = await Promise.all(historyToUpload.map(postHistory));
      const favoriteUploadResults = await Promise.all(favoritesToUpload.map(postFavorite));
      const historyUploadsSucceeded = historyUploadResults.every(Boolean);
      const favoriteUploadsSucceeded = favoriteUploadResults.every(Boolean);

      if (historyDeletesSucceeded && historyUploadsSucceeded) {
        await AsyncStorage.removeItem(HISTORY_DELETED_KEY(userId));
      }
      if (favoriteDeletesSucceeded && favoriteUploadsSucceeded) {
        await AsyncStorage.removeItem(FAVORITES_DELETED_KEY(userId));
      }

      setWatchHistory([...mergedHistory.values()].sort((a, b) => b.updatedAt - a.updatedAt).slice(0, 100));
      setFavorites([...mergedFavorites.values()].sort((a, b) => b.addedAt - a.addedAt).slice(0, 500));
      return historyDeletesSucceeded && favoriteDeletesSucceeded &&
        historyUploadsSucceeded && favoriteUploadsSucceeded;
    } catch {
      // Local state remains the offline source of truth.
      return false;
    }
  }, [accountUrl, postFavorite, postHistory, readDeletedIds]);

  useEffect(() => {
    if (!currentUser) {
      syncedUserRef.current = null;
      return;
    }
    if (!authReady || !historyHydrated || !favoritesHydrated) return;
    if (syncedUserRef.current === currentUser.id) return;
    syncedUserRef.current = currentUser.id;
    void syncAccountData(currentUser.id, watchHistory, favorites);
  }, [
    authReady,
    currentUser,
    favorites,
    favoritesHydrated,
    historyHydrated,
    syncAccountData,
    watchHistory,
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
    // نظّف الكاش القديم أولاً في الخلفية
    cleanOldCacheKeys().catch(() => {});

    const [themeVal, historyVal, favVal] = await Promise.all([
      AsyncStorage.getItem("nova-theme").catch(() => null),
      AsyncStorage.getItem("nova-history").catch(() => null),
      AsyncStorage.getItem("nova-favorites").catch(() => null),
    ]);
    if (themeVal === "light") {
      // Remove the retired white mode from existing installations.
      setThemeState("dark");
      await AsyncStorage.setItem("nova-theme", "dark").catch(() => {});
    } else if (themeVal) {
      const validThemes: Theme[] = ["dark", "amoled", "violet", "blue", "pink"];
      if (validThemes.includes(themeVal as Theme)) {
        setThemeState(themeVal as Theme);
      }
    }
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
    // Keep the runtime boundary safe for old callers that may still pass "light".
    const nextTheme: Theme = (t as string) === "light" ? "dark" : t;
    setThemeState(nextTheme);
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
      void postHistory(item);
    }
    setWatchHistory((prev) => {
      const withoutCurrent = prev.filter(
        (historyItem) =>
          !(historyItem.animeId === item.animeId &&
            historyItem.ep === item.ep &&
            (historyItem.season || 1) === (item.season || 1)),
      );
      // Keep the most recently exited episode at index 0. Home renders this
      // list from the right, so the latest item must be the first item.
      return [item, ...withoutCurrent].slice(0, 100);
    });
  }, [currentUser?.id, postHistory, readDeletedIds, writeDeletedIds]);

  /*
   * Persist after React commits the new state. This keeps storage I/O out of
   * the state updater and prevents render/update loops in React 19.
   */
  useEffect(() => {
    if (!historyHydrated) return;
    AsyncStorage.setItem("nova-history", JSON.stringify(watchHistory)).catch(() => {});
  }, [historyHydrated, watchHistory]);

  useEffect(() => {
    if (!favoritesHydrated) return;
    AsyncStorage.setItem("nova-favorites", JSON.stringify(favorites)).catch(() => {});
  }, [favorites, favoritesHydrated]);

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
      return exists ? prev.filter((f) => f.id !== anime.id) : [anime, ...prev].slice(0, 500);
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
      void postFavorite(anime);
    }
  }, [accountUrl, currentUser?.id, favorites, postFavorite, readDeletedIds, writeDeletedIds]);

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

  const isFavorite = useCallback((id: number) => favorites.some((f) => f.id === id), [favorites]);

  const contextValue = useMemo<AppContextType>(() => ({
    theme,
    setTheme,
    remoteConfig,
    refreshConfig,
    watchHistory,
    addToHistory,
    removeFromHistory,
    clearHistory,
    favorites,
    toggleFavorite,
    clearFavorites,
    isFavorite,
    currentUser,
    authReady,
    setCurrentUser,
    restoreAuth,
  }), [
    addToHistory,
    authReady,
    clearFavorites,
    clearHistory,
    currentUser,
    favorites,
    isFavorite,
    refreshConfig,
    remoteConfig,
    removeFromHistory,
    restoreAuth,
    setTheme,
    theme,
    toggleFavorite,
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

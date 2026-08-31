import AsyncStorage from "@react-native-async-storage/async-storage";
import React, { createContext, useCallback, useContext, useEffect, useMemo, useState } from "react";
import { StyleSheet, Text, View } from "react-native";
import { DEFAULT_CONFIG, fetchRemoteConfig, getBaseUrl, RemoteConfig } from "@/utils/api";
import { getAuthToken, secureFetch, setUserAuthToken } from "@/utils/secureApi";

type Theme = "light" | "dark" | "amoled" | "violet" | "blue" | "pink";

export type WatchProgress = {
  animeId: number;
  ep: number;
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
  favorites: FavoriteAnime[];
  toggleFavorite: (anime: FavoriteAnime) => Promise<void>;
  isFavorite: (id: number) => boolean;
  currentUser: MobileUser | null;
  authReady: boolean;
  setCurrentUser: (user: MobileUser | null) => void;
  restoreAuth: () => Promise<void>;
};

const AppContext = createContext<AppContextType | null>(null);

export function AppProvider({ children }: { children: React.ReactNode }) {
  // White is the first-run default. A saved choice is restored below.
  const [theme, setThemeState] = useState<Theme>("light");
  const [remoteConfig, setRemoteConfig] = useState<RemoteConfig>(DEFAULT_CONFIG);
  const [watchHistory, setWatchHistory] = useState<WatchProgress[]>([]);
  const [favorites, setFavorites] = useState<FavoriteAnime[]>([]);
  const [historyHydrated, setHistoryHydrated] = useState(false);
  const [favoritesHydrated, setFavoritesHydrated] = useState(false);
  const [officialAppRequired, setOfficialAppRequired] = useState(false);
  const [currentUser, setCurrentUser] = useState<MobileUser | null>(null);
  const [authReady, setAuthReady] = useState(false);

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
    if (themeVal) {
      const validThemes: Theme[] = ["light", "dark", "amoled", "violet", "blue", "pink"];
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
    setThemeState(t);
    await AsyncStorage.setItem("nova-theme", t);
  }, []);

  /*
   * Keep the state updater pure. React may invoke functional updaters more than
   * once in concurrent mode, so AsyncStorage must never be written from inside
   * this callback.
   */
  const addToHistory = useCallback(async (item: WatchProgress) => {
    setWatchHistory((prev) => {
      const withoutCurrent = prev.filter(
        (historyItem) =>
          !(historyItem.animeId === item.animeId && historyItem.ep === item.ep),
      );
      // Keep the most recently exited episode at index 0. Home renders this
      // list from the right, so the latest item must be the first item.
      return [item, ...withoutCurrent].slice(0, 100);
    });
  }, []);

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
  }, []);

  const toggleFavorite = useCallback(async (anime: FavoriteAnime) => {
    setFavorites((prev) => {
      const exists = prev.find((f) => f.id === anime.id);
      return exists ? prev.filter((f) => f.id !== anime.id) : [anime, ...prev].slice(0, 500);
    });
  }, []);

  const isFavorite = useCallback((id: number) => favorites.some((f) => f.id === id), [favorites]);

  const contextValue = useMemo<AppContextType>(() => ({
    theme,
    setTheme,
    remoteConfig,
    refreshConfig,
    watchHistory,
    addToHistory,
    removeFromHistory,
    favorites,
    toggleFavorite,
    isFavorite,
    currentUser,
    authReady,
    setCurrentUser,
    restoreAuth,
  }), [
    addToHistory,
    authReady,
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

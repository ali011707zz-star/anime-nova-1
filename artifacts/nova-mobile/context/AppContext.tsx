import AsyncStorage from "@react-native-async-storage/async-storage";
import React, { createContext, useCallback, useContext, useEffect, useState } from "react";
import { DEFAULT_CONFIG, fetchRemoteConfig, RemoteConfig } from "@/utils/api";
import { getAuthToken } from "@/utils/secureApi";

type Theme = "dark" | "amoled" | "violet" | "blue" | "pink";

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
};

const AppContext = createContext<AppContextType | null>(null);

export function AppProvider({ children }: { children: React.ReactNode }) {
  const [theme, setThemeState] = useState<Theme>("amoled");
  const [remoteConfig, setRemoteConfig] = useState<RemoteConfig>(DEFAULT_CONFIG);
  const [watchHistory, setWatchHistory] = useState<WatchProgress[]>([]);
  const [favorites, setFavorites] = useState<FavoriteAnime[]>([]);
  const [historyHydrated, setHistoryHydrated] = useState(false);
  const [favoritesHydrated, setFavoritesHydrated] = useState(false);

  useEffect(() => {
    loadAll();
    refreshConfig();
    // Pre-warm the auth token so first API call is instant
    getAuthToken().catch(() => {});
  }, []);

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
      try { setThemeState(themeVal as Theme); } catch {}
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
    const cfg = await fetchRemoteConfig();
    if (cfg) setRemoteConfig({ ...DEFAULT_CONFIG, ...cfg });
  }, []);

  const setTheme = async (t: Theme) => {
    setThemeState(t);
    await AsyncStorage.setItem("nova-theme", t);
  };

  /*
   * Keep the state updater pure. React may invoke functional updaters more than
   * once in concurrent mode, so AsyncStorage must never be written from inside
   * this callback.
   */
  const addToHistory = useCallback(async (item: WatchProgress) => {
    setWatchHistory((prev) => {
      const exists = prev.find(
        (historyItem) =>
          historyItem.animeId === item.animeId && historyItem.ep === item.ep,
      );
      if (exists) return prev;
      return [...prev.slice(-99), item];
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

  const removeFromHistory = async (animeId: number) => {
    setWatchHistory((prev) => prev.filter((h) => h.animeId !== animeId));
  };

  const toggleFavorite = async (anime: FavoriteAnime) => {
    setFavorites((prev) => {
      const exists = prev.find((f) => f.id === anime.id);
      return exists ? prev.filter((f) => f.id !== anime.id) : [anime, ...prev].slice(0, 500);
    });
  };

  const isFavorite = (id: number) => favorites.some((f) => f.id === id);

  return (
    <AppContext.Provider value={{ theme, setTheme, remoteConfig, refreshConfig, watchHistory, addToHistory, removeFromHistory, favorites, toggleFavorite, isFavorite }}>
      {children}
    </AppContext.Provider>
  );
}

export function useApp() {
  const ctx = useContext(AppContext);
  if (!ctx) throw new Error("useApp must be inside AppProvider");
  return ctx;
}

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
      // sub-ar-* keys: keep only last 10 episodes
      const subKeys = keys.filter(k => k.startsWith("sub-ar-"));
      if (subKeys.length > 10) toRemove.push(...subKeys.slice(0, subKeys.length - 10));
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
  };

  const refreshConfig = useCallback(async () => {
    const cfg = await fetchRemoteConfig();
    if (cfg) setRemoteConfig({ ...DEFAULT_CONFIG, ...cfg });
  }, []);

  const setTheme = async (t: Theme) => {
    setThemeState(t);
    await AsyncStorage.setItem("nova-theme", t);
  };

  const addToHistory = async (item: WatchProgress) => {
    /* ⚠️ AsyncStorage.setItem داخل setState محظور في React concurrent mode —
       نحسب القيمة أولاً ثم نكتب AsyncStorage في microtask منفصل */
    setWatchHistory((prev) => {
      const filtered = prev.filter((h) => !(h.animeId === item.animeId && h.ep === item.ep));
      const updated = [item, ...filtered].slice(0, 50);
      Promise.resolve().then(() => AsyncStorage.setItem("nova-history", JSON.stringify(updated)).catch(() => {}));
      return updated;
    });
  };

  const removeFromHistory = async (animeId: number) => {
    setWatchHistory((prev) => {
      const updated = prev.filter((h) => h.animeId !== animeId);
      Promise.resolve().then(() => AsyncStorage.setItem("nova-history", JSON.stringify(updated)).catch(() => {}));
      return updated;
    });
  };

  const toggleFavorite = async (anime: FavoriteAnime) => {
    setFavorites((prev) => {
      const exists = prev.find((f) => f.id === anime.id);
      const updated = exists ? prev.filter((f) => f.id !== anime.id) : [anime, ...prev].slice(0, 500);
      Promise.resolve().then(() => AsyncStorage.setItem("nova-favorites", JSON.stringify(updated)).catch(() => {}));
      return updated;
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

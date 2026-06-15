import AsyncStorage from "@react-native-async-storage/async-storage";
import React, { createContext, useCallback, useContext, useEffect, useState } from "react";
import { DEFAULT_CONFIG, fetchRemoteConfig, RemoteConfig } from "@/utils/api";

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
  }, []);

  const loadAll = async () => {
    try {
      const [themeVal, historyVal, favVal] = await Promise.all([
        AsyncStorage.getItem("nova-theme"),
        AsyncStorage.getItem("nova-history"),
        AsyncStorage.getItem("nova-favorites"),
      ]);
      if (themeVal) setThemeState(themeVal as Theme);
      if (historyVal) setWatchHistory(JSON.parse(historyVal));
      if (favVal) setFavorites(JSON.parse(favVal));
    } catch {}
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
    setWatchHistory((prev) => {
      const filtered = prev.filter((h) => !(h.animeId === item.animeId && h.ep === item.ep));
      const updated = [item, ...filtered].slice(0, 50);
      AsyncStorage.setItem("nova-history", JSON.stringify(updated));
      return updated;
    });
  };

  const removeFromHistory = async (animeId: number) => {
    setWatchHistory((prev) => {
      const updated = prev.filter((h) => h.animeId !== animeId);
      AsyncStorage.setItem("nova-history", JSON.stringify(updated));
      return updated;
    });
  };

  const toggleFavorite = async (anime: FavoriteAnime) => {
    setFavorites((prev) => {
      const exists = prev.find((f) => f.id === anime.id);
      const updated = exists ? prev.filter((f) => f.id !== anime.id) : [anime, ...prev];
      AsyncStorage.setItem("nova-favorites", JSON.stringify(updated));
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

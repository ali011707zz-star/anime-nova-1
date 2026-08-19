import { AppState, Platform } from "react-native";
import * as Notifications from "expo-notifications";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./api";

const KNOWN_EPISODES_KEY = "nova-known-latest-episodes-v1";
const CHANNEL_ID = "nova-new-episodes";
let ready: Promise<boolean> | null = null;
let syncInFlight: Promise<void> | null = null;

type LatestEpisode = {
  animeId?: number;
  anilistId?: number;
  episode?: number | string;
  name?: string;
  title?: string;
  titleAr?: string;
};

function configure(): Promise<boolean> {
  if (Platform.OS === "web") return Promise.resolve(false);
  if (!ready) {
    ready = (async () => {
      try {
        const current = await Notifications.getPermissionsAsync();
        const permission = current.granted
          ? current
          : await Notifications.requestPermissionsAsync();
        if (!permission.granted) return false;
        if (Platform.OS === "android") {
          await Notifications.setNotificationChannelAsync(CHANNEL_ID, {
            name: "حلقات جديدة",
            importance: Notifications.AndroidImportance.DEFAULT,
            sound: "default",
            vibrationPattern: [0, 200, 100, 200],
            showBadge: true,
          });
        }
        return true;
      } catch {
        return false;
      }
    })();
  }
  return ready;
}

function episodeKey(item: LatestEpisode): string {
  const animeId = Number(item.animeId ?? item.anilistId ?? 0);
  const episode = Number(item.episode ?? 0);
  return animeId > 0 && episode > 0 ? `${animeId}:${episode}` : "";
}

export async function syncLatestEpisodeNotifications(): Promise<void> {
  if (Platform.OS === "web" || syncInFlight) return syncInFlight ?? Promise.resolve();
  syncInFlight = (async () => {
    if (!(await configure())) return;
    const response = await fetch(`${getBaseUrl()}/api/anime/anslayer-latest`, {
      cache: "no-store",
    });
    if (!response.ok) return;
    const payload = await response.json() as LatestEpisode[] | { items?: LatestEpisode[] };
    const latest = Array.isArray(payload) ? payload : payload.items || [];
    const normalized = latest
      .map((item) => ({ item, key: episodeKey(item) }))
      .filter(({ key }) => Boolean(key));
    if (!normalized.length) return;

    const previous = new Set(JSON.parse(
      (await AsyncStorage.getItem(KNOWN_EPISODES_KEY)) || "[]",
    ) as string[]);
    const isFirstSync = previous.size === 0;
    const newItems = isFirstSync
      ? []
      : normalized.filter(({ key }) => !previous.has(key));
    const next = new Set(normalized.map(({ key }) => key));
    await AsyncStorage.setItem(KNOWN_EPISODES_KEY, JSON.stringify([...next].slice(0, 300)));

    // One grouped notification per sync prevents a burst when several episodes
    // are published between app launches.
    if (newItems.length) {
      const first = newItems[0].item;
      const title = String(first.titleAr || first.title || first.name || "أنمي");
      const body = newItems.length === 1
        ? `${title} — الحلقة ${Number(first.episode)}`
        : `تمت إضافة ${newItems.length} حلقات جديدة إلى أحدث الحلقات`;
      await Notifications.scheduleNotificationAsync({
        content: {
          title: "حلقة جديدة في Nova Anime",
          body,
          sound: "default",
          data: { type: "new-episodes", count: newItems.length },
        },
        trigger: null,
      });
    }
  })().catch(() => {}).finally(() => {
    syncInFlight = null;
  });
  return syncInFlight;
}

export function startEpisodeNotificationSync(): () => void {
  void syncLatestEpisodeNotifications();
  const subscription = AppState.addEventListener("change", (state) => {
    if (state === "active") void syncLatestEpisodeNotifications();
  });
  return () => subscription.remove();
}
import { AppState, Platform } from "react-native";
import * as Notifications from "expo-notifications";
import * as FileSystem from "expo-file-system";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./api";

const KNOWN_EPISODES_KEY = "nova-known-latest-episodes-v2";
const LAST_SYNC_KEY = "nova-latest-episodes-last-sync-v1";
const SYNC_MIN_INTERVAL_MS = 10 * 60_000;
const CHANNEL_ID = "nova-new-episodes";
let ready: Promise<boolean> | null = null;
let syncInFlight: Promise<void> | null = null;

type LatestEpisode = {
  animeId?: number;
  anilistId?: number;
  anslayerId?: number;
  episode?: number | string;
  name?: string;
  title?: string;
  titleAr?: string;
  cover?: string;
  poster?: string;
  image?: string;
  coverImage?: string;
};

function configure(): Promise<boolean> {
  if (Platform.OS === "web") return Promise.resolve(false);
  if (!ready) {
    ready = (async () => {
      try {
        Notifications.setNotificationHandler({
          handleNotification: async () => ({
            shouldShowBanner: true,
            shouldShowList: true,
            shouldPlaySound: true,
            shouldSetBadge: true,
          }),
        });
        const current = await Notifications.getPermissionsAsync();
        const permission = current.granted
          ? current
          : await Notifications.requestPermissionsAsync();
        if (!permission.granted) return false;
        if (Platform.OS === "android") {
          await Notifications.setNotificationChannelAsync(CHANNEL_ID, {
            name: "حلقات جديدة",
            importance: Notifications.AndroidImportance.HIGH,
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
  // Prefer the stable AniList identity, but keep AnimeSlayer as a fallback
  // for older/cold catalog responses that have not resolved AniList yet.
  const animeId = Number(item.animeId ?? item.anilistId ?? item.anslayerId ?? 0);
  const episode = Number(item.episode ?? 0);
  return animeId > 0 && episode > 0 ? `${animeId}:${episode}` : "";
}

function posterOf(item: LatestEpisode): string {
  return String(
    item.cover ||
    item.poster ||
    item.image ||
    item.coverImage ||
    "",
  ).trim();
}

async function localPosterUri(item: LatestEpisode): Promise<string | undefined> {
  const remote = posterOf(item);
  if (!remote) return undefined;
  try {
    const cacheDir = FileSystem.cacheDirectory;
    if (!cacheDir) return remote;
    const animeId = Number(item.animeId ?? item.anilistId ?? 0);
    const episode = Number(item.episode ?? 0);
    const target = `${cacheDir}nova-episode-${animeId}-${episode}.jpg`;
    const info = await FileSystem.getInfoAsync(target);
    if (info.exists) return target;
    const result = await FileSystem.downloadAsync(remote, target);
    return result.uri || remote;
  } catch {
    // A remote URL is still useful on platforms that support remote
    // notification attachments; never block the notification itself.
    return remote;
  }
}

async function notifyOneEpisode(item: LatestEpisode): Promise<void> {
  const title = String(item.titleAr || item.title || item.name || "أنمي").trim();
  const episode = Number(item.episode ?? 0);
  const poster = await localPosterUri(item);
  const content: Notifications.NotificationContentInput = {
    title: `حلقة جديدة · ${title}`,
    body: `الحلقة ${episode} متاحة الآن للمشاهدة في Anime NOVA`,
    sound: "default",
    data: {
      type: "new-episode",
      animeId: Number(item.animeId ?? item.anilistId ?? 0),
      episode,
      title,
      poster: posterOf(item),
    },
  };
  if (poster) {
    content.attachments = [{
      identifier: `episode-${Number(item.animeId ?? item.anilistId ?? 0)}-${episode}`,
      url: poster,
      type: "image",
    }];
    // Android uses the large icon when it cannot render an attachment.
    (content as any).largeIcon = poster;
  }
  await Notifications.scheduleNotificationAsync({
    content,
    trigger: null,
  });
}

export async function syncLatestEpisodeNotifications(): Promise<void> {
  if (Platform.OS === "web" || syncInFlight) return syncInFlight ?? Promise.resolve();
  syncInFlight = (async () => {
    if (!(await configure())) return;
    const lastSync = Number(await AsyncStorage.getItem(LAST_SYNC_KEY) || 0);
    if (Number.isFinite(lastSync) && lastSync > 0 && Date.now() - lastSync < SYNC_MIN_INTERVAL_MS) {
      return;
    }
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

    let previous = new Set<string>();
    try {
      const stored = JSON.parse((await AsyncStorage.getItem(KNOWN_EPISODES_KEY)) || "[]");
      if (Array.isArray(stored)) {
        previous = new Set(stored.filter((value): value is string => typeof value === "string" && value.length > 0));
      }
    } catch {
      // Corrupt local state should not make every sync look like a first run.
      previous = new Set();
    }
    const isFirstSync = previous.size === 0;
    const newItems = isFirstSync
      ? []
      : normalized.filter(({ key }) => !previous.has(key));
    // Keep a rolling union rather than replacing the snapshot. The upstream
    // list is paginated/rolling; replacement causes a reappearing episode to
    // be notified again after it temporarily falls out of the response.
    const next = new Set([...previous, ...normalized.map(({ key }) => key)]);
    await AsyncStorage.setItem(KNOWN_EPISODES_KEY, JSON.stringify([...next].slice(-500)));
    await AsyncStorage.setItem(LAST_SYNC_KEY, String(Date.now()));

    // Keep one rich notification per episode. This lets the user open and
    // identify a specific episode instead of receiving an opaque batch alert.
    for (const { item } of newItems) {
      await notifyOneEpisode(item);
      // A small spacing avoids Android notification shade coalescing on
      // devices that receive several new episodes in the same sync.
      await new Promise((resolve) => setTimeout(resolve, 250));
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
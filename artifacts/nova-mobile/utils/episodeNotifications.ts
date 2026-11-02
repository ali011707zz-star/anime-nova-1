import { AppState, Platform } from "react-native";
import * as Notifications from "expo-notifications";
import * as FileSystem from "expo-file-system";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./api";
import { arePushNotificationsEnabled } from "./pushNotifications";

const KNOWN_EPISODES_KEY = "nova-known-latest-episodes-v2";
const NOTIFIED_EPISODES_KEY = "nova-notified-latest-episodes-v1";
const LAST_SYNC_KEY = "nova-latest-episodes-last-sync-v1";
const SYNC_MIN_INTERVAL_MS = 3 * 60_000;
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
        if (!permission.granted) {
          console.warn(`[push] local notification permission denied status=${permission.status || "unknown"}`);
          return false;
        }
        if (Platform.OS === "android") {
          await Notifications.setNotificationChannelAsync(CHANNEL_ID, {
            name: "حلقات جديدة",
            importance: Notifications.AndroidImportance.MAX,
            lockscreenVisibility: Notifications.AndroidNotificationVisibility.PUBLIC,
            enableVibrate: true,
            sound: "default",
            vibrationPattern: [0, 250, 120, 250],
            showBadge: true,
          });
        }
        return true;
      } catch (error) {
        console.warn("[push] local notification configuration failed:", error instanceof Error ? error.message : String(error));
        return false;
      }
    })().then((configured) => {
      if (!configured) ready = null;
      return configured;
    });
  }
  return ready;
}

function episodeKey(item: LatestEpisode): string {
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
    return remote;
  }
}

export async function markEpisodeNotified(key: string): Promise<boolean> {
  if (!key) return false;
  try {
    const raw = await AsyncStorage.getItem(NOTIFIED_EPISODES_KEY);
    const parsed = raw ? JSON.parse(raw) : [];
    const set = new Set<string>(Array.isArray(parsed) ? parsed : []);
    if (set.has(key)) return false;
    set.add(key);
    await AsyncStorage.setItem(NOTIFIED_EPISODES_KEY, JSON.stringify([...set].slice(-500)));
    return true;
  } catch {
    return true;
  }
}

async function notifyOneEpisode(item: LatestEpisode): Promise<void> {
  const key = episodeKey(item);
  if (key && !(await markEpisodeNotified(key))) {
    return;
  }
  const title = String(item.titleAr || item.title || item.name || "أنمي").trim();
  const episode = Number(item.episode ?? 0);
  const animeId = Number(item.animeId ?? item.anilistId ?? 0);
  let posterTimer: ReturnType<typeof setTimeout> | undefined;
  const poster = await Promise.race([
    localPosterUri(item),
    new Promise<undefined>((resolve) => {
      posterTimer = setTimeout(() => resolve(undefined), 4_000);
    }),
  ]).finally(() => {
    if (posterTimer) clearTimeout(posterTimer);
  }).catch(() => undefined);

  const content: Notifications.NotificationContentInput = {
    title: `حلقة جديدة · ${title}`,
    body: `الحلقة ${episode} متاحة الآن للمشاهدة في Anime NOVA`,
    sound: "default",
    priority: Notifications.AndroidNotificationPriority.MAX,
    data: {
      type: "new-episode",
      animeId,
      episode,
      title,
      poster: posterOf(item),
    },
    ...(Platform.OS === "android" ? { channelId: CHANNEL_ID } : {}),
  } as Notifications.NotificationContentInput;

  if (poster) {
    content.attachments = [{
      identifier: `episode-${animeId}-${episode}`,
      url: poster,
      type: "image",
    }];
    (content as any).largeIcon = poster;
  }
  try {
    await Notifications.scheduleNotificationAsync({
      identifier: `nova-ep-${animeId}-${episode}`,
      content,
      trigger: null,
    });
  } catch (error) {
    if (!poster) throw error;
    delete content.attachments;
    delete (content as any).largeIcon;
    await Notifications.scheduleNotificationAsync({
      identifier: `nova-ep-${animeId}-${episode}`,
      content,
      trigger: null,
    });
  }
}

export async function syncLatestEpisodeNotifications(force = false): Promise<void> {
  if (Platform.OS === "web" || syncInFlight) return syncInFlight ?? Promise.resolve();
  syncInFlight = (async () => {
    if (!(await arePushNotificationsEnabled())) return;
    if (!(await configure())) return;
    const lastSync = Number(await AsyncStorage.getItem(LAST_SYNC_KEY) || 0);
    if (!force && Number.isFinite(lastSync) && lastSync > 0 && Date.now() - lastSync < SYNC_MIN_INTERVAL_MS) {
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
      previous = new Set();
    }
    const isFirstSync = previous.size === 0;
    /* Always allow local notification delivery for newly discovered episodes
       (deduplicated by NOTIFIED_EPISODES_KEY and identifier `nova-ep-${animeId}-${episode}`)
       so that even if remote FCM push is delayed or blocked in the background,
       the device still posts the system notification banner. */
    const newItems = isFirstSync
      ? []
      : normalized.filter(({ key }) => !previous.has(key));

    const next = new Set([...previous, ...normalized.map(({ key }) => key)]);
    await AsyncStorage.setItem(KNOWN_EPISODES_KEY, JSON.stringify([...next].slice(-500)));
    await AsyncStorage.setItem(LAST_SYNC_KEY, String(Date.now()));

    for (const { item } of newItems.slice(0, 5)) {
      await notifyOneEpisode(item);
      await new Promise((resolve) => setTimeout(resolve, 250));
    }
  })().catch((error) => {
    console.warn("[push] local episode notification sync failed:", error instanceof Error ? error.message : String(error));
  }).finally(() => {
    syncInFlight = null;
  });
  return syncInFlight;
}

export function startEpisodeNotificationSync(): () => void {
  void syncLatestEpisodeNotifications(true);
  const intervalId = setInterval(() => {
    void syncLatestEpisodeNotifications(false);
  }, SYNC_MIN_INTERVAL_MS);
  const subscription = AppState.addEventListener("change", (state) => {
    if (state === "active" || state === "background") {
      void syncLatestEpisodeNotifications(state === "active");
    }
  });
  return () => {
    clearInterval(intervalId);
    subscription.remove();
  };
}
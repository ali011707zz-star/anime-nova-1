import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";

const VISITOR_KEY = "nova-analytics-visitor-v1";

export type MobileWatchAnalyticsController = (() => void) & {
  markProgress: (seconds: number) => void;
  stop: () => void;
};

async function stableId(key: string): Promise<string> {
  const existing = await AsyncStorage.getItem(key);
  if (existing) return existing;
  const value = `mobile-${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 12)}`;
  await AsyncStorage.setItem(key, value).catch(() => {});
  return value;
}

async function send(path: string, body: Record<string, unknown>): Promise<boolean> {
  try {
    const visitorId = await stableId(VISITOR_KEY);
    const response = await secureFetch(`${getBaseUrl()}/api/analytics/${path}`, {
      method: "POST",
      headers: { "Content-Type": "application/json", "X-Nova-Device": visitorId },
      body: JSON.stringify({ ...body, platform: "mobile", visitorId }),
    });
    return response.ok;
  } catch {
    return false;
  }
}

export function pingMobileAppPresence(): void {
  void send("heartbeat", { watching: false, source: "app_launch" });
}

export function startMobileWatchAnalytics(input: {
  animeId: string | number;
  episode: number;
  title?: string;
  source?: string;
}): MobileWatchAnalyticsController {
  let stopped = false;
  const data = {
    animeId: String(input.animeId),
    episode: input.episode,
    title: input.title || "",
    source: input.source || "",
  };
  let lastPosition: number | null = null;
  let playedSeconds = 0;
  let lastProgressAt = 0;
  let lastHeartbeatAt = 0;
  let lastViewAttemptAt = 0;
  let watching = false;
  let viewSent = false;

  const heartbeat = (isWatching: boolean) => {
    if (stopped && isWatching) return;
    lastHeartbeatAt = Date.now();
    watching = isWatching;
    void send("heartbeat", { ...data, watching: isWatching });
  };

  heartbeat(false);
  const timer = setInterval(() => {
    if (stopped) return;
    const active = lastProgressAt > 0 && Date.now() - lastProgressAt <= 90_000;
    heartbeat(active);
  }, 60_000);

  const markProgress = (seconds: number) => {
    if (stopped || !Number.isFinite(seconds) || seconds < 0) return;
    const now = Date.now();
    if (lastPosition !== null) {
      const delta = seconds - lastPosition;
      if (delta > 0 && delta <= 15) {
        playedSeconds += delta;
        lastProgressAt = now;
      }
    }
    lastPosition = seconds;

    const active = lastProgressAt > 0 && now - lastProgressAt <= 90_000;
    if (active && !watching) heartbeat(true);
    else if (active && now - lastHeartbeatAt >= 45_000) heartbeat(true);

    if (!viewSent && playedSeconds >= 10 && now - lastViewAttemptAt >= 15_000) {
      lastViewAttemptAt = now;
      void send("episode-view", { ...data, playedSeconds: Math.floor(playedSeconds) })
        .then((saved) => { if (saved) viewSent = true; });
    }
  };

  const stop = () => {
    if (stopped) return;
    stopped = true;
    clearInterval(timer);
    void send("heartbeat", { ...data, watching: false });
  };

  return Object.assign(stop, { markProgress, stop });
}
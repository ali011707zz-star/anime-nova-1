import { API_BASE } from "./apiBase";

const VISITOR_KEY = "nova-analytics-visitor-v1";

export type WatchAnalyticsController = {
  markProgress: (seconds: number) => void;
  stop: () => void;
};

function stableId(storage: Storage, key: string): string {
  const existing = storage.getItem(key);
  if (existing) return existing;
  const value = `${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 12)}`;
  storage.setItem(key, value);
  return value;
}

function visitorId(): string {
  try { return stableId(localStorage, VISITOR_KEY); } catch { return "web-anonymous"; }
}

async function send(path: string, body: Record<string, unknown>): Promise<boolean> {
  try {
    const response = await fetch(`${API_BASE}/api/analytics/${path}`, {
      method: "POST",
      credentials: "include",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ ...body, platform: "web", visitorId: visitorId() }),
      keepalive: true,
    });
    return response.ok;
  } catch {
    return false;
  }
}

export function startWebWatchAnalytics(input: {
  animeId: string | number;
  episode: number;
  title?: string;
  source?: string;
}): WatchAnalyticsController {
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
  let stopped = false;

  const heartbeat = (isWatching: boolean) => {
    lastHeartbeatAt = Date.now();
    watching = isWatching;
    void send("heartbeat", { ...data, watching: isWatching });
  };

  heartbeat(false);
  const timer = window.setInterval(() => {
    const active = lastProgressAt > 0 && Date.now() - lastProgressAt <= 90_000;
    heartbeat(active);
  }, 60_000);

  return {
    markProgress(seconds: number) {
      if (stopped || !Number.isFinite(seconds) || seconds < 0) return;
      const now = Date.now();
      if (lastPosition !== null) {
        const delta = seconds - lastPosition;
        if (delta > 0 && delta <= 5) {
          playedSeconds += delta;
          lastProgressAt = now;
        }
      }
      lastPosition = seconds;

      const active = lastProgressAt > 0 && now - lastProgressAt <= 90_000;
      if (active && !watching) heartbeat(true);
      else if (active && now - lastHeartbeatAt >= 45_000) heartbeat(true);

      if (!viewSent && playedSeconds >= 10 && now - lastViewAttemptAt >= 60_000) {
        lastViewAttemptAt = now;
        void send("episode-view", { ...data, playedSeconds: Math.floor(playedSeconds) })
          .then((saved) => { if (saved) viewSent = true; });
      }
    },
    stop() {
      if (stopped) return;
      stopped = true;
      window.clearInterval(timer);
      heartbeat(false);
    },
  };
}

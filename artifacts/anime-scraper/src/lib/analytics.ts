import { API_BASE } from "./apiBase";

const VISITOR_KEY = "nova-analytics-visitor-v1";
const SESSION_KEY = "nova-analytics-session-v1";

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

function sessionId(): string {
  try { return stableId(sessionStorage, SESSION_KEY); } catch { return `web-${Date.now()}`; }
}

async function send(path: string, body: Record<string, unknown>): Promise<void> {
  try {
    await fetch(`${API_BASE}/api/analytics/${path}`, {
      method: "POST",
      credentials: "include",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ ...body, platform: "web", visitorId: visitorId() }),
      keepalive: true,
    });
  } catch {}
}

export function startWebWatchAnalytics(input: {
  animeId: string | number;
  episode: number;
  title?: string;
  source?: string;
}): () => void {
  const data = { animeId: String(input.animeId), episode: input.episode, title: input.title || "", source: input.source || "" };
  void send("heartbeat", data);
  void send("episode-view", { ...data, eventKey: `${sessionId()}:${data.animeId}:${data.episode}` });
  const timer = window.setInterval(() => void send("heartbeat", data), 60_000);
  return () => window.clearInterval(timer);
}
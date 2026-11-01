import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";

const VISITOR_KEY = "nova-analytics-visitor-v1";
const SESSION_KEY = "nova-analytics-session-v1";

async function stableId(key: string): Promise<string> {
  const existing = await AsyncStorage.getItem(key);
  if (existing) return existing;
  const value = `mobile-${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 12)}`;
  await AsyncStorage.setItem(key, value).catch(() => {});
  return value;
}

async function send(path: string, body: Record<string, unknown>): Promise<void> {
  try {
    const visitorId = await stableId(VISITOR_KEY);
    await secureFetch(`${getBaseUrl()}/api/analytics/${path}`, {
      method: "POST",
      headers: { "Content-Type": "application/json", "X-Nova-Device": visitorId },
      body: JSON.stringify({ ...body, platform: "mobile", visitorId }),
    });
  } catch {}
}

export function startMobileWatchAnalytics(input: {
  animeId: string | number;
  episode: number;
  title?: string;
  source?: string;
}): () => void {
  let stopped = false;
  const data = { animeId: String(input.animeId), episode: input.episode, title: input.title || "", source: input.source || "" };
  void (async () => {
    const sessionId = await stableId(SESSION_KEY);
    if (stopped) return;
    await send("heartbeat", data);
    await send("episode-view", { ...data, eventKey: `${sessionId}:${data.animeId}:${data.episode}` });
  })();
  const timer = setInterval(() => { if (!stopped) void send("heartbeat", data); }, 60_000);
  return () => { stopped = true; clearInterval(timer); };
}
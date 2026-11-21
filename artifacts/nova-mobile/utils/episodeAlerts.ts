import AsyncStorage from "@react-native-async-storage/async-storage";
import { Platform } from "react-native";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";
import { getActivePushToken, getCachedPushToken } from "./pushNotifications";
import {
  makeAlertKey,
  normalizeAlertKind,
  type EpisodeAlertKind,
} from "./episodeAlertsLogic.mjs";

export type { EpisodeAlertKind };

export type EpisodeAlertInput = {
  contentKind: EpisodeAlertKind;
  contentKey: string;
  animeId?: number | null;
  title: string;
  titleAr?: string | null;
  posterUrl?: string | null;
};

const STORAGE_KEY = "nova-episode-alerts-v1";
const listeners = new Set<() => void>();
let alertKeys = new Set<string>();
let localLoaded = false;
let hydrateInFlight: Promise<void> | null = null;

function emit() {
  for (const listener of listeners) {
    try {
      listener();
    } catch {
      // ignore listener errors
    }
  }
}

async function persistLocal(): Promise<void> {
  try {
    await AsyncStorage.setItem(STORAGE_KEY, JSON.stringify([...alertKeys]));
  } catch {
    // ignore storage errors
  }
}

async function loadLocalOnce(): Promise<void> {
  if (localLoaded) return;
  localLoaded = true;
  try {
    const raw = await AsyncStorage.getItem(STORAGE_KEY);
    if (!raw) return;
    const parsed = JSON.parse(raw);
    if (Array.isArray(parsed)) {
      const next = new Set<string>();
      for (const item of parsed) {
        if (typeof item === "string" && item.includes("::")) next.add(item);
      }
      alertKeys = next;
      emit();
    }
  } catch {
    // ignore corrupt cache
  }
}

export function isEpisodeAlertEnabled(contentKind: EpisodeAlertKind, contentKey: string): boolean {
  const key = makeAlertKey(contentKind, contentKey);
  return Boolean(key && alertKeys.has(key));
}

export function subscribeEpisodeAlerts(listener: () => void): () => void {
  listeners.add(listener);
  return () => {
    listeners.delete(listener);
  };
}

export async function hydrateEpisodeAlerts(): Promise<void> {
  if (Platform.OS === "web") return;
  await loadLocalOnce();
  if (hydrateInFlight) return hydrateInFlight;
  hydrateInFlight = (async () => {
    try {
      const token = await getCachedPushToken();
      if (!token) return;
      const res = await secureFetch(
        `${getBaseUrl()}/api/push/alerts?token=${encodeURIComponent(token)}`,
        { method: "GET", headers: { Accept: "application/json" } },
      );
      if (!res.ok) return;
      const data = await res.json().catch(() => null);
      const rows = Array.isArray(data?.alerts) ? data.alerts : null;
      if (!rows) return;
      const next = new Set<string>();
      for (const row of rows) {
        const k = makeAlertKey(row?.content_kind ?? row?.contentKind, row?.content_key ?? row?.contentKey);
        if (k) next.add(k);
      }
      alertKeys = next;
      await persistLocal();
      emit();
    } catch {
      // keep local cache on network failure
    }
  })().finally(() => {
    hydrateInFlight = null;
  });
  return hydrateInFlight;
}

export async function toggleEpisodeAlert(
  input: EpisodeAlertInput,
): Promise<{ subscribed: boolean; reason?: "permission_denied" | "network_error" }> {
  if (Platform.OS === "web") return { subscribed: false, reason: "network_error" };
  await loadLocalOnce();
  const kind = normalizeAlertKind(input.contentKind);
  const key = makeAlertKey(kind, input.contentKey);
  if (!key) return { subscribed: false, reason: "network_error" };

  const prevEnabled = alertKeys.has(key);
  const nextEnabled = !prevEnabled;

  const tokenResult = await getActivePushToken({ requestPermission: nextEnabled });
  if (tokenResult.permissionDenied) {
    return { subscribed: prevEnabled, reason: "permission_denied" };
  }
  if (!tokenResult.token) {
    return { subscribed: prevEnabled, reason: "network_error" };
  }

  // Optimistic update
  const nextSet = new Set(alertKeys);
  if (nextEnabled) nextSet.add(key);
  else nextSet.delete(key);
  alertKeys = nextSet;
  emit();

  try {
    const res = await secureFetch(`${getBaseUrl()}/api/push/alerts/toggle`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        token: tokenResult.token,
        contentKind: kind,
        contentKey: String(input.contentKey || "").trim(),
        ...(input.animeId && Number(input.animeId) > 0 ? { animeId: Number(input.animeId) } : {}),
        title: String(input.title || "").trim().slice(0, 180),
        ...(input.titleAr ? { titleAr: String(input.titleAr).trim().slice(0, 180) } : {}),
        ...(input.posterUrl ? { posterUrl: String(input.posterUrl).trim().slice(0, 500) } : {}),
        enabled: nextEnabled,
      }),
    });
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    const body = await res.json().catch(() => ({ subscribed: nextEnabled }));
    const finalSubscribed = typeof body?.subscribed === "boolean" ? body.subscribed : nextEnabled;
    const syncedSet = new Set(alertKeys);
    if (finalSubscribed) syncedSet.add(key);
    else syncedSet.delete(key);
    alertKeys = syncedSet;
    await persistLocal();
    emit();
    return { subscribed: finalSubscribed };
  } catch {
    // Revert optimistic update on failure
    const revertedSet = new Set(alertKeys);
    if (prevEnabled) revertedSet.add(key);
    else revertedSet.delete(key);
    alertKeys = revertedSet;
    emit();
    return { subscribed: prevEnabled, reason: "network_error" };
  }
}

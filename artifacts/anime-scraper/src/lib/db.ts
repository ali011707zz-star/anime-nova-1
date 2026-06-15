/* ─────────────────────────────────────────────────────
   db.ts  — user data helpers
   • When userId is present: sync to server API (primary)
   • Always keep localStorage in sync as cache / offline
───────────────────────────────────────────────────── */

const API = "/api/user";

async function apiFetch(path: string, init?: RequestInit) {
  try {
    const res = await fetch(API + path, {
      credentials: "include",
      headers: { "Content-Type": "application/json", ...(init?.headers || {}) },
      ...init,
    });
    if (!res.ok) return null;
    return res.json();
  } catch {
    return null;
  }
}

/* ═══════════════════════════════════════
   WATCH HISTORY
═══════════════════════════════════════ */

export interface LocalHistoryItem {
  id: number;
  title: string;
  cover: string;
  ep: number;
  date: string;
  totalEps?: number;
  watchTimeSec?: number;
  durationSec?: number;
}

export async function saveWatchEvent(
  userId: string | null,
  anilistId: number,
  title: string,
  cover: string,
  ep: number,
  totalEps = 0,
  watchTimeSec = 0,
  durationSec = 0,
) {
  try {
    const h: LocalHistoryItem[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify(
      [{ id: anilistId, title, cover, ep, date: new Date().toISOString(), totalEps, watchTimeSec, durationSec },
       ...h.filter(x => !(x.id === anilistId && x.ep === ep))].slice(0, 60)
    ));
  } catch {}

  if (userId) {
    apiFetch("/history", {
      method: "POST",
      body: JSON.stringify({
        animeId: anilistId,
        animeTitle: title,
        animeCover: cover,
        animeType: "anime",
        episodeNumber: ep,
        seasonNumber: 1,
      }),
    });
  }
}

export async function loadWatchHistory(userId: string | null): Promise<LocalHistoryItem[]> {
  if (userId) {
    const data = await apiFetch("/history?limit=60");
    if (data?.history?.length) {
      return data.history.map((r: any) => ({
        id: r.animeId,
        title: r.animeTitle || "",
        cover: r.animeCover || "",
        ep: r.episodeNumber,
        date: r.watchedAt,
        totalEps: 0,
      }));
    }
  }
  try { return JSON.parse(localStorage.getItem("watch-history") || "[]"); } catch { return []; }
}

export async function removeHistoryEntry(userId: string | null, serverId: string, anilistId: number, ep: number) {
  try {
    const raw: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify(raw.filter(x => !(x.id === anilistId && x.ep === ep))));
  } catch {}
  if (userId && serverId) apiFetch(`/history/${serverId}`, { method: "DELETE" });
}

export async function clearWatchHistory(userId: string | null) {
  localStorage.removeItem("watch-history");
  if (userId) apiFetch("/history", { method: "DELETE" });
}

/* ═══════════════════════════════════════
   FAVORITES
═══════════════════════════════════════ */

export async function saveAnime(
  userId: string | null,
  anilistId: number,
  animeTitle?: string,
  animeCover?: string,
) {
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    if (!ids.includes(anilistId)) localStorage.setItem("savedAnime", JSON.stringify([anilistId, ...ids]));
  } catch {}

  if (userId) {
    apiFetch("/favorites", {
      method: "POST",
      body: JSON.stringify({ animeId: anilistId, animeTitle, animeCover, animeType: "anime" }),
    });
  }
}

export async function unsaveAnime(userId: string | null, anilistId: number) {
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    localStorage.setItem("savedAnime", JSON.stringify(ids.filter(i => i !== anilistId)));
  } catch {}
  if (userId) apiFetch(`/favorites/${anilistId}`, { method: "DELETE" });
}

export async function loadSavedIds(userId: string | null): Promise<number[]> {
  if (userId) {
    const data = await apiFetch("/favorites/ids");
    if (data?.ids != null) {
      try { localStorage.setItem("savedAnime", JSON.stringify(data.ids)); } catch {}
      return data.ids as number[];
    }
  }
  try { return JSON.parse(localStorage.getItem("savedAnime") || "[]"); } catch { return []; }
}

export function isSaved(anilistId: number): boolean {
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    return ids.includes(anilistId);
  } catch { return false; }
}

/* ═══════════════════════════════════════
   WATCH PROGRESS  (resume watching)
═══════════════════════════════════════ */

export async function saveProgress(
  userId: string | null,
  animeId: number,
  ep: number,
  progressSeconds: number,
  durationSeconds = 0,
  animeType = "anime",
  seasonNumber = 1,
  tmdbId?: string,
) {
  const key = animeType === "anime"
    ? `wp-${animeId}-${ep}`
    : `anim-wp-${tmdbId || animeId}-${animeType}-${seasonNumber}-${ep}`;
  try { localStorage.setItem(key, String(Math.floor(progressSeconds))); } catch {}

  if (userId && progressSeconds > 10) {
    apiFetch("/progress", {
      method: "POST",
      body: JSON.stringify({
        animeId,
        animeType,
        episodeNumber: ep,
        seasonNumber,
        tmdbId,
        progressSeconds: Math.floor(progressSeconds),
        durationSeconds: Math.floor(durationSeconds),
      }),
    });
  }
}

export async function loadProgress(
  userId: string | null,
  animeId: number,
  ep: number,
  animeType = "anime",
  seasonNumber = 1,
): Promise<number> {
  if (userId) {
    const data = await apiFetch(`/progress/${animeId}/${ep}?season=${seasonNumber}`);
    if (data?.progress?.progressSeconds > 0) return data.progress.progressSeconds;
  }
  const key = animeType === "anime"
    ? `wp-${animeId}-${ep}`
    : `anim-wp-${animeId}-${animeType}-${seasonNumber}-${ep}`;
  try { return parseFloat(localStorage.getItem(key) || "0") || 0; } catch { return 0; }
}

export async function cacheAnimeInfo(_info: {
  anilist_id: number;
  title_romaji: string;
  title_english?: string;
  title_arabic?: string;
  cover_image?: string;
  banner_image?: string;
  description_en?: string;
  genres?: string[];
  status?: string;
  format?: string;
  episodes_count?: number;
  avg_score?: number;
  popularity?: number;
}) {}

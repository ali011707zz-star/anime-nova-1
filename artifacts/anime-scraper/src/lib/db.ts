/**
 * db.ts — Supabase wrapper: watch history + user list + anime cache
 * Works with anonymous users via localStorage fallback when not signed in.
 */
import { supabase, upsertWatchHistory, getWatchHistory, upsertUserList, getUserList, removeFromUserList, upsertAnime } from "./supabase";

// ── Local history item shape (same as what Watch.tsx saves) ──
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

// ── Save watch event (supports both signed-in + guest) ──────────
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
  // Always save to localStorage (works offline & for guests)
  try {
    const h: LocalHistoryItem[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify(
      [{ id: anilistId, title, cover, ep, date: new Date().toISOString(), totalEps, watchTimeSec, durationSec },
       ...h.filter(x => !(x.id === anilistId && x.ep === ep))].slice(0, 60)
    ));
  } catch {}

  // Also save to Supabase if logged in
  if (userId) {
    await upsertWatchHistory(userId, anilistId, ep, watchTimeSec, durationSec, false).catch(() => {});
  }
}

// ── Get history (Supabase if logged in, else localStorage) ─────
export async function loadWatchHistory(userId: string | null): Promise<LocalHistoryItem[]> {
  if (!userId) {
    try { return JSON.parse(localStorage.getItem("watch-history") || "[]"); } catch { return []; }
  }
  const { data, error } = await getWatchHistory(userId, 60);
  if (error || !data?.length) {
    try { return JSON.parse(localStorage.getItem("watch-history") || "[]"); } catch { return []; }
  }
  return data.map(r => ({
    id: r.anilist_id,
    ep: r.episode_number,
    title: "",
    cover: "",
    date: r.watched_at,
    watchTimeSec: r.watch_time_sec,
    durationSec: r.duration_sec,
    totalEps: 0,
  }));
}

// ── Saved anime list ───────────────────────────────────────────
export async function saveAnime(userId: string | null, anilistId: number) {
  // localStorage
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    if (!ids.includes(anilistId)) {
      localStorage.setItem("savedAnime", JSON.stringify([anilistId, ...ids]));
    }
  } catch {}
  // Supabase
  if (userId) {
    await upsertUserList(userId, anilistId, "watching").catch(() => {});
  }
}

export async function unsaveAnime(userId: string | null, anilistId: number) {
  // localStorage
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    localStorage.setItem("savedAnime", JSON.stringify(ids.filter(i => i !== anilistId)));
  } catch {}
  // Supabase
  if (userId) {
    await removeFromUserList(userId, anilistId).catch(() => {});
  }
}

export async function loadSavedIds(userId: string | null): Promise<number[]> {
  if (!userId) {
    try { return JSON.parse(localStorage.getItem("savedAnime") || "[]"); } catch { return []; }
  }
  const { data } = await getUserList(userId);
  return data?.map(r => r.anilist_id) ?? [];
}

export function isSaved(anilistId: number): boolean {
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    return ids.includes(anilistId);
  } catch { return false; }
}

// ── Cache anime info (for fast re-open) ──────────────────────
export async function cacheAnimeInfo(info: {
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
}) {
  await upsertAnime({
    anilist_id: info.anilist_id,
    title_romaji: info.title_romaji,
    title_english: info.title_english,
    title_arabic: info.title_arabic,
    cover_image: info.cover_image,
    banner_image: info.banner_image,
    description_en: info.description_en,
    genres: info.genres ?? [],
    status: info.status,
    format: info.format,
    episodes_count: info.episodes_count,
    avg_score: info.avg_score,
    popularity: info.popularity ?? 0,
  }).catch(() => {});
}

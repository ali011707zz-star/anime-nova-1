import { createClient } from "@supabase/supabase-js";

const SUPABASE_URL = (import.meta.env.VITE_SUPABASE_URL as string) || "";
const SUPABASE_ANON_KEY = (import.meta.env.VITE_SUPABASE_ANON_KEY as string) || "";

// Use placeholder values when env vars aren't set — client will gracefully fail on requests
const safeUrl = SUPABASE_URL || "https://placeholder.supabase.co";
const safeKey = SUPABASE_ANON_KEY || "placeholder-anon-key";

export const supabase = createClient(safeUrl, safeKey, {
  auth: {
    persistSession: true,
    autoRefreshToken: true,
    detectSessionInUrl: true,
    storageKey: "nova-anime-auth",
  },
});

export const isSupabaseConfigured = !!(SUPABASE_URL && SUPABASE_ANON_KEY);

// ── Types ──────────────────────────────────────────────────────
export interface AnimeRow {
  id: number;
  anilist_id: number;
  mal_id?: number;
  title_romaji: string;
  title_english?: string;
  title_arabic?: string;
  title_japanese?: string;
  cover_image?: string;
  banner_image?: string;
  description_en?: string;
  description_ar?: string;
  genres: string[];
  status?: string;
  format?: string;
  season?: string;
  season_year?: number;
  episodes_count?: number;
  avg_score?: number;
  popularity: number;
  created_at: string;
  updated_at: string;
}

export interface WatchHistoryRow {
  id: number;
  user_id: string;
  anilist_id: number;
  episode_number: number;
  watch_time_sec: number;
  duration_sec: number;
  completed: boolean;
  watched_at: string;
}

export interface UserListRow {
  id: number;
  user_id: string;
  anilist_id: number;
  status: "watching" | "completed" | "on_hold" | "dropped" | "plan_to_watch";
  user_score?: number;
  notes?: string;
  added_at: string;
  updated_at: string;
}

export interface UserProfile {
  id: string;
  username?: string;
  avatar_url?: string;
  bio?: string;
  created_at: string;
  updated_at: string;
}

// ── Auth helpers ───────────────────────────────────────────────
export const signUp = (email: string, password: string) =>
  supabase.auth.signUp({ email, password });

export const signIn = (email: string, password: string) =>
  supabase.auth.signInWithPassword({ email, password });

export const signOut = () => supabase.auth.signOut();

export const getUser = () => supabase.auth.getUser();

export const getSession = () => supabase.auth.getSession();

// ── Watch History ──────────────────────────────────────────────
export async function upsertWatchHistory(
  userId: string,
  anilistId: number,
  episodeNumber: number,
  watchTimeSec: number,
  durationSec: number,
  completed = false,
) {
  return supabase.from("watch_history").upsert(
    {
      user_id: userId,
      anilist_id: anilistId,
      episode_number: episodeNumber,
      watch_time_sec: watchTimeSec,
      duration_sec: durationSec,
      completed,
      watched_at: new Date().toISOString(),
    },
    { onConflict: "user_id,anilist_id,episode_number" },
  );
}

export async function getWatchHistory(userId: string, limit = 50) {
  return supabase
    .from("watch_history")
    .select("*")
    .eq("user_id", userId)
    .order("watched_at", { ascending: false })
    .limit(limit);
}

export async function getEpisodeProgress(
  userId: string,
  anilistId: number,
  episodeNumber: number,
) {
  return supabase
    .from("watch_history")
    .select("watch_time_sec, duration_sec, completed")
    .eq("user_id", userId)
    .eq("anilist_id", anilistId)
    .eq("episode_number", episodeNumber)
    .maybeSingle();
}

// ── User List (المفضلة) ─────────────────────────────────────────
export async function upsertUserList(
  userId: string,
  anilistId: number,
  status: UserListRow["status"],
  score?: number,
) {
  return supabase.from("user_list").upsert(
    {
      user_id: userId,
      anilist_id: anilistId,
      status,
      user_score: score,
      updated_at: new Date().toISOString(),
    },
    { onConflict: "user_id,anilist_id" },
  );
}

export async function getUserList(userId: string, status?: string) {
  let q = supabase
    .from("user_list")
    .select("*")
    .eq("user_id", userId)
    .order("updated_at", { ascending: false });
  if (status) q = q.eq("status", status);
  return q;
}

export async function removeFromUserList(userId: string, anilistId: number) {
  return supabase
    .from("user_list")
    .delete()
    .eq("user_id", userId)
    .eq("anilist_id", anilistId);
}

// ── Anime Cache ────────────────────────────────────────────────
export async function upsertAnime(anime: Partial<AnimeRow> & { anilist_id: number; title_romaji: string }) {
  return supabase.from("anime").upsert(anime, { onConflict: "anilist_id" });
}

export async function getAnime(anilistId: number) {
  return supabase
    .from("anime")
    .select("*")
    .eq("anilist_id", anilistId)
    .maybeSingle();
}

// Supabase has been replaced with Replit Auth.
// This file is kept as a stub to avoid import errors in any remaining references.

export const isSupabaseConfigured = false;

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

export type Episode = {
  id: string;
  anilist_id: number;
  episode_number: number;
  title: string;
  thumbnail: string;
  server_url: string;
  server_name: string;
  quality: string;
  source: string;
  priority: number;
  episode_page_url?: string;
  watch_url?: string;
  created_at: string;
};

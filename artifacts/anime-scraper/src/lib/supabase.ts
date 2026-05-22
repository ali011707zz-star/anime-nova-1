import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lylapkfnizpjoyutnlin.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5bGFwa2ZuaXpwam95dXRubGluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzg0OTQxNDYsImV4cCI6MjA5NDA3MDE0Nn0.VXSyeqOBaCSR9SD8R7goF3zsleeDbvb8MLnrtOC5Keo';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

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

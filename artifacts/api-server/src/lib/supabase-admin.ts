import { createClient } from "@supabase/supabase-js";

const SUPABASE_URL         = process.env.SUPABASE_URL         || "";
const SUPABASE_SERVICE_KEY = process.env.SUPABASE_SERVICE_KEY || "";
const SUPABASE_ANON_KEY    = process.env.SUPABASE_ANON_KEY    || "";

export const supabaseAdmin = SUPABASE_URL && SUPABASE_SERVICE_KEY
  ? createClient(SUPABASE_URL, SUPABASE_SERVICE_KEY, {
      auth: { autoRefreshToken: false, persistSession: false },
    })
  : ({
      auth: {
        getUser: async (_token: string) => ({ data: { user: null }, error: new Error("Supabase not configured") }),
        admin: { deleteUser: async (_id: string) => ({ error: new Error("Supabase not configured") }) },
      },
    } as any);

export const supabaseClient = SUPABASE_URL && SUPABASE_ANON_KEY
  ? createClient(SUPABASE_URL, SUPABASE_ANON_KEY)
  : null;

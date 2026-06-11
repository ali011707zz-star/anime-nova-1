import ws from "ws";
import { createClient } from "@supabase/supabase-js";

/* Fix: Node.js 20 has no native WebSocket — inject ws before Supabase client init */
if (typeof (global as any).WebSocket === "undefined") {
  (global as any).WebSocket = ws;
}

const SUPA_URL    = process.env.SUPABASE_URL || "";
const SUPA_SVC_KEY = process.env.SUPABASE_SERVICE_KEY || "";

export const supabaseAdmin =
  SUPA_URL && SUPA_SVC_KEY
    ? createClient(SUPA_URL, SUPA_SVC_KEY, {
        auth: { autoRefreshToken: false, persistSession: false },
      })
    : null;

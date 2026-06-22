/**
 * supabaseCacheClient.ts — PostgreSQL direct cache client (Replit migration)
 * Drop-in replacement for the Supabase REST cache client.
 */

import { sbSelect, sbInsert, sbUpsert, sbPatch, sbDelete } from "./supabaseClient.js";

export const isCacheDbReady = !!process.env.DATABASE_URL;

if (isCacheDbReady) {
  console.log("[cacheClient] ✅ PostgreSQL جاهز للكاش المشترك");
} else {
  console.warn("[cacheClient] ⚠️ DATABASE_URL غير موجود — الكاش L2 معطّل");
}

export const cacheSelect  = sbSelect;
export const cacheInsert  = sbInsert;
export const cacheUpsert  = sbUpsert;
export const cachePatch   = sbPatch;
export const cacheDelete  = sbDelete;

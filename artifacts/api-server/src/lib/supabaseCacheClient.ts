/**
 * supabaseCacheClient.ts — Cache client يعيد تصدير دوال supabaseClient
 * يعمل عبر Supabase REST API (لا يحتاج اتصال PostgreSQL مباشر)
 */

import { sbSelect, sbInsert, sbUpsert, sbPatch, sbDelete, isSupabaseReady } from "./supabaseClient.js";

export const isCacheDbReady = isSupabaseReady;

if (isCacheDbReady) {
  console.log("[cacheClient] ✅ Supabase جاهز للكاش المشترك");
} else {
  console.warn("[cacheClient] ⚠️ Supabase غير مُهيَّأ — الكاش L2 معطّل");
}

export const cacheSelect  = sbSelect;
export const cacheInsert  = sbInsert;
export const cacheUpsert  = sbUpsert;
export const cachePatch   = sbPatch;
export const cacheDelete  = sbDelete;

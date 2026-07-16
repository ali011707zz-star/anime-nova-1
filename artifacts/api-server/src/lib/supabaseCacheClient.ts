/**
 * supabaseCacheClient.ts — Cache client يعيد تصدير دوال supabaseClient
 * يعمل عبر Supabase REST API أو PostgreSQL مباشرة (DATABASE_URL)
 */

import { sbSelect, sbInsert, sbUpsert, sbPatch, sbDelete, isSupabaseReady } from "./supabaseClient.js";

export function isCacheDbReady(): boolean {
  return isSupabaseReady() || !!process.env.DATABASE_URL;
}

// سيُطبَع بعد تحميل env
setTimeout(() => {
  if (isSupabaseReady()) {
    console.log("[cacheClient] ✅ Supabase جاهز للكاش المشترك");
  } else if (process.env.DATABASE_URL) {
    console.log("[cacheClient] ✅ PostgreSQL جاهز للكاش المشترك (Replit DB)");
  } else {
    console.warn("[cacheClient] ⚠️ لا يوجد اتصال بقاعدة البيانات — الكاش L2 معطّل");
  }
}, 500);

export const cacheSelect  = sbSelect;
export const cacheInsert  = sbInsert;
export const cacheUpsert  = sbUpsert;
export const cachePatch   = sbPatch;
export const cacheDelete  = sbDelete;

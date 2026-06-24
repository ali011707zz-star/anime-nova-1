/**
 * supabaseCacheClient.ts — Cache client يعيد تصدير دوال supabaseClient
 * يعمل عبر Supabase REST API (لا يحتاج اتصال PostgreSQL مباشر)
 */

import { sbSelect, sbInsert, sbUpsert, sbPatch, sbDelete, isSupabaseReady } from "./supabaseClient.js";

export function isCacheDbReady(): boolean {
  return isSupabaseReady();
}

// سيُطبَع بعد تحميل env من Orkestr (داخل createApp أو بعد bootstrap)
setTimeout(() => {
  if (isSupabaseReady()) {
    console.log("[cacheClient] ✅ Supabase جاهز للكاش المشترك");
  } else {
    console.warn("[cacheClient] ⚠️ Supabase غير مُهيَّأ — الكاش L2 معطّل");
  }
}, 500);

export const cacheSelect  = sbSelect;
export const cacheInsert  = sbInsert;
export const cacheUpsert  = sbUpsert;
export const cachePatch   = sbPatch;
export const cacheDelete  = sbDelete;

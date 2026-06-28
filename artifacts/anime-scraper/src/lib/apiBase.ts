/**
 * apiBase.ts — مصدر URL الـ API الموحد
 *
 * الأولوية:
 * 1. VITE_API_URL إذا كان مضبوطاً (نشر خارجي)
 * 2. "" دائماً (مسار نسبي → نفس الأصل)
 *    - في dev: Vite proxy يوجّهه لـ localhost:8080
 *    - في production (Start application): يذهب مباشرةً لـ port 5000
 *
 * ملاحظة: لا نستخدم Orkestr كـ API_BASE لأن directUrls المشفّرة
 * (video-proxy/hls-proxy) تستخدم APP_SECRET الخاص بكل سيرفر —
 * إذا اختلف السيرفر بين fetch-source والـ proxy ينتج عنه خطأ 400.
 */
const envUrl = (import.meta.env.VITE_API_URL as string | undefined)?.replace(/\/$/, "") ?? "";

const isValidEnvUrl =
  envUrl.length > 0 &&
  !envUrl.includes("alwaysdata") &&
  !envUrl.includes("localhost");

export const API_BASE: string = isValidEnvUrl ? envUrl : "";

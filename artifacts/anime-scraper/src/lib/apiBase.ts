/**
 * apiBase.ts — مصدر URL الـ API الموحد
 *
 * الأولوية:
 * 1. VITE_API_URL إذا كان يشير لـ orkestr (صحيح)
 * 2. في production: https://anime-nova.orkestr.run دائماً (ثابت)
 * 3. في dev: "" (مسار نسبي → Vite proxy يوجهه لـ localhost:8080)
 */
const PROD_BACKEND = "https://anime-nova.orkestr.run";

const envUrl = (import.meta.env.VITE_API_URL as string | undefined)?.replace(/\/$/, "") ?? "";

const isValidEnvUrl =
  envUrl.length > 0 &&
  !envUrl.includes("alwaysdata") &&
  !envUrl.includes("localhost");

export const API_BASE: string = isValidEnvUrl
  ? envUrl
  : import.meta.env.PROD
    ? PROD_BACKEND
    : "";

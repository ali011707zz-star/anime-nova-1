/**
 * apiBase.ts — مصدر URL الـ API الموحد
 *
 * الأولوية:
 * 1. VITE_API_URL إذا ضُبط في Cloudflare Pages أو .env
 * 2. في production: https://anime-nova.orkestr.run تلقائياً (fallback)
 * 3. في dev: "" (مسار نسبي → Vite proxy يوجهه لـ localhost:8080)
 */
const envUrl = (import.meta.env.VITE_API_URL as string | undefined)?.replace(/\/$/, "");

export const API_BASE: string =
  envUrl && envUrl.length > 0
    ? envUrl
    : import.meta.env.PROD
      ? "https://anime-nova.orkestr.run"
      : "";

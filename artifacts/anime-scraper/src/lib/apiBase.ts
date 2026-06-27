/**
 * apiBase.ts — مصدر URL الـ API الموحد
 *
 * في dev:  "" (مسار نسبي → Vite proxy يوجهه لـ localhost:8080)
 * في prod: VITE_API_URL (مثل https://api.nova-anime.com) أو "" إذا API على نفس الدومين
 */
export const API_BASE: string =
  (import.meta.env.VITE_API_URL as string | undefined)?.replace(/\/$/, "") ?? "";

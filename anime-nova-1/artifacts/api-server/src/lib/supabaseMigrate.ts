/**
 * supabaseMigrate.ts
 * لم تعد هناك حاجة لمزامنة يدوية — الكود يكتب مباشرة على Supabase REST.
 * هذا الملف محفوظ للتوافق فقط.
 */
import { logger } from "./logger.js";

export async function runSupabaseMigration(): Promise<void> {
  logger.info("[migrate] Supabase REST مباشر — لا حاجة لمزامنة");
}

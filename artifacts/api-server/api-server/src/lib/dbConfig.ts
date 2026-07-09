/**
 * dbConfig.ts — قراءة وكتابة إعدادات التطبيق من قاعدة البيانات
 * يُخزِّن القيم في app_config بشكل دائم — بدون حاجة لـ Replit Secrets
 */

import { sbSelect, sbUpsert } from "./supabaseClient.js";

const _cache = new Map<string, string>();
const _cacheTs = new Map<string, number>();
const CACHE_TTL = 60_000; // 60 ثانية

export async function getDbConfig(key: string): Promise<string | null> {
  const now = Date.now();
  const ts = _cacheTs.get(key) ?? 0;
  if (_cache.has(key) && now - ts < CACHE_TTL) return _cache.get(key)!;

  try {
    const rows = await sbSelect("app_config", { key: `eq.${key}` }, { limit: 1 });
    const val = rows[0]?.value ?? null;
    if (val) {
      _cache.set(key, val);
      _cacheTs.set(key, now);
    }
    return val;
  } catch {
    return null;
  }
}

export async function setDbConfig(key: string, value: string): Promise<void> {
  await sbUpsert("app_config", { key, value, updated_at: new Date().toISOString() }, "key");
  _cache.set(key, value);
  _cacheTs.set(key, Date.now());
}

export function clearDbConfigCache(key?: string): void {
  if (key) { _cache.delete(key); _cacheTs.delete(key); }
  else { _cache.clear(); _cacheTs.clear(); }
}

/** يقرأ من البيئة أولاً، ثم من DB — مع cache */
export async function getEnvOrDb(envKey: string, dbKey?: string): Promise<string> {
  return process.env[envKey] || await getDbConfig(dbKey ?? envKey.toLowerCase()) || "";
}

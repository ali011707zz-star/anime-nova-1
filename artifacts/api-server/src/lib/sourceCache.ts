/**
 * sourceCache.ts — نظام cache ذكي متعدد الطبقات للمصادر
 *
 * L1: Map في الذاكرة (instant, يُفقد عند restart)
 * L2: Replit PostgreSQL via Drizzle ORM (دائم، ينجو من restart)
 */

import { db } from "./db.js";
import { sourceCache as sourceCacheTable } from "@workspace/db";
import { eq, lt } from "drizzle-orm";

// ── TTL بالميلي ثانية لكل موقع ──────────────────────────────────
export const SITE_TTL: Record<string, number> = {
  animephoenix: 36 * 3_600_000,
  animedar:     24 * 3_600_000,
  kawaii:       24 * 3_600_000,
  animeify:      8 * 3_600_000,
  mitanime:      8 * 3_600_000,
  seepanel:      8 * 3_600_000,
  okanime:       5 * 3_600_000,
  animetime:     5 * 3_600_000,
  ristoanime:    5 * 3_600_000,
  anikoto:       5 * 3_600_000,
  anineko:       5 * 3_600_000,
  animewitcher:  5 * 3_600_000,
  animeday:      4 * 3_600_000,
  arabseed:      4 * 3_600_000,
  shahiid:       3 * 3_600_000,
  animelek:      3 * 3_600_000,
  toonstream:  1.5 * 3_600_000,
  starcima:      6 * 3_600_000,
  aflaam:       24 * 3_600_000,
  stardima:     12 * 3_600_000,
  vyla:          4 * 3_600_000,
  topcinemaa:    4 * 3_600_000,
  animeday_anim: 4 * 3_600_000,
  "2embed":      4 * 3_600_000,
};
const DEFAULT_TTL = 4 * 3_600_000;

const PERMANENT_URL_PATTERNS = [
  /mega\.nz\/embed/i,
  /vidmoly\.(to|biz)/i,
  /\.workers\.dev\//i,
  /drive\.google\.com/i,
  /af[13]\.downet\.net/i,
  /video\.kawaii-anime\.com/i,
];

function parseUrlExpiry(url: string): number | null {
  for (const pat of PERMANENT_URL_PATTERNS) {
    if (pat.test(url)) return Date.now() + 7 * 24 * 3_600_000;
  }
  const vt = url.match(/[?&]validto=(\d{10})\b/);
  if (vt) return parseInt(vt[1]) * 1000;
  const ex = url.match(/[?&]expires=(\d{10})\b/);
  if (ex) return parseInt(ex[1]) * 1000;
  const exMs = url.match(/[?&]expires=(\d{13})\b/);
  if (exMs) return parseInt(exMs[1]);
  const starExp = url.match(/[?&]exp=(\d{10})\b/);
  if (starExp) return parseInt(starExp[1]) * 1000;
  return null;
}

export function computeExpiry(site: string, sources: any[]): number {
  const siteDefault = Date.now() + (SITE_TTL[site] ?? DEFAULT_TTL);
  let minExpiry = siteDefault;

  for (const src of sources) {
    for (const rawField of [src.directUrl, src.url, src.proxyUrl] as (string | undefined)[]) {
      if (!rawField) continue;
      let url = rawField;
      if (url.startsWith("/api/")) {
        try {
          const u   = new URLSearchParams(url.split("?")[1] ?? "");
          const inner = u.get("url");
          if (!inner) continue;
          url = inner;
        } catch { continue; }
      }
      const exp = parseUrlExpiry(url);
      if (exp && exp > Date.now() + 60_000) {
        const safe = exp - 10 * 60_000;
        if (safe < minExpiry) minExpiry = safe;
      }
    }
  }
  return minExpiry;
}

// ── L1: ذاكرة العملية ──
const l1 = new Map<string, { sources: any[]; expiresAt: number }>();

setInterval(() => {
  const now = Date.now();
  for (const [k, v] of l1) { if (now > v.expiresAt) l1.delete(k); }
}, 10 * 60_000);

// ── L2: PostgreSQL via Drizzle ──
async function pgGet(cacheKey: string): Promise<{ sources: any[]; expiresAt: number } | null> {
  try {
    const rows = await db.select({
      sources: sourceCacheTable.sources,
      expiresAt: sourceCacheTable.expiresAt,
    }).from(sourceCacheTable).where(eq(sourceCacheTable.cacheKey, cacheKey)).limit(1);
    if (!rows[0]) return null;
    return { sources: rows[0].sources as any[], expiresAt: Number(rows[0].expiresAt) };
  } catch { return null; }
}

async function pgUpsert(cacheKey: string, site: string, sources: any[], expiresAt: number): Promise<void> {
  try {
    await db.insert(sourceCacheTable).values({
      cacheKey,
      site,
      sources,
      fetchedAt: Date.now(),
      expiresAt,
    }).onConflictDoUpdate({
      target: sourceCacheTable.cacheKey,
      set: { sources, fetchedAt: Date.now(), expiresAt },
    });
  } catch { /* silent */ }
}

async function pgDeleteExpired(): Promise<void> {
  try {
    await db.delete(sourceCacheTable).where(lt(sourceCacheTable.expiresAt, Date.now()));
  } catch { /* silent */ }
}

setInterval(pgDeleteExpired, 3_600_000);

console.log("[sourceCache] Replit PostgreSQL L2 cache مفعّل ✓");

// ── صنع مفتاح cache ──
export function makeSourceCacheKey(site: string, title: string, ep: number): string {
  const norm = title
    .toLowerCase()
    .replace(/[^a-z0-9 ]/g, " ")
    .trim()
    .split(/\s+/)
    .slice(0, 5)
    .join("-");
  return `${site}:${norm}:ep${ep}`;
}

export function makeAnimCacheKey(site: string, tmdbId: string, type: string, season: number, ep: number): string {
  return type === "movie"
    ? `${site}:anim-movie:${tmdbId}`
    : `${site}:anim-tv:${tmdbId}:s${season}e${ep}`;
}

// ── قراءة من Cache (L1 → L2) ──
export async function getFromSourceCache(
  key: string
): Promise<{ sources: any[]; expiresAt: number } | null> {
  const m = l1.get(key);
  if (m && Date.now() < m.expiresAt) return m;
  l1.delete(key);

  const row = await pgGet(key);
  if (!row) return null;

  if (Date.now() > row.expiresAt) {
    db.delete(sourceCacheTable).where(eq(sourceCacheTable.cacheKey, key)).catch(() => {});
    return null;
  }

  l1.set(key, { sources: row.sources, expiresAt: row.expiresAt });
  return { sources: row.sources, expiresAt: row.expiresAt };
}

// ── كتابة في Cache ──
export async function setSourceCache(
  key: string,
  site: string,
  sources: any[]
): Promise<void> {
  if (!sources.length) return;
  const expiresAt = computeExpiry(site, sources);
  l1.set(key, { sources, expiresAt });
  pgUpsert(key, site, sources, expiresAt);
}

export function shouldRefreshCache(expiresAt: number): boolean {
  return expiresAt - Date.now() < 20 * 60_000;
}

export function getCacheStats(): { l1Size: number; pgEnabled: boolean } {
  return { l1Size: l1.size, pgEnabled: true };
}

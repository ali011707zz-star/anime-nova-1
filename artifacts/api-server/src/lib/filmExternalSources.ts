/**
 * filmExternalSources.ts — Live On-Demand Catalog & Native Stream Resolver for NOVA FILM ONLY
 *
 * Integrates:
 *  - TopCinema (dynamic origin via https://web6.topcinema.fan/ -> e.g. https://topcinemaa.one)
 *  - EgyDead   (https://egydead.here)
 *
 * Architecture guarantees:
 *  - ZERO database storage of temporary video links (live on-demand extraction only)
 *  - Bounded LRU caches with short TTLs (zero memory leaks on VPS)
 *  - Cross-source title normalization & strict deduplication across Vault, TopCinema, and EgyDead
 *  - Deterministic positive numeric external IDs (800_000_000 .. 989_999_999) 100% compatible with NOVA FILM mobile app
 *  - Direct native HLS/MP4 extraction (OkStream, UpDown, FastVid/EarnVids, Uqload, OK.ru, VOE, StreamWish, StreamTape, etc.)
 */

import fs from "node:fs";

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36";

const TOPCINEMA_ENTRY_URL = "https://web6.topcinema.fan/";
const EGYDEAD_BASE = "https://egydead.here";

export const EXT_FILM_ID_MIN = 800_000_000;
const EXT_ID_SPAN = 190_000_000;
const REGISTRY_DISK_PATH = "/tmp/nova-film-ext-registry.json";
const MAX_REGISTRY_SIZE = 15_000;
const MAX_CACHE_ENTRIES = 300;
const PAGE_CACHE_TTL_MS = 12 * 60_000;
const DETAIL_CACHE_TTL_MS = 8 * 60_000;
const STREAM_CACHE_TTL_MS = 4 * 60_000;

export type ExternalMediaType = "movie" | "series" | "animation";

export interface ExternalFilmSummary {
  id: number;
  tmdbType: "movie" | "tv";
  mediaType: ExternalMediaType;
  titleAr: string;
  titleEn: string;
  overviewAr: string;
  posterUrl: string;
  backdropUrl: string;
  year: number;
  imdbRating: number;
  voteCount: number;
  popularity: number;
  qualityBadge: string;
  audioLabel: string;
  categoryLabel: string;
  genres: string[];
  durationOrSeasons: string;
}

export interface ExternalRegistryEntry {
  id: number;
  canonicalKey: string;
  tmdbType: "movie" | "tv";
  mediaType: ExternalMediaType;
  titleAr: string;
  titleEn: string;
  posterUrl: string;
  year: number;
  imdbRating: number;
  qualityBadge: string;
  audioLabel: string;
  categoryLabel: string;
  genres: string[];
  topcinemaUrl?: string;
  egydeadUrl?: string;
  updatedAt: number;
}

export interface ExternalEpisodeRef {
  seasonNumber: number;
  episodeNumber: number;
  titleAr: string;
  titleEn: string;
  topcinemaUrl?: string;
  egydeadUrl?: string;
}

export interface ExternalSeasonInfo {
  seasonNumber: number;
  name: string;
  episodeCount: number;
  topcinemaUrl?: string;
  egydeadUrl?: string;
  episodes?: ExternalEpisodeRef[];
}

export interface ClientExtractDescriptor {
  embedUrl: string;
  referer: string;
  tier?: string;
  hostKind?: "standard" | "okru" | "fireplayer";
}

export interface ExternalResolvedSource {
  site: string;
  label: string;
  tier: string;
  url: string;
  directUrl: string;
  proxyUrl?: string;
  isEmbed: boolean;
  type?: "hls" | "mp4";
  headers?: Record<string, string>;
  hardsubbed?: boolean;
  subtitleUrl?: string;
  clientExtract?: ClientExtractDescriptor;
}

// ── Bounded LRU Map helper ──────────────────────────────────────────────────
class BoundedCache<V> {
  private map = new Map<string, { value: V; expiresAt: number }>();
  constructor(private readonly maxSize: number) {}

  get(key: string): V | undefined {
    const hit = this.map.get(key);
    if (!hit) return undefined;
    if (hit.expiresAt < Date.now()) {
      this.map.delete(key);
      return undefined;
    }
    this.map.delete(key);
    this.map.set(key, hit);
    return hit.value;
  }

  set(key: string, value: V, ttlMs: number): void {
    if (this.map.has(key)) this.map.delete(key);
    this.map.set(key, { value, expiresAt: Date.now() + ttlMs });
    while (this.map.size > this.maxSize) {
      const oldest = this.map.keys().next().value;
      if (oldest !== undefined) this.map.delete(oldest);
      else break;
    }
  }
}

const pageCache = new BoundedCache<ExternalFilmSummary[]>(MAX_CACHE_ENTRIES);
const detailCache = new BoundedCache<any>(200);
const seasonEpsCache = new BoundedCache<ExternalEpisodeRef[]>(300);
const streamCache = new BoundedCache<ExternalResolvedSource[]>(150);

// ── External Title Registry (bounded LRU + debounced /tmp snapshot) ─────────
const registryById = new Map<number, ExternalRegistryEntry>();
let registryDirty = false;
let registrySaveTimer: ReturnType<typeof setTimeout> | null = null;

function loadRegistryFromDisk(): void {
  try {
    if (!fs.existsSync(REGISTRY_DISK_PATH)) return;
    const raw = fs.readFileSync(REGISTRY_DISK_PATH, "utf8");
    const arr = JSON.parse(raw);
    if (!Array.isArray(arr)) return;
    for (const item of arr) {
      if (item && typeof item.id === "number" && item.id >= EXT_FILM_ID_MIN) {
        registryById.set(item.id, item);
      }
    }
  } catch {
    // non-fatal
  }
}
loadRegistryFromDisk();

function scheduleRegistryFlush(): void {
  registryDirty = true;
  if (registrySaveTimer) return;
  registrySaveTimer = setTimeout(() => {
    registrySaveTimer = null;
    if (!registryDirty) return;
    registryDirty = false;
    try {
      const data = JSON.stringify(Array.from(registryById.values()).slice(-MAX_REGISTRY_SIZE));
      fs.writeFile(REGISTRY_DISK_PATH, data, "utf8", () => {});
    } catch {
      // non-fatal
    }
  }, 15_000);
  if (typeof (registrySaveTimer as any).unref === "function") {
    (registrySaveTimer as any).unref();
  }
}

export function isExternalFilmId(id: number): boolean {
  return Number.isFinite(id) && id >= EXT_FILM_ID_MIN && id < EXT_FILM_ID_MIN + EXT_ID_SPAN;
}

export function getExternalRegistryEntry(id: number): ExternalRegistryEntry | undefined {
  const hit = registryById.get(id);
  if (!hit) return undefined;
  registryById.delete(id);
  registryById.set(id, hit);
  return hit;
}

function upsertRegistry(entry: ExternalRegistryEntry): ExternalRegistryEntry {
  const existing = registryById.get(entry.id);
  if (existing) {
    const merged: ExternalRegistryEntry = {
      ...existing,
      ...entry,
      posterUrl: entry.posterUrl || existing.posterUrl,
      titleEn: entry.titleEn || existing.titleEn,
      topcinemaUrl: entry.topcinemaUrl || existing.topcinemaUrl,
      egydeadUrl: entry.egydeadUrl || existing.egydeadUrl,
      imdbRating: Math.max(entry.imdbRating || 0, existing.imdbRating || 0) || 7.2,
      genres: entry.genres?.length ? entry.genres : existing.genres,
      updatedAt: Date.now(),
    };
    registryById.delete(entry.id);
    registryById.set(entry.id, merged);
    scheduleRegistryFlush();
    return merged;
  }
  registryById.set(entry.id, entry);
  while (registryById.size > MAX_REGISTRY_SIZE) {
    const oldest = registryById.keys().next().value;
    if (oldest !== undefined) registryById.delete(oldest);
    else break;
  }
  scheduleRegistryFlush();
  return entry;
}

// ── Safe URL & Text Helpers ─────────────────────────────────────────────────
export function safeEncodeUrl(url: string): string {
  const trimmed = String(url || "").trim();
  if (!trimmed) return "";
  return trimmed.replace(/[^\x00-\x7F]+/g, (chunk) => encodeURIComponent(chunk)).replace(/\s+/g, "%20");
}

function decodeHtmlEntities(input: string): string {
  return String(input || "")
    .replace(/&#(\d+);/g, (_m, n) => {
      const code = Number.parseInt(n, 10);
      return Number.isFinite(code) ? String.fromCharCode(code) : "";
    })
    .replace(/&#x([0-9a-f]+);/gi, (_m, h) => {
      const code = Number.parseInt(h, 16);
      return Number.isFinite(code) ? String.fromCharCode(code) : "";
    })
    .replace(/&amp;/g, "&")
    .replace(/&quot;/g, '"')
    .replace(/&#039;|&apos;/g, "'")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&nbsp;/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function fnv1a32(str: string): number {
  let hash = 0x811c9dc5;
  for (let i = 0; i < str.length; i++) {
    hash ^= str.charCodeAt(i);
    hash = Math.imul(hash, 0x01000193);
  }
  return hash >>> 0;
}

function computeExternalId(canonicalKey: string): number {
  return EXT_FILM_ID_MIN + (fnv1a32(canonicalKey) % EXT_ID_SPAN);
}

// ── Title Normalization & Cross-Source Deduplication ────────────────────────
export function extractYearFromTitle(raw: string): number {
  const matches = String(raw || "").match(/\b(19[5-9]\d|20[0-3]\d)\b/g);
  if (!matches || matches.length === 0) return 0;
  return Number.parseInt(matches[matches.length - 1], 10) || 0;
}

export function cleanRawTitle(raw: string): string {
  let t = decodeHtmlEntities(raw);
  // Remove site suffixes
  t = t.replace(/\s*[-–|]\s*(توب سينما|ايجي ديد|إيجي ديد|EgyDead|TopCinema).*$/i, "");
  // Remove leading prefixes
  t = t.replace(/^(مشاهدة\s+وتحميل\s+|مشاهدة\s+|تحميل\s+)?(فيلم|مسلسل|برنامج|عرض|انمي|أنمي|كرتون)\s+/i, "");
  // Remove season & episode segments for clean title
  t = t.replace(/\s+الموسم\s+[\u0600-\u06FF\d]+.*$/i, "");
  t = t.replace(/\s+الجزء\s+[\u0600-\u06FF\d]+.*$/i, "");
  t = t.replace(/\s+الحلقة\s+[\u0600-\u06FF\d]+.*$/i, "");
  t = t.replace(/\s+Season\s+\d+.*$/i, "");
  t = t.replace(/\s+S\d{1,2}E\d{1,3}.*$/i, "");
  // Remove trailing boilerplate words
  t = t.replace(/\s+(مترجم|مترجمة|مدبلج|مدبلجة|اون\s*لاين|أون\s*لاين|كامل|كاملة|بجودة\s+عالية|والاخيرة|والأخيرة|الاخيرة|الأخيرة|HD|FHD|WEB-DL|BluRay|1080p|720p|4K)(\s+.*)?$/i, "");
  // Remove trailing year
  t = t.replace(/\s*\(?(19[5-9]\d|20[0-3]\d)\)?\s*$/g, "");
  t = t.replace(/\s{2,}/g, " ").trim();
  return t || decodeHtmlEntities(raw);
}

function extractEnglishPart(clean: string): string {
  const m = clean.match(/[A-Za-z][A-Za-z0-9\s:'\-&.,!?]{1,}/g);
  if (!m) return "";
  return m.join(" ").replace(/\s+/g, " ").trim();
}

export function canonicalTitleKey(title: string, tmdbType: "movie" | "tv", year?: number): string {
  const cleaned = cleanRawTitle(title);
  const en = extractEnglishPart(cleaned);
  // If an English title exists with >=3 alpha chars, normalize on English so Arabic+English variants match!
  const base = en.replace(/[^A-Za-z0-9]/g, "").length >= 3 ? en : cleaned;
  const norm = base
    .toLowerCase()
    .replace(/[\u064B-\u065F\u0670]/g, "")
    .replace(/[أإآ]/g, "ا")
    .replace(/ة/g, "ه")
    .replace(/ى/g, "ي")
    .replace(/^(the|a|an)\s+/i, "")
    .replace(/[^\p{L}\p{N}]+/gu, "")
    .trim();
  const safeNorm = norm || fnv1a32(title).toString(36);
  // For movies include year only if available to separate remakes, for TV omit year
  if (tmdbType === "movie" && year && year >= 1950 && year <= 2035) {
    return `m:${safeNorm}:${year}`;
  }
  return `${tmdbType === "tv" ? "s" : "m"}:${safeNorm}`;
}

export function deduplicateFilmSummaries<T extends ExternalFilmSummary>(
  lists: T[][],
  globalSeen?: Set<string>,
  limit = 60,
): T[] {
  const seen = globalSeen ? new Set<string>(globalSeen) : new Set<string>();
  const out: T[] = [];
  for (const list of lists) {
    for (const item of list) {
      if (!item || !item.titleAr || !item.posterUrl || item.posterUrl.includes("images.jpg")) continue;
      const keyWithYear = canonicalTitleKey(item.titleEn || item.titleAr, item.tmdbType, item.year);
      const keyNoYear = canonicalTitleKey(item.titleEn || item.titleAr, item.tmdbType);
      const idKey = `id:${item.tmdbType}:${item.id}`;
      if (seen.has(idKey) || seen.has(keyWithYear) || seen.has(keyNoYear)) continue;
      seen.add(idKey);
      seen.add(keyWithYear);
      seen.add(keyNoYear);
      if (globalSeen) {
        globalSeen.add(idKey);
        globalSeen.add(keyWithYear);
        globalSeen.add(keyNoYear);
      }
      out.push(item);
      if (out.length >= limit) return out;
    }
  }
  return out;
}

// ── Dynamic TopCinema Origin Resolver ───────────────────────────────────────
let cachedTopCinemaOrigin = "https://topcinemaa.one";
let cachedTopCinemaOriginAt = 0;

export async function getTopCinemaOrigin(): Promise<string> {
  if (Date.now() - cachedTopCinemaOriginAt < 30 * 60_000 && cachedTopCinemaOrigin) {
    return cachedTopCinemaOrigin;
  }
  try {
    const res = await fetch(TOPCINEMA_ENTRY_URL, {
      headers: { "User-Agent": BROWSER_UA },
      redirect: "follow",
      signal: AbortSignal.timeout(6_000),
    });
    if (res.url) {
      const origin = new URL(res.url).origin;
      if (origin.startsWith("http")) {
        cachedTopCinemaOrigin = origin;
        cachedTopCinemaOriginAt = Date.now();
        return origin;
      }
    }
  } catch {
    // fallback to last known working origin
  }
  return cachedTopCinemaOrigin;
}

function normalizeUrlOrigin(url: string, newOrigin: string): string {
  try {
    const u = new URL(safeEncodeUrl(url));
    const o = new URL(newOrigin);
    if (u.hostname.includes("topcinema")) {
      u.protocol = o.protocol;
      u.hostname = o.hostname;
      u.port = o.port;
    }
    return u.toString();
  } catch {
    return safeEncodeUrl(url);
  }
}

// ── Arabic Ordinal Season Number Parser ─────────────────────────────────────
const ARABIC_ORDINALS: Array<[RegExp, number]> = [
  [/الموسم\s+(?:الحادي|الواحد)\s+عشر|الموسم\s+11\b/, 11],
  [/الموسم\s+الثاني\s+عشر|الموسم\s+12\b/, 12],
  [/الموسم\s+الثالث\s+عشر|الموسم\s+13\b/, 13],
  [/الموسم\s+الرابع\s+عشر|الموسم\s+14\b/, 14],
  [/الموسم\s+الخامس\s+عشر|الموسم\s+15\b/, 15],
  [/الموسم\s+(?:الاول|الأول|1\b)/, 1],
  [/الموسم\s+(?:الثاني|التاني|2\b)/, 2],
  [/الموسم\s+(?:الثالث|التالت|3\b)/, 3],
  [/الموسم\s+(?:الرابع|4\b)/, 4],
  [/الموسم\s+(?:الخامس|5\b)/, 5],
  [/الموسم\s+(?:السادس|6\b)/, 6],
  [/الموسم\s+(?:السابع|7\b)/, 7],
  [/الموسم\s+(?:الثامن|التامن|8\b)/, 8],
  [/الموسم\s+(?:التاسع|9\b)/, 9],
  [/الموسم\s+(?:العاشر|10\b)/, 10],
];

function parseSeasonNumberFromText(text: string): number {
  const decoded = decodeHtmlEntities(text);
  for (const [rx, num] of ARABIC_ORDINALS) {
    if (rx.test(decoded)) return num;
  }
  const m = decoded.match(/(?:الموسم|season|s)\s*[-_:]?\s*(\d{1,2})\b/i);
  if (m) return Math.max(1, Number.parseInt(m[1], 10) || 1);
  return 1;
}

function parseEpisodeNumberFromText(text: string): number {
  const decoded = decodeHtmlEntities(text);
  const m =
    decoded.match(/الحلقة\s*[-_:]?\s*(\d{1,4})/) ||
    decoded.match(/episode\s*[-_:]?\s*(\d{1,4})/i) ||
    decoded.match(/\bep?\.?\s*(\d{1,4})\b/i);
  if (m) return Math.max(1, Number.parseInt(m[1], 10) || 1);
  return 1;
}

// ── Category Mapping for TopCinema & EgyDead ────────────────────────────────
type CategorySpec = {
  tmdbType: "movie" | "tv";
  mediaType: ExternalMediaType;
  categoryLabel: string;
  audioLabel: string;
  topcinemaPath?: string;
  egydeadPath?: string;
};

const CATEGORY_MAP: Record<string, CategorySpec> = {
  movie: {
    tmdbType: "movie",
    mediaType: "movie",
    categoryLabel: "أفلام أجنبية",
    audioLabel: "مترجم",
    topcinemaPath: "/category/افلام-اجنبي-8/",
    egydeadPath: "/category/افلام-اجنبي/",
  },
  foreign_movies: {
    tmdbType: "movie",
    mediaType: "movie",
    categoryLabel: "أفلام أجنبية",
    audioLabel: "مترجم",
    topcinemaPath: "/category/افلام-اجنبي-8/",
    egydeadPath: "/category/افلام-اجنبي/",
  },
  arabic_movies: {
    tmdbType: "movie",
    mediaType: "movie",
    categoryLabel: "أفلام عربية",
    audioLabel: "عربي",
    egydeadPath: "/category/افلام-عربي/",
  },
  turkish_movies: {
    tmdbType: "movie",
    mediaType: "movie",
    categoryLabel: "أفلام تركية",
    audioLabel: "مترجم",
    egydeadPath: "/category/افلام-تركية/",
  },
  indian_movies: {
    tmdbType: "movie",
    mediaType: "movie",
    categoryLabel: "أفلام هندية",
    audioLabel: "مترجم",
    egydeadPath: "/category/افلام-هندي/",
  },
  asian_movies: {
    tmdbType: "movie",
    mediaType: "movie",
    categoryLabel: "أفلام آسيوية",
    audioLabel: "مترجم",
    topcinemaPath: "/category/افلام-اسيوي/",
    egydeadPath: "/category/افلام-اسيوية/",
  },
  animation_movies: {
    tmdbType: "movie",
    mediaType: "animation",
    categoryLabel: "أفلام أنمي",
    audioLabel: "مترجم",
    topcinemaPath: "/category/افلام-انمي-2/",
    egydeadPath: "/category/افلام-انمي/",
  },
  series: {
    tmdbType: "tv",
    mediaType: "series",
    categoryLabel: "مسلسلات أجنبية",
    audioLabel: "مترجم",
    topcinemaPath: "/category/مسلسلات-اجنبي/",
    egydeadPath: "/category/مسلسلات-اجنبي/",
  },
  foreign_series: {
    tmdbType: "tv",
    mediaType: "series",
    categoryLabel: "مسلسلات أجنبية",
    audioLabel: "مترجم",
    topcinemaPath: "/category/مسلسلات-اجنبي/",
    egydeadPath: "/category/مسلسلات-اجنبي/",
  },
  arabic_series: {
    tmdbType: "tv",
    mediaType: "series",
    categoryLabel: "مسلسلات عربية",
    audioLabel: "عربي",
    egydeadPath: "/category/مسلسلات-عربي/",
  },
  turkish_series: {
    tmdbType: "tv",
    mediaType: "series",
    categoryLabel: "مسلسلات تركية",
    audioLabel: "مترجم",
    egydeadPath: "/category/مسلسلات-تركية/",
  },
  indian_series: {
    tmdbType: "tv",
    mediaType: "series",
    categoryLabel: "مسلسلات هندية",
    audioLabel: "مترجم",
    egydeadPath: "/category/مسلسلات-هندية/",
  },
  asian_series: {
    tmdbType: "tv",
    mediaType: "series",
    categoryLabel: "مسلسلات آسيوية",
    audioLabel: "مترجم",
    topcinemaPath: "/category/مسلسلات-اسيوية/",
    egydeadPath: "/category/مسلسلات-اسيوية/",
  },
  dubbed_series: {
    tmdbType: "tv",
    mediaType: "series",
    categoryLabel: "مسلسلات مدبلجة",
    audioLabel: "مدبلج",
    egydeadPath: "/category/مسلسلات-مدبلجة/",
  },
  animation_series: {
    tmdbType: "tv",
    mediaType: "animation",
    categoryLabel: "مسلسلات أنمي",
    audioLabel: "مترجم",
    topcinemaPath: "/category/anime-series/",
    egydeadPath: "/category/مسلسلات-انمي/",
  },
};

function registryEntryToSummary(e: ExternalRegistryEntry): ExternalFilmSummary {
  return {
    id: e.id,
    tmdbType: e.tmdbType,
    mediaType: e.mediaType,
    titleAr: e.titleAr,
    titleEn: e.titleEn || e.titleAr,
    overviewAr: "",
    posterUrl: e.posterUrl,
    backdropUrl: e.posterUrl,
    year: e.year || new Date().getFullYear(),
    imdbRating: e.imdbRating || 7.2,
    voteCount: 120,
    popularity: (e.year || 2024) * 10 + (e.imdbRating || 7.2),
    qualityBadge: e.qualityBadge || "1080p FHD",
    audioLabel: e.audioLabel || "مترجم",
    categoryLabel: e.categoryLabel || (e.tmdbType === "tv" ? "مسلسلات" : "أفلام"),
    genres: e.genres?.length ? e.genres : ["دراما"],
    durationOrSeasons: e.tmdbType === "tv" ? "مسلسل · مواسم متوفرة" : "فيلم كامل",
  };
}

// ── TopCinema HTML Card Parser ──────────────────────────────────────────────
function parseTopCinemaCards(
  html: string,
  origin: string,
  defaults: { tmdbType?: "movie" | "tv"; mediaType?: ExternalMediaType; categoryLabel?: string; audioLabel?: string },
): ExternalFilmSummary[] {
  const results: ExternalFilmSummary[] = [];
  const seenLocal = new Set<string>();
  const blocks = html.split(/<div\s+class="Small--Box">/i).slice(1);

  for (const block of blocks) {
    const chunk = block.slice(0, 1800);
    const hrefMatch = chunk.match(/<a\s+[^>]*href="([^"]+)"/i);
    if (!hrefMatch) continue;
    let url = hrefMatch[1].trim();
    if (!url.startsWith("http")) url = `${origin}${url.startsWith("/") ? "" : "/"}${url}`;
    const decodedUrl = (() => {
      try {
        return decodeURIComponent(url);
      } catch {
        return url;
      }
    })();

    const titleRaw =
      chunk.match(/<h3\s+class="title"[^>]*>([\s\S]*?)<\/h3>/i)?.[1]?.replace(/<[^>]+>/g, "") ||
      chunk.match(/title="([^"]+)"/i)?.[1] ||
      "";
    const decodedTitle = decodeHtmlEntities(titleRaw);
    if (!decodedTitle) continue;

    // Detect movie vs series
    const isSeries =
      defaults.tmdbType === "tv" ||
      /\/series\//i.test(decodedUrl) ||
      /مسلسل|الموسم|الحلقة/i.test(decodedTitle) ||
      /class="number Collection"/i.test(chunk);
    const tmdbType: "movie" | "tv" = isSeries ? "tv" : "movie";
    const isAnime =
      defaults.mediaType === "animation" ||
      /انمي|أنمي|كرتون|أنميشن/i.test(decodedTitle) ||
      /anime/i.test(decodedUrl);
    const mediaType: ExternalMediaType = isAnime ? "animation" : isSeries ? "series" : "movie";

    // Skip single episode cards in search if a season/series card will handle it — keep clean title
    const clean = cleanRawTitle(decodedTitle);
    const year = extractYearFromTitle(decodedTitle) || new Date().getFullYear();
    const key = canonicalTitleKey(clean, tmdbType, year);
    if (seenLocal.has(key)) continue;
    seenLocal.add(key);

    const posterRaw =
      chunk.match(/data-src="([^"]+)"/i)?.[1] ||
      chunk.match(/<img[^>]+src="([^"]+)"/i)?.[1] ||
      "";
    const posterUrl = posterRaw && !posterRaw.includes("cover.jpg") ? safeEncodeUrl(posterRaw) : "";
    if (!posterUrl) continue;

    const ratingMatch = chunk.match(/imdbRating[\s\S]*?(\d(?:\.\d)?)/i);
    const imdbRating = ratingMatch ? Math.min(9.9, Math.max(4.0, Number.parseFloat(ratingMatch[1]))) : 7.3;

    const liItems = [...chunk.matchAll(/<li[^>]*>([\s\S]*?)<\/li>/gi)]
      .map((m) => decodeHtmlEntities(m[1].replace(/<[^>]+>/g, "")))
      .filter(Boolean);
    const qualityBadge = liItems.find((x) => /1080|720|4k|web-dl|bluray|hd/i.test(x)) || "1080p FHD";
    const genres = liItems.filter((x) => !/1080|720|4k|web-dl|bluray|hd|\d\.\d/i.test(x)).slice(0, 3);
    const audioLabel = /مدبلج/i.test(decodedTitle) ? "مدبلج" : defaults.audioLabel || "مترجم";
    const enTitle = extractEnglishPart(clean);
    const id = computeExternalId(key);

    const entry = upsertRegistry({
      id,
      canonicalKey: key,
      tmdbType,
      mediaType,
      titleAr: clean,
      titleEn: enTitle || clean,
      posterUrl,
      year,
      imdbRating,
      qualityBadge,
      audioLabel,
      categoryLabel:
        defaults.categoryLabel === "أفلام أنمي" &&
        !/conan|gintama|mononoke|gundam|naruto|bleach|one piece|kimetsu|jujutsu|isekai|anime|أنمي|انمي|doraemon|digimon|pokemon|dragon ball|evangelion|ghibli|chainsaw|spy x|haikyu|slam dunk|hero academia|demon slayer|attack on titan|hunter|sailor moon/i.test(decodedTitle) &&
        !/[\u3040-\u30ff\u4e00-\u9faf]/.test(decodedTitle)
          ? "أفلام أنميشن"
          : defaults.categoryLabel || (isSeries ? "مسلسلات أجنبية" : "أفلام أجنبية"),
      genres: genres.length ? genres : ["دراما"],
      topcinemaUrl: url,
      updatedAt: Date.now(),
    });
    results.push(registryEntryToSummary(entry));
  }
  return results;
}

// ── EgyDead HTML Card Parser ────────────────────────────────────────────────
function parseEgyDeadCards(
  html: string,
  defaults: { tmdbType?: "movie" | "tv"; mediaType?: ExternalMediaType; categoryLabel?: string; audioLabel?: string },
): ExternalFilmSummary[] {
  const results: ExternalFilmSummary[] = [];
  const seenLocal = new Set<string>();
  const cardRx = /<a\s+href="(https?:\/\/egydead\.here\/[^"]+)"[^>]*class="show-card"[\s\S]*?<\/a>/gi;
  let m: RegExpExecArray | null;

  while ((m = cardRx.exec(html)) !== null) {
    const url = m[1].trim();
    const block = m[0];
    const rawTitle =
      block.match(/<p\s+class="title"[^>]*>([\s\S]*?)<\/p>/i)?.[1]?.replace(/<[^>]+>/g, "") ||
      block.match(/alt="([^"]+)"/i)?.[1] ||
      "";
    const decodedTitle = decodeHtmlEntities(rawTitle);
    if (!decodedTitle) continue;

    const categRaw = decodeHtmlEntities(
      block.match(/<span\s+class="categ"[^>]*>([\s\S]*?)<\/span>/i)?.[1]?.replace(/<[^>]+>/g, "") || "",
    );

    const isSeries =
      defaults.tmdbType === "tv" ||
      /\/(episode|season|serie|series)\//i.test(url) ||
      /مسلسل|الموسم|الحلقة/i.test(decodedTitle) ||
      /مسلسلات/i.test(categRaw);
    const tmdbType: "movie" | "tv" = isSeries ? "tv" : "movie";
    const isAnime =
      defaults.mediaType === "animation" ||
      /انمي|أنمي|كرتون|أنميشن/i.test(categRaw) ||
      /انمي|أنمي/i.test(decodedTitle);
    const mediaType: ExternalMediaType = isAnime ? "animation" : isSeries ? "series" : "movie";

    const clean = cleanRawTitle(decodedTitle);
    const year = extractYearFromTitle(decodedTitle) || new Date().getFullYear();
    const key = canonicalTitleKey(clean, tmdbType, year);
    // CRITICAL: Collapses multiple episodes of the same series into ONE clean series card!
    if (seenLocal.has(key)) continue;
    seenLocal.add(key);

    const posterRaw = block.match(/<img[^>]+src="([^"]+)"/i)?.[1] || "";
    const posterUrl = posterRaw
      ? safeEncodeUrl(posterRaw.startsWith("http") ? posterRaw : `${EGYDEAD_BASE}${posterRaw.startsWith("/") ? "" : "/"}${posterRaw}`)
      : "";
    if (!posterUrl) continue;

    const audioLabel = /مدبلج/i.test(decodedTitle) || /مدبلج/i.test(categRaw)
      ? "مدبلج"
      : /عربي/i.test(categRaw)
        ? "عربي"
        : defaults.audioLabel || "مترجم";
    const enTitle = extractEnglishPart(clean);
    const id = computeExternalId(key);

    const entry = upsertRegistry({
      id,
      canonicalKey: key,
      tmdbType,
      mediaType,
      titleAr: clean,
      titleEn: enTitle || clean,
      posterUrl,
      year,
      imdbRating: 7.3,
      qualityBadge: "1080p FHD",
      audioLabel,
      categoryLabel: defaults.categoryLabel || categRaw || (isSeries ? "مسلسلات" : "أفلام"),
      genres: categRaw ? [categRaw] : ["دراما"],
      egydeadUrl: url,
      updatedAt: Date.now(),
    });
    results.push(registryEntryToSummary(entry));
  }
  return results;
}

// ── Live Category Fetchers (with short TTL cache) ───────────────────────────
async function fetchTopCinemaCategory(pathSlug: string, page: number, spec: CategorySpec): Promise<ExternalFilmSummary[]> {
  const key = `tc:${pathSlug}:p${page}`;
  const cached = pageCache.get(key);
  if (cached) return cached;
  try {
    const origin = await getTopCinemaOrigin();
    const cleanPath = pathSlug.endsWith("/") ? pathSlug : `${pathSlug}/`;
    const url = safeEncodeUrl(page > 1 ? `${origin}${cleanPath}page/${page}/` : `${origin}${cleanPath}`);
    const res = await fetch(url, {
      headers: { "User-Agent": BROWSER_UA, Accept: "text/html,application/xhtml+xml" },
      signal: AbortSignal.timeout(7_500),
    });
    if (!res.ok) return [];
    const html = await res.text();
    const items = parseTopCinemaCards(html, origin, spec);
    if (items.length > 0) pageCache.set(key, items, PAGE_CACHE_TTL_MS);
    return items;
  } catch {
    return [];
  }
}

async function fetchEgyDeadCategory(pathSlug: string, page: number, spec: CategorySpec): Promise<ExternalFilmSummary[]> {
  const key = `ed:${pathSlug}:p${page}`;
  const cached = pageCache.get(key);
  if (cached) return cached;
  try {
    const cleanPath = pathSlug.endsWith("/") ? pathSlug : `${pathSlug}/`;
    const url = safeEncodeUrl(page > 1 ? `${EGYDEAD_BASE}${cleanPath}?page=${page}` : `${EGYDEAD_BASE}${cleanPath}`);
    const res = await fetch(url, {
      headers: { "User-Agent": BROWSER_UA, Accept: "text/html,application/xhtml+xml" },
      signal: AbortSignal.timeout(7_500),
    });
    if (!res.ok) return [];
    const html = await res.text();
    const items = parseEgyDeadCards(html, spec);
    if (items.length > 0) pageCache.set(key, items, PAGE_CACHE_TTL_MS);
    return items;
  } catch {
    return [];
  }
}

export async function fetchExternalCategory(
  categoryKey: string,
  page = 1,
  limit = 28,
): Promise<ExternalFilmSummary[]> {
  const spec = CATEGORY_MAP[categoryKey];
  if (!spec) return [];
  const tasks: Promise<ExternalFilmSummary[]>[] = [];
  if (spec.topcinemaPath) tasks.push(fetchTopCinemaCategory(spec.topcinemaPath, page, spec));
  if (spec.egydeadPath) tasks.push(fetchEgyDeadCategory(spec.egydeadPath, page, spec));
  const settled = await Promise.all(tasks);
  let merged = deduplicateFilmSummaries(settled, undefined, limit);
  // EgyDead series pages list individual episodes; if collapsing leaves < 10 unique series, also pull next page!
  if (spec.tmdbType === "tv" && spec.egydeadPath && merged.length < 10 && page <= 5) {
    const page2 = await fetchEgyDeadCategory(spec.egydeadPath, page + 1, spec);
    merged = deduplicateFilmSummaries([merged, page2], undefined, limit);
  }
  return merged;
}

// ── Unified Search across TopCinema & EgyDead ───────────────────────────────
export async function searchExternalCatalog(
  query: string,
  typeFilter: "multi" | "movie" | "tv" = "multi",
  limit = 32,
): Promise<ExternalFilmSummary[]> {
  const q = String(query || "").trim();
  if (!q) return [];
  const cacheKey = `search:${typeFilter}:${q.toLowerCase()}`;
  const cached = pageCache.get(cacheKey);
  if (cached) return cached.slice(0, limit);

  const [tcItems, edItems] = await Promise.all([
    (async () => {
      try {
        const origin = await getTopCinemaOrigin();
        const url = `${origin}/search/?query=${encodeURIComponent(q)}`;
        const res = await fetch(url, {
          headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
          signal: AbortSignal.timeout(7_000),
        });
        if (!res.ok) return [];
        const html = await res.text();
        return parseTopCinemaCards(html, origin, {});
      } catch {
        return [];
      }
    })(),
    (async () => {
      try {
        const url = `${EGYDEAD_BASE}/search?s=${encodeURIComponent(q)}`;
        const res = await fetch(url, {
          headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
          signal: AbortSignal.timeout(7_000),
        });
        if (!res.ok) return [];
        const html = await res.text();
        return parseEgyDeadCards(html, {});
      } catch {
        return [];
      }
    })(),
  ]);

  let merged = deduplicateFilmSummaries([tcItems, edItems], undefined, 48);
  if (typeFilter === "movie") merged = merged.filter((x) => x.tmdbType === "movie");
  else if (typeFilter === "tv") merged = merged.filter((x) => x.tmdbType === "tv");

  if (merged.length > 0) pageCache.set(cacheKey, merged, 6 * 60_000);
  return merged.slice(0, limit);
}

// ── Home Catalog Bundle (cached 10 min, parallel fetch) ─────────────────────
export interface ExternalHomeCatalog {
  foreignMovies: ExternalFilmSummary[];
  arabicMovies: ExternalFilmSummary[];
  turkishMovies: ExternalFilmSummary[];
  indianMovies: ExternalFilmSummary[];
  asianMovies: ExternalFilmSummary[];
  animationMovies: ExternalFilmSummary[];
  foreignSeries: ExternalFilmSummary[];
  arabicSeries: ExternalFilmSummary[];
  turkishSeries: ExternalFilmSummary[];
  indianSeries: ExternalFilmSummary[];
  asianSeries: ExternalFilmSummary[];
  dubbedSeries: ExternalFilmSummary[];
  animationSeries: ExternalFilmSummary[];
}

let cachedHomeCatalog: { ts: number; data: ExternalHomeCatalog } | null = null;
let inflightHomePromise: Promise<ExternalHomeCatalog> | null = null;

export async function fetchExternalHomeCatalog(): Promise<ExternalHomeCatalog> {
  if (cachedHomeCatalog && Date.now() - cachedHomeCatalog.ts < 10 * 60_000) {
    return cachedHomeCatalog.data;
  }
  if (inflightHomePromise) return inflightHomePromise;

  inflightHomePromise = (async () => {
    const [
      foreignMovies,
      arabicMovies,
      turkishMovies,
      indianMovies,
      asianMovies,
      animationMovies,
      foreignSeries,
      arabicSeries,
      turkishSeries,
      indianSeries,
      asianSeries,
      dubbedSeries,
      animationSeries,
    ] = await Promise.all([
      fetchExternalCategory("foreign_movies", 1, 20),
      fetchExternalCategory("arabic_movies", 1, 18),
      fetchExternalCategory("turkish_movies", 1, 16),
      fetchExternalCategory("indian_movies", 1, 18),
      fetchExternalCategory("asian_movies", 1, 18),
      fetchExternalCategory("animation_movies", 1, 16),
      fetchExternalCategory("foreign_series", 1, 20),
      fetchExternalCategory("arabic_series", 1, 18),
      fetchExternalCategory("turkish_series", 1, 18),
      fetchExternalCategory("indian_series", 1, 16),
      fetchExternalCategory("asian_series", 1, 18),
      fetchExternalCategory("dubbed_series", 1, 18),
      fetchExternalCategory("animation_series", 1, 16),
    ]);

    const data: ExternalHomeCatalog = {
      foreignMovies,
      arabicMovies,
      turkishMovies,
      indianMovies,
      asianMovies,
      animationMovies,
      foreignSeries,
      arabicSeries,
      turkishSeries,
      indianSeries,
      asianSeries,
      dubbedSeries,
      animationSeries,
    };
    cachedHomeCatalog = { ts: Date.now(), data };
    return data;
  })().finally(() => {
    inflightHomePromise = null;
  });

  return inflightHomePromise;
}

// ── Detail & Seasons/Episodes On-Demand Scraper ─────────────────────────────
async function scrapeTopCinemaSeasonsAndEpisodes(
  seriesUrl: string,
  targetSeason?: number,
): Promise<{
  overviewAr: string;
  posterUrl: string;
  genres: string[];
  seasons: ExternalSeasonInfo[];
  episodes: ExternalEpisodeRef[];
}> {
  const origin = await getTopCinemaOrigin();
  const url = normalizeUrlOrigin(seriesUrl, origin);
  const res = await fetch(url, {
    headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
    signal: AbortSignal.timeout(8_000),
  });
  if (!res.ok) return { overviewAr: "", posterUrl: "", genres: [], seasons: [], episodes: [] };
  const html = await res.text();

  const overviewAr = decodeHtmlEntities(
    html.match(/<div\s+class="story"[^>]*>([\s\S]*?)<\/div>/i)?.[1]?.replace(/<[^>]+>/g, " ") ||
      html.match(/<meta\s+property="og:description"\s+content="([^"]+)"/i)?.[1] ||
      "",
  );
  const posterUrl = safeEncodeUrl(
    html.match(/<meta\s+property="og:image"\s+content="([^"]+)"/i)?.[1] || "",
  );
  const genres = [...html.matchAll(/\/genre\/[^"]+"[^>]*>([^<]+)</gi)]
    .map((m) => decodeHtmlEntities(m[1]))
    .filter(Boolean)
    .slice(0, 4);

  // Discover seasons from links matching /series/...الموسم...
  const seasonMap = new Map<number, ExternalSeasonInfo>();
  const allLinks = [...html.matchAll(/href="(https?:\/\/[^"]+)"/gi)].map((m) => m[1]);
  for (const link of allLinks) {
    let dec = link;
    try {
      dec = decodeURIComponent(link);
    } catch {}
    if (/\/series\//i.test(dec) && /الموسم|season/i.test(dec) && !/\/page\//i.test(dec) && !/\/list\/?$/i.test(dec)) {
      const sNum = parseSeasonNumberFromText(dec);
      if (!seasonMap.has(sNum)) {
        seasonMap.set(sNum, {
          seasonNumber: sNum,
          name: `الموسم ${sNum}`,
          episodeCount: 0,
          topcinemaUrl: normalizeUrlOrigin(link, origin),
        });
      }
    }
  }

  // Extract episodes from current page
  const parseEpsFromHtml = (pageHtml: string, sNum: number): ExternalEpisodeRef[] => {
    const epMap = new Map<number, ExternalEpisodeRef>();
    const links = [...pageHtml.matchAll(/href="(https?:\/\/[^"]+)"/gi)].map((m) => m[1]);
    for (const l of links) {
      let dec = l;
      try {
        dec = decodeURIComponent(l);
      } catch {}
      if (!dec.includes("الحلقة") && !/episode/i.test(dec)) continue;
      if (/\/(category|tag|genre|series)\//i.test(dec)) continue;
      const epNum = parseEpisodeNumberFromText(dec);
      if (!epMap.has(epNum)) {
        epMap.set(epNum, {
          seasonNumber: sNum,
          episodeNumber: epNum,
          titleAr: `الحلقة ${epNum}`,
          titleEn: `Episode ${epNum}`,
          topcinemaUrl: normalizeUrlOrigin(l, origin),
        });
      }
    }
    return Array.from(epMap.values()).sort((a, b) => a.episodeNumber - b.episodeNumber);
  };

  let seasons = Array.from(seasonMap.values()).sort((a, b) => a.seasonNumber - b.seasonNumber);
  if (seasons.length === 0) {
    seasons = [{ seasonNumber: 1, name: "الموسم 1", episodeCount: 0, topcinemaUrl: url }];
  }

  const chosenSeason =
    (targetSeason ? seasons.find((s) => s.seasonNumber === targetSeason) : seasons[0]) || seasons[0];
  let episodes = parseEpsFromHtml(html, chosenSeason.seasonNumber);

  // If the landing page is a collection page (no direct episodes yet) or requested another season, fetch season page (+ /list/)
  if (episodes.length === 0 || (targetSeason && chosenSeason.topcinemaUrl && chosenSeason.topcinemaUrl !== url)) {
    const sUrl = chosenSeason.topcinemaUrl || url;
    try {
      const listUrl = sUrl.endsWith("/list/") ? sUrl : `${sUrl.replace(/\/$/, "")}/list/`;
      let sRes = await fetch(safeEncodeUrl(listUrl), {
        headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
        signal: AbortSignal.timeout(7_000),
      });
      let sHtml = sRes.ok ? await sRes.text() : "";
      episodes = parseEpsFromHtml(sHtml, chosenSeason.seasonNumber);
      if (episodes.length === 0) {
        sRes = await fetch(safeEncodeUrl(sUrl), {
          headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
          signal: AbortSignal.timeout(7_000),
        });
        sHtml = sRes.ok ? await sRes.text() : "";
        episodes = parseEpsFromHtml(sHtml, chosenSeason.seasonNumber);
      }
    } catch {}
  }

  chosenSeason.episodeCount = Math.max(chosenSeason.episodeCount, episodes.length);
  return { overviewAr, posterUrl, genres, seasons, episodes };
}

async function scrapeEgyDeadSeasonsAndEpisodes(
  itemUrl: string,
  targetSeason?: number,
): Promise<{
  overviewAr: string;
  posterUrl: string;
  genres: string[];
  seasons: ExternalSeasonInfo[];
  episodes: ExternalEpisodeRef[];
}> {
  const firstRes = await fetch(safeEncodeUrl(itemUrl), {
    headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
    signal: AbortSignal.timeout(8_000),
  });
  if (!firstRes.ok) return { overviewAr: "", posterUrl: "", genres: [], seasons: [], episodes: [] };
  let html = await firstRes.text();

  // If itemUrl is an /episode/... page, follow the parent /season/... link so we get full season & episodes!
  if (/\/episode\//i.test(itemUrl)) {
    const seasonLink = html.match(/href="(https?:\/\/egydead\.here\/season\/[^"]+)"/i)?.[1];
    if (seasonLink && !seasonLink.endsWith("/episodes")) {
      try {
        const sRes = await fetch(safeEncodeUrl(seasonLink), {
          headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
          signal: AbortSignal.timeout(7_000),
        });
        if (sRes.ok) html = await sRes.text();
      } catch {}
    }
  }

  const overviewAr = decodeHtmlEntities(
    html.match(/class="description"[^>]*>([\s\S]*?)<\/div>/i)?.[1]?.replace(/<[^>]+>/g, " ") ||
      html.match(/<meta\s+property="og:description"\s+content="([^"]+)"/i)?.[1] ||
      "",
  );
  const posterUrl = safeEncodeUrl(
    html.match(/<meta\s+property="og:image"\s+content="([^"]+)"/i)?.[1] || "",
  );

  // Discover sibling seasons
  const seasonMap = new Map<number, ExternalSeasonInfo>();
  const sLinks = [...html.matchAll(/href="(https?:\/\/egydead\.here\/season\/[^"]+)"/gi)].map((m) => m[1]);
  for (const sl of sLinks) {
    if (sl.endsWith("/episodes")) continue;
    let dec = sl;
    try {
      dec = decodeURIComponent(sl);
    } catch {}
    const sNum = parseSeasonNumberFromText(dec);
    if (!seasonMap.has(sNum)) {
      seasonMap.set(sNum, {
        seasonNumber: sNum,
        name: `الموسم ${sNum}`,
        episodeCount: 0,
        egydeadUrl: sl,
      });
    }
  }

  let seasons = Array.from(seasonMap.values()).sort((a, b) => a.seasonNumber - b.seasonNumber);
  if (seasons.length === 0) {
    const fallbackSeasonNum = parseSeasonNumberFromText(decodeURIComponent(itemUrl).replace(/-/g, " "));
    seasons = [{ seasonNumber: fallbackSeasonNum, name: `الموسم ${fallbackSeasonNum}`, episodeCount: 0, egydeadUrl: itemUrl }];
  }

  const chosenSeason =
    (targetSeason ? seasons.find((s) => s.seasonNumber === targetSeason) : seasons[0]) || seasons[0];

  let epPageHtml = html;
  if (targetSeason && chosenSeason.egydeadUrl && chosenSeason.egydeadUrl !== itemUrl) {
    try {
      const r = await fetch(safeEncodeUrl(chosenSeason.egydeadUrl), {
        headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
        signal: AbortSignal.timeout(7_000),
      });
      if (r.ok) epPageHtml = await r.text();
    } catch {}
  }

  const parseEdEps = (pageHtml: string, sNum: number): ExternalEpisodeRef[] => {
    const epMap = new Map<number, ExternalEpisodeRef>();
    const links = [...pageHtml.matchAll(/href="(https?:\/\/egydead\.here\/episode\/[^"]+)"/gi)].map((m) => m[1]);
    for (const l of links) {
      let dec = l;
      try {
        dec = decodeURIComponent(l);
      } catch {}
      const epNum = parseEpisodeNumberFromText(dec.replace(/-/g, " "));
      if (!epMap.has(epNum)) {
        epMap.set(epNum, {
          seasonNumber: sNum,
          episodeNumber: epNum,
          titleAr: `الحلقة ${epNum}`,
          titleEn: `Episode ${epNum}`,
          egydeadUrl: l,
        });
      }
    }
    return Array.from(epMap.values()).sort((a, b) => a.episodeNumber - b.episodeNumber);
  };

  let episodes = parseEdEps(epPageHtml, chosenSeason.seasonNumber);
  // If no episodes listed directly on season page, check /episodes subpage
  if (episodes.length === 0 && chosenSeason.egydeadUrl && /\/season\//i.test(chosenSeason.egydeadUrl)) {
    try {
      const subUrl = `${chosenSeason.egydeadUrl.replace(/\/$/, "")}/episodes`;
      const r = await fetch(safeEncodeUrl(subUrl), {
        headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
        signal: AbortSignal.timeout(7_000),
      });
      if (r.ok) episodes = parseEdEps(await r.text(), chosenSeason.seasonNumber);
    } catch {}
  }
  if (episodes.length === 0 && /\/episode\//i.test(itemUrl)) {
    const epNum = parseEpisodeNumberFromText(itemUrl.replace(/-/g, " "));
    episodes = [
      {
        seasonNumber: chosenSeason.seasonNumber,
        episodeNumber: epNum,
        titleAr: `الحلقة ${epNum}`,
        titleEn: `Episode ${epNum}`,
        egydeadUrl: itemUrl,
      },
    ];
  }

  chosenSeason.episodeCount = Math.max(chosenSeason.episodeCount, episodes.length);
  return { overviewAr, posterUrl, genres: [], seasons, episodes };
}

export async function getExternalFilmDetail(id: number): Promise<any | null> {
  const cached = detailCache.get(`detail:${id}`);
  if (cached) return cached;

  const entry = getExternalRegistryEntry(id);
  if (!entry) return null;

  const summary = registryEntryToSummary(entry);
  const isTv = entry.tmdbType === "tv";

  let overviewAr = "";
  let posterUrl = summary.posterUrl;
  let genres = summary.genres;
  let seasons: ExternalSeasonInfo[] = [];
  let episodes: ExternalEpisodeRef[] = [];

  try {
    if (!isTv) {
      // Movie detail page (fast single fetch)
      const targetUrl = entry.topcinemaUrl || entry.egydeadUrl || "";
      if (targetUrl) {
        const origin = entry.topcinemaUrl ? await getTopCinemaOrigin() : EGYDEAD_BASE;
        const resolvedUrl = entry.topcinemaUrl ? normalizeUrlOrigin(targetUrl, origin) : safeEncodeUrl(targetUrl);
        const res = await fetch(resolvedUrl, {
          headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
          signal: AbortSignal.timeout(7_500),
        });
        if (res.ok) {
          const html = await res.text();
          overviewAr = decodeHtmlEntities(
            html.match(/<div\s+class="story"[^>]*>([\s\S]*?)<\/div>/i)?.[1]?.replace(/<[^>]+>/g, " ") ||
              html.match(/class="description"[^>]*>([\s\S]*?)<\/div>/i)?.[1]?.replace(/<[^>]+>/g, " ") ||
              html.match(/<meta\s+property="og:description"\s+content="([^"]+)"/i)?.[1] ||
              "",
          );
          const ogImg = html.match(/<meta\s+property="og:image"\s+content="([^"]+)"/i)?.[1];
          if (ogImg && !ogImg.includes("cover.jpg")) posterUrl = safeEncodeUrl(ogImg);
          const g = [...html.matchAll(/\/genre\/[^"]+"[^>]*>([^<]+)</gi)]
            .map((m) => decodeHtmlEntities(m[1]))
            .filter(Boolean)
            .slice(0, 4);
          if (g.length) genres = g;
        }
      }
    } else {
      // TV series: scrape seasons & episodes from TopCinema and/or EgyDead
      if (entry.topcinemaUrl) {
        const tc = await scrapeTopCinemaSeasonsAndEpisodes(entry.topcinemaUrl);
        overviewAr = tc.overviewAr || overviewAr;
        if (tc.posterUrl) posterUrl = tc.posterUrl;
        if (tc.genres.length) genres = tc.genres;
        seasons = tc.seasons;
        episodes = tc.episodes;
      }
      if (episodes.length === 0 && entry.egydeadUrl) {
        const ed = await scrapeEgyDeadSeasonsAndEpisodes(entry.egydeadUrl);
        overviewAr = ed.overviewAr || overviewAr;
        if (!posterUrl && ed.posterUrl) posterUrl = ed.posterUrl;
        if (ed.seasons.length) seasons = ed.seasons;
        if (ed.episodes.length) episodes = ed.episodes;
      }
    }
  } catch {
    // Graceful fallback to summary metadata
  }

  // Cache season episodes for fast stream resolution
  if (isTv && episodes.length > 0) {
    const sNum = seasons[0]?.seasonNumber || episodes[0]?.seasonNumber || 1;
    seasonEpsCache.set(`eps:${id}:s${sNum}`, episodes, DETAIL_CACHE_TTL_MS);
  }

  const formattedEpisodes = !isTv
    ? [
        {
          id: `${id}-m-1`,
          seasonNumber: 1,
          episodeNumber: 1,
          titleAr: summary.titleAr,
          titleEn: summary.titleEn,
          overview: overviewAr || "متاح للمشاهدة المباشرة عالية الجودة.",
          runtimeMin: 110,
          airDate: String(summary.year),
          stillUrl: posterUrl,
        },
      ]
    : episodes.map((ep) => ({
        id: `${id}-s${ep.seasonNumber}-e${ep.episodeNumber}`,
        seasonNumber: ep.seasonNumber,
        episodeNumber: ep.episodeNumber,
        titleAr: ep.titleAr,
        titleEn: ep.titleEn,
        overview: "",
        runtimeMin: 45,
        airDate: String(summary.year),
        stillUrl: posterUrl,
      }));

  const detailObj = {
    ...summary,
    posterUrl,
    backdropUrl: posterUrl,
    genres,
    overviewAr: overviewAr || "متاح للمشاهدة المباشرة عالية الجودة عبر نوفا فيلم.",
    runtimeMin: isTv ? 45 : 110,
    durationOrSeasons: isTv
      ? seasons.length > 1
        ? `${seasons.length} مواسم`
        : `${formattedEpisodes.length || 1} حلقة`
      : "فيلم كامل",
    statusLabel: isTv ? (seasons.length > 1 ? "مكتمل" : "متوفر") : "فيلم كامل",
    ageRating: "PG-13",
    director: "",
    productionCompany: "",
    imdbId: null,
    trailerYoutubeKey: null,
    cast: [],
    seasons: isTv
      ? seasons.map((s) => ({
          seasonNumber: s.seasonNumber,
          name: s.name,
          episodeCount: s.episodeCount || formattedEpisodes.length || 1,
          posterUrl,
          airDate: String(summary.year),
        }))
      : [],
    episodes: formattedEpisodes,
    relations: [],
    recommendations: [],
  };

  detailCache.set(`detail:${id}`, detailObj, DETAIL_CACHE_TTL_MS);
  return detailObj;
}

export async function getExternalSeasonEpisodes(id: number, seasonNumber: number): Promise<any | null> {
  const entry = getExternalRegistryEntry(id);
  if (!entry) return null;

  const cacheKey = `eps:${id}:s${seasonNumber}`;
  let eps = seasonEpsCache.get(cacheKey);
  if (!eps) {
    if (entry.topcinemaUrl) {
      const tc = await scrapeTopCinemaSeasonsAndEpisodes(entry.topcinemaUrl, seasonNumber);
      if (tc.episodes.length) eps = tc.episodes;
    }
    if ((!eps || eps.length === 0) && entry.egydeadUrl) {
      const ed = await scrapeEgyDeadSeasonsAndEpisodes(entry.egydeadUrl, seasonNumber);
      if (ed.episodes.length) eps = ed.episodes;
    }
    if (eps && eps.length > 0) {
      seasonEpsCache.set(cacheKey, eps, DETAIL_CACHE_TTL_MS);
    }
  }

  return {
    seasonNumber,
    name: `الموسم ${seasonNumber}`,
    episodes: (eps || []).map((ep) => ({
      id: `${id}-s${ep.seasonNumber}-e${ep.episodeNumber}`,
      seasonNumber: ep.seasonNumber,
      episodeNumber: ep.episodeNumber,
      titleAr: ep.titleAr,
      titleEn: ep.titleEn,
      overview: "",
      runtimeMin: 45,
      airDate: String(entry.year || ""),
      stillUrl: entry.posterUrl,
    })),
  };
}

// ── Universal Direct Native Stream Unpacker ─────────────────────────────────
function unpackDeanEdwards(html: string): string {
  const rx =
    /eval\(function\(p,a,c,k,e,[dr]\)\{[\s\S]*?\}\('([\s\S]*?)',\s*(\d+),\s*(\d+),\s*'([\s\S]*?)'\.split\('\|'\)/g;
  const outputs: string[] = [];
  let m: RegExpExecArray | null;
  while ((m = rx.exec(html)) !== null) {
    try {
      let p = m[1].replace(/\\'/g, "'").replace(/\\\\/g, "\\");
      const a = Number.parseInt(m[2], 10);
      let c = Number.parseInt(m[3], 10);
      const k = m[4].split("|");
      const chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
      const toBase = (n: number): string => {
        if (n === 0) return "0";
        let s = "";
        let v = n;
        while (v > 0) {
          s = chars[v % a] + s;
          v = Math.floor(v / a);
        }
        return s;
      };
      while (c--) {
        if (k[c]) {
          const tok = toBase(c);
          p = p.replace(new RegExp(`\\b${tok}\\b`, "g"), k[c]);
        }
      }
      outputs.push(p);
    } catch {
      // skip malformed block
    }
  }
  return outputs.join("\n");
}

function cleanExtractedUrl(raw: string): string {
  return String(raw || "")
    .replace(/\\u0026/g, "&")
    .replace(/\\\//g, "/")
    .replace(/["'<>\\]+$/g, "")
    .trim();
}

// Hosts whose CDN tokens are NOT IP-locked AND work from datacenter IPs (verified 200/206 from any user IP directly)
function isOpenDirectHost(hostname: string): boolean {
  const h = hostname.toLowerCase();
  return (
    h.includes("okstream.") ||
    h.includes("cloudcdn.casa") ||
    h.includes("workers.dev")
  );
}

// Hosts that are known dead / SPA-only / unsupported for direct phone extraction
function isUnsupportedEmbedHost(hostname: string): boolean {
  const h = hostname.toLowerCase();
  return (
    h.includes("streamtape") ||
    h.includes("vinovo.") ||
    h.includes("megacloud") ||
    h.includes("vidmoly") ||
    h.includes("dood") ||
    h.includes("d0o0d") ||
    h.includes("ds2play") ||
    h.includes("mixdrop") ||
    h.includes("mega.nz") ||
    h.includes("luluvdo.") ||
    h.includes("byse") ||
    h.includes("firestream.") ||
    h.includes("frstream.")
  );
}

// Allow ALL non-blocked HTTP embed hosts to extract directly on the user residential phone IP
// (handles rotated mirror domains + VidTube residential IP + FastVid/EarnVids + LuluStream + UpDown + Uqload + StreamWish + Filelions + OK.ru!)
function isPhoneExtractableHost(hostname: string): boolean {
  const h = hostname.toLowerCase();
  if (!h || isUnsupportedEmbedHost(h)) return false;
  return true;
}

async function extractDirectFromEmbedUrl(
  embedUrl: string,
  _hostLabel: string,
  referer: string,
  _providerTag: string,
  clientExtract = false,
): Promise<ExternalResolvedSource | null> {
  try {
    const u = new URL(embedUrl);
    const host = u.hostname.toLowerCase();
    if (isUnsupportedEmbedHost(host)) return null;

    // For IP-bound embed hosts (FastVid/EarnVids, LuluStream, StreamWish, Filelions, UpDown, Uqload, OK.ru, etc.):
    // Never proxy video through VPS! Hand the tiny embed descriptor to the user phone so the phone extracts
    // using the USER own IP and streams 100% directly phone-to-CDN (0% VPS video bandwidth!).
    if (!isOpenDirectHost(host)) {
      if (clientExtract && isPhoneExtractableHost(host)) {
        return {
          site: "nv-direct",
          label: "1080p FHD",
          tier: "1080p FHD",
          url: "",
          directUrl: "",
          isEmbed: false,
          type: "hls",
          hardsubbed: true,
          clientExtract: {
            embedUrl,
            referer,
            tier: "1080p FHD",
            hostKind: host.includes("ok.ru") ? "okru" : "standard",
          },
        };
      }
      // Legacy clients without clientExtract: do NOT proxy IP-locked CDNs through VPS bandwidth.
      return null;
    }

    // Open / non-IP-locked CDN (OkStream / cloudcdn.casa / VidTube):
    // Extract direct raw m3u8 / mp4 on server and emit RAW CDN URL + headers (ZERO VPS video proxy!)
    const res = await fetch(embedUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: referer,
        Accept: "text/html,application/xhtml+xml,*/*",
      },
      redirect: "follow",
      signal: AbortSignal.timeout(7_000),
    });
    if (!res.ok) return null;
    const html = await res.text();
    const unpacked = unpackDeanEdwards(html);
    const combined = `${html}\n${unpacked}`;
    const hostOrigin = `${u.origin}/`;
    const directHeaders = { "User-Agent": BROWSER_UA, Referer: hostOrigin };

    // 1. HLS .m3u8 direct extraction (0% VPS video bandwidth!)
    const m3u8Matches = combined.match(/https?:\/\/[^"'\s\\<>]+\.m3u8[^"'\s\\<>]*/gi) || [];
    const m3u8 = m3u8Matches
      .map(cleanExtractedUrl)
      .find((link) => !/\.png|\.jpg|logo|thumb|preview/i.test(link));
    if (m3u8) {
      try {
        const probe = await fetch(m3u8, {
          headers: { ...directHeaders, Accept: "*/*" },
          signal: AbortSignal.timeout(4_500),
        });
        if (probe.ok) {
          const text = await probe.text();
          if (text.includes("#EXTM3U")) {
            const tier = /2160|3840x/i.test(text)
              ? "4K UHD"
              : /1080|1920x/i.test(text)
                ? "1080p FHD"
                : "720p HD";
            return {
              site: "nv-direct",
              label: tier,
              tier,
              url: m3u8,
              directUrl: m3u8,
              isEmbed: false,
              type: "hls",
              headers: directHeaders,
              hardsubbed: true,
            };
          }
        }
      } catch {
        // skip dead CDN manifest
      }
    }

    // 2. Direct MP4 extraction — ONLY emit if verified 200/206!
    const mp4Matches = combined.match(/https?:\/\/[^"'\s\\<>]+\.mp4[^"'\s\\<>]*/gi) || [];
    const mp4 = mp4Matches
      .map(cleanExtractedUrl)
      .find((link) => !/thumb|sample|intro|logo|ads\./i.test(link));
    if (mp4) {
      try {
        const probe = await fetch(mp4, {
          headers: { ...directHeaders, Range: "bytes=0-1" },
          redirect: "follow",
          signal: AbortSignal.timeout(4_500),
        });
        const ct = (probe.headers.get("content-type") || "").toLowerCase();
        if ((probe.status === 200 || probe.status === 206) && !ct.includes("text/html")) {
          const verified = probe.url || mp4;
          return {
            site: "nv-direct",
            label: "1080p FHD",
            tier: "1080p FHD",
            url: verified,
            directUrl: verified,
            isEmbed: false,
            type: "mp4",
            headers: directHeaders,
            hardsubbed: true,
          };
        }
      } catch {}
    }

    return null;
  } catch {
    return null;
  }
}

// ── TopCinema Watch Page -> Direct Streams ──────────────────────────────────
async function extractTopCinemaStreams(
  itemOrEpUrl: string,
  onSource?: (src: ExternalResolvedSource) => void,
  clientExtract = false,
): Promise<ExternalResolvedSource[]> {
  const origin = await getTopCinemaOrigin();
  const baseItemUrl = normalizeUrlOrigin(itemOrEpUrl, origin);
  const watchUrl = baseItemUrl.endsWith("/watch/") ? baseItemUrl : `${baseItemUrl.replace(/\/$/, "")}/watch/`;

  const wRes = await fetch(watchUrl, {
    headers: { "User-Agent": BROWSER_UA, Referer: baseItemUrl, Accept: "text/html" },
    signal: AbortSignal.timeout(7_500),
  });
  if (!wRes.ok) return [];
  const wHtml = await wRes.text();

  const srvBtns = [...wHtml.matchAll(/data-id="(\d+)"\s+data-server="(\d+)"[^>]*>([\s\S]*?)<\/li>/gi)].map((m) => ({
    id: m[1],
    i: m[2],
    name: decodeHtmlEntities(m[3].replace(/<[^>]+>/g, "")) || `Server ${m[2]}`,
  }));

  // Pre-filter known-dead / SPA-only buttons so every AJAX slot goes to working fast hosts!
  const isDeadBtn = (name: string): boolean => {
    const l = name.toLowerCase();
    return (
      l.includes("streamtape") ||
      l.includes("dood") ||
      l.includes("byse") ||
      l.includes("firestream") ||
      l.includes("mixdrop") ||
      l.includes("vinovo")
    );
  };
  const priorityScore = (name: string): number => {
    const l = name.toLowerCase();
    if (l.includes("okstream")) return 1;
    if (l.includes("vidtube") || l.includes("videotube")) return 2;
    if (l.includes("lulu")) return 3;
    if (l.includes("updown")) return 4;
    if (l.includes("streamwish") || l.includes("filelions") || l.includes("earnvids") || l.includes("vidhide")) return 5;
    if (l.includes("uqload") || l.includes("savefiles") || l.includes("ok")) return 6;
    return 8;
  };
  const ordered = srvBtns
    .filter((b) => !isDeadBtn(b.name))
    .sort((a, b) => priorityScore(a.name) - priorityScore(b.name))
    .slice(0, 8);

  const out: ExternalResolvedSource[] = [];
  const seenUrls = new Set<string>();

  await Promise.all(
    ordered.map(async (s) => {
      try {
        const aRes = await fetch(`${origin}/wp-content/themes/movies2023/Ajaxat/Single/Server.php`, {
          method: "POST",
          headers: {
            "User-Agent": BROWSER_UA,
            "Content-Type": "application/x-www-form-urlencoded",
            Referer: watchUrl,
            "X-Requested-With": "XMLHttpRequest",
          },
          body: `id=${encodeURIComponent(s.id)}&i=${encodeURIComponent(s.i)}`,
          signal: AbortSignal.timeout(6_000),
        });
        if (!aRes.ok) return;
        const aHtml = await aRes.text();
        const iframeUrl = aHtml.match(/src=["']([^"']+)["']/i)?.[1]?.trim();
        if (!iframeUrl || !iframeUrl.startsWith("http")) return;

        const direct = await extractDirectFromEmbedUrl(iframeUrl, "سيرفر مباشر", `${origin}/`, "tc", clientExtract);
        const dedupeKey = direct ? (direct.url || direct.clientExtract?.embedUrl || "") : "";
        if (direct && dedupeKey && !seenUrls.has(dedupeKey)) {
          seenUrls.add(dedupeKey);
          out.push(direct);
          onSource?.(direct);
        }
      } catch {
        // skip failing host
      }
    }),
  );

  return out;
}

// ── EgyDead Watch Page -> Direct Streams ────────────────────────────────────
async function extractEgyDeadStreams(
  itemOrEpUrl: string,
  onSource?: (src: ExternalResolvedSource) => void,
  clientExtract = false,
): Promise<ExternalResolvedSource[]> {
  const safeItemUrl = safeEncodeUrl(itemOrEpUrl);
  let watchUrl = safeItemUrl;
  if (/\/(film|movie|episode)\//i.test(safeItemUrl)) {
    watchUrl = safeItemUrl.replace(/\/(film|movie|episode)\//i, "/watch/");
  } else if (!/\/watch\//i.test(safeItemUrl)) {
    // Follow page to locate /watch/ button
    try {
      const pRes = await fetch(safeItemUrl, {
        headers: { "User-Agent": BROWSER_UA, Accept: "text/html" },
        signal: AbortSignal.timeout(6_500),
      });
      if (pRes.ok) {
        const pHtml = await pRes.text();
        const found = pHtml.match(/href="(https?:\/\/egydead\.here\/watch\/[^"]+)"/i)?.[1];
        if (found) watchUrl = safeEncodeUrl(found);
      }
    } catch {}
  }

  const wRes = await fetch(watchUrl, {
    headers: { "User-Agent": BROWSER_UA, Referer: safeItemUrl, Accept: "text/html" },
    signal: AbortSignal.timeout(7_500),
  });
  if (!wRes.ok) return [];
  const rawCookies =
    typeof (wRes.headers as any).getSetCookie === "function"
      ? (wRes.headers as any).getSetCookie().map((c: string) => c.split(";")[0]).join("; ")
      : (wRes.headers.get("set-cookie") || "").split(",").map((c) => c.split(";")[0]).join("; ");
  const wHtml = await wRes.text();

  const csrf = wHtml.match(/const\s+csrfToken\s*=\s*"([^"]+)"/)?.[1];
  const rKey = wHtml.match(/const\s+watchResolveKey\s*=\s*"([^"]+)"/)?.[1];
  const srvsRaw = wHtml.match(/const\s+servers\s*=\s*(\[[\s\S]*?\]);/)?.[1];
  if (!csrf || !rKey || !srvsRaw) return [];

  let servers: Array<{ name: string; resolve_token: string; rank?: number }> = [];
  try {
    servers = JSON.parse(srvsRaw);
  } catch {
    return [];
  }

  const isDeadEdBtn = (name: string): boolean => {
    const l = String(name || "").toLowerCase();
    return (
      l.includes("vinovo") ||
      l.includes("streamtape") ||
      l.includes("dood") ||
      l.includes("byse") ||
      l.includes("mixdrop")
    );
  };
  const priorityScore = (name: string): number => {
    const l = String(name || "").toLowerCase();
    if (l.includes("uqload")) return 1;
    if (l.includes("streamwish") || l.includes("vidhide") || l.includes("filelions")) return 2;
    if (l.includes("earnvids") || l.includes("fastv")) return 3;
    if (l.includes("lulu") || l.includes("savefiles")) return 4;
    if (l === "ok" || l.includes("okru")) return 5;
    if (l.includes("voe")) return 6;
    return 8;
  };
  const ordered = servers
    .filter((s) => !isDeadEdBtn(s.name))
    .sort((a, b) => priorityScore(a.name) - priorityScore(b.name))
    .slice(0, 7);

  const out: ExternalResolvedSource[] = [];
  const seenUrls = new Set<string>();

  // Resolve sequentially with small guard because EgyDead validates watch session cookies cleanly
  for (const srv of ordered) {
    if (out.length >= 5) break;
    try {
      const rRes = await fetch(`${EGYDEAD_BASE}/watch/resolve`, {
        method: "POST",
        headers: {
          "User-Agent": BROWSER_UA,
          "Content-Type": "application/json",
          Accept: "application/json",
          "X-CSRF-TOKEN": csrf,
          "X-Requested-With": "XMLHttpRequest",
          Referer: watchUrl,
          Cookie: rawCookies,
        },
        body: JSON.stringify({ key: rKey, token: srv.resolve_token }),
        signal: AbortSignal.timeout(5_500),
      });
      if (!rRes.ok) continue;
      const rData: any = await rRes.json().catch(() => null);
      if (!rData?.ok || typeof rData.url !== "string") continue;

      const mUrl = rData.url.startsWith("/") ? `${EGYDEAD_BASE}${rData.url}` : rData.url;
      const mRes = await fetch(mUrl, {
        headers: { "User-Agent": BROWSER_UA, Referer: watchUrl, Cookie: rawCookies },
        signal: AbortSignal.timeout(5_500),
      });
      if (!mRes.ok) continue;
      const mHtml = await mRes.text();
      const iframeUrl = mHtml.match(/<iframe[^>]+src=["']([^"']+)["']/i)?.[1]?.trim();
      if (!iframeUrl || !iframeUrl.startsWith("http")) continue;

      const direct = await extractDirectFromEmbedUrl(
        iframeUrl,
        "سيرفر مباشر",
        `${EGYDEAD_BASE}/`,
        "ed",
        clientExtract,
      );
      const dedupeKey = direct ? (direct.url || direct.clientExtract?.embedUrl || "") : "";
      if (direct && dedupeKey && !seenUrls.has(dedupeKey)) {
        seenUrls.add(dedupeKey);
        out.push(direct);
        onSource?.(direct);
      }
    } catch {
      // skip server error
    }
  }

  return out;
}

// ── Main On-Demand Stream Resolver (for external IDs OR vault title fallback) ─
export async function resolveExternalFilmStreams(params: {
  id: number;
  type: "movie" | "tv";
  season: number;
  ep: number;
  titleHint?: string;
  clientExtract?: boolean;
  onSource?: (src: ExternalResolvedSource) => void;
}): Promise<ExternalResolvedSource[]> {
  const ce = Boolean(params.clientExtract);
  const cacheKey = `strm:v2:${ce ? "ce1" : "ce0"}:${params.id}:${params.type}:s${params.season}:e${params.ep}`;
  const cached = streamCache.get(cacheKey);
  if (cached && cached.length > 0) {
    cached.forEach((s) => params.onSource?.(s));
    return cached;
  }

  let entry = getExternalRegistryEntry(params.id);

  // If this is a vault title fallback (or unknown ID with titleHint), search TopCinema & EgyDead by title
  // STRICT MATCHING: never blindly pick candidates[0] (which causes wrong-movie embeds!)
  if (!entry && params.titleHint) {
    const candidates = await searchExternalCatalog(params.titleHint, params.type, 8);
    const wantKey = canonicalTitleKey(params.titleHint, params.type);
    const normWords = (s: string) =>
      String(s || "")
        .toLowerCase()
        .replace(/[^a-z0-9؀-ۿ]+/g, " ")
        .trim()
        .split(/s+/)
        .filter((w) => w.length >= 2 && !/^(the|and|for|of|in|to|on|with|movie|film|season|episode|1080p|720p|web|dl)$/.test(w));
    const wantWords = normWords(params.titleHint);
    const isStrongMatch = (candTitle: string): boolean => {
      if (canonicalTitleKey(candTitle, params.type) === wantKey) return true;
      if (wantWords.length === 0) return false;
      const candWords = new Set(normWords(candTitle));
      let hits = 0;
      for (const w of wantWords) if (candWords.has(w)) hits++;
      return hits / wantWords.length >= 0.75 && hits >= Math.min(2, wantWords.length);
    };
    const matched = candidates.find(
      (c) =>
        c.tmdbType === params.type &&
        (isStrongMatch(c.titleEn || "") || isStrongMatch(c.titleAr || "")),
    );
    if (matched) entry = getExternalRegistryEntry(matched.id);
  }
  if (!entry) return [];

  let tcPlayUrl: string | undefined;
  let edPlayUrl: string | undefined;

  if (params.type === "movie") {
    tcPlayUrl = entry.topcinemaUrl;
    edPlayUrl = entry.egydeadUrl;
  } else {
    // Locate episode URL for the requested season & episode
    const epsCacheKey = `eps:${entry.id}:s${params.season}`;
    let eps = seasonEpsCache.get(epsCacheKey);
    if (!eps) {
      await getExternalSeasonEpisodes(entry.id, params.season);
      eps = seasonEpsCache.get(epsCacheKey);
    }
    const foundEp = eps?.find((e) => e.episodeNumber === params.ep);
    tcPlayUrl = foundEp?.topcinemaUrl;
    edPlayUrl = foundEp?.egydeadUrl;

    // If not found on first provider, try second provider if linked
    if (!edPlayUrl && entry.egydeadUrl && !tcPlayUrl) {
      const edData = await scrapeEgyDeadSeasonsAndEpisodes(entry.egydeadUrl, params.season);
      edPlayUrl = edData.episodes.find((e) => e.episodeNumber === params.ep)?.egydeadUrl;
    }
  }

  // If only one provider URL is linked on this title, also cross-match the other provider by title for extra redundancy!
  if ((!tcPlayUrl || !edPlayUrl) && params.type === "movie") {
    try {
      const query = entry.titleEn || entry.titleAr;
      const more = await searchExternalCatalog(query, "movie", 8);
      const wantKey = canonicalTitleKey(query, "movie", entry.year);
      for (const m of more) {
        const reg = getExternalRegistryEntry(m.id);
        if (!reg) continue;
        if (canonicalTitleKey(reg.titleEn || reg.titleAr, "movie", reg.year) === wantKey || m.id === entry.id) {
          if (!tcPlayUrl && reg.topcinemaUrl) tcPlayUrl = reg.topcinemaUrl;
          if (!edPlayUrl && reg.egydeadUrl) edPlayUrl = reg.egydeadUrl;
        }
      }
    } catch {}
  }

  const emitted = new Set<string>();
  const allSources: ExternalResolvedSource[] = [];
  const emitOnce = (s: ExternalResolvedSource) => {
    const key = s.url || s.clientExtract?.embedUrl || "";
    if (!key || emitted.has(key)) return;
    emitted.add(key);
    allSources.push(s);
    params.onSource?.(s);
  };

  const tasks: Promise<any>[] = [];
  if (tcPlayUrl) tasks.push(extractTopCinemaStreams(tcPlayUrl, emitOnce, ce).catch(() => []));
  if (edPlayUrl) tasks.push(extractEgyDeadStreams(edPlayUrl, emitOnce, ce).catch(() => []));

  await Promise.all(tasks);

  allSources.sort((a, b) => {
    const score = (s: ExternalResolvedSource) => {
      if (s.directUrl && !s.clientExtract) return 1;
      if (s.clientExtract) return 2;
      return 3;
    };
    return score(a) - score(b);
  });
  if (allSources.length > 0) {
    streamCache.set(cacheKey, allSources, STREAM_CACHE_TTL_MS);
  }
  return allSources;
}

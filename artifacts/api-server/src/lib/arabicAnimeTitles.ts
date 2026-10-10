import { sbSelect } from "./supabaseClient.js";
import curatedTitles from "../data/anime-titles-ar.json";

const DATABASE_SOURCE_TYPE = "anime_title_ar";
const DATABASE_CACHE_TTL_MS = 5 * 60_000;

type ArabicAnimeTitle = {
  anilistId: number;
  title_ar: string;
  englishTitle: string;
  firstAired: number;
  sourceName: string;
  sourceUrl: string;
};

type ArabicTitleRow = {
  source_id: string;
  title_ar: string | null;
};

const verifiedTitles = curatedTitles as ArabicAnimeTitle[];
let databaseTitlesCache: { expiresAt: number; titles: Map<number, string> } | null = null;
let databaseTitlesRequest: Promise<Map<number, string>> | null = null;

export function normalizeArabicTitle(value: string): string {
  return value
    .normalize("NFKC")
    .replace(/[\u064B-\u065F\u0670]/g, "")
    .replace(/[أإآٱ]/g, "ا")
    .replace(/[ى]/g, "ي")
    .replace(/[ة]/g, "ه")
    .replace(/ـ/g, "")
    .replace(/\s+/g, " ")
    .trim();
}

function isArabicTitle(value: unknown): value is string {
  return typeof value === "string" && value.trim().length > 0 &&
    /[\u0600-\u06FF]/.test(value) && value.trim().length <= 120;
}

async function loadDatabaseTitles(): Promise<Map<number, string>> {
  if (databaseTitlesCache && databaseTitlesCache.expiresAt > Date.now()) {
    return databaseTitlesCache.titles;
  }
  if (databaseTitlesRequest) return databaseTitlesRequest;

  databaseTitlesRequest = (async () => {
    const titles = new Map<number, string>();
    try {
      const rows = await sbSelect<ArabicTitleRow>(
        "anime_meta_ar",
        { source_type: `eq.${DATABASE_SOURCE_TYPE}` },
        { select: "source_id,title_ar", limit: 1000 },
      );
      for (const row of rows) {
        const id = Number(row.source_id);
        if (Number.isSafeInteger(id) && id > 0 && isArabicTitle(row.title_ar)) {
          titles.set(id, row.title_ar.trim());
        }
      }
    } catch {
      // The checked-in dictionary remains available if the optional DB lookup fails.
    }
    databaseTitlesCache = { expiresAt: Date.now() + DATABASE_CACHE_TTL_MS, titles };
    return titles;
  })();

  try {
    return await databaseTitlesRequest;
  } finally {
    databaseTitlesRequest = null;
  }
}

async function getArabicTitleMap(): Promise<Map<number, string>> {
  const titles = new Map(await loadDatabaseTitles());
  // The source-linked repository entries win over a DB row with the same ID.
  for (const entry of verifiedTitles) {
    titles.set(entry.anilistId, entry.title_ar);
  }
  return titles;
}

export async function getArabicAnimeTitleById(id: number): Promise<string | null> {
  if (!Number.isSafeInteger(id) || id <= 0) return null;
  return (await getArabicTitleMap()).get(id) || null;
}

function isAniListMedia(value: Record<string, any>): boolean {
  const title = value.title;
  return Number.isSafeInteger(Number(value.id)) && Number(value.id) > 0 &&
    title !== null &&
    typeof title === "object" &&
    ["romaji", "english", "native"].some((key) => typeof title[key] === "string");
}

function visitMedia(value: unknown, visit: (media: Record<string, any>) => void): void {
  if (Array.isArray(value)) {
    for (const item of value) visitMedia(item, visit);
    return;
  }
  if (!value || typeof value !== "object") return;
  const record = value as Record<string, any>;
  if (isAniListMedia(record)) visit(record);
  for (const child of Object.values(record)) visitMedia(child, visit);
}

/**
 * AniList's response cache remains untouched. Arabic names are joined by
 * stable AniList ID each time an AniList response is served.
 */
export async function attachArabicTitles<T>(data: T): Promise<T> {
  const ids = new Set<number>();
  visitMedia(data, (media) => {
    const id = Number(media.id);
    if (Number.isSafeInteger(id) && id > 0) ids.add(id);
  });

  if (!ids.size) return data;
  const titleMap = await getArabicTitleMap();

  const decorate = (value: unknown): unknown => {
    if (Array.isArray(value)) return value.map(decorate);
    if (!value || typeof value !== "object") return value;

    const record = value as Record<string, any>;
    const result: Record<string, any> = {};
    for (const [key, child] of Object.entries(record)) result[key] = decorate(child);

    if (isAniListMedia(record)) {
      const title = titleMap.get(Number(record.id));
      if (title) result.title_ar = title;
      else delete result.title_ar;
    }
    return result;
  };

  return decorate(data) as T;
}

export async function findArabicAnimeTitles(query: string): Promise<Array<{
  id: number;
  title_ar: string;
  title_english: string;
}>> {
  const normalizedQuery = normalizeArabicTitle(query);
  if (!normalizedQuery || !/[\u0600-\u06FF]/.test(normalizedQuery)) return [];

  const titleMap = await getArabicTitleMap();
  const catalog = new Map<number, ArabicAnimeTitle>();
  for (const entry of verifiedTitles) catalog.set(entry.anilistId, entry);

  const titles = new Map<number, string>();
  for (const [id, title] of titleMap) {
    const normalizedTitle = normalizeArabicTitle(title);
    if (
      normalizedTitle === normalizedQuery ||
      (normalizedQuery.length >= 2 && normalizedTitle.includes(normalizedQuery))
    ) {
      titles.set(id, title);
    }
  }

  return [...titles.entries()].map(([id, title_ar]) => ({
    id,
    title_ar,
    title_english: catalog.get(id)?.englishTitle || "",
  })).sort((a, b) =>
    Number(normalizeArabicTitle(b.title_ar) === normalizedQuery) -
      Number(normalizeArabicTitle(a.title_ar) === normalizedQuery) ||
    a.id - b.id,
  );
}

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import * as cheerio from "cheerio";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const STARDIMA_BASE = "https://watch-79.stardima.com.im";
const HYPERWATCHING_ORIGIN = "https://v2.hyperwatching.com";
const HTTP_TIMEOUT_MS = 15_000;
const CATALOG_TTL_MS = 6 * 3600_000;
const NEW_RELEASES_TTL_MS = 20 * 60_000;
const DETAIL_TTL_MS = 15 * 60_000;
const SERVER_LIST_TTL_MS = 10 * 60_000;

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36";

const ANIME_CATEGORIES_TO_EXCLUDE = [
  "anmy",
  "aflam-naorto",
  "aflam-konan",
  "aflam-boku-no-hero-academia",
  "aflam-doraymon-doraemon-movie",
];

const ANIME_KEYWORD_REGEX =
  /(?:^|\s)(?:أنمي|انمي|أوفا|مانجا|شونين|إيسيكاي|anime|ova|ona)(?:$|\s)/i;

export type StardimaV2MediaType = "series" | "movie";

export interface StardimaV2CatalogItem {
  id: number;
  slug: string;
  provider: "sd2";
  providerLabel: string;
  title: string;
  image: string;
  mediaType: StardimaV2MediaType;
  isMovie: boolean;
  year: string;
  languageLabel: string;
  isDubbed: boolean;
  isSubbed: boolean;
  category: string;
}

export interface StardimaV2Episode {
  epId: string;
  number: number;
  title: string;
  watchUrl: string;
  thumbnail: string;
  seasonNumber: number;
  seasonLabel: string;
}

export interface StardimaV2Season {
  seasonId: string;
  seasonNumber: number;
  label: string;
  episodes: StardimaV2Episode[];
}

export interface StardimaV2Detail {
  slug: string;
  title: string;
  mediaType: StardimaV2MediaType;
  image: string;
  year: string;
  languageLabel: string;
  seasons: StardimaV2Season[];
}

export interface StardimaV2Server {
  id: string;
  name: string;
  status: string;
  priority: number;
}

export interface StardimaV2ResolvedStream {
  streamUrl: string;
  type: "hls" | "mp4";
  referer: string;
  serverId: string;
  serverName: string;
  quality: string;
}

interface RawScrapedItem {
  id: number;
  slug: string;
  mediaType: StardimaV2MediaType;
  title: string;
  image: string;
  year: string;
  languageLabel: string;
  isVip: boolean;
  addedOrder: number;
}

interface DiskCatalogPayload {
  version: number;
  updatedAt: number;
  items: RawScrapedItem[];
  anmySubSlugs: string[];
  subClassification: Record<string, "anime" | "cartoon">;
}

function resolveDataFilePath(): string {
  const candidates = [
    path.resolve(__dirname, "../../data/stardima-v2-catalog.json"),
    path.resolve(process.cwd(), "artifacts/api-server/data/stardima-v2-catalog.json"),
    "/opt/anime-nova/artifacts/api-server/data/stardima-v2-catalog.json",
  ];
  for (const candidate of candidates) {
    if (fs.existsSync(path.dirname(candidate))) return candidate;
  }
  return candidates[0];
}

function stableNumericId(slug: string): number {
  let hash = 2166136261;
  for (let i = 0; i < slug.length; i++) {
    hash ^= slug.charCodeAt(i);
    hash = Math.imul(hash, 16777619);
  }
  return (hash >>> 0) % 1_900_000_000 + 100_000;
}

function cleanText(value: unknown): string {
  return String(value ?? "")
    .replace(/\s+/g, " ")
    .trim();
}

function normalizeLanguageLabel(raw: string): string {
  const t = cleanText(raw);
  if (t.includes("فصحى")) return "مدبلج فصحى";
  if (t.includes("مدبلج عربي")) return "مدبلج عربي";
  if (t.includes("مدبلج")) return "مدبلج";
  if (t.includes("مترجم")) return "مترجم";
  return t || "مدبلج";
}

function safePosterUrl(raw: unknown): string {
  const s = cleanText(raw);
  if (!s || s.includes("placehold.co")) return "";
  try {
    if (/^https?:\/\//i.test(s)) return s;
    const norm = s.replace(/^\/+/, "");
    if (norm.startsWith("posters/") || norm.startsWith("uploads/") || norm.startsWith("images/")) {
      return STARDIMA_BASE + "/storage/" + norm;
    }
    const u = new URL(s.startsWith("/") ? s : "/" + norm, STARDIMA_BASE);
    if (u.protocol === "http:" || u.protocol === "https:") return u.toString();
  } catch {}
  return "";
}

async function fetchText(url: string, headers: Record<string, string> = {}, timeoutMs = HTTP_TIMEOUT_MS): Promise<string> {
  const res = await fetch(url, {
    headers: {
      "User-Agent": BROWSER_UA,
      Accept: "text/html,application/xhtml+xml,application/json;q=0.9,*/*;q=0.8",
      "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
      ...headers,
    },
    signal: AbortSignal.timeout(timeoutMs),
  });
  if (!res.ok) {
    throw new Error("HTTP " + res.status + " for " + url);
  }
  return await res.text();
}

async function mapConcurrent<T, R>(
  items: T[],
  limit: number,
  workerFn: (item: T, idx: number) => Promise<R>,
): Promise<R[]> {
  const results = new Array<R>(items.length);
  let cursor = 0;
  async function worker() {
    while (true) {
      const idx = cursor++;
      if (idx >= items.length) return;
      results[idx] = await workerFn(items[idx], idx);
    }
  }
  const workers = Array.from({ length: Math.min(limit, Math.max(1, items.length)) }, () => worker());
  await Promise.all(workers);
  return results;
}

function parseListingCards(html: string, defaultMediaType: StardimaV2MediaType, pageOffset: number): {
  items: RawScrapedItem[];
  maxPage: number;
} {
  const $ = cheerio.load(html);
  let maxPage = 1;
  $("a[href*=\"page=\"]").each((_i, el) => {
    const href = $(el).attr("href") || "";
    const m = href.match(/[?&]page=(\d+)/);
    if (m) {
      const p = Number.parseInt(m[1], 10);
      if (Number.isFinite(p) && p > maxPage) maxPage = p;
    }
  });

  const items: RawScrapedItem[] = [];
  const seen = new Set<string>();
  $("a[href*=\"/tvshow/\"], a[href*=\"/movie/\"]").each((idx, el) => {
    const href = $(el).attr("href") || "";
    const match = href.match(/\/(tvshow|movie)\/([a-zA-Z0-9_-]+)/);
    if (!match) return;
    const mediaType: StardimaV2MediaType = match[1] === "movie" ? "movie" : "series";
    const slug = match[2];
    const key = mediaType + ":" + slug;
    if (seen.has(key)) return;
    seen.add(key);

    const card = $(el).closest("div.group\\/item, div.relative, article, li").first();
    const scope = card.length ? card : $(el).parent();
    const title =
      cleanText($(el).find("h3").first().text()) ||
      cleanText(scope.find("h3").first().text()) ||
      cleanText($(el).attr("title")) ||
      slug;
    if (!title || title === "شارك هذا العرض") return;

    const imgEl = scope.find("img").first();
    const image = safePosterUrl(imgEl.attr("src") || imgEl.attr("data-src") || imgEl.attr("data-lazy-src"));

    const metaSpans = $(el)
      .find("div.text-gray-300 span, span")
      .map((_j, s) => cleanText($(s).text()))
      .get();
    let year = "";
    for (const s of metaSpans) {
      const ym = s.match(/\b(19\d{2}|20\d{2})\b/);
      if (ym) {
        year = ym[1];
        break;
      }
    }

    const langText = cleanText($(el).find("p.text-gray-400").first().text()) || cleanText(scope.find("p.text-gray-400").first().text());
    const languageLabel = normalizeLanguageLabel(langText);

    const scopeText = cleanText(scope.text());
    const isVip = /\bVIP\b|مدفوع|عضوية|اشتراك\s*حصري/i.test(scopeText);

    items.push({
      id: stableNumericId(key),
      slug,
      mediaType: mediaType || defaultMediaType,
      title,
      image,
      year,
      languageLabel,
      isVip,
      addedOrder: pageOffset + idx,
    });
  });

  return { items, maxPage };
}

let rawCatalog: RawScrapedItem[] = [];
let anmySubSet = new Set<string>();
let subClassMap = new Map<string, "anime" | "cartoon">();
let lastCatalogBuildAt = 0;
let lastNewReleasesCheckAt = 0;
let catalogBuildPromise: Promise<void> | null = null;
let subClassifierRunning = false;
let diskLoaded = false;

const detailCache = new Map<string, { expiresAt: number; value: StardimaV2Detail }>();
const detailInFlight = new Map<string, Promise<StardimaV2Detail>>();
const serverListCache = new Map<string, { expiresAt: number; value: StardimaV2Server[] }>();

function loadDiskCacheIfNeeded(): void {
  if (diskLoaded) return;
  diskLoaded = true;
  try {
    const filePath = resolveDataFilePath();
    if (!fs.existsSync(filePath)) return;
    const raw = JSON.parse(fs.readFileSync(filePath, "utf8")) as DiskCatalogPayload;
    if (Array.isArray(raw.items) && raw.items.length > 0) {
      rawCatalog = raw.items;
      lastCatalogBuildAt = Number(raw.updatedAt) || 0;
      anmySubSet = new Set(Array.isArray(raw.anmySubSlugs) ? raw.anmySubSlugs : []);
      subClassMap = new Map(Object.entries(raw.subClassification || {}));
    }
  } catch {
    // Ignore corrupt disk cache; fresh crawl will regenerate it.
  }
}

function saveDiskCache(): void {
  try {
    const filePath = resolveDataFilePath();
    fs.mkdirSync(path.dirname(filePath), { recursive: true });
    const payload: DiskCatalogPayload = {
      version: 1,
      updatedAt: lastCatalogBuildAt || Date.now(),
      items: rawCatalog,
      anmySubSlugs: [...anmySubSet],
      subClassification: Object.fromEntries(subClassMap.entries()),
    };
    const tmp = filePath + ".tmp";
    fs.writeFileSync(tmp, JSON.stringify(payload), "utf8");
    fs.renameSync(tmp, filePath);
  } catch {
    // Best-effort persistence.
  }
}

function extractEnglishCandidateFromPageTitle(pageTitle: string): string {
  const withoutBrand = pageTitle.replace(/\s*-\s*ستارديما\s*$/i, "").trim();
  const parts = withoutBrand.split("|").map((p) => p.trim()).filter(Boolean);
  for (const part of parts) {
    if (/[a-zA-Z]{3,}/.test(part)) return part;
  }
  return parts[0] || withoutBrand;
}

function cleanAnimeQueryTitle(title: string): string {
  return title
    .replace(/\((?:cam|19\d{2}|20\d{2}|مدبلج|مترجم)\)/gi, " ")
    .replace(/\b(?:season|part|cour)\s*\d+\b/gi, " ")
    .replace(/[:\-–]+\s*$/, "")
    .replace(/\s+/g, " ")
    .trim();
}

function normalizeCmp(s: string): string {
  return s
    .toLowerCase()
    .replace(/[^a-z0-9\u0621-\u064a]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

async function queryAniListIsJapaneseAnime(searchTitle: string): Promise<"anime" | "not_anime" | "retry"> {
  const query = cleanAnimeQueryTitle(searchTitle);
  if (query.length < 2) return "not_anime";
  const gql = `query ($search: String) {
    Page(page: 1, perPage: 5) {
      media(search: $search, type: ANIME) {
        id
        countryOfOrigin
        title { romaji english native }
        synonyms
      }
    }
  }`;
  try {
    const res = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json", Accept: "application/json" },
      body: JSON.stringify({ query: gql, variables: { search: query } }),
      signal: AbortSignal.timeout(8000),
    });
    if (res.status === 429 || res.status >= 500) return "retry";
    if (!res.ok) return "not_anime";
    const json = (await res.json()) as any;
    const list: any[] = json?.data?.Page?.media || [];
    const target = normalizeCmp(query);
    for (const m of list) {
      if (m?.countryOfOrigin !== "JP") continue;
      const candidates = [
        m?.title?.romaji,
        m?.title?.english,
        m?.title?.native,
        ...(Array.isArray(m?.synonyms) ? m.synonyms : []),
      ]
        .map((v) => normalizeCmp(String(v || "")))
        .filter(Boolean);
      if (
        candidates.some(
          (c) =>
            c === target ||
            (target.length >= 5 && (c.includes(target) || target.includes(c))),
        )
      ) {
        return "anime";
      }
    }
    return "not_anime";
  } catch {
    return "retry";
  }
}

async function classifySingleSubbedWork(item: RawScrapedItem): Promise<"anime" | "cartoon" | "retry"> {
  const key = item.mediaType + ":" + item.slug;
  if (anmySubSet.has(key) || anmySubSet.has(item.slug)) return "anime";
  if (ANIME_KEYWORD_REGEX.test(item.title)) return "anime";

  let candidateTitle = item.title;
  try {
    const detailPath = item.mediaType === "movie" ? "/movie/" + item.slug : "/tvshow/" + item.slug;
    const html = await fetchText(STARDIMA_BASE + detailPath, {}, 10_000);
    const $ = cheerio.load(html);
    const pageTitle = cleanText($("title").text());
    const metaDesc = cleanText($("meta[name=\"description\"]").attr("content") || "");
    if (
      /أنمي|انمي\s+ياباني|مانجا/i.test(metaDesc) ||
      ANIME_KEYWORD_REGEX.test(pageTitle)
    ) {
      return "anime";
    }
    const extracted = extractEnglishCandidateFromPageTitle(pageTitle);
    if (extracted) candidateTitle = extracted;
  } catch {
    return "retry";
  }

  const alResult = await queryAniListIsJapaneseAnime(candidateTitle);
  if (alResult === "anime") return "anime";
  if (alResult === "retry") return "retry";

  if (candidateTitle !== item.title && /[a-zA-Z]{3,}/.test(item.title)) {
    const alSecond = await queryAniListIsJapaneseAnime(item.title);
    if (alSecond === "anime") return "anime";
    if (alSecond === "retry") return "retry";
  }

  return "cartoon";
}

function sleepMs(ms: number): Promise<void> {
  return new Promise((r) => setTimeout(r, ms));
}

function startBackgroundSubClassifier(): void {
  if (subClassifierRunning) return;
  const pending = rawCatalog.filter(
    (item) =>
      !item.isVip &&
      item.languageLabel === "مترجم" &&
      !anmySubSet.has(item.mediaType + ":" + item.slug) &&
      !subClassMap.has(item.mediaType + ":" + item.slug),
  );
  if (!pending.length) return;
  subClassifierRunning = true;
  void (async () => {
    try {
      let processed = 0;
      await mapConcurrent(pending, 2, async (item) => {
        const key = item.mediaType + ":" + item.slug;
        let result = await classifySingleSubbedWork(item);
        if (result === "retry") {
          await sleepMs(1500);
          result = await classifySingleSubbedWork(item);
        }
        if (result === "anime" || result === "cartoon") {
          subClassMap.set(key, result);
          processed++;
          if (processed % 25 === 0) saveDiskCache();
        }
        await sleepMs(450);
      });
      saveDiskCache();
    } finally {
      subClassifierRunning = false;
    }
  })();
}

interface JsonListingVideo {
  id?: number | string;
  title?: string;
  url?: string;
  poster_url?: string;
  year?: string | number;
  video_quality?: string;
  is_series?: boolean;
}

interface JsonListingPage {
  videos?: JsonListingVideo[];
  pagination?: { current_page?: number; last_page?: number };
}

function mapJsonVideoToRaw(v: JsonListingVideo, defaultMediaType: StardimaV2MediaType, orderIdx: number): RawScrapedItem | null {
  const rawUrl = cleanText(v?.url);
  const match = rawUrl.match(/\/(tvshow|movie)\/([a-zA-Z0-9_-]+)/);
  if (!match) return null;
  const mediaType: StardimaV2MediaType = match[1] === "movie" ? "movie" : (match[1] === "tvshow" ? "series" : defaultMediaType);
  const slug = match[2];
  const title = cleanText(v.title) || slug;
  const qualityRaw = cleanText(v.video_quality);
  const isVip = /\bVIP\b|مدفوع|عضوية|اشتراك\s*حصري/i.test(qualityRaw + " " + title);
  const yearMatch = cleanText(v.year).match(/\b(19\d{2}|20\d{2})\b/);
  const upId = Number.parseInt(String(v.id ?? ""), 10);
  return {
    id: Number.isFinite(upId) && upId > 0 ? upId : stableNumericId(mediaType + ":" + slug),
    slug,
    mediaType,
    title,
    image: safePosterUrl(v.poster_url),
    year: yearMatch ? yearMatch[1] : "",
    languageLabel: normalizeLanguageLabel(qualityRaw),
    isVip,
    addedOrder: orderIdx,
  };
}

async function fetchJsonListingPage(url: string): Promise<{ items: RawScrapedItem[]; lastPage: number }> {
  const jsonText = await fetchText(url, {
    "X-Requested-With": "XMLHttpRequest",
    Accept: "application/json, text/plain, */*",
    Referer: STARDIMA_BASE + "/",
  });
  const data = JSON.parse(jsonText) as JsonListingPage;
  const defaultMediaType: StardimaV2MediaType = url.includes("/aflam") ? "movie" : "series";
  const lastPage = Math.max(1, Number(data?.pagination?.last_page) || 1);
  const videos = Array.isArray(data?.videos) ? data.videos : [];
  const items: RawScrapedItem[] = [];
  for (let i = 0; i < videos.length; i++) {
    const mapped = mapJsonVideoToRaw(videos[i], defaultMediaType, i);
    if (mapped) items.push(mapped);
  }
  return { items, lastPage };
}

async function crawlAllPages(basePath: "/mosalsalat" | "/aflam", mediaType: StardimaV2MediaType): Promise<RawScrapedItem[]> {
  const first = await fetchJsonListingPage(STARDIMA_BASE + basePath + "?page=1");
  const totalPages = Math.max(1, first.lastPage);
  const pageNums: number[] = [];
  for (let p = 2; p <= totalPages; p++) pageNums.push(p);

  const rest = await mapConcurrent(pageNums, 8, async (pageNum) => {
    try {
      const page = await fetchJsonListingPage(STARDIMA_BASE + basePath + "?page=" + pageNum);
      return page.items.map((it, idx) => ({ ...it, mediaType: it.mediaType || mediaType, addedOrder: (pageNum - 1) * 15 + idx }));
    } catch {
      return [] as RawScrapedItem[];
    }
  });

  const all: RawScrapedItem[] = [...first.items];
  for (const list of rest) all.push(...list);
  return all;
}

async function fetchExcludedCategorySlugs(): Promise<Set<string>> {
  const excluded = new Set<string>();
  const bases: string[] = [];
  for (const cat of ANIME_CATEGORIES_TO_EXCLUDE) {
    bases.push(STARDIMA_BASE + "/mosalsalat?language=sub&category=" + cat);
    bases.push(STARDIMA_BASE + "/aflam?language=sub&category=" + cat);
  }
  await mapConcurrent(bases, 4, async (baseUrl) => {
    try {
      const first = await fetchJsonListingPage(baseUrl + "&page=1");
      for (const item of first.items) {
        excluded.add(item.mediaType + ":" + item.slug);
        excluded.add(item.slug);
      }
      for (let p = 2; p <= first.lastPage; p++) {
        const pg = await fetchJsonListingPage(baseUrl + "&page=" + p);
        for (const item of pg.items) {
          excluded.add(item.mediaType + ":" + item.slug);
          excluded.add(item.slug);
        }
      }
    } catch {}
  });
  return excluded;
}

async function rebuildFullCatalog(): Promise<void> {
  if (catalogBuildPromise) return catalogBuildPromise;
  catalogBuildPromise = (async () => {
    try {
      const [seriesList, moviesList, excludedCats] = await Promise.all([
        crawlAllPages("/mosalsalat", "series"),
        crawlAllPages("/aflam", "movie"),
        fetchExcludedCategorySlugs(),
      ]);

      const merged = new Map<string, RawScrapedItem>();
      const maxLen = Math.max(seriesList.length, moviesList.length);
      for (let i = 0; i < maxLen; i++) {
        if (i < moviesList.length) {
          const m = moviesList[i];
          const k = m.mediaType + ":" + m.slug;
          if (!merged.has(k)) merged.set(k, m);
        }
        if (i < seriesList.length) {
          const s = seriesList[i];
          const k = s.mediaType + ":" + s.slug;
          if (!merged.has(k)) merged.set(k, s);
        }
      }

      if (merged.size > 100) {
        rawCatalog = [...merged.values()];
        anmySubSet = excludedCats;
        lastCatalogBuildAt = Date.now();
        lastNewReleasesCheckAt = Date.now();
        saveDiskCache();
        startBackgroundSubClassifier();
      }
    } finally {
      catalogBuildPromise = null;
    }
  })();
  return catalogBuildPromise;
}

async function refreshNewReleases(): Promise<void> {
  if (Date.now() - lastNewReleasesCheckAt < NEW_RELEASES_TTL_MS) return;
  lastNewReleasesCheckAt = Date.now();
  try {
    const [p1Ser, p1Mov] = await Promise.all([
      fetchJsonListingPage(STARDIMA_BASE + "/mosalsalat?page=1").catch(() => ({ items: [], lastPage: 1 })),
      fetchJsonListingPage(STARDIMA_BASE + "/aflam?page=1").catch(() => ({ items: [], lastPage: 1 })),
    ]);
    const fresh = [...p1Mov.items, ...p1Ser.items];
    if (!fresh.length) return;
    const byKey = new Map(rawCatalog.map((it) => [it.mediaType + ":" + it.slug, it]));
    let added = 0;
    for (const item of fresh) {
      const k = item.mediaType + ":" + item.slug;
      if (!byKey.has(k)) {
        rawCatalog.unshift(item);
        byKey.set(k, item);
        added++;
      }
    }
    if (added > 0) {
      saveDiskCache();
      startBackgroundSubClassifier();
    }
  } catch {
    // Non-fatal
  }
}

function isItemEligible(item: RawScrapedItem): boolean {
  if (item.isVip) return false;
  if (item.languageLabel !== "مترجم") return true; // All dubbed works allowed
  const key = item.mediaType + ":" + item.slug;
  if (anmySubSet.has(key) || anmySubSet.has(item.slug)) return false;
  if (ANIME_KEYWORD_REGEX.test(item.title)) return false;
  const cls = subClassMap.get(key);
  if (cls === "anime") return false;
  // Wait for subbed classifier to approve cartoon, OR if classifier confirmed cartoon
  if (cls === "cartoon") return true;
  // While still classifying initial batch, exclude until verified non-anime so anime never leaks in
  return false;
}

function toPublicEntry(item: RawScrapedItem): StardimaV2CatalogItem {
  const isDubbed = item.languageLabel !== "مترجم";
  return {
    id: item.id,
    slug: item.slug,
    provider: "sd2",
    providerLabel: item.languageLabel,
    title: item.title,
    image: item.image,
    mediaType: item.mediaType,
    isMovie: item.mediaType === "movie",
    year: item.year,
    languageLabel: item.languageLabel,
    isDubbed,
    isSubbed: !isDubbed,
    category: item.mediaType === "movie" ? "أفلام" : "مسلسلات",
  };
}

export async function getStardimaV2Catalog(forceRefresh = false): Promise<StardimaV2CatalogItem[]> {
  loadDiskCacheIfNeeded();

  if (forceRefresh || rawCatalog.length === 0) {
    await rebuildFullCatalog();
  } else if (Date.now() - lastCatalogBuildAt > CATALOG_TTL_MS) {
    void rebuildFullCatalog();
  } else {
    void refreshNewReleases();
    startBackgroundSubClassifier();
  }

  return rawCatalog.filter(isItemEligible).map(toPublicEntry);
}

export function findStardimaV2ByIdOrSlug(slugOrId: string): StardimaV2CatalogItem | null {
  loadDiskCacheIfNeeded();
  const needle = cleanText(slugOrId);
  if (!needle) return null;
  const num = Number(needle);
  const found = rawCatalog.find(
    (item) => item.slug === needle || (Number.isSafeInteger(num) && item.id === num),
  );
  return found ? toPublicEntry(found) : null;
}

function extractFirstHyperwatchingUrl(html: string): string {
  const m = html.match(/https?:\/\/v2\.hyperwatching\.com\/watch\/[a-zA-Z0-9_-]+/);
  return m ? m[0] : "";
}

export async function getStardimaV2Episodes(
  slugOrId: string,
  mediaTypeHint?: StardimaV2MediaType,
  forceRefresh = false,
): Promise<StardimaV2Detail> {
  loadDiskCacheIfNeeded();
  const known = findStardimaV2ByIdOrSlug(slugOrId);
  const slug = known?.slug || cleanText(slugOrId);
  const mediaType: StardimaV2MediaType = mediaTypeHint || known?.mediaType || "series";
  const cacheKey = mediaType + ":" + slug;

  if (!forceRefresh) {
    const cached = detailCache.get(cacheKey);
    if (cached && cached.expiresAt > Date.now()) return cached.value;
  }

  const inFlight = detailInFlight.get(cacheKey);
  if (inFlight) return inFlight;

  const task = (async (): Promise<StardimaV2Detail> => {
    if (mediaType === "movie") {
      const playHtml = await fetchText(STARDIMA_BASE + "/play/" + encodeURIComponent(slug));
      const $ = cheerio.load(playHtml);
      const watchUrl =
        safeUrlOrEmpty($("iframe[src*=\"hyperwatching\"]").attr("src")) ||
        extractFirstHyperwatchingUrl(playHtml);
      const pageTitle =
        known?.title ||
        cleanText($("h1").first().text()) ||
        extractEnglishCandidateFromPageTitle(cleanText($("title").text())) ||
        slug;
      const poster = known?.image || safePosterUrl($("meta[property=\"og:image\"]").attr("content"));
      if (!watchUrl) {
        throw new Error("لم يتم العثور على مشغل هذا الفيلم");
      }
      const detail: StardimaV2Detail = {
        slug,
        title: pageTitle,
        mediaType: "movie",
        image: poster,
        year: known?.year || "",
        languageLabel: known?.languageLabel || "مدبلج",
        seasons: [
          {
            seasonId: "movie-" + slug,
            seasonNumber: 1,
            label: "الفيلم",
            episodes: [
              {
                epId: "movie-" + slug,
                number: 1,
                title: pageTitle,
                watchUrl,
                thumbnail: poster,
                seasonNumber: 1,
                seasonLabel: "الفيلم",
              },
            ],
          },
        ],
      };
      detailCache.set(cacheKey, { expiresAt: Date.now() + DETAIL_TTL_MS, value: detail });
      return detail;
    }

    // Series flow: /tvshow/{slug} -> /tvshow/{slug}/play/{firstEpId} -> /series/season/{seasonId}
    const showUrl = STARDIMA_BASE + "/tvshow/" + encodeURIComponent(slug);
    const showHtml = await fetchText(showUrl);
    const $show = cheerio.load(showHtml);
    const title =
      known?.title ||
      cleanText($show("meta[property=\"og:title\"]").attr("content")) ||
      slug;
    const poster =
      known?.image ||
      safePosterUrl($show("meta[property=\"og:image\"]").attr("content"));

    let playPageUrl =
      safeUrlOrEmpty($show("meta[property=\"og:video\"]").attr("content")) ||
      safeUrlOrEmpty($show("a[href*=\"/play/\"]").first().attr("href"), STARDIMA_BASE);

    if (!playPageUrl) {
      const m = showHtml.match(/\/tvshow\/[^"\s]+\/play\/\d+/);
      if (m) playPageUrl = STARDIMA_BASE + m[0];
    }
    if (!playPageUrl) {
      throw new Error("لم يتم العثور على حلقات هذا المسلسل");
    }

    const playHtml = await fetchText(playPageUrl, { Referer: showUrl });
    const $play = cheerio.load(playHtml);

    const seasonMeta: { seasonId: string; label: string; seasonNumber: number }[] = [];
    const seenSeasons = new Set<string>();
    $play("[data-season-id]").each((idx, el) => {
      const sid = cleanText($play(el).attr("data-season-id"));
      if (!sid || !/^\d+$/.test(sid) || seenSeasons.has(sid)) return;
      seenSeasons.add(sid);
      const rawLabel = cleanText($play(el).text()) || "الموسم " + (idx + 1);
      const numMatch = rawLabel.match(/(\d+)/);
      seasonMeta.push({
        seasonId: sid,
        label: rawLabel,
        seasonNumber: numMatch ? Number.parseInt(numMatch[1], 10) : idx + 1,
      });
    });

    const seasons: StardimaV2Season[] = [];
    const isSeriesDubbed = known ? known.isDubbed : !playHtml.includes("مترجم");

    if (seasonMeta.length > 0) {
      const seasonResults = await mapConcurrent(seasonMeta, 4, async (meta) => {
        try {
          const jsonText = await fetchText(
            STARDIMA_BASE + "/series/season/" + meta.seasonId,
            {
              "X-Requested-With": "XMLHttpRequest",
              Referer: playPageUrl,
              Accept: "application/json, text/plain, */*",
            },
          );
          const data = JSON.parse(jsonText) as {
            episodes?: {
              id?: number | string;
              episode_number?: number | string;
              title?: string;
              is_exclusive?: boolean;
              watch_url?: string;
            }[];
          };
          const eps: StardimaV2Episode[] = [];
          for (let i = 0; i < (data.episodes || []).length; i++) {
            const ep = data.episodes![i];
            if (ep.is_exclusive) continue;
            const watchUrl = safeUrlOrEmpty(ep.watch_url);
            if (!watchUrl) continue;
            const epTitle = cleanText(ep.title) || "الحلقة " + (ep.episode_number ?? i + 1);
            // If series is dubbed, exclude isolated non-dubbed anime episodes explicitly labeled مترجم
            if (isSeriesDubbed && /مترجم/.test(epTitle) && !/مدبلج/.test(epTitle)) continue;
            const num = Number.parseInt(String(ep.episode_number ?? ""), 10);
            eps.push({
              epId: String(ep.id ?? i + 1),
              number: Number.isFinite(num) && num > 0 ? num : i + 1,
              title: epTitle,
              watchUrl,
              thumbnail: poster,
              seasonNumber: meta.seasonNumber,
              seasonLabel: meta.label,
            });
          }
          eps.sort((a, b) => a.number - b.number);
          if (!eps.length) return null;
          return {
            seasonId: meta.seasonId,
            seasonNumber: meta.seasonNumber,
            label: meta.label,
            episodes: eps,
          } satisfies StardimaV2Season;
        } catch {
          return null;
        }
      });
      for (const s of seasonResults) {
        if (s) seasons.push(s);
      }
      seasons.sort((a, b) => a.seasonNumber - b.seasonNumber);
    }

    if (!seasons.length) {
      const fallbackWatchUrl =
        safeUrlOrEmpty($play("iframe[src*=\"hyperwatching\"]").attr("src")) ||
        extractFirstHyperwatchingUrl(playHtml);
      if (!fallbackWatchUrl) {
        throw new Error("لم يتم العثور على حلقات متاحة");
      }
      seasons.push({
        seasonId: "1",
        seasonNumber: 1,
        label: "الموسم 1",
        episodes: [
          {
            epId: "1",
            number: 1,
            title: "الحلقة 1",
            watchUrl: fallbackWatchUrl,
            thumbnail: poster,
            seasonNumber: 1,
            seasonLabel: "الموسم 1",
          },
        ],
      });
    }

    const detail: StardimaV2Detail = {
      slug,
      title,
      mediaType: "series",
      image: poster,
      year: known?.year || "",
      languageLabel: known?.languageLabel || "مدبلج",
      seasons,
    };
    detailCache.set(cacheKey, { expiresAt: Date.now() + DETAIL_TTL_MS, value: detail });
    return detail;
  })();

  detailInFlight.set(cacheKey, task);
  try {
    return await task;
  } finally {
    detailInFlight.delete(cacheKey);
  }
}

function safeUrlOrEmpty(raw: unknown, base?: string): string {
  const s = cleanText(raw);
  if (!s) return "";
  try {
    const u = base ? new URL(s, base) : new URL(s);
    if (u.protocol === "http:" || u.protocol === "https:") return u.toString();
  } catch {}
  return "";
}

export function isAllowedHyperwatchingUrl(raw: string): boolean {
  try {
    const u = new URL(raw);
    return (
      u.protocol === "https:" &&
      (u.hostname === "v2.hyperwatching.com" || u.hostname.endsWith(".hyperwatching.com"))
    );
  } catch {
    return false;
  }
}

function serverPriority(name: string): number {
  const n = name.toLowerCase();
  if (n.includes("uqload")) return 120;
  if (n.includes("lulu")) return 85;
  if (n.includes("mixdrop")) return 80;
  if (n.includes("savefiles")) return 40;
  if (n.includes("streamhg") || n.includes("hgcloud")) return 20;
  return 50;
}

async function verifyStreamReadable(streamUrl: string, referer: string, type: "hls" | "mp4"): Promise<boolean> {
  try {
    const res = await fetch(streamUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: referer,
        ...(type === "mp4" ? { Range: "bytes=0-1023" } : {}),
      },
      signal: AbortSignal.timeout(5500),
    });
    if (!res.ok) return false;
    if (type === "hls") {
      const head = (await res.text()).slice(0, 64);
      return head.includes("#EXTM3U");
    }
    const ct = (res.headers.get("content-type") || "").toLowerCase();
    return !ct.includes("text/html");
  } catch {
    return false;
  }
}

export async function getStardimaV2Servers(watchUrl: string): Promise<StardimaV2Server[]> {
  if (!isAllowedHyperwatchingUrl(watchUrl)) {
    throw new Error("رابط المشاهدة غير مدعوم");
  }
  const cached = serverListCache.get(watchUrl);
  if (cached && cached.expiresAt > Date.now()) return cached.value;

  const html = await fetchText(watchUrl, { Referer: STARDIMA_BASE + "/" });
  const dpMatch = html.match(/data-page="([^"]+)"/);
  if (!dpMatch) {
    throw new Error("تعذر قراءة قائمة السيرفرات");
  }
  const decoded = dpMatch[1]
    .replace(/&quot;/g, "\"")
    .replace(/&amp;/g, "&")
    .replace(/&#039;/g, "'")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">");
  const pageData = JSON.parse(decoded) as any;
  const rawServers: any[] = pageData?.props?.video?.servers || [];
  const servers: StardimaV2Server[] = rawServers
    .filter((s) => s && !s.is_vip && s.id != null)
    .map((s) => {
      const name = cleanText(s.name || "سيرفر");
      return {
        id: String(s.id),
        name,
        status: String(s.status || "completed"),
        priority: serverPriority(name),
      };
    })
    .filter((s) => s.status === "completed")
    .sort((a, b) => b.priority - a.priority);

  serverListCache.set(watchUrl, { expiresAt: Date.now() + SERVER_LIST_TTL_MS, value: servers });
  return servers;
}

function unpackDeanEdwards(html: string): string[] {
  const unpacked: string[] = [];
  const re =
    /eval\(function\(p,a,c,k,e,[dr]\)\{[\s\S]*?return p\}\((['"])([\s\S]*?)\1,(\d+),(\d+),(['"])([\s\S]*?)\5\.split\(['"]\|['"]\)/g;
  let match: RegExpExecArray | null;
  while ((match = re.exec(html)) !== null) {
    let p = match[2];
    const radix = Number.parseInt(match[3], 10);
    let count = Number.parseInt(match[4], 10);
    const dict = match[6].split("|");
    if (!Number.isFinite(radix) || radix < 2 || radix > 36 || !Number.isFinite(count)) continue;
    while (count--) {
      if (dict[count]) {
        const token = count.toString(radix);
        p = p.replace(new RegExp("\\b" + token + "\\b", "g"), dict[count]);
      }
    }
    unpacked.push(p);
  }
  return unpacked;
}

function unwrapEmbedUrl(rawUrl: string): string {
  try {
    const u = new URL(rawUrl);
    if (u.hostname.includes("iimag.top") && u.searchParams.has("id")) {
      const inner = u.searchParams.get("id") || "";
      if (/^https?:\/\//i.test(inner)) return inner;
    }
  } catch {}
  return rawUrl;
}

function extractDirectStreamFromHtml(
  html: string,
  embedUrl: string,
): { url: string; type: "hls" | "mp4" } | null {
  const texts = [...unpackDeanEdwards(html), html];
  for (const text of texts) {
    const mdCore = text.match(/MDCore\.wurl\s*=\s*['"]((?:https?:)?\/\/[^"'\s]+)['"]/i);
    if (mdCore) {
      const raw = mdCore[1].startsWith("//") ? "https:" + mdCore[1] : mdCore[1];
      return { url: raw, type: raw.includes(".m3u8") ? "hls" : "mp4" };
    }

    const m3u8 = text.match(/(?:file|src)\s*[:=]\s*['"](https?:\/\/[^"'\s]+\.m3u8[^"'\s]*)['"]/i)
      || text.match(/(https?:\/\/[^"'\s\\]+\.m3u8[^"'\s\\]*)/i);
    if (m3u8) {
      return { url: m3u8[1], type: "hls" };
    }

    const mp4 = text.match(/(?:file|src)\s*[:=]\s*['"](https?:\/\/[^"'\s]+\.mp4[^"'\s]*)['"]/i)
      || text.match(/(https?:\/\/[^"'\s\\]+\.mp4[^"'\s\\]*)/i);
    if (mp4) {
      return { url: mp4[1], type: "mp4" };
    }
  }
  void embedUrl;
  return null;
}

export async function resolveStardimaV2Stream(
  watchUrl: string,
  requestedServerId?: string,
): Promise<StardimaV2ResolvedStream> {
  if (!isAllowedHyperwatchingUrl(watchUrl)) {
    throw new Error("رابط المشاهدة غير مدعوم");
  }
  const hashid = watchUrl.replace(/\/+$/, "").split("/").pop() || "";
  if (!hashid) throw new Error("معرف الفيديو غير صالح");

  const servers = await getStardimaV2Servers(watchUrl);
  if (!servers.length) throw new Error("لا توجد سيرفرات متاحة حالياً");

  const ordered = requestedServerId
    ? [
        ...servers.filter((s) => s.id === requestedServerId),
        ...servers.filter((s) => s.id !== requestedServerId),
      ]
    : servers;

  let lastError = "تعذر استخراج رابط الفيديو";
  for (const srv of ordered) {
    try {
      const urlEndpoint =
        HYPERWATCHING_ORIGIN + "/embed/" + encodeURIComponent(hashid) + "/server/" + encodeURIComponent(srv.id) + "/url";
      const resJsonText = await fetchText(urlEndpoint, {
        Referer: watchUrl,
        "X-Requested-With": "XMLHttpRequest",
        Accept: "application/json, text/plain, */*",
      }, 10_000);
      const parsed = JSON.parse(resJsonText) as { watch_url?: string };
      if (!parsed.watch_url) continue;

      const embedUrl = unwrapEmbedUrl(parsed.watch_url);
      const embedHost = (() => {
        try {
          return new URL(embedUrl).origin + "/";
        } catch {
          return HYPERWATCHING_ORIGIN + "/";
        }
      })();
      const embedHtml = await fetchText(embedUrl, { Referer: HYPERWATCHING_ORIGIN + "/" }, 10_000);
      const extracted = extractDirectStreamFromHtml(embedHtml, embedUrl);
      if (extracted?.url && (await verifyStreamReadable(extracted.url, embedHost, extracted.type))) {
        return {
          streamUrl: extracted.url,
          type: extracted.type,
          referer: embedHost,
          serverId: srv.id,
          serverName: srv.name,
          quality: extracted.type === "hls" ? "1080p" : "720p",
        };
      }
    } catch (err: any) {
      lastError = err?.message || lastError;
    }
  }

  throw new Error(lastError);
}

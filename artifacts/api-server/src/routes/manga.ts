import { Router } from "express";
import vm from "node:vm";
import { logger } from "../lib/logger.js";

const router = Router();

const HOUND_BASE = (process.env.HOUND_SERVICE_URL || "http://127.0.0.1:8766").replace(/\/fetch\/?$/, "").replace(/\/+$/, "");
const HOUND_URL = `${HOUND_BASE}/fetch`;
const MANGADAR_BASE = "https://mangadar.com";
const AZORAFLY_BASE = "https://azorafly.com";
const UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36";

// ── Simple In-Memory Cache ───────────────────────────────────────────────────
interface CacheEntry<T> {
  data: T;
  expiresAt: number;
}
const cache = new Map<string, CacheEntry<any>>();

function getCached<T>(key: string): T | null {
  const entry = cache.get(key);
  if (!entry) return null;
  if (Date.now() > entry.expiresAt) {
    cache.delete(key);
    return null;
  }
  return entry.data as T;
}

function setCached<T>(key: string, data: T, ttlMs: number): void {
  if (cache.size > 500) {
    const oldestKey = cache.keys().next().value;
    if (oldestKey) cache.delete(oldestKey);
  }
  cache.set(key, { data, expiresAt: Date.now() + ttlMs });
}



const KNOWN_AR_TITLES: Record<string, string> = {
  "one piece": "ون بيس",
  "kingdom": "المملكة (كينغدوم)",
  "berserk": "بيرسيرك",
  "jujutsu kaisen": "جوجوتسو كايسن",
  "chainsaw man": "رجل المنشار",
  "attack on titan": "هجوم العمالقة",
  "shingeki no kyojin": "هجوم العمالقة",
  "hunter x hunter": "هنتر إكس هنتر",
  "bleach": "بليتش",
  "naruto": "ناروتو",
  "black clover": "البرسيم الأسود",
  "solo leveling": "الارتقاء المنفرد",
  "tower of god": "برج الإله",
  "omniscient reader": "قارئ وجهة نظر كل شيء",
  "omniscient reader's viewpoint": "قارئ وجهة نظر كل شيء",
  "the beginning after the end": "البداية بعد النهاية",
  "blue lock": "القفل الأزرق (بلو لوك)",
  "frieren": "فريرين: ما وراء نهاية الرحلة",
  "dandadan": "دان دا دان",
  "sakamoto days": "أيام ساكاموتو",
  "kaiju no. 8": "كايجو رقم 8",
  "monster": "مونستر",
  "vagabond": "فاغابوند",
  "vinland saga": "فينلاند ساغا",
  "tokyo ghoul": "طوكيو غول",
  "death note": "مذكرة الموت",
  "demon slayer": "قاتل الشياطين",
  "kimetsu no yaiba": "قاتل الشياطين",
  "one punch man": "ون بنش مان",
  "one-punch man": "ون بنش مان",
  "my hero academia": "أكاديميتي للأبطال",
  "spy x family": "سباي إكس فاميلي",
  "haikyu!!": "هايكيو!!",
  "tokyo revengers": "طوكيو ريفنجرز",
  "dr. stone": "دكتور ستون",
  "oshi no ko": "أوشي نو كو",
  "goodnight punpun": "طابت ليلتك بونبون",
  "gantz": "غانتز",
  "claymore": "كلايمور",
  "slam dunk": "سلام دانك",
  "dragon ball": "دراغون بول",
  "dragon ball super": "دراغون بول سوبر",
  "boruto": "بوروتو",
  "fairy tail": "فيري تيل",
  "fullmetal alchemist": "الخيميائي المعدني الكامل",
  "the promised neverland": "نيفرلاند الموعودة",
  "seven deadly sins": "الخطايا السبع المميتة",
  "eleceed": "إليزيد",
  "nano machine": "النانو ماشين",
  "wind breaker": "ويند بريكر",
  "lookism": "ازدواجية المظهر (لوكيسم)",
  "the greatest estate developer": "أعظم مهندس في العالم",
  "return of the mount hua sect": "عودة طائفة جبل هوا",
  "legend of the northern blade": "أسطورة النصل الشمالي",
  "mercenary enrollment": "التحاق المرتزقة",
  "who made me a princess": "من جعلني أميرة",
  "villains are destined to die": "مصير الأشرار هو الموت",
};

const arTitleCache = new Map<string, string>();
const trailerCache = new Map<string, { id: string; site: string; thumbnail: string; url: string } | null>();

function lookupKnownArabicTitle(enTitle: string): string | null {
  const clean = (enTitle || "").trim();
  if (!clean) return null;
  if (/[\u0600-\u06FF]/.test(clean)) return clean;
  const lower = clean.toLowerCase();
  if (KNOWN_AR_TITLES[lower]) return KNOWN_AR_TITLES[lower];
  if (arTitleCache.has(lower)) return arTitleCache.get(lower)!;
  for (const [k, v] of Object.entries(KNOWN_AR_TITLES)) {
    if (lower === k || lower.startsWith(k + ":") || lower.startsWith(k + " ")) {
      return v;
    }
  }
  return null;
}

async function translateTitlesBatchToArabic(titles: string[]): Promise<Map<string, string>> {
  const result = new Map<string, string>();
  const toTranslate: string[] = [];

  for (const raw of titles) {
    const t = (raw || "").trim();
    if (!t) continue;
    const known = lookupKnownArabicTitle(t);
    if (known) {
      result.set(t, known);
    } else if (!toTranslate.includes(t)) {
      toTranslate.push(t);
    }
  }

  if (toTranslate.length === 0) return result;

  try {
    const joined = toTranslate.join("\n");
    const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=ar&dt=t&q=${encodeURIComponent(joined)}`;
    const res = await fetch(url, {
      headers: { "User-Agent": UA },
      signal: AbortSignal.timeout(2500),
    });
    if (res.ok) {
      const data = (await res.json()) as any;
      const fullTranslated = Array.isArray(data?.[0])
        ? data[0].map((seg: any) => String(seg?.[0] || "")).join("")
        : "";
      const lines = fullTranslated.split(/\r?\n/).map((l: string) => l.trim());
      toTranslate.forEach((orig, i) => {
        const ar = lines[i] || orig;
        arTitleCache.set(orig.toLowerCase(), ar);
        result.set(orig, ar);
      });
    }
  } catch {
    // Fallback to original title if translation times out
  }

  for (const orig of toTranslate) {
    if (!result.has(orig)) result.set(orig, orig);
  }
  return result;
}

async function resolveYoutubeTrailer(
  enTitle: string,
  arTitle: string,
  source: "manga" | "manhwa"
): Promise<{ id: string; site: string; thumbnail: string; url: string } | null> {
  const baseQuery = (enTitle || arTitle || "").trim();
  if (!baseQuery) return null;
  const cacheKey = `${source}:${baseQuery.toLowerCase()}`;
  if (trailerCache.has(cacheKey)) return trailerCache.get(cacheKey)!;

  try {
    const suffix = source === "manhwa" ? "manhwa webtoon official trailer PV" : "manga anime official trailer PV";
    const searchUrl = `https://www.youtube.com/results?search_query=${encodeURIComponent(baseQuery + " " + suffix)}`;
    const res = await fetch(searchUrl, {
      headers: {
        "User-Agent": UA,
        "Accept-Language": "en-US,en;q=0.9",
      },
      signal: AbortSignal.timeout(2400),
    });
    if (res.ok) {
      const html = await res.text();
      const match = html.match(/"videoId":"([a-zA-Z0-9_-]{11})"/);
      if (match && match[1]) {
        const videoId = match[1];
        const trailer = {
          id: videoId,
          site: "youtube",
          thumbnail: `https://img.youtube.com/vi/${videoId}/hqdefault.jpg`,
          url: `https://www.youtube.com/watch?v=${videoId}`,
        };
        trailerCache.set(cacheKey, trailer);
        return trailer;
      }
    }
  } catch {}

  trailerCache.set(cacheKey, null);
  return null;
}

function normalizeTitleFields(item: any, arTitleRaw: string, enTitleRaw: string) {
  const enTitle = (enTitleRaw || arTitleRaw || "").trim();
  const arTitle = (arTitleRaw || enTitle || "").trim();
  item.arTitle = arTitle;
  item.enTitle = enTitle;
  item.arabicTitle = arTitle;
  item.englishTitle = enTitle;
  item.displayTitle = arTitle || enTitle;
  item.title = {
    romaji: enTitle || arTitle,
    english: enTitle || arTitle,
    native: arTitle || enTitle,
  };
  item.cover = item.poster;
  item.banner = item.bannerImage || item.poster;
  return item;
}
// ── HTML Helpers ─────────────────────────────────────────────────────────────
function decodeHtmlEntities(str: string): string {
  if (!str) return "";
  return str
    .replace(/&#(\d+);/g, (_, dec) => String.fromCharCode(Number(dec)))
    .replace(/&#x([0-9a-fA-F]+);/g, (_, hex) => String.fromCharCode(parseInt(hex, 16)))
    .replace(/&quot;/g, '"')
    .replace(/&#039;/g, "'")
    .replace(/&apos;/g, "'")
    .replace(/&amp;/g, "&")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&nbsp;/g, " ")
    .trim();
}

function stripHtml(html: string): string {
  if (!html) return "";
  return decodeHtmlEntities(
    html
      .replace(/<br\s*\/?>/gi, "\n")
      .replace(/<\/p>/gi, "\n")
      .replace(/<[^>]+>/g, " ")
      .replace(/[ \t]+/g, " ")
      .replace(/\n\s*\n/g, "\n")
      .trim()
  );
}

// ── MangaDar (https://mangadar.com/manga/) Helpers ───────────────────────────
async function fetchMangaDarHtml(url: string): Promise<string> {
  const res = await fetch(HOUND_URL, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      url,
      wait: 1000,
      referer: `${MANGADAR_BASE}/manga/`,
      solve_cf: true,
    }),
    signal: AbortSignal.timeout(60_000),
  });
  if (!res.ok) {
    throw new Error(`Hound service HTTP ${res.status} for ${url}`);
  }
  const data = (await res.json()) as { ok?: boolean; html?: string; error?: string };
  if (!data?.html) {
    throw new Error(data?.error || `Empty HTML from mangadar for ${url}`);
  }
  return data.html;
}

function mapMangaDarStatus(statusAr: string): { status: "RELEASING" | "FINISHED" | "HIATUS"; statusAr: string } {
  const s = (statusAr || "").trim();
  if (s.includes("مكتمل")) return { status: "FINISHED", statusAr: "مكتمل" };
  if (s.includes("متوقف")) return { status: "HIATUS", statusAr: "متوقف" };
  return { status: "RELEASING", statusAr: "مستمر" };
}

function extractMangaDarSlug(url: string): string {
  const m = url.match(/mangadar\.com\/manga\/([^/?#]+)\/?/i);
  return m ? decodeURIComponent(m[1]) : "";
}

function upgradeMangaDarPoster(posterUrl: string): string {
  if (!posterUrl) return "";
  // Strip small thumbnail suffix -150x210 while keeping original extension
  return posterUrl.replace(/-\d+x\d+(\.[a-zA-Z0-9]+)$/, "$1");
}

function parseMangaDarArchiveHtml(html: string) {
  // First collect high-res grid posters keyed by manga URL
  const gridPosters = new Map<string, string>();
  const gridRegex = /<template\s+x-if="view\s*===\s*'grid'">([\s\S]*?)<\/template>/g;
  let gm: RegExpExecArray | null;
  while ((gm = gridRegex.exec(html)) !== null) {
    const block = gm[1];
    const hrefMatch = block.match(/href="(https:\/\/mangadar\.com\/manga\/[^"]+)"/);
    const imgMatch = block.match(/<img[^>]+src="([^"]+)"/);
    if (hrefMatch && imgMatch) {
      gridPosters.set(hrefMatch[1], imgMatch[1]);
    }
  }

  const items: any[] = [];
  const seenSlugs = new Set<string>();
  const listRegex = /<template\s+x-if="view\s*===\s*'list'">([\s\S]*?)<\/template>/g;
  let lm: RegExpExecArray | null;

  while ((lm = listRegex.exec(html)) !== null) {
    const block = lm[1];
    const hrefMatch = block.match(/href="(https:\/\/mangadar\.com\/manga\/[^"]+)"/);
    if (!hrefMatch) continue;
    const sourceUrl = hrefMatch[1];
    const slug = extractMangaDarSlug(sourceUrl);
    if (!slug || seenSlugs.has(slug)) continue;

    const titleMatch = block.match(/<h3[^>]*>([\s\S]*?)<\/h3>/);
    const title = decodeHtmlEntities(titleMatch ? titleMatch[1] : slug);

    const listImgMatch = block.match(/<img[^>]+src="([^"]+)"/);
    const rawPoster = gridPosters.get(sourceUrl) || (listImgMatch ? listImgMatch[1] : "");
    const poster = upgradeMangaDarPoster(rawPoster) || rawPoster;

    const statusMatch = block.match(/(مستمر|مكتمل|متوقف)/);
    const { status, statusAr } = mapMangaDarStatus(statusMatch ? statusMatch[1] : "مستمر");

    const starMatch = block.match(/#mdg-star[\s\S]*?<span[^>]*>\s*([0-9.]+)\s*<\/span>/);
    const scoreFloat = starMatch ? parseFloat(starMatch[1]) : 0;
    const scoreText = scoreFloat > 0 ? scoreFloat.toFixed(1) : "8.2";
    const averageScore = scoreFloat > 0 ? Math.round(scoreFloat * 10) : 82;

    const chapMatch = block.match(/#mdg-book-open[\s\S]*?<span[^>]*>\s*(\d+)\s*<\/span>/);
    const chapters = chapMatch ? parseInt(chapMatch[1], 10) : 0;

    const genresMatch = block.match(/<span\s+class="hidden sm:inline text-neutral-600">\s*([\s\S]*?)\s*<\/span>/);
    const genres = genresMatch
      ? decodeHtmlEntities(genresMatch[1])
          .split(/[،,]/)
          .map((g) => g.trim())
          .filter(Boolean)
      : [];

    seenSlugs.add(slug);
    items.push({
      id: `md--${slug}`,
      slug,
      source: "manga",
      sourceUrl,
      title,
      arabicTitle: title,
      englishTitle: title,
      poster,
      coverImage: {
        extraLarge: poster,
        large: poster,
      },
      status,
      statusAr,
      averageScore,
      scoreText,
      chapters,
      genres,
      countryOfOrigin: "JP",
      typeLabel: "مانجا",
    });
  }

  return items;
}

async function fetchMangaDarCatalog(opts: {
  page: number;
  status?: string;
  search?: string;
}) {
  const { page, status, search } = opts;
  const cacheKey = `md:catalog:${page}:${status || "ALL"}:${search || ""}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  // If user is searching on page 1, use MangaDar's native AJAX search endpoint first
  if (search && search.trim().length >= 2 && page === 1) {
    const q = search.trim();
    const ajaxUrl = `${MANGADAR_BASE}/wp-admin/admin-ajax.php?action=mangaverse_search&q=${encodeURIComponent(q)}`;
    try {
      const rawJsonText = await fetchMangaDarHtml(ajaxUrl);
      const jsonStart = rawJsonText.indexOf("{");
      const jsonEnd = rawJsonText.lastIndexOf("}");
      if (jsonStart !== -1 && jsonEnd !== -1) {
        const parsed = JSON.parse(rawJsonText.slice(jsonStart, jsonEnd + 1));
        if (parsed?.success && Array.isArray(parsed.data)) {
          const items = parsed.data
            .map((entry: any) => {
              const sourceUrl = String(entry.url || "");
              const slug = extractMangaDarSlug(sourceUrl);
              if (!slug) return null;
              const { status: st, statusAr } = mapMangaDarStatus(String(entry.status || "مستمر"));
              const poster = String(entry.cover || "");
              const ratingNum = parseFloat(String(entry.rating || "0"));
              const scoreText = ratingNum > 0 ? ratingNum.toFixed(1) : "8.2";
              const averageScore = ratingNum > 0 ? Math.round(ratingNum * 10) : 82;
              const chapters = Number(entry.chapters || entry.last_ch || 0);
              const title = decodeHtmlEntities(String(entry.title || slug));
              return {
                id: `md--${slug}`,
                slug,
                source: "manga",
                sourceUrl,
                title,
                arabicTitle: title,
                englishTitle: title,
                poster,
                coverImage: { extraLarge: poster, large: poster },
                status: st,
                statusAr,
                averageScore,
                scoreText,
                chapters,
                genres: Array.isArray(entry.genres) ? entry.genres : [],
                countryOfOrigin: "JP",
                typeLabel: "مانجا",
              };
            })
            .filter(Boolean);

          const trMap = await translateTitlesBatchToArabic(items.map((it: any) => String(it.englishTitle || it.title || "")));
          for (const it of items) {
            const enT = String(it.englishTitle || it.title || "");
            const arT = trMap.get(enT) || enT;
            normalizeTitleFields(it, arT, enT);
          }
          const result = {
            source: "manga",
            page: 1,
            hasNextPage: false,
            items,
          };
          setCached(cacheKey, result, 5 * 60 * 1000);
          return result;
        }
      }
    } catch (err: any) {
      logger.warn({ err: err.message }, "[manga] MangaDar AJAX search fallback to archive");
    }
  }

  // Standard archive page on https://mangadar.com/manga/
  const basePath = page > 1 ? `${MANGADAR_BASE}/manga/page/${page}/` : `${MANGADAR_BASE}/manga/`;
  const params = new URLSearchParams();
  params.set("sort", "popular");
  if (status === "RELEASING") params.set("status", "17");
  else if (status === "FINISHED") params.set("status", "7");
  else if (status === "HIATUS") params.set("status", "31");
  if (search && search.trim()) {
    params.set("s", search.trim());
  }

  const targetUrl = `${basePath}?${params.toString()}`;
  const html = await fetchMangaDarHtml(targetUrl);
  const allItems = parseMangaDarArchiveHtml(html);
  // Keep items with chapters > 0 (or all if none have chapters)
  const withChapters = allItems.filter((item) => (item.chapters || 0) > 0);
  const items = withChapters.length > 0 ? withChapters : allItems;
  const hasNextPage = html.includes(`/manga/page/${page + 1}/`) || allItems.length >= 24;

  const trMap = await translateTitlesBatchToArabic(items.map((it: any) => String(it.englishTitle || it.title || "")));
  for (const it of items) {
    const enT = String(it.englishTitle || it.title || "");
    const arT = trMap.get(enT) || enT;
    normalizeTitleFields(it, arT, enT);
  }
  const result = {
    source: "manga",
    page,
    hasNextPage,
    items,
  };
  setCached(cacheKey, result, 15 * 60 * 1000);
  return result;
}

async function fetchMangaDarDetail(slug: string) {
  const cleanSlug = slug.replace(/^md--/, "").replace(/^\/+|\/+$/g, "");
  const cacheKey = `md:detail:${cleanSlug}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  const url = `${MANGADAR_BASE}/manga/${encodeURIComponent(cleanSlug)}/`;
  const slugWords = cleanSlug.replace(/-/g, " ");
  const [html, earlyTrailer] = await Promise.all([
    fetchMangaDarHtml(url),
    resolveYoutubeTrailer(slugWords, "", "manga"),
  ]);

  // Parse JSON-LD
  let ldData: any = null;
  const ldMatch = html.match(/<script\s+type="application\/ld\+json">\s*([\s\S]*?)\s*<\/script>/i);
  if (ldMatch) {
    try {
      ldData = JSON.parse(ldMatch[1]);
    } catch {}
  }

  // Parse chapters JSON
  let chaptersJson: { cover?: string; rows?: any[] } = {};
  const chMatch = html.match(/<script[^>]*id="mdg-manga-chapters-json"[^>]*>\s*([\s\S]*?)\s*<\/script>/i);
  if (chMatch) {
    try {
      chaptersJson = JSON.parse(chMatch[1]);
    } catch {}
  }

  const h1Match = html.match(/<h1[^>]*>([\s\S]*?)<\/h1>/i);
  const h1Title = decodeHtmlEntities(stripHtml(h1Match ? h1Match[1] : ""));
  const rawLdName = decodeHtmlEntities(String(ldData?.name || ""))
    .replace(/^مانجا\s+/i, "")
    .replace(/^مانهوا\s+/i, "")
    .replace(/\s+مترجم[ةه]?$/i, "")
    .trim();
  const englishTitle = h1Title || rawLdName || cleanSlug;
  let arabicTitle = rawLdName && /[\u0600-\u06FF]/.test(rawLdName) ? rawLdName : "";
  if (!arabicTitle) {
    const trMap = await translateTitlesBatchToArabic([englishTitle]);
    arabicTitle = trMap.get(englishTitle) || englishTitle;
  }
  const title = arabicTitle || englishTitle;

  // Synopsis
  const synMatch = html.match(/x-ref="synContent"[^>]*>([\s\S]*?)<\/div>/i);
  const synopsisFromHtml = synMatch ? stripHtml(synMatch[1]) : "";
  const description = synopsisFromHtml || stripHtml(String(ldData?.description || "")) || "";

  // Cover
  const ogImgMatch = html.match(/<meta\s+property="og:image"\s+content="([^"]+)"/i);
  const poster =
    chaptersJson.cover ||
    String(ldData?.image || "") ||
    (ogImgMatch ? ogImgMatch[1] : "");

  // Status
  const statusMatch = html.match(/(مستمر|مكتمل|متوقف)/);
  const { status, statusAr } = mapMangaDarStatus(statusMatch ? statusMatch[1] : "مستمر");

  // Rating
  const ratingVal = parseFloat(String(ldData?.aggregateRating?.ratingValue || "0"));
  const scoreText = ratingVal > 0 ? ratingVal.toFixed(1) : "8.5";
  const averageScore = ratingVal > 0 ? Math.round(ratingVal * 10) : 85;

  // Genres
  const genres: string[] = Array.isArray(ldData?.genre)
    ? ldData.genre.map((g: any) => decodeHtmlEntities(String(g))).filter(Boolean)
    : [];

  // Author
  const author = decodeHtmlEntities(String(ldData?.author?.name || ""));

  // Chapters
  const rawRows = Array.isArray(chaptersJson.rows) ? chaptersJson.rows : [];
  const chapters = rawRows
    .map((row: any, idx: number) => {
      const chapId = String(row[0] ?? idx + 1);
      const numStr = String(row[1] ?? idx + 1);
      const chapUrl = String(row[2] ?? `${MANGADAR_BASE}/manga/${cleanSlug}/${numStr}/`);
      const ts = Number(row[3] || 0);
      const numVal = Number(row[4] ?? parseFloat(numStr));
      return {
        id: chapId,
        number: Number.isFinite(numVal) ? numVal : idx + 1,
        numberStr: numStr,
        slug: numStr,
        title: `الفصل ${numStr}`,
        url: chapUrl,
        createdAt: ts > 0 ? new Date(ts * 1000).toISOString() : undefined,
      };
    })
    .sort((a, b) => a.number - b.number);

  const trailer = earlyTrailer || (await resolveYoutubeTrailer(englishTitle, arabicTitle, "manga"));

  const detail: any = {
    id: `md--${cleanSlug}`,
    slug: cleanSlug,
    source: "manga",
    title,
    arabicTitle,
    englishTitle,
    description,
    poster,
    coverImage: { extraLarge: poster, large: poster },
    bannerImage: poster,
    status,
    statusAr,
    averageScore,
    scoreText,
    genres,
    author,
    countryOfOrigin: "JP",
    typeLabel: "مانجا",
    trailer,
    trailerYT: trailer?.id || null,
    chaptersCount: chapters.length,
    chapters,
  };
  normalizeTitleFields(detail, arabicTitle, englishTitle);

  setCached(cacheKey, detail, 60 * 60 * 1000);
  return detail;
}

async function fetchMangaDarChapterPages(slug: string, chapter: string) {
  const cleanSlug = slug.replace(/^md--/, "").replace(/^\/+|\/+$/g, "");
  const cleanChapter = String(chapter).replace(/^\/+|\/+$/g, "");
  const cacheKey = `md:chapter:${cleanSlug}:${cleanChapter}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  const url = `${MANGADAR_BASE}/manga/${encodeURIComponent(cleanSlug)}/${encodeURIComponent(cleanChapter)}/`;
  const html = await fetchMangaDarHtml(url);

  const pagesMatch = html.match(/<script[^>]*id="mv-pages-\d+"[^>]*>\s*([\s\S]*?)\s*<\/script>/i);
  if (!pagesMatch) {
    throw new Error(`No reader pages found on MangaDar for ${cleanSlug}/${cleanChapter}`);
  }

  const rawUrls = JSON.parse(pagesMatch[1]) as string[];
  const pages = (Array.isArray(rawUrls) ? rawUrls : []).map((pageUrl, idx) => ({
    index: idx + 1,
    url: String(pageUrl),
  }));

  const result = {
    id: `md--${cleanSlug}`,
    slug: cleanSlug,
    chapter: cleanChapter,
    source: "manga",
    pagesCount: pages.length,
    pages,
  };
  setCached(cacheKey, result, 30 * 60 * 1000);
  return result;
}

// ── Azorafly (https://azorafly.com/) Helpers ─────────────────────────────────
async function fetchAzoraflyTsrData(url: string): Promise<any> {
  const res = await fetch(url, {
    headers: {
      "User-Agent": UA,
      Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      "Accept-Language": "ar,en;q=0.9",
    },
    signal: AbortSignal.timeout(20_000),
  });
  if (!res.ok) {
    throw new Error(`Azorafly HTTP ${res.status} for ${url}`);
  }
  const html = await res.text();
  const scriptRegex = /<script[^>]*>([\s\S]*?)<\/script>/gi;
  const tsrScripts: string[] = [];
  let m: RegExpExecArray | null;
  while ((m = scriptRegex.exec(html)) !== null) {
    if (m[1].includes("$_TSR") || m[1].includes("$R")) {
      tsrScripts.push(m[1]);
    }
  }
  if (tsrScripts.length === 0) {
    throw new Error(`No $_TSR router payload found on ${url}`);
  }

  const sandbox: Record<string, any> = {
    document: { currentScript: { remove() {} } },
    ReadableStream: class {},
  };
  sandbox.self = sandbox;
  sandbox.window = sandbox;

  for (const code of tsrScripts) {
    try {
      vm.runInNewContext(code, sandbox, { timeout: 2000 });
    } catch {}
  }

  const matches = sandbox.$_TSR?.router?.matches;
  if (!Array.isArray(matches) || matches.length === 0) {
    throw new Error(`Empty $_TSR matches on ${url}`);
  }
  const lastMatch = matches[matches.length - 1];
  return lastMatch?.l?.data || lastMatch?.b || {};
}

function mapAzoraflyStatus(seriesStatus?: string): {
  status: "RELEASING" | "FINISHED" | "HIATUS";
  statusAr: string;
} {
  const s = (seriesStatus || "").toUpperCase();
  if (s === "COMPLETED" || s === "FINISHED") return { status: "FINISHED", statusAr: "مكتمل" };
  if (s === "HIATUS" || s === "DROPPED") return { status: "HIATUS", statusAr: "متوقف" };
  return { status: "RELEASING", statusAr: "مستمر" };
}

async function fetchAzoraflyCatalog(opts: {
  page: number;
  status?: string;
  search?: string;
}) {
  const { page, status, search } = opts;
  const cacheKey = `az:catalog:${page}:${status || "ALL"}:${search || ""}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  const params = new URLSearchParams();
  params.set("page", String(page));
  if (status === "RELEASING") params.set("seriesStatus", "ONGOING");
  else if (status === "FINISHED") params.set("seriesStatus", "COMPLETED");
  if (search && search.trim()) {
    params.set("searchTerm", search.trim());
  }

  const url = `${AZORAFLY_BASE}/series?${params.toString()}`;
  const data = await fetchAzoraflyTsrData(url);
  const posts = Array.isArray(data?.initialPosts) ? data.initialPosts : [];
  const totalCount = Number(data?.initialTotalCount || posts.length);

  const items = posts.map((post: any) => {
    const slug = String(post.slug || post.id);
    const title = String(post.postTitle || slug).trim();
    const poster = String(post.featuredImage || "");
    const { status: st, statusAr } = mapAzoraflyStatus(post.seriesStatus);
    const ratingVal = Number(post.averageRating || 0);
    const scoreText = ratingVal > 0 ? ratingVal.toFixed(1) : "8.6";
    const averageScore = ratingVal > 0 ? Math.round(ratingVal * 10) : 86;

    // Estimate latest chapter count from preview chapters
    const previewChaps = Array.isArray(post.chapters) ? post.chapters : [];
    const unlockedPreview = previewChaps.filter((c: any) => !c.isLocked);
    const maxChapNum = unlockedPreview.reduce((max: number, c: any) => {
      const n = parseFloat(String(c.number || "0"));
      return Number.isFinite(n) && n > max ? n : max;
    }, 0);
    const chapters = maxChapNum > 0 ? Math.round(maxChapNum) : previewChaps.length || null;

    const genres = Array.isArray(post.genres)
      ? post.genres.map((g: any) => String(g?.name || "").trim()).filter(Boolean)
      : [];

    return {
      id: `az--${slug}`,
      slug,
      source: "manhwa",
      sourceUrl: `${AZORAFLY_BASE}/series/${slug}`,
      title,
      arabicTitle: title,
      englishTitle: title,
      poster,
      coverImage: {
        extraLarge: poster,
        large: poster,
      },
      status: st,
      statusAr,
      averageScore,
      scoreText,
      chapters,
      genres,
      countryOfOrigin: "KR",
      typeLabel: "مانهوا",
    };
  });

  const trMap = await translateTitlesBatchToArabic(items.map((it: any) => String(it.englishTitle || it.title || "")));
  for (const it of items) {
    const enT = String(it.englishTitle || it.title || "");
    const arT = trMap.get(enT) || enT;
    normalizeTitleFields(it, arT, enT);
  }
  const hasNextPage = page * 40 < totalCount && items.length > 0;
  const result = {
    source: "manhwa",
    page,
    totalCount,
    hasNextPage,
    items,
  };
  setCached(cacheKey, result, 15 * 60 * 1000);
  return result;
}

async function fetchAzoraflyDetail(slug: string) {
  const cleanSlug = slug.replace(/^az--/, "").replace(/^\/+|\/+$/g, "");
  const cacheKey = `az:detail:${cleanSlug}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  const url = `${AZORAFLY_BASE}/series/${encodeURIComponent(cleanSlug)}`;
  const slugWords = cleanSlug.replace(/-/g, " ");
  const [data, earlyTrailer] = await Promise.all([
    fetchAzoraflyTsrData(url),
    resolveYoutubeTrailer(slugWords, "", "manhwa"),
  ]);
  const post = data?.post;
  if (!post) {
    throw new Error(`Manhwa series not found on Azorafly: ${cleanSlug}`);
  }

  const rawPostTitle = String(post.postTitle || cleanSlug).trim();
  const altLines = String(post.alternativeTitles || "")
    .split(/[\r\n،,/|]+/)
    .map((s) => s.trim())
    .filter(Boolean);
  const arAlt = altLines.find((s) => /[\u0600-\u06FF]/.test(s));
  const enAlt = altLines.find((s) => /[a-zA-Z]/.test(s) && !/[\u0600-\u06FF]/.test(s));
  const englishTitle = (/[\u0600-\u06FF]/.test(rawPostTitle) ? enAlt || rawPostTitle : rawPostTitle).trim();
  let arabicTitle = (/[\u0600-\u06FF]/.test(rawPostTitle) ? rawPostTitle : arAlt || "").trim();
  if (!arabicTitle) {
    const trMap = await translateTitlesBatchToArabic([englishTitle]);
    arabicTitle = trMap.get(englishTitle) || englishTitle;
  }
  const title = arabicTitle || englishTitle;
  const poster = String(post.featuredImage || "");
  const description = stripHtml(String(post.postContent || ""));
  const { status, statusAr } = mapAzoraflyStatus(post.seriesStatus);
  const ratingVal = Number(post.averageRating || 0);
  const scoreText = ratingVal > 0 ? ratingVal.toFixed(1) : "8.6";
  const averageScore = ratingVal > 0 ? Math.round(ratingVal * 10) : 86;

  const genres: string[] = Array.isArray(post.genres)
    ? post.genres.map((g: any) => String(g?.name || "").trim()).filter(Boolean)
    : [];

  const rawChapters = Array.isArray(data?.initialChapters) ? data.initialChapters : [];
  // Filter out locked/coin chapters that have no public images
  const unlockedChapters = rawChapters.filter((ch: any) => !ch.isLocked);
  const chaptersSource = unlockedChapters.length > 0 ? unlockedChapters : rawChapters;

  const chapters = chaptersSource
    .map((ch: any, idx: number) => {
      const numStr = String(ch.number ?? idx + 1);
      const numVal = parseFloat(numStr);
      const chSlug = String(ch.slug || `الفصل-${numStr}`);
      const chTitle = String(ch.title || "").trim();
      return {
        id: String(ch.id ?? idx + 1),
        number: Number.isFinite(numVal) ? numVal : idx + 1,
        numberStr: numStr,
        slug: chSlug,
        title: chTitle ? `الفصل ${numStr} — ${chTitle}` : `الفصل ${numStr}`,
        url: `${AZORAFLY_BASE}/series/${cleanSlug}/${chSlug}`,
        createdAt: ch.createdAt,
      };
    })
    .sort((a: any, b: any) => a.number - b.number);

  const trailer = earlyTrailer || (await resolveYoutubeTrailer(englishTitle, arabicTitle, "manhwa"));

  const detail: any = {
    id: `az--${cleanSlug}`,
    slug: cleanSlug,
    source: "manhwa",
    title,
    arabicTitle,
    englishTitle,
    description,
    poster,
    coverImage: { extraLarge: poster, large: poster },
    bannerImage: poster,
    status,
    statusAr,
    averageScore,
    scoreText,
    genres,
    author: String(post.author || ""),
    countryOfOrigin: "KR",
    typeLabel: "مانهوا",
    trailer,
    trailerYT: trailer?.id || null,
    chaptersCount: chapters.length,
    chapters,
  };
  normalizeTitleFields(detail, arabicTitle, englishTitle);

  setCached(cacheKey, detail, 60 * 60 * 1000);
  return detail;
}

async function fetchAzoraflyChapterPages(slug: string, chapterSlug: string) {
  const cleanSlug = slug.replace(/^az--/, "").replace(/^\/+|\/+$/g, "");
  const cleanChapter = String(chapterSlug).replace(/^\/+|\/+$/g, "");
  const cacheKey = `az:chapter:${cleanSlug}:${cleanChapter}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  const url = `${AZORAFLY_BASE}/series/${encodeURIComponent(cleanSlug)}/${encodeURIComponent(cleanChapter)}`;
  const data = await fetchAzoraflyTsrData(url);

  const publicImages = Array.isArray(data?.chapter?.publicImages) ? data.chapter.publicImages : [];
  const readerImages = Array.isArray(data?.readerImages) ? data.readerImages : [];

  let pages: { index: number; url: string; width?: number; height?: number }[] = [];
  if (publicImages.length > 0) {
    pages = [...publicImages]
      .sort((a: any, b: any) => Number(a.order ?? 0) - Number(b.order ?? 0))
      .map((img: any, idx: number) => ({
        index: idx + 1,
        url: String(img.url || ""),
        width: Number(img.width) || undefined,
        height: Number(img.height) || undefined,
      }))
      .filter((p) => Boolean(p.url));
  } else if (readerImages.length > 0) {
    pages = readerImages
      .map((img: any, idx: number) => ({
        index: idx + 1,
        url: String(img.displaySrc || img.url || ""),
        width: Number(img.width) || undefined,
        height: Number(img.height) || undefined,
      }))
      .filter((p: any) => Boolean(p.url));
  }

  if (pages.length === 0) {
    throw new Error(`No public chapter images found on Azorafly for ${cleanSlug}/${cleanChapter}`);
  }

  const result = {
    id: `az--${cleanSlug}`,
    slug: cleanSlug,
    chapter: cleanChapter,
    source: "manhwa",
    pagesCount: pages.length,
    pages,
  };
  setCached(cacheKey, result, 30 * 60 * 1000);
  return result;
}

// ── Express Routes ───────────────────────────────────────────────────────────

/**
 * GET /api/manga/catalog
 * Manga comes exclusively from https://mangadar.com/manga/
 * Manhwa comes exclusively from https://azorafly.com/
 */
router.get("/manga/catalog", async (req, res) => {
  try {
    const rawSource = String(req.query.source || "manga").toLowerCase();
    const source: "manga" | "manhwa" = rawSource === "manhwa" ? "manhwa" : "manga";
    const page = Math.max(1, parseInt(String(req.query.page || "1"), 10) || 1);
    const status = req.query.status ? String(req.query.status).toUpperCase() : undefined;
    const search = req.query.search ? String(req.query.search).trim() : undefined;

    if (source === "manhwa") {
      const data = await fetchAzoraflyCatalog({ page, status, search });
      return res.json(data);
    }

    const data = await fetchMangaDarCatalog({ page, status, search });
    return res.json(data);
  } catch (error: any) {
    logger.error({ err: error.message }, "[manga] Failed to fetch catalog");
    return res.status(500).json({ error: "Failed to fetch manga/manhwa catalog", detail: error.message });
  }
});

/**
 * GET /api/manga/detail?id=md--one-piece | az--solo-leveling
 */
router.get("/manga/detail", async (req, res) => {
  try {
    const rawId = String(req.query.id || "").trim();
    const rawSource = String(req.query.source || "").toLowerCase();
    if (!rawId) {
      return res.status(400).json({ error: "Missing id query parameter" });
    }

    if (rawId.startsWith("az--") || rawSource === "manhwa") {
      const detail = await fetchAzoraflyDetail(rawId);
      return res.json(detail);
    }

    const detail = await fetchMangaDarDetail(rawId);
    return res.json(detail);
  } catch (error: any) {
    logger.error({ err: error.message, id: req.query.id }, "[manga] Failed to fetch detail");
    return res.status(500).json({ error: "Failed to fetch manga/manhwa detail", detail: error.message });
  }
});

/**
 * GET /api/manga/chapter?id=md--one-piece&chapter=1197
 */
router.get("/manga/chapter", async (req, res) => {
  try {
    const rawId = String(req.query.id || "").trim();
    const chapter = String(req.query.chapter || "").trim();
    const rawSource = String(req.query.source || "").toLowerCase();
    if (!rawId || !chapter) {
      return res.status(400).json({ error: "Missing id or chapter query parameter" });
    }

    if (rawId.startsWith("az--") || rawSource === "manhwa") {
      const data = await fetchAzoraflyChapterPages(rawId, chapter);
      return res.json(data);
    }

    const data = await fetchMangaDarChapterPages(rawId, chapter);
    return res.json(data);
  } catch (error: any) {
    logger.error(
      { err: error.message, id: req.query.id, chapter: req.query.chapter },
      "[manga] Failed to fetch chapter pages"
    );
    return res.status(500).json({ error: "Failed to fetch chapter pages", detail: error.message });
  }
});

export default router;

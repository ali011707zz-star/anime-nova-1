import { Router } from "express";
import fs from "fs";
import path from "path";
import crypto from "crypto";
import vm from "node:vm";
import { exec } from "node:child_process";
import { logger } from "../lib/logger.js";

const router = Router();

// إيقاف خدمة hound-service الثقيلة ومتصفح patchright/Chrome تلقائياً عند إقلاع السيرفر لتوفير 1.4GB RAM و 100% CPU
try {
  exec(
    "pm2 delete hound-service 2>/dev/null || true; pkill -f 'hound-service' 2>/dev/null || true; pkill -f 'patchright' 2>/dev/null || true",
    () => {},
  );
} catch {}

const AZORAFLY_BASE = "https://azorafly.com";
const UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36";

// ── Persistent Disk & In-Memory Cache (مشترك وسريع لكل المستخدمين) ────────────
interface CacheEntry<T> {
  data: T;
  expiresAt: number;
}
const cache = new Map<string, CacheEntry<any>>();

const DISK_CACHE_DIR = process.env.MANGA_DISK_CACHE_DIR || "/tmp/anime-nova-manga-cache-v2";
try {
  if (!fs.existsSync(DISK_CACHE_DIR)) {
    fs.mkdirSync(DISK_CACHE_DIR, { recursive: true });
  }
} catch {}

function safeDiskKey(key: string): string {
  return crypto.createHash("md5").update(key).digest("hex") + ".json";
}

function getDiskCached<T>(key: string, maxAgeMs: number = 14 * 24 * 3600 * 1000): T | null {
  try {
    const filePath = path.join(DISK_CACHE_DIR, safeDiskKey(key));
    if (!fs.existsSync(filePath)) return null;
    const stat = fs.statSync(filePath);
    if (Date.now() - stat.mtimeMs > maxAgeMs) {
      try { fs.unlinkSync(filePath); } catch {}
      return null;
    }
    const raw = fs.readFileSync(filePath, "utf-8");
    return JSON.parse(raw) as T;
  } catch {
    return null;
  }
}

function setDiskCached<T>(key: string, data: T): void {
  try {
    const filePath = path.join(DISK_CACHE_DIR, safeDiskKey(key));
    fs.writeFileSync(filePath, JSON.stringify(data), "utf-8");
  } catch {}
}

function getCached<T>(key: string): T | null {
  const entry = cache.get(key);
  if (entry) {
    if (Date.now() <= entry.expiresAt) return entry.data as T;
    cache.delete(key);
  }
  const fromDisk = getDiskCached<T>(key);
  if (fromDisk) {
    cache.set(key, { data: fromDisk, expiresAt: Date.now() + 60 * 60 * 1000 });
    return fromDisk;
  }
  return null;
}

function setCached<T>(key: string, data: T, ttlMs: number): void {
  if (cache.size > 500) {
    const oldestKey = cache.keys().next().value;
    if (oldestKey) cache.delete(oldestKey);
  }
  cache.set(key, { data, expiresAt: Date.now() + ttlMs });
  setDiskCached(key, data);
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

function parseDurationSeconds(lengthText: string): number {
  if (!lengthText) return 60;
  const parts = lengthText.trim().split(":").map((n) => parseInt(n, 10));
  if (parts.some((n) => Number.isNaN(n))) return 60;
  if (parts.length === 3) return parts[0] * 3600 + parts[1] * 60 + parts[2];
  if (parts.length === 2) return parts[0] * 60 + parts[1];
  return parts[0] || 60;
}

async function resolveYoutubeTrailer(
  enTitle: string,
  arTitle: string,
  source: "manga" | "manhwa"
): Promise<{ id: string; site: string; thumbnail: string; url: string } | null> {
  const baseQuery = (enTitle || arTitle || "").replace(/[:_]+/g, " ").trim();
  if (!baseQuery) return null;
  const cacheKey = `widescreen:${source}:${baseQuery.toLowerCase()}`;
  if (trailerCache.has(cacheKey)) return trailerCache.get(cacheKey)!;

  try {
    const suffix =
      source === "manhwa"
        ? "manhwa webtoon official trailer PV -shorts"
        : "manga anime official trailer PV -shorts";
    const searchUrl = `https://www.youtube.com/results?search_query=${encodeURIComponent(baseQuery + " " + suffix)}`;
    const res = await fetch(searchUrl, {
      headers: {
        "User-Agent": UA,
        "Accept-Language": "en-US,en;q=0.9",
      },
      signal: AbortSignal.timeout(5500),
    });
    if (res.ok) {
      const html = await res.text();
      const dataMatch = html.match(/var ytInitialData = (\{[\s\S]*?\});<\/script>/);
      if (dataMatch && dataMatch[1]) {
        try {
          const json = JSON.parse(dataMatch[1]);
          const sections =
            json?.contents?.twoColumnSearchResultsRenderer?.primaryContents?.sectionListRenderer
              ?.contents || [];
          const candidates: { id: string; score: number }[] = [];
          for (const sec of sections) {
            const items = sec?.itemSectionRenderer?.contents || [];
            for (const item of items) {
              const vr = item?.videoRenderer;
              if (!vr?.videoId) continue;
              const navUrl =
                vr?.navigationEndpoint?.commandMetadata?.webCommandMetadata?.url || "";
              const titleText =
                vr?.title?.runs?.map((r: any) => String(r?.text || "")).join("") || "";
              const lengthStr = vr?.lengthText?.simpleText || "";
              const durationSec = parseDurationSeconds(lengthStr);
              if (
                navUrl.includes("/shorts/") ||
                /#shorts\b/i.test(titleText) ||
                durationSec < 22 ||
                durationSec > 900
              ) {
                continue;
              }
              let score = 1;
              if (/official|trailer|pv|teaser|mv|animation|webtoon|crunchyroll|viz|kakao|naver/i.test(titleText)) {
                score += 5;
              }
              candidates.push({ id: vr.videoId, score });
            }
          }
          candidates.sort((a, b) => b.score - a.score);
          if (candidates.length > 0) {
            const videoId = candidates[0].id;
            const trailer = {
              id: videoId,
              site: "youtube",
              thumbnail: `https://img.youtube.com/vi/${videoId}/hqdefault.jpg`,
              url: `https://www.youtube.com/watch?v=${videoId}`,
            };
            trailerCache.set(cacheKey, trailer);
            return trailer;
          }
        } catch {}
      }
    }
  } catch {}

  trailerCache.set(cacheKey, null);
  return null;
}

type MangaCharacterEdge = {
  role: "MAIN" | "SUPPORTING";
  node: {
    id: number;
    name: { full: string; native?: string };
    image: { large: string };
  };
};

const extrasCache = new Map<
  string,
  {
    characters: MangaCharacterEdge[];
    trailer: { id: string; site: string; thumbnail: string; url: string } | null;
  }
>();

function extractSynopsisCharacters(
  description: string,
  poster: string,
  arabicTitle: string,
  englishTitle: string
): MangaCharacterEdge[] {
  const cleanDesc = String(description || "").replace(/[\u064B-\u065F]/g, "");
  const patterns = [
    /(?:تُدعى|تدعى|يُدعى|يدعى|باسم|اسمه|اسمها|في شخصية)\s+[«"']?([\u0600-\u06FF]{3,11}(?:\s+[\u0600-\u06FF]{3,11})?)[»"'،,.!؟]/g,
    /(?:حيث تعيش|بينما يعيش|تقطن|يسكن)\s+([\u0600-\u06FF]{3,11})(?:[،,.]|\s+في\b)/g,
  ];
  const stopWords = new Set([
    "حياة", "عالم", "مدينة", "شخص", "نفس", "ذلك", "تلك", "هذا", "هذه",
    "قصة", "رواية", "مانهوا", "مانجا", "أكاديمية", "شركة", "عائلة",
    "طابق", "قدرة", "بسبب", "خلال", "عندما", "حول", "بين", "فوق", "تحت",
    "كانت", "كان", "على", "إلى", "التي", "الذي", "وهي", "وهو", "حيث", "هناك",
  ]);
  const names: string[] = [];
  for (const reg of patterns) {
    let m: RegExpExecArray | null;
    while ((m = reg.exec(cleanDesc)) !== null) {
      const candidate = m[1].trim().replace(/[،,.؛!؟"«»]/g, "");
      const firstWord = candidate.split(/\s+/)[0];
      if (
        candidate.length >= 3 &&
        !stopWords.has(firstWord) &&
        !names.includes(candidate)
      ) {
        names.push(candidate);
      }
    }
  }

  let hashBase = 900000;
  const seedStr = englishTitle || arabicTitle || "manga";
  for (let i = 0; i < seedStr.length; i++) {
    hashBase = (hashBase * 31 + seedStr.charCodeAt(i)) % 9000000;
  }

  if (names.length > 0) {
    return names.slice(0, 6).map((name, idx) => ({
      role: idx < 2 ? "MAIN" : "SUPPORTING",
      node: {
        id: hashBase + idx + 1,
        name: { full: name, native: name },
        image: { large: poster },
      },
    }));
  }

  return [
    {
      role: "MAIN",
      node: {
        id: hashBase + 1,
        name: {
          full: arabicTitle ? `بطل العمل (${arabicTitle})` : "الشخصية الرئيسية",
          native: englishTitle || arabicTitle,
        },
        image: { large: poster },
      },
    },
  ];
}

async function resolveMangaExtras(opts: {
  titles: string[];
  description: string;
  poster: string;
  slug: string;
  source: "manga" | "manhwa";
  arabicTitle: string;
  englishTitle: string;
}): Promise<{
  characters: MangaCharacterEdge[];
  trailer: { id: string; site: string; thumbnail: string; url: string } | null;
}> {
  const cacheKey = `manga-extras:${opts.source}:${opts.slug}`;
  if (extrasCache.has(cacheKey)) {
    return extrasCache.get(cacheKey)!;
  }
  const diskExtras = getDiskCached<any>(cacheKey);
  if (diskExtras) {
    extrasCache.set(cacheKey, diskExtras);
    return diskExtras;
  }

  const candidateTitles = [
    ...new Set(
      opts.titles
        .flatMap((t) => {
          const clean = String(t || "").trim();
          const noColon = clean.replace(/[:\-_]+/g, " ").replace(/\s+/g, " ").trim();
          return [clean, noColon];
        })
        .filter((t) => t.length >= 2 && !/[\u0600-\u06FF]/.test(t))
    ),
  ];

  let characters: MangaCharacterEdge[] = [];
  let anilistTrailer: { id: string; site: string; thumbnail: string; url: string } | null = null;
  const ytTrailerPromise = resolveYoutubeTrailer(opts.englishTitle, opts.arabicTitle, opts.source);

  const timeoutPromise = new Promise<{ characters: MangaCharacterEdge[]; trailer: null }>((resolve) =>
    setTimeout(() => resolve({ characters: [], trailer: null }), 2000)
  );

  const fetchPromise = (async () => {
  for (const search of candidateTitles.slice(0, 2)) {
    try {
      const res = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json" },
        body: JSON.stringify({
          query: `query ($s: String) {
            Page(perPage: 4) {
              media(search: $s, type: MANGA, sort: [SEARCH_MATCH, POPULARITY_DESC]) {
                id
                title { romaji english native }
                trailer { id site thumbnail }
                characters(sort: [ROLE, RELEVANCE, ID], perPage: 18) {
                  edges {
                    role
                    node { id name { full native } image { large } }
                  }
                }
                relations {
                  edges {
                    node {
                      type
                      trailer { id site thumbnail }
                      characters(sort: [ROLE, RELEVANCE, ID], perPage: 18) {
                        edges {
                          role
                          node { id name { full native } image { large } }
                        }
                      }
                    }
                  }
                }
              }
            }
          }`,
          variables: { s: search },
        }),
        signal: AbortSignal.timeout(2500),
      });
      if (res.ok) {
        const j = (await res.json()) as any;
        const mediaList: any[] = j?.data?.Page?.media || [];
        for (const m of mediaList) {
          const directEdges: any[] = m?.characters?.edges || [];
          const relEdges: any[] = (m?.relations?.edges || []).flatMap(
            (r: any) => r?.node?.characters?.edges || []
          );
          const chosen = directEdges.length > 0 ? directEdges : relEdges;
          if (chosen.length > 0 && characters.length === 0) {
            characters = chosen
              .filter((e: any) => e?.node?.id && e?.node?.name?.full)
              .map((e: any) => ({
                role: e.role === "MAIN" ? "MAIN" : "SUPPORTING",
                node: {
                  id: Number(e.node.id),
                  name: {
                    full: String(e.node.name.full),
                    native: e.node.name.native ? String(e.node.name.native) : undefined,
                  },
                  image: {
                    large: String(e.node.image?.large || opts.poster),
                  },
                },
              }));
          }
          const rawTr =
            m?.trailer?.site === "youtube" && m?.trailer?.id
              ? m.trailer
              : (m?.relations?.edges || [])
                  .map((r: any) => r?.node?.trailer)
                  .find((t: any) => t?.site === "youtube" && t?.id);
          if (rawTr && !anilistTrailer) {
            anilistTrailer = {
              id: String(rawTr.id),
              site: "youtube",
              thumbnail:
                rawTr.thumbnail || `https://img.youtube.com/vi/${rawTr.id}/hqdefault.jpg`,
              url: `https://www.youtube.com/watch?v=${rawTr.id}`,
            };
          }
          if (characters.length > 0) break;
        }
        if (characters.length > 0) break;
      }
    } catch {}
  }

  if (characters.length === 0 && candidateTitles.length > 0) {
    try {
      const kw = candidateTitles[0];
      const pRes = await fetch(
        `https://myanimelist.net/search/prefix.json?type=manga&keyword=${encodeURIComponent(kw)}`,
        { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(2200) }
      );
      if (pRes.ok) {
        const pJson = (await pRes.json()) as any;
        const firstItem = pJson?.categories?.[0]?.items?.[0];
        if (firstItem?.url) {
          const charRes = await fetch(`${firstItem.url}/characters`, {
            headers: { "User-Agent": UA },
            signal: AbortSignal.timeout(2400),
          });
          if (charRes.ok) {
            const charHtml = await charRes.text();
            const rowRegex =
              /class="js-manga-character-table"[\s\S]*?href="https:\/\/myanimelist\.net\/character\/(\d+)\/[^"]+"[\s\S]*?data-src="([^"]+)"[\s\S]*?<h3 class="h3_character_name">([^<]+)<\/h3>[\s\S]*?<small>(Main|Supporting)<\/small>/gi;
            let rm: RegExpExecArray | null;
            while ((rm = rowRegex.exec(charHtml)) !== null && characters.length < 18) {
              const cid = Number(rm[1]);
              const rawImg = rm[2]
                .replace(/\/r\/\d+x\d+/, "")
                .replace(/\?.*$/, "");
              const rawName = decodeHtmlEntities(rm[3])
                .split(",")
                .reverse()
                .map((s) => s.trim())
                .join(" ");
              const role = rm[4].toUpperCase() === "MAIN" ? "MAIN" : "SUPPORTING";
              if (cid && rawName && !characters.some((c) => c.node.id === cid)) {
                characters.push({
                  role,
                  node: {
                    id: cid,
                    name: { full: rawName },
                    image: { large: rawImg || opts.poster },
                  },
                });
              }
            }
          }
        }
      }
    } catch {}
  }

  if (characters.length === 0) {
    characters = extractSynopsisCharacters(
      opts.description,
      opts.poster,
      opts.arabicTitle,
      opts.englishTitle
    );
  }

    const ytTrailer = await ytTrailerPromise.catch(() => null);
    const trailer = anilistTrailer || ytTrailer;

    const out = { characters, trailer };
    extrasCache.set(cacheKey, out);
    setDiskCached(cacheKey, out);
    return out;
  })();

  return Promise.race([fetchPromise, timeoutPromise]);
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


// ── Anime Witcher Manga (Algolia TVNESH8OZY + Firestore Summary Docs) ────────
// Fast direct JSON (<150ms) — zero Headless Chrome / zero hound-service!
const AW_FS_BASE =
  "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

let AW_ALGOLIA_APP = "TVNESH8OZY";
let AW_ALGOLIA_KEY = "54098ae17637c217f486e6165c8a913c";
let awCredsCheckedAt = 0;

async function ensureAwMangaAlgoliaCreds(force = false): Promise<{ appId: string; apiKey: string }> {
  const now = Date.now();
  if (!force && now - awCredsCheckedAt < 30 * 60 * 1000) {
    return { appId: AW_ALGOLIA_APP, apiKey: AW_ALGOLIA_KEY };
  }
  awCredsCheckedAt = now;
  try {
    const res = await fetch(`${AW_FS_BASE}/Settings/search_service`, {
      headers: { Accept: "application/json", "User-Agent": UA },
      signal: AbortSignal.timeout(5000),
    });
    if (res.ok) {
      const doc = (await res.json()) as any;
      const f = doc?.fields || {};
      const appId = f?.app_id?.stringValue?.trim();
      const apiKey = (f?.api_key?.stringValue || f?.browseApiKey?.stringValue || "").trim();
      if (appId && apiKey) {
        AW_ALGOLIA_APP = appId;
        AW_ALGOLIA_KEY = apiKey;
      }
    }
  } catch {
    // Keep default TVNESH8OZY credentials
  }
  return { appId: AW_ALGOLIA_APP, apiKey: AW_ALGOLIA_KEY };
}

function parseAwFsVal(v: any): any {
  if (!v || typeof v !== "object") return null;
  if ("stringValue" in v) return v.stringValue;
  if ("integerValue" in v) return parseInt(v.integerValue, 10);
  if ("doubleValue" in v) return parseFloat(v.doubleValue);
  if ("booleanValue" in v) return v.booleanValue;
  if ("nullValue" in v) return null;
  if ("timestampValue" in v) return v.timestampValue;
  if ("arrayValue" in v) {
    const vals = v.arrayValue?.values;
    return Array.isArray(vals) ? vals.map(parseAwFsVal) : [];
  }
  if ("mapValue" in v) {
    const out: Record<string, any> = {};
    for (const [k, val] of Object.entries(v.mapValue?.fields || {})) {
      out[k] = parseAwFsVal(val);
    }
    return out;
  }
  return null;
}

function parseAwFsDoc(doc: any): Record<string, any> {
  const out: Record<string, any> = {};
  for (const [k, v] of Object.entries(doc?.fields || {})) {
    out[k] = parseAwFsVal(v);
  }
  return out;
}

/**
 * Fix legacy subdomain tempsolo.mangalik.net -> leksolo.mangalik.net (403 -> 200 OK)
 */
function normalizeAwMangaImageUrl(rawUrl: string): string {
  const clean = String(rawUrl || "").trim();
  if (!clean) return "";
  return clean
    .replace(/^http:\/\//i, "https://")
    .replace(/:\/\/tempsolo\.mangalik\.net\//i, "://leksolo.mangalik.net/");
}

function mapAwMangaStatus(statusAr: string): { status: "RELEASING" | "FINISHED" | "HIATUS"; statusAr: string } {
  const s = (statusAr || "").trim();
  if (s.includes("مكتمل") || s.includes("منتهي") || s.toLowerCase().includes("completed")) {
    return { status: "FINISHED", statusAr: "مكتمل" };
  }
  if (s.includes("متوقف") || s.toLowerCase().includes("hiatus")) {
    return { status: "HIATUS", statusAr: "متوقف" };
  }
  return { status: "RELEASING", statusAr: "مستمر" };
}

async function queryAwMangaAlgolia(
  indexName: string,
  params: Record<string, any>,
  retried = false
): Promise<any> {
  const { appId, apiKey } = await ensureAwMangaAlgoliaCreds(retried);
  const url = `https://${appId.toLowerCase()}-dsn.algolia.net/1/indexes/${encodeURIComponent(indexName)}/query`;
  const res = await fetch(url, {
    method: "POST",
    headers: {
      "X-Algolia-Application-Id": appId,
      "X-Algolia-API-Key": apiKey,
      "Content-Type": "application/json",
      Accept: "application/json",
      "User-Agent": UA,
    },
    body: JSON.stringify(params),
    signal: AbortSignal.timeout(10000),
  });
  if (!res.ok) {
    if (!retried && (res.status === 403 || res.status === 401)) {
      return queryAwMangaAlgolia(indexName, params, true);
    }
    throw new Error(`Algolia ${indexName} HTTP ${res.status}`);
  }
  return await res.json();
}

async function resolveAwMangaDocId(rawId: string): Promise<string> {
  const stripped = String(rawId || "")
    .trim()
    .replace(/^(?:aw|md|az)--/i, "")
    .replace(/^md-/i, "")
    .replace(/^\/+|\/+$/g, "");
  if (!stripped) throw new Error("Empty manga ID");

  // Firestore document IDs in Anime Witcher are 20-char alphanumeric (e.g. QKAjU52tUNUxcK2GDSdk)
  if (/^[A-Za-z0-9]{15,28}$/.test(stripped) && !stripped.includes("-")) {
    return stripped;
  }

  // Fallback for legacy slug bookmarks (e.g., "one-piece", "jujutsu-kaisen")
  const query = stripped.replace(/[-_]+/g, " ").trim();
  const data = await queryAwMangaAlgolia("manga", { query, hitsPerPage: 5 });
  const hits: any[] = Array.isArray(data?.hits) ? data.hits : [];
  if (hits.length > 0) {
    const exact = hits.find(
      (h) => String(h?.name || "").toLowerCase().trim() === query.toLowerCase()
    );
    const chosen = exact || hits[0];
    if (chosen?.objectID) return String(chosen.objectID);
  }
  return stripped;
}

async function fetchMangaDarCatalog(opts: {
  page: number;
  status?: string;
  search?: string;
  sort?: string;
  genre?: string;
}) {
  const { page = 1, status, search, sort, genre } = opts;
  const cacheKey = `aw:catalog:p${page}:s${status || "all"}:q${search || ""}:g${genre || ""}:o${sort || ""}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  let indexName = "manga_views_desc";
  const sLower = (sort || "").toLowerCase();
  if (sLower.includes("update") || sLower.includes("latest") || sLower.includes("year")) {
    indexName = "manga_year_desc";
  } else if (sLower.includes("title") || sLower.includes("name")) {
    indexName = "manga_name_asc";
  } else if (search) {
    indexName = "manga";
  }

  const queryText = [search || "", genre && genre !== "الكل" ? genre : ""]
    .filter(Boolean)
    .join(" ")
    .trim();

  const data = await queryAwMangaAlgolia(indexName, {
    query: queryText,
    page: Math.max(0, page - 1),
    hitsPerPage: 24,
  });

  const hits: any[] = Array.isArray(data?.hits) ? data.hits : [];
  let items = hits
    .map((hit: any) => {
      const docId = String(hit?.objectID || hit?.id || "").trim();
      const rawName = decodeHtmlEntities(String(hit?.name || "").trim());
      if (!docId || !rawName) return null;

      const poster = String(
        hit?.poster?.large || hit?.poster?.medium || hit?.poster_uri || hit?.poster?.small || ""
      ).trim();

      const { status: mappedStatus, statusAr } = mapAwMangaStatus(
        String(hit?.details?.status || hit?.details?.state || "مستمر")
      );

      const rateVal = parseFloat(String(hit?.rating?.rate ?? hit?.rate ?? "0"));
      const scoreNum = rateVal > 0 ? Math.min(100, Math.round((rateVal > 10 ? rateVal / 10 : rateVal) * 10)) : 85;
      const scoreText = rateVal > 0 ? (rateVal > 10 ? rateVal / 10 : rateVal).toFixed(1) : "8.5";

      const chMatch = String(hit?.details?.chapters || "").match(/(\d+)/);
      const chaptersNum = chMatch ? parseInt(chMatch[1], 10) : 0;

      const tags: string[] = Array.isArray(hit?.tags)
        ? hit.tags.map((t: any) => String(t || "").trim()).filter(Boolean)
        : [];

      const yearMatch = String(hit?.details?.year || hit?.details?.start_date || "").match(/(\d{4})/);
      const year = yearMatch ? parseInt(yearMatch[1], 10) : null;

      const storyAr = stripHtml(String(hit?.story?.ar || hit?.story_ar || ""));
      const storyEn = stripHtml(String(hit?.story_en || hit?.story?.en || ""));

      return {
        id: `aw--${docId}`,
        slug: docId,
        source: "manga" as const,
        title: rawName,
        arabicTitle: /[؀-ۿ]/.test(rawName) ? rawName : "",
        englishTitle: rawName,
        description: storyAr || storyEn || "",
        poster,
        coverImage: { extraLarge: poster, large: poster, medium: poster },
        bannerImage: poster,
        status: mappedStatus,
        statusAr,
        averageScore: scoreNum,
        scoreText,
        chapters: chaptersNum > 0 ? chaptersNum : null,
        genres: tags,
        year,
        countryOfOrigin: "JP",
        typeLabel: String(hit?.type || "مانجا"),
        malId: hit?.mal_id ? Number(hit.mal_id) : null,
      };
    })
    .filter(Boolean) as any[];

  if (status === "RELEASING" || status === "ONGOING") {
    items = items.filter((item) => item.status === "RELEASING");
  } else if (status === "FINISHED" || status === "COMPLETED") {
    items = items.filter((item) => item.status === "FINISHED");
  }

  const trMap = await translateTitlesBatchToArabic(
    items.map((it: any) => String(it.englishTitle || it.title || ""))
  );
  for (const it of items) {
    const enT = String(it.englishTitle || it.title || "");
    const arT = it.arabicTitle || trMap.get(enT) || enT;
    normalizeTitleFields(it, arT, enT);
  }

  const nbPages = Number(data?.nbPages || 1);
  const hasNextPage = page < nbPages && hits.length > 0;

  const result = {
    source: "manga",
    page,
    hasNextPage,
    items,
    media: items,
    results: items,
  };
  setCached(cacheKey, result, 15 * 60 * 1000);
  return result;
}

async function fetchMangaDarDetail(slug: string) {
  const rawClean = String(slug || "").trim();
  const cacheKey = `aw:detail:${rawClean}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  const mangaId = await resolveAwMangaDocId(rawClean);
  const detailUrl = `${AW_FS_BASE}/manga_list/${encodeURIComponent(mangaId)}`;
  const summaryChaptersUrl = `${AW_FS_BASE}/manga_list/${encodeURIComponent(mangaId)}/chapters_summery/summery`;

  const [detailRes, summaryRes] = await Promise.all([
    fetch(detailUrl, {
      headers: { Accept: "application/json", "User-Agent": UA },
      signal: AbortSignal.timeout(10000),
    }),
    fetch(summaryChaptersUrl, {
      headers: { Accept: "application/json", "User-Agent": UA },
      signal: AbortSignal.timeout(10000),
    }),
  ]);

  if (!detailRes.ok) {
    throw new Error(`Firestore manga_list/${mangaId} HTTP ${detailRes.status}`);
  }

  const f = parseAwFsDoc(await detailRes.json());
  const rawName = decodeHtmlEntities(String(f.name || mangaId).trim());
  const englishTitle = rawName;
  let arabicTitle = /[؀-ۿ]/.test(rawName) ? rawName : "";
  if (!arabicTitle) {
    const trMap = await translateTitlesBatchToArabic([englishTitle]);
    arabicTitle = trMap.get(englishTitle) || englishTitle;
  }
  const title = arabicTitle || englishTitle;

  const description =
    stripHtml(String(f.story?.ar || f.story_ar || f.story_en || f.story?.en || "")) ||
    "لا يوجد وصف متوفر حالياً.";

  const poster = String(
    f.poster?.large || f.poster?.medium || f.poster_uri || f.poster?.small || ""
  ).trim();

  const { status, statusAr } = mapAwMangaStatus(
    String(f.details?.status || f.details?.state || "مستمر")
  );

  const ratingVal = parseFloat(String(f.rating?.rate ?? f.rate ?? "0"));
  const scoreText = ratingVal > 0 ? (ratingVal > 10 ? ratingVal / 10 : ratingVal).toFixed(1) : "8.5";
  const averageScore = ratingVal > 0 ? Math.min(100, Math.round((ratingVal > 10 ? ratingVal / 10 : ratingVal) * 10)) : 85;

  const genres: string[] = Array.isArray(f.tags)
    ? f.tags.map((g: any) => decodeHtmlEntities(String(g || "")).trim()).filter(Boolean)
    : [];

  const yearMatch = String(f.details?.year || f.details?.start_date || "").match(/(\d{4})/);
  const year = yearMatch ? parseInt(yearMatch[1], 10) : null;

  // Extract chapters from chapters_summery/summery (1 request, <150ms)
  const rawChapters: Array<{
    doc_id: string;
    name: string;
    thumb_uri?: string;
    title_translated?: string;
  }> = [];

  if (summaryRes.ok) {
    const sumDoc = parseAwFsDoc(await summaryRes.json());
    if (Array.isArray(sumDoc.chapters)) {
      for (const ch of sumDoc.chapters) {
        const docId = String(ch?.doc_id || ch?.id || "").trim();
        if (!docId) continue;
        rawChapters.push({
          doc_id: docId,
          name: String(ch?.name || docId).trim(),
          thumb_uri: ch?.thumb_uri ? String(ch.thumb_uri) : undefined,
          title_translated: ch?.title_translated ? String(ch.title_translated).trim() : undefined,
        });
      }
    }
  }

  // Fallback to /chapters collection if summary doc was empty
  if (rawChapters.length === 0) {
    try {
      const colRes = await fetch(
        `${AW_FS_BASE}/manga_list/${encodeURIComponent(mangaId)}/chapters?pageSize=300`,
        {
          headers: { Accept: "application/json", "User-Agent": UA },
          signal: AbortSignal.timeout(10000),
        }
      );
      if (colRes.ok) {
        const colData = (await colRes.json()) as any;
        for (const doc of colData?.documents || []) {
          const cf = parseAwFsDoc(doc);
          const docId = String(cf.doc_id || doc.name?.split("/").pop() || "").trim();
          if (!docId) continue;
          rawChapters.push({
            doc_id: docId,
            name: String(cf.name || docId).trim(),
            thumb_uri: cf.thumb_uri ? String(cf.thumb_uri) : undefined,
            title_translated: cf.title_translated ? String(cf.title_translated).trim() : undefined,
          });
        }
      }
    } catch {
      // ignore fallback error
    }
  }

  const chapters = rawChapters
    .map((ch, idx) => {
      const chapId = ch.doc_id;
      const numMatch = ch.name.match(/(\d+(?:\.\d+)?)/) || chapId.match(/(\d+(?:\.\d+)?)/);
      const numVal = numMatch ? parseFloat(numMatch[1]) : idx + 1;
      const numStr = numMatch ? String(parseFloat(numMatch[1])) : chapId;
      const baseTitle = ch.name.includes("الفصل") ? ch.name : `الفصل ${numStr}`;
      const fullTitle = ch.title_translated ? `${baseTitle} — ${ch.title_translated}` : baseTitle;
      return {
        id: chapId,
        number: Number.isFinite(numVal) ? numVal : idx + 1,
        numberStr: numStr,
        slug: chapId,
        title: fullTitle,
        url: `${AW_FS_BASE}/manga_list/${encodeURIComponent(mangaId)}/chapters/${encodeURIComponent(chapId)}/summary_pages/summery`,
        thumb: ch.thumb_uri,
      };
    })
    .sort((a, b) => a.number - b.number);

  const synonyms: string[] = Array.isArray(f.Synonyms)
    ? f.Synonyms.map((s: any) => String(s || "").trim()).filter(Boolean)
    : [];

  const { characters, trailer } = await resolveMangaExtras({
    titles: [englishTitle, ...synonyms],
    description,
    poster,
    slug: mangaId,
    source: "manga",
    arabicTitle,
    englishTitle,
  });

  const detail: any = {
    id: `aw--${mangaId}`,
    slug: mangaId,
    source: "manga",
    title,
    arabicTitle,
    englishTitle,
    description,
    poster,
    coverImage: { extraLarge: poster, large: poster, medium: poster },
    bannerImage: poster,
    status,
    statusAr,
    averageScore,
    scoreText,
    genres,
    author: "",
    year,
    countryOfOrigin: "JP",
    typeLabel: String(f.type || "مانجا"),
    trailer,
    trailerYT: trailer?.id || null,
    characters,
    chaptersCount: chapters.length,
    chapters,
    chaptersList: chapters,
  };
  normalizeTitleFields(detail, arabicTitle, englishTitle);

  setCached(cacheKey, detail, 60 * 60 * 1000);
  return detail;
}

async function fetchMangaDarChapterPages(slug: string, chapter: string) {
  const rawClean = String(slug || "").trim();
  const cleanChapter = String(chapter || "").replace(/^\/+|\/+$/g, "").trim();
  const cacheKey = `aw:chapter:${rawClean}:${cleanChapter}`;
  const cached = getCached<any>(cacheKey);
  if (cached) return cached;

  const mangaId = await resolveAwMangaDocId(rawClean);

  const candidates = Array.from(
    new Set([
      cleanChapter,
      cleanChapter.replace(/^chapter-?/i, ""),
      /^\d+$/.test(cleanChapter) ? cleanChapter.padStart(3, "0") : cleanChapter,
      /^\d+$/.test(cleanChapter) ? cleanChapter.padStart(4, "0") : cleanChapter,
      /^0+\d+$/.test(cleanChapter) ? String(parseInt(cleanChapter, 10)) : cleanChapter,
    ])
  ).filter(Boolean);

  let rawPages: Array<{ name: string; url: string }> = [];
  let resolvedChapterId = cleanChapter;

  // 1. Primary fast path: summary_pages/summery (1 request, <150ms)
  for (const cand of candidates) {
    try {
      const sumUrl = `${AW_FS_BASE}/manga_list/${encodeURIComponent(mangaId)}/chapters/${encodeURIComponent(cand)}/summary_pages/summery`;
      const sumRes = await fetch(sumUrl, {
        headers: { Accept: "application/json", "User-Agent": UA },
        signal: AbortSignal.timeout(10000),
      });
      if (sumRes.ok) {
        const sumDoc = parseAwFsDoc(await sumRes.json());
        if (Array.isArray(sumDoc.pages) && sumDoc.pages.length > 0) {
          for (const p of sumDoc.pages) {
            const imgUrl = normalizeAwMangaImageUrl(p?.image_url || p?.url || "");
            if (imgUrl) {
              rawPages.push({ name: String(p?.name || ""), url: imgUrl });
            }
          }
          if (rawPages.length > 0) {
            resolvedChapterId = cand;
            break;
          }
        }
      }
    } catch {
      // try next candidate
    }
  }

  // 2. Fallback open collection: .../chapters/{chapter_doc_id}/pages?pageSize=300
  if (rawPages.length === 0) {
    for (const cand of candidates) {
      try {
        const colUrl = `${AW_FS_BASE}/manga_list/${encodeURIComponent(mangaId)}/chapters/${encodeURIComponent(cand)}/pages?pageSize=300`;
        const colRes = await fetch(colUrl, {
          headers: { Accept: "application/json", "User-Agent": UA },
          signal: AbortSignal.timeout(10000),
        });
        if (colRes.ok) {
          const colJson = (await colRes.json()) as any;
          for (const doc of colJson?.documents || []) {
            const pf = parseAwFsDoc(doc);
            const imgUrl = normalizeAwMangaImageUrl(pf.image_url || pf.url || "");
            if (imgUrl) {
              rawPages.push({
                name: String(pf.name || doc.name?.split("/").pop() || ""),
                url: imgUrl,
              });
            }
          }
          if (rawPages.length > 0) {
            resolvedChapterId = cand;
            break;
          }
        }
      } catch {
        // try next candidate
      }
    }
  }

  if (rawPages.length === 0) {
    throw new Error(`تعذر العثور على صفحات الفصل في Anime Witcher: ${mangaId}/${cleanChapter}`);
  }

  rawPages.sort((a, b) =>
    a.name.localeCompare(b.name, undefined, { numeric: true, sensitivity: "base" })
  );

  const appDomain = process.env.APP_DOMAIN || "animenovaa.duckdns.org";
  const publicBase = appDomain.startsWith("http") ? appDomain : `https://${appDomain}`;

  const pages = rawPages.map((p, idx) => {
    const proxiedUrl = `${publicBase}/api/manga/image-proxy?url=${encodeURIComponent(p.url)}`;
    return {
      index: idx + 1,
      url: proxiedUrl,
      rawUrl: p.url,
    };
  });

  const result = {
    id: `aw--${mangaId}`,
    mangaId: `aw--${mangaId}`,
    slug: mangaId,
    chapter: resolvedChapterId,
    chapterId: resolvedChapterId,
    source: "manga",
    contentType: "images",
    pagesCount: pages.length,
    pages,
  };
  setCached(cacheKey, result, 30 * 60 * 1000);
  return result;
}

async function fetchAzoraflyTsrData(url: string): Promise<any> {
  const res = await fetch(url, {
    headers: {
      "User-Agent": UA,
      Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      "Accept-Language": "ar,en;q=0.9",
    },
    signal: AbortSignal.timeout(15_000),
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

  // Scan backwards to find the route match carrying the real data payload
  for (let i = matches.length - 1; i >= 0; i--) {
    const match = matches[i];
    const data = match?.l?.data || match?.b || match?.data;
    if (data && (data.chapter || data.readerImages || data.post || data.initialPosts || data.initialChapters)) {
      return data;
    }
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
  const data = await fetchAzoraflyTsrData(url);
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

  const { characters, trailer } = await resolveMangaExtras({
    titles: [englishTitle, ...altLines, cleanSlug.replace(/-/g, " ")],
    description,
    poster,
    slug: cleanSlug,
    source: "manhwa",
    arabicTitle,
    englishTitle,
  });

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
    characters,
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

  // Try chapter slug variants if needed
  const candidateChapterSlugs = [
    cleanChapter,
    cleanChapter.replace(/^chapter-?/i, ""),
    cleanChapter.startsWith("chapter-") ? cleanChapter : `chapter-${cleanChapter}`,
    cleanChapter.startsWith("الفصل-") ? cleanChapter : `الفصل-${cleanChapter}`,
  ];

  let data: any = null;
  let usedChapterSlug = cleanChapter;

  for (const candidate of candidateChapterSlugs) {
    try {
      const url = `${AZORAFLY_BASE}/series/${encodeURIComponent(cleanSlug)}/${encodeURIComponent(candidate)}`;
      const resData = await fetchAzoraflyTsrData(url);
      if (resData && (resData.chapter || resData.readerImages || resData.lockedChapter)) {
        data = resData;
        usedChapterSlug = candidate;
        break;
      }
    } catch {
      // try next candidate
    }
  }

  if (!data) {
    const fallbackUrl = `${AZORAFLY_BASE}/series/${encodeURIComponent(cleanSlug)}/${encodeURIComponent(cleanChapter)}`;
    data = await fetchAzoraflyTsrData(fallbackUrl);
  }

  // Check if locked
  if (data?.lockedChapter || data?.chapter?.isLocked || data?.chapter?.isPermanentlyLocked) {
    const lockedResult = {
      id: `az--${cleanSlug}`,
      slug: cleanSlug,
      chapter: cleanChapter,
      source: "manhwa",
      isLocked: true,
      message: "هذا الفصل مدفوع أو مقفل بالعملات على المصدر الأصلي حالياً.",
      pagesCount: 0,
      pages: [],
    };
    return lockedResult;
  }

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

  // Check if images are embedded in HTML content
  const contentHtml = String(
    data?.chapter?.publicContentHtml || data?.chapter?.content || ""
  ).trim();

  if (pages.length === 0 && contentHtml) {
    const imgRegex = /<img[^>]+src=["']([^"']+)["']/gi;
    let m: RegExpExecArray | null;
    const embedded: { index: number; url: string }[] = [];
    while ((m = imgRegex.exec(contentHtml)) !== null) {
      if (m[1] && m[1].startsWith("http")) {
        embedded.push({ index: embedded.length + 1, url: m[1] });
      }
    }
    if (embedded.length > 0) {
      pages = embedded;
    }
  }

  // If still 0 pages, check if this is a web novel / text chapter
  if (pages.length === 0) {
    if (data?.chapter?.isNovel || contentHtml.length > 20 || data?.chapter?.previewText) {
      const textResult = {
        id: `az--${cleanSlug}`,
        slug: cleanSlug,
        chapter: cleanChapter,
        source: "manhwa",
        contentType: "text",
        contentHtml,
        previewText: String(data?.chapter?.previewText || ""),
        title: data?.chapter?.title || `الفصل ${data?.chapter?.number || cleanChapter}`,
        pagesCount: 1,
        pages: [],
      };
      setCached(cacheKey, textResult, 60 * 60 * 1000);
      return textResult;
    }
    throw new Error(`تعذر العثور على صفحات أو محتوى الفصل على Azorafly: ${cleanSlug}/${cleanChapter}`);
  }

  const result = {
    id: `az--${cleanSlug}`,
    slug: cleanSlug,
    chapter: cleanChapter,
    source: "manhwa",
    contentType: "images",
    pagesCount: pages.length,
    pages,
  };
  setCached(cacheKey, result, 30 * 60 * 1000);
  return result;
}

// ── Express Routes ───────────────────────────────────────────────────────────


// ── Express Routes ───────────────────────────────────────────────────────────

/**
 * GET /api/manga/image-proxy & /api/manga/img-proxy
 * Proxies manga/manhwa chapter images with Referer: https://mangalik.net/, https://mangatek.com/, or https://azorafly.com/
 */
async function handleMangaImageProxy(req: any, res: any) {
  try {
    const rawUrl = String(req.query.url || "").trim();
    if (!rawUrl || !/^https?:\/\//i.test(rawUrl)) {
      return res.status(400).send("Invalid image URL");
    }
    const normalizedUrl = normalizeAwMangaImageUrl(rawUrl);
    const host = new URL(normalizedUrl).hostname.toLowerCase();
    let referer = "https://mangalik.net/";
    if (host.includes("azorafly")) referer = "https://azorafly.com/";
    else if (host.includes("api.mangatek.com")) referer = "https://mangatek.com/";
    else if (host.includes("mangatek")) referer = "";

    const headers: Record<string, string> = {
      "User-Agent": UA,
      Accept: "image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8",
    };
    if (referer) headers.Referer = referer;

    let upstream = await fetch(normalizedUrl, {
      headers,
      signal: AbortSignal.timeout(15000),
    });

    if (!upstream.ok && host.includes("mangatek")) {
      const altReferer = referer ? "" : "https://mangatek.com/";
      const altHeaders: Record<string, string> = {
        "User-Agent": UA,
        Accept: "image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8",
      };
      if (altReferer) altHeaders.Referer = altReferer;
      upstream = await fetch(normalizedUrl, {
        headers: altHeaders,
        signal: AbortSignal.timeout(15000),
      });
    }

    if (!upstream.ok) {
      return res.status(upstream.status || 502).send("Upstream image error");
    }
    res.setHeader("Content-Type", upstream.headers.get("content-type") || "image/jpeg");
    res.setHeader("Cache-Control", "public, max-age=86400");
    return res.status(200).send(Buffer.from(await upstream.arrayBuffer()));
  } catch (error: any) {
    return res.status(502).send(error?.message || "Image proxy error");
  }
}

router.get("/manga/image-proxy", handleMangaImageProxy);
router.get("/manga/img-proxy", handleMangaImageProxy);

/**
 * GET /api/manga/catalog
 * Manga comes from Anime Witcher (Algolia + Firestore)
 * Manhwa comes from Azorafly (https://azorafly.com/)
 */
router.get("/manga/catalog", async (req, res) => {
  try {
    const rawSource = String(req.query.source || req.query.type || "manga").toLowerCase();
    const source: "manga" | "manhwa" = rawSource === "manhwa" || rawSource === "azorafly" ? "manhwa" : "manga";
    const page = Math.max(1, parseInt(String(req.query.page || "1"), 10) || 1);
    const status = req.query.status ? String(req.query.status).toUpperCase() : undefined;
    const search = req.query.search || req.query.q ? String(req.query.search || req.query.q).trim() : undefined;
    const sort = req.query.sort ? String(req.query.sort).trim() : undefined;
    const genre = req.query.genre ? String(req.query.genre).trim() : undefined;

    if (source === "manhwa") {
      const data = await fetchAzoraflyCatalog({ page, status, search });
      return res.json({ ...data, media: data.items, results: data.items });
    }
    const data = await fetchMangaDarCatalog({ page, status, search, sort, genre });
    return res.json(data);
  } catch (error: any) {
    logger.error({ err: error.message }, "[manga] Failed to fetch catalog");
    return res.status(500).json({ error: "Failed to fetch manga/manhwa catalog", detail: error.message });
  }
});

/**
 * GET /api/manga/detail?id=aw--QKAjU52tUNUxcK2GDSdk | md--one-piece | az--solo-leveling
 * Also aliased as /api/manga/info
 */
async function handleMangaDetail(req: any, res: any) {
  try {
    const rawId = String(req.query.id || req.query.slug || "").trim();
    const rawSource = String(req.query.source || "").toLowerCase();
    if (!rawId) {
      return res.status(400).json({ error: "Missing id query parameter" });
    }
    if (rawId.startsWith("az--") || rawSource === "manhwa" || rawSource === "azorafly") {
      const detail = await fetchAzoraflyDetail(rawId);
      return res.json({ ...detail, chaptersList: detail.chapters });
    }
    const detail = await fetchMangaDarDetail(rawId);
    return res.json(detail);
  } catch (error: any) {
    logger.error({ err: error.message, id: req.query.id }, "[manga] Failed to fetch detail");
    return res.status(500).json({ error: "Failed to fetch manga/manhwa detail", detail: error.message });
  }
}

router.get("/manga/detail", handleMangaDetail);
router.get("/manga/info", handleMangaDetail);

/**
 * GET /api/manga/chapters?id=aw--QKAjU52tUNUxcK2GDSdk
 */
router.get("/manga/chapters", async (req, res) => {
  try {
    const rawId = String(req.query.id || req.query.slug || "").trim();
    const rawSource = String(req.query.source || "").toLowerCase();
    if (!rawId) {
      return res.status(400).json({ error: "Missing id query parameter" });
    }
    const detail =
      rawId.startsWith("az--") || rawSource === "manhwa"
        ? await fetchAzoraflyDetail(rawId)
        : await fetchMangaDarDetail(rawId);
    return res.json({
      id: detail.id,
      slug: detail.slug,
      source: detail.source,
      title: detail.title,
      poster: detail.poster,
      total: (detail.chapters || []).length,
      chapters: detail.chapters || [],
    });
  } catch (error: any) {
    return res.status(500).json({ error: "Failed to fetch chapters", detail: error.message, chapters: [] });
  }
});

/**
 * GET /api/manga/chapter?id=aw--QKAjU52tUNUxcK2GDSdk&chapter=1198
 * Also aliased as /api/manga/pages
 */
async function handleMangaChapterPages(req: any, res: any) {
  try {
    const rawId = String(req.query.id || req.query.mangaId || req.query.slug || "").trim();
    const chapter = String(req.query.chapter || req.query.chapterId || "").trim();
    const rawSource = String(req.query.source || "").toLowerCase();
    if (!rawId || !chapter) {
      return res.status(400).json({ error: "Missing id or chapter query parameter" });
    }
    if (rawId.startsWith("az--") || rawSource === "manhwa" || rawSource === "azorafly") {
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
}

router.get("/manga/chapter", handleMangaChapterPages);
router.get("/manga/pages", handleMangaChapterPages);

export default router;

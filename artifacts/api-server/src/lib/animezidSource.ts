import { execFile } from "node:child_process";
import { promisify } from "node:util";
import crypto from "node:crypto";
import { load } from "cheerio";
import { isSafeExternalHttpUrl } from "./stardima-playback.mjs";

const ANIMEZID_ORIGIN = "https://animezid.org";
const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

export interface AnimeZidCatalogItem {
  id: string;
  slug: string;
  url: string;
  title: string;
  poster: string;
  badge: string;
  year: string;
  seasonsCount: number;
  episodesCount: number;
  mediaType: "series" | "movie";
}

export interface AnimeZidCatalogResult {
  results: AnimeZidCatalogItem[];
  page: number;
  totalPages: number;
  hasNext: boolean;
  sort: string;
}

export interface AnimeZidSeason {
  seasonNumber: number;
  label: string;
  url: string;
  episodeCount: number;
}

export interface AnimeZidEpisode {
  number: number;
  numberLabel: string;
  vid: string;
  watchUrl: string;
  title: string;
  duration: string;
}

export interface AnimeZidAnilistInfo {
  id: number;
  idMal: number | null;
  title: { romaji?: string | null; english?: string | null; native?: string | null };
  coverImage: { large?: string | null; extraLarge?: string | null };
  bannerImage: string | null;
  description: string | null;
  episodes: number | null;
  duration: number | null;
  status: string | null;
  format: string | null;
  source: string | null;
  averageScore: number | null;
  meanScore: number | null;
  popularity: number | null;
  favourites: number | null;
  rank: number | null;
  genres: string[];
  studios: string[];
  startYear: number | null;
  startDate: { year?: number | null; month?: number | null; day?: number | null } | null;
  endDate: { year?: number | null; month?: number | null; day?: number | null } | null;
  trailer: { id: string; site: string; thumbnail?: string | null } | null;
  characters: {
    id: number;
    role: string;
    name: string;
    image: string | null;
  }[];
  relations: {
    id: number;
    relationType: string;
    title: { romaji?: string | null; english?: string | null };
    coverImage: { large?: string | null };
    averageScore: number | null;
  }[];
  recommendations: {
    id: number;
    title: { romaji?: string | null; english?: string | null };
    coverImage: { large?: string | null };
    averageScore: number | null;
  }[];
}

export interface AnimeZidDetailResult {
  slug: string;
  url: string;
  rawTitle: string;
  titleAr: string;
  englishTitle: string;
  poster: string;
  badge: string;
  year: string;
  views: string;
  seasonsCount: number;
  episodesCount: number;
  rawDescription: string;
  seasons: AnimeZidSeason[];
  activeSeason: number;
  episodes: AnimeZidEpisode[];
  anilist: AnimeZidAnilistInfo | null;
}

export interface AnimeZidServerSource {
  id: string;
  provider: string;
  type: "embedded_web" | "download";
  label: string;
  quality: string;
  supportsNative: boolean;
  priority: number;
}

export interface AnimeZidResolvedStream {
  hlsUrl: string;
  rawUrl: string;
  referer: string;
  type: "hls" | "mp4";
  provider: string;
  embedUrl: string;
}

interface CachedSession {
  vid: string;
  playUrl: string;
  sessionId: string;
  csrf: string;
  token: string;
  cookieHeader: string;
  sources: AnimeZidServerSource[];
  expiresAt: number;
}

const catalogCache = new Map<string, { expiresAt: number; value: AnimeZidCatalogResult }>();
const detailCache = new Map<string, { expiresAt: number; value: AnimeZidDetailResult }>();
const anilistCache = new Map<string, { expiresAt: number; value: AnimeZidAnilistInfo | null }>();
const sessionCache = new Map<string, CachedSession>();
const execFileAsync = promisify(execFile);
const streamCache = new Map<string, { expiresAt: number; value: AnimeZidResolvedStream }>();

function decodeSlugSafe(raw: string): string {
  const s = String(raw || "").trim().replace(/^\/+|\/+$/g, "");
  try {
    return decodeURIComponent(s);
  } catch {
    return s;
  }
}

function seriesUrlFromSlug(slug: string): string {
  const clean = decodeSlugSafe(slug);
  return `${ANIMEZID_ORIGIN}/series/${encodeURIComponent(clean)}/`;
}

function cleanArabicTitle(raw: string): string {
  return String(raw || "")
    .replace(/^(?:انمي|أنمي|مسلسل|فيلم)\s+/i, "")
    .replace(/\s+(?:مدبلج|مترجم|اون\s*لاين|كامل).*$/i, "")
    .replace(/\s+/g, " ")
    .trim();
}

function extractEnglishCandidates(desc: string): string[] {
  const matches = desc.match(/[A-Za-z][A-Za-z0-9:'\-!?.&\s]{2,}/g) || [];
  const seen = new Set<string>();
  const out: string[] = [];
  for (const m of matches) {
    const cleaned = m
      .replace(/\s+/g, " ")
      .replace(/^[.\-:;,\s]+|[.\-:;,\s]+$/g, "")
      .trim();
    if (cleaned.length < 3) continue;
    if (/^(?:HD|FHD|SD|TV|OVA|ONA|WEB|WEB-DL|BluRay|Bluray|ar|animezid|anime\s*zid|online|mp4|mkv)$/i.test(cleaned)) continue;
    if (/animezid/i.test(cleaned)) continue;
    if (!seen.has(cleaned.toLowerCase())) {
      seen.add(cleaned.toLowerCase());
      out.push(cleaned);
    }
  }
  return out.slice(0, 4);
}

function slugToEnglishTitle(slug: string): string {
  const clean = decodeSlugSafe(slug).trim();
  if (!/^[a-z0-9-]+$/i.test(clean)) return "";
  const stripped = clean
    .replace(/(?:-ar|-dubbed|-arabic)$/i, "")
    .replace(/-/g, " ")
    .replace(/\s+/g, " ")
    .trim();
  return stripped.length >= 3 ? stripped : "";
}

function cleanAnimeZidDescription(raw: string): string {
  return String(raw || "")
    .replace(/^(?:عن\s+المسلسل|عن\s+الموسم)\s*/i, "")
    .replace(/تحميل\s+ومشاهدة\s+انمي[^.]*عبر\s+موقع\s+انمي\s+زد\.?/gi, "")
    .replace(/\s+/g, " ")
    .trim();
}

function parseMetaCounts(text: string): { year: string; seasonsCount: number; episodesCount: number } {
  const yearMatch = text.match(/\b(19\d{2}|20\d{2})\b/);
  const seasonMatch = text.match(/(\d+)\s*موسم/);
  const epMatch = text.match(/(\d+)\s*حلقة/);
  return {
    year: yearMatch ? yearMatch[1] : "",
    seasonsCount: seasonMatch ? Number.parseInt(seasonMatch[1], 10) || 1 : 1,
    episodesCount: epMatch ? Number.parseInt(epMatch[1], 10) || 0 : 0,
  };
}

function parseCards($: ReturnType<typeof load>, dubbedOnly = false): AnimeZidCatalogItem[] {
  const results: AnimeZidCatalogItem[] = [];
  const seen = new Set<string>();

  $("article.az-card").each((_, el) => {
    const card = $(el);
    const link = card.find("a.az-card__link").first();
    const href = String(link.attr("href") || card.find("a").first().attr("href") || "").trim();
    if (!href) return;

    const isSeries = href.includes("/series/");
    const vidMatch = href.match(/[?&]vid=([a-zA-Z0-9_-]+)/);
    if (!isSeries && !vidMatch) return;

    const badge = String(card.find(".az-badge--quality").first().text() || "").trim();
    if (dubbedOnly && badge && !badge.includes("مدبلج") && !href.includes("-ar")) {
      return;
    }

    let slug = "";
    if (isSeries) {
      const m = href.match(/\/series\/([^/?#]+)/);
      if (!m) return;
      slug = decodeSlugSafe(m[1]);
    } else if (vidMatch) {
      slug = `watch:${vidMatch[1]}`;
    }
    if (!slug || seen.has(slug)) return;
    seen.add(slug);

    const title =
      String(card.find(".az-card__title").first().text() || "").trim() ||
      String(card.find("img").first().attr("alt") || "").trim();
    if (!title) return;

    const imgEl = card.find("img").first();
    const poster = String(imgEl.attr("data-src") || imgEl.attr("src") || "").trim();
    const metaText = String(card.find(".az-card__meta").text() || card.text() || "");
    const counts = parseMetaCounts(metaText);

    results.push({
      id: slug,
      slug,
      url: href.startsWith("http") ? href : `${ANIMEZID_ORIGIN}/${href.replace(/^\/+/, "")}`,
      title,
      poster: poster.startsWith("http") ? poster : poster ? `${ANIMEZID_ORIGIN}/${poster.replace(/^\/+/, "")}` : "",
      badge: badge || "مدبلج",
      year: counts.year,
      seasonsCount: counts.seasonsCount,
      episodesCount: counts.episodesCount,
      mediaType: isSeries ? "series" : "movie",
    });
  });

  return results;
}

async function fetchHtml(url: string, referer = `${ANIMEZID_ORIGIN}/`): Promise<string> {
  const res = await fetch(url, {
    headers: {
      "User-Agent": BROWSER_UA,
      Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
      Referer: referer,
    },
    signal: AbortSignal.timeout(15_000),
    redirect: "follow",
  });
  if (!res.ok) {
    throw new Error(`animezid_http_${res.status}`);
  }
  return await res.text();
}

const EXTRA_DUBBED_SLUGS: { slug: string; title: string; year: string; seasonsCount: number; episodesCount: number }[] = [
  { slug: "jigokuraku-ar", title: "أنمي جيغوكُراكُ", year: "2023", seasonsCount: 2, episodesCount: 25 },
  { slug: "diamond-no-ace-ar", title: "بطل الملعب الماسي", year: "2013", seasonsCount: 1, episodesCount: 75 },
  { slug: "beyblade-x-ar", title: "بي بليد إكس", year: "2023", seasonsCount: 1, episodesCount: 63 },
  { slug: "digimon-frontier", title: "أبطال الديجيتال الجزء الرابع", year: "2002", seasonsCount: 1, episodesCount: 50 },
  { slug: "go-astro-boy-go-ar", title: "الفتى آسترو", year: "2019", seasonsCount: 1, episodesCount: 47 },
  { slug: "the-seven-bears", title: "الدببة السبعة", year: "2025", seasonsCount: 1, episodesCount: 10 },
  { slug: "miraculous-tokyo-stellar-force", title: "عالم ميراكولوس: طوكيو، الستيلارز فورس", year: "2025", seasonsCount: 1, episodesCount: 1 },
  { slug: "مطعم-الأصدقاء", title: "مطعم الأصدقاء", year: "2026", seasonsCount: 1, episodesCount: 12 },
];

const ARABIC_TO_ANILIST_SEARCH: Record<string, string> = {
  "جريندايزر": "Grendizer U",
  "دراغون بول سوبر: بيروس": "Dragon Ball Super",
  "دراغون بول سوبر": "Dragon Ball Super",
  "دراغون بول زد كاي": "Dragon Ball Kai",
  "دراغون بول": "Dragon Ball",
  "ون بيس": "One Piece",
  "القناص": "Hunter x Hunter",
  "المحقق كونان": "Case Closed",
  "أكاديمية الأبطال": "My Hero Academia",
  "سلام دانك": "Slam Dunk",
  "داي الشجاع": "Dragon Quest: The Adventure of Dai (2020)",
  "أمير التنس": "The Prince of Tennis",
  "اينيوشا": "Inuyasha",
  "أبطال الديجيتال 2020": "Digimon Adventure: (2020)",
  "أبطال الديجيتال": "Digimon Adventure",
  "أبطال الكرة": "Inazuma Eleven",
  "ابطال الكرة": "Inazuma Eleven",
  "الكابتن ماجد": "Captain Tsubasa",
  "سيف النار": "Fist of the North Star",
  "شعلة ريكا": "Flame of Recca",
  "عهد الأصدقاء": "Romeo and the Black Brothers",
  "هزيم الرعد": "Thunder Jet",
  "صقور الارض": "Sangokushi",
  "صقور الأرض": "Sangokushi",
  "صنع في الهاوية": "Made in Abyss",
  "ميغالو بوكس": "Megalo Box",
  "زلزال طوكيو 8.0": "Tokyo Magnitude 8.0",
  "فصول المجد": "The Great Passage",
  "ماجيك كايتو": "Magic Kaito 1412",
  "دورايمون": "Doraemon (2005)",
  "دورايمون: القط الآلي القادم من المستقبل": "Doraemon (2005)",
  "باكوغان": "Bakugan Battle Brawlers",
  "بي بليد المعركة الحديدية": "Beyblade: Metal Fusion",
  "بي بليد إكس": "Beyblade X",
  "بي بليد": "Beyblade",
  "بي باتل برست كواد درايف": "Beyblade Burst QuadDrive",
  "بي باتل برست": "Beyblade Burst",
  "عدنان ولينا": "Future Boy Conan",
  "جزيرة الكنز": "Treasure Island",
  "الرمية الملتهبة": "Dodge Danpei",
  "سالي": "Princess Sarah",
  "سالي (الدبلجة الجديدة)": "Princess Sarah",
  "البؤساء": "Les Miserables: Shoujo Cosette",
  "دروب ريمي": "Remi, Nobody's Girl",
  "ريمي الفتى الشريد": "Nobody's Boy Remi",
  "هايدي": "Heidi, Girl of the Alps",
  "النمر المقنع": "Tiger Mask W",
  "بوكيمون": "Pokemon",
  "أخي العزيز": "Dear Brother",
  "أسطورة زورو": "The Legend of Zorro",
  "الحديقة السرية": "The Secret Garden",
  "إيميلي فتاة الرياح": "Emily of New Moon",
  "صانع السلام": "Peacemaker Kurogane",
  "قطر الندى": "Bunny Drop",
  "أبطال الرغبي": "All Out!!",
  "عالم الأحلام": "Mewkledreamy",
  "أنا وأخي": "Baby and Me",
  "أنا وأختي": "Mama wa Shougaku 4 Nensei",
  "مغامرات عبقور": "Mojacko",
  "فلونة: روبنسون كروزو": "The Swiss Family Robinson: Flone of the Mysterious Island",
  "المخترع الصغير": "Kiteretsu Daihyakka",
  "كرم المخترع الصغير": "Kiteretsu Daihyakka",
  "مغامرات سميد": "Onegai! Samia Don",
  "مغامرات البطل وتاروو": "Mashin Eiyuuden Wataru",
  "ذات الشعر الأحمر": "Konnichiwa Anne: Before Green Gables",
  "جنى": "Muka Muka Paradise",
  "بطل الملعب الماسي": "Ace of Diamond",
  "أنمي جيغوكُراكُ": "Hell's Paradise",
  "الفتى آسترو": "Go Astro Boy Go!",
  "زفاف اليراعات": "Hotaru no Yomeiri",
  "يوميات الصيدلانية": "The Apothecary Diaries",
  "صراع الحراس": "Rakshasa Street",
  "انمي تونبو": "Oi! Tonbo",
  "كوكو تاما": "KiraKira Happy Hirake! Cocotama",
  "فريرن: ما وراء نهاية الرحلة": "Sousou no Frieren",
  "فريرن": "Sousou no Frieren",
  "موشوكو تينسي": "Mushoku Tensei: Jobless Reincarnation",
  "كايجو رقم 8": "Kaiju No. 8",
  "هوريميا": "Horimiya",
  "أسوار من جليد": "Koori no Jouheki",
  "فاير فورس": "Fire Force",
  "عروس البرابرة": "Hime Kishi wa Barbaroi no Yome",
  "إيرين الأعسر": "Hidarikiki no Eren",
  "الأقوى ليس بطلاً ولا حكيماً بل مقيم !": "Saikyou no Shokugyou wa Yuusha demo Kenja demo naku Kanteishi (Kari) rashii desu yo?",
  "عملاء الفصول الأربعة : رقصة الربيع": "Shunkashuutou Daikousha: Haru no Mai",
  "ورشة قبعة الساحرة": "Witch Hat Atelier",
  "شياطين مملكة الظل": "Daemons of the Shadow Realm",
  "مغامرات جوجو العجيبة": "JoJo's Bizarre Adventure",
  "جوجوتسو كايسن": "Jujutsu Kaisen",
  "جوجتسو كايسن": "Jujutsu Kaisen",
  "باكي-دو: الساموراي الذي لا يقهر": "Baki-Dou",
  "الحساب الميت": "Dead Account",
  "محكوم عليه أن يكون بطلاً": "Sentenced to Be a Hero",
  "بلاك كلوفر": "Black Clover",
  "شيبوجي: ألعاب الموت": "Shibou Yuugi de Meshi wo Kuu.",
  "لعبة الموت": "Shibou Yuugi de Meshi wo Kuu.",
  "هانا كيمي": "Hana-Kimi",
  "ري زيرو": "Re:ZERO -Starting Life in Another World-",
  "ون بيس الدبلجة الجديدة": "One Piece",
  "يوغي يو أرك فايف": "Yu-Gi-Oh! ARC-V",
  "أيام ساكاموتو": "SAKAMOTO DAYS",
  "فارس المظلة": "The Knight in the Area",
  "اكوداما درايف": "Akudama Drive",
  "سلة الفواكة": "Fruits Basket (2019)",
  "المدبرة والبوكيمون": "Pokemon Concierge",
  "نزال الأبطال": "Mazica Party",
  "الأشاوس": "Hakugei: Legend of the Moby Dick",
  "مدرسة الكونغ فو": "Tekken Chinmi",
  "أنا وأخواتي": "Tsuyoshi Shikkari Shinasai",
  "الخدمة الخفية": "The Marginal Service",
  "أسرار المحيط": "Nanatsu no Umi no Tico",
  "مطعم الأصدقاء": "Bananya",
  "فولترون": "Voltron",
  "مونستر هنتر ستوريز": "Monster Hunter Stories: Ride On",
  "أساطير فى قادم الزمان": "Asateer: Mirai no Mukashibanashi",
  "أجنحة الكاندام": "Mobile Suit Gundam Wing",
  "ماشيل: السحر والعضلات": "Mashle: Magic and Muscles",
  "ماشيل": "Mashle: Magic and Muscles",
  "تسوكيميتشي: فانتازيا القمر": "TSUKIMICHI -Moonlit Fantasy-",
  "السلايم": "That Time I Got Reincarnated as a Slime",
  "أبطال الديجيتال الجزء الرابع": "Digimon Frontier",
};

let fullCatalogCache: { expiresAt: number; items: AnimeZidCatalogItem[] } | null = null;
let fullCatalogInFlight: Promise<AnimeZidCatalogItem[]> | null = null;

async function getFullMergedCatalog(): Promise<AnimeZidCatalogItem[]> {
  if (fullCatalogCache && fullCatalogCache.expiresAt > Date.now()) {
    return fullCatalogCache.items;
  }
  if (fullCatalogInFlight) {
    return fullCatalogInFlight;
  }

  fullCatalogInFlight = (async () => {
    try {
      const urls = [
        `${ANIMEZID_ORIGIN}/category.php?cat=dubbed-anime&series_sort=newest&series_page=1`,
        `${ANIMEZID_ORIGIN}/category.php?cat=dubbed-anime&series_sort=newest&series_page=2`,
        `${ANIMEZID_ORIGIN}/category.php?cat=spacetoon&series_sort=newest&series_page=1`,
        `${ANIMEZID_ORIGIN}/category.php?cat=spacetoon&series_sort=newest&series_page=2`,
      ];

      const pages = await Promise.all(
        urls.map((u) => fetchHtml(u).catch(() => "")),
      );

      const merged = new Map<string, AnimeZidCatalogItem>();
      for (const html of pages) {
        if (!html) continue;
        const $ = load(html);
        const cards = parseCards($, false);
        for (const item of cards) {
          if (item.mediaType !== "series") continue;
          // Exclude non-dubbed entries in spacetoon
          if (item.badge === "مترجم" && !item.title.includes("مدبلج") && !item.slug.endsWith("-ar")) {
            continue;
          }
          const cleanTitle = cleanArabicTitle(item.title) || item.title;
          if (!merged.has(item.slug)) {
            merged.set(item.slug, {
              ...item,
              title: cleanTitle,
              badge: item.badge.includes("مدبلج") ? item.badge : "مدبلج",
            });
          }
        }
      }

      // Add extra dubbed anime from cat=anime if not already present
      for (const ex of EXTRA_DUBBED_SLUGS) {
        if (!merged.has(ex.slug)) {
          merged.set(ex.slug, {
            id: ex.slug,
            slug: ex.slug,
            url: seriesUrlFromSlug(ex.slug),
            title: cleanArabicTitle(ex.title) || ex.title,
            poster: "",
            badge: "مدبلج",
            year: ex.year,
            seasonsCount: ex.seasonsCount,
            episodesCount: ex.episodesCount,
            mediaType: "series",
          });
        }
      }

      // Resolve missing posters for the few extra items in parallel
      const missingPosters = [...merged.values()].filter((it) => !it.poster);
      if (missingPosters.length > 0) {
        await Promise.all(
          missingPosters.map(async (it) => {
            try {
              const h = await fetchHtml(seriesUrlFromSlug(it.slug));
              const $ = load(h);
              const og = String(
                $("meta[property='og:image']").attr("content") ||
                  $(".az-series-detail-hero__poster img").first().attr("src") ||
                  "",
              ).trim();
              if (og) {
                it.poster = og.startsWith("http") ? og : `${ANIMEZID_ORIGIN}/${og.replace(/^\/+/, "")}`;
              }
            } catch {}
          }),
        );
      }

      const items = [...merged.values()];
      if (items.length > 0) {
        fullCatalogCache = {
          expiresAt: Date.now() + 25 * 60_000,
          items,
        };
      }
      return items;
    } finally {
      fullCatalogInFlight = null;
    }
  })();

  return fullCatalogInFlight;
}

export async function getAnimeZidCatalog(opts: {
  page?: number;
  sort?: string;
  q?: string;
}): Promise<AnimeZidCatalogResult> {
  const page = Math.max(1, Number(opts.page) || 1);
  const sort = ["newest", "oldest", "name"].includes(String(opts.sort || ""))
    ? String(opts.sort)
    : "newest";
  const q = String(opts.q || "").trim();
  const cacheKey = `v2|${sort}|${page}|${q.toLowerCase()}`;

  const cached = catalogCache.get(cacheKey);
  if (cached && cached.expiresAt > Date.now()) {
    return cached.value;
  }

  const allCatalog = await getFullMergedCatalog();
  let result: AnimeZidCatalogResult;

  if (q.length >= 2) {
    const qLower = q.toLowerCase();
    const matchedMap = new Map<string, AnimeZidCatalogItem>();
    for (const item of allCatalog) {
      if (
        item.title.toLowerCase().includes(qLower) ||
        item.slug.toLowerCase().includes(qLower)
      ) {
        matchedMap.set(item.slug, item);
      }
    }

    try {
      const searchUrl = `${ANIMEZID_ORIGIN}/search.php?keywords=${encodeURIComponent(q)}`;
      const html = await fetchHtml(searchUrl);
      const $ = load(html);
      const allCards = parseCards($, false);
      for (const c of allCards) {
        if (c.mediaType === "series" && (c.badge.includes("مدبلج") || c.slug.endsWith("-ar"))) {
          if (!matchedMap.has(c.slug)) {
            matchedMap.set(c.slug, {
              ...c,
              title: cleanArabicTitle(c.title) || c.title,
            });
          }
        }
      }
    } catch {}

    result = {
      results: [...matchedMap.values()],
      page: 1,
      totalPages: 1,
      hasNext: false,
      sort,
    };
  } else {
    let items = [...allCatalog];
    if (sort === "oldest") {
      items.sort((a, b) => (Number(a.year) || 9999) - (Number(b.year) || 9999));
    } else if (sort === "name") {
      items.sort((a, b) => a.title.localeCompare(b.title, "ar"));
    }

    // Return the entire combined catalog on page 1 so the user sees all 192+ dubbed anime immediately
    result = {
      results: page === 1 ? items : [],
      page: 1,
      totalPages: 1,
      hasNext: false,
      sort,
    };
  }

  catalogCache.set(cacheKey, { expiresAt: Date.now() + 15 * 60_000, value: result });
  if (catalogCache.size > 100) {
    const oldest = catalogCache.keys().next().value;
    if (oldest) catalogCache.delete(oldest);
  }
  return result;
}

const ANILIST_MEDIA_FIELDS = `
  id
  idMal
  title { romaji english native }
  coverImage { large extraLarge }
  bannerImage
  description
  episodes
  duration
  status
  format
  source
  averageScore
  meanScore
  popularity
  favourites
  genres
  startDate { year month day }
  endDate { year month day }
  rankings { rank type allTime }
  studios(isMain: true) { nodes { name isAnimationStudio } }
  trailer { id site thumbnail }
  characters(sort: [ROLE, RELEVANCE], page: 1, perPage: 18) {
    edges {
      role
      node {
        id
        name { full }
        image { large }
      }
    }
  }
  relations {
    edges {
      relationType
      node {
        id
        type
        title { romaji english }
        coverImage { large }
        averageScore
      }
    }
  }
  recommendations(sort: RATING_DESC, page: 1, perPage: 10) {
    nodes {
      mediaRecommendation {
        id
        title { romaji english }
        coverImage { large }
        averageScore
      }
    }
  }
`;

const ANILIST_QUERY = `query ($search: String) {
  Page(page: 1, perPage: 6) {
    media(search: $search, type: ANIME, sort: SEARCH_MATCH) {
      ${ANILIST_MEDIA_FIELDS}
    }
  }
}`;

const ANILIST_BY_MAL_QUERY = `query ($idMal: Int) {
  Media(idMal: $idMal, type: ANIME) {
    ${ANILIST_MEDIA_FIELDS}
  }
}`;

async function fetchJikanTrailer(idMal: number): Promise<{ id: string; site: string; thumbnail?: string | null } | null> {
  try {
    const res = await fetch(`https://api.jikan.moe/v4/anime/${idMal}`, {
      headers: { Accept: "application/json" },
      signal: AbortSignal.timeout(3_500),
    });
    if (!res.ok) return null;
    const json = (await res.json()) as any;
    const ytId =
      json?.data?.trailer?.youtube_id ||
      (() => {
        const embed = String(json?.data?.trailer?.embed_url || "");
        const m = embed.match(/\/embed\/([A-Za-z0-9_-]{6,})/);
        return m ? m[1] : "";
      })();
    if (ytId) {
      return {
        id: String(ytId),
        site: "youtube",
        thumbnail: json?.data?.trailer?.images?.maximum_image_url || json?.data?.trailer?.images?.large_image_url || `https://img.youtube.com/vi/${ytId}/hqdefault.jpg`,
      };
    }
  } catch {}
  return null;
}

async function fetchJikanFirstMalId(term: string): Promise<number | null> {
  try {
    const res = await fetch(`https://api.jikan.moe/v4/anime?q=${encodeURIComponent(term)}&limit=5`, {
      headers: { Accept: "application/json" },
      signal: AbortSignal.timeout(4_500),
    });
    if (!res.ok) return null;
    const json = (await res.json()) as any;
    const rows: any[] = Array.isArray(json?.data) ? json.data : [];
    if (!rows.length) return null;
    const preferred = rows.find((r) => String(r?.type || "").toUpperCase() === "TV" && Number(r?.mal_id) > 0)
      || rows.find((r) => Number(r?.mal_id) > 0);
    return preferred?.mal_id ? Number(preferred.mal_id) : null;
  } catch {
    return null;
  }
}

function normTitleMatch(s: unknown): string {
  return String(s || "").toLowerCase().replace(/[^a-z0-9]+/g, " ").trim();
}

function pickBestAnilistMedia(list: any[], searchTerm: string): any | null {
  if (!Array.isArray(list) || list.length === 0) return null;
  if (list.length === 1) return list[0];
  const needle = normTitleMatch(searchTerm);
  let best = list[0];
  let bestScore = -1e9;
  for (let i = 0; i < list.length; i += 1) {
    const m = list[i];
    if (!m?.id) continue;
    let score = (list.length - i) * 20;
    const fmt = String(m.format || "").toUpperCase();
    if (fmt === "TV") score += 45;
    else if (fmt === "MOVIE" || fmt === "ONA") score += 20;
    else if (fmt === "SPECIAL" || fmt === "MUSIC") score -= 35;

    const charCount = Array.isArray(m.characters?.edges) ? m.characters.edges.length : 0;
    const relCount = Array.isArray(m.relations?.edges) ? m.relations.edges.length : 0;
    const recCount = Array.isArray(m.recommendations?.nodes) ? m.recommendations.nodes.length : 0;
    score += Math.min(charCount, 18) * 3;
    score += Math.min(relCount, 6) * 2;
    score += Math.min(recCount, 6) * 2;
    if (charCount === 0 && recCount === 0 && !m.averageScore) score -= 50;

    const pop = Number(m.popularity || 0);
    if (pop > 0) score += Math.min(35, Math.log10(pop + 1) * 7);

    const tEn = normTitleMatch(m.title?.english);
    const tRo = normTitleMatch(m.title?.romaji);
    if (needle && (tEn === needle || tRo === needle)) score += 60;
    else if (needle && (tEn.includes(needle) || tRo.includes(needle))) score += 20;

    if (score > bestScore) {
      bestScore = score;
      best = m;
    }
  }
  return best;
}

async function queryAnilistGraphql(query: string, variables: Record<string, any>): Promise<any | null> {
  for (let attempt = 0; attempt < 2; attempt += 1) {
    try {
      const res = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Accept: "application/json",
        },
        body: JSON.stringify({ query, variables }),
        signal: AbortSignal.timeout(8_000),
      });
      if (res.status === 429 && attempt === 0) {
        await new Promise((r) => setTimeout(r, 700));
        continue;
      }
      if (!res.ok) return null;
      return await res.json();
    } catch {
      if (attempt === 0) await new Promise((r) => setTimeout(r, 350));
    }
  }
  return null;
}

async function buildAnilistInfoFromMedia(media: any): Promise<AnimeZidAnilistInfo> {
  let trailer: { id: string; site: string; thumbnail?: string | null } | null =
    media.trailer?.id && String(media.trailer?.site || "").toLowerCase() === "youtube"
      ? {
          id: String(media.trailer.id),
          site: "youtube",
          thumbnail: media.trailer.thumbnail || `https://img.youtube.com/vi/${media.trailer.id}/hqdefault.jpg`,
        }
      : null;

  const idMal = media.idMal ? Number(media.idMal) : null;
  if (!trailer && idMal) {
    trailer = await fetchJikanTrailer(idMal);
  }

  const allTimeRank =
    media.rankings?.find((r: any) => r?.allTime && r?.type === "RATED")?.rank ||
    media.rankings?.[0]?.rank ||
    null;

  return {
    id: Number(media.id),
    idMal,
    title: {
      romaji: media.title?.romaji ?? null,
      english: media.title?.english ?? null,
      native: media.title?.native ?? null,
    },
    coverImage: {
      large: media.coverImage?.large ?? null,
      extraLarge: media.coverImage?.extraLarge ?? null,
    },
    bannerImage: media.bannerImage ?? null,
    description: media.description
      ? String(media.description)
          .replace(/<br\s*\/?>/gi, "\n")
          .replace(/<[^>]+>/g, "")
          .replace(/\n{3,}/g, "\n\n")
          .trim()
      : null,
    episodes: media.episodes ? Number(media.episodes) : null,
    duration: media.duration ? Number(media.duration) : null,
    status: media.status ?? null,
    format: media.format ?? null,
    source: media.source ?? null,
    averageScore: media.averageScore ? Number(media.averageScore) : null,
    meanScore: media.meanScore ? Number(media.meanScore) : null,
    popularity: media.popularity ? Number(media.popularity) : null,
    favourites: media.favourites ? Number(media.favourites) : null,
    rank: allTimeRank ? Number(allTimeRank) : null,
    genres: Array.isArray(media.genres) ? media.genres.map(String) : [],
    studios: Array.isArray(media.studios?.nodes)
      ? media.studios.nodes.map((n: any) => String(n?.name || "")).filter(Boolean)
      : [],
    startYear: media.startDate?.year ? Number(media.startDate.year) : null,
    startDate: media.startDate ?? null,
    endDate: media.endDate ?? null,
    trailer,
    characters: Array.isArray(media.characters?.edges)
      ? media.characters.edges
          .map((edge: any) => ({
            id: Number(edge?.node?.id || 0),
            role: String(edge?.role || ""),
            name: String(edge?.node?.name?.full || ""),
            image: edge?.node?.image?.large || null,
          }))
          .filter((c: any) => c.id && c.name)
      : [],
    relations: Array.isArray(media.relations?.edges)
      ? media.relations.edges
          .filter((e: any) => e?.node?.id && (!e?.node?.type || e.node.type === "ANIME"))
          .map((e: any) => ({
            id: Number(e.node.id),
            relationType: String(e.relationType || "OTHER"),
            title: {
              romaji: e.node.title?.romaji ?? null,
              english: e.node.title?.english ?? null,
            },
            coverImage: { large: e.node.coverImage?.large ?? null },
            averageScore: e.node.averageScore ? Number(e.node.averageScore) : null,
          }))
      : [],
    recommendations: Array.isArray(media.recommendations?.nodes)
      ? media.recommendations.nodes
          .filter((n: any) => n?.mediaRecommendation?.id)
          .map((n: any) => ({
            id: Number(n.mediaRecommendation.id),
            title: {
              romaji: n.mediaRecommendation.title?.romaji ?? null,
              english: n.mediaRecommendation.title?.english ?? null,
            },
            coverImage: { large: n.mediaRecommendation.coverImage?.large ?? null },
            averageScore: n.mediaRecommendation.averageScore ? Number(n.mediaRecommendation.averageScore) : null,
          }))
      : [],
  };
}

async function fetchAnilistByTitle(candidates: string[], titleAr?: string): Promise<AnimeZidAnilistInfo | null> {
  const expanded: string[] = [];
  if (titleAr) {
    const cleanAr = cleanArabicTitle(titleAr);
    if (ARABIC_TO_ANILIST_SEARCH[titleAr]) expanded.push(ARABIC_TO_ANILIST_SEARCH[titleAr]);
    if (cleanAr && ARABIC_TO_ANILIST_SEARCH[cleanAr] && !expanded.includes(ARABIC_TO_ANILIST_SEARCH[cleanAr])) {
      expanded.push(ARABIC_TO_ANILIST_SEARCH[cleanAr]);
    }
    for (const [k, v] of Object.entries(ARABIC_TO_ANILIST_SEARCH)) {
      if (cleanAr && (cleanAr.includes(k) || k.includes(cleanAr))) {
        if (!expanded.includes(v)) expanded.push(v);
      }
    }
  }
  for (const c of candidates) {
    const t = c.trim();
    if (t.length >= 2 && !expanded.includes(t)) expanded.push(t);
  }
  if (!expanded.length) return null;

  const cacheKey = `v3|${expanded[0].toLowerCase()}`;
  const cached = anilistCache.get(cacheKey);
  if (cached && cached.expiresAt > Date.now()) {
    return cached.value;
  }

  for (const term of expanded) {
    const json = await queryAnilistGraphql(ANILIST_QUERY, { search: term });
    const mediaList: any[] = Array.isArray(json?.data?.Page?.media) ? json.data.Page.media : [];
    const media = pickBestAnilistMedia(mediaList, term);
    if (media?.id) {
      const info = await buildAnilistInfoFromMedia(media);
      anilistCache.set(cacheKey, { expiresAt: Date.now() + 6 * 3600_000, value: info });
      return info;
    }
  }

  // Fallback via Jikan (MAL ID -> AniList) if AniList search missed
  for (const term of expanded.filter((x) => /[A-Za-z]/.test(x)).slice(0, 2)) {
    const malId = await fetchJikanFirstMalId(term);
    if (malId) {
      const json = await queryAnilistGraphql(ANILIST_BY_MAL_QUERY, { idMal: malId });
      const media = json?.data?.Media;
      if (media?.id) {
        const info = await buildAnilistInfoFromMedia(media);
        anilistCache.set(cacheKey, { expiresAt: Date.now() + 6 * 3600_000, value: info });
        return info;
      }
    }
  }

  // Never poison null for 30m on transient errors — retry again after 45s
  anilistCache.set(cacheKey, { expiresAt: Date.now() + 45_000, value: null });
  return null;
}

// Pre-warm full merged catalog in background
void getFullMergedCatalog().catch(() => {});

function parseEpisodesFromHtml($: ReturnType<typeof load>): AnimeZidEpisode[] {
  const episodes: AnimeZidEpisode[] = [];
  const seenVid = new Set<string>();

  $("a[href*='watch.php?vid=']").each((_, el) => {
    const a = $(el);
    const href = String(a.attr("href") || "").trim();
    const vidMatch = href.match(/[?&]vid=([a-zA-Z0-9_-]+)/);
    if (!vidMatch) return;
    const vid = vidMatch[1];

    if (a.closest(".az-series-start, .az-series-latest-rail, .az-series-latest").length > 0 && seenVid.size === 0) {
      return;
    }
    if (seenVid.has(vid)) return;

    const text = a.text().replace(/\s+/g, " ").trim();
    if (/^(?:أحدث حلقة|ابدأ الموسم)/i.test(text)) return;

    seenVid.add(vid);
    const numMatch =
      text.match(/الحلقة\s+(?:الخاصة\s+)?(\d+(?:\.\d+)?)/) ||
      text.match(/^(\d+(?:\.\d+)?)\b/);
    const numVal = numMatch ? Number.parseFloat(numMatch[1]) : episodes.length + 1;
    const numLabel = numMatch ? numMatch[1] : String(numVal);

    const durMatch = text.match(/\b(\d{1,2}:\d{2}(?::\d{2})?)\b/);
    const watchUrl = href.startsWith("http")
      ? href
      : `${ANIMEZID_ORIGIN}/${href.replace(/^\/+/, "")}`;

    episodes.push({
      number: Number.isFinite(numVal) ? numVal : episodes.length + 1,
      numberLabel: numLabel,
      vid,
      watchUrl,
      title: `الحلقة ${numLabel}`,
      duration: durMatch ? durMatch[1] : "",
    });
  });

  episodes.sort((a, b) => a.number - b.number);
  return episodes;
}

export async function getAnimeZidDetail(
  rawSlug: string,
  requestedSeason?: number,
): Promise<AnimeZidDetailResult> {
  const slug = decodeSlugSafe(rawSlug);
  const seasonKey = requestedSeason && requestedSeason > 0 ? requestedSeason : 0;
  const cacheKey = `${slug}|${seasonKey}`;

  const cached = detailCache.get(cacheKey);
  if (cached && cached.expiresAt > Date.now()) {
    return cached.value;
  }

  const seriesUrl = seriesUrlFromSlug(slug);
  const html = await fetchHtml(seriesUrl);
  const $ = load(html);

  const rawTitle = String($("h1").first().text() || $("meta[property='og:title']").attr("content") || slug).trim();
  const titleAr = cleanArabicTitle(rawTitle) || rawTitle;
  const poster = String(
    $("meta[property='og:image']").attr("content") ||
      $(".az-series-detail-hero__poster img").first().attr("src") ||
      "",
  ).trim();

  const heroText = $(".az-series-detail-hero").text().replace(/\s+/g, " ");
  const descRaw = $(".az-series-description__copy").first().text().replace(/\s+/g, " ").trim()
    || String($("meta[name='description']").attr("content") || "").trim();

  const englishCandidates = extractEnglishCandidates(descRaw);
  const slugCandidate = slugToEnglishTitle(slug);
  if (slugCandidate && !englishCandidates.some((c) => c.toLowerCase() === slugCandidate.toLowerCase())) {
    englishCandidates.push(slugCandidate);
  }
  const yearMatch = heroText.match(/\b(19\d{2}|20\d{2})\b/);
  const viewsMatch = heroText.match(/([\d,]+)\s*مشاهدة/);
  const counts = parseMetaCounts(heroText);

  const seasons: AnimeZidSeason[] = [];
  const seenSeasons = new Set<number>();
  $("a[href*='/season/']").each((_, el) => {
    const a = $(el);
    const href = String(a.attr("href") || "").trim();
    const m = href.match(/\/season\/(\d+)/);
    if (!m) return;
    const sNum = Number.parseInt(m[1], 10);
    if (!sNum || seenSeasons.has(sNum)) return;
    seenSeasons.add(sNum);
    const txt = a.text().replace(/\s+/g, " ").trim();
    const epM = txt.match(/(\d+)\s*حلقة/);
    seasons.push({
      seasonNumber: sNum,
      label: `الموسم ${sNum}`,
      url: href.startsWith("http") ? href : `${ANIMEZID_ORIGIN}/${href.replace(/^\/+/, "")}`,
      episodeCount: epM ? Number.parseInt(epM[1], 10) || 0 : 0,
    });
  });
  seasons.sort((a, b) => a.seasonNumber - b.seasonNumber);

  let activeSeason = seasonKey > 0 ? seasonKey : (seasons[0]?.seasonNumber ?? 1);
  let episodes = parseEpisodesFromHtml($);

  if (seasons.length > 0) {
    const targetSeason = seasons.find((s) => s.seasonNumber === activeSeason) || seasons[0];
    activeSeason = targetSeason.seasonNumber;
    if (seasonKey > 0 || seasons.length > 1 || (targetSeason.episodeCount > 0 && episodes.length < targetSeason.episodeCount)) {
      try {
        const sHtml = await fetchHtml(targetSeason.url, seriesUrl);
        const $s = load(sHtml);
        const seasonEps = parseEpisodesFromHtml($s);
        if (seasonEps.length > 0) {
          episodes = seasonEps;
        }
      } catch {
        // Keep root episodes as fallback
      }
    }
  }

  const anilist = await fetchAnilistByTitle([...englishCandidates, titleAr], titleAr);

  const result: AnimeZidDetailResult = {
    slug,
    url: seriesUrl,
    rawTitle,
    titleAr,
    englishTitle: anilist?.title?.english || anilist?.title?.romaji || englishCandidates[0] || "",
    poster,
    badge: "مدبلج",
    year: yearMatch ? yearMatch[1] : (anilist?.startYear ? String(anilist.startYear) : ""),
    views: viewsMatch ? viewsMatch[1] : "",
    seasonsCount: seasons.length || counts.seasonsCount || 1,
    episodesCount: episodes.length || counts.episodesCount || 0,
    rawDescription: cleanAnimeZidDescription(descRaw),
    seasons,
    activeSeason,
    episodes,
    anilist,
  };

  detailCache.set(cacheKey, { expiresAt: Date.now() + (anilist ? 6 * 3600_000 : 90_000), value: result });
  if (detailCache.size > 200) {
    const oldest = detailCache.keys().next().value;
    if (oldest) detailCache.delete(oldest);
  }
  return result;
}

function unsealXorToken(sealedHex: string, maskHex: string): string {
  if (!/^[a-f0-9]{64}$/i.test(sealedHex) || !/^[a-f0-9]{64}$/i.test(maskHex)) return "";
  let out = "";
  for (let i = 0; i < 64; i += 2) {
    const val = Number.parseInt(sealedHex.slice(i, i + 2), 16) ^ Number.parseInt(maskHex.slice(i, i + 2), 16);
    out += val.toString(16).padStart(2, "0");
  }
  return out;
}

function buildPlaybackAuthHeader(targetUrl: string, csrf: string, token: string): Record<string, string> {
  if (csrf) return { "X-Playback-CSRF": csrf };
  const pathname = new URL(targetUrl).pathname;
  const proof = crypto.createHash("sha256").update(`${token}|${pathname}`).digest("hex");
  return { "X-Playback-Proof": proof };
}

function mergeCookies(existing: Map<string, string>, res: Response): void {
  const rawList: string[] = typeof (res.headers as any).getSetCookie === "function"
    ? (res.headers as any).getSetCookie()
    : (res.headers.get("set-cookie") ? [res.headers.get("set-cookie") as string] : []);
  for (const raw of rawList) {
    const first = String(raw || "").split(";")[0];
    const eq = first.indexOf("=");
    if (eq > 0) {
      existing.set(first.slice(0, eq).trim(), first.slice(eq + 1).trim());
    }
  }
}

function formatCookies(cookies: Map<string, string>): string {
  return Array.from(cookies.entries()).map(([k, v]) => `${k}=${v}`).join("; ");
}

function scoreProvider(provider: string): { supportsNative: boolean; priority: number } {
  const p = provider.toLowerCase();
  if (p.includes("megamax")) return { supportsNative: true, priority: 100 };
  if (p.includes("uqload")) return { supportsNative: true, priority: 90 };
  if (p.includes("vidtube")) return { supportsNative: false, priority: 60 };
  if (p.includes("streamruby")) return { supportsNative: false, priority: 55 };
  if (p.includes("dood")) return { supportsNative: false, priority: 40 };
  if (p.includes("abyss")) return { supportsNative: false, priority: 35 };
  return { supportsNative: false, priority: 20 };
}

async function createPlaybackSession(vid: string): Promise<CachedSession> {
  const existing = sessionCache.get(vid);
  if (existing && existing.expiresAt > Date.now()) {
    return existing;
  }

  const playUrl = `${ANIMEZID_ORIGIN}/play.php?vid=${encodeURIComponent(vid)}`;
  const cookies = new Map<string, string>();
  const pageRes = await fetch(playUrl, {
    headers: {
      "User-Agent": BROWSER_UA,
      Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      Referer: `${ANIMEZID_ORIGIN}/`,
    },
    signal: AbortSignal.timeout(15_000),
    redirect: "follow",
  });
  if (!pageRes.ok) throw new Error(`animezid_play_http_${pageRes.status}`);
  mergeCookies(cookies, pageRes);
  const html = await pageRes.text();

  const csrf = html.match(/data-playback-csrf="([^"]+)"/)?.[1] || "";
  const pbA = html.match(/data-pb-a="([^"]+)"/)?.[1] || "";
  const pbB = html.match(/data-pb-b="([^"]+)"/)?.[1] || "";
  const token = csrf ? "" : unsealXorToken(pbA, pbB);
  if (!csrf && !token) {
    throw new Error("animezid_playback_token_missing");
  }

  const sessionsUrl = `${ANIMEZID_ORIGIN}/web-playback/sessions`;
  const authHdr = buildPlaybackAuthHeader(sessionsUrl, csrf, token);
  const cookieHeader = formatCookies(cookies);

  const sessRes = await fetch(sessionsUrl, {
    method: "POST",
    headers: {
      "User-Agent": BROWSER_UA,
      "Content-Type": "application/json",
      Accept: "application/json, text/plain, */*",
      Origin: ANIMEZID_ORIGIN,
      "Sec-Fetch-Dest": "empty",
      "Sec-Fetch-Mode": "cors",
      "Sec-Fetch-Site": "same-origin",
      ...(cookieHeader ? { Cookie: cookieHeader } : {}),
      ...authHdr,
    },
    body: JSON.stringify({ content_id: vid }),
    signal: AbortSignal.timeout(15_000),
  });
  mergeCookies(cookies, sessRes);
  if (!sessRes.ok) {
    throw new Error(`animezid_session_http_${sessRes.status}`);
  }
  const sessJson = (await sessRes.json()) as any;
  const sessionId = String(sessJson?.session_id || "").trim();
  if (!sessionId) throw new Error("animezid_session_id_missing");

  const rawSources: any[] = Array.isArray(sessJson?.sources) ? sessJson.sources : [];
  const sources: AnimeZidServerSource[] = rawSources
    .map((s) => {
      const provider = String(s?.provider || "سيرفر").trim();
      const type: "embedded_web" | "download" = s?.type === "download" ? "download" : "embedded_web";
      const ranked = scoreProvider(provider);
      return {
        id: String(s?.id || "").trim(),
        provider,
        type,
        label: String(s?.label || provider).trim(),
        quality: String(s?.quality || (provider.toLowerCase().includes("uqload") ? "1080p" : "720p")),
        supportsNative: ranked.supportsNative,
        priority: ranked.priority,
      };
    })
    .filter((s) => s.id)
    .sort((a, b) => b.priority - a.priority);

  const session: CachedSession = {
    vid,
    playUrl,
    sessionId,
    csrf,
    token,
    cookieHeader: formatCookies(cookies),
    sources,
    expiresAt: Date.now() + 8 * 60_000,
  };
  sessionCache.set(vid, session);
  return session;
}

export async function getAnimeZidServers(vid: string): Promise<{
  vid: string;
  watchSources: AnimeZidServerSource[];
  downloadSources: AnimeZidServerSource[];
}> {
  const session = await createPlaybackSession(vid);
  const rawWatch = session.sources.filter((s) => s.type === "embedded_web");
  const expandedWatch: AnimeZidServerSource[] = [];
  for (const s of rawWatch) {
    if (s.provider.toLowerCase().includes("megamax") || s.label.toLowerCase().includes("megamax")) {
      expandedWatch.push({
        ...s,
        id: s.id + "__mm720",
        label: "MegaMax HD",
        provider: "MegaMax HD",
        quality: "720p",
        priority: 100,
        supportsNative: true,
      });
      expandedWatch.push({
        ...s,
        id: s.id + "__mm1080",
        label: "MegaMax FHD",
        provider: "MegaMax FHD",
        quality: "1080p",
        priority: 97,
        supportsNative: true,
      });
      expandedWatch.push({
        ...s,
        id: s.id + "__mmalt",
        label: "MegaMax احتياطي",
        provider: "MegaMax احتياطي",
        quality: "720p",
        priority: 92,
        supportsNative: true,
      });
    } else {
      expandedWatch.push(s);
    }
  }
  expandedWatch.sort((a, b) => b.priority - a.priority);
  return {
    vid,
    watchSources: expandedWatch,
    downloadSources: session.sources.filter((s) => s.type === "download"),
  };
}

function unpackDeanEdwards(html: string): string[] {
  const out: string[] = [];
  const regex = /eval\(function\(p,a,c,k,e,[dr]\)\{.*?\}\('([\s\S]*?)',\s*(\d+),\s*(\d+),\s*'([\s\S]*?)'\.split\('\|'\)/g;
  let m: RegExpExecArray | null;
  while ((m = regex.exec(html)) !== null) {
    try {
      const payload = m[1];
      const radix = Number.parseInt(m[2], 10);
      const count = Number.parseInt(m[3], 10);
      const symtab = m[4].split("|");
      const encode = (num: number): string => {
        const prefix = num < radix ? "" : encode(Math.floor(num / radix));
        const rem = num % radix;
        return prefix + (rem > 35 ? String.fromCharCode(rem + 29) : rem.toString(36));
      };
      const lookup = new Map<string, string>();
      for (let i = 0; i < count; i++) {
        const key = encode(i);
        lookup.set(key, symtab[i] || key);
      }
      out.push(payload.replace(/\b\w+\b/g, (w) => lookup.get(w) ?? w));
    } catch {
      // ignore malformed block
    }
  }
  return out;
}

function extractDirectFromTexts(texts: string[]): { url: string; type: "hls" | "mp4" } | null {
  for (const t of texts) {
    const mdCore = t.match(/MDCore\.wurl\s*=\s*['"]((?:https?:)?\/\/[^"'\s]+)['"]/i);
    if (mdCore?.[1]) {
      const raw = mdCore[1].startsWith("//") ? "https:" + mdCore[1] : mdCore[1];
      return { url: raw, type: raw.includes(".m3u8") ? "hls" : "mp4" };
    }
    const m3u8 =
      t.match(/(?:file|src)\s*[:=]\s*['"](https?:\/\/[^"'\s]+\.m3u8[^"'\s]*)['"]/i) ||
      t.match(/(https?:\/\/[^"'\s\\]+\.m3u8[^"'\s\\]*)/i);
    if (m3u8?.[1]) return { url: m3u8[1], type: "hls" };
    const mp4 =
      t.match(/(?:file|src)\s*[:=]\s*['"](https?:\/\/[^"'\s]+\.mp4[^"'\s]*)['"]/i) ||
      t.match(/(https?:\/\/[^"'\s\\]+\.mp4[^"'\s\\]*)/i);
    if (mp4?.[1]) return { url: mp4[1], type: "mp4" };
  }
  return null;
}

async function extractOkRuDirect(videoId: string): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  const url = `https://ok.ru/videoembed/${encodeURIComponent(videoId)}`;
  const res = await fetch(url, {
    headers: { "User-Agent": BROWSER_UA, Referer: "https://ok.ru/" },
    signal: AbortSignal.timeout(10_000),
  });
  if (!res.ok) return null;
  const html = await res.text();
  const dataOptions = html.match(/data-options="([^"]+)"/)?.[1];
  if (!dataOptions) return null;
  const decoded = dataOptions
    .replace(/&quot;/g, '"')
    .replace(/&amp;/g, "&")
    .replace(/&#39;/g, "'");
  const outer = JSON.parse(decoded);
  const metaRaw = outer?.flashvars?.metadata;
  const meta = typeof metaRaw === "string" ? JSON.parse(metaRaw) : metaRaw;
  const hlsUrl = meta?.hlsManifestUrl || meta?.hlsMasterPlaylistUrl;
  if (hlsUrl && typeof hlsUrl === "string") {
    return { url: hlsUrl, type: "hls" };
  }
  const videos: any[] = Array.isArray(meta?.videos) ? meta.videos : [];
  const preferred = ["full", "hd", "sd", "low", "lowest"];
  for (const q of preferred) {
    const v = videos.find((x) => String(x?.name || "").toLowerCase() === q && x?.url);
    if (v?.url) return { url: String(v.url), type: "mp4" };
  }
  return videos[0]?.url ? { url: String(videos[0].url), type: "mp4" } : null;
}

async function extractVoeDirect(
  embedUrl: string,
  referer: string,
): Promise<{ url: string; type: "hls" | "mp4"; referer: string; mirrorEmbedUrl?: string } | null> {
  try {
    const res1 = await fetch(embedUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: referer },
      signal: AbortSignal.timeout(7_000),
      redirect: "follow",
    });
    if (!res1.ok) return null;
    let html = await res1.text();
    let finalUrl = res1.url || embedUrl;

    const jsRedir = html.match(/window\.location\.href\s*=\s*['"](https?:\/\/[^'"]+)['"]/i)?.[1];
    if (jsRedir && isSafeExternalHttpUrl(jsRedir)) {
      const res2 = await fetch(jsRedir, {
        headers: { "User-Agent": BROWSER_UA, Referer: finalUrl },
        signal: AbortSignal.timeout(7_000),
        redirect: "follow",
      });
      if (res2.ok) {
        html = await res2.text();
        finalUrl = res2.url || jsRedir;
      }
    }

    const originRef = new URL(finalUrl).origin + "/";
    const jsonScript = html.match(/<script[^>]*type=["']application\/json["'][^>]*>([\s\S]*?)<\/script>/i)?.[1];
    if (jsonScript) {
      try {
        let raw = jsonScript.trim();
        if (raw.startsWith("[") && raw.endsWith("]")) {
          const arr = JSON.parse(raw);
          if (typeof arr?.[0] === "string") raw = arr[0];
        }
        const rot13 = raw.replace(/[A-Za-z]/g, (c) => {
          const code = c.charCodeAt(0);
          const limit = c <= "Z" ? 90 : 122;
          const shifted = code + 13;
          return String.fromCharCode(limit >= shifted ? shifted : shifted - 26);
        });
        const step2 = rot13
          .replace(/(@\$|\^\^|~@|@\?|\*%|\^!|#\$)/g, "")
          .replace(/_/g, "");
        const step3 = Buffer.from(step2, "base64").toString("utf8");
        const step4 = [...step3]
          .map((ch) => String.fromCharCode(ch.charCodeAt(0) - 3))
          .reverse()
          .join("");
        const decoded = JSON.parse(Buffer.from(step4, "base64").toString("utf8"));
        const hlsSource = typeof decoded?.source === "string" ? decoded.source.trim() : "";
        if (hlsSource && isSafeExternalHttpUrl(hlsSource)) {
          return { url: hlsSource, type: hlsSource.includes(".mp4") && !hlsSource.includes(".m3u8") ? "mp4" : "hls", referer: originRef };
        }
        const directMp4 = typeof decoded?.direct_access_url === "string" ? decoded.direct_access_url.trim() : "";
        if (directMp4 && isSafeExternalHttpUrl(directMp4)) {
          return { url: directMp4, type: "mp4", referer: originRef };
        }
      } catch {}
    }

    const directFallback = extractDirectFromTexts([...unpackDeanEdwards(html), html]);
    if (directFallback) return { ...directFallback, referer: originRef };
  } catch {}
  return null;
}

async function extractMegaMaxStream(
  embedUrl: string,
  tier: "mm720" | "mm1080" | "mmalt" | "default" = "default",
  preferNonUqload = true,
): Promise<{ url: string; type: "hls" | "mp4"; referer: string } | null> {
  if (!isSafeExternalHttpUrl(embedUrl)) return null;
  const pageRes = await fetch(embedUrl, {
    headers: { "User-Agent": BROWSER_UA, Referer: `${ANIMEZID_ORIGIN}/`, Accept: "text/html" },
    signal: AbortSignal.timeout(10_000),
  });
  if (!pageRes.ok) return null;
  const pageHtml = await pageRes.text();
  const version = pageHtml.match(/"version"\s*:\s*"([a-f0-9]{16,})"/)?.[1] || "d98bcc9c79d1c5ff36a86cc41dfcd275";
  const cookies = new Map<string, string>();
  mergeCookies(cookies, pageRes);
  const cookieHeader = formatCookies(cookies);

  const reloadRes = await fetch(embedUrl, {
    headers: {
      "User-Agent": BROWSER_UA,
      "X-Inertia": "true",
      "X-Inertia-Version": version,
      "X-Inertia-Partial-Data": "streams",
      "X-Inertia-Partial-Component": "files/mirror/video",
      Referer: embedUrl,
      Accept: "application/json, text/plain, */*",
      ...(cookieHeader ? { Cookie: cookieHeader } : {}),
    },
    signal: AbortSignal.timeout(10_000),
  });
  if (!reloadRes.ok) return null;
  const data = (await reloadRes.json()) as any;
  const rawQualities: any[] = Array.isArray(data?.props?.streams?.data) ? data.props.streams.data : [];

  const qualityRank = (q: any) => {
    const lbl = String(q?.label || "").toLowerCase();
    if (tier === "mm1080") {
      if (lbl.includes("1080")) return 100;
      if (lbl.includes("720")) return 80;
      if (lbl.includes("480")) return 60;
      return 40;
    }
    if (tier === "mmalt") {
      if (lbl.includes("480")) return 100;
      if (lbl.includes("720")) return 90;
      if (lbl.includes("1080")) return 70;
      return 40;
    }
    if (lbl.includes("720")) return 100;
    if (lbl.includes("1080")) return 80;
    if (lbl.includes("480")) return 60;
    return 40;
  };
  const qualities = [...rawQualities].sort((a, b) => qualityRank(b) - qualityRank(a));

  const mirrorScore = (drv: string) => {
    if (tier === "mmalt") {
      if (drv === "voe") return 100;
      if (drv === "streamhg") return 95;
      if (drv === "mixdrop") return 90;
      if (drv === "lulustream") return 85;
      if (drv === "ok") return 80;
      if (drv === "uqload") return 75;
      return 10;
    }
    if (drv === "ok") return 100;
    if (drv === "voe") return 96;
    if (drv === "lulustream") return 92;
    if (drv === "streamhg") return 85;
    if (drv === "mixdrop") return 75;
    if (drv === "uqload") return preferNonUqload ? 20 : 95;
    return 10;
  };

  for (const q of qualities) {
    const mirrors = [...(q?.mirrors || [])].sort(
      (a: any, b: any) => mirrorScore(String(b?.driver || "").toLowerCase()) - mirrorScore(String(a?.driver || "").toLowerCase()),
    );
    for (const mirror of mirrors) {
      let link = String(mirror?.link || "").trim();
      if (link.startsWith("//")) link = "https:" + link;
      if (!isSafeExternalHttpUrl(link)) continue;
      const drv = String(mirror?.driver || "").toLowerCase();

      if (drv === "ok" || link.includes("ok.ru/videoembed/")) {
        const okId = link.match(/\/videoembed\/(\d+)/)?.[1];
        if (okId) {
          try {
            const okStream = await extractOkRuDirect(okId);
            if (okStream) return { ...okStream, referer: "https://ok.ru/", mirrorEmbedUrl: link };
          } catch {}
        }
      } else if (drv === "voe" || link.includes("voe.sx/")) {
        const voeStream = await extractVoeDirect(link, embedUrl);
        if (voeStream) return { ...voeStream, mirrorEmbedUrl: link };
      } else if (
        drv === "uqload" ||
        drv === "lulustream" ||
        drv === "streamhg" ||
        drv === "mixdrop" ||
        link.includes("uqload") ||
        link.includes("lulustream") ||
        link.includes("streamwish")
      ) {
        try {
          const r = await fetch(link, {
            headers: {
              "User-Agent": BROWSER_UA,
              Referer: embedUrl,
              "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
            },
            redirect: "follow",
            signal: AbortSignal.timeout(7_000),
          });
          if (r.ok) {
            const h = await r.text();
            const found = extractDirectFromTexts([...unpackDeanEdwards(h), h]);
            const finalOrigin = (() => {
              try {
                return new URL(r.url || link).origin + "/";
              } catch {
                return new URL(link).origin + "/";
              }
            })();
            if (found) return { ...found, referer: finalOrigin, mirrorEmbedUrl: r.url || link };
          }
        } catch {}
      }
    }
  }
  return null;
}

async function resolveLaunchRedirect(session: CachedSession, sourceId: string): Promise<string> {
  const baseSourceId = sourceId.replace(/__(mm720|mm1080|mmalt)$/, "");
  const resolveUrl = `${ANIMEZID_ORIGIN}/web-playback/sessions/${encodeURIComponent(session.sessionId)}/sources/${encodeURIComponent(baseSourceId)}/resolve`;
  const authHdr = buildPlaybackAuthHeader(resolveUrl, session.csrf, session.token);

  const res = await fetch(resolveUrl, {
    method: "POST",
    headers: {
      "User-Agent": BROWSER_UA,
      "Content-Type": "application/json",
      Accept: "application/json, text/plain, */*",
      Origin: ANIMEZID_ORIGIN,
      "Sec-Fetch-Dest": "empty",
      "Sec-Fetch-Mode": "cors",
      "Sec-Fetch-Site": "same-origin",
      ...(session.cookieHeader ? { Cookie: session.cookieHeader } : {}),
      ...authHdr,
    },
    body: "{}",
    signal: AbortSignal.timeout(12_000),
  });

  if (res.status === 403 || res.status === 404) {
    sessionCache.delete(session.vid);
  }
  if (!res.ok) throw new Error(`animezid_resolve_http_${res.status}`);
  const json = (await res.json()) as any;
  const launchUrl = String(json?.launch_url || "").trim();
  if (!launchUrl) throw new Error("animezid_launch_url_empty");

  const args = [
    "-sS",
    "-i",
    "--max-time",
    "12",
    "-H",
    `User-Agent: ${BROWSER_UA}`,
    "-H",
    `Referer: ${session.playUrl}`,
    "-H",
    "Sec-Fetch-Dest: iframe",
    "-H",
    "Sec-Fetch-Mode: navigate",
    "-H",
    "Sec-Fetch-Site: same-origin",
    ...(session.cookieHeader ? ["-H", `Cookie: ${session.cookieHeader}`] : []),
    launchUrl,
  ];
  const { stdout } = await execFileAsync("curl", args, { timeout: 14_000, maxBuffer: 512 * 1024 });
  const loc = stdout.match(/^location:\s*(.+)$/im)?.[1]?.trim() || "";
  if (loc) return loc.startsWith("http") ? loc : new URL(loc, ANIMEZID_ORIGIN).href;
  const metaLoc = stdout.match(/url=([^"'\s>]+)/i)?.[1] || "";
  if (metaLoc) return metaLoc;
  throw new Error("animezid_embed_redirect_missing");
}

async function resolveSingleSource(session: CachedSession, source: AnimeZidServerSource): Promise<AnimeZidResolvedStream | null> {
  const cacheKey = `${session.vid}|${source.id}`;
  const cached = streamCache.get(cacheKey);
  if (cached && cached.expiresAt > Date.now()) {
    return cached.value;
  }

  const tierMatch = source.id.match(/__(mm720|mm1080|mmalt)$/);
  const tier = (tierMatch?.[1] as "mm720" | "mm1080" | "mmalt" | undefined) || "default";
  const baseId = source.id.replace(/__(mm720|mm1080|mmalt)$/, "");

  const embedUrl = await resolveLaunchRedirect(session, baseId);
  if (!isSafeExternalHttpUrl(embedUrl)) return null;
  const host = new URL(embedUrl).hostname.toLowerCase();
  let extracted: { url: string; type: "hls" | "mp4"; referer: string; mirrorEmbedUrl?: string } | null = null;

  if (host.includes("uqload")) {
    const embedRes = await fetch(embedUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${ANIMEZID_ORIGIN}/`,
        "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
      },
      redirect: "follow",
      signal: AbortSignal.timeout(12_000),
    });
    if (embedRes.ok) {
      const html = await embedRes.text();
      const found = extractDirectFromTexts([...unpackDeanEdwards(html), html]);
      const referer = new URL(embedRes.url || embedUrl).origin + "/";
      if (found) extracted = { ...found, referer };
    }
  } else if (host.includes("megamax") || host.includes("share4max")) {
    extracted = await extractMegaMaxStream(embedUrl, tier);
  } else {
    const embedRes = await fetch(embedUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${ANIMEZID_ORIGIN}/`,
        "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
      },
      redirect: "follow",
      signal: AbortSignal.timeout(10_000),
    });
    if (embedRes.ok) {
      const html = await embedRes.text();
      const found = extractDirectFromTexts([...unpackDeanEdwards(html), html]);
      const referer = new URL(embedRes.url || embedUrl).origin + "/";
      if (found) extracted = { ...found, referer };
    }
  }

  if (!extracted?.url || !isSafeExternalHttpUrl(extracted.url)) {
    return null;
  }

  const proxyPath = extracted.type === "hls" ? "/api/anime/hls-proxy" : "/api/anime/video-proxy";
  const hlsUrl = `${proxyPath}?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(extracted.referer)}`;

  const resolved: AnimeZidResolvedStream = {
    hlsUrl,
    rawUrl: extracted.url,
    referer: extracted.referer,
    type: extracted.type,
    provider: source.provider,
    embedUrl: extracted.mirrorEmbedUrl || embedUrl,
  };

  streamCache.set(cacheKey, { expiresAt: Date.now() + 20 * 60_000, value: resolved });
  return resolved;
}

export async function resolveAnimeZidWatchSrc(
  vid: string,
  sourceId?: string,
): Promise<AnimeZidResolvedStream> {
  const session = await createPlaybackSession(vid);
  const watchSources = session.sources.filter((s) => s.type === "embedded_web");
  if (!watchSources.length) {
    throw new Error("animezid_no_sources");
  }

  if (sourceId) {
    const baseId = sourceId.replace(/__(mm720|mm1080|mmalt)$/, "");
    const target = watchSources.find((s) => s.id === sourceId || s.id === baseId);
    if (!target) throw new Error("animezid_source_not_found");
    const resolved = await resolveSingleSource(session, { ...target, id: sourceId });
    if (!resolved) throw new Error("animezid_stream_extract_failed");
    return resolved;
  }

  const candidates = watchSources.filter((s) => s.supportsNative);
  for (const src of (candidates.length ? candidates : watchSources.slice(0, 2))) {
    const tiers = src.provider.toLowerCase().includes("megamax")
      ? ["__mm720", "__mm1080", "__mmalt"].map((sfx) => ({ ...src, id: src.id + sfx }))
      : [src];
    for (const candidate of tiers) {
      try {
        const resolved = await resolveSingleSource(session, candidate);
        if (resolved) return resolved;
      } catch {
        // try next candidate
      }
    }
  }
  throw new Error("animezid_stream_unavailable");
}

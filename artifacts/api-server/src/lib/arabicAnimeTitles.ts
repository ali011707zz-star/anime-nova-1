import { pool } from "./db.js";
import curatedTitlesRaw from "../data/anime-titles-ar.json";
import wikidataCompactRaw from "../data/wikidata-titles-ar.json";

const DATABASE_CACHE_TTL_MS = 5 * 60_000;
const TMDB_API_KEY = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";

type ArabicAnimeTitle = {
  anilistId: number;
  title_ar: string;
  englishTitle: string;
  firstAired: number;
  sourceName: string;
  sourceUrl: string;
};

type WikidataCompact = {
  anilist?: Record<string, string>;
  mal?: Record<string, string>;
  en?: Record<string, string>;
};

export type ResolveArabicInput = {
  id?: number | null;
  malId?: number | null;
  idSource?: string | null;
  english?: string | null;
  romaji?: string | null;
  synonyms?: string[] | null;
  format?: string | null;
  type?: string | null;
};

const verifiedTitles = curatedTitlesRaw as ArabicAnimeTitle[];
const wikidataCompact = wikidataCompactRaw as WikidataCompact;

const curatedJsonMap = new Map<number, string>();
const englishFromJsonMap = new Map<number, string>();
for (const entry of verifiedTitles) {
  if (Number.isSafeInteger(entry.anilistId) && entry.anilistId > 0 && typeof entry.title_ar === "string" && entry.title_ar.trim()) {
    curatedJsonMap.set(entry.anilistId, entry.title_ar.trim());
    if (entry.englishTitle) englishFromJsonMap.set(entry.anilistId, entry.englishTitle);
  }
}

const wdAnilistMap = new Map<number, string>();
for (const [k, v] of Object.entries(wikidataCompact?.anilist || {})) {
  const id = Number(k);
  if (Number.isSafeInteger(id) && id > 0 && typeof v === "string" && v.trim()) wdAnilistMap.set(id, v.trim());
}

const wdMalMap = new Map<number, string>();
for (const [k, v] of Object.entries(wikidataCompact?.mal || {})) {
  const id = Number(k);
  if (Number.isSafeInteger(id) && id > 0 && typeof v === "string" && v.trim()) wdMalMap.set(id, v.trim());
}

const wdEnMap = new Map<string, string>();
for (const [k, v] of Object.entries(wikidataCompact?.en || {})) {
  if (k && typeof v === "string" && v.trim()) wdEnMap.set(k.toLowerCase(), v.trim());
}

type DbCacheState = {
  expiresAt: number;
  anilist: Map<number, string>;
  mal: Map<number, string>;
  englishById: Map<number, string>;
};

let dbCache: DbCacheState | null = null;
let dbLoadPromise: Promise<DbCacheState> | null = null;
const inflightExternal = new Map<string, Promise<string | null>>();

const COMMON_ENGLISH_WORDS = /\b(the|of|in|to|for|with|on|at|from|by|about|as|into|like|through|after|over|between|out|against|during|without|before|under|around|among|my|your|his|her|our|their|is|are|was|were|be|been|have|has|had|do|does|did|will|would|can|could|should|may|might|must|i|you|he|she|it|we|they|who|what|where|when|why|how|all|any|both|each|few|more|most|other|some|such|no|nor|not|only|own|same|so|than|too|very|world|life|love|girl|boy|school|high|academy|magic|hero|king|queen|prince|princess|demon|dragon|sword|knight|war|battle|god|angel|devil|dark|light|black|white|red|blue|golden|silver|secret|story|tale|legend|chronicle|chronicles|diary|diaries|journey|adventure|adventures|new|last|first|final|strongest|weakest|reincarnated|another|level|skill|dungeon|guild|party|witch|wizard|mage|assassin|healer|tamer|villager|villainess|duke|emperor|empire|kingdom|city|town|village|island|sea|sky|star|moon|sun|shadow|flame|fire|water|wind|earth|time|space|dream|memory|promise|fate|destiny|soul|heart|blood|death|dead|kill|slayer|hunter|fighter|warrior|master|lord|lady|sister|brother|mother|father|daughter|son|wife|husband|friend|friends|classmate|neighbor|days|night|morning|summer|winter|spring|fall|autumn|year|years|hundred|thousand|million|zero|one|two|three|four|five|six|seven|eight|nine|ten)\b/i;

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
    /[\u0600-\u06FF]/.test(value) && value.trim().length <= 140;
}

function cleanTitleKey(s: string | null | undefined): string {
  return String(s || "")
    .toLowerCase()
    .replace(/\(\d{4}\)/g, "")
    .replace(/\(tv\)/gi, "")
    .replace(/\b(?:the\s*final\s*season|final\s*season|season\s*\d+|\d+(?:st|nd|rd|th)\s*season|part\s*\d+|cour\s*\d+|the\s*movie|movie|ova|ona)\b/gi, "")
    .replace(/[^a-z0-9\u0600-\u06FF]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function isDescriptiveEnglishTitle(english?: string | null, romaji?: string | null): boolean {
  if (!english || !english.trim()) return false;
  const enClean = english.replace(/\b(?:season\s*\d+|\d+(?:st|nd|rd|th)\s*season|part\s*\d+|movie|the\s*movie|ova|ona|tv)\b/gi, "").trim();
  const romClean = (romaji || "").replace(/\b(?:season\s*\d+|\d+(?:st|nd|rd|th)\s*season|part\s*\d+|movie|the\s*movie|ova|ona|tv)\b/gi, "").trim();
  if (!enClean) return false;
  if (enClean.toLowerCase() === romClean.toLowerCase() && !COMMON_ENGLISH_WORDS.test(enClean)) return false;
  const words = enClean.split(/\s+/).filter(Boolean);
  if (words.length >= 2 && COMMON_ENGLISH_WORDS.test(enClean)) return true;
  if (words.length >= 3) return true;
  return false;
}

const CURATED_IDS: Record<number, string> = {
  // Classics & Big 3
  20: "ناروتو",
  1735: "ناروتو شيبودن",
  97938: "بوروتو: الأجيال القادمة من ناروتو",
  21: "ون بيس",
  60022: "ون بيس: رسالة معجب",
  197178: "ون بيس: هيروينز",
  269: "بليتش",
  116674: "بليتش: حرب الألف سنة الدموية",
  154673: "بليتش: حرب الألف سنة الدموية - الفراق",
  169755: "بليتش: حرب الألف سنة الدموية - الصراع",
  41467: "بليتش: حرب الألف سنة الدموية",
  136: "القناص (1999)",
  11061: "القناص (هانتر × هانتر)",
  170: "سلام دانك",
  235: "المحقق كونان",
  223: "دراغون بول",
  813: "دراغون بول زد",
  225: "دراغون بول جي تي",
  6033: "دراغون بول كاي",
  20694: "دراغون بول كاي (2014)",
  20954: "دراغون بول سوبر",
  169769: "دراغون بول دايما",
  121: "الخيميائي الفولاذي",
  5114: "الخيميائي الفولاذي: الأخوة",
  1535: "مذكرة الموت",
  19: "مونستر (الوحش)",
  33: "بيرسيرك",
  245: "المعلم العظيم أونيزوكا",
  263: "هاجيمي نو إيبو",
  820: "أسطورة أبطال المجرة",
  12031: "كينغدوم (المملكة)",
  17389: "كينغدوم الموسم 2",
  113108: "كينغدوم الموسم 3",
  131580: "كينغدوم الموسم 4",
  156822: "كينغدوم الموسم 5",

  // Attack on Titan
  16498: "هجوم العمالقة",
  20958: "هجوم العمالقة الموسم 2",
  99147: "هجوم العمالقة الموسم 3",
  104578: "هجوم العمالقة الموسم 3 - الجزء 2",
  38524: "هجوم العمالقة الموسم 3 - الجزء 2",
  110277: "هجوم العمالقة: الموسم الأخير",
  131681: "هجوم العمالقة: الموسم الأخير - الجزء 2",
  146984: "هجوم العمالقة: الفصول النهائية",

  // Demon Slayer
  101922: "قاتل الشياطين",
  112151: "قاتل الشياطين: قطار اللانهاية",
  129874: "قاتل الشياطين: قطار اللانهاية (الحلقات)",
  142329: "قاتل الشياطين: منطقة الترفيه",
  145139: "قاتل الشياطين: قرية صانعي السيوف",
  166240: "قاتل الشياطين: تدريب الهاشيرا",

  // Jujutsu Kaisen
  113415: "جوجوتسو كايسن",
  131573: "جوجوتسو كايسن 0: الفيلم",
  145064: "جوجوتسو كايسن الموسم 2",

  // My Hero Academia
  21459: "أكاديميتي للأبطال",
  21856: "أكاديميتي للأبطال الموسم 2",
  21699: "أكاديميتي للأبطال الموسم 2",
  100166: "أكاديميتي للأبطال الموسم 3",
  104276: "أكاديميتي للأبطال الموسم 4",
  117193: "أكاديميتي للأبطال الموسم 5",
  122625: "أكاديميتي للأبطال الموسم 5",
  139630: "أكاديميتي للأبطال الموسم 6",
  138133: "أكاديميتي للأبطال الموسم 6",
  163139: "أكاديميتي للأبطال الموسم 7",
  159831: "أكاديميتي للأبطال الموسم 7",

  // Modern Hits
  151807: "سولو ليفلينغ (ارتقاء منفرد)",
  176496: "سولو ليفلينغ الموسم 2: انهض من الظل",
  154587: "فريرن: ما بعد نهاية الرحلة",
  52991: "فريرن: ما بعد نهاية الرحلة",
  127230: "رجل المنشار (تشينسو مان)",
  57555: "رجل المنشار - الفيلم: آرك ريزي",
  140960: "عائلة الجاسوس (سباي × فاميلي)",
  142838: "عائلة الجاسوس - الجزء 2",
  158927: "عائلة الجاسوس الموسم 2",
  137822: "القفل الأزرق (بلو لوك)",
  163146: "القفل الأزرق الموسم 2",
  97940: "البرسيم الأسود",
  105310: "قوة النيران (فاير فورس)",
  114236: "قوة النيران الموسم 2",
  21087: "رجل اللكمة الواحدة",
  101474: "رجل اللكمة الواحدة الموسم 2",
  21507: "موب سايكو 100",
  101338: "موب سايكو 100 الموسم 2",
  140439: "موب سايكو 100 الموسم 3",
  20605: "غول طوكيو",
  20850: "غول طوكيو √A",
  100240: "غول طوكيو: ري",
  105333: "دكتور ستون",
  113936: "دكتور ستون: حروب الحجر",
  131518: "دكتور ستون: العالم الجديد",
  162670: "دكتور ستون: العلم المستقبلي",
  101348: "ملحمة فينلاند",
  136430: "ملحمة فينلاند الموسم 2",
  128893: "جنة الجحيم (جيغوكوراكو)",
  153288: "كايجو رقم 8",
  171044: "داندادان",
  173388: "داندادان",
  150672: "أوشي نو كو (نجمتي المفضلة)",
  166531: "أوشي نو كو الموسم 2",
  163134: "كاسر الرياح (ويند بريكر)",
  171627: "أيام ساكاموتو",
  163132: "أيام ساكاموتو",
  170942: "الصندوق الأزرق",
  163270: "الصندوق الأزرق",
  161645: "مذكرات الصيدلانية",
  176301: "مذكرات الصيدلانية الموسم 2",
  140999: "سيد الظلال",
  161964: "سيد الظلال الموسم 2",
  148109: "ماشل: السحر والعضلات",
  166610: "ماشل: اختبار الشينكاكوشا",
  115230: "برج الإله",
  153406: "برج الإله الموسم 2",
  158406: "برج الإله الموسم 2",
  21202: "كونوسوبا: بركة على هذا العالم الرائع",
  142877: "كونوسوبا الموسم 3",
  128547: "منتقمو طوكيو",
  142853: "منتقمو طوكيو: صراع عيد الميلاد",
  163329: "منتقمو طوكيو: تينجيكو",
  21355: "ري:زيرو - بدء الحياة في عالم آخر",
  108632: "ري:زيرو الموسم 2",
  119661: "ري:زيرو الموسم 2 - الجزء 2",
  61316: "ري:زيرو - بدء الحياة في عالم آخر الموسم 4",
  20832: "أوفرلورد",
  98437: "أوفرلورد الموسم 2",
  101478: "أوفرلورد الموسم 3",
  133844: "أوفرلورد الموسم 4",
  108465: "تناسخ العاطل (موشوكو تينسي)",
  127720: "تناسخ العاطل - الجزء 2",
  146065: "تناسخ العاطل الموسم 2",
  98659: "فصل النخبة",
  145545: "فصل النخبة الموسم 2",
  145546: "فصل النخبة الموسم 3",
  11757: "فن السيف عبر الإنترنت",
  20594: "فن السيف عبر الإنترنت الموسم 2",
  100182: "فن السيف عبر الإنترنت: أليسيزيشن",
  6702: "فيري تيل",
  20626: "فيري تيل (2014)",
  99749: "فيري تيل: الموسم الأخير",
  143272: "فيري تيل: مهمة المئة عام",
  918: "غينتاما",
  9969: "غينتاما الموسم 2",
  15417: "غينتاما الموسم 2 - الجزء 2",
  20996: "غينتاما الموسم 4",
  28977: "غينتاما الموسم 4",
  39486: "غينتاما: النهاية الكاملة",
  20755: "فصل الاغتيال",
  20583: "هايكيو!!",
  21195: "هايكيو!! الموسم 2",
  21698: "هايكيو!! الموسم 3",
  106625: "هايكيو!! إلى القمة",
  11776: "كرة سلة كوروكو",
  21479: "كلاب بونغو الضالة",
  101921: "كاغويا-ساما: الحب حرب",
  115970: "كاغويا-ساما: الحب حرب الموسم 2",
  125367: "كاغويا-ساما: الحب حرب - أولترا رومانتيك",
  43608: "كاغويا-ساما: الحب حرب - أولترا رومانتيك",
  101280: "حين تجسدت كـ سلايم",
  108511: "حين تجسدت كـ سلايم الموسم 2",
  124080: "هوريميا",
  20447: "نوراغامي",
  21128: "نوراغامي أراغوتو",
  101347: "دورورو",
  9253: "شتاينز؛غيت",
  21127: "شتاينز؛غيت 0",
  1575: "كود غياس: لولوش المتمرد",
  2904: "كود غياس: لولوش المتمرد R2",
  21827: "فايوليت إيفرغاردن",
  101759: "نيفرلاند الموعودة",
  21234: "البلدة التي غبت عنها وحدي",
  20623: "الطفيلي: المبادئ",
  13601: "سايكو-باس",
  10087: "فيت/زيرو",
  19603: "فيت/ستاي نايت: أعمال النصل غير المحدودة",
  20665: "كذبتك في أبريل",
  21519: "اسمك. (كيمي نو نا وا)",
  106286: "أطفال الطقس",
  142770: "سوزومي",
  199: "المخطوفة (سبيريتد أواي)",
  431: "قلعة هاول المتحركة",
  164: "الأميرة مونونوكي",
  20923: "حروب الطعام!",
  19815: "لا لعب لا حياة",
  99263: "نهوض بطل الدرع",
  130003: "بوتشي ذا روك!",
  143270: "ليكوريس ريكويل",
  116589: "86 -إيتي سيكس-",
  131586: "86 -إيتي سيكس- الجزء 2",
  130298: "تصنيف الملوك",
  114535: "إلى أبديتك",
  97986: "صُنع في الهاوية",
  132405: "دميتي المتأنقة",
  153152: "لذيذ في الدهليز (دنجن ميشي)",
  154346: "شانغريلا فرونتير",
  61469: "مغامرات جوجو العجيبة: ستيل بول رن",
};
const PATTERN_MAP: Array<{ regex: RegExp; arabic: string }> = [
  { regex: /\b(jujutsu\s*kaisen)\b/i, arabic: "جوجوتسو كايسن" },
  { regex: /\b(demon\s*slayer|kimetsu\s*no\s*yaiba)\b/i, arabic: "قاتل الشياطين" },
  { regex: /\b(attack\s*on\s*titan|shingeki\s*no\s*kyojin)\b/i, arabic: "هجوم العمالقة" },
  { regex: /(hunter\s*[x×]\s*hunter)/i, arabic: "القناص (هانتر × هانتر)" },
  { regex: /\b(my\s*hero\s*academia|boku\s*no\s*hero\s*academia)\b/i, arabic: "أكاديميتي للأبطال" },
  { regex: /\b(death\s*note)\b/i, arabic: "مذكرة الموت" },
  { regex: /\b(one\s*punch\s*man|one-punch\s*man)\b/i, arabic: "رجل اللكمة الواحدة" },
  { regex: /\b(tokyo\s*ghoul)\b/i, arabic: "غول طوكيو" },
  { regex: /\b(one\s*piece)\b/i, arabic: "ون بيس" },
  { regex: /\b(boruto)\b/i, arabic: "بوروتو" },
  { regex: /\b(naruto\s*shippuuden|naruto\s*shippuden)\b/i, arabic: "ناروتو شيبودن" },
  { regex: /\b(naruto)\b/i, arabic: "ناروتو" },
  { regex: /\b(bleach)\b/i, arabic: "بليتش" },
  { regex: /\b(dragon\s*ball\s*super)\b/i, arabic: "دراغون بول سوبر" },
  { regex: /\b(dragon\s*ball\s*daima)\b/i, arabic: "دراغون بول دايما" },
  { regex: /\b(dragon\s*ball\s*gt)\b/i, arabic: "دراغون بول جي تي" },
  { regex: /\b(dragon\s*ball\s*kai)\b/i, arabic: "دراغون بول كاي" },
  { regex: /\b(dragon\s*ball\s*z)\b/i, arabic: "دراغون بول زد" },
  { regex: /\b(dragon\s*ball)\b/i, arabic: "دراغون بول" },
  { regex: /\b(fullmetal\s*alchemist:\s*brotherhood|hagane\s*no\s*renkinjutsushi:\s*fullmetal)\b/i, arabic: "الخيميائي الفولاذي: الأخوة" },
  { regex: /\b(fullmetal\s*alchemist|hagane\s*no\s*renkinjutsushi)\b/i, arabic: "الخيميائي الفولاذي" },
  { regex: /\b(chainsaw\s*man)\b/i, arabic: "رجل المنشار" },
  { regex: /\b(solo\s*leveling|ore\s*dake\s*level\s*up)\b/i, arabic: "سولو ليفلينغ (ارتقاء منفرد)" },
  { regex: /\b(sousou\s*no\s*frieren|frieren)\b/i, arabic: "فريرن: ما بعد نهاية الرحلة" },
  { regex: /(spy\s*[x×]\s*family)/i, arabic: "عائلة الجاسوس" },
  { regex: /\b(blue\s*lock)\b/i, arabic: "القفل الأزرق" },
  { regex: /\b(black\s*clover)\b/i, arabic: "البرسيم الأسود" },
  { regex: /\b(haikyuu)\b/i, arabic: "هايكيو!!" },
  { regex: /\b(mob\s*psycho)\b/i, arabic: "موب سايكو 100" },
  { regex: /\b(dr\.?\s*stone)\b/i, arabic: "دكتور ستون" },
  { regex: /\b(tokyo\s*revengers)\b/i, arabic: "منتقمو طوكيو" },
  { regex: /\b(jigokuraku|hell['’\s]*s\s*paradise)\b/i, arabic: "جنة الجحيم" },
  { regex: /\b(kaijuu?\s*8|kaiju\s*no\.?\s*8)\b/i, arabic: "كايجو رقم 8" },
  { regex: /\b(dandadan|dan\s*da\s*dan)\b/i, arabic: "داندادان" },
  { regex: /\b(re:?zero)\b/i, arabic: "ري:زيرو - بدء الحياة في عالم آخر" },
  { regex: /\b(overlord)\b/i, arabic: "أوفرلورد" },
  { regex: /\b(mushoku\s*tensei|jobless\s*reincarnation)\b/i, arabic: "تناسخ العاطل (موشوكو تينسي)" },
  { regex: /\b(youkoso\s*jitsuryoku|classroom\s*of\s*the\s*elite)\b/i, arabic: "فصل النخبة" },
  { regex: /\b(eminence\s*in\s*shadow|kage\s*no\s*jitsuryokusha)\b/i, arabic: "سيد الظلال" },
  { regex: /\b(sword\s*art\s*online)\b/i, arabic: "فن السيف عبر الإنترنت" },
  { regex: /\b(detective\s*conan|meitantei\s*conan)\b/i, arabic: "المحقق كونان" },
  { regex: /\b(kami\s*no\s*tou|tower\s*of\s*god)\b/i, arabic: "برج الإله" },
  { regex: /\b(oshi\s*no\s*ko)\b/i, arabic: "أوشي نو كو (نجمتي المفضلة)" },
  { regex: /\b(wind\s*breaker)\b/i, arabic: "كاسر الرياح" },
  { regex: /\b(mashle)\b/i, arabic: "ماشل: السحر والعضلات" },
  { regex: /\b(gintama)\b/i, arabic: "غينتاما" },
  { regex: /\b(fairy\s*tail)\b/i, arabic: "فيري تيل" },
  { regex: /\b(nanatsu\s*no\s*taizai|seven\s*deadly\s*sins)\b/i, arabic: "الخطايا السبع المميتة" },
  { regex: /\b(mokushiroku\s*no\s*yonkishi|four\s*knights\s*of\s*the\s*apocalypse)\b/i, arabic: "فرسان نهاية العالم الأربعة" },
  { regex: /\b(kuroko\s*no\s*basket|kuroko['’\s]*s\s*basketball)\b/i, arabic: "كرة سلة كوروكو" },
  { regex: /\b(bungou?\s*stray\s*dogs)\b/i, arabic: "كلاب بونغو الضالة" },
  { regex: /\b(kaguya[- ]*sama)\b/i, arabic: "كاغويا-ساما: الحب حرب" },
  { regex: /\b(tensei\s*shitara\s*slime\s*datta\s*ken|reincarnated\s*as\s*a\s*slime)\b/i, arabic: "حين تجسدت كـ سلايم" },
  { regex: /\b(horimiya)\b/i, arabic: "هوريميا" },
  { regex: /\b(noragami)\b/i, arabic: "نوراغامي" },
  { regex: /\b(dororo)\b/i, arabic: "دورورو" },
  { regex: /\b(blue\s*box|ao\s*no\s*hako)\b/i, arabic: "الصندوق الأزرق" },
  { regex: /\b(sakamoto\s*days)\b/i, arabic: "أيام ساكاموتو" },
  { regex: /\b(stein['’\s]*s\s*gate|steins;gate)\b/i, arabic: "شتاينز؛غيت" },
  { regex: /\b(code\s*geass)\b/i, arabic: "كود غياس" },
  { regex: /\b(violet\s*evergarden)\b/i, arabic: "فايوليت إيفرغاردن" },
  { regex: /\b(yakusoku\s*no\s*neverland|promised\s*neverland)\b/i, arabic: "نيفرلاند الموعودة" },
  { regex: /\b(kusuriya\s*no\s*hitorigoto|apothecary\s*diaries)\b/i, arabic: "مذكرات الصيدلانية" },
  { regex: /\b(vinland\s*saga)\b/i, arabic: "ملحمة فينلاند" },
  { regex: /\b(enen\s*no\s*shouboutai|fire\s*force)\b/i, arabic: "قوة النيران (فاير فورس)" },
  { regex: /\b(soul\s*eater)\b/i, arabic: "سول إيتر (ملتهم الأرواح)" },
  { regex: /\b(jojo['’\s]*s\s*bizarre\s*adventure|jojo\s*no\s*kimyou\s*na\s*bouken)\b/i, arabic: "مغامرات جوجو العجيبة" },
  { regex: /\b(baki\s*hanma|hanma\s*baki)\b/i, arabic: "باكي هانما" },
  { regex: /\b(baki)\b/i, arabic: "باكي" },
  { regex: /\b(kengan\s*ashura)\b/i, arabic: "كينغان أشورا" },
  { regex: /\b(hajime\s*no\s*ippo)\b/i, arabic: "هاجيمي نو إيبو" },
  { regex: /\b(slam\s*dunk)\b/i, arabic: "سلام دانك" },
  { regex: /\b(captain\s*tsubasa)\b/i, arabic: "الكابتن ماجد" },
  { regex: /\b(inuyasha)\b/i, arabic: "إينوياشا" },
  { regex: /\b(yu-gi-oh|yugioh)\b/i, arabic: "يوغي يو!" },
  { regex: /\b(pokemon|pokémon)\b/i, arabic: "بوكيمون" },
  { regex: /\b(digimon)\b/i, arabic: "أبطال الديجيتال (ديجيمون)" },
  { regex: /\b(neon\s*genesis\s*evangelion|shin\s*seiki\s*evangelion|evangelion)\b/i, arabic: "إيفانجيليون" },
  { regex: /\b(cowboy\s*bebop)\b/i, arabic: "كاوبوي بيبوب" },
  { regex: /\b(trigun)\b/i, arabic: "ترايغن" },
  { regex: /\b(tengen\s*toppa\s*gurren\s*lagann|gurren\s*lagann)\b/i, arabic: "غورين لاغان" },
  { regex: /\b(kill\s*la\s*kill)\b/i, arabic: "كيل لا كيل" },
  { regex: /\b(akame\s*ga\s*kill)\b/i, arabic: "أكامي غا كيل!" },
  { regex: /\b(cyberpunk:\s*edgerunners)\b/i, arabic: "سايبربانك: إيدجرانرز" },
  { regex: /\b(ao\s*no\s*exorcist|blue\s*exorcist)\b/i, arabic: "طارد الأرواح الأزرق" },
  { regex: /\b(owari\s*no\s*seraph|seraph\s*of\s*the\s*end)\b/i, arabic: "سيراف النهاية" },
  { regex: /\b(kuroshitsuji|black\s*butler)\b/i, arabic: "الخادم الأسود" },
  { regex: /\b(yuukoku\s*no\s*moriarty|moriarty\s*the\s*patriot)\b/i, arabic: "موريارتي الوطني" },
  { regex: /\b(vanitas\s*no\s*carte|case\s*study\s*of\s*vanitas)\b/i, arabic: "مذكرات فانيتاس" },
  { regex: /\b(ansatsu\s*kyoushitsu|assassination\s*classroom)\b/i, arabic: "فصل الاغتيال" },
  { regex: /\b(shokugeki\s*no\s*souma|food\s*wars)\b/i, arabic: "حروب الطعام!" },
  { regex: /\b(no\s*game\s*no\s*life)\b/i, arabic: "لا لعب لا حياة" },
  { regex: /\b(tate\s*no\s*yuusha|rising\s*of\s*the\s*shield\s*hero)\b/i, arabic: "نهوض بطل الدرع" },
  { regex: /\b(goblin\s*slayer)\b/i, arabic: "قاتل الغوبلن" },
  { regex: /\b(dungeon\s*ni\s*deai|danmachi|is\s*it\s*wrong\s*to\s*try\s*to\s*pick\s*up\s*girls\s*in\s*a\s*dungeon)\b/i, arabic: "دانماتشي: هل من الخطأ التعرف على الفتيات في الدهليز؟" },
  { regex: /\b(made\s*in\s*abyss)\b/i, arabic: "صُنع في الهاوية" },
  { regex: /\b(fumetsu\s*no\s*anata\s*e|to\s*your\s*eternity)\b/i, arabic: "إلى أبديتك" },
  { regex: /\b(ousama\s*ranking|ranking\s*of\s*kings)\b/i, arabic: "تصنيف الملوك" },
  { regex: /\b(86\s*eighty[- ]*six|eighty[- ]*six)\b/i, arabic: "86 -إيتي سيكس-" },
  { regex: /\b(lycoris\s*recoil)\b/i, arabic: "ليكوريس ريكويل" },
  { regex: /\b(bocchi\s*the\s*rock)\b/i, arabic: "بوتشي ذا روك!" },
  { regex: /\b(boku\s*dake\s*ga\s*inai\s*machi|erased)\b/i, arabic: "البلدة التي غبت عنها وحدي" },
  { regex: /\b(kiseijuu|parasyte)\b/i, arabic: "الطفيلي" },
  { regex: /\b(psycho[- ]*pass)\b/i, arabic: "سايكو-باس" },
  { regex: /\b(fate\/stay\s*night)\b/i, arabic: "فيت/ستاي نايت" },
  { regex: /\b(fate\/zero)\b/i, arabic: "فيت/زيرو" },
  { regex: /\b(fate\/grand\s*order)\b/i, arabic: "فيت/غراند أوردر" },
  { regex: /\b(fate\/apocrypha)\b/i, arabic: "فيت/أبوكريفا" },
  { regex: /\b(fate\/strange\s*fake)\b/i, arabic: "فيت/سترينج فيك" },
  { regex: /\b(bakemonogatari|monogatari\s*series)\b/i, arabic: "مونوغاتاري" },
  { regex: /\b(clannad)\b/i, arabic: "كلاناد" },
  { regex: /\b(angel\s*beats)\b/i, arabic: "نبضات الملاك!" },
  { regex: /\b(anohana)\b/i, arabic: "أنوهانا" },
  { regex: /\b(shigatsu\s*wa\s*kimi\s*no\s*uso|your\s*lie\s*in\s*april)\b/i, arabic: "كذبتك في أبريل" },
  { regex: /\b(toradora)\b/i, arabic: "تورادورا!" },
  { regex: /\b(fruits\s*basket)\b/i, arabic: "سلة الفواكه" },
  { regex: /\b(kaichou\s*wa\s*maid[- ]*sama|maid\s*sama)\b/i, arabic: "رئيسة مجلس الطلبة نادلة!" },
  { regex: /\b(kimi\s*ni\s*todoke)\b/i, arabic: "مني إليك" },
  { regex: /\b(ao\s*haru\s*ride|blue\s*spring\s*ride)\b/i, arabic: "ركوب الربيع الأزرق" },
  { regex: /\b(sono\s*bisuku\s*doll|my\s*dress[- ]*up\s*darling)\b/i, arabic: "دميتي المتأنقة" },
  { regex: /\b(komi[- ]*san|komi\s*can['’\s]*t\s*communicate)\b/i, arabic: "كومي لا تستطيع التواصل" },
  { regex: /\b(seishun\s*buta\s*yarou|rascal\s*does\s*not\s*dream)\b/i, arabic: "الأحمق لا يحلم بفتاة الأرنب سينباي" },
  { regex: /\b(gotoubun\s*no\s*hanayome|quintessential\s*quintuplets)\b/i, arabic: "التوائم الخمسة المتطابقون" },
  { regex: /\b(kanojo,\s*okarishimasu|rent[- ]*a[- ]*girlfriend)\b/i, arabic: "حبيبة للإيجار" },
  { regex: /\b(roshidere|tokidoki\s*bosotto\s*rossiya|alya\s*sometimes\s*hides\s*her\s*feelings\s*in\s*russian)\b/i, arabic: "آليا تخفي مشاعرها أحياناً بالروسية" },
  { regex: /\b(makeine|too\s*many\s*losing\s*heroines)\b/i, arabic: "بطلات خاسرات كثيرات جداً!" },
  { regex: /\b(shangri[- ]*la\s*frontier)\b/i, arabic: "شانغريلا فرونتير" },
  { regex: /\b(dungeon\s*meshi|delicious\s*in\s*dungeon)\b/i, arabic: "لذيذ في الدهليز" },
  { regex: /\b(wistoria|tsue\s*to\s*tsurugi\s*no\s*wistoria)\b/i, arabic: "ويستوريا: العصا والسيف" },
  { regex: /\b(ragna\s*crimson)\b/i, arabic: "راغنا كريمسون" },
  { regex: /\b(undead\s*unluck)\b/i, arabic: "أنديد أنلاك" },
  { regex: /\b(zom\s*100)\b/i, arabic: "زوم 100: قائمة أمنيات الموتى" },
  { regex: /\b(tengoku\s*daimakyou|heavenly\s*delusion)\b/i, arabic: "الوهم السماوي" },
  { regex: /\b(summertime\s*render|summer\s*time\s*rendering)\b/i, arabic: "عرض التوقيت الصيفي" },
  { regex: /\b(tomodachi\s*game)\b/i, arabic: "لعبة الأصدقاء (توموداتشي غيم)" },
  { regex: /\b(yofukashi\s*no\s*uta|call\s*of\s*the\s*night)\b/i, arabic: "نداء الليل" },
  { regex: /\b(golden\s*kamuy)\b/i, arabic: "غولدن كاموي" },
  { regex: /\b(dorohedoro)\b/i, arabic: "دوروهيدورو" },
  { regex: /\b(banana\s*fish)\b/i, arabic: "بانانا فيش" },
  { regex: /\b(devilman\s*crybaby)\b/i, arabic: "ديفلمان كراي بيبي" },
  { regex: /\b(death\s*parade)\b/i, arabic: "موكب الموت" },
  { regex: /\b(zankyou\s*no\s*terror|terror\s*in\s*resonance)\b/i, arabic: "إرهاب في طوكيو" },
  { regex: /\b(mirai\s*nikki|future\s*diary)\b/i, arabic: "مفكرة المستقبل" },
  { regex: /\b(elfen\s*lied)\b/i, arabic: "إلفن ليد" },
  { regex: /\b(claymore)\b/i, arabic: "كلايمور" },
  { regex: /\b(hellsing)\b/i, arabic: "هيلسينغ" },
  { regex: /\b(drifters)\b/i, arabic: "التائهون (دريفترز)" },
  { regex: /\b(shuumatsu\s*no\s*valkyrie|record\s*of\s*ragnarok)\b/i, arabic: "سجلات راغناروك" },
  { regex: /\b(ginga\s*eiyuu\s*densetsu|legend\s*of\s*the\s*galactic\s*heroes)\b/i, arabic: "أسطورة أبطال المجرة" },
  { regex: /\b(ao\s*ashi)\b/i, arabic: "أو آشي" },
  { regex: /\b(sk8\s*the\s*infinity)\b/i, arabic: "سكيت إلى اللانهاية" },
  { regex: /\b(megalo\s*box)\b/i, arabic: "ميغالو بوكس" },
  { regex: /\b(initial\s*d)\b/i, arabic: "إنيشال دي" },
  { regex: /\b(mf\s*ghost)\b/i, arabic: "إم إف غوست" },
  { regex: /\b(spirited\s*away|sen\s*to\s*chihiro)\b/i, arabic: "المخطوفة" },
  { regex: /\b(howl['’\s]*s\s*moving\s*castle)\b/i, arabic: "قلعة هاول المتحركة" },
  { regex: /\b(princess\s*mononoke|mononoke\s*hime)\b/i, arabic: "الأميرة مونونوكي" },
  { regex: /\b(kimi\s*no\s*na\s*wa|your\s*name\.?)\b/i, arabic: "اسمك." },
  { regex: /\b(tenki\s*no\s*ko|weathering\s*with\s*you)\b/i, arabic: "أطفال الطقس" },
  { regex: /\b(suzume\s*no\s*tojimari|suzume)\b/i, arabic: "سوزومي" },
  { regex: /\b(koe\s*no\s*katachi|a\s*silent\s*voice)\b/i, arabic: "صوت صامت" },
  { regex: /\b(kimi\s*no\s*suizou\s*wo\s*tabetai|i\s*want\s*to\s*eat\s*your\s*pancreas)\b/i, arabic: "أريد أن آكل بنكرياسك" },
  { regex: /\b(azur\s*lane)\b/i, arabic: "أزور لين" },
  { regex: /\b(100[- ]*nin\s*no\s*kanojo|100\s*girlfriends)\b/i, arabic: "الـ 100 حبيبة اللواتي يحببنك حقاً" },
  { regex: /\b(precure|pretty\s*cure)\b/i, arabic: "بريتي كيور" },
  { regex: /\b(dou\s*po\s*cangqiong|battle\s*through\s*the\s*heavens)\b/i, arabic: "معركة عبر السماوات" },
  { regex: /\b(soul\s*land|douluo\s*dalu)\b/i, arabic: "أرض الأرواح" },
  { regex: /\b(link\s*click|shiguang\s*dailiren)\b/i, arabic: "وكلاء الزمن (لينك كليك)" },
  { regex: /\b(lord\s*of\s*the\s*mysteries)\b/i, arabic: "سيد الغوامض" },
  { regex: /\b(kaoru\s*hana\s*wa\s*rin\s*to\s*saku|fragrant\s*flower\s*blooms\s*with\s*dignity)\b/i, arabic: "الزهرة العطرة تزهر بكرامة" },
  { regex: /\b(gachiakuta)\b/i, arabic: "غاتشياكوتا" },
  { regex: /\b(lazarus)\b/i, arabic: "لازاروس" },
  { regex: /\b(witch\s*watch)\b/i, arabic: "ويتش ووتش" },
  { regex: /\b(fire\s*force)\b/i, arabic: "قوة النيران" },
  // Fixes for tricky machine-translation cases spotted during audit:
  { regex: /\b(lupin\s*(?:the\s*)?(?:iii|3rd))\b/i, arabic: "لوبين الثالث" },
  { regex: /\b(lupin\s*iii)\b/i, arabic: "لوبين الثالث" },
  { regex: /^free!/i, arabic: "فري! (Free!)" },
  { regex: /\b(love\s*live!)\b/i, arabic: "لوف لايف! مشروع الآيدول المدرسي" },
  { regex: /\b(is\s*the\s*order\s*a\s*rabbit|gochuumon\s*wa\s*usagi)\b/i, arabic: "هل الطلب أرنب؟" },
  { regex: /\b(angel\s*next\s*door\s*spoils\s*me\s*rotten|otonari\s*no\s*tenshi)\b/i, arabic: "ملاك الجوار تدللني كثيراً" },
  { regex: /\b(youjo\s*senki|saga\s*of\s*tanya\s*the\s*evil)\b/i, arabic: "ملحمة تانيا الآثمة (يوجو سينكي)" },
  { regex: /\b(yubisaki\s*to\s*renren|a\s*sign\s*of\s*affection)\b/i, arabic: "علامة مودة (يوبيساكي تو رينرين)" },
  { regex: /\b(space\s*dandy)\b/i, arabic: "سبيس داندي" },
  { regex: /\b(welcome\s*to\s*the\s*n[- ]?h[- ]?k)\b/i, arabic: "مرحباً بكم في NHK" },
  { regex: /\b(mushi[- ]?shi)\b/i, arabic: "موشيشي" },
  { regex: /\b(marriagetoxin|marriage\s*toxin)\b/i, arabic: "مارياج توكسين" },
  { regex: /\b(yomi\s*no\s*tsugai|daemons\s*of\s*the\s*shadow\s*realm)\b/i, arabic: "شياطين عالم الظلال (يومي نو تسوغاي)" },
  { regex: /\b(farming\s*life\s*in\s*another\s*world|isekai\s*nonbiri\s*nouka)\b/i, arabic: "حياة المزرعة الهادئة في عالم آخر" },
  { regex: /\b(the\s*beginning\s*after\s*the\s*end)\b/i, arabic: "البداية بعد النهاية" },
  { regex: /\b(smoking\s*behind\s*the\s*supermarket)\b/i, arabic: "التدخين خلف السوبرماركت معك" },
  { regex: /\b(classroom\s*of\s*the\s*black\s*cat\s*and\s*a\s*witch|kuroneko\s*to\s*majo)\b/i, arabic: "فصل القط الأسود والساحرة" },
  { regex: /\b(iron\s*wok\s*jan)\b/i, arabic: "طاهي المقلاة الحديدية جان!" },
  { regex: /\b(little\s*shark['’\s]*s\s*day\s*out|odekake\s*kozame)\b/i, arabic: "نزهة القرش الصغير" },
  { regex: /\b(you\s*and\s*i\s*are\s*polar\s*opposites|seihantai\s*na\s*kimi\s*to\s*boku)\b/i, arabic: "أنت وأنا متضادان تماماً" },
];

export function extractSeasonAndPartSuffix(text?: string | null): string {
  if (!text) return "";
  const parts: string[] = [];
  if (/\b(the\s*final\s*season|final\s*season)\b/i.test(text)) {
    parts.push("الموسم الأخير");
  } else {
    const sMatch = text.match(/\b(?:season\s*(\d+)|(\d+)(?:st|nd|rd|th)\s*season)\b/i);
    if (sMatch) {
      const n = Number(sMatch[1] || sMatch[2]);
      if (n >= 2) parts.push("الموسم " + n);
    } else {
      const romanMatch = text.match(/\s(II|III|IV|V)(?:$|\s|:)/);
      if (romanMatch) {
        const rMap: Record<string, number> = { II: 2, III: 3, IV: 4, V: 5 };
        if (rMap[romanMatch[1]]) parts.push("الموسم " + rMap[romanMatch[1]]);
      }
    }
  }
  const pMatch = text.match(/\b(?:part|cour)\s*(\d+)\b/i);
  if (pMatch) parts.push("الجزء " + pMatch[1]);
  if (/\b(the\s*movie|movie)\b/i.test(text) && !parts.includes("الفيلم")) parts.push("الفيلم");
  else if (/\b(ova)\b/i.test(text)) parts.push("أوفا");
  return parts.join(" - ");
}

function appendSuffixIfNeeded(baseAr: string, suffix: string): string {
  const clean = baseAr.trim();
  if (!clean) return clean;
  if (suffix && !clean.includes("الموسم") && !clean.includes("الجزء") && !clean.includes("الفيلم")) {
    return (clean + " " + suffix).trim();
  }
  return clean;
}

export function getKnownArabicAnimeTitle(
  id?: number | null,
  english?: string | null,
  romaji?: string | null,
): string | null {
  if (id && CURATED_IDS[id]) return CURATED_IDS[id];
  const combined = ((english || "") + " " + (romaji || "")).trim();
  if (!combined) return null;
  for (const { regex, arabic } of PATTERN_MAP) {
    if (regex.test(combined)) {
      return appendSuffixIfNeeded(arabic, extractSeasonAndPartSuffix(combined));
    }
  }
  return null;
}

function transliterateRomajiWord(word: string): string {
  let w = word.toLowerCase().trim();
  if (!w) return "";
  if (/^\d+$/.test(w)) return w;
  const exactWords: Record<string, string> = {
    san: "سان", chan: "تشان", kun: "كون", sama: "ساما",
    sensei: "سينسي", senpai: "سينباي", hen: "آرك", ova: "أوفا",
    ona: "أونا", special: "خاص", movie: "الفيلم", season: "الموسم", part: "الجزء",
    the: "ذا", of: "أوف", and: "و", in: "إن", to: "تو",
    no: "نو", wa: "وا", ga: "غا", ni: "ني", de: "دي", wo: "و",
    go: "غو", lets: "ليتس", let: "ليت", vs: "ضد",
    ii: "2", iii: "3", iv: "4",
    magic: "ماجيك", magical: "ماجيكال", force: "فورس", explorer: "إكسبلورر",
    zombie: "زومبي", angel: "إينجل", space: "سبيس", prince: "برنس", princess: "برنسيس",
    voice: "فويس", phantom: "فانتوم", cardfight: "كارد فايت", vanguard: "فانغوارد",
    vertex: "فيرتكس", horror: "هورور", collector: "كولكتور", looking: "لوكنغ",
  };
  if (exactWords[w]) return exactWords[w];
  w = w.replace(/([bcdfghjklmnpqrstvwxyz])\1+/g, "$1");
  w = w.replace(/ou|oo/g, "o").replace(/uu/g, "u").replace(/aa/g, "a").replace(/ii/g, "i");
  const syllables: Array<[string, string]> = [
    ["shia", "شيا"], ["shiu", "شيو"], ["shio", "شيو"],
    ["sha", "شا"], ["shi", "شي"], ["shu", "شو"], ["she", "شي"], ["sho", "شو"],
    ["cha", "تشا"], ["chi", "تشي"], ["chu", "تشو"], ["che", "تشي"], ["cho", "تشو"],
    ["tsu", "تسو"], ["tsa", "تسا"], ["tsi", "تسي"], ["tse", "تسي"], ["tso", "تسو"],
    ["kya", "كيا"], ["kyu", "كيو"], ["kyo", "كيو"],
    ["gya", "غيا"], ["gyu", "غيو"], ["gyo", "غيو"],
    ["nya", "نيا"], ["nyu", "نيو"], ["nyo", "نيو"],
    ["hya", "هيا"], ["hyu", "هيو"], ["hyo", "هيو"],
    ["bya", "بيا"], ["byu", "بيو"], ["byo", "بيو"],
    ["pya", "بيا"], ["pyu", "بيو"], ["pyo", "بيو"],
    ["mya", "ميا"], ["myu", "ميو"], ["myo", "ميو"],
    ["rya", "ريا"], ["ryu", "ريو"], ["ryo", "ريو"],
    ["jya", "جا"], ["jyu", "جو"], ["jyo", "جو"],
    ["ja", "جا"], ["ji", "جي"], ["ju", "جو"], ["je", "جي"], ["jo", "جو"],
    ["ka", "كا"], ["ki", "كي"], ["ku", "كو"], ["ke", "كي"], ["ko", "كو"],
    ["sa", "سا"], ["si", "سي"], ["su", "سو"], ["se", "سي"], ["so", "سو"],
    ["ta", "تا"], ["ti", "تي"], ["tu", "تو"], ["te", "تي"], ["to", "تو"],
    ["na", "نا"], ["ni", "ني"], ["nu", "نو"], ["ne", "ني"], ["no", "نو"],
    ["ha", "ها"], ["hi", "هي"], ["fu", "فو"], ["hu", "هو"], ["he", "هي"], ["ho", "هو"],
    ["ma", "ما"], ["mi", "مي"], ["mu", "مو"], ["me", "مي"], ["mo", "مو"],
    ["ya", "يا"], ["yi", "يي"], ["yu", "يو"], ["ye", "يي"], ["yo", "يو"],
    ["ra", "را"], ["ri", "ري"], ["ru", "رو"], ["re", "ري"], ["ro", "رو"],
    ["la", "لا"], ["li", "لي"], ["lu", "لو"], ["le", "لي"], ["lo", "لو"],
    ["wa", "وا"], ["wi", "وي"], ["we", "وي"], ["wo", "وو"],
    ["ga", "غا"], ["gi", "غي"], ["gu", "غو"], ["ge", "غي"], ["go", "غو"],
    ["za", "زا"], ["zi", "زي"], ["zu", "زو"], ["ze", "زي"], ["zo", "زو"],
    ["da", "دا"], ["di", "دي"], ["du", "دو"], ["de", "دي"], ["do", "دو"],
    ["ba", "با"], ["bi", "بي"], ["bu", "بو"], ["be", "بي"], ["bo", "بو"],
    ["pa", "با"], ["pi", "بي"], ["pu", "بو"], ["pe", "بي"], ["po", "بو"],
    ["va", "فا"], ["vi", "في"], ["vu", "فو"], ["ve", "في"], ["vo", "فو"],
    ["fa", "فا"], ["fi", "في"], ["fe", "في"], ["fo", "فو"],
    ["xa", "كسا"], ["xi", "كسي"], ["xu", "كسو"], ["xe", "كسي"], ["xo", "كسو"],
  ];
  let out = "";
  let i = 0;
  const singleMap: Record<string, string> = {
    k: "ك", s: "س", t: "ت", n: "ن", h: "ه", m: "م", y: "ي", r: "ر", l: "ل", w: "و", g: "غ", z: "ز",
    j: "ج", d: "د", b: "ب", p: "ب", v: "ف", f: "ف", c: "ك", q: "ك",
  };
  while (i < w.length) {
    let matched = false;
    for (const [rom, ar] of syllables) {
      if (w.startsWith(rom, i)) {
        out += ar;
        i += rom.length;
        matched = true;
        break;
      }
    }
    if (matched) continue;
    const ch = w[i];
    const isStart = i === 0;
    if (ch === "a") out += isStart ? "أ" : "ا";
    else if (ch === "i" || ch === "e") out += isStart ? "إي" : "ي";
    else if (ch === "u" || ch === "o") out += isStart ? "أو" : "و";
    else if (ch === "x") out += isStart ? "إكس" : "كس";
    else out += singleMap[ch] || "";
    i++;
  }
  return out;
}

export function transliterateRomajiTitle(title?: string | null): string {
  if (!title) return "";
  const suffix = extractSeasonAndPartSuffix(title);
  const cleaned = title
    .replace(/\(\d{4}\)/g, "")
    .replace(/\(TV\)/gi, "")
    .replace(/\s+(II|III|IV|V)(?=$|\s|:)/g, "")
    .replace(/\b(?:the\s*final\s*season|final\s*season|season\s*\d+|\d+(?:st|nd|rd|th)\s*season|part\s*\d+|cour\s*\d+|the\s*movie|movie|ova|ona)\b/gi, "")
    .replace(/['’]/g, "")
    .trim();
  const tokens = cleaned.split(/([^a-zA-Z0-9]+)/);
  const baseAr = tokens
    .map((tok) => (/^[a-zA-Z0-9]+$/.test(tok) ? transliterateRomajiWord(tok) : tok))
    .join("")
    .replace(/\s+/g, " ")
    .replace(/[:\-]+\s*$/, "")
    .trim();
  if (!baseAr) return suffix || "";
  return appendSuffixIfNeeded(baseAr, suffix);
}

async function loadDatabaseCache(): Promise<DbCacheState> {
  if (dbCache && dbCache.expiresAt > Date.now()) return dbCache;
  if (dbLoadPromise) return dbLoadPromise;
  dbLoadPromise = (async () => {
    const anilist = new Map<number, string>();
    const mal = new Map<number, string>();
    const englishById = new Map<number, string>();
    try {
      const res = await pool.query<{
        source_id: string;
        source_type: string;
        title_ar: string | null;
        overview_ar: string | null;
      }>(
        "SELECT source_id, source_type, title_ar, overview_ar FROM anime_meta_ar WHERE source_type IN ('anime_title_ar', 'mal_title_ar')",
      );
      for (const row of res.rows) {
        const id = Number(row.source_id);
        if (!Number.isSafeInteger(id) || id <= 0 || !isArabicTitle(row.title_ar)) continue;
        const cleanAr = row.title_ar.trim();
        if (row.source_type === "mal_title_ar") {
          mal.set(id, cleanAr);
        } else {
          anilist.set(id, cleanAr);
          if (row.overview_ar && typeof row.overview_ar === "string" && !englishById.has(id)) {
            englishById.set(id, row.overview_ar.trim());
          }
        }
      }
    } catch {
      // Fall back to bundled curated + Wikidata dictionaries if DB query temporarily fails.
    }
    dbCache = { expiresAt: Date.now() + DATABASE_CACHE_TTL_MS, anilist, mal, englishById };
    return dbCache;
  })();
  try {
    return await dbLoadPromise;
  } finally {
    dbLoadPromise = null;
  }
}

function persistResolvedTitle(
  sourceId: number | null | undefined,
  sourceType: "anime_title_ar" | "mal_title_ar",
  titleAr: string,
  englishKey?: string | null,
): void {
  if (!sourceId || !Number.isSafeInteger(sourceId) || sourceId <= 0 || !isArabicTitle(titleAr)) return;
  if (dbCache) {
    if (sourceType === "mal_title_ar") dbCache.mal.set(sourceId, titleAr);
    else dbCache.anilist.set(sourceId, titleAr);
  }
  pool.query(
    "INSERT INTO anime_meta_ar (source_id, source_type, title_ar, overview_ar, updated_at) VALUES ($1, $2, $3, $4, NOW()) ON CONFLICT (source_id, source_type) DO NOTHING",
    [String(sourceId), sourceType, titleAr.trim(), cleanTitleKey(englishKey) || null],
  ).catch(() => {});
}

async function fetchTmdbArabicTitle(coreTitle: string, isMovie: boolean): Promise<string | null> {
  if (!coreTitle || !TMDB_API_KEY) return null;
  const endpoint = isMovie ? "movie" : "tv";
  try {
    const r = await fetch(
      `https://api.themoviedb.org/3/search/${endpoint}?api_key=${TMDB_API_KEY}&language=ar-SA&query=${encodeURIComponent(coreTitle)}`,
      { signal: AbortSignal.timeout(2200) },
    );
    if (!r.ok) return null;
    const d: any = await r.json();
    const hit = (d.results || []).find((x: any) => Array.isArray(x.genre_ids) && x.genre_ids.includes(16));
    if (!hit) return null;
    const name = String(hit.name || hit.title || "").trim();
    if (isArabicTitle(name)) return name;
    const trRes = await fetch(
      `https://api.themoviedb.org/3/${endpoint}/${hit.id}/translations?api_key=${TMDB_API_KEY}`,
      { signal: AbortSignal.timeout(2200) },
    );
    if (trRes.ok) {
      const trData: any = await trRes.json();
      const arTr = (trData.translations || []).find(
        (t: any) => t.iso_639_1 === "ar" && isArabicTitle(t.data?.name || t.data?.title),
      );
      if (arTr) return String(arTr.data.name || arTr.data.title).trim();
    }
  } catch {}
  return null;
}

async function translateDescriptiveEnglish(coreTitle: string): Promise<string | null> {
  if (!coreTitle) return null;
  try {
    const url = "https://clients5.google.com/translate_a/t?client=dict-chrome-ex&sl=en&tl=ar&q=" + encodeURIComponent(coreTitle);
    const r = await fetch(url, {
      headers: { "User-Agent": "Mozilla/5.0" },
      signal: AbortSignal.timeout(2200),
    });
    if (!r.ok) return null;
    const d: any = await r.json();
    const raw = Array.isArray(d) ? (typeof d[0] === "string" ? d[0] : (Array.isArray(d[0]) ? d[0][0] : "")) : "";
    let ar = String(raw || "").trim();
    if (!ar) return null;
    ar = ar.replace(/[a-zA-Z]{2,}/g, (m) => transliterateRomajiTitle(m)).replace(/\s+/g, " ").trim();
    return isArabicTitle(ar) ? ar : null;
  } catch {
    return null;
  }
}

function isMangaLike(input: ResolveArabicInput): boolean {
  const t = String(input.type || "").toUpperCase();
  const f = String(input.format || "").toUpperCase();
  return t === "MANGA" || f === "MANGA" || f === "ONE_SHOT" || f === "NOVEL";
}

function resolveFromMemorySync(input: ResolveArabicInput, cache: DbCacheState): string | null {
  const idSource = input.idSource || null;
  const aniId = !idSource && Number.isSafeInteger(Number(input.id)) && Number(input.id) > 0 ? Number(input.id) : null;
  const malId = idSource === "mal" && Number.isSafeInteger(Number(input.id)) && Number(input.id) > 0
    ? Number(input.id)
    : (Number.isSafeInteger(Number(input.malId)) && Number(input.malId) > 0 ? Number(input.malId) : null);

  if (aniId && CURATED_IDS[aniId]) return CURATED_IDS[aniId];

  const arSyn = Array.isArray(input.synonyms) ? input.synonyms.find((s) => isArabicTitle(s)) : null;
  if (arSyn) return arSyn.trim();

  if (aniId && cache.anilist.has(aniId)) return cache.anilist.get(aniId)!;
  if (aniId && curatedJsonMap.has(aniId)) return curatedJsonMap.get(aniId)!;
  if (malId && cache.mal.has(malId)) return cache.mal.get(malId)!;

  const suffix = extractSeasonAndPartSuffix((input.english || "") + " " + (input.romaji || ""));
  if (aniId && wdAnilistMap.has(aniId)) return appendSuffixIfNeeded(wdAnilistMap.get(aniId)!, suffix);
  if (malId && wdMalMap.has(malId)) return appendSuffixIfNeeded(wdMalMap.get(malId)!, suffix);

  const curatedByPattern = getKnownArabicAnimeTitle(null, input.english, input.romaji);
  if (curatedByPattern) return curatedByPattern;

  for (const cand of [input.english, input.romaji]) {
    if (!cand) continue;
    const exact = cand.trim().toLowerCase();
    const core = cleanTitleKey(cand);
    const wdHit = wdEnMap.get(exact) || (core.length >= 4 ? wdEnMap.get(core) : undefined);
    if (wdHit) return appendSuffixIfNeeded(wdHit, suffix);
  }

  return null;
}

export async function resolveArabicAnimeTitle(
  input: ResolveArabicInput,
  options: { allowExternal?: boolean } = {},
): Promise<string | null> {
  const cache = await loadDatabaseCache();
  const syncMatch = resolveFromMemorySync(input, cache);
  if (syncMatch) return syncMatch;
  if (isMangaLike(input)) return null;

  const idSource = input.idSource || null;
  const aniId = !idSource && Number.isSafeInteger(Number(input.id)) && Number(input.id) > 0 ? Number(input.id) : null;
  const malId = idSource === "mal" && Number.isSafeInteger(Number(input.id)) && Number(input.id) > 0
    ? Number(input.id)
    : (Number.isSafeInteger(Number(input.malId)) && Number(input.malId) > 0 ? Number(input.malId) : null);

  const rawTitle = (input.english || input.romaji || "").trim();
  if (!rawTitle) return null;
  if (isArabicTitle(rawTitle)) return rawTitle;

  const suffix = extractSeasonAndPartSuffix((input.english || "") + " " + (input.romaji || ""));

  if (!isDescriptiveEnglishTitle(input.english, input.romaji)) {
    const phon = transliterateRomajiTitle(rawTitle);
    if (isArabicTitle(phon)) {
      if (aniId) persistResolvedTitle(aniId, "anime_title_ar", phon, rawTitle);
      else if (malId) persistResolvedTitle(malId, "mal_title_ar", phon, rawTitle);
      return phon;
    }
    return null;
  }

  if (options.allowExternal === false) {
    const fallback = transliterateRomajiTitle(rawTitle);
    return isArabicTitle(fallback) ? fallback : null;
  }

  const dedupKey = aniId ? `ani:${aniId}` : malId ? `mal:${malId}` : `en:${cleanTitleKey(rawTitle)}`;
  const existing = inflightExternal.get(dedupKey);
  if (existing) return existing;

  const job = (async () => {
    const core = (input.english || rawTitle)
      .replace(/\(\d{4}\)/g, "")
      .replace(/\(TV\)/gi, "")
      .replace(/\b(?:the\s*final\s*season|final\s*season|season\s*\d+|\d+(?:st|nd|rd|th)\s*season|part\s*\d+|cour\s*\d+|the\s*movie|movie|ova|ona)\b/gi, "")
      .replace(/[:\-–—]+\s*$/, "")
      .trim();

    let resolved: string | null = await fetchTmdbArabicTitle(core || rawTitle, String(input.format || "").toUpperCase() === "MOVIE");
    if (!resolved) resolved = await translateDescriptiveEnglish(core || rawTitle);
    if (resolved && isArabicTitle(resolved)) {
      resolved = appendSuffixIfNeeded(resolved, suffix);
    } else {
      const phon = transliterateRomajiTitle(rawTitle);
      resolved = isArabicTitle(phon) ? phon : null;
    }
    if (resolved) {
      if (aniId) persistResolvedTitle(aniId, "anime_title_ar", resolved, rawTitle);
      else if (malId) persistResolvedTitle(malId, "mal_title_ar", resolved, rawTitle);
    }
    return resolved;
  })();

  inflightExternal.set(dedupKey, job);
  try {
    return await job;
  } finally {
    inflightExternal.delete(dedupKey);
  }
}

export async function getArabicAnimeTitleById(
  id: number,
  fallback?: Omit<ResolveArabicInput, "id">,
): Promise<string | null> {
  if ((!Number.isSafeInteger(id) || id <= 0) && !fallback?.english && !fallback?.romaji) return null;
  return resolveArabicAnimeTitle({
    id: Number.isSafeInteger(id) && id > 0 ? id : null,
    ...fallback,
  });
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
 * stable AniList/MAL ID + curated/Wikidata/TMDB/Romaji engine on serve.
 */
export async function attachArabicTitles<T>(data: T): Promise<T> {
  const nodes: Record<string, any>[] = [];
  visitMedia(data, (media) => { nodes.push(media); });
  if (!nodes.length) return data;

  const cache = await loadDatabaseCache();
  const resolvedByNode = new Map<Record<string, any>, string>();
  const pendingDescriptive: Array<{ media: Record<string, any>; input: ResolveArabicInput }> = [];

  for (const media of nodes) {
    const input: ResolveArabicInput = {
      id: Number(media.id),
      malId: media.idMal ? Number(media.idMal) : null,
      idSource: typeof media.idSource === "string" ? media.idSource : null,
      english: media.title?.english || null,
      romaji: media.title?.romaji || null,
      synonyms: Array.isArray(media.synonyms) ? media.synonyms : null,
      format: media.format || null,
      type: media.type || null,
    };
    const syncHit = resolveFromMemorySync(input, cache);
    if (syncHit) {
      resolvedByNode.set(media, syncHit);
      continue;
    }
    if (isMangaLike(input)) continue;
    const raw = (input.english || input.romaji || "").trim();
    if (!raw) continue;
    if (isDescriptiveEnglishTitle(input.english, input.romaji)) {
      pendingDescriptive.push({ media, input });
    } else {
      const phon = transliterateRomajiTitle(raw);
      if (isArabicTitle(phon)) {
        resolvedByNode.set(media, phon);
        const aniId = !input.idSource && input.id && input.id > 0 ? input.id : null;
        const malId = input.idSource === "mal" && input.id && input.id > 0 ? input.id : input.malId;
        if (aniId) persistResolvedTitle(aniId, "anime_title_ar", phon, raw);
        else if (malId) persistResolvedTitle(malId, "mal_title_ar", phon, raw);
      }
    }
  }

  if (pendingDescriptive.length > 0) {
    const batch = pendingDescriptive.slice(0, 8);
    await Promise.race([
      Promise.all(batch.map(async ({ media, input }) => {
        const ar = await resolveArabicAnimeTitle(input, { allowExternal: true });
        if (ar) resolvedByNode.set(media, ar);
      })),
      new Promise<void>((resolve) => setTimeout(resolve, 2600)),
    ]);
    for (const { media, input } of pendingDescriptive) {
      if (!resolvedByNode.has(media)) {
        const fallback = transliterateRomajiTitle(input.english || input.romaji || "");
        if (isArabicTitle(fallback)) resolvedByNode.set(media, fallback);
      }
    }
  }

  const decorate = (value: unknown): unknown => {
    if (Array.isArray(value)) return value.map(decorate);
    if (!value || typeof value !== "object") return value;
    const record = value as Record<string, any>;
    const result: Record<string, any> = {};
    for (const [key, child] of Object.entries(record)) result[key] = decorate(child);
    if (isAniListMedia(record)) {
      const title = resolvedByNode.get(record);
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
  const cache = await loadDatabaseCache();
  const merged = new Map<number, string>(cache.anilist);
  for (const [id, title] of wdAnilistMap) if (!merged.has(id)) merged.set(id, title);
  for (const [id, title] of curatedJsonMap) merged.set(id, title);
  for (const [idStr, title] of Object.entries(CURATED_IDS)) merged.set(Number(idStr), title);

  const matches: Array<{ id: number; title_ar: string; title_english: string }> = [];
  for (const [id, title] of merged) {
    const normalizedTitle = normalizeArabicTitle(title);
    if (
      normalizedTitle === normalizedQuery ||
      (normalizedQuery.length >= 2 && normalizedTitle.includes(normalizedQuery))
    ) {
      matches.push({
        id,
        title_ar: title,
        title_english: englishFromJsonMap.get(id) || cache.englishById.get(id) || "",
      });
    }
  }
  return matches.sort((a, b) =>
    Number(normalizeArabicTitle(b.title_ar) === normalizedQuery) -
      Number(normalizeArabicTitle(a.title_ar) === normalizedQuery) ||
    a.id - b.id,
  );
}

import AsyncStorage from "@react-native-async-storage/async-storage";

export type FilmMediaType = "movie" | "series" | "animation" | "dubbed";

export interface FilmServerLink {
  id: string;
  name: string;
  quality: "4K UHD" | "1080p FHD" | "720p HD";
  provider: string;
  embedUrl: string;
}

export interface FilmEpisode {
  id: string;
  seasonNumber: number;
  episodeNumber: number;
  titleAr: string;
  titleEn: string;
  durationMinutes: number;
  audioType: "مترجم عربي" | "مدبلج عربي";
  servers: FilmServerLink[];
}

export interface FilmTitle {
  id: number;
  slug: string;
  titleAr: string;
  titleEn: string;
  mediaType: FilmMediaType;
  categoryLabel: string;
  year: number;
  imdbRating: number;
  durationOrSeasons: string;
  audioLabel: "مترجم عربي" | "مدبلج عربي";
  qualityBadge: string;
  ageRating: string;
  country: string;
  studio: string;
  statusLabel: string;
  posterSource: any;
  backdropSource: any;
  posterUrl?: string;
  synopsis: string;
  genres: string[];
  seasonCount: number;
  featuredHero?: boolean;
  episodes: FilmEpisode[];
}

const WATCHED_STORAGE_KEY = "nova_film_watched_episodes_v1";
const FAVORITE_STORAGE_KEY = "nova_film_favorite_ids_v1";

const POSTER_HERO = require("../assets/posters/hero_backdrop.jpg");
const POSTER_DUNE = require("../assets/posters/poster_dune.jpg");
const POSTER_KINGDOM = require("../assets/posters/poster_kingdom.jpg");
const POSTER_CLOCKWORK = require("../assets/posters/poster_clockwork.jpg");
const POSTER_CYBER = require("../assets/posters/poster_cyber.jpg");
const POSTER_TOKYO = require("../assets/posters/poster_tokyo.jpg");
const POSTER_MECHA = require("../assets/posters/poster_mecha.jpg");
const POSTER_ARCTIC = require("../assets/posters/poster_arctic.jpg");

export const PERMANENT_SERVERS: FilmServerLink[] = [
  {
    id: "vidhls",
    name: "VidHLS الرئيسي",
    quality: "1080p FHD",
    provider: "vidhls.com",
    embedUrl: "https://vidhls.com/player/index.php?data=5b4ba6e852444462a8e1223fc42e1af8",
  },
  {
    id: "imovietime",
    name: "iMovieTime السريع",
    quality: "1080p FHD",
    provider: "play.imovietime.bond",
    embedUrl: "https://play.imovietime.bond/mail/mplayer.php?l=DCBKVM6jSOYsYMf8",
  },
  {
    id: "yplayer",
    name: "YPlayer المتعدد",
    quality: "4K UHD",
    provider: "ya.kooora.best",
    embedUrl: "https://ya.kooora.best/hls/yplayer.php?l=27PTSlOL6kRr53-tQ6Xi4ORh_OMLmLz_SUsazuTF-Uc,",
  },
  {
    id: "hamml",
    name: "Hamml Embed",
    quality: "1080p FHD",
    provider: "embed.hamml.com",
    embedUrl: "https://embed.hamml.com/iframe.php?id=vgLRvuHkboiLVDokMCluBkkZS7Jff11iZQbGNEbVRRU",
  },
  {
    id: "vidhid",
    name: "VidHid الاحتياطي",
    quality: "720p HD",
    provider: "vidhid.co",
    embedUrl: "https://vidhid.co/v/azJd5ddCl2yxySV/",
  },
];

export const NOVA_FILM_CATALOG: FilmTitle[] = [
  {
    id: 101,
    slug: "horizon-of-ash-2026",
    titleAr: "أفق الرماد: ما وراء الهاوية",
    titleEn: "Horizon of Ash: Beyond the Rift",
    mediaType: "movie",
    categoryLabel: "أفلام أجنبية",
    year: 2026,
    imdbRating: 8.8,
    durationOrSeasons: "138 دقيقة",
    audioLabel: "مترجم عربي",
    qualityBadge: "4K UHD",
    ageRating: "PG-13",
    country: "الولايات المتحدة",
    studio: "A24 / Warner Apex",
    statusLabel: "عرض حصري",
    posterSource: POSTER_DUNE,
    backdropSource: POSTER_HERO,
    synopsis:
      "رحلة استكشافية عبر الأخاديد البركانية المفقودة وأهرامات الأوبسيديان بحثاً عن الإشارة الأخيرة لحضارة قديمة، حيث تواجه قائدة البعثة اختياراً مصيرياً بين إنقاذ طاقمها أو كشف سر الطاقة الأبدية.",
    genres: ["خيال علمي", "مغامرة", "تشويق"],
    seasonCount: 1,
    featuredHero: true,
    episodes: [
      {
        id: "ep-101-1",
        seasonNumber: 1,
        episodeNumber: 1,
        titleAr: "الفيلم الكامل — نسخة العرض السينمائي IMAX",
        titleEn: "Full Feature Film",
        durationMinutes: 138,
        audioType: "مترجم عربي",
        servers: PERMANENT_SERVERS,
      },
    ],
  },
  {
    id: 102,
    slug: "citadel-of-shadows",
    titleAr: "قلعة الظلال: عرش الشمال",
    titleEn: "Citadel of Shadows",
    mediaType: "series",
    categoryLabel: "مسلسلات أجنبية",
    year: 2026,
    imdbRating: 9.2,
    durationOrSeasons: "موسمان · 8 حلقات",
    audioLabel: "مترجم عربي",
    qualityBadge: "4K UHD",
    ageRating: "TV-MA",
    country: "المملكة المتحدة",
    studio: "HBO Drama Studios",
    statusLabel: "مستمر",
    posterSource: POSTER_KINGDOM,
    backdropSource: POSTER_KINGDOM,
    synopsis:
      "في قلعة حجرية معزولة فوق قمم الجبال الجليدية، تتشابك التحالفات الملكية مع أسرار المخطوطات القديمة حين يعود حراس الشمال للمطالبة بالعرش المفقود.",
    genres: ["دراما تاريخية", "فانتازيا", "غموض"],
    seasonCount: 2,
    featuredHero: true,
    episodes: [
      { id: "ep-102-s1e1", seasonNumber: 1, episodeNumber: 1, titleAr: "الحلقة 1: قسم الجسر الحجري", titleEn: "Oath of the Stone Bridge", durationMinutes: 54, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-102-s1e2", seasonNumber: 1, episodeNumber: 2, titleAr: "الحلقة 2: مشاعل القمة الجليدية", titleEn: "Torches of the Peak", durationMinutes: 52, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-102-s1e3", seasonNumber: 1, episodeNumber: 3, titleAr: "الحلقة 3: حصار الضباب الأسود", titleEn: "Siege of Mist", durationMinutes: 56, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-102-s1e4", seasonNumber: 1, episodeNumber: 4, titleAr: "الحلقة 4: ميثاق الشتاء الأخير", titleEn: "Winter Pact", durationMinutes: 55, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-102-s2e1", seasonNumber: 2, episodeNumber: 1, titleAr: "الحلقة 1: عودة الحرس القديم", titleEn: "Return of the Old Guard", durationMinutes: 58, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-102-s2e2", seasonNumber: 2, episodeNumber: 2, titleAr: "الحلقة 2: تاج الرماد والحديد", titleEn: "Crown of Embers", durationMinutes: 60, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
    ],
  },
  {
    id: 103,
    slug: "sky-clockwork-inventors",
    titleAr: "أجنحة السحاب الميكانيكية",
    titleEn: "Sky Clockwork",
    mediaType: "animation",
    categoryLabel: "أنميشن",
    year: 2026,
    imdbRating: 8.9,
    durationOrSeasons: "112 دقيقة",
    audioLabel: "مدبلج عربي",
    qualityBadge: "1080p BluRay",
    ageRating: "G - عائلي",
    country: "الولايات المتحدة / اليابان",
    studio: "Luminary Animation",
    statusLabel: "مكتمل",
    posterSource: POSTER_CLOCKWORK,
    backdropSource: POSTER_CLOCKWORK,
    synopsis:
      "مخترع شاب يصنع أجنحة شراعية وبومة ميكانيكية ذكية للتحليق بين الجزر العائمة فوق السحاب واستعادة بوصلة الرياح المفقودة بالنسخة العربية المدبلجة الكاملة.",
    genres: ["أنميشن", "عائلي", "مغامرات"],
    seasonCount: 1,
    featuredHero: true,
    episodes: [
      { id: "ep-103-1", seasonNumber: 1, episodeNumber: 1, titleAr: "الفيلم الكامل — مدبلج للعربية الفصحى", titleEn: "Full Feature (Arabic Dub)", durationMinutes: 112, audioType: "مدبلج عربي", servers: PERMANENT_SERVERS },
    ],
  },
  {
    id: 104,
    slug: "neon-arcadia-odyssey",
    titleAr: "أوديسا المدينة الماطرة",
    titleEn: "Neon Arcadia Odyssey",
    mediaType: "movie",
    categoryLabel: "أفلام أجنبية",
    year: 2025,
    imdbRating: 8.5,
    durationOrSeasons: "126 دقيقة",
    audioLabel: "مترجم عربي",
    qualityBadge: "1080p BluRay",
    ageRating: "PG-13",
    country: "الولايات المتحدة",
    studio: "Paramount Vantage",
    statusLabel: "مكتمل",
    posterSource: POSTER_CYBER,
    backdropSource: POSTER_CYBER,
    synopsis:
      "رائد فضاء يعود إلى الأرض بعد أربعين عاماً ليجد المدن غارقة تحت أمطار دائمة، فيبدأ رحلة البحث عن أرشيف الذاكرة البشرية في أزقة أركاديا القديمة.",
    genres: ["خيال علمي", "غموض", "إثارة"],
    seasonCount: 1,
    episodes: [
      { id: "ep-104-1", seasonNumber: 1, episodeNumber: 1, titleAr: "الفيلم الكامل — BluRay 1080p", titleEn: "Full Movie BluRay", durationMinutes: 126, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
    ],
  },
  {
    id: 105,
    slug: "chronicles-of-spacetoon-knights",
    titleAr: "فرسان الجزيرة العائمة — مدبلج",
    titleEn: "Guardians of Emerald Valley",
    mediaType: "dubbed",
    categoryLabel: "مدبلج عربي",
    year: 2025,
    imdbRating: 9.0,
    durationOrSeasons: "موسم 1 · 6 حلقات",
    audioLabel: "مدبلج عربي",
    qualityBadge: "1080p FHD",
    ageRating: "G - عائلي",
    country: "دبلجة مركز الزهرة",
    studio: "Spacetoon Originals",
    statusLabel: "مكتمل",
    posterSource: POSTER_MECHA,
    backdropSource: POSTER_HERO,
    synopsis:
      "مسلسل مغامرات وآليين مدبلج للعربية الفصحى يروي قصة الفارس القرمزي وأصدقائه الذين يحمون وادي الزمرد والجزر الكريستالية العائمة من قوى الظلام.",
    genres: ["مدبلج عربي", "مغامرات", "أنميشن"],
    seasonCount: 1,
    featuredHero: true,
    episodes: [
      { id: "ep-105-s1e1", seasonNumber: 1, episodeNumber: 1, titleAr: "الحلقة 1: يقظة الحارس القرمزي", titleEn: "Crimson Guardian", durationMinutes: 24, audioType: "مدبلج عربي", servers: PERMANENT_SERVERS },
      { id: "ep-105-s1e2", seasonNumber: 1, episodeNumber: 2, titleAr: "الحلقة 2: سر القلعة العائمة", titleEn: "Floating Keep", durationMinutes: 24, audioType: "مدبلج عربي", servers: PERMANENT_SERVERS },
      { id: "ep-105-s1e3", seasonNumber: 1, episodeNumber: 3, titleAr: "الحلقة 3: عاصفة المرايا", titleEn: "Storm of Mirrors", durationMinutes: 24, audioType: "مدبلج عربي", servers: PERMANENT_SERVERS },
      { id: "ep-105-s1e4", seasonNumber: 1, episodeNumber: 4, titleAr: "الحلقة 4: معركة الفجر الذهبي", titleEn: "Dawn Battle", durationMinutes: 25, audioType: "مدبلج عربي", servers: PERMANENT_SERVERS },
    ],
  },
  {
    id: 106,
    slug: "northern-star-protocol",
    titleAr: "بروتوكول النجم الشمالي",
    titleEn: "Northern Star Protocol",
    mediaType: "series",
    categoryLabel: "مسلسلات أجنبية",
    year: 2026,
    imdbRating: 8.7,
    durationOrSeasons: "موسم 1 · 5 حلقات",
    audioLabel: "مترجم عربي",
    qualityBadge: "1080p WEB-DL",
    ageRating: "TV-14",
    country: "النرويج / أمريكا",
    studio: "Nordic Noir Pictures",
    statusLabel: "مستمر",
    posterSource: POSTER_ARCTIC,
    backdropSource: POSTER_ARCTIC,
    synopsis:
      "غواصة أبحاث عميقة تتتبع انقطاعاً غامضاً في كابلات الاتصالات البحرية تحت جبال الجليد في القطب الشمالي، لتكتشف محطة مدارية غارقة منذ الحرب الباردة.",
    genres: ["إثارة", "غموض", "دراما"],
    seasonCount: 1,
    episodes: [
      { id: "ep-106-s1e1", seasonNumber: 1, episodeNumber: 1, titleAr: "الحلقة 1: الصمت القطبي", titleEn: "Arctic Silence", durationMinutes: 49, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-106-s1e2", seasonNumber: 1, episodeNumber: 2, titleAr: "الحلقة 2: المحطة الغارقة", titleEn: "Submerged Station", durationMinutes: 51, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-106-s1e3", seasonNumber: 1, episodeNumber: 3, titleAr: "الحلقة 3: الشفرة الأخيرة", titleEn: "Final Cipher", durationMinutes: 53, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
    ],
  },
  {
    id: 107,
    slug: "blade-of-rainy-tokyo",
    titleAr: "نصل طوكيو الماطر",
    titleEn: "Shadow Blade of Neo-Tokyo",
    mediaType: "movie",
    categoryLabel: "أفلام آسيوية وأجنبية",
    year: 2026,
    imdbRating: 8.6,
    durationOrSeasons: "131 دقيقة",
    audioLabel: "مترجم عربي",
    qualityBadge: "4K UHD",
    ageRating: "TV-MA",
    country: "اليابان / كوريا",
    studio: "Toho Action Cinema",
    statusLabel: "مكتمل",
    posterSource: POSTER_TOKYO,
    backdropSource: POSTER_TOKYO,
    synopsis:
      "محقق سابق وخبير في فنون السيف يواجه نقابة سرية تسيطر على أحياء طوكيو الماطرة في ليلة واحدة حاسمة لاستعادة شرف عائلته.",
    genres: ["أكشن", "إثارة", "جريمة"],
    seasonCount: 1,
    episodes: [
      { id: "ep-107-1", seasonNumber: 1, episodeNumber: 1, titleAr: "الفيلم الكامل — 4K Remastered", titleEn: "Full Feature Film", durationMinutes: 131, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
    ],
  },
  {
    id: 108,
    slug: "crystal-isles-odyssey-anim",
    titleAr: "أسطورة جزر الكريستال",
    titleEn: "Legend of the Crystal Isles",
    mediaType: "animation",
    categoryLabel: "أنميشن",
    year: 2026,
    imdbRating: 8.7,
    durationOrSeasons: "موسم 1 · 4 حلقات",
    audioLabel: "مترجم عربي",
    qualityBadge: "1080p FHD",
    ageRating: "PG-13",
    country: "فرنسا / اليابان",
    studio: "Fortiche / Studio Mir",
    statusLabel: "مستمر",
    posterSource: POSTER_MECHA,
    backdropSource: POSTER_CLOCKWORK,
    synopsis:
      "سلسلة أنميشن ملحمية بتقنيات الرسم السينمائي الثلاثي الأبعاد تتبع رحلة حراس الأبراج الكريستالية في مواجهة التصدع السماوي.",
    genres: ["أنميشن", "فانتازيا", "مغامرة"],
    seasonCount: 1,
    episodes: [
      { id: "ep-108-s1e1", seasonNumber: 1, episodeNumber: 1, titleAr: "الحلقة 1: شظايا السماء", titleEn: "Shards of the Sky", durationMinutes: 28, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-108-s1e2", seasonNumber: 1, episodeNumber: 2, titleAr: "الحلقة 2: حارس البوابة الشرقية", titleEn: "East Gate", durationMinutes: 27, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
    ],
  },
];

export function makeEpisodeKey(titleId: number, season: number, episode: number): string {
  return `${titleId}:s${season}:e${episode}`;
}

export async function loadWatchedMap(): Promise<Record<string, boolean>> {
  try {
    const raw = await AsyncStorage.getItem(WATCHED_STORAGE_KEY);
    if (raw) return JSON.parse(raw);
  } catch {}
  return {};
}

export async function saveWatchedMap(map: Record<string, boolean>): Promise<void> {
  try {
    await AsyncStorage.setItem(WATCHED_STORAGE_KEY, JSON.stringify(map));
  } catch {}
}

export async function loadFavoriteFilmIds(): Promise<number[]> {
  try {
    const raw = await AsyncStorage.getItem(FAVORITE_STORAGE_KEY);
    if (raw) return JSON.parse(raw);
  } catch {}
  return [];
}

export async function saveFavoriteFilmIds(ids: number[]): Promise<void> {
  try {
    await AsyncStorage.setItem(FAVORITE_STORAGE_KEY, JSON.stringify(ids));
  } catch {}
}

import AsyncStorage from "@react-native-async-storage/async-storage";

export type FilmMediaType = "movie" | "series" | "animation";

export type ServerTier = "vip" | "fast" | "backup";
export type ServerStreamMode = "embed" | "hls" | "progressive";

export interface FilmServerLink {
  id: string;
  name: string;
  quality: "4K UHD" | "1080p FHD" | "720p HD";
  provider: string;
  embedUrl: string;
  directUrl?: string;
  streamMode?: ServerStreamMode;
  tier?: ServerTier;
  speedLabel?: string;
  badgeColor?: string;
}

export interface FilmCastMember {
  id: number;
  nameAr: string;
  nameEn: string;
  roleAr: string;
  initials: string;
  accentColor: string;
}

export interface FilmEpisode {
  id: string;
  seasonNumber: number;
  episodeNumber: number;
  titleAr: string;
  titleEn: string;
  durationMinutes: number;
  audioType: "مترجم عربي";
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
  audioLabel: "مترجم عربي";
  qualityBadge: string;
  ageRating: string;
  country: string;
  studio: string;
  director: string;
  writer?: string;
  statusLabel: string;
  posterSource: any;
  backdropSource: any;
  posterUrl?: string;
  synopsis: string;
  genres: string[];
  seasonCount: number;
  seasonLabels?: Record<number, string>;
  featuredHero?: boolean;
  globalRank?: number;
  popularityCount?: number;
  releaseDayIndex?: number; // 0..6 for Weekly Release Schedule
  releaseTimeLabel?: string;
  cast?: FilmCastMember[];
  relatedIds?: number[];
  episodes: FilmEpisode[];
}

export interface FilmPlaybackRecord {
  titleId: number;
  seasonNumber: number;
  episodeNumber: number;
  position: number;
  duration: number;
  updatedAt: number;
  serverId?: string;
}

const WATCHED_STORAGE_KEY = "nova_film_watched_episodes_v1";
const FAVORITE_STORAGE_KEY = "nova_film_favorite_ids_v1";
const PLAYBACK_PROGRESS_KEY = "nova_film_playback_progress_v1";
const RATINGS_STORAGE_KEY = "nova_film_user_ratings_v1";

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
    id: "yplayer",
    name: "YPlayer المتعدد",
    quality: "4K UHD",
    provider: "ya.kooora.best",
    embedUrl:
      "https://ya.kooora.best/hls/yplayer.php?l=27PTSlOL6kRr53-tQ6Xi4ORh_OMLmLz_SUsazuTF-Uc,",
    streamMode: "embed",
    tier: "vip",
    speedLabel: "سريع جداً · جودة فائقة",
    badgeColor: "#0EA5E9",
  },
  {
    id: "vidhls",
    name: "VidHLS الرئيسي",
    quality: "1080p FHD",
    provider: "vidhls.com",
    embedUrl: "https://vidhls.com/player/index.php?data=5b4ba6e852444462a8e1223fc42e1af8",
    streamMode: "embed",
    tier: "vip",
    speedLabel: "سيرفر رئيسي مستقر",
    badgeColor: "#10B981",
  },
  {
    id: "imovietime",
    name: "iMovieTime السريع",
    quality: "1080p FHD",
    provider: "play.imovietime.bond",
    embedUrl: "https://play.imovietime.bond/mail/mplayer.php?l=DCBKVM6jSOYsYMf8",
    streamMode: "embed",
    tier: "fast",
    speedLabel: "تحميل فوري",
    badgeColor: "#8B5CF6",
  },
  {
    id: "hamml",
    name: "Hamml Embed",
    quality: "1080p FHD",
    provider: "embed.hamml.com",
    embedUrl: "https://embed.hamml.com/iframe.php?id=vgLRvuHkboiLVDokMCluBkkZS7Jff11iZQbGNEbVRRU",
    streamMode: "embed",
    tier: "fast",
    speedLabel: "سيرفر متعدد الجودات",
    badgeColor: "#F59E0B",
  },
  {
    id: "vidhid",
    name: "VidHid الاحتياطي",
    quality: "720p HD",
    provider: "vidhid.co",
    embedUrl: "https://vidhid.co/v/azJd5ddCl2yxySV/",
    streamMode: "embed",
    tier: "backup",
    speedLabel: "مناسب للإنترنت الضعيف",
    badgeColor: "#64748B",
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
    director: "ديفيد كولمان",
    writer: "ماركوس فين",
    statusLabel: "عرض حصري",
    posterSource: POSTER_DUNE,
    backdropSource: POSTER_HERO,
    synopsis:
      "رحلة استكشافية عبر الأخاديد البركانية المفقودة وأهرامات الأوبسيديان بحثاً عن الإشارة الأخيرة لحضارة قديمة، حيث تواجه قائدة البعثة اختياراً مصيرياً بين إنقاذ طاقمها أو كشف سر الطاقة الأبدية.",
    genres: ["خيال علمي", "مغامرة", "تشويق"],
    seasonCount: 1,
    featuredHero: true,
    globalRank: 2,
    popularityCount: 94200,
    releaseDayIndex: 4,
    releaseTimeLabel: "9:00 مساءً",
    relatedIds: [104, 102, 107],
    cast: [
      { id: 1, nameAr: "إيلينا فانس", nameEn: "Elena Vance", roleAr: "قائدة البعثة · دور رئيسي", initials: "EV", accentColor: "#0EA5E9" },
      { id: 2, nameAr: "جوليان ريد", nameEn: "Julian Reid", roleAr: "مهندس الطاقة · دور رئيسي", initials: "JR", accentColor: "#8B5CF6" },
      { id: 3, nameAr: "طارق المنصور", nameEn: "Tariq Al-Mansoor", roleAr: "عالم آثار · دور مساعد", initials: "TM", accentColor: "#F59E0B" },
      { id: 4, nameAr: "كلير هولدن", nameEn: "Claire Holden", roleAr: "محللة الإشارات · دور مساعد", initials: "CH", accentColor: "#10B981" },
    ],
    episodes: [
      {
        id: "ep-101-1",
        seasonNumber: 1,
        episodeNumber: 1,
        titleAr: "الفيلم الكامل — نسخة IMAX السينمائية",
        titleEn: "Full Feature Film (IMAX)",
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
    durationOrSeasons: "موسمان · 6 حلقات",
    audioLabel: "مترجم عربي",
    qualityBadge: "4K UHD",
    ageRating: "TV-MA",
    country: "المملكة المتحدة",
    studio: "Crownline Originals",
    director: "أليستر مور",
    writer: "صوفيا بيل",
    statusLabel: "مستمر",
    posterSource: POSTER_KINGDOM,
    backdropSource: POSTER_KINGDOM,
    synopsis:
      "في قلعة حجرية معزولة بين ضباب الجبال الشمالية، تتصاعد المؤامرات الملكية وصراعات التحالفات السرية لحماية العرش بعد اختفاء الملك الشرعي في ليلة الانقلاب.",
    genres: ["دراما", "فانتازيا", "ملحمي"],
    seasonCount: 2,
    seasonLabels: { 1: "الموسم الأول · سقوط التاج", 2: "الموسم الثاني · رماد الشمال" },
    featuredHero: true,
    globalRank: 1,
    popularityCount: 148500,
    releaseDayIndex: 5,
    releaseTimeLabel: "10:30 مساءً",
    relatedIds: [106, 101, 107],
    cast: [
      { id: 11, nameAr: "أرثور كينغزلي", nameEn: "Arthur Kingsley", roleAr: "أمير الشمال · دور رئيسي", initials: "AK", accentColor: "#F59E0B" },
      { id: 12, nameAr: "ليدي مارجوري", nameEn: "Lady Marjory", roleAr: "مستشارة البلاط · دور رئيسي", initials: "LM", accentColor: "#EC4899" },
      { id: 13, nameAr: "سير غاريث", nameEn: "Ser Gareth", roleAr: "قائد الحرس · دور رئيسي", initials: "SG", accentColor: "#0EA5E9" },
      { id: 14, nameAr: "إيلايا ثورن", nameEn: "Elia Thorne", roleAr: "مبعوثة الغرب · دور مساعد", initials: "ET", accentColor: "#8B5CF6" },
    ],
    episodes: [
      { id: "ep-102-s1e1", seasonNumber: 1, episodeNumber: 1, titleAr: "الحلقة 1: بوابات الحديد", titleEn: "Gates of Iron", durationMinutes: 54, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-102-s1e2", seasonNumber: 1, episodeNumber: 2, titleAr: "الحلقة 2: همسات البلاط", titleEn: "Whispers of the Court", durationMinutes: 52, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-102-s1e3", seasonNumber: 1, episodeNumber: 3, titleAr: "الحلقة 3: حصار الوادي", titleEn: "Siege of the Valley", durationMinutes: 56, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
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
    audioLabel: "مترجم عربي",
    qualityBadge: "1080p BluRay",
    ageRating: "G - عائلي",
    country: "الولايات المتحدة / اليابان",
    studio: "Luminary Animation",
    director: "هاياتو موري",
    writer: "نورا بلانك",
    statusLabel: "مكتمل",
    posterSource: POSTER_CLOCKWORK,
    backdropSource: POSTER_CLOCKWORK,
    synopsis:
      "مخترع شاب يصنع أجنحة شراعية وبومة ميكانيكية ذكية للتحليق بين الجزر العائمة فوق السحاب واستعادة بوصلة الرياح المفقودة قبل سقوط المدينة المعلقة.",
    genres: ["أنميشن", "عائلي", "مغامرات"],
    seasonCount: 1,
    featuredHero: true,
    globalRank: 3,
    popularityCount: 76400,
    releaseDayIndex: 2,
    releaseTimeLabel: "7:30 مساءً",
    relatedIds: [108, 101, 105],
    cast: [
      { id: 21, nameAr: "ليو أركايد", nameEn: "Leo Arcade", roleAr: "المخترع الصغير · صوت رئيسي", initials: "LA", accentColor: "#8B5CF6" },
      { id: 22, nameAr: "أوليا", nameEn: "Olia", roleAr: "البومة الآلية · دور مساعد", initials: "OL", accentColor: "#F59E0B" },
      { id: 23, nameAr: "كابتن برونز", nameEn: "Capt. Bronze", roleAr: "قائد السفينة · دور مساعد", initials: "CB", accentColor: "#0EA5E9" },
    ],
    episodes: [
      { id: "ep-103-1", seasonNumber: 1, episodeNumber: 1, titleAr: "الفيلم الكامل — نسخة 1080p BluRay", titleEn: "Full Feature (Arabic Sub)", durationMinutes: 112, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
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
    director: "جيمس لانج",
    writer: "دانيال كيم",
    statusLabel: "مكتمل",
    posterSource: POSTER_CYBER,
    backdropSource: POSTER_CYBER,
    synopsis:
      "رائد فضاء يعود إلى الأرض بعد أربعين عاماً ليجد المدن غارقة تحت أمطار دائمة، فيبدأ رحلة البحث عن أرشيف الذاكرة البشرية في أزقة أركاديا القديمة.",
    genres: ["خيال علمي", "غموض", "إثارة"],
    seasonCount: 1,
    globalRank: 6,
    popularityCount: 62100,
    releaseDayIndex: 1,
    releaseTimeLabel: "8:00 مساءً",
    relatedIds: [101, 107, 106],
    cast: [
      { id: 31, nameAr: "مارك فوستر", nameEn: "Mark Foster", roleAr: "رائد الفضاء · دور رئيسي", initials: "MF", accentColor: "#0EA5E9" },
      { id: 32, nameAr: "سارا لين", nameEn: "Sara Lin", roleAr: "حارسة الأرشيف · دور رئيسي", initials: "SL", accentColor: "#EC4899" },
    ],
    episodes: [
      { id: "ep-104-1", seasonNumber: 1, episodeNumber: 1, titleAr: "الفيلم الكامل — BluRay 1080p", titleEn: "Full Movie BluRay", durationMinutes: 126, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
    ],
  },
  {
    id: 105,
    slug: "steel-titan-chronicles",
    titleAr: "أسوار الحديد: العملاق الآلي",
    titleEn: "Steel Titan Chronicles",
    mediaType: "animation",
    categoryLabel: "أنميشن",
    year: 2025,
    imdbRating: 8.4,
    durationOrSeasons: "104 دقيقة",
    audioLabel: "مترجم عربي",
    qualityBadge: "4K UHD",
    ageRating: "PG - عائلي",
    country: "الولايات المتحدة / كندا",
    studio: "Apex Animation Works",
    director: "كارلوس ميرين",
    statusLabel: "مكتمل",
    posterSource: POSTER_MECHA,
    backdropSource: POSTER_MECHA,
    synopsis:
      "في جزيرة صناعية منسية، تكتشف مهندسة شابة قلباً طاقوياً يعيد تشغيل عملاق حديدي قديم للدفاع عن القرى الساحلية ضد العواصف المغناطيسية.",
    genres: ["أنميشن", "أكشن", "خيال علمي"],
    seasonCount: 1,
    globalRank: 8,
    popularityCount: 49300,
    releaseDayIndex: 3,
    releaseTimeLabel: "6:00 مساءً",
    relatedIds: [103, 108, 101],
    cast: [
      { id: 41, nameAr: "مايا كروز", nameEn: "Maya Cruz", roleAr: "المهندسة · صوت رئيسي", initials: "MC", accentColor: "#10B981" },
      { id: 42, nameAr: "تايتان X9", nameEn: "Titan X9", roleAr: "الحارس الآلي · صوت رئيسي", initials: "TX", accentColor: "#F59E0B" },
    ],
    episodes: [
      { id: "ep-105-1", seasonNumber: 1, episodeNumber: 1, titleAr: "الفيلم الكامل — نسخة 4K UHD", titleEn: "Full Animation Feature", durationMinutes: 104, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
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
    director: "هنريك سولبرغ",
    statusLabel: "مستمر",
    posterSource: POSTER_ARCTIC,
    backdropSource: POSTER_ARCTIC,
    synopsis:
      "غواصة أبحاث عميقة تتتبع انقطاعاً غامضاً في كابلات الاتصالات البحرية تحت جبال الجليد في القطب الشمالي، لتكتشف محطة مدارية غارقة منذ الحرب الباردة.",
    genres: ["إثارة", "غموض", "دراما"],
    seasonCount: 1,
    seasonLabels: { 1: "الموسم الأول · الصمت القطبي" },
    globalRank: 4,
    popularityCount: 83900,
    releaseDayIndex: 6,
    releaseTimeLabel: "9:30 مساءً",
    relatedIds: [102, 104, 101],
    cast: [
      { id: 51, nameAr: "أندرس ليند", nameEn: "Anders Lind", roleAr: "قبطان الغواصة · دور رئيسي", initials: "AL", accentColor: "#0EA5E9" },
      { id: 52, nameAr: "فريا هولم", nameEn: "Freja Holm", roleAr: "خبيرة الشفرات · دور رئيسي", initials: "FH", accentColor: "#10B981" },
    ],
    episodes: [
      { id: "ep-106-s1e1", seasonNumber: 1, episodeNumber: 1, titleAr: "الحلقة 1: الصمت القطبي", titleEn: "Arctic Silence", durationMinutes: 49, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-106-s1e2", seasonNumber: 1, episodeNumber: 2, titleAr: "الحلقة 2: المحطة الغارقة", titleEn: "Submerged Station", durationMinutes: 51, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-106-s1e3", seasonNumber: 1, episodeNumber: 3, titleAr: "الحلقة 3: الشفرة الأخيرة", titleEn: "Final Cipher", durationMinutes: 53, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-106-s1e4", seasonNumber: 1, episodeNumber: 4, titleAr: "الحلقة 4: الإشارة الحمراء", titleEn: "Red Beacon", durationMinutes: 50, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-106-s1e5", seasonNumber: 1, episodeNumber: 5, titleAr: "الحلقة 5: نقطة الصفر", titleEn: "Zero Meridian", durationMinutes: 57, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
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
    director: "كينجي واتانابي",
    statusLabel: "مكتمل",
    posterSource: POSTER_TOKYO,
    backdropSource: POSTER_TOKYO,
    synopsis:
      "محقق سابق وخبير في فنون القتال يواجه نقابة سرية تسيطر على الأحياء الماطرة في ليلة واحدة حاسمة لكشف الحقيقة واستعادة إرث عائلته.",
    genres: ["أكشن", "إثارة", "جريمة"],
    seasonCount: 1,
    featuredHero: true,
    globalRank: 5,
    popularityCount: 71800,
    releaseDayIndex: 0,
    releaseTimeLabel: "11:00 مساءً",
    relatedIds: [104, 101, 102],
    cast: [
      { id: 61, nameAr: "شين هاياشي", nameEn: "Shin Hayashi", roleAr: "المحقق · دور رئيسي", initials: "SH", accentColor: "#EF4444" },
      { id: 62, nameAr: "رين بارك", nameEn: "Rin Park", roleAr: "عميلة استخبارات · دور رئيسي", initials: "RP", accentColor: "#8B5CF6" },
    ],
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
    country: "فرنسا / أمريكا",
    studio: "Fortiche / Horizon Studios",
    director: "أليكس مارتن",
    statusLabel: "مستمر",
    posterSource: POSTER_MECHA,
    backdropSource: POSTER_CLOCKWORK,
    synopsis:
      "سلسلة أنميشن ملحمية بتقنيات الرسم السينمائي الثلاثي الأبعاد تتبع رحلة حراس الأبراج الكريستالية في مواجهة التصدع السماوي.",
    genres: ["أنميشن", "فانتازيا", "مغامرة"],
    seasonCount: 1,
    seasonLabels: { 1: "الموسم الأول · فجر الكريستال" },
    globalRank: 7,
    popularityCount: 58400,
    releaseDayIndex: 4,
    releaseTimeLabel: "7:00 مساءً",
    relatedIds: [103, 105, 102],
    cast: [
      { id: 71, nameAr: "كايلو سيريس", nameEn: "Kaelo Ceris", roleAr: "حارس البرج · صوت رئيسي", initials: "KC", accentColor: "#0EA5E9" },
      { id: 72, nameAr: "فيرا سول", nameEn: "Vera Sol", roleAr: "ساحرة الكريستال · صوت رئيسي", initials: "VS", accentColor: "#8B5CF6" },
    ],
    episodes: [
      { id: "ep-108-s1e1", seasonNumber: 1, episodeNumber: 1, titleAr: "الحلقة 1: شظايا السماء", titleEn: "Shards of the Sky", durationMinutes: 28, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-108-s1e2", seasonNumber: 1, episodeNumber: 2, titleAr: "الحلقة 2: حارس البوابة الشرقية", titleEn: "East Gate Guardian", durationMinutes: 27, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-108-s1e3", seasonNumber: 1, episodeNumber: 3, titleAr: "الحلقة 3: قمة النجم الغارق", titleEn: "Peak of the Fallen Star", durationMinutes: 29, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
      { id: "ep-108-s1e4", seasonNumber: 1, episodeNumber: 4, titleAr: "الحلقة 4: ميثاق الأبراج", titleEn: "Pact of the Spires", durationMinutes: 31, audioType: "مترجم عربي", servers: PERMANENT_SERVERS },
    ],
  },
];

export function categorizeServers(servers: FilmServerLink[]) {
  const vip = servers.filter((s) => s.tier === "vip" || s.quality === "4K UHD");
  const fast = servers.filter((s) => s.tier === "fast" || (!s.tier && s.quality === "1080p FHD"));
  const backup = servers.filter((s) => s.tier === "backup" || (!s.tier && s.quality === "720p HD"));
  const result: { key: ServerTier; title: string; subtitle: string; dotColor: string; items: FilmServerLink[] }[] = [];
  if (vip.length) {
    result.push({
      key: "vip",
      title: "سيرفرات VIP فائقة الجودة",
      subtitle: "جودة 4K & 1080p بدون تقطيع",
      dotColor: "#10B981",
      items: vip,
    });
  }
  if (fast.length) {
    result.push({
      key: "fast",
      title: "سيرفرات المشاهدة المباشرة",
      subtitle: "تحميل فوري ومستقر",
      dotColor: "#0EA5E9",
      items: fast,
    });
  }
  if (backup.length) {
    result.push({
      key: "backup",
      title: "سيرفرات احتياطية مرنة",
      subtitle: "جودة اقتصادية للسرعات المتوسطة",
      dotColor: "#F59E0B",
      items: backup,
    });
  }
  return result;
}

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

export async function loadAllPlaybackProgress(): Promise<FilmPlaybackRecord[]> {
  try {
    const raw = await AsyncStorage.getItem(PLAYBACK_PROGRESS_KEY);
    if (raw) {
      const parsed = JSON.parse(raw);
      return Array.isArray(parsed)
        ? parsed.sort((a, b) => (b.updatedAt || 0) - (a.updatedAt || 0))
        : [];
    }
  } catch {}
  return [];
}

export async function saveFilmPlaybackProgress(rec: FilmPlaybackRecord): Promise<void> {
  try {
    const existing = await loadAllPlaybackProgress();
    const filtered = existing.filter((r) => r.titleId !== rec.titleId);
    const updated = [rec, ...filtered].slice(0, 40);
    await AsyncStorage.setItem(PLAYBACK_PROGRESS_KEY, JSON.stringify(updated));
  } catch {}
}

export async function removeFilmPlaybackProgress(titleId: number): Promise<void> {
  try {
    const existing = await loadAllPlaybackProgress();
    await AsyncStorage.setItem(
      PLAYBACK_PROGRESS_KEY,
      JSON.stringify(existing.filter((r) => r.titleId !== titleId)),
    );
  } catch {}
}

export async function loadFilmRating(titleId: number): Promise<number> {
  try {
    const raw = await AsyncStorage.getItem(RATINGS_STORAGE_KEY);
    if (raw) {
      const map = JSON.parse(raw);
      return Number(map[String(titleId)] || 0);
    }
  } catch {}
  return 0;
}

export async function saveFilmRating(titleId: number, rating: number): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(RATINGS_STORAGE_KEY);
    const map = raw ? JSON.parse(raw) : {};
    if (rating <= 0) delete map[String(titleId)];
    else map[String(titleId)] = rating;
    await AsyncStorage.setItem(RATINGS_STORAGE_KEY, JSON.stringify(map));
  } catch {}
}

const MANGA_GENRES_AR: Record<string, string> = {
  action: "أكشن",
  adventure: "مغامرة",
  "avant garde": "طليعي",
  "boys love": "حب فتيان",
  comedy: "كوميديا",
  drama: "دراما",
  ecchi: "إيتشي",
  fantasy: "فانتازيا",
  "girls love": "حب فتيات",
  gourmet: "طبخ",
  hentai: "للبالغين",
  horror: "رعب",
  "mahou shoujo": "فتيات سحريات",
  "martial arts": "فنون قتالية",
  mecha: "ميكا",
  music: "موسيقى",
  mystery: "غموض",
  psychological: "نفسي",
  reincarnation: "تناسخ",
  romance: "رومانسي",
  "school life": "حياة مدرسية",
  "sci-fi": "خيال علمي",
  "slice of life": "حياة يومية",
  sports: "رياضة",
  supernatural: "خوارق",
  thriller: "تشويق",
  tragedy: "مأساة",
  historical: "تاريخي",
  isekai: "إيسيكاي",
  magic: "سحر",
  Josei: "جوسي",
  josei: "جوسي",
  seinen: "سينين",
  shoujo: "شوجو",
  shounen: "شونين",
  manhwa: "مانهوا",
  manga: "مانجا",
  webtoon: "ويبتون",
};

export function translateMangaGenre(genre: string): string {
  const trimmed = String(genre || "").trim();
  if (!trimmed) return "تصنيف آخر";
  if (/[\u0600-\u06FF]/.test(trimmed)) return trimmed;
  const normalized = trimmed.toLocaleLowerCase();
  return MANGA_GENRES_AR[normalized] || trimmed;
}

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
  mecha: "ميكا",
  music: "موسيقى",
  mystery: "غموض",
  psychological: "نفسي",
  romance: "رومانسي",
  "sci-fi": "خيال علمي",
  "slice of life": "حياة يومية",
  sports: "رياضة",
  supernatural: "خوارق",
  thriller: "تشويق",
  josei: "جوسي",
  seinen: "سينين",
  shoujo: "شوجو",
  shounen: "شونين",
};

export function translateMangaGenre(genre: string): string {
  const normalized = genre.trim().toLocaleLowerCase();
  return MANGA_GENRES_AR[normalized] || "تصنيف آخر";
}

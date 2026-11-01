/* Arabic aliases help AniList search names that users commonly type in Arabic. */
const ARABIC_ALIASES: Record<string, string> = {
  "ناروتو": "Naruto",
  "هانتر": "Hunter x Hunter",
  "هنتر": "Hunter x Hunter",
  "ون بيس": "One Piece",
  "وان بيس": "One Piece",
  "دراغون بول": "Dragon Ball",
  "دراجون بول": "Dragon Ball",
  "ديمون سلاير": "Demon Slayer",
  "قاتل الشياطين": "Demon Slayer",
  "هجوم العمالقة": "Shingeki no Kyojin",
  "بوكو نو هيرو": "Boku no Hero Academia",
  "أكاديمية بطلي": "Boku no Hero Academia",
  "بليتش": "Bleach",
  "فيري تيل": "Fairy Tail",
  "ذيل الجنية": "Fairy Tail",
  "توكيو غول": "Tokyo Ghoul",
  "طوكيو غول": "Tokyo Ghoul",
  "ريزيرو": "Re:Zero",
  "سوورد آرت أونلاين": "Sword Art Online",
  "سورد آرت أونلاين": "Sword Art Online",
  "فول ميتال": "Fullmetal Alchemist",
  "الخيميائي الفولاذي": "Fullmetal Alchemist",
  "جوجوتسو كايسن": "Jujutsu Kaisen",
  "جوجوتسو": "Jujutsu Kaisen",
  "ماي هيرو أكاديميا": "Boku no Hero Academia",
  "أكاديمية بطلي": "Boku no Hero Academia",
  "سولو ليفلينج": "Solo Leveling",
  "سولو لفلينج": "Solo Leveling",
  "بلاك كلوفر": "Black Clover",
  "المشبك الأسود": "Black Clover",
  "سايكو باس": "Psycho-Pass",
  "دكتور ستون": "Dr. Stone",
  "موشيكو تينسي": "Mushoku Tensei",
  "تناسخ العاطل": "Mushoku Tensei",
  "سلايم": "That Time I Got Reincarnated as a Slime",
  "مملكة": "Kingdom",
  "فاينل فانتسي": "Final Fantasy",
};

/** Keep Arabic input intact when it is not a known alias; AniList can still
 * match some Arabic/native titles, while aliases improve the common cases. */
export function translateAnimeQuery(value: string): string {
  const query = value.trim();
  if (!query) return "";
  if (ARABIC_ALIASES[query]) return ARABIC_ALIASES[query];

  for (const [arabic, english] of Object.entries(ARABIC_ALIASES)) {
    if (query.includes(arabic)) return query.replace(arabic, english);
  }
  return query;
}
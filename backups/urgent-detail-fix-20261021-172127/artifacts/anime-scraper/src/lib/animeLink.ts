/**
 * يبني رابط صفحة تفاصيل الأنمي مع تمرير مصدر الـ id عند الحاجة.
 *
 * أثناء انقطاع AniList تُبنى بعض القوائم من Jikan (MAL) أو Kitsu، وبالتالي
 * تكون قيمة anime.id هي MAL id أو Kitsu id وليست AniList id. بدون تمييز
 * المصدر، صفحة التفاصيل كانت تعامل هذا الرقم كأنه AniList id فتفتح أنمي
 * مختلف تماماً بسبب تطابق رقمي عشوائي بين النطاقين.
 */
export function animeHref(anime: { id: number | string; idSource?: string }): string {
  if (anime.idSource === "mal" || anime.idSource === "kitsu") {
    return `/anime/${anime.id}?src=${anime.idSource}`;
  }
  return `/anime/${anime.id}`;
}

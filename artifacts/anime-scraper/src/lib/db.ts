export interface LocalHistoryItem {
  id: number;
  title: string;
  cover: string;
  ep: number;
  date: string;
  totalEps?: number;
  watchTimeSec?: number;
  durationSec?: number;
}

export async function saveWatchEvent(
  _userId: string | null,
  anilistId: number,
  title: string,
  cover: string,
  ep: number,
  totalEps = 0,
  watchTimeSec = 0,
  durationSec = 0,
) {
  try {
    const h: LocalHistoryItem[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify(
      [{ id: anilistId, title, cover, ep, date: new Date().toISOString(), totalEps, watchTimeSec, durationSec },
       ...h.filter(x => !(x.id === anilistId && x.ep === ep))].slice(0, 60)
    ));
  } catch {}
}

export async function loadWatchHistory(_userId: string | null): Promise<LocalHistoryItem[]> {
  try { return JSON.parse(localStorage.getItem("watch-history") || "[]"); } catch { return []; }
}

export async function saveAnime(_userId: string | null, anilistId: number) {
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    if (!ids.includes(anilistId)) {
      localStorage.setItem("savedAnime", JSON.stringify([anilistId, ...ids]));
    }
  } catch {}
}

export async function unsaveAnime(_userId: string | null, anilistId: number) {
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    localStorage.setItem("savedAnime", JSON.stringify(ids.filter(i => i !== anilistId)));
  } catch {}
}

export async function loadSavedIds(_userId: string | null): Promise<number[]> {
  try { return JSON.parse(localStorage.getItem("savedAnime") || "[]"); } catch { return []; }
}

export function isSaved(anilistId: number): boolean {
  try {
    const ids: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    return ids.includes(anilistId);
  } catch { return false; }
}

export async function cacheAnimeInfo(_info: {
  anilist_id: number;
  title_romaji: string;
  title_english?: string;
  title_arabic?: string;
  cover_image?: string;
  banner_image?: string;
  description_en?: string;
  genres?: string[];
  status?: string;
  format?: string;
  episodes_count?: number;
  avg_score?: number;
  popularity?: number;
}) {
  // localStorage-only cache — no cloud sync needed
}

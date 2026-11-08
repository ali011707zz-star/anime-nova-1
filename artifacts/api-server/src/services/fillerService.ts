import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

interface FillerData {
  fillerEpisodes: Set<number>;
  mixedEpisodes: Set<number>;
}

const _fillerCache = new Map<string, { ts: number; data: FillerData }>();
const FILLER_CACHE_TTL = 7 * 24 * 60 * 60 * 1000; // 7 days

interface ShowItem {
  slug: string;
  title: string;
  normTitle: string;
}

let _bundledShows: ShowItem[] = [];

try {
  const candidates = [
    path.join(__dirname, "../data/animeFillerShows.json"),
    path.join(__dirname, "./data/animeFillerShows.json"),
    path.join(__dirname, "data/animeFillerShows.json"),
    path.join(process.cwd(), "artifacts/api-server/src/data/animeFillerShows.json"),
    path.join(process.cwd(), "artifacts/api-server/dist/data/animeFillerShows.json"),
    path.join(process.cwd(), "src/data/animeFillerShows.json"),
    path.join(process.cwd(), "dist/data/animeFillerShows.json"),
  ];
  const found = candidates.find(p => fs.existsSync(p));
  if (found) {
    const raw = JSON.parse(fs.readFileSync(found, "utf8"));
    _bundledShows = Object.entries(raw).map(([slug, title]) => ({
      slug,
      title: String(title),
      normTitle: String(title).toLowerCase().replace(/[^a-z0-9]+/g, " ").trim(),
    }));
  }
} catch {}

function parseRangeString(rawText: string): Set<number> {
  const result = new Set<number>();
  if (!rawText) return result;
  const parts = rawText.split(",");
  for (const part of parts) {
    const clean = part.replace(/<[^>]+>/g, "").trim();
    if (!clean) continue;
    if (clean.includes("-")) {
      const [startStr, endStr] = clean.split("-");
      const start = Number.parseInt(startStr, 10);
      const end = Number.parseInt(endStr, 10);
      if (Number.isFinite(start) && Number.isFinite(end) && start <= end) {
        for (let i = start; i <= end; i++) {
          result.add(i);
        }
      }
    } else {
      const num = Number.parseInt(clean, 10);
      if (Number.isFinite(num)) {
        result.add(num);
      }
    }
  }
  return result;
}

export function matchAnimeFillerShow(candidateTitles: string[]): ShowItem | null {
  if (!_bundledShows.length) return null;

  for (const raw of candidateTitles) {
    if (!raw || typeof raw !== "string") continue;
    const clean = raw.toLowerCase().replace(/[^a-z0-9]+/g, " ").trim();
    const slug = raw.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-+|-+$/g, "");
    if (!clean) continue;

    // 1. Exact slug match
    const exactSlug = _bundledShows.find(s => s.slug === slug);
    if (exactSlug) return exactSlug;

    // 2. Exact title match
    const exactTitle = _bundledShows.find(s => s.normTitle === clean);
    if (exactTitle) return exactTitle;
  }

  // 3. Prefix / startsWith matching for longer names
  for (const raw of candidateTitles) {
    if (!raw || typeof raw !== "string") continue;
    const clean = raw.toLowerCase().replace(/[^a-z0-9]+/g, " ").trim();
    if (clean.length < 5) continue;

    const starts = _bundledShows.find(s =>
      s.normTitle === clean ||
      s.normTitle.startsWith(clean + " ") ||
      clean.startsWith(s.normTitle + " ")
    );
    if (starts) return starts;
  }

  // 4. Substring containment if high confidence
  for (const raw of candidateTitles) {
    if (!raw || typeof raw !== "string") continue;
    const clean = raw.toLowerCase().replace(/[^a-z0-9]+/g, " ").trim();
    if (clean.length < 7) continue;

    const matched = _bundledShows.find(s =>
      s.normTitle.includes(clean) || clean.includes(s.normTitle)
    );
    if (matched) return matched;
  }

  return null;
}

export async function getAnimeFillerData(candidateTitles: string[], malId?: number): Promise<FillerData> {
  const show = matchAnimeFillerShow(candidateTitles);
  if (show) {
    const cached = _fillerCache.get(show.slug);
    if (cached && Date.now() - cached.ts < FILLER_CACHE_TTL) {
      return cached.data;
    }

    try {
      const url = `https://www.animefillerlist.com/shows/${show.slug}`;
      const res = await fetch(url, {
        headers: {
          "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
          Accept: "text/html,application/xhtml+xml",
        },
        signal: AbortSignal.timeout(4000),
      });

      if (res.ok) {
        const html = await res.text();
        const fillerMatch = html.match(/<div class="filler">[\s\S]*?<span class="Episodes">([\s\S]*?)<\/span><\/div>/);
        const mixedMatch = html.match(/<div class="mixed_canon\/filler">[\s\S]*?<span class="Episodes">([\s\S]*?)<\/span><\/div>/);

        const fillerEpisodes = parseRangeString(fillerMatch ? fillerMatch[1] : "");
        const mixedEpisodes = parseRangeString(mixedMatch ? mixedMatch[1] : "");

        const data: FillerData = { fillerEpisodes, mixedEpisodes };
        _fillerCache.set(show.slug, { ts: Date.now(), data });
        return data;
      }
    } catch {}
  }

  // Fallback to Jikan if MAL ID is available and show was not found or failed
  if (malId && malId > 0) {
    const jikanKey = `mal:${malId}`;
    const cached = _fillerCache.get(jikanKey);
    if (cached && Date.now() - cached.ts < FILLER_CACHE_TTL) {
      return cached.data;
    }

    try {
      const jikanRes = await fetch(`https://api.jikan.moe/v4/anime/${malId}/episodes?page=1`, {
        headers: { Accept: "application/json" },
        signal: AbortSignal.timeout(3000),
      });
      if (jikanRes.ok) {
        const body = await jikanRes.json() as any;
        const fillerEpisodes = new Set<number>();
        const mixedEpisodes = new Set<number>();
        if (Array.isArray(body?.data)) {
          for (const item of body.data) {
            const num = Number(item?.mal_id || item?.episode || 0);
            if (num > 0 && item?.filler) {
              fillerEpisodes.add(num);
            }
          }
        }
        const data: FillerData = { fillerEpisodes, mixedEpisodes };
        _fillerCache.set(jikanKey, { ts: Date.now(), data });
        return data;
      }
    } catch {}
  }

  return { fillerEpisodes: new Set(), mixedEpisodes: new Set() };
}

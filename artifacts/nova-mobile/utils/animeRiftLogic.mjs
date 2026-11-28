/**
 * Pure, dependency-free logic for client-side AnimeRift v4 integration
 * (CR2 Arabic Sub, BBZ Arabic Sub, CR2 Arabic Dub).
 *
 * Covers:
 * - Search query generation & title/season normalization
 * - Candidate ranking (title, alternative_title, season, format, year, available_episodes, votes)
 * - Episode selection by episode number
 * - Episode source parsing into exact QualityKey slots (1080p/720p/480p/360p)
 * - Host/quality selection & direct link normalization (MP4 vs HLS, headers)
 * - Rate-limit pacing, Retry-After parsing, and 403 ACCESS_DENIED cooldown computation
 */

export const ANIMERIFT_SITE_CR2 = "animerift_cr2";
export const ANIMERIFT_SITE_BBZ = "animerift_bbz";
export const ANIMERIFT_SITE_CR2_DUB = "animerift_cr2_dub";

export const ANIMERIFT_SITES = [
  ANIMERIFT_SITE_CR2,
  ANIMERIFT_SITE_BBZ,
  ANIMERIFT_SITE_CR2_DUB,
];

const ANIMERIFT_SITE_SET = new Set(ANIMERIFT_SITES);

export const ANIMERIFT_QUALITY_ORDER = ["1080p", "720p", "480p", "360p"];
const VALID_QUALITY_KEYS = new Set(ANIMERIFT_QUALITY_ORDER);

export function isAnimeRiftSite(site) {
  return ANIMERIFT_SITE_SET.has(String(site || "").trim().toLowerCase());
}

/**
 * Extracts explicit season number from an anime title (e.g. "2nd Season", "Season 2",
 * "S2", "Part 2", trailing " II" / " III" / " 2"). Returns null if no season is stated.
 */
export function extractSeasonNumber(raw) {
  const text = String(raw || "").trim().toLowerCase();
  if (!text) return null;

  const ordinalMap = {
    "1st": 1, "first": 1,
    "2nd": 2, "second": 2,
    "3rd": 3, "third": 3,
    "4th": 4, "fourth": 4,
    "5th": 5, "fifth": 5,
    "6th": 6, "sixth": 6,
    "7th": 7, "seventh": 7,
    "8th": 8, "eighth": 8,
    "9th": 9, "ninth": 9,
  };

  let m = text.match(/\b(\d+)(?:st|nd|rd|th)\s+season\b/);
  if (m) return Number(m[1]);

  m = text.match(/\b(first|second|third|fourth|fifth|sixth|seventh|eighth|ninth)\s+season\b/);
  if (m && ordinalMap[m[1]]) return ordinalMap[m[1]];

  m = text.match(/\bseason\s*(\d{1,2})\b/);
  if (m) return Number(m[1]);

  m = text.match(/\bs(\d{1,2})\b/);
  if (m) return Number(m[1]);

  // Roman numerals at end of title (e.g. "Overlord II", "Haikyuu!! III")
  m = text.match(/(?:^|\s)(ii|iii|iv|v|vi)\s*$/i);
  if (m) {
    const roman = { ii: 2, iii: 3, iv: 4, v: 5, vi: 6 };
    return roman[m[1].toLowerCase()] || null;
  }

  // Standalone trailing small integer (2..9) like "Boku no Hero Academia 7"
  // Ignore 4-digit years like "(2026)" or "2024".
  const withoutParens = text.replace(/\(\s*\d{4}\s*\)/g, "").trim();
  m = withoutParens.match(/(?:^|\s)([2-9])$/);
  if (m) return Number(m[1]);

  return null;
}

/**
 * Normalizes an anime title for fuzzy/exact comparison across AniList & MAL/AnimeRift.
 */
export function normalizeRiftTitle(raw) {
  let s = String(raw || "")
    .normalize("NFKD")
    .toLowerCase()
    .replace(/['’`´]/g, "")
    .replace(/&/g, " and ")
    .replace(/\(\s*(?:tv|19\d\d|20\d\d)\s*\)/g, " ");

  // Unify season expressions so "Black Clover 2nd Season" === "Black Clover Season 2"
  s = s
    .replace(/\b(\d+)(?:st|nd|rd|th)\s+season\b/g, " season $1 ")
    .replace(/\bfirst\s+season\b/g, " season 1 ")
    .replace(/\bsecond\s+season\b/g, " season 2 ")
    .replace(/\bthird\s+season\b/g, " season 3 ")
    .replace(/\bfourth\s+season\b/g, " season 4 ")
    .replace(/\bfifth\s+season\b/g, " season 5 ")
    .replace(/\bs(\d{1,2})\b/g, " season $1 ");

  return s
    .replace(/[^a-z0-9\u0600-\u06ff]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function stripSeasonAndSubtitle(raw) {
  let s = String(raw || "").trim();
  if (!s) return "";
  s = s.replace(/\s*\(\s*\d{4}\s*\)\s*/g, " ");
  s = s.replace(/\b(?:\d+(?:st|nd|rd|th)\s+season|season\s*\d+|part\s*\d+|cour\s*\d+)\b/gi, " ");
  if (s.includes(":")) {
    const beforeColon = s.split(":")[0].trim();
    if (beforeColon.length >= 4) s = beforeColon;
  }
  return s.replace(/\s+/g, " ").trim();
}

/**
 * Builds up to 3 ordered, deduplicated search queries for AnimeRift `/library/search`.
 * AnimeRift stores MAL/Romaji titles in `title` and English/synonyms in `alternative_title`,
 * so primary Romaji goes first, followed by English and a clean base query.
 */
export function buildRiftSearchQueries({ title, english, titles } = {}) {
  const rawList = [];
  const pushClean = (val) => {
    const cleaned = String(val || "")
      .replace(/\s*\(\s*\d{4}\s*\)\s*/g, " ")
      .replace(/\s+/g, " ")
      .trim();
    if (cleaned.length >= 2) rawList.push(cleaned);
  };

  pushClean(title);
  pushClean(english);
  if (Array.isArray(titles)) {
    for (const t of titles) {
      // Skip pure CJK/Hiragana/Katakana queries since AnimeRift indexes latin/romanized titles
      if (/^[\u3000-\u9fff\uff00-\uffef\s\d!?.,:-]+$/.test(String(t || ""))) continue;
      pushClean(t);
    }
  }
  // Add stripped base title as fallback (e.g. "Black Clover: 2nd Season" -> "Black Clover")
  pushClean(stripSeasonAndSubtitle(title));
  pushClean(stripSeasonAndSubtitle(english));

  const seen = new Set();
  const out = [];
  for (const q of rawList) {
    const key = normalizeRiftTitle(q);
    if (!key || seen.has(key)) continue;
    seen.add(key);
    out.push(q);
    if (out.length >= 3) break;
  }
  return out;
}

function normalizeFormatToContentType(format) {
  const f = String(format || "").trim().toLowerCase();
  if (!f) return "";
  if (f === "tv" || f === "tv_short" || f === "tv series") return "tv";
  if (f === "movie" || f === "film") return "movie";
  if (f === "ova") return "ova";
  if (f === "ona") return "ona";
  if (f === "special") return "special";
  return "";
}

function tokenOverlapScore(normA, normB) {
  if (!normA || !normB) return 0;
  if (normA === normB) return 1000;

  const tokensA = normA.split(" ").filter(Boolean);
  const tokensB = normB.split(" ").filter(Boolean);
  if (!tokensA.length || !tokensB.length) return 0;

  const setA = new Set(tokensA);
  const setB = new Set(tokensB);
  let shared = 0;
  for (const t of setA) {
    if (setB.has(t)) shared++;
  }
  if (shared === 0) return 0;

  const precision = shared / setB.size;
  const recall = shared / setA.size;
  const f1 = (2 * precision * recall) / (precision + recall);

  // Prefix / contains bonus when candidate is very close
  let bonus = 0;
  if (normB.startsWith(normA) || normA.startsWith(normB)) {
    const lenRatio = Math.min(normA.length, normB.length) / Math.max(normA.length, normB.length);
    bonus = Math.round(lenRatio * 220);
  }
  return Math.round(f1 * 620) + bonus;
}

/**
 * Scores a single AnimeRift search candidate against the target AniList metadata.
 */
export function scoreAnimeRiftCandidate(candidate, target = {}) {
  if (!candidate || typeof candidate !== "object" || !candidate._id) return -9999;

  const targetTitles = [];
  if (target.title) targetTitles.push(String(target.title));
  if (target.english) targetTitles.push(String(target.english));
  if (Array.isArray(target.titles)) {
    for (const t of target.titles) {
      if (t) targetTitles.push(String(t));
    }
  }
  const normTargets = [...new Set(targetTitles.map(normalizeRiftTitle).filter(Boolean))];
  if (!normTargets.length) return -9999;

  const candTitles = [];
  if (candidate.title) candTitles.push(String(candidate.title));
  if (candidate.alternative_title) {
    // alternative_title can be a string or array
    if (Array.isArray(candidate.alternative_title)) {
      candTitles.push(...candidate.alternative_title.map(String));
    } else {
      candTitles.push(...String(candidate.alternative_title).split(/[|,;\/]+/));
    }
  }
  if (candidate.title_translations && typeof candidate.title_translations === "object") {
    for (const val of Object.values(candidate.title_translations)) {
      if (typeof val === "string" && val.trim()) candTitles.push(val);
    }
  }
  const normCands = [...new Set(candTitles.map(normalizeRiftTitle).filter(Boolean))];
  if (!normCands.length) return -9999;

  let bestTitleScore = 0;
  for (const nt of normTargets) {
    for (const nc of normCands) {
      const s = tokenOverlapScore(nt, nc);
      if (s > bestTitleScore) bestTitleScore = s;
    }
  }
  if (bestTitleScore < 180) return bestTitleScore - 500;

  let score = bestTitleScore;

  // Season parity check
  let targetSeason = null;
  for (const t of targetTitles) {
    const sn = extractSeasonNumber(t);
    if (sn !== null) {
      targetSeason = sn;
      break;
    }
  }
  let candSeason = null;
  for (const c of candTitles) {
    const sn = extractSeasonNumber(c);
    if (sn !== null) {
      candSeason = sn;
      break;
    }
  }
  if (targetSeason !== null && candSeason !== null) {
    score += targetSeason === candSeason ? 260 : -420;
  } else if (targetSeason !== null && targetSeason > 1 && candSeason === null) {
    score -= 260;
  } else if (targetSeason === null && candSeason !== null && candSeason > 1) {
    score -= 260;
  }

  // Content type vs AniList format
  const targetType = normalizeFormatToContentType(target.format);
  const candType = String(candidate.content_type || "").trim().toLowerCase();
  if (targetType && candType) {
    if (targetType === candType) {
      score += 130;
    } else if (
      (targetType === "tv" && (candType === "movie" || candType === "special" || candType === "ova")) ||
      (targetType === "movie" && candType === "tv")
    ) {
      score -= 200;
    } else {
      score -= 60;
    }
  }

  // Release year match
  const targetYear = Number(target.year);
  const candYear = Number(candidate.release_year);
  if (Number.isFinite(targetYear) && targetYear > 1950 && Number.isFinite(candYear) && candYear > 1950) {
    const diff = Math.abs(targetYear - candYear);
    if (diff === 0) score += 160;
    else if (diff === 1) score += 60;
    else if (diff >= 3) score -= 110;
  }

  // Episode count check (prevents picking a 1-ep special for a long TV series)
  const epNum = Number(target.epNum);
  const availEps = Number(candidate.available_episodes);
  if (Number.isFinite(epNum) && epNum > 0 && Number.isFinite(availEps) && availEps > 0) {
    if (availEps >= epNum) score += 80;
    else score -= 240;
  }

  // Popularity tie-breaker
  const votes = Number(candidate.myAnimeList_votes) || 0;
  if (votes > 0) {
    score += Math.min(35, Math.round(Math.log10(votes + 1) * 6));
  }

  return score;
}

/**
 * Picks the highest-scoring AnimeRift candidate if it clears the confidence threshold.
 */
export function pickBestAnimeRiftCandidate(items, target = {}, minScore = 360) {
  if (!Array.isArray(items) || items.length === 0) return null;
  let best = null;
  let bestScore = -Infinity;
  for (const item of items) {
    const score = scoreAnimeRiftCandidate(item, target);
    if (score > bestScore) {
      bestScore = score;
      best = item;
    }
  }
  if (!best || bestScore < minScore) return null;
  return { item: best, score: bestScore };
}

/**
 * Picks the matching episode object from AnimeRift `/library/episodes/:id`.
 */
export function pickAnimeRiftEpisode(episodes, epNum) {
  if (!Array.isArray(episodes) || episodes.length === 0) return null;
  const wanted = Number(epNum);
  if (!Number.isFinite(wanted) || wanted <= 0) return null;

  for (const ep of episodes) {
    if (!ep || typeof ep !== "object") continue;
    const raw = ep.episode_number ?? ep.number;
    const n = Number(raw);
    if (Number.isFinite(n) && n === wanted) return ep;
  }
  // Fallback: single-episode movie (epNum === 1 and only 1 episode exists)
  if (wanted === 1 && episodes.length === 1 && episodes[0]?._id) {
    return episodes[0];
  }
  return null;
}

/**
 * Maps an AnimeRift quality token (e.g. "1080P", "720p", "480P", "360P")
 * into Nova Mobile's canonical QualityKey ("1080p" | "720p" | "480p" | "360p").
 */
export function normalizeRiftQualityKey(raw) {
  const s = String(raw || "").trim().toLowerCase();
  if (!s) return null;
  if (s.includes("1080") || s.includes("fhd")) return "1080p";
  if (s.includes("720") || s === "hd") return "720p";
  if (s.includes("480") || s === "sd") return "480p";
  if (s.includes("360") || s.includes("240") || s === "low") return "360p";
  return null;
}

/**
 * Parses `/library/episode/sources` into structured Arabic-only entries for:
 * - `animerift_cr2`     (provider === "cr2"  && sub_title === "ar_sub")
 * - `animerift_bbz`     (provider === "bkbz" && sub_title === "ar_sub")
 * - `animerift_cr2_dub` (provider === "cr2"  && sub_title === "ar_dub")
 */
export function parseAnimeRiftEpisodeSources(payload) {
  const rawSources = Array.isArray(payload?.sources)
    ? payload.sources
    : Array.isArray(payload?.items)
      ? payload.items
      : [];

  const bySite = {
    [ANIMERIFT_SITE_CR2]: {},
    [ANIMERIFT_SITE_BBZ]: {},
    [ANIMERIFT_SITE_CR2_DUB]: {},
  };

  for (const item of rawSources) {
    if (!item || typeof item !== "object") continue;
    const hostId = String(item._id || item.id || "").trim();
    if (!hostId) continue;

    const provider = String(item.provider || "").trim().toLowerCase();
    const subTitle = String(item.sub_title || "").trim().toLowerCase();

    let site = null;
    if (provider === "cr2" && subTitle === "ar_sub") {
      site = ANIMERIFT_SITE_CR2;
    } else if (provider === "bkbz" && subTitle === "ar_sub") {
      site = ANIMERIFT_SITE_BBZ;
    } else if (provider === "cr2" && subTitle === "ar_dub") {
      site = ANIMERIFT_SITE_CR2_DUB;
    }
    if (!site) continue;

    const rawQualities = Array.isArray(item.qualities) ? item.qualities : [];
    for (const rawQ of rawQualities) {
      const qk = normalizeRiftQualityKey(rawQ);
      if (!qk || !VALID_QUALITY_KEYS.has(qk)) continue;
      if (!bySite[site][qk]) {
        bySite[site][qk] = {
          hostId,
          apiQuality: String(rawQ).trim(),
          quality: qk,
          provider,
          subTitle,
          serverName: String(item.server_name || "").trim(),
        };
      }
    }
  }

  const availableQualities = {};
  for (const site of ANIMERIFT_SITES) {
    const qs = ANIMERIFT_QUALITY_ORDER.filter((q) => Boolean(bySite[site][q]));
    if (qs.length > 0) availableQualities[site] = qs;
  }

  return { bySite, availableQualities };
}

/**
 * Selects the best host entry for a requested quality (exact match first, then nearest).
 */
export function selectRiftHostForQuality(siteEntries, preferredQuality) {
  if (!siteEntries || typeof siteEntries !== "object") return null;
  if (preferredQuality && siteEntries[preferredQuality]) {
    return siteEntries[preferredQuality];
  }
  const idx = preferredQuality ? ANIMERIFT_QUALITY_ORDER.indexOf(preferredQuality) : 0;
  const order = [];
  if (idx >= 0) {
    for (let d = 1; d < ANIMERIFT_QUALITY_ORDER.length; d++) {
      if (idx + d < ANIMERIFT_QUALITY_ORDER.length) order.push(ANIMERIFT_QUALITY_ORDER[idx + d]);
      if (idx - d >= 0) order.push(ANIMERIFT_QUALITY_ORDER[idx - d]);
    }
  }
  for (const q of [...order, ...ANIMERIFT_QUALITY_ORDER]) {
    if (siteEntries[q]) return siteEntries[q];
  }
  return null;
}

/**
 * Normalizes a `/library/episode/source/direct_link` payload into a clean playback descriptor.
 */
export function normalizeRiftDirectLink({ site, directLinkJson, requestedQuality }) {
  const videoUrl = String(directLinkJson?.videoUrl || "").trim();
  if (!videoUrl || !/^https?:\/\//i.test(videoUrl)) return null;

  const isHls = /\.m3u8(?:[?#]|$)/i.test(videoUrl) || site === ANIMERIFT_SITE_BBZ;

  // Extract clean non-empty HTTP headers if the gateway provided any
  let headers;
  const rawHeaders = directLinkJson?.http_headers;
  if (rawHeaders && typeof rawHeaders === "object" && !Array.isArray(rawHeaders)) {
    const clean = {};
    for (const [k, v] of Object.entries(rawHeaders)) {
      if (typeof v === "string" && v.trim()) {
        clean[k] = v.trim();
      }
    }
    if (Object.keys(clean).length > 0) headers = clean;
  }

  // Detect actual quality from URL if present, otherwise keep requestedQuality
  const urlMatch = videoUrl.match(/\/(1080p|720p|480p|360p)\//i);
  const actualQuality = (urlMatch ? normalizeRiftQualityKey(urlMatch[1]) : null)
    || normalizeRiftQualityKey(requestedQuality)
    || "720p";

  return {
    site,
    url: videoUrl,
    directType: isHls ? "hls" : "mp4",
    isHls,
    quality: actualQuality,
    headers,
  };
}

/**
 * Parses Retry-After header or error text into a bounded wait duration (ms).
 */
export function parseRiftRetryAfterMs(retryAfterHeader, bodyText) {
  const hdr = String(retryAfterHeader || "").trim();
  if (hdr) {
    const secs = Number(hdr);
    if (Number.isFinite(secs) && secs > 0) {
      return Math.min(60_000, Math.max(1_500, Math.round(secs * 1000)));
    }
  }
  const m = String(bodyText || "").match(/(\d{1,3})\s*(second|minute)/i);
  if (m) {
    const val = Number(m[1]);
    const mult = m[2].toLowerCase().startsWith("min") ? 60_000 : 1_000;
    if (Number.isFinite(val) && val > 0) {
      return Math.min(60_000, Math.max(1_500, val * mult));
    }
  }
  return 5_000;
}

/**
 * Pure rate-limit & cooldown helper for unit testing circuit-breaker behavior.
 */
export function computeRiftCooldownUntil(status, bodyText, nowMs, currentCooldownUntil = 0) {
  if (status === 403 && String(bodyText || "").includes("ACCESS_DENIED")) {
    // 60-minute circuit breaker so the user's phone never hammers a rate-limited IP
    return Math.max(currentCooldownUntil, nowMs + 60 * 60 * 1000);
  }
  return currentCooldownUntil;
}

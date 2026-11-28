/**
 * Pure decoupled logic for EgyWatch (EasyPlex) matching, server code mapping
 * (`EG`, `TK`, `UQ`, `EB`, `VS`), extractor rule routing, and media URL parsing.
 * Shared identically between API server and NOVA FILM mobile client.
 */

export const EGYWATCH_BASES = [
  "https://gateway.egywatch.live/egywatchapp/public/api/",
  "https://rn62mwg.com/egywatchapp/public/api/",
];

export const EGYWATCH_API_CODE = "p2lbgWkFrykA4QyUmpHihzmc5BNzIABq";
export const EGYWATCH_SCRAPER_BASE = "https://mawdhou3.com/";

export const EGYWATCH_HEADERS = {
  "User-Agent": "EasyPlex (Android 14; M2006C3MG; Redmi angelica; en)",
  packagename: "com.linkletter.app",
  accept: "application/json",
};

export const EGYWATCH_BROWSER_UA =
  "Mozilla/5.0 (Linux; Android 14; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

// Host -> mawdhou3.com scraper rules ported from EgywatchHostExtractor.kt
export const EGYWATCH_HOST_RULES = {
  faselhd: { endpoint: "scripttestfasel.php", method: "GET", queryKey: "api" },
  fasel: { endpoint: "scripttestfasel.php", method: "GET", queryKey: "api" },
  uqload: { endpoint: "scrapefinal/uqload.php", method: "GET", queryKey: "api" },
  vidspeed: { endpoint: "scrapefinal/vidspeed.php", method: "POST", queryKey: "api" },
  vidspeeds: { endpoint: "scrapefinal/vidspeed.php", method: "POST", queryKey: "api" },
  vidsp: { endpoint: "scrapefinal/vidspeed.php", method: "POST", queryKey: "api" },
  vidoba: { endpoint: "scrapefinal/vidoba.php", method: "POST", queryKey: "api" },
  streamwish: { endpoint: "scrapefinal/streamwish.php", method: "POST", queryKey: "api" },
  filelions: { endpoint: "scrapefinal/filelions.php", method: "POST", queryKey: "api" },
  vidhide: { endpoint: "test.php", method: "GET", queryKey: "api" },
  vidhidepre: { endpoint: "test.php", method: "GET", queryKey: "api" },
  egybestvid: { endpoint: "test.php", method: "GET", queryKey: "api" },
  vudeo: { endpoint: "test.php", method: "GET", queryKey: "api" },
  liiivideo: { endpoint: "scrapefinal/scriptalvid.php", method: "GET", queryKey: "api" },
  hdup20: { endpoint: "scrapefinal/hdup20.php", method: "GET", queryKey: "api" },
  vidnest: { endpoint: "scrapefinal/vidnest.php", method: "GET", queryKey: "api" },
  turbovidhls: { endpoint: "scrapefinal/turbovidhls.php", method: "GET", queryKey: "api" },
  dnscheckr: { endpoint: "fasel/geturl.php", method: "GET", queryKey: "api" },
  updown: { endpoint: "scrapefinal/updown.php", method: "POST", queryKey: "api" },
  byse: { endpoint: "test.php", method: "GET", queryKey: "api" },
  vidhls: { endpoint: "test.php", method: "GET", queryKey: "api" },
};

/**
 * Normalize Arabic & Latin titles for accurate fuzzy matching.
 */
export function normalizeEgyTitle(raw) {
  return String(raw || "")
    .toLowerCase()
    .replace(/[\u064B-\u065F\u0670\u0640]/g, "")
    .replace(/[أإآ]/g, "ا")
    .replace(/ة/g, "ه")
    .replace(/ى/g, "ي")
    .replace(/(?:^|\s)(?:مترجم|مدبلج|مسلسل|فيلم|انمي|أنمي|كامل|اون لاين|حلقات|الموسم|الجزء)(?=\s|$)/g, " ")
    .replace(/[^a-z0-9\u0600-\u06FF]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

export function extractHostLabel(urlStr) {
  try {
    const h = new URL(String(urlStr || "")).hostname.toLowerCase();
    const parts = h.split(".").filter(Boolean);
    if (parts.length >= 2) return parts[parts.length - 2];
    return h;
  } catch {
    return "";
  }
}

export function extractHostName(urlStr) {
  try {
    return new URL(String(urlStr || "")).hostname.toLowerCase();
  } catch {
    return "";
  }
}

/**
 * Classify a raw EgyWatch video entry into one of the user-approved 2-letter server codes:
 * - `EG`: VIP Fast / Fasel (multi-quality direct HLS)
 * - `TK`: Server Turki / eisk.badmoussi.com (direct Turkish HLS)
 * - `UQ`: Uqload (direct HLS/MP4 — fast playback + phone download)
 * - `EB`: Egybest / Server Egy / CimaBox (direct 720p/MP4 — great for phone download + ADM)
 * - `VS`: VidSpeed / Vidoba / HDUp20 / Liiivideo / StreamWish / Filelions / Anafast
 *
 * Returns null for dead/unsupported hosts (like broken googlefasV/googlefasD encrypted endpoints).
 */
export function classifyEgyWatchServer(video) {
  if (!video || typeof video !== "object") return null;
  const link = String(video.link || video.url || "").trim();
  if (!link || !/^https?:\/\//i.test(link)) return null;

  const serverRaw = String(video.server || video.name || "").trim();
  const sLower = serverRaw.toLowerCase();
  const host = extractHostName(link);
  const label = extractHostLabel(link);

  // Skip known dead/encrypted Google redirectors that return HTTP 400 Invalid encrypted URL
  if (host.includes("googlefasv") || host.includes("googlefasd") || sLower.includes("server google")) {
    return null;
  }

  // Skip pure download-redirect wrappers that aren't media links unless direct mp4/m3u8
  const isDirectMedia =
    /\.(m3u8|mp4)(\?|$)/i.test(link) ||
    Boolean(video.hls === 1 || video.hls === true);

  // 1. Server Turki (`TK`)
  if (
    sLower.includes("turki") ||
    host.includes("badmoussi") ||
    host.includes("3isk")
  ) {
    return {
      code: "TK",
      site: "egywatch_tk",
      label: "السيرفر TK",
      priority: 1,
      mode: host.includes("badmoussi") ? "turki_api" : isDirectMedia ? "direct" : "embed",
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 2. VIP Fast / Fasel (`EG`)
  if (
    sLower.includes("vip fast") ||
    sLower.includes("vip") && (host.includes("fasel") || host.includes("developer-pro") || host.includes("liiivideo")) ||
    host.includes("fasel") ||
    host.includes("dnscheckr")
  ) {
    const mode = isDirectMedia
      ? "direct"
      : host.includes("developer-pro.workers.dev") && link.includes("/video?url=")
        ? "json_worker"
        : host.includes("developer-pro.workers.dev") && link.includes("/get-links")
          ? "redirect_worker"
          : "scraper";
    return {
      code: "EG",
      site: "egywatch_eg",
      label: "السيرفر EG",
      priority: 2,
      mode,
      link,
      serverRaw,
      rule: EGYWATCH_HOST_RULES[label] || EGYWATCH_HOST_RULES.faselhd,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 3. Uqload (`UQ`)
  if (sLower.includes("uqload") || label === "uqload" || host.includes("uqload")) {
    return {
      code: "UQ",
      site: "egywatch_uq",
      label: "السيرفر UQ",
      priority: 3,
      mode: isDirectMedia ? "direct" : "scraper",
      link,
      serverRaw,
      rule: EGYWATCH_HOST_RULES.uqload,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 4. Egybest / Server Egy / CimaBox (`EB`)
  if (
    sLower.includes("egybest") ||
    sLower.includes("server egy") ||
    sLower.includes("cimabox") ||
    host.includes("egybestvid") ||
    host.includes("developer-pro.workers.dev")
  ) {
    const mode = isDirectMedia
      ? "direct"
      : link.includes("/video?url=")
        ? "json_worker"
        : link.includes("/get-links")
          ? "redirect_worker"
          : EGYWATCH_HOST_RULES[label]
            ? "scraper"
            : "embed";
    return {
      code: "EB",
      site: "egywatch_eb",
      label: "السيرفر EB",
      priority: 4,
      mode,
      link,
      serverRaw,
      rule: EGYWATCH_HOST_RULES[label] || null,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 5. Direct MP4/HLS without known brand name -> `EB`
  if (isDirectMedia) {
    return {
      code: "EB",
      site: "egywatch_eb",
      label: "السيرفر EB",
      priority: 4,
      mode: "direct",
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 6. VidSpeed / Vidoba / HDUp20 / Liiivideo / StreamWish / Filelions / Anafast (`VS`)
  const rule = EGYWATCH_HOST_RULES[label] || null;
  if (
    rule ||
    sLower.includes("vidspeed") ||
    sLower.includes("vidsp") ||
    sLower.includes("vidoba") ||
    sLower.includes("anafast") ||
    sLower.includes("streamwish") ||
    sLower.includes("filelions") ||
    sLower.includes("hdup") ||
    sLower.includes("aflam") ||
    sLower.includes("vidhls") ||
    /^(360|480|720|1080)p$/i.test(sLower)
  ) {
    return {
      code: "VS",
      site: "egywatch_vs",
      label: "السيرفر VS",
      priority: 5,
      mode: rule ? "scraper" : "embed",
      link,
      serverRaw,
      rule,
      headers: normalizeVideoHeaders(video),
    };
  }

  return null;
}

function normalizeVideoHeaders(video) {
  const out = {};
  if (video?.useragent && typeof video.useragent === "string" && video.useragent.trim()) {
    out["User-Agent"] = video.useragent.trim();
  }
  const ref = String(video?.referer || video?.header || "").trim();
  if (ref && /^https?:\/\//i.test(ref)) {
    out.Referer = ref;
  }
  return out;
}

/**
 * Pick the best matching movie/series/anime candidate from EgyWatch search results.
 * Prioritizes exact `tmdb_id` match (score 1000+), then normalized Arabic/English title match.
 */
export function pickBestEgyWatchMatch(candidates, target) {
  if (!Array.isArray(candidates) || candidates.length === 0) return null;

  const targetTmdbId = Number(target?.tmdbId || 0) || 0;
  const targetType = String(target?.tmdbType || target?.type || "movie").toLowerCase();
  const wantMovie = targetType === "movie";
  const wantDubbed = Boolean(target?.preferDubbed);
  const targetYear = Number(target?.year || 0) || 0;

  const targetTitles = [target?.titleAr, target?.titleEn, target?.title]
    .map((t) => normalizeEgyTitle(t))
    .filter((t) => t.length >= 2);

  let best = null;

  for (const item of candidates) {
    if (!item || !item.id) continue;
    const rawType = String(item.type || "").toLowerCase();
    const isItemMovie = rawType === "movie";
    const isItemAnime = rawType === "anime";
    const isItemSerie = rawType === "serie" || rawType === "series" || isItemAnime;

    if (wantMovie && !isItemMovie) continue;
    if (!wantMovie && !isItemSerie) continue;

    let score = 0;
    const itemTmdbId = Number(item.tmdb_id || 0) || 0;
    const rawName = String(item.name || item.title || "").trim();
    const normName = normalizeEgyTitle(rawName);
    const isDubTitle = /مدبلج/.test(rawName) || isItemAnime;

    if (targetTmdbId > 0 && itemTmdbId === targetTmdbId) {
      score += 1000;
    }

    if (normName && targetTitles.length > 0) {
      let bestTitleScore = 0;
      for (const tt of targetTitles) {
        if (normName === tt) {
          bestTitleScore = Math.max(bestTitleScore, 500);
        } else if (normName.includes(tt) || tt.includes(normName)) {
          const ratio = Math.min(normName.length, tt.length) / Math.max(normName.length, tt.length);
          bestTitleScore = Math.max(bestTitleScore, Math.round(250 + ratio * 200));
        } else {
          const aTokens = new Set(tt.split(" ").filter((w) => w.length >= 2));
          const bTokens = new Set(normName.split(" ").filter((w) => w.length >= 2));
          if (aTokens.size > 0 && bTokens.size > 0) {
            let common = 0;
            for (const w of aTokens) if (bTokens.has(w)) common++;
            const overlap = common / Math.max(aTokens.size, bTokens.size);
            if (overlap >= 0.6) {
              bestTitleScore = Math.max(bestTitleScore, Math.round(overlap * 320));
            }
          }
        }
      }
      score += bestTitleScore;
    }

    // Must match either tmdb_id OR reasonably strong title
    if (score < 260) continue;

    // Dubbed vs subbed preference
    if (wantDubbed) {
      score += isDubTitle ? 120 : -80;
    } else {
      score += isDubTitle ? -60 : 40;
    }

    // Year proximity bonus
    const itemYear = Number(String(item.release_date || item.first_air_date || "").slice(0, 4)) || 0;
    if (targetYear > 1950 && itemYear > 1950) {
      if (itemYear === targetYear) score += 60;
      else if (Math.abs(itemYear - targetYear) <= 1) score += 25;
      else if (Math.abs(itemYear - targetYear) >= 5 && itemTmdbId !== targetTmdbId) score -= 90;
    }

    if (!best || score > best.score) {
      best = {
        id: Number(item.id),
        ewType: isItemMovie ? "movie" : isItemAnime ? "anime" : "serie",
        title: rawName,
        tmdbId: itemTmdbId || null,
        score,
      };
    }
  }

  return best;
}

/**
 * Parse extracted direct media URLs (.m3u8 / .mp4) from EgyWatch scraper responses,
 * Server Turki JSON, Cloudflare JSON workers, or raw JWPlayer embed HTML.
 */
export function parseExtractedMediaLinks(body) {
  if (!body || typeof body !== "string") return [];
  const trimmed = body.trim();
  if (!trimmed) return [];

  const out = [];
  const seen = new Set();

  const pushUrl = (rawUrl, rawQuality) => {
    const u = String(rawUrl || "").trim().replace(/\\\//g, "/");
    if (!/^https?:\/\//i.test(u)) return;
    if (/\.(png|jpg|jpeg|webp|gif|svg|vtt|srt|js|css)(\?|$)/i.test(u)) return;
    const dedupKey = u.includes(".m3u8") ? u.split("?")[0] : u;
    if (seen.has(dedupKey)) return;
    seen.add(dedupKey);
    const quality = normalizeQualityLabel(rawQuality, u);
    const kind = u.includes(".m3u8") || u.includes("/hls/") ? "hls" : "direct";
    out.push({ url: u, quality, kind });
  };

  // Try JSON parse first
  if (trimmed.startsWith("{") || trimmed.startsWith("[")) {
    try {
      const parsed = JSON.parse(trimmed);
      // 1. Server Turki double-encoded shape: { data: [{ data: "{\"url\":\"https://...m3u8\"}" }] }
      if (Array.isArray(parsed?.data)) {
        for (const entry of parsed.data) {
          if (typeof entry?.data === "string" && entry.data.trim().startsWith("{")) {
            try {
              const inner = JSON.parse(entry.data);
              if (inner?.url) pushUrl(inner.url, inner.quality || entry.name);
              if (inner?.file) pushUrl(inner.file, inner.quality || entry.name);
            } catch {}
          } else if (entry?.url) {
            pushUrl(entry.url, entry.quality || entry.label);
          }
        }
      }
      // 2. Worker shape: { availableQualities: [{ quality, url }] }
      if (Array.isArray(parsed?.availableQualities)) {
        for (const q of parsed.availableQualities) {
          pushUrl(q?.url || q?.file, q?.quality || q?.label);
        }
      }
      // 3. mawdhou3.com shape: { filtered_content: [...], Quality: [...] }
      if (Array.isArray(parsed?.filtered_content)) {
        const quals = parsed.Quality || parsed.qualities || [];
        parsed.filtered_content.forEach((item, idx) => {
          if (typeof item === "string") pushUrl(item, quals[idx]);
          else if (item && typeof item === "object") pushUrl(item.file || item.url, item.label || item.quality || quals[idx]);
        });
      }
      // 4. Generic sources / links arrays
      for (const key of ["sources", "links"]) {
        if (Array.isArray(parsed?.[key])) {
          for (const item of parsed[key]) {
            if (typeof item === "string") pushUrl(item, "");
            else if (item && typeof item === "object") pushUrl(item.file || item.url, item.label || item.quality);
          }
        }
      }
      // 5. Direct single file / url field
      if (typeof parsed?.file === "string") pushUrl(parsed.file, parsed.quality || parsed.label);
      if (typeof parsed?.url === "string") pushUrl(parsed.url, parsed.quality || parsed.label);
      if (typeof parsed?.link === "string") pushUrl(parsed.link, parsed.quality || parsed.label);
    } catch {}
  }

  if (out.length > 0) return out;

  // Fallback regex extraction for JWPlayer / raw HTML embeds
  const jwRegex = /file\s*:\s*["'](https?:\/\/[^"']+)["']/gi;
  let m;
  while ((m = jwRegex.exec(trimmed)) !== null) {
    const rest = trimmed.slice(m.index, m.index + 180);
    const lbl = rest.match(/label\s*:\s*["']([^"']+)["']/i)?.[1] || "";
    pushUrl(m[1], lbl);
  }

  if (out.length === 0) {
    const directRegex = /https?:\/\/[^\s"'<>\\]+\.(?:m3u8|mp4)(?:\?[^\s"'<>\\]*)?/gi;
    while ((m = directRegex.exec(trimmed)) !== null) {
      pushUrl(m[0], "");
    }
  }

  return out;
}

export function normalizeQualityLabel(rawQuality, url = "") {
  const combined = `${rawQuality || ""} ${url || ""}`;
  if (/2160|4k/i.test(combined)) return "4K";
  if (/1080|fhd/i.test(combined)) return "1080p";
  if (/720|\bhd\b/i.test(combined)) return "720p";
  if (/480/i.test(combined)) return "480p";
  if (/360/i.test(combined)) return "360p";
  return "720p";
}

/**
 * Pure content-hygiene checks used to keep Animation and Foreign Series clean:
 * - Blocks Japanese anime from leaking into Animation Movies/Series.
 * - Blocks unreleased future movies/series from showing dead 0-server posters.
 * - Blocks Asian (Chinese/Korean/Japanese) dramas from leaking into Western Series.
 */
export function isJapaneseAnimeRaw(raw) {
  if (!raw || typeof raw !== "object") return false;
  const lang = String(raw.original_language || raw.originalLanguage || "").toLowerCase().trim();
  if (lang === "ja") return true;
  const countries = Array.isArray(raw.origin_country) ? raw.origin_country : [];
  if (countries.some((c) => String(c).toUpperCase() === "JP")) return true;
  const origTitle = String(raw.original_title || raw.original_name || raw.titleEn || "");
  if (/[\u3040-\u30FF\u4E00-\u9FFF]/.test(origTitle)) return true;
  return false;
}

export function isUnreleasedDate(dateStr, todayIso) {
  const d = String(dateStr || "").trim().slice(0, 10);
  if (!/^\d{4}-\d{2}-\d{2}$/.test(d)) return false;
  const ref = todayIso || new Date().toISOString().slice(0, 10);
  return d > ref;
}

export function isAsianSeriesSummary(item) {
  if (!item || typeof item !== "object") return false;
  const cat = String(item.categoryLabel || item.category_label || "");
  if (/آسيوية|كورية|صينية|يابانية|أنمي|انمي/.test(cat)) return true;
  const lang = String(item.originalLanguage || item.original_language || "").toLowerCase();
  if (["ja", "ko", "zh", "cn", "th"].includes(lang)) return true;
  const text = `${item.titleAr || item.title_ar || ""} ${item.titleEn || item.title_en || ""}`;
  if (/[\u3040-\u30FF\u4E00-\u9FFF\uAC00-\uD7AF]/.test(text)) return true;
  return false;
}

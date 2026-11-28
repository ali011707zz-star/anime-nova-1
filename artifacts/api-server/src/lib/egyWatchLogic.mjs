/**
 * Pure, dependency-free EgyWatch matching, host classification, JS unpacking,
 * media extraction, HLS quality detection, and content-hygiene logic.
 * Shared across backend (`api-server`) and mobile (`nova-film`).
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
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

// Retained for backward-compat exports; extraction now unpacks directly without slow third-party PHP scrapers.
export const EGYWATCH_HOST_RULES = {};

// Hosts verified to be dead, Cloudflare-blocked (HTTP 403), 404, redirect-hijacked, or empty JSON shells.
const DEAD_HOST_PATTERNS = [
  "googlefasv",
  "googlefasd",
  "fasel-hd",
  "faselhd",
  "vidtube",
  "vidhls",
  "earnvids",
  "streamwish",
  "flaswish",
  "hdup20",
  "hdup400",
  "okprime",
  "mzfi.me",
  "savefiles",
  "hd-vk",
  "arabseed",
  "upns.online",
  "cimanowtv",
  "vfaststream",
  "mwdy.cc",
  "miravd",
  "vidaraa",
  "morencius",
];

/**
 * Unpacks Dean Edwards `eval(function(p,a,c,k,e,d)...)` packed JavaScript blocks
 * used by XFileSharing / JWPlayer video hosts (egybestvid, vidspeed, vidoba, anafast,
 * stmruby, 1vid, film77, mp4plus, uqload, arabveturk, okhd, hanerix, etc.).
 */
export function unpackPackedJs(html) {
  if (!html || typeof html !== "string" || !html.includes("eval(function(p,a,c,k,e,")) {
    return "";
  }
  const out = [];
  const re =
    /eval\(function\(p,a,c,k,e,[dr]\)\{[\s\S]*?\}\(\s*(['"])([\s\S]*?)\1\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(['"])([\s\S]*?)\5\.split\(['"]\|['"]\)/g;
  let m;
  while ((m = re.exec(html)) !== null) {
    try {
      let p = m[2].replace(/\\(['"\\])/g, "$1");
      const a = parseInt(m[3], 10);
      let c = parseInt(m[4], 10);
      const k = m[6].split("|");
      if (!Number.isFinite(a) || a < 2 || a > 62 || !Number.isFinite(c) || c > 20000) continue;
      const encodeBase = (n) => {
        const prefix = n < a ? "" : encodeBase(Math.floor(n / a));
        const rem = n % a;
        return prefix + (rem > 35 ? String.fromCharCode(rem + 29) : rem.toString(36));
      };
      while (c--) {
        if (k[c]) {
          p = p.replace(new RegExp(`\\b${encodeBase(c)}\\b`, "g"), k[c]);
        }
      }
      out.push(p);
    } catch {
      // Ignore malformed packed block
    }
  }
  return out.join("\n");
}

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

function normalizeVideoHeaders(video) {
  const headers = {};
  if (video && typeof video.useragent === "string" && video.useragent.trim()) {
    headers["User-Agent"] = video.useragent.trim();
  }
  if (video && typeof video.header === "string" && video.header.trim()) {
    const h = video.header.trim();
    if (/^https?:\/\//i.test(h)) {
      headers.Referer = h;
    } else if (h.includes(":")) {
      const idx = h.indexOf(":");
      const k = h.slice(0, idx).trim();
      const val = h.slice(idx + 1).trim();
      if (k && val) headers[k] = val;
    }
  }
  return headers;
}

/**
 * Returns true ONLY if the URL itself points to a real media stream (.m3u8 / .mp4 / /hls2/ / .urlset)
 * and NOT an HTML embed webpage (.html, /embed-, /e/, /v/, ?p=...).
 */
export function isDirectPlayableMediaUrl(urlStr) {
  const u = String(urlStr || "").trim();
  if (!/^https?:\/\//i.test(u)) return false;
  if (/\.(html|htm|php|png|jpg|jpeg|webp|gif|svg|vtt|srt|js|css|ico)(\?|$)/i.test(u)) return false;
  if (/\/embed[\/-]|\/embed\.|\/e\/|\/v\/|\?p=\d+/i.test(u)) return false;
  return /\.(m3u8|mp4)(\?|$)|\/hls\d*\/|\.urlset\//i.test(u);
}

/**
 * Classify a raw EgyWatch video entry into one of the 5 user-approved 2-letter server codes:
 * - `TK`: Server Turki (`eisk.badmoussi.com` / `hls.3isk.beauty`) — fast Arabic/Turkish/Dubbed HLS
 * - `EG`: StreamRuby (`stmruby.*` — CinemaScope 1080p/800p HLS) & direct worker feeds (`developer-pro.workers.dev`)
 * - `EB`: EgybestVid (`egybestvid.*` — 720p direct/embed HLS), `1vid.*` (720p), `film77.*` (720p), `mp4plus.*` (direct MP4)
 * - `UQ`: Uqload (`uqload.*` — direct HLS/MP4)
 * - `VS`: Fast XFileSharing HLS mirrors (`v.vidsp.net`, `vidspeed.*`, `vidoba.*`, `anafast.*`, `arabveturk.*`, `okhd.*`, `hanerix.*`, `pluss24.*`)
 *
 * Strictly skips dead/403/404 hosts AND never marks HTML embed pages as `mode: "direct"`.
 */
export function classifyEgyWatchServer(video) {
  if (!video || typeof video !== "object") return null;
  const link = String(video.link || video.url || "").trim();
  if (!link || !/^https?:\/\//i.test(link)) return null;

  const serverRaw = String(video.server || video.name || "").trim();
  const sLower = serverRaw.toLowerCase();
  const host = extractHostName(link);
  if (!host) return null;

  // Immediately skip known dead / Cloudflare-blocked / 404 / redirect-hijacked hosts
  if (
    sLower.includes("server google") ||
    DEAD_HOST_PATTERNS.some((p) => host.includes(p))
  ) {
    return null;
  }

  // Strictly inspect the URL itself — NEVER trust `video.hls === 1` because EgyWatch sets hls=1 on HTML embed URLs!
  const isDirectMedia = isDirectPlayableMediaUrl(link);

  // 1. Server Turki (`TK`) — UA-independent fast Arabic/Turkish/Dubbed HLS (direct on phone, 0% VPS)
  if (host.includes("badmoussi") || host.includes("3isk") || sLower.includes("turki")) {
    if (host.includes("badmoussi")) {
      return {
        code: "TK",
        site: "egywatch_tk",
        label: "السيرفر TK",
        priority: 1,
        mode: "turki_api",
        uaBound: false,
        link,
        serverRaw,
        rule: null,
        headers: normalizeVideoHeaders(video),
      };
    }
    if (isDirectMedia) {
      return {
        code: "TK",
        site: "egywatch_tk",
        label: "السيرفر TK",
        priority: 1,
        mode: "direct",
        uaBound: false,
        link,
        serverRaw,
        rule: null,
        headers: normalizeVideoHeaders(video),
      };
    }
    return null;
  }

  // 2. High-quality `EG`:
  //    - liiivideo (Server VIP⭐ 1080p ABR HLS — UA-independent! Plays directly on Android/iOS with 0% VPS!)
  //    - developer-pro.workers.dev (UA-independent direct/worker feeds)
  //    - stmruby (CinemaScope 1080p/800p — IP+UA-bound, served via VPS hls-proxy with matching Chrome/124 UA)
  if (host.includes("liiivideo")) {
    return {
      code: "EG",
      site: "egywatch_eg",
      label: "السيرفر EG",
      priority: 1,
      mode: isDirectMedia ? "direct" : "embed",
      uaBound: false,
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }
  if (host.includes("developer-pro.workers.dev")) {
    const mode = isDirectMedia
      ? "direct"
      : link.includes("/video?url=")
        ? "json_worker"
        : link.includes("/get-links")
          ? "redirect_worker"
          : null;
    if (!mode) return null;
    return {
      code: "EG",
      site: "egywatch_eg",
      label: "السيرفر EG",
      priority: 2,
      mode,
      uaBound: false,
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }
  if (host.includes("stmruby") || host.includes("streamruby")) {
    return {
      code: "EG",
      site: "egywatch_eg",
      label: "السيرفر EG",
      priority: 2,
      mode: isDirectMedia ? "direct" : "embed",
      uaBound: true,
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 3. `EB`:
  //    - 1vid, film77, mp4plus: UA-independent (direct on phone)
  //    - egybestvid: IP+UA-bound (VPS hls-proxy with matching Chrome/124 UA -> 100% 200 OK!)
  if (
    host.includes("egybestvid") ||
    host.includes("1vid.") ||
    host.includes("film77.") ||
    host.includes("mp4plus.")
  ) {
    const isUaBound = host.includes("egybestvid");
    return {
      code: "EB",
      site: "egywatch_eb",
      label: "السيرفر EB",
      priority: host.includes("1vid.") || host.includes("mp4plus.") ? 2 : 3,
      mode: isDirectMedia ? "direct" : "embed",
      uaBound: isUaBound,
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 4. `UQ` (Uqload direct HLS/MP4 — UA-independent)
  if (host.includes("uqload")) {
    return {
      code: "UQ",
      site: "egywatch_uq",
      label: "السيرفر UQ",
      priority: 4,
      mode: isDirectMedia ? "direct" : "embed",
      uaBound: false,
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 5. `VS` (XFileSharing HLS mirrors — IP+UA-bound -> VPS hls-proxy with Chrome/124 UA -> 100% 200 OK!)
  if (
    host.includes("vidsp.") ||
    host.includes("vidspeed.") ||
    host.includes("vidoba.") ||
    host.includes("anafast.") ||
    host.includes("arabveturk.") ||
    host.includes("okhd.") ||
    host.includes("hanerix.") ||
    host.includes("pluss24.")
  ) {
    return {
      code: "VS",
      site: "egywatch_vs",
      label: "السيرفر VS",
      priority: 5,
      mode: isDirectMedia ? "direct" : "embed",
      uaBound: true,
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }

  // 6. Direct playable .m3u8/.mp4 on any remaining non-dead host
  if (isDirectMedia) {
    return {
      code: "EB",
      site: "egywatch_eb",
      label: "السيرفر EB",
      priority: 6,
      mode: "direct",
      uaBound: false,
      link,
      serverRaw,
      rule: null,
      headers: normalizeVideoHeaders(video),
    };
  }

  return null;
}

export function pickBestEgyWatchMatch(candidates, target) {
  if (!Array.isArray(candidates) || candidates.length === 0) return null;
  const targetTmdbId = Number(target?.tmdbId || 0) || 0;
  const wantMovie = target?.tmdbType === "movie" || target?.type === "movie";
  const wantDubbed = Boolean(target?.preferDubbed);
  const targetYear = Number(target?.year || 0) || 0;

  const targetTitles = [target?.titleAr, target?.titleEn, target?.title]
    .map((t) => normalizeEgyTitle(t))
    .filter((t) => t.length >= 2);

  let best = null;

  for (const item of candidates) {
    if (!item || typeof item !== "object" || !item.id) continue;
    const rawType = String(item.type || "").toLowerCase();
    const isItemMovie = rawType === "movie";
    const isItemAnime = rawType === "anime";
    const isItemSeries = rawType === "serie" || rawType === "series" || rawType === "tv" || isItemAnime;

    if (wantMovie && !isItemMovie) continue;
    if (!wantMovie && !isItemSeries) continue;

    const itemTmdbId = Number(item.tmdb_id || item.tmdbId || 0) || 0;
    const rawName = String(item.name || item.title || item.original_name || "").trim();
    const normName = normalizeEgyTitle(rawName);
    const normOrig = normalizeEgyTitle(item.original_name || "");
    const isDubTitle = isItemAnime || /مدبلج/.test(rawName);

    let score = 0;

    if (targetTmdbId > 0 && itemTmdbId === targetTmdbId) {
      score += 1000;
    }

    if (targetTitles.length > 0) {
      let bestTitleScore = 0;
      for (const tt of targetTitles) {
        for (const cand of [normName, normOrig]) {
          if (!cand) continue;
          if (cand === tt) {
            bestTitleScore = Math.max(bestTitleScore, 500);
          } else if (cand.length >= 4 && tt.length >= 4 && (cand.includes(tt) || tt.includes(cand))) {
            const ratio = Math.min(cand.length, tt.length) / Math.max(cand.length, tt.length);
            bestTitleScore = Math.max(bestTitleScore, Math.round(280 + ratio * 180));
          } else {
            const aTokens = new Set(tt.split(" ").filter((w) => w.length >= 2));
            const bTokens = new Set(cand.split(" ").filter((w) => w.length >= 2));
            if (aTokens.size === 0 || bTokens.size === 0) continue;
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

    if (score < 260) continue;

    if (wantDubbed) {
      score += isDubTitle ? 120 : -80;
    } else {
      score += isDubTitle ? -60 : 40;
    }

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
 * Parse ONLY direct playable media URLs (.m3u8 / .mp4) from Server Turki JSON,
 * Cloudflare JSON workers, or raw/Dean-Edwards-packed JWPlayer HTML embeds.
 * Strictly rejects HTML embed wrappers (`isDirect: false`, `/embed/`, `.html`).
 */
export function parseExtractedMediaLinks(body) {
  if (!body || typeof body !== "string") return [];
  const trimmed = body.trim();
  if (!trimmed) return [];

  const out = [];
  const seen = new Set();

  const pushUrl = (rawUrl, rawQuality) => {
    const u = String(rawUrl || "").trim().replace(/\\\//g, "/");
    if (!isDirectPlayableMediaUrl(u)) return;
    const dedupKey = u.includes(".m3u8") ? u.split("?")[0] : u;
    if (seen.has(dedupKey)) return;
    seen.add(dedupKey);
    const quality = normalizeQualityLabel(rawQuality, u);
    const kind = u.includes(".m3u8") || /\/hls\d*\//i.test(u) || u.includes(".urlset") ? "hls" : "direct";
    out.push({ url: u, quality, kind });
  };

  if (trimmed.startsWith("{") || trimmed.startsWith("[")) {
    try {
      const parsed = JSON.parse(trimmed);
      if (Array.isArray(parsed?.data)) {
        for (const entry of parsed.data) {
          if (typeof entry?.data === "string" && entry.data.trim().startsWith("{")) {
            try {
              const inner = JSON.parse(entry.data);
              // Server Turki returns `isDirect: false` for HTML embed iframes — skip them!
              if (inner?.isDirect === false) continue;
              if (inner?.url) pushUrl(inner.url, inner.quality || entry.name);
              if (inner?.file) pushUrl(inner.file, inner.quality || entry.name);
            } catch {}
          } else if (entry?.url && entry?.isDirect !== false) {
            pushUrl(entry.url, entry.quality || entry.label);
          }
        }
      }
      if (Array.isArray(parsed?.availableQualities)) {
        for (const q of parsed.availableQualities) {
          pushUrl(q?.url || q?.file, q?.quality || q?.label);
        }
      }
      if (Array.isArray(parsed?.filtered_content)) {
        const quals = parsed.Quality || parsed.qualities || [];
        parsed.filtered_content.forEach((item, idx) => {
          if (typeof item === "string") pushUrl(item, quals[idx]);
          else if (item && typeof item === "object") pushUrl(item.file || item.url, item.label || item.quality || quals[idx]);
        });
      }
      for (const key of ["sources", "links"]) {
        if (Array.isArray(parsed?.[key])) {
          for (const item of parsed[key]) {
            if (typeof item === "string") pushUrl(item, "");
            else if (item && typeof item === "object") pushUrl(item.file || item.url, item.label || item.quality);
          }
        }
      }
      if (typeof parsed?.file === "string") pushUrl(parsed.file, parsed.quality || parsed.label);
      if (typeof parsed?.url === "string") pushUrl(parsed.url, parsed.quality || parsed.label);
      if (typeof parsed?.link === "string") pushUrl(parsed.link, parsed.quality || parsed.label);
    } catch {}
  }

  if (out.length > 0) return out;

  // Unpack any Dean Edwards p,a,c,k,e,d script blocks before scanning HTML
  const unpacked = unpackPackedJs(trimmed);
  const haystack = unpacked ? `${trimmed}\n${unpacked}` : trimmed;

  const jwRegex = /file\s*:\s*["'](https?:\/\/[^"']+)["']/gi;
  let m;
  while ((m = jwRegex.exec(haystack)) !== null) {
    const rest = haystack.slice(m.index, m.index + 200);
    const lbl = rest.match(/label\s*:\s*["']([^"']+)["']/i)?.[1] || "";
    pushUrl(m[1], lbl);
  }

  if (out.length === 0) {
    const directRegex = /https?:\/\/[^\s"'<>\\]+\.(?:m3u8|mp4)(?:\?[^\s"'<>\\]*)?/gi;
    while ((m = directRegex.exec(haystack)) !== null) {
      pushUrl(m[0], "");
    }
  }

  return out;
}

/**
 * Inspect `#EXT-X-STREAM-INF` lines inside a live HLS master manifest to determine
 * the true highest resolution (handles CinemaScope 1920x800 as 1080p, 1280x720 as 720p,
 * 854x480 / 640x360 as 480p).
 */
export function detectQualityFromM3u8(m3u8Text, fallbackQuality = "720p") {
  if (!m3u8Text || typeof m3u8Text !== "string") return fallbackQuality;
  let maxW = 0;
  let maxH = 0;
  const re = /RESOLUTION=(\d+)x(\d+)/gi;
  let m;
  while ((m = re.exec(m3u8Text)) !== null) {
    const w = parseInt(m[1], 10) || 0;
    const h = parseInt(m[2], 10) || 0;
    if (w > maxW) maxW = w;
    if (h > maxH) maxH = h;
  }
  if (maxW === 0 && maxH === 0) return fallbackQuality;
  if (maxW >= 3000 || maxH >= 1800) return "4K";
  if (maxW >= 1600 || maxH >= 900 || (maxW >= 1500 && maxH >= 780)) return "1080p";
  if (maxW >= 1100 || maxH >= 600) return "720p";
  return "480p";
}

export function normalizeQualityLabel(rawQuality, url = "") {
  const q = String(rawQuality || "").trim();
  const u = String(url || "").trim();
  if (/(?:2160|\b4k\b)/i.test(q) || /[/_.-]2160p?[/_.-]/i.test(u)) return "4K";
  if (/(?:1080|\bfhd\b)/i.test(q) || /[/_.-]1080p?[/_.-]/i.test(u)) return "1080p";
  if (/(?:720|\bhd\b)/i.test(q) || /[/_.-]720p?[/_.-]/i.test(u)) return "720p";
  if (/(?:480|360|\bsd\b)/i.test(q) || /[/_.-](?:480|360)p?[/_.-]/i.test(u)) return "480p";
  return "720p";
}

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

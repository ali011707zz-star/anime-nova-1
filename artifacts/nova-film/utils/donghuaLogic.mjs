/**
 * Pure logic for Donghua direct-on-phone extraction (AnimeXin + AnimeKhor),
 * direct video host parsers (Ok.ru, Odysee, StreamRuby/Nuvorel, Dailymotion),
 * OpenSubtitles human Arabic subtitle matching, and universal VTT/SRT/ASS -> WebVTT conversion.
 *
 * Zero Node/RN runtime imports so it can be unit-tested cleanly with `node --test`.
 */

function decodeHtmlEntities(str) {
  if (!str) return "";
  return String(str)
    .replace(/&amp;/g, "&")
    .replace(/&quot;/g, '"')
    .replace(/&#0*39;|&apos;/g, "'")
    .replace(/&#8217;|&#x2019;/g, "'")
    .replace(/&#8211;|&#x2013;/g, "-")
    .replace(/&#8212;|&#x2014;/g, "—")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&nbsp;/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function stripTags(html) {
  return decodeHtmlEntities(String(html || "").replace(/<[^>]+>/g, " "));
}

function decodeBase64Utf8(b64) {
  const clean = String(b64 || "").replace(/\s+/g, "");
  if (!clean) return "";
  if (typeof globalThis.atob === "function") {
    try {
      const bin = globalThis.atob(clean);
      const bytes = new Uint8Array(bin.length);
      for (let i = 0; i < bin.length; i++) bytes[i] = bin.charCodeAt(i);
      if (typeof TextDecoder !== "undefined") {
        return new TextDecoder("utf-8", { fatal: false }).decode(bytes);
      }
      return bin;
    } catch {
      // fall through
    }
  }
  if (typeof Buffer !== "undefined") {
    try {
      return Buffer.from(clean, "base64").toString("utf8");
    } catch {
      return "";
    }
  }
  return "";
}

const B64_ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

function decodeBase64Latin1(b64) {
  const clean = String(b64 || "").replace(/[^A-Za-z0-9+/=]/g, "");
  if (!clean) return "";
  if (typeof globalThis.atob === "function") {
    try {
      return globalThis.atob(clean);
    } catch {
      // fall through
    }
  }
  if (typeof Buffer !== "undefined") {
    try {
      return Buffer.from(clean, "base64").toString("latin1");
    } catch {
      // fall through
    }
  }
  let out = "";
  let i = 0;
  while (i < clean.length) {
    const e1 = B64_ALPHA.indexOf(clean[i++]);
    const e2 = B64_ALPHA.indexOf(clean[i++]);
    const c3 = clean[i++];
    const c4 = clean[i++];
    const e3 = c3 === "=" || !c3 ? -1 : B64_ALPHA.indexOf(c3);
    const e4 = c4 === "=" || !c4 ? -1 : B64_ALPHA.indexOf(c4);
    if (e1 < 0 || e2 < 0) break;
    out += String.fromCharCode((e1 << 2) | (e2 >> 4));
    if (e3 >= 0) out += String.fromCharCode(((e2 & 15) << 4) | (e3 >> 2));
    if (e4 >= 0) out += String.fromCharCode(((e3 & 3) << 6) | e4);
  }
  return out;
}

function getDonghuaSourceBaseUrl(source) {
  if (source === "animekhor") return "https://animekhor.org/";
  if (source === "donghuastream") return "https://donghuastream.org/";
  return "https://animexin.dev/";
}

function slugFromUrl(url) {
  const clean = String(url || "").replace(/[?#].*$/, "").replace(/\/+$/, "");
  const seg = clean.split("/").pop() || "";
  return seg.toLowerCase();
}

function normalizeImageUrl(src, baseUrl) {
  const raw = decodeHtmlEntities(src || "").trim();
  if (!raw || raw.startsWith("data:")) return "";
  if (raw.startsWith("//")) return `https:${raw}`;
  if (/^https?:\/\//i.test(raw)) return raw;
  try {
    return new URL(raw, baseUrl).toString();
  } catch {
    return raw;
  }
}

/**
 * Parse Animestream-theme catalog/search pages (shared by AnimeXin & AnimeKhor).
 */
export function parseDonghuaCatalogHtml(html, source) {
  const baseUrl = getDonghuaSourceBaseUrl(source);
  const items = [];
  const seen = new Set();
  const articleRe = /<article\b[^>]*class="[^"]*\bbs\b[^"]*"[^>]*>([\s\S]*?)<\/article>/gi;
  let match;

  while ((match = articleRe.exec(String(html || ""))) !== null) {
    const block = match[1];
    const linkMatch = block.match(/<a\b[^>]*href="([^"]+)"[^>]*>/i);
    if (!linkMatch) continue;
    const rawUrl = decodeHtmlEntities(linkMatch[1]);
    if (!rawUrl || seen.has(rawUrl)) continue;
    // Skip non-series utility links
    if (/\/(schedule|bookmark|blog|privacy|dmca|contact|how-to-download|help-information|release-date|genres|a-z-lists|watch-history)\/?$/i.test(rawUrl)) {
      continue;
    }

    const titleAttr = (block.match(/<a\b[^>]*title="([^"]+)"/i) || [])[1];
    const h2Title = (block.match(/<h2[^>]*>([\s\S]*?)<\/h2>/i) || [])[1];
    const ttTitle = (block.match(/<div[^>]*class="[^"]*\btt\b[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1];
    const title = decodeHtmlEntities(titleAttr || stripTags(h2Title) || stripTags(ttTitle));
    if (!title) continue;

    // Pick actual image URL (prefer data-src / data-lazy-src over placeholder)
    const imgTag = (block.match(/<img\b[^>]*>/i) || [])[0] || "";
    const imgSrc =
      (imgTag.match(/\bdata-lazy-src="([^"]+)"/i) || [])[1] ||
      (imgTag.match(/\bdata-src="([^"]+)"/i) || [])[1] ||
      (imgTag.match(/\bsrc="([^"]+)"/i) || [])[1] ||
      "";
    const poster = normalizeImageUrl(imgSrc, baseUrl);
    const status = stripTags((block.match(/<span[^>]*class="[^"]*\bepx\b[^"]*"[^>]*>([\s\S]*?)<\/span>/i) || [])[1] || "");
    const type = stripTags((block.match(/<div[^>]*class="[^"]*\btypez\b[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1] || "");
    const slug = slugFromUrl(rawUrl);

    seen.add(rawUrl);
    items.push({
      id: `${source}:${slug}`,
      source,
      slug,
      url: rawUrl,
      title,
      poster,
      status: status || "مستمر",
      type: type || "دونغهوا",
    });
  }

  return items;
}

/**
 * Parse Animestream-theme series detail page (title, poster, synopsis, genres, episodes).
 */
export function parseDonghuaDetailHtml(html, source, pageUrl) {
  const baseUrl = getDonghuaSourceBaseUrl(source);
  const text = String(html || "");

  const h1 = stripTags((text.match(/<h1[^>]*class="[^"]*entry-title[^"]*"[^>]*>([\s\S]*?)<\/h1>/i) || [])[1] || "");
  const ogTitle = decodeHtmlEntities((text.match(/<meta[^>]+property="og:title"[^>]+content="([^"]+)"/i) || [])[1] || "");
  const title = (h1 || ogTitle).replace(/\s*[-–|]\s*(AnimeXin|AnimeKhor|DonghuaStream).*$/i, "").trim();

  const thumbBlock = (text.match(/<div[^>]*class="[^"]*\bthumb\b[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1] || "";
  const thumbImg = (thumbBlock.match(/<img\b[^>]*>/i) || [])[0] || "";
  const posterRaw =
    (thumbImg.match(/\bdata-lazy-src="([^"]+)"/i) || [])[1] ||
    (thumbImg.match(/\bdata-src="([^"]+)"/i) || [])[1] ||
    (thumbImg.match(/\bsrc="([^"]+)"/i) || [])[1] ||
    (text.match(/<meta[^>]+property="og:image"[^>]+content="([^"]+)"/i) || [])[1] ||
    "";
  const poster = normalizeImageUrl(posterRaw, baseUrl);

  const synBlock =
    (text.match(/<div[^>]*class="[^"]*entry-content[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1] ||
    (text.match(/<div[^>]*class="[^"]*synp[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1] ||
    "";
  const synopsis = stripTags(synBlock)
    .replace(/^English\s+/i, "")
    .replace(/\s*Indonesian\s+[\s\S]*$/i, "")
    .trim();

  const statusMatch = text.match(/<b>\s*Status:\s*<\/b>\s*([^<]+)/i) || text.match(/Status:\s*<\/span>\s*([^<]+)/i);
  const status = decodeHtmlEntities(statusMatch ? statusMatch[1] : "");

  const genres = [];
  const genreBlock = (text.match(/<div[^>]*class="[^"]*\bgenxed\b[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1] || "";
  for (const gm of genreBlock.matchAll(/<a[^>]*>([\s\S]*?)<\/a>/gi)) {
    const g = stripTags(gm[1]);
    if (g && !genres.includes(g)) genres.push(g);
  }

  const episodes = [];
  const seenEpUrls = new Set();
  const epListBlock = (text.match(/<div[^>]*class="[^"]*\beplister\b[^"]*"[^>]*>([\s\S]*?)<\/ul>/i) || [])[1] || text;
  const liRe = /<li\b[^>]*>([\s\S]*?)<\/li>/gi;
  let lm;
  while ((lm = liRe.exec(epListBlock)) !== null) {
    const li = lm[1];
    const hrefMatch = li.match(/<a\b[^>]*href="([^"]+)"/i);
    if (!hrefMatch) continue;
    const epUrl = decodeHtmlEntities(hrefMatch[1]);
    if (!epUrl || seenEpUrls.has(epUrl) || !/episode|ep-|movie/i.test(epUrl)) continue;
    const numRaw = stripTags((li.match(/<div[^>]*class="[^"]*\bepl-num\b[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1] || "");
    const epTitle = stripTags((li.match(/<div[^>]*class="[^"]*\bepl-title\b[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1] || "");
    const epDate = stripTags((li.match(/<div[^>]*class="[^"]*\bepl-date\b[^"]*"[^>]*>([\s\S]*?)<\/div>/i) || [])[1] || "");
    const rangeMatch =
      numRaw.match(/(\d+)\s*(?:to|-|–|~)\s*(\d+)/i) ||
      epUrl.match(/episode[-_]?(\d+)[-_](?:to[-_])?(\d+)/i);
    let parsedNum = 0;
    let rangeEnd = undefined;
    if (rangeMatch) {
      const startN = parseInt(rangeMatch[1], 10);
      const endN = parseInt(rangeMatch[2], 10);
      if (Number.isFinite(startN) && startN > 0) {
        parsedNum = startN;
        if (Number.isFinite(endN) && endN > startN && endN - startN <= 10) {
          rangeEnd = endN;
        }
      }
    }
    if (!parsedNum) {
      const firstNum = numRaw.match(/(\d+(?:\.\d+)?)/);
      const urlNum = epUrl.match(/episode[-_]?(\d+(?:\.\d+)?)/i);
      parsedNum =
        (firstNum ? parseFloat(firstNum[1]) : 0) ||
        (urlNum ? parseFloat(urlNum[1]) : 0) ||
        (episodes.length + 1);
    }
    const isMovie = /\bmovie\b|\bfilm\b/i.test(`${numRaw} ${epTitle} ${epUrl}`);

    seenEpUrls.add(epUrl);
    episodes.push({
      number: parsedNum,
      ...(rangeEnd ? { rangeEnd } : {}),
      ...(isMovie ? { isMovie: true } : {}),
      numberLabel: numRaw || String(parsedNum),
      title: epTitle || `الحلقة ${parsedNum}`,
      date: epDate,
      url: epUrl,
    });
  }

  return {
    id: `${source}:${slugFromUrl(pageUrl)}`,
    source,
    slug: slugFromUrl(pageUrl),
    url: pageUrl,
    title: title || slugFromUrl(pageUrl),
    poster,
    synopsis,
    status: status || "مستمر",
    genres,
    episodes,
  };
}

/**
 * Classify mirror iframe URL & label into direct-on-phone extractor hosts.
 */
export function parseDonghuaEpisodeMirrors(html) {
  const mirrors = [];
  const seen = new Set();
  const optRe = /<option\b[^>]*value="([^"]{12,})"[^>]*>([\s\S]*?)<\/option>/gi;
  let m;

  while ((m = optRe.exec(String(html || ""))) !== null) {
    const b64 = m[1].trim();
    const label = stripTags(m[2]);
    const decoded = decodeBase64Utf8(b64);
    const srcMatch = decoded.match(/\bsrc=["']([^"']+)["']/i);
    if (!srcMatch) continue;
    let embedUrl = decodeHtmlEntities(srcMatch[1]).trim();
    if (embedUrl.startsWith("//")) embedUrl = `https:${embedUrl}`;
    if (!/^https?:\/\//i.test(embedUrl) || seen.has(embedUrl)) continue;

    let host = "other";
    const lowerUrl = embedUrl.toLowerCase();
    const lowerLabel = label.toLowerCase();
    if (/dailymotion\.com|dai\.ly/i.test(lowerUrl)) {
      host = /all\s*sub|multi\s*sub/i.test(lowerLabel) ? "dailymotion_allsub" : "dailymotion";
    } else if (/ok\.ru|odnoklassniki/i.test(lowerUrl)) {
      host = "okru";
    } else if (/gdriveplayer\./i.test(lowerUrl)) {
      host = "gdriveplayer";
    } else if (/odysee\.com/i.test(lowerUrl)) {
      host = "odysee";
    } else if (/nuvorel\.top|streamruby|rubyvid|rubystm/i.test(lowerUrl)) {
      host = "streamruby";
    } else if (/filelions|vidhide|ahvsh|streamwish|wishfast|dood|d000d|doods|streamplay/i.test(lowerUrl)) {
      host = "direct_embed";
    } else if (/rumble\.com/i.test(lowerUrl)) {
      host = "rumble";
    }

    // Prefer English/Arabic/AllSub/MultiSub over foreign-only hardsubs (Indonesia, Portuguese, Turkish, Spanish, Italian, etc.)
    const hasEnOrArOrMulti = /\beng(?:lish)?\b|\barab(?:ic)?\b|all\s*sub|multi\s*sub/i.test(lowerLabel);
    const hasForeignOnlyLang = /\b(?:indo(?:nesia)?|portugu(?:ese|es)|turkish|spanish|espanol|italian|vietnamese|thai|french|german|russian|malay|tagalog|hindi|khmer|burmese|polish|brazil)\b/i.test(lowerLabel);
    const isIndoOnly = hasForeignOnlyLang && !hasEnOrArOrMulti;
    const isMultiSub = /all\s*sub|multi\s*sub/i.test(lowerLabel);
    const isHardsubEng = /\bhardsub\b.*\beng|\beng.*\bhardsub|\b\[english\]/i.test(lowerLabel);

    seen.add(embedUrl);
    mirrors.push({
      label,
      embedUrl,
      host,
      isIndoOnly,
      isMultiSub,
      isHardsubEng,
    });
  }

  return mirrors;
}

/**
 * Parse Ok.ru videoembed HTML (`data-options`) into direct HLS + MP4 quality links.
 */
export function parseOkRuEmbedHtml(html) {
  const m = String(html || "").match(/data-options="([^"]+)"/i);
  if (!m) return { hlsUrl: null, videos: [] };
  try {
    const decoded = m[1].replace(/&quot;/g, '"').replace(/&amp;/g, "&");
    const opts = JSON.parse(decoded);
    const rawMeta = opts?.flashvars?.metadata;
    const meta = typeof rawMeta === "string" ? JSON.parse(rawMeta) : rawMeta;
    if (!meta || typeof meta !== "object") return { hlsUrl: null, videos: [] };

    const hlsUrl = meta.hlsManifestUrl || meta.ondemandHls || null;
    const qualityMap = {
      ultra: "2160p",
      quad: "1440p",
      full: "1080p",
      hd: "720p",
      sd: "480p",
      low: "360p",
      lowest: "240p",
      mobile: "144p",
    };
    const videos = Array.isArray(meta.videos)
      ? meta.videos
          .filter((v) => v && typeof v.url === "string" && /^https?:\/\//i.test(v.url))
          .map((v) => ({
            quality: qualityMap[String(v.name || "").toLowerCase()] || String(v.name || "720p"),
            url: v.url,
          }))
      : [];
    return { hlsUrl, videos };
  } catch {
    return { hlsUrl: null, videos: [] };
  }
}

/**
 * Parse Odysee embed HTML into direct MP4 / HLS stream URL.
 */
export function parseOdyseeEmbedHtml(html) {
  const text = String(html || "");
  const contentUrl = (text.match(/"contentUrl"\s*:\s*"(https?:[^"]+)"/i) || [])[1];
  if (contentUrl) return contentUrl.replace(/\\\//g, "/");
  const direct = (text.match(/https?:\/\/player\.odycdn\.com\/[^\s"'\\]+(?:\.mp4|\.m3u8)[^\s"'\\]*/i) || [])[0];
  return direct || null;
}

/**
 * Parse StreamRuby / Nuvorel embed HTML into master.m3u8 + external subtitle tracks.
 */
export function parseStreamRubyEmbedHtml(html) {
  const text = String(html || "");
  const m3u8 = (text.match(/https?:\/\/[^\s"'<>]+\.m3u8[^\s"'<>]*/i) || [])[0] || null;
  const tracks = [];
  const seen = new Set();
  for (const tm of text.matchAll(/file\s*:\s*["'](https?:\/\/[^"']+\.(?:vtt|srt)[^"']*)["'][^}]*label\s*:\s*["']([^"']+)["']/gi)) {
    const url = tm[1];
    const label = decodeHtmlEntities(tm[2]);
    if (!seen.has(url)) {
      seen.add(url);
      tracks.push({ url, label, isArabic: /arab|عرب|_ar\./i.test(`${label} ${url}`), isEnglish: /eng|_en\./i.test(`${label} ${url}`) });
    }
  }
  return { m3u8, tracks };
}

/**
 * Decode gdriveplayer.to embed HTML (`var k="...", b=atob("...")` XOR payload)
 * into a directly playable HLS playlist URL (or MP4 URL).
 */
export function parseGdrivePlayerEmbedHtml(html, embedUrl = "https://gdriveplayer.to/") {
  const text = String(html || "");
  if (!text) return { hlsUrl: null, mp4Url: null };

  const resolveRel = (raw) => {
    const clean = String(raw || "").replace(/\\\//g, "/").trim();
    if (!clean) return null;
    if (clean.startsWith("//")) return `https:${clean}`;
    if (/^https?:\/\//i.test(clean)) return clean;
    try {
      return new URL(clean, embedUrl).toString();
    } catch {
      return null;
    }
  };

  let decoded = "";
  const xorMatch = text.match(/var\s+k\s*=\s*["']([^"']+)["']\s*,\s*b\s*=\s*atob\(["']([^"']+)["']\)/i);
  if (xorMatch) {
    const key = xorMatch[1];
    const bin = decodeBase64Latin1(xorMatch[2]);
    if (key && bin) {
      let out = "";
      for (let i = 0; i < bin.length; i++) {
        out += String.fromCharCode(bin.charCodeAt(i) ^ key.charCodeAt(i % key.length));
      }
      decoded = out;
    }
  }

  const hay = decoded || text;
  const hlsVar = (hay.match(/\bHLS\s*=\s*["']([^"']+)["']/i) || [])[1];
  const directM3u8 = (hay.match(/https?:\/\/[^\s"'<>\\]+\.m3u8[^\s"'<>\\]*/i) || [])[0];
  const directMp4 = (hay.match(/https?:\/\/[^\s"'<>\\]+\.mp4[^\s"'<>\\]*/i) || [])[0];

  return {
    hlsUrl: resolveRel(hlsVar) || resolveRel(directM3u8),
    mp4Url: resolveRel(directMp4),
  };
}

/**
 * Extract Dailymotion video ID from embed URL and parse metadata JSON for Arabic/English SRT & HLS.
 */
export function extractDailymotionVideoId(embedUrl) {
  const u = String(embedUrl || "");
  const q = u.match(/[?&]video=([a-zA-Z0-9]+)/i);
  if (q) return q[1];
  const p = u.match(/\/video\/([a-zA-Z0-9]+)/i);
  return p ? p[1] : null;
}

export function parseDailymotionMetadata(json) {
  if (!json || typeof json !== "object") return { arabicSubUrl: null, englishSubUrl: null, hlsUrl: null };
  const subs = json.subtitles?.data || {};
  const arUrls = subs.ar?.urls || subs["ar-SA"]?.urls || subs["ar-EG"]?.urls || [];
  const enUrls = subs.en?.urls || subs["en-US"]?.urls || subs["en-auto"]?.urls || [];
  const hlsUrl = json.qualities?.auto?.[0]?.url || null;
  return {
    arabicSubUrl: Array.isArray(arUrls) && arUrls[0] ? String(arUrls[0]) : null,
    englishSubUrl: Array.isArray(enUrls) && enUrls[0] ? String(enUrls[0]) : null,
    hlsUrl: typeof hlsUrl === "string" ? hlsUrl : null,
  };
}

/**
 * Score & pick the best human Arabic subtitle from OpenSubtitles REST results.
 * Strips `.gz` from `SubDownloadLink` so React Native fetches plain UTF-8 text directly.
 */
export function selectBestOpenSubtitleMatch(results, { title = "", episode = 0, season = 1 } = {}) {
  if (!Array.isArray(results) || results.length === 0) return null;
  const epNum = Number(episode) || 0;
  const seasonNum = Number(season) || 1;
  const normTitle = String(title || "").toLowerCase().replace(/[^a-z0-9\s]/g, " ").trim();
  const titleWords = normTitle.split(/\s+/).filter((w) => w.length >= 3);

  let best = null;
  let bestScore = -Infinity;

  for (const item of results) {
    if (!item || typeof item !== "object") continue;
    const rawDl = String(item.SubDownloadLink || "").trim();
    if (!rawDl) continue;
    const lang = String(item.ISO639 || item.SubLanguageID || item.LanguageName || "").toLowerCase();
    if (lang && !/^(ar|ara|arabic)$/.test(lang)) continue;

    const fmt = String(item.SubFormat || "").toLowerCase();
    if (fmt && !["srt", "vtt", "ass", "ssa"].includes(fmt)) continue;

    const fileName = String(item.SubFileName || "");
    const movieName = String(item.MovieName || "");
    const hay = `${fileName} ${movieName}`.toLowerCase();

    let score = 0;
    const isHuman = String(item.SubAutoTranslation || "0") === "0";
    if (isHuman) score += 120;
    if (String(item.SubFromTrusted || "0") === "1") score += 35;
    if (fmt === "srt" || fmt === "vtt") score += 20;
    else if (fmt === "ass" || fmt === "ssa") score += 12;
    if (/utf-?8/i.test(String(item.SubEncoding || ""))) score += 15;

    // Avoid unrelated spin-offs (e.g. "Lego One Piece" when looking for "One Piece")
    if (/\blego\b|\bparody\b|\babridged\b/i.test(hay) && !/\blego\b|\bparody\b|\babridged\b/i.test(normTitle)) {
      score -= 180;
    }

    // Title word overlap
    if (titleWords.length > 0) {
      let matched = 0;
      for (const w of titleWords) {
        if (hay.includes(w)) matched++;
      }
      const ratio = matched / titleWords.length;
      score += Math.round(ratio * 60);
      if (ratio === 0) score -= 90;
    }

    // Exact episode number matching
    if (epNum > 0) {
      const itemEp = Number(item.SeriesEpisode || 0);
      const itemSeason = Number(item.SeriesSeason || 0);
      const pad2 = String(epNum).padStart(2, "0");
      const epRegex = new RegExp(`(?:s0?${seasonNum}e0?${epNum}|\\bep(?:isode)?\\s*0?${epNum}\\b|\\be0?${epNum}\\b|-\\s*0?${epNum}\\b|\\b${pad2}\\.srt)`, "i");
      if (itemEp === epNum) {
        score += 90;
        if (itemSeason === seasonNum) score += 25;
      } else if (epRegex.test(hay)) {
        score += 75;
      } else if (itemEp > 0 && itemEp !== epNum) {
        // Wrong episode — skip!
        continue;
      } else {
        score -= 40;
      }
    }

    const dlCount = Number(item.SubDownloadsCnt || 0);
    if (dlCount > 0) score += Math.min(25, Math.log10(dlCount + 1) * 5);

    if (score > bestScore) {
      bestScore = score;
      best = {
        url: rawDl.replace(/\.gz$/i, ""),
        fileName,
        movieName,
        format: fmt || "srt",
        encoding: String(item.SubEncoding || "UTF-8"),
        isHuman,
        isTrusted: String(item.SubFromTrusted || "0") === "1",
        downloads: dlCount,
        score,
      };
    }
  }

  // Reject low-confidence mismatches
  if (!best || best.score < 80) return null;
  return best;
}

function assTimeToVtt(t) {
  // ASS format: H:MM:SS.cc (centiseconds) -> HH:MM:SS.mmm
  const m = String(t || "").trim().match(/^(\d+):(\d{2}):(\d{2})[.,](\d{1,3})$/);
  if (!m) return null;
  const hh = m[1].padStart(2, "0");
  const mm = m[2];
  const ss = m[3];
  const ms = m[4].length === 2 ? `${m[4]}0` : m[4].padEnd(3, "0");
  return `${hh}:${mm}:${ss}.${ms}`;
}

/**
 * Convert WebVTT, SRT (with comma timestamps), or ASS/SSA into standard WebVTT.
 */
export function convertSubtitleToVtt(rawText) {
  const clean = String(rawText || "").replace(/^\uFEFF/, "").replace(/\r\n/g, "\n").replace(/\r/g, "\n").trim();
  if (!clean) return "";

  // 1. Already WebVTT
  if (/^WEBVTT\b/i.test(clean)) return `${clean}\n`;

  // 2. ASS / SSA format
  if (/^\[Script Info\]/im.test(clean) || /^Dialogue:\s*/im.test(clean)) {
    const cues = [];
    for (const line of clean.split("\n")) {
      if (!/^Dialogue:\s*/i.test(line)) continue;
      // Dialogue: Layer,Start,End,Style,Name,MarginL,MarginR,MarginV,Effect,Text
      const body = line.replace(/^Dialogue:\s*/i, "");
      const parts = body.split(",");
      if (parts.length < 10) continue;
      const start = assTimeToVtt(parts[1]);
      const end = assTimeToVtt(parts[2]);
      if (!start || !end) continue;
      const rawContent = parts.slice(9).join(",");
      const text = rawContent
        .replace(/\{[^}]*\}/g, "")
        .replace(/\\N|\\n/g, "\n")
        .replace(/\\h/g, " ")
        .trim();
      if (text) cues.push(`${start} --> ${end}\n${text}`);
    }
    return cues.length > 0 ? `WEBVTT\n\n${cues.join("\n\n")}\n` : "";
  }

  // 3. SRT format (normalize comma timestamps to dot & drop sequence numbers)
  const normalized = clean.replace(/(\d{1,2}:\d{2}:\d{2}),(\d{3})/g, "$1.$2");
  if (normalized.includes("-->")) {
    const blocks = normalized
      .split(/\n\s*\n/)
      .map((block) => block.trim())
      .filter(Boolean)
      .map((block) => {
        const lines = block.split("\n");
        if (lines.length >= 2 && /^\d+$/.test(lines[0].trim()) && lines[1].includes("-->")) {
          return lines.slice(1).join("\n");
        }
        return block;
      })
      .filter((block) => block.includes("-->"));
    if (blocks.length > 0) return `WEBVTT\n\n${blocks.join("\n\n")}\n`;
  }

  return "";
}

function normMatchText(s) {
  return String(s || "")
    .toLowerCase()
    // Remove only pure metadata tags in brackets/parens, preserving alternate titles like "[Full-Time Magister]"
    .replace(/[\[(]\s*(?:sub|dub|eng(?:lish)?\s*sub|multi\s*sub|all\s*sub|4k|hd|ona|ova|tv|chinese|donghua|ongoing|completed|new|\d{4})\s*[\])]/gi, " ")
    .replace(/[^a-z0-9\s]/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function splitTitleSegments(rawTitle) {
  const raw = String(rawTitle || "");
  const segs = new Set();
  const full = normMatchText(raw);
  if (full) segs.add(full);
  // Extract inner bracket/paren segments (e.g. "Quanzhi Fashi [Full-Time Magister]" -> "quanzhi fashi", "full time magister")
  for (const m of raw.matchAll(/[\[(]([^\])]+)[\])]/g)) {
    const inner = normMatchText(m[1]);
    if (inner.length >= 3) segs.add(inner);
  }
  const stripped = normMatchText(raw.replace(/\[[^\]]*\]/g, " ").replace(/\([^)]*\)/g, " "));
  if (stripped.length >= 3) segs.add(stripped);
  return [...segs];
}

function extractSeasonNum(s) {
  const m =
    String(s || "").match(/\bseason\s*(\d+)\b/i) ||
    String(s || "").match(/\bs(\d+)\b/i) ||
    String(s || "").match(/\b(\d+)(?:nd|rd|th)\s+season\b/i) ||
    String(s || "").match(/\bpart\s*(\d+)\b/i);
  return m ? parseInt(m[1], 10) : 0;
}

/**
 * Match AniList Donghua titles/synonyms against parsed catalog items from AX or AK.
 */
export const DONGHUA_EXCLUDED_ANIME_SITES = new Set([
  "animewitcher",
  "animeify",
  "sanime",
  "anifox",
  "anime4up2_hard",
  "anime4up2",
]);

/**
 * Returns false for unverified fuzzy-matched Arabic-anime scrapers (AF/AW/SA/FX/AD1/AD2)
 * which open unrelated Japanese anime episodes when browsing Chinese Donghua.
 */
export function isAllowedSlotForDonghua(site) {
  const s = String(site || "").trim().toLowerCase();
  if (!s) return false;
  return !DONGHUA_EXCLUDED_ANIME_SITES.has(s);
}

/**
 * Filters out unreleased / future-year (e.g. 2027) or cancelled titles unless explicitly requested.
 */
export function filterReleasedBrowseMedia(items, opts = {}) {
  if (!Array.isArray(items)) return [];
  const allowUnreleased = Boolean(opts.allowUnreleased);
  if (allowUnreleased) return items;
  const currentYear = Number(opts.currentYear) || new Date().getFullYear();
  return items.filter((item) => {
    const st = String(item?.status || "").trim().toUpperCase();
    if (st === "NOT_YET_RELEASED" || st === "CANCELLED") return false;
    const yr = Number(item?.startDate?.year || 0);
    if (yr > currentYear) return false;
    return true;
  });
}

/**
 * Formats media titles in clean 3-tier hierarchy:
 * 1) primary: English (fallback Romaji -> Arabic)
 * 2) arabic: Arabic title if present and distinct from primary
 * 3) original: Romaji / Native original title if distinct from primary
 */
export function formatMediaTitleHierarchy({ english, romaji, native, arabic } = {}) {
  const en = String(english || "").trim();
  const ro = String(romaji || "").trim();
  const nat = String(native || "").trim();
  const ar = String(arabic || "").trim();

  const primary = en || ro || ar || nat;
  const arabicOut = ar && ar.toLowerCase() !== primary.toLowerCase() ? ar : "";

  const origParts = [];
  if (ro && ro.toLowerCase() !== primary.toLowerCase()) origParts.push(ro);
  if (nat && nat.toLowerCase() !== primary.toLowerCase() && nat.toLowerCase() !== ro.toLowerCase()) {
    origParts.push(nat);
  }
  const original = origParts.join(" · ");

  return { primary, arabic: arabicOut, original };
}

/**
 * Rank AniList Donghua titles/synonyms against parsed catalog items from AX or AK.
 * Returns candidates sorted best-first (score >= 75) so callers can skip empty (0-episode) entries.
 */
export function rankDonghuaCatalogCandidates(items, candidateTitles = []) {
  if (!Array.isArray(items) || items.length === 0) return [];
  const targets = candidateTitles
    .map((t) => ({ raw: String(t || ""), norm: normMatchText(t), season: extractSeasonNum(t) }))
    .filter((t) => t.norm.length >= 2);
  if (targets.length === 0) return [];

  const ranked = [];
  for (const item of items) {
    const itemSegments = splitTitleSegments(item?.title || "");
    if (itemSegments.length === 0) continue;
    const itemSeason = extractSeasonNum(item?.title || "");
    const itemMovie = /\bmovie\b|\bfilm\b/i.test(`${item?.title || ""} ${item?.type || ""} ${item?.status || ""}`);

    let bestItemScore = -Infinity;
    for (const target of targets) {
      const targetMovie = /\bmovie\b|\bfilm\b/i.test(target.raw);
      const targetTokens = target.norm.split(" ").filter((w) => w.length >= 2);
      for (const itemNorm of itemSegments) {
        const itemTokens = new Set(itemNorm.split(" ").filter((w) => w.length >= 2));
        let score = 0;
        if (itemNorm === target.norm) {
          score += 200;
        } else if (itemNorm.includes(target.norm) || target.norm.includes(itemNorm)) {
          score += 120;
        }
        if (targetTokens.length > 0) {
          let hit = 0;
          for (const w of targetTokens) {
            if (itemTokens.has(w)) hit++;
          }
          const coverage = hit / targetTokens.length;
          const precision = hit / Math.max(1, itemTokens.size);
          score += Math.round(coverage * 90 + precision * 35);
        }

        if (target.season > 0 && itemSeason > 0) {
          score += target.season === itemSeason ? 45 : -75;
        } else if (target.season === 0 && itemSeason > 1) {
          score -= 70;
        }

        if (targetMovie !== itemMovie) score -= 200;

        if (score > bestItemScore) bestItemScore = score;
      }
    }

    if (bestItemScore >= 75) {
      ranked.push({ item, score: bestItemScore });
    }
  }

  ranked.sort((a, b) => b.score - a.score);
  return ranked.map((r) => r.item);
}

/**
 * Match AniList Donghua titles/synonyms against parsed catalog items from AX or AK.
 */
export function matchDonghuaCatalogItemByTitle(items, candidateTitles = []) {
  return rankDonghuaCatalogCandidates(items, candidateTitles)[0] || null;
}

export function pickDonghuaEpisodeByNumber(episodes, episodeNumber, opts = {}) {
  if (!Array.isArray(episodes) || episodes.length === 0) return null;
  const target = Math.max(1, Math.floor(Number(episodeNumber) || 1));
  const preferMovie = Boolean(opts?.preferMovie);
  const pool = preferMovie
    ? episodes
    : episodes.filter((e) => !e?.isMovie);
  const searchList = pool.length > 0 ? pool : (preferMovie ? episodes : []);
  if (searchList.length === 0) {
    // Only return a single-entry movie if explicitly allowed or if there are no non-movie entries AND target === 1 and caller did not forbid movies
    if (opts?.rejectMovie) return null;
    if (target === 1 && episodes.length === 1) return episodes[0];
    return null;
  }
  const exact = searchList.find((e) => Math.floor(Number(e?.number || 0)) === target);
  if (exact) return exact;
  const inRange = searchList.find((e) => {
    const start = Math.floor(Number(e?.number || 0));
    const end = Math.floor(Number(e?.rangeEnd || 0));
    return start > 0 && end >= start && target >= start && target <= end;
  });
  if (inRange) return inRange;
  if (target === 1 && searchList.length === 1 && (Math.floor(Number(searchList[0]?.number || 0)) <= 1 || searchList[0]?.isMovie)) return searchList[0];
  return null;
}

/**
 * Sort, clamp, deduplicate, and merge overlapping subtitle cues so binary search
 * (`bisectCue` in RiftPlayer) NEVER skips, flickers, or drops Arabic lines.
 */
export function normalizeAndSortSubtitleCues(cues) {
  if (!Array.isArray(cues) || cues.length === 0) return [];
  const cleaned = [];
  for (const c of cues) {
    if (!c) continue;
    const start = Number(c.start);
    let end = Number(c.end);
    const text = String(c.text || "").trim();
    if (!Number.isFinite(start) || !text) continue;
    if (!Number.isFinite(end) || end <= start) end = start + 2.0;
    cleaned.push({ start: Math.max(0, start), end: Math.max(0.1, end), text });
  }
  if (cleaned.length === 0) return [];

  cleaned.sort((a, b) => (a.start !== b.start ? a.start - b.start : a.end - b.end));

  const out = [];
  for (const cue of cleaned) {
    const prev = out[out.length - 1];
    if (!prev) {
      out.push({ ...cue });
      continue;
    }
    // Exact or near-duplicate cue
    if (Math.abs(prev.start - cue.start) < 0.08 && prev.text === cue.text) {
      prev.end = Math.max(prev.end, cue.end);
      continue;
    }
    // Simultaneous or overlapping cue -> split/merge cleanly so bisectCue never hides prev
    if (cue.start < prev.end) {
      if (Math.abs(cue.start - prev.start) < 0.12) {
        if (!prev.text.includes(cue.text)) {
          prev.text = `${prev.text}\n${cue.text}`;
        }
        prev.end = Math.max(prev.end, cue.end);
        continue;
      }
      // Trim previous cue end slightly so ranges remain monotonically non-overlapping for bisectCue
      prev.end = cue.start;
    }
    out.push({ ...cue });
  }

  return out.filter((c) => c.end > c.start && c.text.length > 0);
}

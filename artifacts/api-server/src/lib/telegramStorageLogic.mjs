import { createHmac, timingSafeEqual } from "node:crypto";

const ARABIC_DIACRITICS_RE = /[\u064B-\u065F\u0670\u0640]/g;

export function normalizeMediaTitle(value) {
  return String(value || "")
    .normalize("NFKD")
    .replace(ARABIC_DIACRITICS_RE, "")
    .replace(/[أإآٱ]/g, "ا")
    .replace(/ة/g, "ه")
    .replace(/ى/g, "ي")
    .replace(/ؤ/g, "و")
    .replace(/ئ/g, "ي")
    .toLowerCase()
    .replace(/[^a-z0-9\u0621-\u064a]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

export function slugifyMediaTitle(value) {
  const raw = String(value || "").trim();
  const ascii = raw
    .normalize("NFKD")
    .replace(/[\u0300-\u036f]/g, "")
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .slice(0, 60);
  if (ascii && ascii.length >= 2) return ascii;
  const norm = normalizeMediaTitle(raw);
  let hash = 2166136261;
  for (let i = 0; i < norm.length; i++) {
    hash ^= norm.charCodeAt(i);
    hash = Math.imul(hash, 16777619);
  }
  return "ar-" + (hash >>> 0).toString(36);
}

export function normalizeSection(raw) {
  const s = normalizeMediaTitle(raw);
  if (!s) return null;
  if (/^(انمي|anime|sub|مترجم)$/.test(s)) return "anime";
  if (/^(كرتون|cartoon|animation|انيميشن|انميشن)$/.test(s)) return "cartoon";
  if (/^(مدبلج|dubbed|مدبلج عربي|انمي مدبلج)$/.test(s)) return "dubbed";
  if (/^(فيلم|فلم|افلام|film|movie|movies)$/.test(s)) return "film";
  return null;
}

export function normalizeAudioLang(raw, section = "anime") {
  const s = normalizeMediaTitle(raw);
  if (!s) {
    if (section === "cartoon" || section === "dubbed") return "dub_ar";
    return "sub";
  }
  if (/(انجليز|english|eng|\ben\b|en dub|dub_en|مدبلج انجليز|دبلجه انجليز)/.test(s)) return "dub_en";
  if (/(عرب|مدبلج|دبلجه عرب|dub_ar|\bar\b)/.test(s)) return "dub_ar";
  if (/(مترجم|يابان|sub|japanese|jp|\bja\b)/.test(s)) return "sub";
  return section === "cartoon" || section === "dubbed" ? "dub_ar" : "sub";
}

export function normalizeQuality(raw, videoHeight) {
  const s = String(raw || "").trim().toLowerCase();
  if (/2160|4k/.test(s)) return "2160p";
  if (/1080|fhd/.test(s)) return "1080p";
  if (/720|\bhd\b/.test(s)) return "720p";
  if (/480|\bsd\b/.test(s)) return "480p";
  if (/360/.test(s)) return "360p";
  const h = Number(videoHeight);
  if (Number.isFinite(h) && h > 0) {
    if (h >= 1800) return "2160p";
    if (h >= 960) return "1080p";
    if (h >= 640) return "720p";
    if (h >= 420) return "480p";
    return "360p";
  }
  return "720p";
}

export function qualityToRank(quality) {
  const q = String(quality || "").toLowerCase();
  if (q.includes("2160") || q.includes("4k")) return 24;
  if (q.includes("1080")) return 20;
  if (q.includes("720")) return 15;
  if (q.includes("480")) return 10;
  return 6;
}

function parsePositiveInt(val) {
  if (val == null) return null;
  const western = String(val).replace(/[٠-٩]/g, (d) => String(d.charCodeAt(0) - 0x0660));
  const m = western.match(/\d+/);
  if (!m) return null;
  const n = Number.parseInt(m[0], 10);
  return Number.isFinite(n) && n > 0 ? n : null;
}

/**
 * Parses a Telegram channel caption (and optional filename/video metadata) into structured media info.
 */
export function parseChannelCaption(caption, fileName = "", mediaMeta = {}) {
  const text = String(caption || "").trim();
  const combined = text || String(fileName || "").replace(/\.[a-z0-9]{2,5}$/i, "").trim();

  let section = null;
  let isSeriesCard = false;
  let title = "";
  let titleEn = "";
  let season = null;
  let episode = null;
  let qualityRaw = "";
  let audioRaw = "";
  let anilistId = null;
  let tmdbId = null;
  let synopsis = "";
  let genres = [];
  let year = null;

  // Detect hashtags anywhere in caption
  const tags = combined.match(/#[\p{L}\p{N}_-]+/gu) || [];
  for (const tag of tags) {
    const clean = normalizeMediaTitle(tag.slice(1).replace(/_/g, " "));
    if (/(عمل جديد|جديد|new work|new series|series card)/.test(clean)) {
      isSeriesCard = true;
      continue;
    }
    const sec = normalizeSection(clean);
    if (sec && !section) section = sec;
    if (/(انجليز|دبلجه انجليز|dub_en|en_dub)/.test(clean) && !audioRaw) audioRaw = "dub_en";
    if (/(مترجم|sub)/.test(clean) && !audioRaw) audioRaw = "sub";
    if (/(مدبلج|عربي)/.test(clean) && !audioRaw) audioRaw = "dub_ar";
  }

  // Extract AniList / TMDB URLs anywhere
  const aniUrl = combined.match(/anilist\.co\/anime\/(\d+)/i);
  if (aniUrl) anilistId = parsePositiveInt(aniUrl[1]);
  const tmdbUrl = combined.match(/themoviedb\.org\/(?:movie|tv)\/(\d+)/i);
  if (tmdbUrl) tmdbId = parsePositiveInt(tmdbUrl[1]);

  // Parse structured key: value lines
  const lines = combined.split(/\r?\n/).map((l) => l.trim()).filter(Boolean);
  const freeLines = [];

  for (const line of lines) {
    // Pure hashtag line
    if (/^(?:#[\p{L}\p{N}_-]+\s*)+$/u.test(line)) continue;

    const kv = line.match(/^([^:=\-\n]{1,30})\s*[:=]\s*(.+)$/);
    if (kv) {
      const key = normalizeMediaTitle(kv[1]);
      const val = kv[2].trim();
      if (/^(الاسم|اسم|العنوان|عنوان|name|title)$/.test(key)) {
        title = val;
        continue;
      }
      if (/^(الاسم الانجليزي|انجليزي|english|title en|en)$/.test(key)) {
        titleEn = val;
        continue;
      }
      if (/^(القسم|قسم|النوع|نوع|section|category|type)$/.test(key)) {
        const sec = normalizeSection(val);
        if (sec) section = sec;
        continue;
      }
      if (/^(الموسم|موسم|season|s)$/.test(key)) {
        season = parsePositiveInt(val);
        continue;
      }
      if (/^(الحلقه|حلقه|رقم الحلقه|ep|episode|e)$/.test(key)) {
        episode = parsePositiveInt(val);
        continue;
      }
      if (/^(الجوده|جوده|quality|q|res|resolution)$/.test(key)) {
        qualityRaw = val;
        continue;
      }
      if (/^(اللغه|لغه|الصوت|صوت|lang|language|audio|dub)$/.test(key)) {
        audioRaw = val;
        continue;
      }
      if (/^(anilist|اني ليست|انيلست|anilist id|al)$/.test(key)) {
        anilistId = parsePositiveInt(val);
        continue;
      }
      if (/^(tmdb|tmdb id)$/.test(key)) {
        tmdbId = parsePositiveInt(val);
        continue;
      }
      if (/^(القصه|قصه|نبذه|الوصف|وصف|synopsis|description|plot)$/.test(key)) {
        synopsis = val;
        continue;
      }
      if (/^(التصنيف|تصنيف|التصنيفات|genres|genre)$/.test(key)) {
        genres = val.split(/[,،/|]+/).map((g) => g.trim()).filter(Boolean);
        continue;
      }
      if (/^(السنه|سنه|year)$/.test(key)) {
        year = parsePositiveInt(val);
        continue;
      }
    }
    freeLines.push(line);
  }

  // Fallback: single-line parsing (e.g. "Attack on Titan - S01E05 - 1080p #انمي" or "بن 10 الحلقة 3 720p")
  const fallbackLine = freeLines.join(" ").replace(/#[\p{L}\p{N}_-]+/gu, " ").trim();
  if (fallbackLine) {
    if (!qualityRaw) {
      const qm = fallbackLine.match(/\b(2160p|4k|1080p|720p|480p|360p)\b/i);
      if (qm) qualityRaw = qm[1];
    }
    if (season == null || episode == null) {
      const se = fallbackLine.match(/\bS(\d{1,2})\s*E(\d{1,4})\b/i);
      if (se) {
        if (season == null) season = parsePositiveInt(se[1]);
        if (episode == null) episode = parsePositiveInt(se[2]);
      }
    }
    if (episode == null) {
      const epAr = fallbackLine.match(/(?:الحلقة|الحلقه|حلقة|حلقه|ح)\s*[:\-]?\s*([\d٠-٩]{1,4})/);
      const epEn = fallbackLine.match(/(?:\b(?:ep|episode|e)\s*[:.\-]?\s*(\d{1,4})\b|\s-\s(\d{1,4})(?:\s|$))/i);
      if (epAr) episode = parsePositiveInt(epAr[1]);
      else if (epEn) episode = parsePositiveInt(epEn[1] || epEn[2]);
    }
    if (season == null) {
      const sAr = fallbackLine.match(/(?:الموسم|موسم)\s*[:\-]?\s*([\d٠-٩]{1,2})/);
      const sEn = fallbackLine.match(/\b(?:season|s)\s*[:.\-]?\s*(\d{1,2})\b/i);
      if (sAr) season = parsePositiveInt(sAr[1]);
      else if (sEn) season = parsePositiveInt(sEn[1]);
    }
    if (!title) {
      let cleaned = fallbackLine
        .replace(/https?:\/\/\S+/gi, " ")
        .replace(/\bS\d{1,2}\s*E\d{1,4}\b/gi, " ")
        .replace(/(?:الحلقة|الحلقه|حلقة|حلقه|ح)\s*[:\-]?\s*[\d٠-٩]{1,4}/g, " ")
        .replace(/(?:الموسم|موسم)\s*[:\-]?\s*[\d٠-٩]{1,2}/g, " ")
        .replace(/\b(?:ep|episode|season|e)\s*[:.\-]?\s*\d{1,4}\b/gi, " ")
        .replace(/\b(?:2160p|4k|1080p|720p|480p|360p|mp4|mkv|h264|x264|x265|hevc|web-?dl|bluray)\b/gi, " ")
        .replace(/\s*-\s*\d{1,4}(?:\s|$)/g, " ")
        .replace(/[|\[\]()]+/g, " ")
        .replace(/[\s\-_]+$/g, "")
        .replace(/^[\s\-_]+/g, "")
        .replace(/\s+/g, " ")
        .trim();
      title = cleaned;
    }
  }

  const resolvedSection = section || (anilistId ? "anime" : "anime");
  const resolvedAudio = normalizeAudioLang(audioRaw, resolvedSection);
  const resolvedQuality = normalizeQuality(qualityRaw, mediaMeta?.height);
  const resolvedSeason = season || 1;
  const resolvedEpisode = resolvedSection === "film" ? (episode || 1) : episode;

  return {
    section: resolvedSection,
    explicitSection: Boolean(section),
    isSeriesCard,
    title: title.trim(),
    titleEn: titleEn.trim() || null,
    normalizedTitle: normalizeMediaTitle(title || titleEn),
    slug: slugifyMediaTitle(titleEn || title || "untitled"),
    season: resolvedSeason,
    episode: resolvedEpisode,
    quality: resolvedQuality,
    qualityRank: qualityToRank(resolvedQuality),
    audioLang: resolvedAudio,
    anilistId,
    tmdbId,
    synopsis: synopsis.trim() || null,
    genres,
    year,
  };
}

/**
 * RFC-7233 single byte range parser.
 * Returns { start, end, chunkLength, isPartial } or null when range is unsatisfiable (416).
 */
export function parseHttpByteRange(rangeHeader, fileSize) {
  const total = Number(fileSize);
  if (!Number.isFinite(total) || total <= 0) return null;
  if (!rangeHeader || typeof rangeHeader !== "string") {
    return { start: 0, end: total - 1, chunkLength: total, isPartial: false };
  }
  const m = rangeHeader.trim().match(/^bytes=(\d*)-(\d*)$/i);
  if (!m) return null;
  const [, startStr, endStr] = m;
  let start;
  let end;
  if (startStr === "" && endStr === "") return null;
  if (startStr === "") {
    // Suffix byte range: last N bytes
    const suffix = Number.parseInt(endStr, 10);
    if (!Number.isFinite(suffix) || suffix <= 0) return null;
    start = Math.max(0, total - suffix);
    end = total - 1;
  } else {
    start = Number.parseInt(startStr, 10);
    end = endStr === "" ? total - 1 : Number.parseInt(endStr, 10);
    if (!Number.isFinite(start) || !Number.isFinite(end)) return null;
    if (start >= total || start < 0) return null;
    if (end >= total) end = total - 1;
    if (end < start) return null;
  }
  return {
    start,
    end,
    chunkLength: end - start + 1,
    isPartial: true,
  };
}

export function signTgStreamToken(episodeId, secret, ttlSec = 6 * 3600) {
  const exp = Math.floor(Date.now() / 1000) + Math.max(60, Number(ttlSec) || 3600);
  const payload = `tg-stream:${episodeId}:${exp}`;
  const sig = createHmac("sha256", String(secret || "")).update(payload).digest("base64url").slice(0, 32);
  return { exp, sig };
}

export function verifyTgStreamToken(episodeId, exp, sig, secret, nowSec = Math.floor(Date.now() / 1000)) {
  if (!secret || !sig || !exp) return false;
  const expNum = Number(exp);
  if (!Number.isFinite(expNum) || expNum < nowSec) return false;
  const payload = `tg-stream:${episodeId}:${expNum}`;
  const expected = createHmac("sha256", String(secret)).update(payload).digest("base64url").slice(0, 32);
  const a = Buffer.from(String(sig), "utf8");
  const b = Buffer.from(expected, "utf8");
  if (a.length !== b.length) return false;
  try {
    return timingSafeEqual(a, b);
  } catch {
    return false;
  }
}

export function convertSrtToVtt(rawText) {
  const text = String(rawText || "").replace(/^\uFEFF/, "").replace(/\r\n/g, "\n").replace(/\r/g, "\n").trim();
  if (!text) return "WEBVTT\n\n";
  if (/^WEBVTT\b/i.test(text)) return text + "\n";
  const body = text.replace(/(\d{2}:\d{2}:\d{2}),(\d{3})/g, "$1.$2");
  return "WEBVTT\n\n" + body + "\n";
}

export function formatTemplatesMessage() {
  return [
    "📋 <b>صيغ رفع الحلقات والأعمال في قناة التخزين الخاصة:</b>",
    "",
    "1️⃣ <b>حلقة أنمي (مترجم أو دبلجة إنجليزية):</b>",
    "<pre>#انمي\nالاسم: Attack on Titan\nالحلقة: 5\nالجودة: 1080p\nاللغة: مترجم</pre>",
    "<i>اللغة: مترجم | انجليزي | عربي — ويمكن إضافة سطر anilist: 16498 للربط الدقيق.</i>",
    "",
    "2️⃣ <b>حلقة كرتون أو مدبلج عربي:</b>",
    "<pre>#كرتون\nالاسم: بن 10\nالموسم: 1\nالحلقة: 3\nالجودة: 720p</pre>",
    "<i>(أو استخدم #مدبلج).</i>",
    "",
    "3️⃣ <b>فيلم (أنمي أو كرتون):</b>",
    "<pre>#فيلم\nالاسم: Spirited Away\nالجودة: 1080p\nاللغة: مترجم</pre>",
    "",
    "4️⃣ <b>عمل جديد غير موجود في المصادر (أرسل صورة البوستر أولاً):</b>",
    "<pre>#عمل_جديد\nالقسم: كرتون\nالاسم: بن 10\nالقصة: نبذة مختصرة...\nالتصنيف: أكشن، مغامرة</pre>",
    "",
    "5️⃣ <b>ترجمة خارجية (اختياري):</b>",
    "أرسل ملف <code>.srt</code> أو <code>.vtt</code> كـ <b>رد (Reply)</b> على رسالة الحلقة في القناة.",
  ].join("\n");
}

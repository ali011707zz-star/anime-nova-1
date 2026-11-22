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
  const s = normalizeMediaTitle(String(raw || "").replace(/_/g, " "));
  if (!s) return null;
  if (/^(انمي|انمي مترجم|انمي انجليزي|انمي دبلجه انجليزي|انمي دبلجه انجليزيه|anime|anime sub|anime dub|anime en|sub|مترجم)$/.test(s)) {
    return "anime";
  }
  if (/^(كرتون|كرتون مدبلج|cartoon|animation|انيميشن|انميشن)$/.test(s)) {
    return "cartoon";
  }
  if (/^(مدبلج|dubbed|مدبلج عربي|انمي مدبلج|انمي عربي|دبلجه عربي|دبلجه عربيه)$/.test(s)) {
    return "dubbed";
  }
  if (/^(فيلم|فلم|افلام|فيلم انمي|فيلم كرتون|فيلم مدبلج|film|movie|movies)$/.test(s)) {
    return "film";
  }
  return null;
}

export function parseAudioLangStrict(raw) {
  const s = normalizeMediaTitle(String(raw || "").replace(/_/g, " "));
  if (!s) return null;
  if (/(انجليز|english|eng|\ben\b|en dub|dub en|مدبلج انجليز|دبلجه انجليز)/.test(s)) return "dub_en";
  if (/(عرب|مدبلج|دبلجه عرب|dub ar|\bar\b)/.test(s)) return "dub_ar";
  if (/(مترجم|يابان|sub|japanese|jp|\bja\b)/.test(s)) return "sub";
  return null;
}

export function normalizeAudioLang(raw, section = "anime") {
  const parsed = parseAudioLangStrict(raw);
  if (parsed) return parsed;
  return section === "cartoon" || section === "dubbed" ? "dub_ar" : "sub";
}

export function parseQualityStrict(raw) {
  const s = String(raw || "").trim().toLowerCase();
  if (!s) return null;
  if (/(^|\b)(2160p?|4k|uhd)(\b|$)/.test(s)) return "2160p";
  if (/(^|\b)(1080p?|fhd|full\s*hd)(\b|$)/.test(s)) return "1080p";
  if (/(^|\b)(720p?|hd)(\b|$)/.test(s)) return "720p";
  if (/(^|\b)(480p?|sd)(\b|$)/.test(s)) return "480p";
  if (/(^|\b)(360p?)(\b|$)/.test(s)) return "360p";
  return null;
}

export function normalizeQuality(raw, videoHeight) {
  const strict = parseQualityStrict(raw);
  if (strict) return strict;
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

function toWesternDigits(val) {
  return String(val ?? "").replace(/[٠-٩]/g, (d) => String(d.charCodeAt(0) - 0x0660));
}

function parsePositiveInt(val) {
  if (val == null) return null;
  const western = toWesternDigits(val).trim();
  const m = western.match(/^\d+$/);
  if (m) {
    const n = Number.parseInt(m[0], 10);
    return Number.isFinite(n) && n > 0 ? n : null;
  }
  const loose = western.match(/\d+/);
  if (!loose) return null;
  const n = Number.parseInt(loose[0], 10);
  return Number.isFinite(n) && n > 0 ? n : null;
}

function parseStrictPositiveInt(val, max = 50000) {
  const western = toWesternDigits(val).trim();
  if (!western) return null;
  const cleaned = western
    .replace(/^(?:ep|episode|e|s|season|الحلقة|الحلقه|حلقة|حلقه|ح|الموسم|موسم|م)\s*[:.\-]?\s*/i, "")
    .trim();
  if (!/^\d+$/.test(cleaned)) return null;
  const n = Number.parseInt(cleaned, 10);
  if (!Number.isFinite(n) || n <= 0 || n > max) return null;
  return n;
}

export function isSuspiciousTitle(title) {
  const raw = String(title || "").trim();
  if (!raw) return { suspicious: true, reason: "empty" };
  const norm = normalizeMediaTitle(raw);
  if (!norm || norm.length < 2) return { suspicious: true, reason: "too_short" };
  if (/^\d+$/.test(norm)) return { suspicious: true, reason: "numeric_only" };
  if (/^(vid|img|mov|dsc|pxl|whatsapp|telegram|video|movie|episode|ep|clip|file|untitled|test|document|screen|rec|new)[_\-\s0-9]*$/i.test(raw)) {
    return { suspicious: true, reason: "filename_placeholder" };
  }
  if (/^(اسم العمل|اسم الانمي|اسم الكرتون|اسم الفيلم|الاسم|العنوان|هنا|اكتب الاسم|بدون اسم|تجربه|تجربة|none|null|n\/a|xxx)$/.test(norm)) {
    return { suspicious: true, reason: "template_placeholder" };
  }
  return { suspicious: false };
}

function detectFieldKey(rawKey) {
  const key = normalizeMediaTitle(rawKey);
  if (!key) return null;
  if (/^(الاسم|اسم|العنوان|عنوان|name|title|اسم الانمي|اسم العمل|اسم الكرتون|اسم الفيلم)$/.test(key)) return "title";
  if (/^(الاسم الانجليزي|انجليزي|english|title en|en)$/.test(key)) return "titleEn";
  if (/^(القسم|قسم|النوع|نوع|section|category|type)$/.test(key)) return "section";
  if (/^(الموسم|موسم|season|s)$/.test(key)) return "season";
  if (/^(الحلقه|حلقه|رقم الحلقه|ep|episode|e)$/.test(key)) return "episode";
  if (/^(الجوده|جوده|quality|q|res|resolution)$/.test(key)) return "quality";
  if (/^(اللغه|لغه|الصوت|صوت|lang|language|audio|dub)$/.test(key)) return "audioLang";
  if (/^(anilist|اني ليست|انيلست|anilist id|al)$/.test(key)) return "anilistId";
  if (/^(tmdb|tmdb id)$/.test(key)) return "tmdbId";
  if (/^(القصه|قصه|نبذه|الوصف|وصف|synopsis|description|plot)$/.test(key)) return "synopsis";
  if (/^(التصنيف|تصنيف|التصنيفات|genres|genre)$/.test(key)) return "genres";
  if (/^(السنه|سنه|year)$/.test(key)) return "year";
  return null;
}

/**
 * Parses a Telegram channel caption (and optional media metadata) into structured media info.
 * Never fabricates a title from raw filenames when caption is empty so missing fields are caught.
 */
export function parseChannelCaption(caption, _fileName = "", mediaMeta = {}) {
  const text = String(caption || "").trim();

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

  const emptyFields = [];
  const invalidFields = [];
  const unknownTags = [];
  let explicitSeason = false;
  let explicitQuality = false;
  let explicitAudio = false;

  const markEmpty = (field) => {
    if (!emptyFields.includes(field)) emptyFields.push(field);
  };
  const markInvalid = (field, raw) => {
    if (!invalidFields.some((x) => x.field === field)) {
      invalidFields.push({ field, raw: String(raw || "").trim() });
    }
  };

  // Detect hashtags anywhere in caption
  const tags = text.match(/#[\p{L}\p{N}_-]+/gu) || [];
  for (const tag of tags) {
    const clean = normalizeMediaTitle(tag.slice(1).replace(/_/g, " "));
    let matchedTag = false;
    if (/(عمل جديد|جديد|new work|new series|series card)/.test(clean)) {
      isSeriesCard = true;
      matchedTag = true;
    }
    const sec = normalizeSection(clean);
    if (sec) {
      if (!section) section = sec;
      matchedTag = true;
    }
    if (/(انجليز|دبلجه انجليز|dub en|en dub|anime en|anime dub)/.test(clean)) {
      if (!audioRaw) audioRaw = "dub_en";
      explicitAudio = true;
      matchedTag = true;
    } else if (/(مترجم|\bsub\b)/.test(clean)) {
      if (!audioRaw) audioRaw = "sub";
      explicitAudio = true;
      matchedTag = true;
    } else if (/(مدبلج|عربي|dub ar)/.test(clean)) {
      if (!audioRaw) audioRaw = "dub_ar";
      explicitAudio = true;
      matchedTag = true;
    }
    if (!matchedTag && !unknownTags.includes(tag)) {
      unknownTags.push(tag);
    }
  }

  // Extract AniList / TMDB URLs anywhere
  const aniUrl = text.match(/anilist\.co\/anime\/(\d+)/i);
  if (aniUrl) anilistId = parsePositiveInt(aniUrl[1]);
  const tmdbUrl = text.match(/themoviedb\.org\/(?:movie|tv)\/(\d+)/i);
  if (tmdbUrl) tmdbId = parsePositiveInt(tmdbUrl[1]);

  // Parse structured key: value lines (including explicitly blank fields!)
  const lines = text.split(/\r?\n/).map((l) => l.trim()).filter(Boolean);
  const freeLines = [];

  for (const line of lines) {
    if (/^(?:#[\p{L}\p{N}_-]+\s*)+$/u.test(line)) continue;
    const kv = line.match(/^([^:=\-\n]{1,32})\s*[:=]\s*(.*)$/);
    if (kv) {
      const field = detectFieldKey(kv[1]);
      if (field) {
        const val = kv[2].trim();
        if (!val) {
          markEmpty(field);
          continue;
        }
        switch (field) {
          case "title":
            title = val;
            break;
          case "titleEn":
            titleEn = val;
            break;
          case "section": {
            const sec = normalizeSection(val);
            if (sec) {
              section = sec;
              const audioHint = parseAudioLangStrict(val);
              if (audioHint && !audioRaw) {
                audioRaw = audioHint;
                explicitAudio = true;
              }
            } else {
              markInvalid("section", val);
            }
            break;
          }
          case "season": {
            const parsedS = parseStrictPositiveInt(val, 50);
            if (parsedS != null) {
              season = parsedS;
              explicitSeason = true;
            } else {
              markInvalid("season", val);
            }
            break;
          }
          case "episode": {
            const parsedE = parseStrictPositiveInt(val, 5000);
            if (parsedE != null) {
              episode = parsedE;
            } else {
              markInvalid("episode", val);
            }
            break;
          }
          case "quality": {
            const q = parseQualityStrict(val);
            if (q) {
              qualityRaw = q;
              explicitQuality = true;
            } else {
              markInvalid("quality", val);
            }
            break;
          }
          case "audioLang": {
            const a = parseAudioLangStrict(val);
            if (a) {
              audioRaw = a;
              explicitAudio = true;
            } else {
              markInvalid("audioLang", val);
            }
            break;
          }
          case "anilistId": {
            const al = parseStrictPositiveInt(val, 99999999);
            if (al != null) anilistId = al;
            else markInvalid("anilistId", val);
            break;
          }
          case "tmdbId": {
            const tm = parseStrictPositiveInt(val, 99999999);
            if (tm != null) tmdbId = tm;
            else markInvalid("tmdbId", val);
            break;
          }
          case "synopsis":
            synopsis = val;
            break;
          case "genres":
            genres = val.split(/[,،/|]+/).map((g) => g.trim()).filter(Boolean);
            break;
          case "year": {
            const yr = parseStrictPositiveInt(val, 2100);
            if (yr != null && yr >= 1920) year = yr;
            else markInvalid("year", val);
            break;
          }
        }
        continue;
      }
    }
    freeLines.push(line);
  }

  // Fallback: single-line / pipe-separated parsing
  const fallbackLine = freeLines.join(" ").replace(/#[\p{L}\p{N}_-]+/gu, " ").trim();
  if (fallbackLine && fallbackLine.includes("|")) {
    const parts = fallbackLine.split("|").map((p) => p.trim());
    const nonEmptyParts = parts.filter(Boolean);
    if (!title && nonEmptyParts[0]) {
      const first = nonEmptyParts[0];
      if (!parseQualityStrict(first) && !/^S\d{1,2}\s*E\d{1,4}$/i.test(first)) {
        title = first;
      }
    }
    for (let i = 1; i < parts.length; i++) {
      const seg = parts[i];
      if (!seg) continue;
      const q = parseQualityStrict(seg);
      if (q && !qualityRaw) {
        qualityRaw = q;
        explicitQuality = true;
        continue;
      }
      const audio = parseAudioLangStrict(seg);
      if (audio && !audioRaw && seg.split(/\s+/).length <= 3) {
        audioRaw = audio;
        explicitAudio = true;
        continue;
      }
      const se = seg.match(/^S(\d{1,2})\s*E(\d{1,4})$/i);
      if (se) {
        if (season == null) { season = parsePositiveInt(se[1]); explicitSeason = true; }
        if (episode == null) episode = parsePositiveInt(se[2]);
        continue;
      }
      let matchedSeg = false;
      const sAr = seg.match(/(?:الموسم|موسم|م)\s*[:\-]?\s*([\d٠-٩]{1,2})(?=\s|$)/);
      if (sAr && season == null) {
        season = parsePositiveInt(sAr[1]);
        explicitSeason = true;
        matchedSeg = true;
      }
      const epAr = seg.match(/(?:الحلقة|الحلقه|حلقة|حلقه|ح)\s*[:\-]?\s*([\d٠-٩]{1,4})(?=\s|$)/);
      if (epAr && episode == null) {
        episode = parsePositiveInt(epAr[1]);
        matchedSeg = true;
      }
      const epEn = seg.match(/^(?:ep|episode|e)\s*[:.\-]?\s*(\d{1,4})$/i);
      if (epEn && episode == null) {
        episode = parsePositiveInt(epEn[1]);
        matchedSeg = true;
      }
      if (matchedSeg) continue;
      const num = parseStrictPositiveInt(seg, 5000);
      if (num != null) {
        if (section === "film" && num >= 1920 && num <= 2100 && year == null) {
          year = num;
        } else if (episode == null) {
          episode = num;
        }
      }
    }
  } else if (fallbackLine) {
    if (!qualityRaw) {
      const qm = fallbackLine.match(/\b(2160p|4k|1080p|720p|480p|360p)\b/i);
      if (qm) {
        qualityRaw = parseQualityStrict(qm[1]) || "";
        if (qualityRaw) explicitQuality = true;
      }
    }
    if (season == null || episode == null) {
      const se = fallbackLine.match(/\bS(\d{1,2})\s*E(\d{1,4})\b/i);
      if (se) {
        if (season == null) { season = parsePositiveInt(se[1]); explicitSeason = true; }
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
      const sAr = fallbackLine.match(/(?:الموسم|موسم|م)\s*[:\-]?\s*([\d٠-٩]{1,2})(?=\s|$)/);
      const sEn = fallbackLine.match(/\b(?:season|s)\s*[:.\-]?\s*(\d{1,2})\b/i);
      if (sAr) { season = parsePositiveInt(sAr[1]); explicitSeason = true; }
      else if (sEn) { season = parsePositiveInt(sEn[1]); explicitSeason = true; }
    }
    if (!title && !emptyFields.includes("title")) {
      const cleaned = fallbackLine
        .replace(/https?:\/\/\S+/gi, " ")
        .replace(/\bS\d{1,2}\s*E\d{1,4}\b/gi, " ")
        .replace(/(?:الحلقة|الحلقه|حلقة|حلقه|ح)\s*[:\-]?\s*[\d٠-٩]{1,4}/g, " ")
        .replace(/(?:الموسم|موسم|م)\s*[:\-]?\s*[\d٠-٩]{1,2}(?=\s|$)/g, " ")
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

  const resolvedSection = section || "anime";
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
    explicitSeason,
    explicitQuality,
    explicitAudio,
    emptyFields,
    invalidFields,
    unknownTags,
    titleConfirmed: false,
  };
}

const FIELD_LABELS_AR = {
  section: "القسم",
  title: "اسم العمل",
  episode: "رقم الحلقة",
  season: "الموسم",
  quality: "الجودة",
  audioLang: "اللغة / الصوت",
  anilistId: "معرّف AniList",
  tmdbId: "معرّف TMDB",
  year: "السنة",
  synopsis: "القصة",
  genres: "التصنيف",
  titleEn: "الاسم الإنجليزي",
};

export function validateParsedCaption(parsed, kind = "episode") {
  const issues = [];
  const invalidMap = new Map((parsed.invalidFields || []).map((x) => [x.field, x.raw]));
  const emptySet = new Set(parsed.emptyFields || []);

  // 1. Section
  if (invalidMap.has("section")) {
    issues.push({
      field: "section",
      code: "invalid",
      message: `القسم غير صحيح ("${invalidMap.get("section")}") — استخدم: انمي أو كرتون أو مدبلج أو فيلم`,
    });
  } else if (emptySet.has("section")) {
    issues.push({
      field: "section",
      code: "empty",
      message: "خانة القسم فارغة — اختر القسم من الأزرار أو اكتب #انمي / #كرتون / #مدبلج / #فيلم",
    });
  } else if (!parsed.explicitSection) {
    const tagHint = parsed.unknownTags?.length
      ? ` (وجدت وسماً غير معروف: ${parsed.unknownTags.join(" ")})`
      : "";
    issues.push({
      field: "section",
      code: "missing",
      message: `لم تحدد القسم${tagHint} — اختر القسم من الأزرار أو أرسل #انمي / #كرتون / #مدبلج / #فيلم`,
    });
  }

  // 2. Title
  if (emptySet.has("title")) {
    issues.push({
      field: "title",
      code: "empty",
      message: "خانة الاسم فارغة — أرسل اسم العمل الصحيح",
    });
  } else {
    const check = isSuspiciousTitle(parsed.title);
    if (check.suspicious) {
      const msg = check.reason === "empty"
        ? "لم تكتب اسم العمل — أرسل الاسم (مثال: Attack on Titan أو بن 10)"
        : `اسم العمل يبدو غير صحيح أو ناقص ("${parsed.title}") — أرسل الاسم الصحيح`;
      issues.push({
        field: "title",
        code: check.reason === "empty" ? "missing" : "invalid",
        message: msg,
      });
    }
  }

  // 3. Episode number (required for episodes unless section is film)
  if (kind === "episode" && parsed.section !== "film") {
    if (invalidMap.has("episode")) {
      issues.push({
        field: "episode",
        code: "invalid",
        message: `رقم الحلقة غير صالح ("${invalidMap.get("episode")}") — يجب أن يكون رقماً موجباً (مثال: 5)`,
      });
    } else if (emptySet.has("episode")) {
      issues.push({
        field: "episode",
        code: "empty",
        message: "خانة الحلقة فارغة — أرسل رقم الحلقة (مثال: 5)",
      });
    } else if (parsed.episode == null || parsed.episode <= 0) {
      issues.push({
        field: "episode",
        code: "missing",
        message: "نسيت كتابة رقم الحلقة — أرسل رقم الحلقة (مثال: 5)",
      });
    }
  }

  // 4. Optional fields explicitly left blank or invalid
  for (const optField of ["season", "quality", "audioLang", "anilistId", "tmdbId", "year", "synopsis", "genres", "titleEn"]) {
    const label = FIELD_LABELS_AR[optField] || optField;
    if (invalidMap.has(optField)) {
      let hint = "";
      if (optField === "quality") hint = " — القيم المتاحة: 1080p أو 720p أو 480p أو 4k";
      else if (optField === "audioLang") hint = " — القيم المتاحة: مترجم أو انجليزي أو عربي";
      else if (optField === "season") hint = " — يجب أن يكون رقماً (مثال: 1)";
      else if (optField === "year") hint = " — مثال: 2024";
      else if (optField === "anilistId" || optField === "tmdbId") hint = " — يجب أن يكون رقماً صحيحاً";
      issues.push({
        field: optField,
        code: "invalid",
        message: `قيمة ${label} غير صالحة ("${invalidMap.get(optField)}")${hint}`,
      });
    } else if (emptySet.has(optField)) {
      issues.push({
        field: optField,
        code: "empty",
        message: `تركت خانة ${label} فارغة — أرسل قيمتها أو اختر من الأزرار`,
      });
    }
  }

  return {
    isValid: issues.length === 0,
    issues,
  };
}

/* ── String Similarity & Title Matching (Typo Detection) ───────────────── */

export function levenshteinDistance(a, b) {
  const s = String(a || "");
  const t = String(b || "");
  if (s === t) return 0;
  if (!s.length) return t.length;
  if (!t.length) return s.length;
  const prev = new Array(t.length + 1);
  const curr = new Array(t.length + 1);
  for (let j = 0; j <= t.length; j++) prev[j] = j;
  for (let i = 1; i <= s.length; i++) {
    curr[0] = i;
    for (let j = 1; j <= t.length; j++) {
      const cost = s[i - 1] === t[j - 1] ? 0 : 1;
      curr[j] = Math.min(prev[j] + 1, curr[j - 1] + 1, prev[j - 1] + cost);
    }
    for (let j = 0; j <= t.length; j++) prev[j] = curr[j];
  }
  return prev[t.length];
}

export function computeTitleSimilarity(rawA, rawB) {
  const a = normalizeMediaTitle(rawA);
  const b = normalizeMediaTitle(rawB);
  if (!a || !b) return 0;
  if (a === b) return 1;
  const maxLen = Math.max(a.length, b.length);
  const levSim = 1 - levenshteinDistance(a, b) / maxLen;
  const tokA = new Set(a.split(" ").filter(Boolean));
  const tokB = new Set(b.split(" ").filter(Boolean));
  let overlap = 0;
  for (const w of tokA) if (tokB.has(w)) overlap++;
  const jaccard = tokA.size + tokB.size > 0 ? (2 * overlap) / (tokA.size + tokB.size) : 0;
  return Number((levSim * 0.65 + jaccard * 0.35).toFixed(4));
}

function getCandidateNames(c) {
  const names = [];
  for (const v of [c.title, c.titleEn, c.titleRomaji, c.titleAr, ...(Array.isArray(c.synonyms) ? c.synonyms : [])]) {
    if (typeof v === "string" && v.trim()) {
      names.push(v.trim());
      const colonIdx = v.indexOf(":");
      if (colonIdx >= 4) {
        names.push(v.slice(0, colonIdx).trim());
      }
    }
  }
  return names;
}

export function evaluateTitleMatch(inputTitle, candidates = [], options = {}) {
  const section = options.section || "anime";
  const anilistId = options.anilistId || null;
  const titleConfirmed = Boolean(options.titleConfirmed);

  if (anilistId) {
    const byId = candidates.find((c) => Number(c.anilistId || c.id) === Number(anilistId));
    if (byId) {
      return { status: "exact", matched: byId, suggestions: [] };
    }
    return { status: "invalid_id", matched: null, suggestions: [] };
  }

  const normInput = normalizeMediaTitle(inputTitle);
  const scored = candidates
    .map((c) => {
      const names = getCandidateNames(c);
      let bestScore = 0;
      let exact = false;
      for (const n of names) {
        const normN = normalizeMediaTitle(n);
        if (!normN) continue;
        if (normN === normInput) {
          bestScore = 1;
          exact = true;
          break;
        }
        const sim = computeTitleSimilarity(normInput, normN);
        if (sim > bestScore) bestScore = sim;
      }
      return { candidate: c, score: bestScore, exact };
    })
    .sort((a, b) => b.score - a.score);

  const exactHit = scored.find((s) => s.exact);
  if (exactHit) {
    return { status: "exact", matched: exactHit.candidate, suggestions: [] };
  }

  if (titleConfirmed) {
    return { status: "confirmed", matched: null, suggestions: [] };
  }

  if (section === "anime") {
    const topSuggestions = scored
      .filter((s) => s.score >= 0.42)
      .slice(0, 3)
      .map((s) => ({
        ...s.candidate,
        score: s.score,
      }));
    if (topSuggestions.length > 0) {
      return { status: "suggest", matched: null, suggestions: topSuggestions };
    }
    return { status: "not_found", matched: null, suggestions: [] };
  }

  const closeExisting = scored
    .filter((s) => s.candidate.source === "existing_series" && s.score >= 0.72)
    .slice(0, 3)
    .map((s) => ({ ...s.candidate, score: s.score }));

  if (closeExisting.length > 0) {
    return { status: "suggest", matched: null, suggestions: closeExisting };
  }

  return { status: "ok_new", matched: null, suggestions: [] };
}

/* ── Merging Admin DM Replies Into a Pending Draft ─────────────────────── */

export function mergeAdminFixIntoDraft(draft, replyText, currentIssues = [], mediaMeta = {}) {
  const raw = String(replyText || "").trim();
  const next = {
    ...draft,
    emptyFields: [...(draft.emptyFields || [])],
    invalidFields: [...(draft.invalidFields || [])],
    unknownTags: [...(draft.unknownTags || [])],
    genres: [...(draft.genres || [])],
  };

  if (!raw) return next;

  const clearFieldErrors = (field) => {
    next.emptyFields = next.emptyFields.filter((f) => f !== field);
    next.invalidFields = next.invalidFields.filter((x) => x.field !== field);
    if (field === "section") next.unknownTags = [];
  };

  const issueFields = new Set((currentIssues || []).map((i) => i.field));
  const hasStructuredKeys = raw.split(/\r?\n/).some((line) => {
    const kv = line.trim().match(/^([^:=\-\n]{1,32})\s*[:=]\s*(.*)$/);
    return Boolean(kv && detectFieldKey(kv[1]));
  });
  const hasTags = /#[\p{L}\p{N}_-]+/u.test(raw);
  const hasPipe = raw.includes("|");
  const aniUrl = raw.match(/anilist\.co\/anime\/(\d+)/i);
  const tmdbUrl = raw.match(/themoviedb\.org\/(?:movie|tv)\/(\d+)/i);

  if (aniUrl) {
    next.anilistId = parsePositiveInt(aniUrl[1]);
    next.titleConfirmed = false;
    clearFieldErrors("anilistId");
    clearFieldErrors("title");
  }
  if (tmdbUrl) {
    next.tmdbId = parsePositiveInt(tmdbUrl[1]);
    clearFieldErrors("tmdbId");
  }

  if (hasStructuredKeys || hasTags || hasPipe) {
    const patch = parseChannelCaption(raw, "", mediaMeta);
    if (patch.explicitSection) {
      next.section = patch.section;
      next.explicitSection = true;
      clearFieldErrors("section");
      if (!next.explicitAudio) {
        next.audioLang = normalizeAudioLang(patch.explicitAudio ? patch.audioLang : "", next.section);
      }
      if (next.section === "film" && next.episode == null) {
        next.episode = 1;
        clearFieldErrors("episode");
      }
    }
    if (patch.explicitAudio) {
      next.audioLang = patch.audioLang;
      next.explicitAudio = true;
      clearFieldErrors("audioLang");
    }
    if (patch.title) {
      next.title = patch.title;
      next.normalizedTitle = normalizeMediaTitle(patch.title);
      next.slug = slugifyMediaTitle(next.titleEn || patch.title);
      next.titleConfirmed = false;
      next.anilistId = patch.anilistId || null;
      clearFieldErrors("title");
    }
    if (patch.titleEn) {
      next.titleEn = patch.titleEn;
      clearFieldErrors("titleEn");
    }
    if (patch.episode != null) {
      next.episode = patch.episode;
      clearFieldErrors("episode");
    }
    if (patch.explicitSeason) {
      next.season = patch.season;
      next.explicitSeason = true;
      clearFieldErrors("season");
    }
    if (patch.explicitQuality) {
      next.quality = patch.quality;
      next.qualityRank = qualityToRank(patch.quality);
      next.explicitQuality = true;
      clearFieldErrors("quality");
    }
    if (patch.anilistId) {
      next.anilistId = patch.anilistId;
      clearFieldErrors("anilistId");
    }
    if (patch.tmdbId) {
      next.tmdbId = patch.tmdbId;
      clearFieldErrors("tmdbId");
    }
    if (patch.synopsis) {
      next.synopsis = patch.synopsis;
      clearFieldErrors("synopsis");
    }
    if (patch.genres.length > 0) {
      next.genres = patch.genres;
      clearFieldErrors("genres");
    }
    if (patch.year) {
      next.year = patch.year;
      clearFieldErrors("year");
    }
    for (const f of patch.emptyFields) {
      if (!next.emptyFields.includes(f)) next.emptyFields.push(f);
    }
    for (const inv of patch.invalidFields) {
      next.invalidFields = next.invalidFields.filter((x) => x.field !== inv.field);
      next.invalidFields.push(inv);
    }
    return next;
  }

  if (aniUrl || tmdbUrl) {
    return next;
  }

  const strictNum = parseStrictPositiveInt(raw, 5000);
  if (strictNum != null) {
    if (issueFields.has("episode")) {
      next.episode = strictNum;
      clearFieldErrors("episode");
      return next;
    }
    if (issueFields.has("season")) {
      next.season = strictNum;
      next.explicitSeason = true;
      clearFieldErrors("season");
      return next;
    }
    if (issueFields.has("year") && strictNum >= 1920 && strictNum <= 2100) {
      next.year = strictNum;
      clearFieldErrors("year");
      return next;
    }
    if (issueFields.has("anilistId")) {
      next.anilistId = strictNum;
      clearFieldErrors("anilistId");
      return next;
    }
  }

  const sec = normalizeSection(raw);
  if (sec && issueFields.has("section")) {
    next.section = sec;
    next.explicitSection = true;
    clearFieldErrors("section");
    const audioHint = parseAudioLangStrict(raw);
    if (audioHint) {
      next.audioLang = audioHint;
      next.explicitAudio = true;
      clearFieldErrors("audioLang");
    } else if (!next.explicitAudio) {
      next.audioLang = normalizeAudioLang("", sec);
    }
    if (sec === "film" && next.episode == null) {
      next.episode = 1;
      clearFieldErrors("episode");
    }
    return next;
  }

  const q = parseQualityStrict(raw);
  if (q && issueFields.has("quality")) {
    next.quality = q;
    next.qualityRank = qualityToRank(q);
    next.explicitQuality = true;
    clearFieldErrors("quality");
    return next;
  }

  const aud = parseAudioLangStrict(raw);
  if (aud && issueFields.has("audioLang")) {
    next.audioLang = aud;
    next.explicitAudio = true;
    clearFieldErrors("audioLang");
    return next;
  }

  if (issueFields.has("title")) {
    next.title = raw;
    next.normalizedTitle = normalizeMediaTitle(raw);
    next.slug = slugifyMediaTitle(next.titleEn || raw);
    next.titleConfirmed = false;
    next.anilistId = null;
    clearFieldErrors("title");
    return next;
  }

  if (issueFields.has("synopsis")) {
    next.synopsis = raw;
    clearFieldErrors("synopsis");
    return next;
  }

  if (issueFields.has("genres")) {
    next.genres = raw.split(/[,،/|]+/).map((g) => g.trim()).filter(Boolean);
    clearFieldErrors("genres");
    return next;
  }

  return next;
}

/* ── Pending Reminder Formatting & Interactive Buttons ─────────────────── */

function escapeHtml(s) {
  return String(s ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;");
}

export function formatPendingReminderMessage(draft, issues = [], suggestions = [], meta = {}) {
  const isCard = meta.kind === "series_card";
  const header = isCard
    ? "⚠️ <b>تم إيقاف حفظ بوستر العمل مؤقتاً — يوجد نقص أو خطأ</b>"
    : "⚠️ <b>تم إيقاف نشر الحلقة مؤقتاً — يوجد نقص أو خطأ في البيانات</b>";

  const lines = [header, "<i>لم يتم نشر أي شيء في التطبيق بعد حتى تُكمل البيانات الناقصة.</i>", ""];

  const captured = [];
  if (draft.explicitSection) captured.push(`القسم: <b>${escapeHtml(draft.section)}</b>`);
  if (draft.title) captured.push(`الاسم: <b>${escapeHtml(draft.title)}</b>`);
  if (!isCard && draft.section !== "film" && draft.episode != null) captured.push(`الحلقة: <b>${draft.episode}</b>`);
  if (draft.explicitSeason) captured.push(`الموسم: <b>${draft.season}</b>`);
  if (draft.explicitQuality) captured.push(`الجودة: <b>${escapeHtml(draft.quality)}</b>`);
  if (captured.length > 0) {
    lines.push(`📋 <b>ما تم قراءته:</b> ${captured.join(" · ")}`);
    lines.push("");
  }

  lines.push("❗ <b>المطلوب تعديله أو إكماله:</b>");
  for (const issue of issues) {
    lines.push(`• ${escapeHtml(issue.message)}`);
  }

  if (suggestions.length > 0) {
    lines.push("");
    lines.push("🔎 <b>أقرب أسماء مطابقة وجدتها:</b>");
    suggestions.slice(0, 3).forEach((s, i) => {
      const label = s.titleEn && s.titleEn !== s.title ? `${s.titleEn} (${s.title})` : s.title;
      const badge = s.anilistId ? ` · AniList #${s.anilistId}` : (s.source === "existing_series" ? " · موجود مسبقاً" : "");
      lines.push(`${i + 1}. <b>${escapeHtml(label)}</b>${escapeHtml(badge)}`);
    });
  }

  lines.push("");
  if (issues.length === 1 && issues[0].field === "episode") {
    lines.push("💡 <b>للإكمال بسرعة:</b> أرسل <b>رقم الحلقة فقط</b> هنا الآن (مثال: <code>5</code>).");
  } else if (issues.length === 1 && issues[0].field === "title") {
    lines.push(
      suggestions.length > 0
        ? "💡 <b>للإكمال بسرعة:</b> اضغط الاسم الصحيح من الأزرار بالأسفل، أو أرسل الاسم الصحيح هنا."
        : "💡 <b>للإكمال بسرعة:</b> أرسل <b>الاسم الصحيح</b> هنا (أو رابط AniList)، أو اضغط اعتماد الاسم كما هو."
    );
  } else if (issues.length === 1 && issues[0].field === "section") {
    lines.push("💡 <b>للإكمال بسرعة:</b> اختر القسم من الأزرار بالأسفل.");
  } else {
    lines.push("💡 <b>للإكمال بسرعة:</b> اضغط الأزرار بالأسفل أو أرسل الخانات الناقصة هنا برسالة واحدة (أو عدّل وصف الرسالة في القناة):");
    const sample = [];
    const fields = new Set(issues.map((i) => i.field));
    if (fields.has("section")) sample.push("#انمي");
    if (fields.has("title")) sample.push("الاسم: Attack on Titan");
    if (fields.has("episode")) sample.push("الحلقة: 5");
    if (fields.has("season")) sample.push("الموسم: 1");
    if (fields.has("quality")) sample.push("الجودة: 1080p");
    if (fields.has("audioLang")) sample.push("اللغة: مترجم");
    if (sample.length > 0) {
      lines.push(`<pre>${escapeHtml(sample.join("\n"))}</pre>`);
    }
  }

  return lines.join("\n");
}

export function buildPendingInlineKeyboard(pendingId, issues = [], suggestions = [], draft = {}) {
  const rows = [];
  const fields = new Set(issues.map((i) => i.field));

  if (suggestions.length > 0) {
    suggestions.slice(0, 3).forEach((s, idx) => {
      const display = String(s.titleEn || s.title || "").slice(0, 36);
      const suffix = s.anilistId ? ` (#${s.anilistId})` : "";
      rows.push([{ text: `✅ ${display}${suffix}`, callback_data: `tg_pend_pick:${pendingId}:${idx}` }]);
    });
  }

  const titleIssue = issues.find((i) => i.field === "title");
  if (titleIssue && (titleIssue.code === "suggest" || titleIssue.code === "not_found") && draft.title) {
    rows.push([{ text: `✔️ اعتماد الاسم كما كتبته (${String(draft.title).slice(0, 22)})`, callback_data: `tg_pend_keep_title:${pendingId}` }]);
  }

  if (fields.has("section")) {
    rows.push([
      { text: "🎌 أنمي مترجم", callback_data: `tg_pend_sec:${pendingId}:anime:sub` },
      { text: "🇬🇧 أنمي إنجليزي", callback_data: `tg_pend_sec:${pendingId}:anime:dub_en` },
    ]);
    rows.push([
      { text: "🎨 كرتون", callback_data: `tg_pend_sec:${pendingId}:cartoon:dub_ar` },
      { text: "🎙️ مدبلج", callback_data: `tg_pend_sec:${pendingId}:dubbed:dub_ar` },
      { text: "🎬 فيلم", callback_data: `tg_pend_sec:${pendingId}:film:sub` },
    ]);
  }

  if (fields.has("quality")) {
    rows.push([
      { text: "🎞️ 1080p", callback_data: `tg_pend_q:${pendingId}:1080p` },
      { text: "🎞️ 720p", callback_data: `tg_pend_q:${pendingId}:720p` },
      { text: "🎞️ 480p", callback_data: `tg_pend_q:${pendingId}:480p` },
    ]);
  }

  if (fields.has("audioLang")) {
    rows.push([
      { text: "🇯🇵 مترجم", callback_data: `tg_pend_lang:${pendingId}:sub` },
      { text: "🇬🇧 إنجليزي", callback_data: `tg_pend_lang:${pendingId}:dub_en` },
      { text: "🇸🇦 مدبلج عربي", callback_data: `tg_pend_lang:${pendingId}:dub_ar` },
    ]);
  }

  rows.push([{ text: "❌ إلغاء هذه الحلقة", callback_data: `tg_pend_cancel:${pendingId}` }]);

  return { inline_keyboard: rows };
}

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
    "<i>أو سطر واحد: <code>One Piece | 1120 | 1080p #انمي</code></i>",
    "<i>وللدبلجة الإنجليزية: <code>Solo Leveling | S02E05 | 1080p #انمي_انجليزي</code></i>",
    "",
    "2️⃣ <b>حلقة كرتون أو مدبلج عربي:</b>",
    "<pre>#كرتون\nالاسم: بن 10\nالموسم: 1\nالحلقة: 3\nالجودة: 720p</pre>",
    "<i>أو سطر واحد: <code>بن 10 | م1 ح1 | 720p #كرتون</code> (أو #مدبلج).</i>",
    "",
    "3️⃣ <b>فيلم (أنمي أو كرتون):</b>",
    "<pre>#فيلم\nالاسم: Spirited Away\nالجودة: 1080p\nاللغة: مترجم</pre>",
    "<i>أو سطر واحد: <code>Spirited Away | 2001 | 1080p #فيلم</code></i>",
    "",
    "4️⃣ <b>عمل جديد غير موجود في المصادر (أرسل صورة البوستر أولاً):</b>",
    "<pre>#عمل_جديد\nالقسم: كرتون\nالاسم: بن 10\nالقصة: نبذة مختصرة...\nالتصنيف: أكشن، مغامرة</pre>",
    "",
    "5️⃣ <b>ترجمة خارجية (اختياري):</b>",
    "أرسل ملف <code>.srt</code> أو <code>.vtt</code> كـ <b>رد (Reply)</b> على رسالة الحلقة في القناة.",
    "",
    "🛡️ <b>التدقيق التلقائي مفعّل:</b> لو نسيت أي خانة أو كتبت اسماً خاطئاً، سيوقف البوت النشر ويرسل لك تنبيهاً فورياً لتصحيحها قبل الظهور في التطبيق.",
  ].join("\n");
}

/* ── Private Bot Access Control (Owner + Channel Human Admins Only) ───── */

export function extractAuthorizedAdminIds({
  ownerChatId = "",
  extraAdminIds = "",
  channelMemberLists = [],
} = {}) {
  const allowed = new Set();
  const addId = (raw) => {
    const s = String(raw ?? "").trim();
    if (/^\d{4,20}$/.test(s)) allowed.add(s);
  };
  addId(ownerChatId);
  for (const part of String(extraAdminIds || "").split(/[\s,;]+/)) {
    addId(part);
  }
  for (const members of channelMemberLists || []) {
    if (!Array.isArray(members)) continue;
    for (const m of members) {
      const status = String(m?.status || "");
      const user = m?.user;
      if (!user || user.is_bot === true) continue;
      if (status === "creator" || status === "administrator") {
        addId(user.id);
      }
    }
  }
  return allowed;
}

export function isPrivateSenderAuthorized(msgOrCallback, allowedAdminIds) {
  if (!msgOrCallback || !(allowedAdminIds instanceof Set) || allowedAdminIds.size === 0) {
    return false;
  }
  const from = msgOrCallback.from;
  if (!from || from.is_bot === true) return false;
  const fromId = String(from.id ?? "").trim();
  if (!fromId || !allowedAdminIds.has(fromId)) return false;

  // For regular messages, require private chat matching the authorized user ID (blocks groups/channels)
  if (msgOrCallback.chat) {
    if (msgOrCallback.chat.type !== "private") return false;
    const chatId = String(msgOrCallback.chat.id ?? "").trim();
    if (chatId !== fromId || !allowedAdminIds.has(chatId)) return false;
  }
  return true;
}

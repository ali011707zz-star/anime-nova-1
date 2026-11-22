import {
  normalizeSection,
  parseQualityStrict,
  normalizeQuality,
  normalizeAudioLang,
  parseAudioLangStrict,
  isSuspiciousTitle,
  isMangaSection,
  getSectionDisplayInfo,
  normalizeMediaTitle,
} from "./telegramStorageLogic.mjs";

/* ── Safe Public Media URL Validator (Strict SSRF Protection) ─────────── */

export function isSafePublicMediaUrl(rawUrl) {
  const s = String(rawUrl || "").trim();
  if (!s || s.length > 2048) return false;
  let parsed;
  try {
    parsed = new URL(s);
  } catch {
    return false;
  }
  if (parsed.protocol !== "http:" && parsed.protocol !== "https:") return false;
  const host = parsed.hostname.toLowerCase().replace(/^\[|\]$/g, "");
  if (!host || host === "localhost" || host.endsWith(".localhost") || host.endsWith(".local") || host.endsWith(".internal")) {
    return false;
  }
  if (host === "::1" || host.startsWith("fe80:") || host.startsWith("fc") || host.startsWith("fd")) {
    return false;
  }
  const ipv4 = host.match(/^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/);
  if (ipv4) {
    const [a, b] = [Number(ipv4[1]), Number(ipv4[2])];
    if (a === 0 || a === 10 || a === 127) return false;
    if (a === 169 && b === 254) return false;
    if (a === 172 && b >= 16 && b <= 31) return false;
    if (a === 192 && b === 168) return false;
    if (a === 100 && b >= 64 && b <= 127) return false;
  }
  return true;
}

function toWesternDigits(str) {
  return String(str || "").replace(/[٠-٩]/g, (d) => String(d.charCodeAt(0) - 0x0660));
}

function parseHeaderMetadata(headerText) {
  const text = toWesternDigits(headerText).trim();
  let section = null;
  let audioRaw = "";
  let qualityRaw = "";
  let season = 1;
  let startEp = 1;
  let endEp = null;
  let posterUrl = null;
  let sourceUrl = null;
  let titleParts = [];

  // Extract inline URLs (poster vs source)
  const posterMatch = text.match(/(?:بوستر|صورة|غلاف|poster)\s*[:=]\s*(https?:\/\/\S+)/i);
  let cleaned = text;
  if (posterMatch) {
    posterUrl = posterMatch[1].trim();
    cleaned = cleaned.replace(posterMatch[0], " ");
  }

  // Extract hashtags
  const tags = cleaned.match(/#[\p{L}\p{N}_-]+/gu) || [];
  for (const tag of tags) {
    const cleanTag = normalizeMediaTitle(tag.slice(1).replace(/_/g, " "));
    const sec = normalizeSection(cleanTag);
    if (sec && !section) section = sec;
    if (/(انجليز|دبلجه انجليز|dub en|en dub|anime en|anime dub)/.test(cleanTag)) {
      if (!audioRaw) audioRaw = "dub_en";
    } else if (/(مترجم|\bsub\b)/.test(cleanTag)) {
      if (!audioRaw) audioRaw = "sub";
    } else if (/(مدبلج|عربي|دبلجه عرب|dub ar)/.test(cleanTag)) {
      if (!audioRaw) audioRaw = "dub_ar";
    }
    cleaned = cleaned.replace(tag, " ");
  }

  // Extract range "من 1 الى 10" or "1-10" or "من 5"
  const rangeAr = cleaned.match(/(?:من|from)\s*(?:الحلقة|الحلقه|حلقة|حلقه|الفصل|فصل)?\s*(\d{1,4})\s*(?:الى|إلى|ل|حتى|to|-)\s*(\d{1,4})/i);
  if (rangeAr) {
    startEp = Math.max(1, Number.parseInt(rangeAr[1], 10));
    endEp = Math.max(startEp, Number.parseInt(rangeAr[2], 10));
    cleaned = cleaned.replace(rangeAr[0], " ");
  } else {
    const startAr = cleaned.match(/(?:من|ابدأ|ابدا|start|from)\s*(?:الحلقة|الحلقه|حلقة|حلقه|الفصل|فصل)?\s*[:=]?\s*(\d{1,4})\b/i);
    if (startAr) {
      startEp = Math.max(1, Number.parseInt(startAr[1], 10));
      cleaned = cleaned.replace(startAr[0], " ");
    } else {
      const dashRange = cleaned.match(/(?:^|[\s|])(\d{1,4})\s*-\s*(\d{1,4})(?=$|[\s|])/);
      if (dashRange) {
        startEp = Math.max(1, Number.parseInt(dashRange[1], 10));
        endEp = Math.max(startEp, Number.parseInt(dashRange[2], 10));
        cleaned = cleaned.replace(dashRange[0], " ");
      }
    }
  }

  // Split by pipe | or newline
  const segments = cleaned
    .split(/[|\n]+/)
    .map((s) => s.trim())
    .filter(Boolean);

  for (const seg of segments) {
    // Check if segment is a bare URL (series sourceUrl)
    if (/^https?:\/\/\S+$/i.test(seg)) {
      if (!sourceUrl) sourceUrl = seg.trim();
      continue;
    }

    // Check key: value
    const kv = seg.match(/^([^:：=]{1,28})\s*[:：=]\s*(.+)$/);
    if (kv) {
      const k = normalizeMediaTitle(kv[1]);
      const v = kv[2].trim();
      if (/^(القسم|قسم|section|category)$/.test(k)) {
        const sec = normalizeSection(v);
        if (sec) section = sec;
        continue;
      }
      if (/^(الاسم|اسم|العنوان|name|title|اسم العمل)$/.test(k)) {
        titleParts.push(v);
        continue;
      }
      if (/^(الموسم|موسم|season|s)$/.test(k)) {
        const n = Number.parseInt(v, 10);
        if (Number.isFinite(n) && n > 0 && n <= 99) season = n;
        continue;
      }
      if (/^(الجوده|جوده|quality|q)$/.test(k)) {
        const q = parseQualityStrict(v);
        if (q) qualityRaw = q;
        continue;
      }
      if (/^(اللغه|لغه|الصوت|صوت|lang|audio)$/.test(k)) {
        const a = parseAudioLangStrict(v);
        if (a) audioRaw = a;
        continue;
      }
      if (/^(من|بداية|بدايه|start|الحلقه|حلقه|رقم الحلقه|الفصل|فصل)$/.test(k)) {
        const n = Number.parseInt(v, 10);
        if (Number.isFinite(n) && n > 0) startEp = n;
        continue;
      }
      if (/^(الى|الي|نهاية|نهايه|end|to)$/.test(k)) {
        const n = Number.parseInt(v, 10);
        if (Number.isFinite(n) && n > 0) endEp = n;
        continue;
      }
      if (/^(الرابط|رابط|المصدر|url|link)$/.test(k)) {
        if (/^https?:\/\//i.test(v)) sourceUrl = v;
        continue;
      }
    }

    // Bare tokens: season (م1 / S1), quality (720p / 1080 / 4k), audio, section
    const sTok = seg.match(/^(?:م|الموسم|موسم|s|season)\s*[:\-]?\s*(\d{1,2})$/i);
    if (sTok) {
      season = Math.max(1, Number.parseInt(sTok[1], 10));
      continue;
    }
    const qTok = parseQualityStrict(seg);
    if (qTok) {
      qualityRaw = qTok;
      continue;
    }
    const aTok = parseAudioLangStrict(seg);
    if (aTok && seg.split(/\s+/).length <= 2) {
      audioRaw = aTok;
      continue;
    }
    const secTok = normalizeSection(seg);
    if (secTok && !section) {
      section = secTok;
      continue;
    }

    // Inline URL inside segment
    const inlineUrl = seg.match(/https?:\/\/\S+/i);
    if (inlineUrl) {
      if (!sourceUrl) sourceUrl = inlineUrl[0].trim();
      const rem = seg.replace(inlineUrl[0], "").trim();
      if (rem) titleParts.push(rem);
      continue;
    }

    titleParts.push(seg);
  }

  const title = titleParts.join(" ").replace(/\s+/g, " ").trim();
  const audioLang = normalizeAudioLang(audioRaw, section || "anime");
  const quality = qualityRaw ? normalizeQuality(qualityRaw) : "720p";

  return {
    section,
    title,
    season,
    startEp,
    endEp,
    quality,
    explicitQuality: Boolean(qualityRaw),
    audioLang,
    posterUrl,
    sourceUrl,
  };
}

/* ── Plan 1: /batch (الرفع الجماعي في القناة بدون وصف) ────────────────── */

export function parseBatchCommand(rawText) {
  const body = String(rawText || "")
    .replace(/^\/(?:batch|دفعة|دفعه)(?:@\S+)?\s*/i, "")
    .trim();

  if (!body) {
    return {
      ok: false,
      errorAr:
        "ℹ️ اكتب بيانات العمل بعد الأمر مباشرة، مثال:\n" +
        "<code>/دفعة #سبيستون | دري لاند | م1 | 720p | من 2</code>\n\n" +
        "بعدها حوّل أو ارفع كل الحلقات لقناة التخزين بدون أي وصف وسيتم ترقيمها ونشرها تلقائياً، ثم أرسل /انهاء.",
    };
  }

  const meta = parseHeaderMetadata(body);
  if (!meta.section) {
    return {
      ok: false,
      errorAr:
        "⚠️ لم تحدد القسم! أضف وسم القسم مثل <code>#سبيستون</code> أو <code>#انمي</code> أو <code>#كرتون</code>.\n" +
        "مثال: <code>/دفعة #سبيستون | دري لاند | م1 | 720p | من 2</code>",
    };
  }
  const titleCheck = isSuspiciousTitle(meta.title);
  if (titleCheck.suspicious) {
    return {
      ok: false,
      errorAr:
        "⚠️ لم أتمكن من قراءة اسم العمل بشكل صحيح.\n" +
        "مثال: <code>/دفعة #سبيستون | دري لاند | م1 | 720p | من 2</code>",
    };
  }

  return {
    ok: true,
    session: {
      section: meta.section,
      title: meta.title,
      season: meta.season,
      nextEpisode: meta.startEp,
      quality: meta.quality,
      explicitQuality: meta.explicitQuality,
      audioLang: meta.audioLang,
      isManga: isMangaSection(meta.section),
    },
  };
}

/* ── Plan 2: /leech (السحب والرفع السحابي من روابط متعددة) ────────────── */

export function parseLeechCommand(rawText) {
  const body = String(rawText || "")
    .replace(/^\/(?:leech|سحب|رفع_رابط|رفع_روابط)(?:@\S+)?\s*/i, "")
    .trim();

  if (!body) {
    return {
      ok: false,
      errorAr:
        "ℹ️ أرسل بيانات العمل في السطر الأول ثم روابط الحلقات تحتها، مثال:\n" +
        "<pre>/سحب #سبيستون | دري لاند | م1 | 720p | من 2\nhttps://example.com/ep2.mp4\nhttps://example.com/ep3.mp4</pre>",
    };
  }

  const lines = body.split(/\r?\n/).map((l) => l.trim()).filter(Boolean);
  const headerLines = [];
  const rawLinkItems = [];

  for (const line of lines) {
    const isPosterLine = /^(?:بوستر|صورة|غلاف|poster)\s*[:=]\s*https?:\/\//i.test(line);
    if (isPosterLine) {
      headerLines.push(line);
      continue;
    }
    const urlMatch = line.match(/https?:\/\/\S+/i);
    if (urlMatch && headerLines.length > 0) {
      const url = urlMatch[0].trim();
      const prefix = toWesternDigits(line.slice(0, urlMatch.index || 0)).trim();
      const epMatch = prefix.match(/(?:الحلقة|الحلقه|حلقة|حلقه|ح|ep|episode|e)?\s*(\d{1,4})\s*[:\-|]?$/i);
      const explicitEp = epMatch ? Number.parseInt(epMatch[1], 10) : null;
      rawLinkItems.push({ url, explicitEp });
    } else if (urlMatch && headerLines.length === 0 && line.includes("|")) {
      // Single-line form: /سحب #سبيستون | دري لاند | ح2 | https://...
      const url = urlMatch[0].trim();
      headerLines.push(line.replace(url, "").trim());
      rawLinkItems.push({ url, explicitEp: null });
    } else {
      headerLines.push(line);
    }
  }

  const meta = parseHeaderMetadata(headerLines.join("\n"));
  if (!meta.section) {
    return {
      ok: false,
      errorAr:
        "⚠️ لم تحدد القسم في السطر الأول! أضف مثل <code>#سبيستون</code> أو <code>#انمي</code> أو <code>#كرتون</code>.",
    };
  }
  if (isMangaSection(meta.section)) {
    return {
      ok: false,
      errorAr: "⚠️ أمر /سحب مخصص لحلقات الفيديو والأفلام. لرفع المانجا استخدم /دفعة مع ملفات ZIP/CBZ.",
    };
  }
  const titleCheck = isSuspiciousTitle(meta.title);
  if (titleCheck.suspicious) {
    return {
      ok: false,
      errorAr: "⚠️ لم تكتب اسم العمل بشكل صحيح في السطر الأول.",
    };
  }
  if (rawLinkItems.length === 0) {
    return {
      ok: false,
      errorAr:
        "⚠️ لم أجد أي رابط تحميل في الرسالة!\n" +
        "ضع رابط كل حلقة في سطر منفصل بعد السطر الأول.",
    };
  }
  if (rawLinkItems.length > 30) {
    return {
      ok: false,
      errorAr: "⚠️ الحد الأقصى في الدفعة الواحدة هو 30 رابطاً لحماية سرعة السيرفر — قسّمها إلى دفعتين.",
    };
  }

  const invalidUrls = [];
  const items = [];
  let cursorEp = meta.startEp;
  for (const raw of rawLinkItems) {
    if (!isSafePublicMediaUrl(raw.url)) {
      invalidUrls.push(raw.url);
      continue;
    }
    const epNum = raw.explicitEp && raw.explicitEp > 0 ? raw.explicitEp : cursorEp;
    cursorEp = epNum + 1;
    items.push({
      episodeNumber: epNum,
      url: raw.url,
    });
  }

  if (invalidUrls.length > 0 && items.length === 0) {
    return {
      ok: false,
      errorAr: "⚠️ الروابط المرسلة غير صالحة أو محظورة أمنياً — تأكد أنها روابط http/https عامة صحيحة.",
    };
  }

  return {
    ok: true,
    job: {
      section: meta.section,
      title: meta.title,
      season: meta.season,
      quality: meta.quality,
      explicitQuality: meta.explicitQuality,
      audioLang: meta.audioLang,
      posterUrl: meta.posterUrl && isSafePublicMediaUrl(meta.posterUrl) ? meta.posterUrl : null,
      items,
      skippedInvalidCount: invalidUrls.length,
    },
  };
}

/* ── Plan 3: /import (استيراد مسلسل كامل تلقائياً من صفحة أو مصدر) ───── */

export function parseImportCommand(rawText) {
  const body = String(rawText || "")
    .replace(/^\/(?:import|استيراد|سحب_مسلسل)(?:@\S+)?\s*/i, "")
    .trim();

  if (!body) {
    return {
      ok: false,
      errorAr:
        "ℹ️ لاستيراد مسلسل كامل تلقائياً، اختر إحدى الطريقتين:\n\n" +
        "1️⃣ <b>من مصادر التطبيق مباشرة:</b>\n" +
        "<code>/استيراد #سبيستون | دري لاند | من 1 الى 10</code>\n\n" +
        "2️⃣ <b>من رابط صفحة المسلسل على أي موقع:</b>\n" +
        "<code>/استيراد #سبيستون | دري لاند | https://site.com/show | من 1 الى 10</code>",
    };
  }

  const meta = parseHeaderMetadata(body);
  if (!meta.section) {
    return {
      ok: false,
      errorAr:
        "⚠️ لم تحدد القسم! مثال:\n<code>/استيراد #سبيستون | دري لاند | من 1 الى 10</code>",
    };
  }
  if (isMangaSection(meta.section)) {
    return {
      ok: false,
      errorAr: "⚠️ أمر /استيراد مخصص لمسلسلات الفيديو حالياً.",
    };
  }
  const titleCheck = isSuspiciousTitle(meta.title);
  if (titleCheck.suspicious) {
    return {
      ok: false,
      errorAr: "⚠️ اكتب اسم العمل بشكل واضح. مثال:\n<code>/استيراد #سبيستون | دري لاند | من 1 الى 10</code>",
    };
  }
  if (meta.sourceUrl && !isSafePublicMediaUrl(meta.sourceUrl)) {
    return {
      ok: false,
      errorAr: "⚠️ رابط الصفحة غير صالح أو محظور أمنياً.",
    };
  }

  const fromEp = Math.max(1, meta.startEp || 1);
  const toEp = meta.endEp != null ? Math.min(fromEp + 29, Math.max(fromEp, meta.endEp)) : fromEp + 11;

  return {
    ok: true,
    request: {
      section: meta.section,
      title: meta.title,
      season: meta.season,
      quality: meta.quality,
      explicitQuality: meta.explicitQuality,
      audioLang: meta.audioLang,
      fromEp,
      toEp,
      sourceUrl: meta.sourceUrl,
      posterUrl: meta.posterUrl && isSafePublicMediaUrl(meta.posterUrl) ? meta.posterUrl : null,
    },
  };
}

/* ── External HTML Series Page Link Extractor ─────────────────────────── */

export function extractCandidateEpisodeLinksFromHtml(html, baseUrl) {
  const rawHtml = String(html || "");
  if (!rawHtml) return [];
  const results = [];
  const seen = new Set();

  const resolveHref = (raw) => {
    try {
      const u = new URL(raw, baseUrl).toString();
      return isSafePublicMediaUrl(u) ? u : null;
    } catch {
      return null;
    }
  };

  // 1. Direct video/HLS URLs embedded in HTML/scripts
  const directMatches = rawHtml.match(/https?:\/\/[^\s"'<>\\]+\.(?:mp4|m3u8|mkv|webm)(?:\?[^\s"'<>\\]*)?/gi) || [];
  for (const m of directMatches) {
    const clean = m.replace(/\\u0026/g, "&").replace(/\\\//g, "/");
    if (isSafePublicMediaUrl(clean) && !seen.has(clean)) {
      seen.add(clean);
      results.push({ url: clean, episodeNumber: null, kind: "direct" });
    }
  }

  // 2. Known file host links (MediaFire, Pixeldrain, Google Drive, OK.ru, MP4Upload)
  const hostMatches = rawHtml.match(/https?:\/\/(?:www\.)?(?:mediafire\.com\/file\/[^\s"'<>]+|pixeldrain\.com\/u\/[^\s"'<>]+|drive\.google\.com\/file\/d\/[^\s"'<>]+|ok\.ru\/video\/[^\s"'<>]+|mp4upload\.com\/[^\s"'<>]+)/gi) || [];
  for (const m of hostMatches) {
    if (isSafePublicMediaUrl(m) && !seen.has(m)) {
      seen.add(m);
      results.push({ url: m, episodeNumber: null, kind: "host" });
    }
  }

  // 3. Episode anchor links <a href="...">الحلقة 5</a>
  const anchorRe = /<a\b[^>]*href=["']([^"'#]+)["'][^>]*>([\s\S]*?)<\/a>/gi;
  let m;
  while ((m = anchorRe.exec(rawHtml)) !== null) {
    const href = resolveHref(m[1]);
    if (!href || seen.has(href)) continue;
    const text = toWesternDigits(m[2].replace(/<[^>]+>/g, " ").replace(/\s+/g, " ").trim());
    const epFromText = text.match(/(?:الحلقة|الحلقه|حلقة|حلقه|episode|ep)\s*[:\-]?\s*(\d{1,4})\b/i);
    const epFromUrl = href.match(/(?:episode|ep|ح|حلقة)[-_\/]?(\d{1,4})(?:[^\d]|$)/i);
    const epNum = epFromText
      ? Number.parseInt(epFromText[1], 10)
      : epFromUrl
        ? Number.parseInt(epFromUrl[1], 10)
        : null;
    if (epNum && epNum > 0) {
      seen.add(href);
      results.push({ url: href, episodeNumber: epNum, kind: "episode_page" });
    }
  }

  // Sort numbered episode links ascending; keep direct links in discovery order
  const numbered = results.filter((r) => r.episodeNumber != null).sort((a, b) => a.episodeNumber - b.episodeNumber);
  const unnumbered = results.filter((r) => r.episodeNumber == null);
  return numbered.length > 0 ? numbered : unnumbered;
}

/* ── Failure Classifier & Admin Replacement Alert Formatting ──────────── */

export function classifyPullErrorArabic(rawError) {
  const s = String(rawError || "").toLowerCase();
  if (/cloudflare|just a moment|attention required|cf-ray|403/.test(s)) {
    return "الموقع محمي بـ Cloudflare أو منع التحميل المباشر (403)";
  }
  if (/404|not found|deleted|removed|does not exist/.test(s)) {
    return "الرابط غير موجود أو تم حذف الملف من المصدر (404)";
  }
  if (/410|expired|signature/.test(s)) {
    return "انتهت صلاحية رابط التحميل";
  }
  if (/429|too many|rate limit|flood/.test(s)) {
    return "المصدر يقيّد عدد الطلبات مؤقتاً (Rate Limit)";
  }
  if (/timeout|timed out|abort|etimedout|econnreset|econnrefused|enotfound/.test(s)) {
    return "انتهت مهلة الاتصال بالمصدر أو السيرفر المصدر متوقف حالياً";
  }
  if (/too_large|max-filesize|exceeds/.test(s)) {
    return "حجم الملف أكبر من حد تليجرام (1.95 GB)";
  }
  if (/not_video|html_page|invalid_media/.test(s)) {
    return "الرابط أعاد صفحة ويب (HTML) وليس ملف فيديو قابل للسحب";
  }
  if (/unsupported url|no video formats|yt-dlp/.test(s)) {
    return "الموقع غير مدعوم للسحب التلقائي المباشر";
  }
  if (/disk_space/.test(s)) {
    return "المساحة المؤقتة على السيرفر منخفضة حالياً";
  }
  return rawError ? `تعذّر السحب من المصدر (${String(rawError).slice(0, 110)})` : "تعذّر السحب من المصدر";
}

function escapeHtml(s) {
  return String(s || "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;");
}

export function formatReplacementAlertMessage(item, reasonAr, remainingCount = 0) {
  const secInfo = getSectionDisplayInfo(item.section, item.audio_lang || item.audioLang || "sub");
  const displayUrl = String(item.source_url || item.sourceUrl || "").startsWith("nova-internal://")
    ? "مصدر التطبيق الداخلي"
    : String(item.source_url || item.sourceUrl || "—").slice(0, 140);
  const lines = [
    "⚠️ <b>فشل السحب من هذا الموقع أو المصدر!</b>",
    "",
    `🎬 العمل: <b>${escapeHtml(item.title)}</b>`,
    `📂 القسم: <b>${secInfo.labelAr}</b> · الموسم ${item.season_number ?? item.season ?? 1} · الحلقة <b>${item.episode_number ?? item.episodeNumber}</b>`,
    `🌐 المصدر/الرابط: <code>${escapeHtml(displayUrl)}</code>`,
    `❌ السبب: <b>${escapeHtml(reasonAr)}</b>`,
    "",
    `💡 <b>أرسل رابطاً بديلاً للحلقة ${item.episode_number ?? item.episodeNumber} هنا مباشرة الآن</b> وسأكمل سحبها ورفعها فوراً، أو اختر من الأزرار بالأسفل.`,
  ];
  if (remainingCount > 0) {
    lines.push(`\n⏳ متبقٍ في الطابور بعدها: <b>${remainingCount}</b> حلقة.`);
  }
  return lines.join("\n");
}

export function buildReplacementInlineKeyboard(itemId) {
  return {
    inline_keyboard: [
      [
        { text: "🔄 إعادة المحاولة", callback_data: `tg_q_retry:${itemId}` },
        { text: "⏭️ تخطّي هذه الحلقة", callback_data: `tg_q_skip:${itemId}` },
      ],
      [
        { text: "🛑 إيقاف الطابور بالكامل", callback_data: "tg_q_stop" },
      ],
    ],
  };
}

export function formatAutomationHelpMessage() {
  return [
    "🚀 <b>أوامر الرفع السريع والتلقائي (NOVA VIP)</b>",
    "",
    "1️⃣ <b>وضع الدفعة (رفع/تحويل جماعي بدون وصف):</b>",
    "• أرسل الأمر مرة واحدة:",
    "<code>/دفعة #سبيستون | دري لاند | م1 | 720p | من 2</code>",
    "• ثم حوّل أو ارفع كل الحلقات في قناتك الخاصة <b>بدون أي وصف</b>، وسيتم ترقيمها وربطها بالبوستر تلقائياً!",
    "• عند الانتهاء أرسل: /انهاء",
    "",
    "2️⃣ <b>السحب السحابي من روابط (/سحب أو /leech):</b>",
    "• السيرفر يسحب الحلقات ويرفعها لتليجرام بسرعة السيرفر بدون استهلاك إنترنت هاتفك:",
    "<pre>/سحب #سبيستون | دري لاند | م1 | 720p | من 2\nhttps://link-ep2...\nhttps://link-ep3...</pre>",
    "<i>يدعم: روابط MP4 مباشرة، روابط .m3u8، MediaFire، Pixeldrain، Google Drive، OK.ru، ومئات المواقع.</i>",
    "",
    "3️⃣ <b>استيراد مسلسل كامل تلقائياً (/استيراد أو /import):</b>",
    "• من مصادر التطبيق مباشرة:",
    "<code>/استيراد #سبيستون | دري لاند | من 1 الى 10</code>",
    "• أو من رابط صفحة المسلسل:",
    "<code>/استيراد #سبيستون | دري لاند | https://site.com/show | من 1 الى 10</code>",
    "",
    "4️⃣ <b>متابعة والتحكم بالطابور:</b>",
    "• /الطابور أو /queue — عرض حالة السحب والرفع",
    "• /ايقاف_الطابور أو /stopqueue — إيقاف وإلغاء الطابور",
    "",
    "🔔 <b>تنبيه تلقائي عند الفشل:</b> إذا فشل السحب من أي موقع أو رابط، يرسل لك البوت تنبيهاً فورياً بالسبب ويطلب منك إرسال <b>رابط بديل</b> أو تخطي الحلقة!",
  ].join("\n");
}

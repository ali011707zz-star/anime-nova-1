// Pure offline subtitle discovery & multi-language selection logic (no RN dependencies)

export function normalizeSubLang(rawLang, rawName = "") {
  const combined = `${String(rawLang || "")} ${String(rawName || "")}`.trim().toLowerCase();
  if (!combined) return "";
  if (
    /\b(ar|ara|arabic|arb)\b/.test(combined) ||
    combined.includes("عرب") ||
    combined.includes("العربية")
  ) {
    return "ar";
  }
  if (
    /\b(en|eng|english)\b/.test(combined) ||
    combined.includes("إنجليز") ||
    combined.includes("انجليز")
  ) {
    return "en";
  }
  const clean = String(rawLang || "").trim().toLowerCase();
  if (/^[a-z]{2,3}(-[a-z0-9]+)?$/.test(clean)) {
    return clean.slice(0, 2);
  }
  return "";
}

export function isLikelyArabicSubtitleUrl(url) {
  const s = String(url || "").trim().toLowerCase();
  if (!s) return false;
  return (
    s.includes("translate-vtt") ||
    s.includes("dl.opensubtitles.org") ||
    s.includes("dmcdn.net") ||
    /[_.-](?:ar|ara|arabic)\.(?:vtt|srt|ass)(?:[?#]|$)/i.test(s) ||
    /[?&]lang=ar(?:&|$)/i.test(s)
  );
}

export function extractInnerSubtitleUrl(rawUrl) {
  let current = String(rawUrl || "").trim();
  if (!current) return "";
  for (let i = 0; i < 3; i += 1) {
    if (!current.includes("translate-vtt")) break;
    try {
      const qIdx = current.indexOf("?");
      if (qIdx === -1) break;
      const params = new URLSearchParams(current.slice(qIdx + 1));
      const inner = params.get("url");
      if (!inner) break;
      const decoded = decodeURIComponent(inner).trim();
      if (!decoded || decoded === current) break;
      current = decoded;
    } catch {
      break;
    }
  }
  return current;
}

export function parseHlsMediaAttributes(line) {
  const raw = String(line || "").replace(/^#EXT-X-MEDIA:/i, "");
  const out = {};
  const attrRx = /([A-Z0-9-]+)=("([^"]*)"|([^,]*))/gi;
  let match;
  while ((match = attrRx.exec(raw)) !== null) {
    out[match[1].toUpperCase()] = match[3] ?? match[4] ?? "";
  }
  return out;
}

export function resolveUriAgainstBase(uri, baseUrl) {
  const clean = String(uri || "").trim();
  if (!clean) return "";
  try {
    return new URL(clean, baseUrl).toString();
  } catch {
    return clean;
  }
}

export function extractSubtitleTracksFromHlsManifest(playlistText, baseUrl) {
  const lines = String(playlistText || "")
    .replace(/\r/g, "")
    .split("\n")
    .map((line) => line.trim())
    .filter(Boolean);
  const found = [];
  const seenUrls = new Set();

  for (const line of lines) {
    if (!line.startsWith("#EXT-X-MEDIA:")) continue;
    const attrs = parseHlsMediaAttributes(line);
    if (String(attrs.TYPE || "").toUpperCase() !== "SUBTITLES") continue;
    if (!attrs.URI) continue;
    const url = resolveUriAgainstBase(attrs.URI, baseUrl);
    if (!url || seenUrls.has(url)) continue;
    seenUrls.add(url);
    const lang = normalizeSubLang(attrs.LANGUAGE, attrs.NAME) || (isLikelyArabicSubtitleUrl(url) ? "ar" : "en");
    const label = String(attrs.NAME || attrs.LANGUAGE || (lang === "ar" ? "عربي" : lang === "en" ? "English" : "Subtitle")).trim();
    found.push({
      url,
      lang,
      label,
      isDefault: String(attrs.DEFAULT || "").toUpperCase() === "YES",
    });
  }

  found.sort((a, b) => {
    const rank = (l) => (l === "ar" ? 0 : l === "en" ? 1 : 2);
    const diff = rank(a.lang) - rank(b.lang);
    if (diff !== 0) return diff;
    return Number(b.isDefault) - Number(a.isDefault);
  });

  return found;
}

export function collectExternalSubtitleCandidates({
  subtitleUrl,
  englishSubtitleUrl,
  subtitleTracks,
  baseUrl,
  site,
}) {
  const candidates = [];
  const seen = new Set();

  const pushCandidate = (lang, url, label) => {
    const cleanUrl = String(url || "").trim();
    if (!cleanUrl) return;
    const normLang = normalizeSubLang(lang, label) || (isLikelyArabicSubtitleUrl(cleanUrl) ? "ar" : "en");
    const key = `${normLang}|${cleanUrl}`;
    if (seen.has(key)) return;
    seen.add(key);
    candidates.push({
      lang: normLang,
      url: cleanUrl,
      label: String(label || (normLang === "ar" ? "عربي" : "English")).trim(),
    });
  };

  if (Array.isArray(subtitleTracks)) {
    for (const tr of subtitleTracks) {
      if (!tr || !tr.url) continue;
      const trLang = normalizeSubLang(tr.lang, tr.label) || (isLikelyArabicSubtitleUrl(tr.url) ? "ar" : "en");
      pushCandidate(trLang, tr.url, tr.label);
      if (tr.url.includes("translate-vtt")) {
        const inner = extractInnerSubtitleUrl(tr.url);
        if (inner && inner !== tr.url) {
          pushCandidate("en", inner, "English");
        }
      }
    }
  }

  const primary = String(subtitleUrl || "").trim();
  if (primary) {
    if (primary.includes("translate-vtt")) {
      pushCandidate("ar", primary, "عربي");
      const inner = extractInnerSubtitleUrl(primary);
      if (inner && inner !== primary) {
        pushCandidate("en", inner, "English");
      }
    } else if (
      isLikelyArabicSubtitleUrl(primary) ||
      site === "anime4up2" ||
      String(site || "").startsWith("donghua")
    ) {
      pushCandidate("ar", primary, "عربي");
    } else {
      if (baseUrl) {
        const cleanBase = String(baseUrl).replace(/\/+$/, "");
        pushCandidate(
          "ar",
          `${cleanBase}/api/anime/translate-vtt?url=${encodeURIComponent(primary)}&from=en&to=ar`,
          "عربي (مترجم)",
        );
      }
      pushCandidate("en", primary, "English");
    }
  }

  const enRaw = String(englishSubtitleUrl || "").trim();
  if (enRaw) {
    const innerEn = extractInnerSubtitleUrl(enRaw) || enRaw;
    pushCandidate("en", innerEn, "English");
    if (baseUrl && !candidates.some((c) => c.lang === "ar")) {
      const cleanBase = String(baseUrl).replace(/\/+$/, "");
      pushCandidate(
        "ar",
        `${cleanBase}/api/anime/translate-vtt?url=${encodeURIComponent(innerEn)}&from=en&to=ar`,
        "عربي (مترجم)",
      );
    }
  }

  candidates.sort((a, b) => {
    const rank = (l) => (l === "ar" ? 0 : l === "en" ? 1 : 2);
    return rank(a.lang) - rank(b.lang);
  });

  return candidates;
}

export function subtitleTrackPathForVideo(videoPath, lang) {
  const clean = String(videoPath || "");
  const norm = normalizeSubLang(lang);
  const suffix = norm === "ar" ? "_ar.vtt" : norm === "en" ? "_en.vtt" : norm ? `_${norm}.vtt` : ".vtt";
  return /\.(?:mp4|ts|m4v|mkv|webm|m3u8)$/i.test(clean)
    ? clean.replace(/\.(?:mp4|ts|m4v|mkv|webm|m3u8)$/i, suffix)
    : `${clean}${suffix}`;
}

export function normalizeOfflineSubtitleTracks(tracks, fallbackSinglePath) {
  const out = [];
  const seenLang = new Set();
  if (Array.isArray(tracks)) {
    for (const t of tracks) {
      if (!t) continue;
      const uri = String(t.localPath || t.url || "").trim();
      if (!uri) continue;
      const lang = normalizeSubLang(t.lang, t.label) || "ar";
      if (seenLang.has(lang)) continue;
      seenLang.add(lang);
      out.push({
        lang,
        label: String(t.label || (lang === "ar" ? "عربي" : lang === "en" ? "English" : lang)).trim(),
        uri,
      });
    }
  }
  const fb = String(fallbackSinglePath || "").trim();
  if (fb && out.length === 0) {
    out.push({ lang: "ar", label: "عربي", uri: fb });
  } else if (fb && !seenLang.has("ar")) {
    out.unshift({ lang: "ar", label: "عربي", uri: fb });
  }
  return out;
}

export function getAvailableOfflineSubLangs(tracks, fallbackSinglePath) {
  return normalizeOfflineSubtitleTracks(tracks, fallbackSinglePath).map((t) => t.lang);
}

export function selectOfflineSubtitleTrack(tracks, fallbackSinglePath, requestedLang = "ar", exactOnly = false) {
  const normalized = normalizeOfflineSubtitleTracks(tracks, fallbackSinglePath);
  if (normalized.length === 0) return null;
  const want = normalizeSubLang(requestedLang) || "ar";
  const exact = normalized.find((t) => t.lang === want);
  if (exact) return exact;
  if (exactOnly) return null;
  return normalized.find((t) => t.lang === "ar") || normalized[0];
}

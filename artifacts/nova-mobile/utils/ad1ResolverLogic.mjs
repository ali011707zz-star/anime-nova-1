export const AD1_BASE_URL = "https://w1.anime4up.rest";

export function slugifyAnime4upTitle(raw) {
  return String(raw || "")
    .toLowerCase()
    .replace(/['’`"]/g, "")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

export function buildAnime4upEpisodeCandidates({ title, english, epNum }) {
  const ep = Number(epNum);
  if (!Number.isFinite(ep) || ep <= 0) return [];
  const epStr = String(Math.floor(ep));
  const out = [];
  const seenSlugs = new Set();
  for (const candidate of [english, title]) {
    const slug = slugifyAnime4upTitle(candidate);
    if (!slug || seenSlugs.has(slug)) continue;
    seenSlugs.add(slug);
    out.push(`${AD1_BASE_URL}/episode/${encodeURIComponent(slug + "-الحلقة-" + epStr)}/`);
    out.push(`${AD1_BASE_URL}/episode/${encodeURIComponent(slug + "-الحلقة-" + epStr + "-مترجمة")}/`);
  }
  return out;
}

/**
 * Parses an Anime4Up episode page for both legacy direct-URL data-watch entries
 * and the new A4SL 1.2 opaque hex IDs (resolved via POST ?a4sl_media=1).
 */
export function extractAnime4upEpisodeMeta(html) {
  const src = String(html || "");
  if (!src) return { episodeId: null, servers: [] };

  const epIdMatch =
    src.match(/\bconst\s+episodeId\s*=\s*(\d+)\s*;/) ||
    src.match(/\bepisodeId\s*[:=]\s*["']?(\d+)["']?/i) ||
    src.match(/data-post=["'](\d+)["']/i);
  const episodeId = epIdMatch?.[1] ? epIdMatch[1] : null;

  const servers = [];
  const seen = new Set();
  const re = /<li[^>]*\sdata-watch=["']([^"']{4,})["'][^>]*>([\s\S]*?)<\/li>/gi;
  for (const m of src.matchAll(re)) {
    const watchValue = String(m[1] || "").trim();
    if (!watchValue || seen.has(watchValue)) continue;
    seen.add(watchValue);
    const label = String(m[2] || "").replace(/<[^>]+>/g, " ").replace(/\s+/g, " ").trim();
    const lowerLabel = label.toLowerCase();

    // Skip VnxPlayer external-sub servers (handled by AD 2) and unusable hosts
    if (/^anime4up\s*[12]\b/i.test(lowerLabel)) continue;
    if (/Anime4up-S[12]\/mal\/|4n\.kiuy6h1\.shop|mega\.nz|mega\.co\.nz|sendvid\./i.test(watchValue)) continue;

    let priority = 10;
    if (/megamax\s*2/i.test(lowerLabel)) priority = 100;
    else if (/megamax|share4max/i.test(lowerLabel) || /megamax\.me|share4max\.com/i.test(watchValue)) priority = 95;
    else if (/voe/i.test(lowerLabel) || /voe\.sx/i.test(watchValue)) priority = 80;
    else if (/ok\.ru|\bok\b/i.test(lowerLabel)) priority = 75;
    else if (/streamwish|streamhg|vidhide|earnvids|lulustream/i.test(lowerLabel)) priority = 60;
    else if (/uqload/i.test(lowerLabel)) priority = 40;
    else if (/mp4upload/i.test(lowerLabel)) priority = 5;

    const isDirectUrl = /^https?:\/\//i.test(watchValue);
    servers.push({
      watchValue,
      label: label || "سيرفر",
      isDirectUrl,
      priority,
    });
  }

  servers.sort((a, b) => b.priority - a.priority);
  return { episodeId, servers };
}

export function extractAnime4upSeriesUrlFromSearchHtml(html, title, english) {
  const src = String(html || "");
  if (!src) return null;
  const targets = [english, title]
    .filter(Boolean)
    .map((t) => slugifyAnime4upTitle(t))
    .filter(Boolean);

  const links = [];
  const seen = new Set();
  const re = /href=["'](https?:\/\/[^"']*\/anime\/[^"'#?]+\/?)["']/gi;
  for (const m of src.matchAll(re)) {
    const raw = m[1].replace(/^https?:\/\/[^/]+/i, AD1_BASE_URL);
    if (seen.has(raw)) continue;
    seen.add(raw);
    links.push(raw);
  }
  if (!links.length) return null;

  for (const slug of targets) {
    const exact = links.find((u) => decodeURIComponent(u).toLowerCase().includes(`/anime/${slug}`));
    if (exact) return exact;
  }
  return links[0];
}

export function extractAnime4upEpisodeUrlFromSeriesHtml(html, epNum) {
  if (!html || !epNum || epNum <= 0) return null;
  const epStr = String(epNum);
  const normalizeHost = (u) => String(u || "").replace(/^https?:\/\/[^/]+/i, AD1_BASE_URL);

  // Pass 1: Match by anchor text (handles Anime4Up random episode slugs like "...-الحلقة-ydjwa/" with label "الحلقة 12")
  const anchorRe = /<a\b[^>]*href=["'](https?:\/\/[^"']+\/episode\/[^"']+)["'][^>]*>([\s\S]{0,240}?)<\/a>/gi;
  const textExactRe = new RegExp(`(?:^|[^0-9])(?:الحلقة|حلقة|episode|ep)?\s*0*${epStr}(?!\d)`, "i");
  const isSpecialRe = /(?:ova|oav|special|خاصة|الأوفا|فيلم|movie|recap)/i;
  let anchorFallback = null;
  let am;
  while ((am = anchorRe.exec(html)) !== null) {
    const rawHref = am[1];
    const cleanText = am[2].replace(/<[^>]+>/g, " ").replace(/\s+/g, " ").trim();
    if (!cleanText || !textExactRe.test(cleanText)) continue;
    if (!isSpecialRe.test(cleanText)) {
      return normalizeHost(rawHref);
    }
    if (!anchorFallback) anchorFallback = rawHref;
  }
  if (anchorFallback) return normalizeHost(anchorFallback);

  // Pass 2: Fallback to URL slug matching
  const re = /href=["'](https?:\/\/[^"']+\/episode\/[^"']+)["']/gi;
  const seen = new Set();
  const candidates = [];
  let m;
  while ((m = re.exec(html)) !== null) {
    const raw = m[1];
    if (seen.has(raw)) continue;
    seen.add(raw);
    let decoded = raw;
    try { decoded = decodeURIComponent(raw); } catch {}
    const exactArabic = new RegExp(`(?:الحلقة|حلقة|episode|ep)[-_\s]*0*${epStr}(?:[-_/]|$)`, "i");
    const trailingNum = new RegExp(`[-_]0*${epStr}(?:[-_/]|$)`);
    if (exactArabic.test(decoded)) {
      candidates.push({ url: normalizeHost(raw), score: 100 });
    } else if (trailingNum.test(decoded)) {
      candidates.push({ url: normalizeHost(raw), score: 50 });
    }
  }
  candidates.sort((a, b) => b.score - a.score);
  return candidates[0]?.url || null;
}

export function normalizeAd1QualityLabel(label) {
  const lower = String(label || "").toLowerCase();
  if (lower.includes("1080") || lower.includes("fhd")) return "1080p";
  if (lower.includes("720") || lower.includes("hd")) return "720p";
  if (lower.includes("480") || lower.includes("sd")) return "480p";
  if (lower.includes("360")) return "360p";
  return "720p";
}

/**
 * Extracts ranked client-extractable mirror candidates from a MegaMax/Share4Max
 * Inertia `props.streams.data` array.
 */
export function selectPreferredAd1Mirrors(streamsData, preferredQuality, forDownload = false) {
  if (!Array.isArray(streamsData) || !streamsData.length) return [];

  const prefQ = preferredQuality ? normalizeAd1QualityLabel(preferredQuality) : "";

  const scoreMirror = (m) => {
    const d = String(m?.driver || "").toLowerCase();
    const l = String(m?.link || "").toLowerCase();
    if (!l || /mega\.nz|mega\.co\.nz|file-upload|sendvid/i.test(l)) return 0;
    if (forDownload) {
      if (d === "ok" || l.includes("ok.ru")) return 130;
      if (d === "mixdrop" || l.includes("mixdrop") || l.includes("mxdrop")) return 115;
      if (d === "voe" || l.includes("voe.sx")) return 105;
      if (d === "streamtape") return 95;
      if (d === "streamhg" || l.includes("streamwish")) return 85;
      if (d === "earnvids" || d === "vidhide" || l.includes("morencius")) return 80;
      if (d === "lulustream" || l.includes("lulustream") || l.includes("lplaygo")) return 60;
      return 0;
    }
    if (d === "voe" || l.includes("voe.sx")) return 120;
    if (d === "ok" || l.includes("ok.ru")) return 110;
    if (d === "streamhg" || l.includes("streamwish")) return 95;
    if (d === "earnvids" || d === "vidhide" || l.includes("morencius")) return 90;
    if (d === "lulustream" || l.includes("lulustream") || l.includes("lplaygo")) return 75;
    if (d === "mixdrop" || l.includes("mixdrop") || l.includes("mxdrop")) return 65;
    if (d === "streamtape") return 55;
    return 0;
  };

  const candidates = [];
  for (const qObj of streamsData) {
    const quality = normalizeAd1QualityLabel(qObj?.label || qObj?.quality || qObj?.name || "");
    const mirrors = Array.isArray(qObj?.mirrors) ? qObj.mirrors : [];
    for (const mirror of mirrors) {
      const score = scoreMirror(mirror);
      if (score <= 0) continue;
      let link = String(mirror?.link || "").trim();
      if (link.startsWith("//")) link = `https:${link}`;
      if (!/^https?:\/\//i.test(link)) continue;
      const driver = String(mirror?.driver || "").toLowerCase();
      const qualityBonus = prefQ && quality === prefQ ? 500 : (quality === "1080p" ? 30 : quality === "720p" ? 20 : 10);
      candidates.push({
        embedUrl: link,
        quality,
        driver: driver || "mirror",
        hostKind: driver === "ok" || link.includes("ok.ru") ? "okru" : "standard",
        totalScore: qualityBonus + score,
      });
    }
  }

  candidates.sort((a, b) => b.totalScore - a.totalScore);
  return candidates;
}

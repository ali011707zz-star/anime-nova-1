const QUALITY_RANK = Object.freeze({
  "1080p": 13,
  "720p": 9,
  "480p": 7,
  "360p": 5,
  unknown: 0,
});

function qualityFromResolution(value) {
  const text = String(value || "").toLowerCase();
  if (/(?:2160|1440)\s*p?|\b(?:2k|4k|uhd)\b/.test(text)) {
    return { quality: "unknown", qualityRank: QUALITY_RANK.unknown };
  }
  const match = text.match(/(?:^|[^0-9])(1080|720|480|360)(?:\s*p)?(?:[^0-9]|$)/);
  if (!match) return null;
  const quality = `${match[1]}p`;
  return { quality, qualityRank: QUALITY_RANK[quality] };
}

function qualityFromLabel(value) {
  const text = String(value || "").toLowerCase();
  if (/\bfhd\b|full[ ._-]*hd/.test(text)) {
    return { quality: "1080p", qualityRank: QUALITY_RANK["1080p"] };
  }
  if (/(?<!f)\bhd\b/.test(text)) {
    return { quality: "720p", qualityRank: QUALITY_RANK["720p"] };
  }
  if (/\bsd\b/.test(text)) {
    return { quality: "360p", qualityRank: QUALITY_RANK["360p"] };
  }
  return null;
}

function preserveProviderRank(result, rank) {
  if (!result || result.quality === "unknown" || !rank) return result;
  return { ...result, qualityRank: rank };
}

function legacySourceQuality(source) {
  const explicit = String(source?.quality || "").toLowerCase();
  const rank = Number(source?.qualityRank) || 0;
  const classify = (value) =>
    qualityFromResolution(value) || qualityFromLabel(value);

  const classified = classify(explicit)
    || classify(`${source?.name || ""} ${source?.label || ""} ${source?.url || ""}`.toLowerCase());
  if (classified) return preserveProviderRank(classified, rank);
  return rank >= 13
      ? { quality: "1080p", qualityRank: rank }
      : rank >= 9
        ? { quality: "720p", qualityRank: rank }
        : rank >= 7
          ? { quality: "480p", qualityRank: rank }
          : rank > 0
            ? { quality: "360p", qualityRank: rank }
            : { quality: "unknown", qualityRank: 0 };
}

/**
 * Classify an availability row without letting a generic "HD" label mask a
 * more specific resolution on the same provider row. Kawaii deliberately
 * retains its existing quality semantics.
 */
export function classifySourceQuality(source) {
  if (String(source?.site || "").toLowerCase() === "kawaii") {
    return legacySourceQuality(source);
  }

  const rank = Number(source?.qualityRank) || 0;
  const quality = String(source?.quality || "");
  const explicitQuality = qualityFromResolution(quality);
  if (explicitQuality) return preserveProviderRank(explicitQuality, rank);

  const resolutionFields = [
    source?.name,
    source?.label,
    source?.rawUrl,
    source?.directUrl,
    source?.url,
  ];
  for (const field of resolutionFields) {
    const resolved = qualityFromResolution(field);
    if (resolved) return preserveProviderRank(resolved, rank);
  }

  const label = qualityFromLabel(quality)
    || qualityFromLabel(source?.name)
    || qualityFromLabel(source?.label);
  if (label) return preserveProviderRank(label, rank);

  return rank >= 13
    ? { quality: "1080p", qualityRank: rank }
    : rank >= 9
      ? { quality: "720p", qualityRank: rank }
      : rank >= 7
        ? { quality: "480p", qualityRank: rank }
        : rank > 0
          ? { quality: "360p", qualityRank: rank }
          : { quality: "unknown", qualityRank: 0 };
}

async function readLimitedText(response, maxBytes) {
  const contentLength = Number(response.headers?.get?.("content-length"));
  if (Number.isFinite(contentLength) && contentLength > maxBytes) return null;
  if (!response.body?.getReader) {
    const body = await response.text();
    return new TextEncoder().encode(body).byteLength <= maxBytes ? body : null;
  }

  const reader = response.body.getReader();
  const decoder = new TextDecoder();
  let totalBytes = 0;
  let text = "";
  try {
    while (totalBytes <= maxBytes) {
      const { done, value } = await reader.read();
      if (done) break;
      totalBytes += value.byteLength;
      if (totalBytes > maxBytes) return null;
      text += decoder.decode(value, { stream: true });
    }
    text += decoder.decode();
    return text;
  } finally {
    try { await reader.cancel(); } catch {}
  }
}

function isValidHlsPlaylist(body) {
  return typeof body === "string"
    && body.trimStart().startsWith("#EXTM3U")
    && /#EXT(?:INF|[-]X-(?:STREAM-INF|TARGETDURATION|MEDIA-SEQUENCE|PLAYLIST-TYPE|MAP))/.test(body);
}

function variantQuality(infoLine, uri) {
  const resolution = infoLine.match(/RESOLUTION=\d+x(\d+)/i);
  if (resolution) {
    const height = Number(resolution[1]);
    const quality = height >= 1080 ? "1080p"
      : height >= 720 ? "720p"
        : height >= 480 ? "480p" : "360p";
    return { quality, qualityRank: QUALITY_RANK[quality] };
  }

  const name = infoLine.match(/NAME="([^"]+)"/i)?.[1] || "";
  const explicit = qualityFromResolution(`${name} ${uri}`);
  if (explicit && explicit.quality !== "unknown") return explicit;

  // Bandwidth alone cannot prove a 1080p picture. Without RESOLUTION or an
  // explicit quality token, cap the estimate at 720p rather than advertising
  // an unverified FHD tier.
  const bandwidth = Number(infoLine.match(/(?:AVERAGE-)?BANDWIDTH=(\d+)/i)?.[1] || 0);
  const quality = bandwidth >= 1_300_000 ? "720p"
    : bandwidth >= 700_000 ? "480p" : "360p";
  return { quality, qualityRank: QUALITY_RANK[quality] };
}

function parseMasterVariants(body, baseUrl) {
  const lines = body.split(/\r?\n/).map((line) => line.trim());
  const variants = [];
  for (let index = 0; index < lines.length; index++) {
    const infoLine = lines[index];
    if (!infoLine.startsWith("#EXT-X-STREAM-INF")) continue;
    let uri = "";
    for (let next = index + 1; next < lines.length; next++) {
      if (!lines[next] || lines[next].startsWith("#")) continue;
      uri = lines[next];
      index = next;
      break;
    }
    if (!uri) continue;
    try {
      const resolvedUrl = new URL(uri, baseUrl).toString();
      variants.push({ ...variantQuality(infoLine, uri), url: resolvedUrl });
    } catch {}
  }
  return variants;
}

async function requestPlaylist(url, referer, fetchImpl, timeoutMs) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  try {
    const response = await fetchImpl(url, {
      headers: {
        Accept: "application/vnd.apple.mpegurl,application/x-mpegURL,*/*",
        "User-Agent": "Mozilla/5.0",
        ...(referer ? { Referer: referer } : {}),
      },
      redirect: "follow",
      signal: controller.signal,
    });
    if (!response.ok) {
      try { await response.body?.cancel(); } catch {}
      return { state: response.status === 404 || response.status === 410 ? "dead" : "unknown" };
    }
    const body = await readLimitedText(response, 256 * 1024);
    if (body === null) return { state: "unknown" };
    // A 200 response containing an HTML challenge or malformed playlist is
    // inconclusive; only a definitive 404/410 should hide a source.
    if (!isValidHlsPlaylist(body)) return { state: "unknown" };
    return { state: "available", body, finalUrl: response.url || url };
  } catch {
    return { state: "unknown" };
  } finally {
    clearTimeout(timer);
  }
}

/**
 * Check the HLS master and its advertised quality playlists without requesting
 * video segments. A definitive missing child playlist is marked dead; access
 * restrictions and transient failures stay unknown to avoid false negatives.
 */
export async function inspectHlsAvailability(
  url,
  referer = "",
  { fetchImpl = globalThis.fetch, timeoutMs = 2_500, maxVariantsPerQuality = 2 } = {},
) {
  if (typeof fetchImpl !== "function" || !/^https?:\/\//i.test(String(url || ""))) {
    return { state: "unknown", isMaster: false, variants: [] };
  }

  const master = await requestPlaylist(url, referer, fetchImpl, timeoutMs);
  if (master.state !== "available") {
    return { state: master.state, isMaster: false, variants: [] };
  }
  if (!master.body.includes("#EXT-X-STREAM-INF")) {
    return { state: "available", isMaster: false, variants: [] };
  }

  const parsed = parseMasterVariants(master.body, master.finalUrl);
  if (!parsed.length) return { state: "unknown", isMaster: true, variants: [] };

  const groups = new Map();
  for (const variant of parsed) {
    const rows = groups.get(variant.quality) || [];
    if (rows.length < maxVariantsPerQuality) rows.push(variant);
    groups.set(variant.quality, rows);
  }

  const variants = [];
  for (const [quality, candidates] of groups) {
    const results = await Promise.all(candidates.map(async (candidate) => ({
      candidate,
      check: await requestPlaylist(candidate.url, referer, fetchImpl, timeoutMs),
    })));
    const available = results.find(({ check }) => check.state === "available");
    const unknown = results.find(({ check }) => check.state === "unknown");
    const chosen = available || unknown || results[0];
    variants.push({
      quality,
      qualityRank: QUALITY_RANK[quality],
      state: available ? "available" : unknown ? "unknown" : "dead",
      url: chosen.candidate.url,
    });
  }
  return { state: "available", isMaster: true, variants };
}

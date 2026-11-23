import type { FilmClientExtractDescriptor, FilmServerLink } from "./filmCatalog";

const PHONE_BROWSER_UA =
  "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36";

const EXTRACT_TIMEOUT_MS = 8_500;
const PROBE_TIMEOUT_MS = 6_500;
const CACHE_TTL_MS = 10 * 60_000;
const MAX_CACHE_ENTRIES = 50;

const _extractCache = new Map<string, { ts: number; links: FilmServerLink[] }>();

function getCachedExtract(embedUrl: string): FilmServerLink[] | null {
  const hit = _extractCache.get(embedUrl);
  if (!hit) return null;
  if (Date.now() - hit.ts > CACHE_TTL_MS) {
    _extractCache.delete(embedUrl);
    return null;
  }
  return hit.links;
}

function setCachedExtract(embedUrl: string, links: FilmServerLink[]): void {
  if (_extractCache.has(embedUrl)) _extractCache.delete(embedUrl);
  _extractCache.set(embedUrl, { ts: Date.now(), links });
  while (_extractCache.size > MAX_CACHE_ENTRIES) {
    const oldest = _extractCache.keys().next().value;
    if (oldest !== undefined) _extractCache.delete(oldest);
    else break;
  }
}

// Pure Hermes / React Native safe URL helpers (never rely on URL.origin / URL.hostname / relative new URL!)
export function getUrlOrigin(rawUrl: string): string {
  const m = String(rawUrl || "").trim().match(/^(https?:\/\/[^\/?#]+)/i);
  return m ? m[1] : "";
}

export function getUrlHostname(rawUrl: string): string {
  const m = String(rawUrl || "").trim().match(/^https?:\/\/([^\/?#:]+)/i);
  return m ? m[1].toLowerCase() : "";
}

export function resolveRelativeUrl(rel: string, base: string): string {
  const s = String(rel || "").trim();
  if (!s) return "";
  if (/^https?:\/\//i.test(s)) return s;
  const origin = getUrlOrigin(base);
  if (!origin) return s;
  if (s.startsWith("//")) {
    const proto = base.toLowerCase().startsWith("http://") ? "http:" : "https:";
    return `${proto}${s}`;
  }
  if (s.startsWith("/")) return `${origin}${s}`;
  const cleanBase = base.split(/[?#]/)[0];
  const dir = cleanBase.endsWith("/")
    ? cleanBase
    : cleanBase.slice(0, Math.max(origin.length, cleanBase.lastIndexOf("/") + 1));
  return `${dir}${s}`;
}

function decodeHtmlEntities(input: string): string {
  return String(input || "")
    .replace(/&quot;/g, '"')
    .replace(/&#039;|&apos;/g, "'")
    .replace(/&amp;/g, "&")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">");
}

function cleanExtractedUrl(raw: string): string {
  return String(raw || "")
    .replace(/\\u0026/g, "&")
    .replace(/\\\//g, "/")
    .replace(/["'<>\\]+$/g, "")
    .trim();
}

function toBase(n: number, radix: number): string {
  const chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  if (radix <= 36) return n.toString(radix);
  let out = "";
  let v = n;
  do {
    out = chars[v % radix] + out;
    v = Math.floor(v / radix);
  } while (v > 0);
  return out;
}

export function unpackDeanEdwardsBlocks(html: string): string {
  const outputs: string[] = [];
  const regex =
    /eval\(function\(p,a,c,k,e,[dr]\)\{[\s\S]*?\}\(\s*(['"])((?:\\.|(?!\1).)*)\1\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(['"])((?:\\.|(?!\5).)*)\5\.split\(\s*['"]\|['"]\s*\)/g;
  let match: RegExpExecArray | null;
  let guard = 0;
  while ((match = regex.exec(html)) !== null && guard++ < 6) {
    try {
      let p = match[2].replace(/\\(['"\\])/g, "$1");
      const a = Math.max(2, Math.min(62, Number.parseInt(match[3], 10) || 36));
      let c = Math.min(8000, Number.parseInt(match[4], 10) || 0);
      const k = match[6].split("|");
      while (c--) {
        if (k[c]) {
          const tok = toBase(c, a);
          p = p.replace(new RegExp(`\\b${tok}\\b`, "g"), k[c]);
        }
      }
      outputs.push(p);
    } catch {
      // Skip malformed packed block
    }
  }
  return outputs.join("\n");
}

async function fetchWithTimeout(
  url: string,
  headers: Record<string, string>,
  timeoutMs: number,
  parentSignal?: AbortSignal,
): Promise<Response> {
  if (parentSignal?.aborted) {
    throw new Error("Aborted");
  }
  const ctrl = new AbortController();
  const onParentAbort = () => ctrl.abort();
  parentSignal?.addEventListener("abort", onParentAbort, { once: true });
  const timer = setTimeout(() => ctrl.abort(), timeoutMs);
  try {
    return await fetch(url, {
      headers,
      redirect: "follow",
      signal: ctrl.signal,
    });
  } finally {
    clearTimeout(timer);
    parentSignal?.removeEventListener("abort", onParentAbort);
  }
}

function buildQualityMeta(tierHint: string): {
  tier: string;
  quality: string;
  qualityTier: FilmServerLink["qualityTier"];
} {
  const l = tierHint.toLowerCase();
  if (l.includes("2160") || l.includes("4k")) {
    return { tier: "4K UHD", quality: "4K UHD", qualityTier: "4K" };
  }
  if (l.includes("720") && !l.includes("1080")) {
    return { tier: "720p HD", quality: "720p HD", qualityTier: "HD" };
  }
  if (l.includes("480") || l.includes("360") || l.includes("sd")) {
    return { tier: "480p SD", quality: "480p SD", qualityTier: "SD" };
  }
  return { tier: "1080p FHD", quality: "1080p FHD", qualityTier: "FHD" };
}

function extractSecondaryFastVariant(
  manifest: string,
  masterUrl: string,
  primaryTier: string,
): { url: string; tier: string } | null {
  const lines = manifest.split(/\r?\n/).map((l) => l.trim());
  let fallback480 = "";
  for (let i = 0; i < lines.length - 1; i++) {
    const inf = lines[i];
    if (!inf.startsWith("#EXT-X-STREAM-INF")) continue;
    const next = lines[i + 1];
    if (!next || next.startsWith("#")) continue;
    const resM = inf.match(/RESOLUTION=(\d+)x(\d+)/i);
    const height = resM ? Number.parseInt(resM[2], 10) : 0;
    const absUrl = resolveRelativeUrl(next, masterUrl);
    if (!absUrl || absUrl === masterUrl) continue;
    if (height >= 540 && height <= 800 && primaryTier !== "720p HD") {
      return { url: absUrl, tier: "720p HD" };
    }
    if (!fallback480 && height >= 360 && height < 540 && primaryTier !== "480p SD") {
      fallback480 = absUrl;
    }
  }
  return fallback480 ? { url: fallback480, tier: "480p SD" } : null;
}

export async function extractFilmSourcesOnPhone(
  desc: FilmClientExtractDescriptor,
  index: number,
  parentSignal?: AbortSignal,
): Promise<FilmServerLink[]> {
  const rawEmbed = String(desc?.embedUrl || "").trim();
  if (!rawEmbed.startsWith("http")) return [];
  if (parentSignal?.aborted) return [];

  // Normalize uqload /e/<id>.html -> /embed-<id>.html
  const embedUrl = /uqload\.[^/]+\/e\/([a-z0-9]+)(?:\.html)?/i.test(rawEmbed)
    ? rawEmbed.replace(/\/e\/([a-z0-9]+)(?:\.html)?/i, "/embed-$1.html")
    : rawEmbed;

  const cached = getCachedExtract(embedUrl);
  if (cached) {
    return cached.map((item, j) => ({
      ...item,
      id: `ce-${index}-${j}-${item.url.slice(-14)}`,
    }));
  }

  try {
    const initialOrigin = getUrlOrigin(embedUrl);
    const initialHost = getUrlHostname(embedUrl);
    if (!initialOrigin) return [];

    const res = await fetchWithTimeout(
      embedUrl,
      {
        "User-Agent": PHONE_BROWSER_UA,
        Referer: desc.referer || `${initialOrigin}/`,
        Accept: "text/html,application/xhtml+xml,*/*;q=0.8",
      },
      EXTRACT_TIMEOUT_MS,
      parentSignal,
    );
    if (!res.ok) return [];

    const finalOrigin = (res.url && getUrlOrigin(res.url)) || initialOrigin;
    const hostOrigin = `${finalOrigin}/`;

    const html = await res.text();
    if (!html || html.length < 100) return [];
    const unpacked = unpackDeanEdwardsBlocks(html);
    const combined = `${html}\n${unpacked}`;

    const cdnHeaders: Record<string, string> = {
      "User-Agent": PHONE_BROWSER_UA,
      Referer: hostOrigin,
      Origin: finalOrigin,
    };

    // 1. OK.ru JSON manifest extraction
    if (desc.hostKind === "okru" || initialHost.includes("ok.ru")) {
      const optMatch = html.match(/data-options="([^"]+)"/i);
      if (optMatch) {
        const decoded = decodeHtmlEntities(optMatch[1]);
        const hlsMatch = decoded.match(/"hlsManifestUrl"\s*:\s*"(https?:\\\/\\\/[^"]+)"/i);
        if (hlsMatch) {
          const m3u8 = cleanExtractedUrl(hlsMatch[1]);
          const qm = buildQualityMeta(desc.tier || "1080p FHD");
          const okHeaders = { "User-Agent": PHONE_BROWSER_UA, Referer: "https://ok.ru/" };
          const link: FilmServerLink = {
            id: `ce-ok-${index}-${m3u8.slice(-16)}`,
            name: qm.tier,
            label: qm.tier,
            tier: qm.tier,
            quality: qm.quality,
            qualityTier: qm.qualityTier,
            url: m3u8,
            directUrl: m3u8,
            kind: "hls",
            type: "hls",
            isEmbed: false,
            hardsubbed: true,
            isArabic: true,
            site: "nv-ce",
            headers: okHeaders,
            clientExtracted: true,
            latencyMs: 350,
          };
          setCachedExtract(embedUrl, [link]);
          return [link];
        }
      }
    }

    // 2. Direct HLS (.m3u8) extraction + phone-IP verification & speed measurement
    const m3u8Matches = combined.match(/https?:\/\/[^"'\s\\<>]+\.m3u8[^"'\s\\<>]*/gi) || [];
    const m3u8Candidates = Array.from(
      new Set(
        m3u8Matches
          .map(cleanExtractedUrl)
          .filter((u) => u.startsWith("http") && !/\.png|\.jpg|logo|thumb|preview|sprite/i.test(u)),
      ),
    ).slice(0, 3);

    for (const m3u8 of m3u8Candidates) {
      if (parentSignal?.aborted) return [];
      try {
        const t0 = Date.now();
        const probe = await fetchWithTimeout(
          m3u8,
          { ...cdnHeaders, Accept: "*/*" },
          PROBE_TIMEOUT_MS,
          parentSignal,
        );
        if (!probe.ok) continue;
        const manifest = await probe.text();
        const latencyMs = Math.max(1, Date.now() - t0);
        if (!manifest.includes("#EXTM3U")) continue;

        const detectedTier = /2160|3840x/i.test(manifest)
          ? "4K UHD"
          : /1080|1920x/i.test(manifest)
            ? "1080p FHD"
            : /720|1280x/i.test(manifest)
              ? "720p HD"
              : desc.tier || "1080p FHD";
        const qm = buildQualityMeta(detectedTier);
        const primaryLink: FilmServerLink = {
          id: `ce-hls-${index}-${m3u8.slice(-16)}`,
          name: qm.tier,
          label: qm.tier,
          tier: qm.tier,
          quality: qm.quality,
          qualityTier: qm.qualityTier,
          url: m3u8,
          directUrl: m3u8,
          kind: "hls",
          type: "hls",
          isEmbed: false,
          hardsubbed: true,
          isArabic: true,
          site: "nv-ce",
          headers: cdnHeaders,
          clientExtracted: true,
          latencyMs,
        };
        const outLinks: FilmServerLink[] = [primaryLink];

        const secondary = extractSecondaryFastVariant(manifest, m3u8, detectedTier);
        if (secondary) {
          const sqm = buildQualityMeta(secondary.tier);
          outLinks.push({
            ...primaryLink,
            id: `ce-hls-${index}-alt-${secondary.url.slice(-14)}`,
            name: sqm.tier,
            label: sqm.tier,
            tier: sqm.tier,
            quality: sqm.quality,
            qualityTier: sqm.qualityTier,
            url: secondary.url,
            directUrl: secondary.url,
          });
        }

        setCachedExtract(embedUrl, outLinks);
        return outLinks;
      } catch {
        // Try next candidate
      }
    }

    // 3. Direct progressive MP4 extraction (UpDown, Uqload, SaveFiles — instant byte-range seeking!)
    const mp4Matches = combined.match(/https?:\/\/[^"'\s\\<>]+\.mp4[^"'\s\\<>]*/gi) || [];
    const mp4Candidates = Array.from(
      new Set(
        mp4Matches
          .map(cleanExtractedUrl)
          .filter((u) => u.startsWith("http") && !/thumb|sample|intro|logo|ads\./i.test(u)),
      ),
    ).slice(0, 2);

    for (const mp4 of mp4Candidates) {
      if (parentSignal?.aborted) return [];
      try {
        const t0 = Date.now();
        const probe = await fetchWithTimeout(
          mp4,
          { "User-Agent": PHONE_BROWSER_UA, Referer: hostOrigin, Range: "bytes=0-1023" },
          PROBE_TIMEOUT_MS,
          parentSignal,
        );
        const ct = (probe.headers.get("content-type") || "").toLowerCase();
        const latencyMs = Math.max(1, Date.now() - t0);
        if ((probe.status === 200 || probe.status === 206) && !ct.includes("text/html")) {
          const finalUrl = probe.url || mp4;
          const qm = buildQualityMeta(desc.tier || "1080p FHD");
          const link: FilmServerLink = {
            id: `ce-mp4-${index}-${finalUrl.slice(-16)}`,
            name: qm.tier,
            label: qm.tier,
            tier: qm.tier,
            quality: qm.quality,
            qualityTier: qm.qualityTier,
            url: finalUrl,
            directUrl: finalUrl,
            kind: "direct",
            type: "direct",
            isEmbed: false,
            hardsubbed: true,
            isArabic: true,
            site: "nv-ce",
            headers: { "User-Agent": PHONE_BROWSER_UA, Referer: hostOrigin },
            clientExtracted: true,
            latencyMs,
          };
          setCachedExtract(embedUrl, [link]);
          return [link];
        }
      } catch {
        // Skip unplayable mp4
      }
    }

    return [];
  } catch {
    return [];
  }
}

export async function extractFilmSourceOnPhone(
  desc: FilmClientExtractDescriptor,
  index: number,
  parentSignal?: AbortSignal,
): Promise<FilmServerLink | null> {
  const list = await extractFilmSourcesOnPhone(desc, index, parentSignal);
  return list[0] || null;
}

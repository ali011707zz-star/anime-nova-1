import type { FilmClientExtractDescriptor, FilmServerLink } from "./filmCatalog";

const PHONE_BROWSER_UA =
  "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36";

const EXTRACT_TIMEOUT_MS = 6_500;
const PROBE_TIMEOUT_MS = 5_000;
const CACHE_TTL_MS = 10 * 60_000;
const MAX_CACHE_ENTRIES = 40;

const _extractCache = new Map<string, { ts: number; link: FilmServerLink }>();

function getCachedExtract(embedUrl: string): FilmServerLink | null {
  const hit = _extractCache.get(embedUrl);
  if (!hit) return null;
  if (Date.now() - hit.ts > CACHE_TTL_MS) {
    _extractCache.delete(embedUrl);
    return null;
  }
  return hit.link;
}

function setCachedExtract(embedUrl: string, link: FilmServerLink): void {
  if (_extractCache.has(embedUrl)) _extractCache.delete(embedUrl);
  _extractCache.set(embedUrl, { ts: Date.now(), link });
  while (_extractCache.size > MAX_CACHE_ENTRIES) {
    const oldest = _extractCache.keys().next().value;
    if (oldest !== undefined) _extractCache.delete(oldest);
    else break;
  }
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

/**
 * Pure, safe Dean Edwards eval(p,a,c,k,e,d) unpacker (no eval() used!).
 * Handles multiple packed script blocks in embed HTML directly on the phone.
 */
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

/**
 * Extracts a direct CDN stream URL (HLS .m3u8 or progressive .mp4) DIRECTLY on the user phone.
 * Because the fetch originates from the user own IP, IP-bound CDN tokens are signed for the user phone,
 * enabling 100% direct phone-to-CDN streaming with 0 bytes of video bandwidth on the VPS!
 */
export async function extractFilmSourceOnPhone(
  desc: FilmClientExtractDescriptor,
  index: number,
  parentSignal?: AbortSignal,
): Promise<FilmServerLink | null> {
  const embedUrl = String(desc?.embedUrl || "").trim();
  if (!embedUrl.startsWith("http")) return null;
  if (parentSignal?.aborted) return null;

  const cached = getCachedExtract(embedUrl);
  if (cached) {
    return { ...cached, id: `ce-${index}-${cached.url.slice(-16)}` };
  }

  try {
    const parsedEmbed = new URL(embedUrl);
    const embedOrigin = parsedEmbed.origin;
    const hostOrigin = `${embedOrigin}/`;

    const res = await fetchWithTimeout(
      embedUrl,
      {
        "User-Agent": PHONE_BROWSER_UA,
        Referer: desc.referer || hostOrigin,
        Accept: "text/html,application/xhtml+xml,*/*;q=0.8",
      },
      EXTRACT_TIMEOUT_MS,
      parentSignal,
    );
    if (!res.ok) return null;

    const html = await res.text();
    if (!html || html.length < 120) return null;
    const unpacked = unpackDeanEdwardsBlocks(html);
    const combined = `${html}\n${unpacked}`;

    const cdnHeaders: Record<string, string> = {
      "User-Agent": PHONE_BROWSER_UA,
      Referer: hostOrigin,
      Origin: embedOrigin,
    };

    // 1. OK.ru JSON manifest extraction
    if (desc.hostKind === "okru" || parsedEmbed.hostname.includes("ok.ru")) {
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
          };
          setCachedExtract(embedUrl, link);
          return link;
        }
      }
    }

    // 2. Direct HLS (.m3u8) extraction + phone-IP verification
    const m3u8Matches = combined.match(/https?:\/\/[^"'\s\\<>]+\.m3u8[^"'\s\\<>]*/gi) || [];
    const m3u8Candidates = Array.from(
      new Set(
        m3u8Matches
          .map(cleanExtractedUrl)
          .filter((u) => u.startsWith("http") && !/\.png|\.jpg|logo|thumb|preview|sprite/i.test(u)),
      ),
    ).slice(0, 3);

    for (const m3u8 of m3u8Candidates) {
      if (parentSignal?.aborted) return null;
      try {
        const probe = await fetchWithTimeout(
          m3u8,
          { ...cdnHeaders, Accept: "*/*" },
          PROBE_TIMEOUT_MS,
          parentSignal,
        );
        if (!probe.ok) continue;
        const manifest = await probe.text();
        if (!manifest.includes("#EXTM3U")) continue;

        const detectedTier = /2160|3840x/i.test(manifest)
          ? "4K UHD"
          : /1080|1920x/i.test(manifest)
            ? "1080p FHD"
            : /720|1280x/i.test(manifest)
              ? "720p HD"
              : desc.tier || "1080p FHD";
        const qm = buildQualityMeta(detectedTier);
        const link: FilmServerLink = {
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
        };
        setCachedExtract(embedUrl, link);
        return link;
      } catch {
        // Try next candidate
      }
    }

    // 3. Direct MP4 extraction + phone-IP 200/206 verification
    const mp4Matches = combined.match(/https?:\/\/[^"'\s\\<>]+\.mp4[^"'\s\\<>]*/gi) || [];
    const mp4Candidates = Array.from(
      new Set(
        mp4Matches
          .map(cleanExtractedUrl)
          .filter((u) => u.startsWith("http") && !/thumb|sample|intro|logo|ads\./i.test(u)),
      ),
    ).slice(0, 2);

    for (const mp4 of mp4Candidates) {
      if (parentSignal?.aborted) return null;
      try {
        const probe = await fetchWithTimeout(
          mp4,
          { "User-Agent": PHONE_BROWSER_UA, Referer: hostOrigin, Range: "bytes=0-1" },
          PROBE_TIMEOUT_MS,
          parentSignal,
        );
        const ct = (probe.headers.get("content-type") || "").toLowerCase();
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
          };
          setCachedExtract(embedUrl, link);
          return link;
        }
      } catch {
        // Skip unplayable mp4
      }
    }

    return null;
  } catch {
    return null;
  }
}

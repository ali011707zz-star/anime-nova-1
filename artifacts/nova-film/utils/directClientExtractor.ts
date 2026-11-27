import {
  extractMediaFireDirectUrlFromHtml,
  extractMediaFireFileKey,
  extractMediaUrlFromHtml,
  extractSingleHopRedirect,
} from "./directStreamModeLogic.mjs";

export const MOBILE_DIRECT_UA =
  "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

export const DESKTOP_DIRECT_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36";

export interface ClientExtractDescriptor {
  embedUrl: string;
  referer: string;
  hostKind?: "okru" | "standard";
}

export interface ExtractedPhoneStream {
  url: string;
  type: "hls" | "mp4";
  headers: Record<string, string>;
}

export interface MediaFireDirectResult {
  url: string;
  headers: Record<string, string>;
}

const VOE_MIRROR_FALLBACKS = ["https://caseyseemavoid.com"];

function buildEmbedCandidates(embedUrl: string, referer: string): string[] {
  const voeMatch = embedUrl.match(/^https?:\/\/(?:www\.)?voe\.sx\/e\/([a-z0-9_-]+)/i);
  if (voeMatch?.[1]) {
    const voeId = voeMatch[1];
    const ordered: string[] = [];
    try {
      if (referer) {
        const refOrigin = new URL(referer).origin;
        if (!/voe\.sx$/i.test(new URL(referer).hostname)) {
          const mirrorUrl = `${refOrigin}/e/${voeId}`;
          if (!ordered.includes(mirrorUrl)) ordered.push(mirrorUrl);
        }
      }
    } catch {}
    for (const mirrorOrigin of VOE_MIRROR_FALLBACKS) {
      const mirrorUrl = `${mirrorOrigin}/e/${voeId}`;
      if (!ordered.includes(mirrorUrl)) ordered.push(mirrorUrl);
    }
    if (!ordered.includes(embedUrl)) ordered.push(embedUrl);
    return ordered;
  }
  return [embedUrl];
}

export async function resolveMediaFireDirectOnPhone(
  rawUrl: string,
  _baseUrl = "",
  signal?: AbortSignal,
): Promise<MediaFireDirectResult | null> {
  const key = extractMediaFireFileKey(rawUrl);
  if (!key) return null;

  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), 6500);
  const onOuterAbort = () => ctrl.abort();
  signal?.addEventListener("abort", onOuterAbort);

  try {
    const pageUrl = `https://www.mediafire.com/file/${key}/`;
    const res = await fetch(pageUrl, {
      method: "GET",
      headers: {
        "User-Agent": DESKTOP_DIRECT_UA,
        Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "en-US,en;q=0.9",
        Referer: "https://www.mediafire.com/",
      },
      redirect: "follow",
      signal: ctrl.signal,
    });
    if (!res.ok) return null;
    const html = await res.text();
    const directUrl = extractMediaFireDirectUrlFromHtml(html);
    if (!directUrl) return null;
    return {
      url: directUrl,
      headers: {
        "User-Agent": DESKTOP_DIRECT_UA,
        Referer: "https://www.mediafire.com/",
        Origin: "https://www.mediafire.com",
      },
    };
  } catch {
    return null;
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onOuterAbort);
  }
}

export async function extractDirectStreamOnPhone(
  descriptor: ClientExtractDescriptor,
  signal?: AbortSignal,
  timeoutMs = 7500,
): Promise<ExtractedPhoneStream | null> {
  const embedUrl = String(descriptor?.embedUrl || "").trim();
  if (!/^https?:\/\//i.test(embedUrl)) return null;

  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), timeoutMs);
  const onOuterAbort = () => ctrl.abort();
  signal?.addEventListener("abort", onOuterAbort);

  try {
    const baseReferer = String(descriptor.referer || "").trim();
    const candidates = buildEmbedCandidates(embedUrl, baseReferer);

    for (const candidateUrl of candidates) {
      if (ctrl.signal.aborted) break;

      if (/mediafire\.com/i.test(candidateUrl)) {
        const mf = await resolveMediaFireDirectOnPhone(candidateUrl, "", ctrl.signal);
        if (mf?.url) {
          return { url: mf.url, type: "mp4", headers: mf.headers };
        }
        continue;
      }

      let origin = "";
      try { origin = new URL(candidateUrl).origin; } catch {}
      const referer = baseReferer || (origin ? `${origin}/` : "");

      try {
        const res = await fetch(candidateUrl, {
          method: "GET",
          headers: {
            "User-Agent": MOBILE_DIRECT_UA,
            Accept: "text/html,application/xhtml+xml,*/*",
            ...(referer ? { Referer: referer } : {}),
          },
          redirect: "follow",
          signal: ctrl.signal,
        });
        if (!res.ok) continue;

        let finalUrl = res.url || candidateUrl;
        let html = await res.text();
        let found = extractMediaUrlFromHtml(html, finalUrl, descriptor.hostKind || "standard");
        if (!found?.url) {
          const hopUrl = extractSingleHopRedirect(html, finalUrl);
          if (hopUrl) {
            const res2 = await fetch(hopUrl, {
              method: "GET",
              headers: {
                "User-Agent": MOBILE_DIRECT_UA,
                Accept: "text/html,application/xhtml+xml,*/*",
                Referer: finalUrl,
              },
              redirect: "follow",
              signal: ctrl.signal,
            });
            if (res2.ok) {
              finalUrl = res2.url || hopUrl;
              html = await res2.text();
              found = extractMediaUrlFromHtml(html, finalUrl, descriptor.hostKind || "standard");
            }
          }
        }
        if (!found?.url) continue;

        let finalOrigin = origin;
        try { finalOrigin = new URL(finalUrl).origin; } catch {}
        const playbackReferer = finalUrl || referer;
        return {
          url: found.url,
          type: found.type,
          headers: {
            "User-Agent": MOBILE_DIRECT_UA,
            ...(playbackReferer ? { Referer: playbackReferer } : {}),
            ...(finalOrigin ? { Origin: finalOrigin } : {}),
          },
        };
      } catch {
        if (ctrl.signal.aborted) break;
      }
    }

    return null;
  } catch {
    return null;
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onOuterAbort);
  }
}

import type { Request } from "express";
import { decryptParam, isEncrypted } from "./security.js";

export const DIRECT_BROWSER_UA =
  "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

export type DirectDeliveryMode = "direct" | "client-extract" | "vps-vip";

export interface ClientExtractDescriptor {
  embedUrl: string;
  referer: string;
  hostKind: "okru" | "standard";
}

export interface DirectModeFlags {
  directOnly: boolean;
  clientExtract: boolean;
  appVersion: string;
}

const IP_LOCKED_HOST_RE =
  /(?:^|\.)(?:streamtape\.|dood\.|ds2play\.|d000d\.|d0o0d\.|filemoon\.|streamwish\.|swish\.|wishfast\.|earnvids\.|vidhide\.|dhtpre\.|peytonepre\.|ryderjet\.|byse\.|swiftplayers\.|lulustream\.|lulu\.|vidmoly\.|voe\.sx|mixdrop\.|uqload\.|ok\.ru|odnoklassniki\.ru|megamax\.|share4max\.|filelions\.|updown\.|mp4upload\.|sendvid\.)/i;

const EMBED_PAGE_PATH_RE = /\/(?:e|v|d|embed|embed-[a-z0-9_-]+|videoembed|iframe)\//i;

function parseSemverTuple(raw: string): [number, number, number] | null {
  const m = String(raw || "").trim().match(/(\d+)\.(\d+)\.(\d+)/);
  if (!m) return null;
  return [Number(m[1]), Number(m[2]), Number(m[3])];
}

export function isVersionAtLeast(raw: string, minTuple: [number, number, number]): boolean {
  const parsed = parseSemverTuple(raw);
  if (!parsed) return false;
  if (parsed[0] !== minTuple[0]) return parsed[0] > minTuple[0];
  if (parsed[1] !== minTuple[1]) return parsed[1] > minTuple[1];
  return parsed[2] >= minTuple[2];
}

/**
 * Strictly distinguishes v1.0.11+ direct-only test clients from v1.0.10 production users.
 * A request activates direct-only mode ONLY when BOTH:
 *   1. query `directOnly=1` is explicitly passed, AND
 *   2. header `X-Nova-Direct-Mode: 1` is sent OR client version is >= 1.0.11.
 * Production v1.0.10 clients NEVER satisfy this condition and stay 100% untouched.
 */
export function getDirectModeFlags(req: Pick<Request, "query" | "headers">): DirectModeFlags {
  const queryDirect = String((req.query as Record<string, unknown>)?.directOnly || "") === "1";
  const queryClientExtract = String((req.query as Record<string, unknown>)?.clientExtract || "") === "1";
  const headerDirect = String(req.headers["x-nova-direct-mode"] || "").trim() === "1";
  const headerVersion = String(req.headers["x-nova-version"] || "").trim();
  const ua = String(req.headers["user-agent"] || "");
  const uaVersionMatch = ua.match(/NovaAnime\/(\d+\.\d+\.\d+)/i);
  const appVersion = headerVersion || (uaVersionMatch ? uaVersionMatch[1] : "");

  const isV1011Plus = isVersionAtLeast(appVersion, [1, 0, 11]);
  const directOnly = queryDirect && (headerDirect || isV1011Plus);
  return {
    directOnly,
    clientExtract: directOnly && queryClientExtract,
    appVersion: appVersion || "unknown",
  };
}

export function isTelegramVipUrl(rawUrl: string): boolean {
  const u = String(rawUrl || "").trim().toLowerCase();
  return u.includes("/api/tg-stream/") || u.startsWith("tg://");
}

export function isIpLockedHost(hostname: string): boolean {
  return IP_LOCKED_HOST_RE.test(String(hostname || "").toLowerCase());
}

export function isPhoneExtractableEmbedUrl(rawUrl: string): boolean {
  try {
    const u = new URL(rawUrl);
    if (u.protocol !== "http:" && u.protocol !== "https:") return false;
    const host = u.hostname.toLowerCase();
    if (host.includes("mega.nz") || host.includes("mega.co.nz")) return false;
    if (isIpLockedHost(host)) return true;
    return EMBED_PAGE_PATH_RE.test(u.pathname);
  } catch {
    return false;
  }
}

export function unwrapProxyUrl(
  rawOrProxyUrl: string,
  decryptFn: (enc: string) => string = decryptParam,
  isEncryptedFn: (val: string) => boolean = isEncrypted,
): { url: string; referer: string; wasProxied: boolean } {
  const input = String(rawOrProxyUrl || "").trim();
  if (!input) return { url: "", referer: "", wasProxied: false };

  const isProxyPath =
    /(?:^|\/)api\/anime\/(?:hls|video|seg)-proxy(?:[?#]|$)/i.test(input) ||
    /(?:^|\/)proxy\/hls(?:[?#]|$)/i.test(input);
  if (!isProxyPath) {
    return { url: input, referer: "", wasProxied: false };
  }

  try {
    const parsed = new URL(input.startsWith("/") ? `https://nova.local${input}` : input);
    let innerUrl = parsed.searchParams.get("url") || "";
    let innerRef = parsed.searchParams.get("ref") || parsed.searchParams.get("referer") || "";
    if (innerUrl && isEncryptedFn(innerUrl)) {
      innerUrl = decryptFn(innerUrl);
    }
    if (innerRef && isEncryptedFn(innerRef)) {
      innerRef = decryptFn(innerRef);
    }
    if (innerUrl && /^https?:\/\//i.test(innerUrl)) {
      return {
        url: innerUrl.trim(),
        referer: /^https?:\/\//i.test(innerRef) ? innerRef.trim() : "",
        wasProxied: true,
      };
    }
  } catch {
    /* keep original */
  }
  return { url: input, referer: "", wasProxied: false };
}

export function buildDirectPlaybackHeaders(
  existingHeaders: Record<string, string> | undefined,
  referer: string,
): Record<string, string> {
  const headers: Record<string, string> = {};
  if (existingHeaders && typeof existingHeaders === "object") {
    for (const [k, v] of Object.entries(existingHeaders)) {
      if (typeof v === "string" && v.trim() && !/^x-nova-/i.test(k)) {
        headers[k] = v.trim();
      }
    }
  }
  const cleanRef = (headers.Referer || headers.referer || referer || "").trim();
  if (cleanRef && /^https?:\/\//i.test(cleanRef)) {
    headers.Referer = cleanRef;
    delete headers.referer;
    if (!headers.Origin && !headers.origin) {
      try {
        headers.Origin = new URL(cleanRef).origin;
      } catch { /* ignore */ }
    }
  }
  if (!headers["User-Agent"] && !headers["user-agent"]) {
    headers["User-Agent"] = DIRECT_BROWSER_UA;
  }
  return headers;
}

export function toDirectAnimeSource<T extends Record<string, any>>(
  source: T,
  clientExtractEnabled: boolean,
  decryptFn: (enc: string) => string = decryptParam,
  isEncryptedFn: (val: string) => boolean = isEncrypted,
): T & { deliveryMode: DirectDeliveryMode; clientExtract?: ClientExtractDescriptor } {
  const site = String(source.site || "").toLowerCase();
  const primaryCandidate = String(source.directUrl || source.url || "").trim();

  if (site === "nova_tg" || site === "nova_vip" || isTelegramVipUrl(primaryCandidate)) {
    return {
      ...source,
      deliveryMode: "vps-vip",
    };
  }

  const unwrappedDirect = unwrapProxyUrl(String(source.directUrl || ""), decryptFn, isEncryptedFn);
  const unwrappedUrl = unwrapProxyUrl(String(source.url || ""), decryptFn, isEncryptedFn);
  const unwrappedRaw = unwrapProxyUrl(String(source.rawUrl || ""), decryptFn, isEncryptedFn);

  const chosenDirect = [unwrappedDirect.url, unwrappedRaw.url, unwrappedUrl.url].find(
    (u) => /^https?:\/\//i.test(u) && !/(?:^|\/)api\/anime\/(?:hls|video|seg)-proxy/i.test(u),
  ) || "";

  const referer =
    String(source.headers?.Referer || source.headers?.referer || "").trim() ||
    unwrappedDirect.referer ||
    unwrappedUrl.referer ||
    unwrappedRaw.referer ||
    "";

  const embedCandidate = [
    String(source.embedUrl || "").trim(),
    String(source.pageUrl || "").trim(),
    source.isEmbed ? unwrappedUrl.url : "",
    isPhoneExtractableEmbedUrl(unwrappedUrl.url) ? unwrappedUrl.url : "",
  ].find((u) => /^https?:\/\//i.test(u) && isPhoneExtractableEmbedUrl(u)) || "";

  let chosenHost = "";
  try {
    if (chosenDirect) chosenHost = new URL(chosenDirect).hostname.toLowerCase();
  } catch { /* ignore */ }

  let embedHost = "";
  try {
    if (embedCandidate) embedHost = new URL(embedCandidate).hostname.toLowerCase();
  } catch { /* ignore */ }

  const headers = buildDirectPlaybackHeaders(source.headers, referer || embedCandidate);

  // If the server-extracted stream came from an IP-bound embed host (or only an embed URL exists),
  // hand the lightweight embed descriptor to v1.0.11 so the phone extracts using the user's own IP!
  const needsClientExtract =
    clientExtractEnabled &&
    Boolean(embedCandidate) &&
    (source.isEmbed || !chosenDirect || isIpLockedHost(chosenHost) || isIpLockedHost(embedHost));

  if (needsClientExtract) {
    return {
      ...source,
      url: chosenDirect || embedCandidate,
      directUrl: chosenDirect || embedCandidate,
      isEmbed: false,
      corsOk: true,
      headers,
      deliveryMode: "client-extract",
      clientExtract: {
        embedUrl: embedCandidate,
        referer: referer || (() => { try { return `${new URL(embedCandidate).origin}/`; } catch { return ""; } })(),
        hostKind: embedHost.includes("ok.ru") ? "okru" : "standard",
      },
    };
  }

  if (!chosenDirect) {
    return {
      ...source,
      deliveryMode: "direct",
    };
  }

  const isHls =
    source.directType === "hls" ||
    /\.m3u8(?:[?#]|$)/i.test(chosenDirect) ||
    /\/(?:hls|playlist)\//i.test(chosenDirect);

  return {
    ...source,
    url: chosenDirect,
    directUrl: chosenDirect,
    rawUrl: chosenDirect,
    directType: source.directType || (isHls ? "hls" : "mp4"),
    isEmbed: false,
    corsOk: true,
    headers,
    deliveryMode: "direct",
  };
}

export function toDirectDubbedPayload<T extends Record<string, any>>(
  payload: T,
  fallbackReferer = "",
  clientExtractEnabled = true,
  decryptFn: (enc: string) => string = decryptParam,
  isEncryptedFn: (val: string) => boolean = isEncrypted,
): T & { deliveryMode: DirectDeliveryMode; headers?: Record<string, string>; clientExtract?: ClientExtractDescriptor } {
  const serverId = String(payload.serverId || "").toLowerCase();
  const hlsCandidate = String(payload.hlsUrl || "");
  if (serverId === "nova_tg" || isTelegramVipUrl(hlsCandidate)) {
    return { ...payload, deliveryMode: "vps-vip" };
  }

  const unwrappedHls = unwrapProxyUrl(hlsCandidate, decryptFn, isEncryptedFn);
  const rawCandidate = String(payload.rawUrl || "").trim();
  const unwrappedRaw = unwrapProxyUrl(rawCandidate, decryptFn, isEncryptedFn);

  const directUrl =
    (/^https?:\/\//i.test(unwrappedRaw.url) && !/\/api\/anime\/(?:hls|video)-proxy/i.test(unwrappedRaw.url)
      ? unwrappedRaw.url
      : "") ||
    (/^https?:\/\//i.test(unwrappedHls.url) && !/\/api\/anime\/(?:hls|video)-proxy/i.test(unwrappedHls.url)
      ? unwrappedHls.url
      : "");

  const referer =
    String(payload.referer || payload.headers?.Referer || "").trim() ||
    unwrappedHls.referer ||
    unwrappedRaw.referer ||
    fallbackReferer;

  if (!directUrl) {
    return { ...payload, deliveryMode: "direct" };
  }

  const headers = buildDirectPlaybackHeaders(payload.headers, referer);

  // If an embedUrl was provided for an IP-locked host, expose clientExtract descriptor too
  const embedUrl = String(payload.embedUrl || "").trim();
  let directHost = "";
  try { directHost = new URL(directUrl).hostname.toLowerCase(); } catch { /* ignore */ }
  let embedHost = "";
  try { if (embedUrl) embedHost = new URL(embedUrl).hostname.toLowerCase(); } catch { /* ignore */ }

  if (clientExtractEnabled && embedUrl && isPhoneExtractableEmbedUrl(embedUrl) && (isIpLockedHost(directHost) || isIpLockedHost(embedHost))) {
    return {
      ...payload,
      hlsUrl: directUrl,
      rawUrl: directUrl,
      referer,
      headers,
      deliveryMode: "client-extract",
      clientExtract: {
        embedUrl,
        referer: referer || (() => { try { return `${new URL(embedUrl).origin}/`; } catch { return ""; } })(),
        hostKind: embedHost.includes("ok.ru") ? "okru" : "standard",
      },
    };
  }

  return {
    ...payload,
    hlsUrl: directUrl,
    rawUrl: directUrl,
    referer,
    headers,
    deliveryMode: "direct",
  };
}

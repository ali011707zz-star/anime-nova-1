import { isIP } from "node:net";

const STARDIMA_PAGE_DOMAINS = [
  "strema.top",
  "uqload.vc",
  "uqload.is",
  "uqload.co",
  "uqload.com",
  "lulustream.com",
  "savefiles.com",
  "mixdrop.top",
  "mixdrop.ag",
  "mixdrop.ch",
  "mixdrop.co",
  "hgcloud.to",
  "hyperwatching.com",
  "stardima.com",
  "worldnow.top",
];
const REDIRECT_STATUSES = new Set([301, 302, 303, 307, 308]);
const MAX_REDIRECTS = 5;

function isPrivateAddress(hostname) {
  const host = hostname.toLowerCase().replace(/^\[|\]$/g, "");
  if (host === "localhost" || host.endsWith(".localhost") || host.endsWith(".local")) return true;
  const version = isIP(host);
  if (version === 4) {
    const parts = host.split(".").map(Number);
    return parts[0] === 0 || parts[0] === 10 || parts[0] === 127 ||
      (parts[0] === 169 && parts[1] === 254) ||
      (parts[0] === 172 && parts[1] >= 16 && parts[1] <= 31) ||
      (parts[0] === 192 && parts[1] === 168) ||
      (parts[0] === 100 && parts[1] >= 64 && parts[1] <= 127);
  }
  if (version === 6) {
    return host === "::" || host === "::1" || host.startsWith("fc") ||
      host.startsWith("fd") || host.startsWith("fe80") ||
      host.startsWith("::ffff:127.") || host.startsWith("::ffff:10.") ||
      host.startsWith("::ffff:192.168.");
  }
  return false;
}

export function isSafeExternalHttpUrl(value) {
  try {
    const url = new URL(value);
    return ["http:", "https:"].includes(url.protocol) &&
      !url.username && !url.password && !isPrivateAddress(url.hostname);
  } catch {
    return false;
  }
}

function domainMatches(host, domain) {
  return host === domain || host.endsWith(`.${domain}`);
}

export function isAllowedStardimaPageUrl(value) {
  if (!isSafeExternalHttpUrl(value)) return false;
  const host = new URL(value).hostname.toLowerCase();
  return STARDIMA_PAGE_DOMAINS.some((domain) => domainMatches(host, domain));
}

function cancelBody(response) {
  try {
    const pending = response?.body?.cancel?.();
    if (pending && typeof pending.catch === "function") void pending.catch(() => {});
  } catch {}
}

async function requestWithCheckedRedirects(url, options, fetchImpl, safeUrl) {
  let current = url;
  const { timeoutMs, ...requestOptions } = options;
  for (let redirect = 0; redirect <= MAX_REDIRECTS; redirect += 1) {
    if (!safeUrl(current)) {
      return { error: "unsafe_redirect", url: current, response: null };
    }
    let response;
    try {
      response = await fetchImpl(current, {
        ...requestOptions,
        redirect: "manual",
        signal: AbortSignal.timeout(timeoutMs || 4500),
      });
    } catch {
      return { error: "network_error", url: current, response: null };
    }
    if (!REDIRECT_STATUSES.has(response.status)) return { url: current, response };
    const location = response.headers?.get?.("location");
    cancelBody(response);
    if (!location || redirect === MAX_REDIRECTS) {
      return { error: "too_many_redirects", url: current, response: null };
    }
    try {
      current = new URL(location, current).href;
    } catch {
      return { error: "invalid_redirect", url: current, response: null };
    }
  }
  return { error: "too_many_redirects", url: current, response: null };
}

export async function fetchSafeExternalResponse(value, options = {}) {
  const safeUrl = options.safeUrl || isSafeExternalHttpUrl;
  const fetchImpl = options.fetchImpl || fetch;
  return requestWithCheckedRedirects(
    String(value || "").trim(),
    {
      method: options.method || "GET",
      headers: options.headers || {},
      timeoutMs: options.timeoutMs || 4500,
    },
    fetchImpl,
    safeUrl,
  );
}

function httpFailure(status, url) {
  if (status === 404 || status === 410) {
    return {
      ok: false,
      state: status === 410 ? "expired" : "dead",
      reason: status === 410 ? "upstream_expired" : "upstream_not_found",
      status,
      finalUrl: url,
    };
  }
  if (status === 401 || status === 403 || status === 407 || status === 429) {
    return {
      ok: false,
      state: "blocked",
      reason: "upstream_access_blocked",
      status,
      finalUrl: url,
    };
  }
  return {
    ok: false,
    state: "unreachable",
    reason: status >= 500 ? "upstream_server_error" : "upstream_unreachable",
    status,
    finalUrl: url,
  };
}

function readMediaSignature(bytes, contentType) {
  if (!bytes?.length) return null;
  const prefix = Buffer.from(bytes);
  const lowerType = String(contentType || "").toLowerCase().split(";")[0].trim();
  const text = prefix.toString("utf8").replace(/^\uFEFF/, "").trimStart();
  if (/^#EXTM3U(?:\s|$)/i.test(text)) return "hls";
  if (/^<(?:!doctype\s+html|html|head|body|script|iframe)\b/i.test(text) ||
      /^<\?xml/i.test(text) || /<html[\s>]/i.test(text.slice(0, 512))) return null;
  if (prefix.length >= 8 && prefix.toString("ascii", 4, 8) === "ftyp") return "mp4";
  if (lowerType.includes("mpegurl") && text.includes("#EXTM3U")) return "hls";
  return null;
}

async function readBoundedPrefix(response, maxBytes) {
  const reader = response?.body?.getReader?.();
  if (!reader) return new Uint8Array();
  try {
    const { value } = await reader.read();
    if (!value) return new Uint8Array();
    return value.subarray(0, maxBytes);
  } finally {
    try { await reader.cancel(); } catch {}
    try { reader.releaseLock(); } catch {}
  }
}

function firstPlaylistReference(manifest) {
  const lines = String(manifest || "").split(/\r?\n/).map((line) => line.trim()).filter(Boolean);
  for (let i = 0; i < lines.length; i += 1) {
    if (/^#EXT-X-STREAM-INF\b/i.test(lines[i])) {
      const next = lines.slice(i + 1).find((line) => !line.startsWith("#"));
      if (next) return next;
    }
  }
  return lines.find((line) => !line.startsWith("#")) || null;
}

function isHtmlPrefix(prefix, contentType) {
  return /text\/html|application\/xhtml\+xml/i.test(contentType) ||
    /^<(?:!doctype\s+html|html|head|body|script|iframe)\b/i.test(
      Buffer.from(prefix).toString("utf8").trimStart(),
    );
}

function isMediaSegment(prefix, contentType) {
  const bytes = Buffer.from(prefix || []);
  if (isHtmlPrefix(bytes, contentType) || !bytes.length) return false;
  if (bytes.length >= 8 && ["ftyp", "styp", "moof"].includes(bytes.toString("ascii", 4, 8))) return true;
  if (bytes.length > 188 && bytes[0] === 0x47 && bytes[188] === 0x47) return true;
  return /^(?:video\/|audio\/)/i.test(String(contentType || ""));
}

async function verifyHlsMediaReference(manifestUrl, manifestPrefix, options, depth = 0) {
  const reference = firstPlaylistReference(Buffer.from(manifestPrefix).toString("utf8"));
  if (!reference) {
    return { ok: false, state: "unsupported", reason: "hls_playlist_has_no_media", status: null };
  }
  let mediaUrl;
  try {
    mediaUrl = new URL(reference, manifestUrl).href;
  } catch {
    return { ok: false, state: "unsupported", reason: "invalid_hls_media_reference", status: null };
  }
  if (!options.safeUrl(mediaUrl)) {
    return { ok: false, state: "blocked", reason: "unsafe_hls_media_reference", status: null };
  }
  const result = await requestWithCheckedRedirects(mediaUrl, {
    method: "GET",
    headers: { ...options.headers, Range: `bytes=0-${options.maxBytes - 1}` },
    timeoutMs: options.timeoutMs,
  }, options.fetchImpl, options.safeUrl);
  if (result.error || !result.response) {
    return {
      ok: false,
      state: result.error === "unsafe_redirect" ? "blocked" : "unreachable",
      reason: result.error || "hls_media_request_failed",
      status: null,
    };
  }
  const response = result.response;
  const status = response.status;
  if (status === 404 || status === 410 || status === 401 || status === 403 || status === 407 || status === 429) {
    cancelBody(response);
    return httpFailure(status, result.url);
  }
  if (!(response.ok || status === 206)) {
    cancelBody(response);
    return httpFailure(status, result.url);
  }
  const contentType = response.headers?.get?.("content-type") || "";
  const prefix = await readBoundedPrefix(response, options.maxBytes);
  const nestedType = readMediaSignature(prefix, contentType);
  if (nestedType === "hls") {
    if (depth >= 2) {
      return { ok: false, state: "unsupported", reason: "hls_playlist_nesting_limit", status };
    }
    return verifyHlsMediaReference(result.url, prefix, options, depth + 1);
  }
  if (!isMediaSegment(prefix, contentType)) {
    return {
      ok: false,
      state: "unsupported",
      reason: isHtmlPrefix(prefix, contentType) ? "hls_reference_returned_html" : "hls_media_reference_unverified",
      status,
    };
  }
  return { ok: true, status };
}

export async function probeStardimaMediaUrl(value, options = {}) {
  const safeUrl = options.safeUrl || isSafeExternalHttpUrl;
  const fetchImpl = options.fetchImpl || fetch;
  const maxBytes = Math.max(512, Math.min(8192, options.maxBytes || 2048));
  const originalUrl = String(value || "").trim();
  if (!safeUrl(originalUrl)) {
    return { ok: false, state: "blocked", reason: "unsafe_media_url", status: null, finalUrl: null };
  }

  const referer = options.referer && safeUrl(options.referer) ? options.referer : undefined;
  const baseHeaders = {
    "User-Agent": "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 Chrome/124 Safari/537.36",
    Accept: "video/*,application/vnd.apple.mpegurl,application/x-mpegURL,application/octet-stream,*/*;q=0.5",
    ...(referer ? { Referer: referer, Origin: new URL(referer).origin } : {}),
  };
  const head = await requestWithCheckedRedirects(originalUrl, {
    method: "HEAD",
    headers: baseHeaders,
    timeoutMs: options.timeoutMs || 4500,
  }, fetchImpl, safeUrl);
  if (head.error === "unsafe_redirect") {
    return { ok: false, state: "blocked", reason: head.error, status: null, finalUrl: null };
  }
  if (head.response && (head.response.status === 404 || head.response.status === 410)) {
    const result = httpFailure(head.response.status, head.url);
    cancelBody(head.response);
    return result;
  }
  cancelBody(head.response);

  const range = await requestWithCheckedRedirects(originalUrl, {
    method: "GET",
    headers: { ...baseHeaders, Range: `bytes=0-${maxBytes - 1}` },
    timeoutMs: options.timeoutMs || 4500,
  }, fetchImpl, safeUrl);
  if (range.error === "unsafe_redirect") {
    return { ok: false, state: "blocked", reason: range.error, status: null, finalUrl: null };
  }
  if (range.error || !range.response) {
    return { ok: false, state: "unreachable", reason: range.error || "probe_failed", status: null, finalUrl: null };
  }

  const response = range.response;
  const status = response.status;
  const finalUrl = range.url;
  const contentType = response.headers?.get?.("content-type") || "";
  if (status === 404 || status === 410 || status === 401 || status === 403 || status === 407 || status === 429) {
    cancelBody(response);
    return httpFailure(status, finalUrl);
  }
  if (!(response.ok || status === 206)) {
    cancelBody(response);
    return httpFailure(status, finalUrl);
  }

  const prefix = await readBoundedPrefix(response, maxBytes);
  const type = readMediaSignature(prefix, contentType);
  if (!type) {
    const isHtml = /text\/html|application\/xhtml\+xml/i.test(contentType) ||
      /^<(?:!doctype\s+html|html|head|body|script|iframe)\b/i.test(Buffer.from(prefix).toString("utf8").trimStart());
    return {
      ok: false,
      state: "unsupported",
      reason: isHtml ? "external_player_page_only" : "unsupported_media_format",
      status,
      finalUrl,
      contentType: contentType.slice(0, 120),
    };
  }
  if (type === "hls") {
    const hlsCheck = await verifyHlsMediaReference(finalUrl, prefix, {
      safeUrl,
      fetchImpl,
      maxBytes,
      timeoutMs: options.timeoutMs || 4500,
      headers: baseHeaders,
    });
    if (!hlsCheck.ok) {
      return {
        ok: false,
        state: hlsCheck.state,
        reason: hlsCheck.reason,
        status: hlsCheck.status ?? status,
        finalUrl,
        contentType: contentType.slice(0, 120),
      };
    }
  }
  return {
    ok: true,
    state: "verified",
    reason: null,
    status,
    finalUrl,
    contentType: contentType.slice(0, 120),
    type,
  };
}

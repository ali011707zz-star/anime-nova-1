import { encryptParam } from "./security.js";
import { lookupAniListTitle } from "./anilist-title.js";
import { probeHlsQuality, probeHlsVariants, probeHlsManifest } from "./consumet.js";

const REANIME_BASE = "https://reanime.to";
const FLIX_ORIGIN = "https://flixcloud.cc";
const ENC_DEC_BASE = "https://enc-dec.app";
const REQUEST_TIMEOUT_MS = 8_000;
const DEFAULT_XOR_MASK = [157, 42, 241, 71, 179, 142, 92, 112, 166, 25, 228, 59, 216, 98, 15, 197];

type ReanimeServer = {
  serverName?: string;
  dataLink?: string;
  dataType?: string;
  softsub?: boolean;
};

type ReanimeSource = {
  name: string;
  url: string;
  quality: string;
  qualityRank: number;
  site: "reanime";
  directUrl: string;
  directType: "hls";
  isEmbed: false;
  hasBuiltinSub: false;
  headers: Record<string, string>;
};

function timeoutSignal(): AbortSignal {
  return AbortSignal.timeout(REQUEST_TIMEOUT_MS);
}

async function getJson<T>(url: string, referer: string): Promise<T> {
  const response = await fetch(url, {
    headers: {
      Accept: "application/json, text/plain, */*",
      "Accept-Language": "en-US,en;q=0.9",
      Referer: referer,
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/126 Safari/537.36",
    },
    signal: timeoutSignal(),
  });
  if (!response.ok) throw new Error(`upstream returned ${response.status}`);
  return await response.json() as T;
}

function extractEmbedObject(html: string): string {
  const marker = /type\s*:\s*["']data["']\s*,\s*data\s*:\s*/.exec(html);
  if (!marker || marker.index === undefined) throw new Error("FlixCloud embed data missing");
  const start = html.indexOf("{", marker.index + marker[0].length);
  if (start < 0) throw new Error("FlixCloud embed object missing");

  let depth = 0;
  let quote = "";
  let escaped = false;
  for (let index = start; index < html.length; index++) {
    const char = html[index]!;
    if (quote) {
      if (escaped) escaped = false;
      else if (char === "\\") escaped = true;
      else if (char === quote) quote = "";
      continue;
    }
    if (char === '"' || char === "'") {
      quote = char;
      continue;
    }
    if (char === "{") depth++;
    if (char === "}" && --depth === 0) return html.slice(start, index + 1);
  }
  throw new Error("FlixCloud embed object is incomplete");
}

function parseJsObject(source: string): Record<string, any> {
  let index = 0;
  const whitespace = () => { while (/\s/.test(source[index] || "")) index++; };

  function parseString(): string {
    const quote = source[index++]!;
    let result = "";
    while (index < source.length && source[index] !== quote) {
      const char = source[index++]!;
      if (char !== "\\") {
        result += char;
        continue;
      }
      const escaped = source[index++] || "";
      result += escaped === "n" ? "\n"
        : escaped === "r" ? "\r"
          : escaped === "t" ? "\t"
            : escaped;
    }
    if (source[index] !== quote) throw new Error("Unterminated FlixCloud string");
    index++;
    return result;
  }

  function parseKey(): string {
    whitespace();
    if (source[index] === '"' || source[index] === "'") return parseString();
    const match = source.slice(index).match(/^[A-Za-z_$][\w$-]*/);
    if (!match) throw new Error("Invalid FlixCloud object key");
    index += match[0].length;
    return match[0];
  }

  function parseValue(): any {
    whitespace();
    const char = source[index];
    if (char === "{") {
      index++;
      const result: Record<string, any> = {};
      whitespace();
      while (index < source.length && source[index] !== "}") {
        if (source[index] === ",") { index++; whitespace(); continue; }
        const key = parseKey();
        whitespace();
        if (source[index++] !== ":") throw new Error("Invalid FlixCloud object");
        result[key] = parseValue();
        whitespace();
        if (source[index] === ",") index++;
        whitespace();
      }
      if (source[index++] !== "}") throw new Error("Unterminated FlixCloud object");
      return result;
    }
    if (char === "[") {
      index++;
      const result: any[] = [];
      whitespace();
      while (index < source.length && source[index] !== "]") {
        if (source[index] === ",") { index++; whitespace(); continue; }
        result.push(parseValue());
        whitespace();
        if (source[index] === ",") index++;
        whitespace();
      }
      if (source[index++] !== "]") throw new Error("Unterminated FlixCloud array");
      return result;
    }
    if (char === '"' || char === "'") return parseString();
    if (source.startsWith("true", index)) { index += 4; return true; }
    if (source.startsWith("false", index)) { index += 5; return false; }
    if (source.startsWith("null", index) || source.startsWith("undefined", index)) {
      index += source.startsWith("null", index) ? 4 : 9;
      return null;
    }
    if (source.startsWith("!0", index)) { index += 2; return true; }
    if (source.startsWith("!1", index)) { index += 2; return false; }
    const number = source.slice(index).match(/^-?[\d.]+(?:[eE][+-]?\d+)?/);
    if (number) { index += number[0].length; return Number(number[0]); }
    throw new Error("Unsupported FlixCloud embed literal");
  }

  return parseValue();
}

async function resolveFlixStream(server: ReanimeServer): Promise<{ masterUrl: string; wPayload: string; serverName: string }> {
  const dataLink = String(server.dataLink || "").trim();
  if (!dataLink) throw new Error("missing server embed");
  const embedUrl = new URL(dataLink, `${REANIME_BASE}/`).toString();
  const embedResponse = await fetch(embedUrl, {
    headers: { Accept: "*/*", Origin: FLIX_ORIGIN, Referer: `${FLIX_ORIGIN}/` },
    signal: timeoutSignal(),
  });
  if (!embedResponse.ok) throw new Error(`embed returned ${embedResponse.status}`);

  const embedData = parseJsObject(extractEmbedObject(await embedResponse.text()));
  const tokenData = { ...embedData };
  delete tokenData.subtitles;
  delete tokenData.intro_chapter;
  delete tokenData.outro_chapter;

  const tokenResponse = await fetch(`${ENC_DEC_BASE}/api/dec-flixcloud?type=token`, {
    method: "POST",
    headers: { Accept: "*/*", "Content-Type": "application/json" },
    body: JSON.stringify({ data: tokenData }),
    signal: timeoutSignal(),
  });
  if (!tokenResponse.ok) throw new Error(`token decode returned ${tokenResponse.status}`);
  const tokenPayload = await tokenResponse.json() as {
    result?: { token?: string; context?: unknown };
  };
  const token = tokenPayload.result?.token;
  if (!token) throw new Error("FlixCloud token missing");

  const streamResponse = await fetch(`${FLIX_ORIGIN}/api/m3u8/${encodeURIComponent(token)}`, {
    headers: { Accept: "*/*", Origin: FLIX_ORIGIN, Referer: `${FLIX_ORIGIN}/` },
    signal: timeoutSignal(),
  });
  if (!streamResponse.ok) throw new Error(`stream token returned ${streamResponse.status}`);
  let streamPayload: unknown = await streamResponse.json();
  if (!streamPayload || typeof streamPayload !== "object" || Array.isArray(streamPayload)) {
    streamPayload = { data: streamPayload };
  }

  const decryptResponse = await fetch(`${ENC_DEC_BASE}/api/dec-flixcloud?type=stream`, {
    method: "POST",
    headers: { Accept: "*/*", "Content-Type": "application/json" },
    body: JSON.stringify({
      data: { context: tokenPayload.result?.context, stream_response: streamPayload },
    }),
    signal: timeoutSignal(),
  });
  if (!decryptResponse.ok) throw new Error(`stream decrypt returned ${decryptResponse.status}`);
  const decrypted = await decryptResponse.json() as {
    result?: { stream?: string; context?: { w_payload?: string } };
  };
  const streamUrl = decrypted.result?.stream;
  const wPayload = decrypted.result?.context?.w_payload;
  if (!streamUrl || !wPayload) throw new Error("FlixCloud stream payload incomplete");

  const masterUrl = new URL(`${ENC_DEC_BASE}/api/parse-flixcloud`);
  masterUrl.searchParams.set("url", streamUrl);
  masterUrl.searchParams.set("w_payload", wPayload);
  return { masterUrl: masterUrl.toString(), wPayload, serverName: server.serverName || "FlixCloud" };
}

function proxiedVariantUrl(url: string): string {
  let referer = `${FLIX_ORIGIN}/`;
  try {
    if (new URL(url).hostname.toLowerCase() === "enc-dec.app") referer = `${ENC_DEC_BASE}/`;
  } catch {}
  const ref = encryptParam(referer);
  return `/api/anime/hls-proxy?url=${encodeURIComponent(encryptParam(url))}&ref=${encodeURIComponent(ref)}`;
}

export async function getReanimeSources(
  anilistId: number | undefined,
  ep: number,
  title = "",
  english: string | null = null,
  titleVariants: string[] = [],
): Promise<ReanimeSource[]> {
  if (!Number.isFinite(ep) || ep < 1) return [];
  let resolvedAniListId = anilistId;
  if (!resolvedAniListId) {
    const match = await lookupAniListTitle([title, english || "", ...titleVariants]);
    resolvedAniListId = match?.id;
  }
  if (!resolvedAniListId) return [];

  try {
    const response = await getJson<{ success?: boolean; servers?: ReanimeServer[] }>(
      `${REANIME_BASE}/api/flix/${resolvedAniListId}/${encodeURIComponent(String(ep))}`,
      `${REANIME_BASE}/`,
    );
    if (response.success === false) return [];
    const servers = (Array.isArray(response.servers) ? response.servers : [])
      .filter(server => {
        const audio = String(server.dataType || "sub").trim().toLowerCase();
        return audio === "sub" || audio === "raw";
      })
      .slice(0, 8);

    const batches = await Promise.allSettled(servers.map(async server => {
      const resolved = await resolveFlixStream(server);
      const variants = await probeHlsVariants(resolved.masterUrl, `${ENC_DEC_BASE}/`);
      if (!variants.length) {
        if (!await probeHlsManifest(resolved.masterUrl, `${ENC_DEC_BASE}/`)) return [];
        const quality = await probeHlsQuality(resolved.masterUrl, `${ENC_DEC_BASE}/`);
        const proxied = proxiedVariantUrl(resolved.masterUrl);
        return [{
          name: `RE · ${resolved.serverName} · ${quality.label}`,
          url: proxied,
          quality: quality.label,
          qualityRank: quality.rank,
          site: "reanime" as const,
          directUrl: proxied,
          directType: "hls" as const,
          isEmbed: false as const,
          hasBuiltinSub: false as const,
          headers: { Referer: `${FLIX_ORIGIN}/` },
        }];
      }
      return variants.map(variant => {
        const proxied = proxiedVariantUrl(variant.url);
        return {
          name: `RE · ${resolved.serverName} · ${variant.label}`,
          url: proxied,
          quality: variant.label,
          qualityRank: variant.rank,
          site: "reanime" as const,
          directUrl: proxied,
          directType: "hls" as const,
          isEmbed: false as const,
          hasBuiltinSub: false as const,
          headers: { Referer: `${FLIX_ORIGIN}/` },
        };
      });
    }));

    const sources = batches.flatMap(result => result.status === "fulfilled" ? result.value : []);
    const unique = new Map<string, ReanimeSource>();
    for (const source of sources) {
      if (!unique.has(source.directUrl)) unique.set(source.directUrl, source);
    }
    return [...unique.values()].sort((a, b) => b.qualityRank - a.qualityRank);
  } catch {
    return [];
  }
}

let xorMaskCache: { value: Uint8Array; expiresAt: number } | null = null;

export async function getReanimeXorMask(): Promise<Uint8Array> {
  if (xorMaskCache && xorMaskCache.expiresAt > Date.now()) return xorMaskCache.value;
  let value = Uint8Array.from(DEFAULT_XOR_MASK);
  try {
    const response = await fetch(`${FLIX_ORIGIN}/artplayer-new/hls.js?v=104`, {
      headers: { Referer: `${FLIX_ORIGIN}/` },
      signal: AbortSignal.timeout(5_000),
    });
    if (response.ok) {
      const script = await response.text();
      const match = /for\(var f=\[([0-9]{1,3}(?:,[0-9]{1,3}){15})\]/.exec(script);
      const values = match?.[1]?.split(",").map(Number);
      if (values?.length === 16 && values.every(n => Number.isInteger(n) && n >= 0 && n <= 255)) {
        value = Uint8Array.from(values);
      }
    }
  } catch {
    // The current provider bundle may be unavailable; AP0DL's documented
    // default mask remains the compatibility fallback.
  }
  xorMaskCache = { value, expiresAt: Date.now() + 30 * 60_000 };
  return value;
}

export async function decodeReanimeImageSegment(raw: ArrayBuffer): Promise<Buffer | null> {
  const bytes = Buffer.from(raw);
  let offset = 0;
  if (
    bytes.length >= 12 &&
    bytes.toString("ascii", 0, 4) === "RIFF" &&
    bytes.toString("ascii", 8, 12) === "WEBP"
  ) {
    offset = 12;
  } else if (
    bytes.length >= 8 &&
    bytes.subarray(0, 8).equals(Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]))
  ) {
    offset = 8;
  } else {
    return null;
  }
  const mask = await getReanimeXorMask();
  if (!mask.length) return null;
  const decoded = Buffer.from(bytes.subarray(offset));
  for (let index = 0; index < decoded.length; index++) {
    decoded[index] ^= mask[index % mask.length]!;
  }
  return decoded;
}

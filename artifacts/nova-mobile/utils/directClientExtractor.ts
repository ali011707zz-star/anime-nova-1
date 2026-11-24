import Constants from "expo-constants";
import { Platform } from "react-native";
import {
  appendDirectStreamParams,
  buildDirectStreamHeaders,
  classifyDeliveryBadge,
  extractMediaUrlFromHtml,
  isDirectStreamVersion,
} from "./directStreamModeLogic.mjs";

export const MOBILE_DIRECT_UA =
  "Mozilla/5.0 (Linux; Android 14; Pixel 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

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

export const APP_RUNTIME_VERSION: string = Constants.expoConfig?.version || "1.0.10";

export function isDirectStreamActive(): boolean {
  return Platform.OS !== "web" && isDirectStreamVersion(APP_RUNTIME_VERSION);
}

export function getDirectRequestHeaders(): Record<string, string> {
  if (!isDirectStreamActive()) return {};
  return buildDirectStreamHeaders(APP_RUNTIME_VERSION);
}

export function withDirectStreamParams<T extends string | URLSearchParams>(input: T): T {
  return appendDirectStreamParams(input, isDirectStreamActive());
}

export function getDeliveryBadge(url: string | null | undefined, deliveryModeHint?: string | null) {
  return classifyDeliveryBadge(url, deliveryModeHint);
}

/**
 * Fast phone-side extraction (runs directly on the user's residential IP, 0% VPS video).
 * Returns null if the embed requires JS execution / Cloudflare challenge so callers
 * can seamlessly fall back to HiddenResolverWebView.
 */
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
    let origin = "";
    try { origin = new URL(embedUrl).origin; } catch { /* ignore */ }
    const referer = String(descriptor.referer || (origin ? `${origin}/` : "")).trim();
    const res = await fetch(embedUrl, {
      method: "GET",
      headers: {
        "User-Agent": MOBILE_DIRECT_UA,
        Accept: "text/html,application/xhtml+xml,*/*",
        ...(referer ? { Referer: referer } : {}),
      },
      redirect: "follow",
      signal: ctrl.signal,
    });
    if (!res.ok) return null;
    const html = await res.text();
    const found = extractMediaUrlFromHtml(html, res.url || embedUrl, descriptor.hostKind || "standard");
    if (!found?.url) return null;

    let finalOrigin = origin;
    try { finalOrigin = new URL(res.url || embedUrl).origin; } catch { /* ignore */ }
    const playbackReferer = res.url || embedUrl || referer;
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
    return null;
  } finally {
    clearTimeout(timer);
    signal?.removeEventListener("abort", onOuterAbort);
  }
}

/**
 * Resolves an AW Dubbed MediaFire link (/api/aw-dubbed/mf-stream?link=...) via the
 * zero-VPS ?resolve=1 JSON fast-path so the phone streams directly from MediaFire CDN.
 */
export async function resolveMediaFireDirectOnPhone(
  rawUrl: string,
  baseUrl: string,
  signal?: AbortSignal,
): Promise<string | null> {
  if (!rawUrl || !rawUrl.includes("/api/aw-dubbed/mf-stream")) return null;
  try {
    const full = rawUrl.startsWith("/") ? `${baseUrl}${rawUrl}` : rawUrl;
    const u = new URL(full);
    u.searchParams.set("resolve", "1");
    const res = await fetch(u.toString(), {
      method: "GET",
      headers: {
        Accept: "application/json",
        ...getDirectRequestHeaders(),
      },
      signal,
    });
    if (!res.ok) return null;
    const data = (await res.json()) as { directUrl?: string };
    const direct = String(data?.directUrl || "").trim();
    return /^https?:\/\//i.test(direct) ? direct : null;
  } catch {
    return null;
  }
}

/**
 * Nova Anime — Cloudflare Worker
 * يعمل كـ proxy كامل للـ CDN:
 *   - يُضيف Referer/Origin لجميع الطلبات
 *   - يكتشف M3U8 manifests ويُعيد كتابة روابط الـ segments لتمر عبره
 *   - النتيجة: VPS لا يستهلك أي bandwidth — فقط 307 redirect للـ Worker
 *
 * الاستخدام (مُشفَّر بـ AES-256-GCM):
 *   https://<worker>.workers.dev?t=<hex-token>
 *
 * الاستخدام (قديم — للتوافقية فقط):
 *   https://<worker>.workers.dev?url=<encoded-cdn-url>&ref=<encoded-referer>&key=<CF_PROXY_KEY>
 *
 * المتغيّرات (Secrets في Cloudflare Dashboard):
 *   CF_PROXY_KEY  — مفتاح AES-256-GCM
 */

// ── مساعد: hex → Uint8Array ──────────────────────────────────────────────────
function hexToBytes(hex) {
  const len = hex.length >> 1;
  const buf = new Uint8Array(len);
  for (let i = 0; i < len; i++) {
    buf[i] = parseInt(hex.slice(i * 2, i * 2 + 2), 16);
  }
  return buf;
}

// ── مساعد: Uint8Array → hex ──────────────────────────────────────────────────
function bytesToHex(buf) {
  return [...buf].map(b => b.toString(16).padStart(2, "0")).join("");
}

/**
 * فك تشفير توكن CF Worker (AES-256-GCM)
 */
async function decryptCfToken(token, keyStr) {
  if (!keyStr) throw new Error("CF_PROXY_KEY not configured");
  const rawKey = new TextEncoder().encode(keyStr.padEnd(32, "0").slice(0, 32));
  const key = await crypto.subtle.importKey("raw", rawKey, { name: "AES-GCM" }, false, ["decrypt"]);
  const iv      = hexToBytes(token.slice(0, 24));
  const authTag = hexToBytes(token.slice(token.length - 32));
  const ctBytes = hexToBytes(token.slice(24, token.length - 32));
  const combined = new Uint8Array(ctBytes.length + authTag.length);
  combined.set(ctBytes);
  combined.set(authTag, ctBytes.length);
  const plain = await crypto.subtle.decrypt({ name: "AES-GCM", iv, tagLength: 128 }, key, combined);
  const parsed = JSON.parse(new TextDecoder().decode(plain));
  if (parsed.exp && Math.floor(Date.now() / 1000) > parsed.exp) {
    throw new Error("token expired");
  }
  return { url: parsed.url, ref: parsed.ref || "" };
}

/**
 * تشفير توكن CF Worker (AES-256-GCM) — لإنشاء روابط segments داخل M3U8
 * TTL افتراضي 6 ساعات (كافٍ للـ segments)
 */
async function encryptCfToken(url, ref, keyStr, expSeconds = 21600) {
  if (!keyStr) throw new Error("CF_PROXY_KEY not configured");
  const rawKey = new TextEncoder().encode(keyStr.padEnd(32, "0").slice(0, 32));
  const key = await crypto.subtle.importKey("raw", rawKey, { name: "AES-GCM" }, false, ["encrypt"]);
  const iv = crypto.getRandomValues(new Uint8Array(12));
  const payload = JSON.stringify({ url, ref, exp: Math.floor(Date.now() / 1000) + expSeconds });
  const encoded = new TextEncoder().encode(payload);
  const cipher = await crypto.subtle.encrypt({ name: "AES-GCM", iv, tagLength: 128 }, key, encoded);
  const combined = new Uint8Array(cipher);
  return bytesToHex(iv) + bytesToHex(combined);
}

/**
 * حلّ رابط نسبي إلى مطلق
 */
function resolveUrl(relOrAbs, base) {
  if (!relOrAbs) return relOrAbs;
  try {
    return new URL(relOrAbs, base).toString();
  } catch {
    return relOrAbs;
  }
}

/**
 * اكتشاف هل المحتوى هو M3U8 manifest
 * يدعم: Content-Type + امتداد URL + أول بايتات المحتوى
 */
function isHlsManifest(contentType, urlStr, bodyPrefix) {
  const ct = (contentType || "").toLowerCase();
  const url = (urlStr || "").toLowerCase();
  // فحص Content-Type
  if (ct.includes("mpegurl") || ct.includes("x-mpegurl") || ct.includes("vnd.apple.mpeg")) return true;
  // فحص امتداد URL (مع تجاهل الكيس وquery params)
  const urlPath = url.split("?")[0];
  if (urlPath.endsWith(".m3u8") || urlPath.endsWith(".m3u")) return true;
  // فحص محتوى أول سطر — بعض CDNs يُعيدون text/plain أو application/octet-stream
  // نُحوّل للأحرف الصغيرة لأن المعيار يكتبها #EXTM3U (uppercase) لكن نريد تسامحاً
  if (bodyPrefix && bodyPrefix.trimStart().toLowerCase().startsWith("#extm3u")) return true;
  return false;
}

/**
 * إعادة كتابة M3U8 manifest:
 * كل رابط segment/playlist يُحوَّل لـ https://worker?t=<token>
 * الـ Worker يُضيف Referer/Origin عند جلب الـ CDN.
 */
async function rewriteM3u8(body, baseUrl, workerOrigin, ref, keyStr) {
  const lines = body.split("\n");
  const out = [];

  for (let i = 0; i < lines.length; i++) {
    const line = lines[i];
    const trimmed = line.trim();

    if (!trimmed) {
      out.push(line);
      continue;
    }

    if (trimmed.startsWith("#")) {
      // أعِد كتابة URI= داخل tags مثل #EXT-X-KEY و #EXT-X-MAP
      if (trimmed.includes('URI="')) {
        const newLine = await replaceUriAttr(line, baseUrl, workerOrigin, ref, keyStr);
        out.push(newLine);
      } else {
        out.push(line);
      }
      continue;
    }

    // سطر URL (segment أو sub-playlist)
    try {
      const absUrl = resolveUrl(trimmed, baseUrl);
      new URL(absUrl); // تحقق من صحة الرابط
      const tok = await encryptCfToken(absUrl, ref, keyStr);
      out.push(`${workerOrigin}?t=${tok}`);
    } catch {
      out.push(line); // لا يمكن معالجته، اتركه كما هو
    }
  }

  return out.join("\n");
}

/**
 * إعادة كتابة URI= داخل سطر M3U8 tag
 */
async function replaceUriAttr(line, baseUrl, workerOrigin, ref, keyStr) {
  const match = line.match(/URI="([^"]+)"/);
  if (!match) return line;
  try {
    const absUri = resolveUrl(match[1], baseUrl);
    new URL(absUri);
    const tok = await encryptCfToken(absUri, ref, keyStr);
    return line.replace(/URI="([^"]+)"/, `URI="${workerOrigin}?t=${tok}"`);
  } catch {
    return line;
  }
}

export default {
  async fetch(request, env) {
    // ── CORS preflight ──────────────────────────────────────────────
    if (request.method === "OPTIONS") {
      return new Response(null, {
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Headers": "Range, Content-Type",
          "Access-Control-Allow-Methods": "GET, OPTIONS",
          "Access-Control-Max-Age": "86400",
        },
      });
    }

    const reqUrl = new URL(request.url);
    const workerOrigin = reqUrl.origin; // https://nova-cdn-proxy.ali011707zz.workers.dev
    let targetRaw, ref;

    const token = reqUrl.searchParams.get("t");
    if (token) {
      if (!env.CF_PROXY_KEY) {
        return new Response("Worker misconfigured: CF_PROXY_KEY not set", { status: 500 });
      }
      try {
        const decoded = await decryptCfToken(token, env.CF_PROXY_KEY);
        targetRaw = decoded.url;
        ref       = decoded.ref;
      } catch {
        return new Response("Invalid or expired token", { status: 401 });
      }
    } else {
      // ── الصيغة القديمة: للتوافقية فقط ──────────────────────────
      targetRaw = reqUrl.searchParams.get("url");
      ref       = reqUrl.searchParams.get("ref") || "";
      const legacyKey   = reqUrl.searchParams.get("key") || "";
      const expectedKey = env.CF_PROXY_KEY || "";
      if (expectedKey && legacyKey !== expectedKey) {
        return new Response("Unauthorized", { status: 401 });
      }
    }

    if (!targetRaw) {
      return new Response("url parameter required", { status: 400 });
    }

    let target;
    try {
      target = new URL(
        targetRaw.startsWith("http") ? targetRaw : decodeURIComponent(targetRaw),
      );
    } catch {
      return new Response("invalid url", { status: 400 });
    }

    if (!["http:", "https:"].includes(target.protocol)) {
      return new Response("protocol not allowed", { status: 400 });
    }

    let origin = "";
    if (ref) { try { origin = new URL(ref).origin; } catch {} }
    if (!origin) { try { origin = target.origin; } catch {} }

    const headers = {
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
    };
    if (ref)    headers["Referer"] = ref;
    if (origin) headers["Origin"]  = origin;

    const rangeHeader = request.headers.get("Range");
    if (rangeHeader) headers["Range"] = rangeHeader;

    let cdnRes;
    try {
      cdnRes = await fetch(target.toString(), {
        method: "GET",
        headers,
        redirect: "follow",
      });
    } catch (e) {
      return new Response("upstream fetch failed: " + e.message, { status: 502 });
    }

    const ct = cdnRes.headers.get("content-type") || "";
    const targetStr = target.toString();
    const targetPathLower = (targetStr.split("?")[0]).toLowerCase();

    // ── هل الـ URL يدل بوضوح على ملف بيناري (TS/MP4/AAC/WebM)؟ ──
    const isClearlyBinary =
      targetPathLower.endsWith(".ts") ||
      targetPathLower.endsWith(".mp4") ||
      targetPathLower.endsWith(".m4s") ||
      targetPathLower.endsWith(".aac") ||
      targetPathLower.endsWith(".webm") ||
      ct.startsWith("video/") ||
      ct.startsWith("audio/");

    // ── اكتشاف M3U8 بالـ Content-Type أو امتداد URL (سريع) ──
    const mightBeHls = !isClearlyBinary && isHlsManifest(ct, targetStr, null);

    // ── إذا لم يكن HLS واضحاً ولم يكن ملفاً بيناريًا → اقرأ أول ~512 بايت للتحقق ──
    const needsBodyCheck = !isClearlyBinary && !mightBeHls && (
      !ct || ct.includes("text") || ct.includes("application")
    );

    if (cdnRes.ok && (mightBeHls || needsBodyCheck)) {
      try {
        const body = await cdnRes.text();
        // فحص نهائي بمحتوى أول سطر للكشف عن #EXTM3U
        if (isHlsManifest(ct, targetStr, body)) {
          const finalRef = ref || targetStr;
          const rewritten = await rewriteM3u8(
            body,
            targetStr,
            workerOrigin,
            finalRef,
            env.CF_PROXY_KEY,
          );
          return new Response(rewritten, {
            status: 200,
            headers: {
              "Content-Type": "application/vnd.apple.mpegurl",
              "Access-Control-Allow-Origin": "*",
              "Access-Control-Allow-Headers": "Range",
              "Access-Control-Expose-Headers": "Content-Length, Content-Range, Content-Type",
              "Cache-Control": "no-store, no-cache, must-revalidate",
            },
          });
        }
        // ليس HLS — أعِد كنص مباشرةً
        const resHeadersTxt = new Headers(cdnRes.headers);
        resHeadersTxt.set("Access-Control-Allow-Origin", "*");
        resHeadersTxt.set("Access-Control-Allow-Headers", "Range");
        resHeadersTxt.set("Access-Control-Expose-Headers", "Content-Length, Content-Range, Content-Type");
        if (!resHeadersTxt.has("Cache-Control")) resHeadersTxt.set("Cache-Control", "public, max-age=3600");
        return new Response(body, { status: cdnRes.status, headers: resHeadersTxt });
      } catch (e) {
        return new Response("m3u8 processing failed: " + e.message, { status: 500 });
      }
    }

    // ── بيناري أو غير قابل للكشف — مرور مباشر كـ stream بدون قراءة ──
    const resHeaders = new Headers(cdnRes.headers);
    resHeaders.set("Access-Control-Allow-Origin", "*");
    resHeaders.set("Access-Control-Allow-Headers", "Range");
    resHeaders.set("Access-Control-Expose-Headers", "Content-Length, Content-Range, Content-Type");
    if (!resHeaders.has("Cache-Control")) {
      resHeaders.set("Cache-Control", "public, max-age=3600");
    }

    return new Response(cdnRes.body, {
      status: cdnRes.status,
      headers: resHeaders,
    });
  },
};

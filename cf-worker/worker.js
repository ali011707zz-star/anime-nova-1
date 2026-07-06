/**
 * Nova Anime — Cloudflare Worker
 * يعمل كـ proxy شفّاف للـ CDN: يُضيف Referer/Origin فقط.
 * يُستخدم حصراً من متصفح الويب (hls.js + video MP4)؛ الموبايل يتصل بالـ CDN مباشرةً.
 *
 * الاستخدام (الجديد — مُشفَّر بـ AES-256-GCM):
 *   https://<worker>.workers.dev?t=<hex-token>
 *   الـ token صيغته: iv(24 hex = 12B) + ciphertext(N hex) + authTag(32 hex = 16B)
 *
 * الاستخدام (قديم — للتوافقية فقط):
 *   https://<worker>.workers.dev?url=<encoded-cdn-url>&ref=<encoded-referer>&key=<CF_PROXY_KEY>
 *
 * المتغيّرات (Secrets في Cloudflare Dashboard):
 *   CF_PROXY_KEY  — مفتاح AES-256-GCM (يجب ضبطه؛ بدونه يُرفض الطلب بـ 401)
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

/**
 * فك تشفير توكن CF Worker (AES-256-GCM)
 * صيغة التوكن: iv(24 hex = 12B) + ciphertext(N hex) + authTag(32 hex = 16B)
 *
 * @param {string} token
 * @param {string} keyStr  — CF_PROXY_KEY (يجب أن يكون مضبوطاً)
 * @returns {{ url: string, ref: string }}
 * @throws إذا كان الـ token غير صالح أو انتهت صلاحيته
 */
async function decryptCfToken(token, keyStr) {
  if (!keyStr) throw new Error("CF_PROXY_KEY not configured");

  // إعداد المفتاح: أول 32 بايت من CF_PROXY_KEY مُرتّب على 32 حرف
  const rawKey = new TextEncoder().encode(keyStr.padEnd(32, "0").slice(0, 32));
  const key = await crypto.subtle.importKey("raw", rawKey, { name: "AES-GCM" }, false, ["decrypt"]);

  // تقسيم التوكن: iv(24) + ciphertext(N) + authTag(32)
  const iv       = hexToBytes(token.slice(0, 24));           // 12 bytes
  const authTag  = hexToBytes(token.slice(token.length - 32)); // آخر 16 bytes
  const ctHex    = token.slice(24, token.length - 32);
  const ctBytes  = hexToBytes(ctHex);

  // Web Crypto API: AES-GCM يتوقع ciphertext + authTag كـ buffer واحد
  const combined = new Uint8Array(ctBytes.length + authTag.length);
  combined.set(ctBytes);
  combined.set(authTag, ctBytes.length);

  // فك التشفير — يرمي خطأ إذا كان authTag غير صحيح (بيانات مزوّرة)
  const plain = await crypto.subtle.decrypt({ name: "AES-GCM", iv, tagLength: 128 }, key, combined);
  const parsed = JSON.parse(new TextDecoder().decode(plain));

  // التحقق من انتهاء الصلاحية
  if (parsed.exp && Math.floor(Date.now() / 1000) > parsed.exp) {
    throw new Error("token expired");
  }
  return { url: parsed.url, ref: parsed.ref || "" };
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
    let targetRaw, ref;

    const token = reqUrl.searchParams.get("t");
    if (token) {
      // ── الصيغة الجديدة: توكن AES-256-GCM مُشفَّر ────────────────
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
      // ── الصيغة القديمة: للتوافقية مع clients قديمة فقط ─────────
      targetRaw = reqUrl.searchParams.get("url");
      ref       = reqUrl.searchParams.get("ref") || "";
      const legacyKey  = reqUrl.searchParams.get("key") || "";
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

    // ── السماح فقط بـ http/https ────────────────────────────────────
    if (!["http:", "https:"].includes(target.protocol)) {
      return new Response("protocol not allowed", { status: 400 });
    }

    // ── استخراج Origin من الـ ref ───────────────────────────────────
    let origin = "";
    if (ref) {
      try { origin = new URL(ref).origin; } catch {}
    }
    if (!origin) {
      try { origin = target.origin; } catch {}
    }

    // ── بناء الـ headers ────────────────────────────────────────────
    const headers = {
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
    };
    if (ref)    headers["Referer"] = ref;
    if (origin) headers["Origin"]  = origin;

    // دعم Range للـ video seeking
    const rangeHeader = request.headers.get("Range");
    if (rangeHeader) headers["Range"] = rangeHeader;

    // ── الطلب للـ CDN ───────────────────────────────────────────────
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

    // ── إعادة الاستجابة مع CORS headers ────────────────────────────
    const resHeaders = new Headers(cdnRes.headers);
    resHeaders.set("Access-Control-Allow-Origin", "*");
    resHeaders.set("Access-Control-Allow-Headers", "Range");
    resHeaders.set("Access-Control-Expose-Headers", "Content-Length, Content-Range, Content-Type");

    // أبقِ Cache-Control من الـ CDN أو اضبطه افتراضياً
    if (!resHeaders.has("Cache-Control")) {
      resHeaders.set("Cache-Control", "public, max-age=3600");
    }

    return new Response(cdnRes.body, {
      status: cdnRes.status,
      headers: resHeaders,
    });
  },
};

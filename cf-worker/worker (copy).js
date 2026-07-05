/**
 * Nova Anime — Cloudflare Worker
 * يعمل كـ proxy شفّاف للـ CDN: يُضيف Referer/Origin فقط.
 * يُستخدم حصراً من متصفح الويب (hls.js + video MP4)؛ الموبايل يتصل بالـ CDN مباشرةً.
 *
 * الاستخدام:
 *   https://<worker-subdomain>.workers.dev?url=<encoded-cdn-url>&ref=<encoded-referer>&key=<CF_PROXY_KEY>
 *
 * المتغيّرات (Secrets في Cloudflare Dashboard أو wrangler secret put):
 *   CF_PROXY_KEY  — مفتاح سرّي يُتحقّق منه في كل طلب لمنع إساءة الاستخدام
 */

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
    const targetRaw = reqUrl.searchParams.get("url");
    const ref = reqUrl.searchParams.get("ref") || "";
    const key = reqUrl.searchParams.get("key") || "";

    // ── التحقق من المفتاح السري ────────────────────────────────────
    const expectedKey = env.CF_PROXY_KEY || "";
    if (expectedKey && key !== expectedKey) {
      return new Response("Unauthorized", { status: 401 });
    }

    if (!targetRaw) {
      return new Response("url parameter required", { status: 400 });
    }

    let target;
    try {
      target = new URL(decodeURIComponent(targetRaw));
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
      try {
        origin = new URL(ref).origin;
      } catch {}
    }
    if (!origin) {
      try {
        origin = target.origin;
      } catch {}
    }

    // ── بناء الـ headers ────────────────────────────────────────────
    const headers = {
      "User-Agent":
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
    };
    if (ref) headers["Referer"] = ref;
    if (origin) headers["Origin"] = origin;

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
      return new Response("upstream fetch failed: " + e.message, {
        status: 502,
      });
    }

    // ── إعادة الاستجابة مع CORS headers ────────────────────────────
    const resHeaders = new Headers(cdnRes.headers);
    resHeaders.set("Access-Control-Allow-Origin", "*");
    resHeaders.set("Access-Control-Allow-Headers", "Range");
    resHeaders.set(
      "Access-Control-Expose-Headers",
      "Content-Length, Content-Range, Content-Type",
    );

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

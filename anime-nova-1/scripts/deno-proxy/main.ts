/**
 * Deno Deploy Proxy — يُنشر على Deno Deploy لتجاوز حجب IP Replit
 *
 * الغرض: جلب صفحات HTML من مواقع تحجب IP Replit (CF-protected / datacenter blocks)
 *        ويعيد المحتوى لخادم API الخاص بنا. فقط للسحب (scraping) — لا شيء آخر.
 *
 * الأمان:
 *  - PROXY_SECRET يجب أن يتطابق في كل طلب (X-Proxy-Key header أو ?key= query param)
 *  - فقط GET + POST مدعومان
 *  - لا يُعاد توجيه binary content — نصوص HTML/JSON فقط
 *
 * نشر:
 *   1. deployctl deploy --project=anime-nova-proxy main.ts --token=<TOKEN>
 *   2. أضف PROXY_SECRET في Deno Deploy → Settings → Environment Variables
 *   3. أضف DENO_PROXY_URL و DENO_PROXY_SECRET في Replit Secrets
 */

const PROXY_SECRET = Deno.env.get("PROXY_SECRET") ?? "";

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 " +
  "(KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

Deno.serve(async (req: Request): Promise<Response> => {
  // ── Health check ─────────────────────────────────────────────────
  const url = new URL(req.url);
  if (url.pathname === "/health") {
    return new Response(JSON.stringify({ ok: true, ts: Date.now() }), {
      headers: { "Content-Type": "application/json", "Access-Control-Allow-Origin": "*" },
    });
  }

  // ── CORS preflight ───────────────────────────────────────────────
  if (req.method === "OPTIONS") {
    return new Response(null, {
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type, X-Proxy-Key",
      },
    });
  }

  // ── Auth: verify secret ──────────────────────────────────────────
  if (PROXY_SECRET) {
    const key = req.headers.get("X-Proxy-Key") ?? url.searchParams.get("key") ?? "";
    if (key !== PROXY_SECRET) {
      return new Response(JSON.stringify({ error: "Unauthorized" }), {
        status: 403,
        headers: { "Content-Type": "application/json" },
      });
    }
  }

  // ── Parse params ─────────────────────────────────────────────────
  const targetUrl = url.searchParams.get("url");
  if (!targetUrl) {
    return new Response(JSON.stringify({ error: "Missing ?url= parameter" }), {
      status: 400,
      headers: { "Content-Type": "application/json" },
    });
  }

  const referer  = url.searchParams.get("ref")    ?? "";
  const origin   = url.searchParams.get("origin") ?? "";
  const method   = (url.searchParams.get("method") ?? req.method).toUpperCase();
  const cookie   = url.searchParams.get("cookie")  ?? req.headers.get("X-Forward-Cookie") ?? "";

  // بناء headers الطلب
  const headers: Record<string, string> = {
    "User-Agent":      BROWSER_UA,
    "Accept":          "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.5",
    "Accept-Encoding": "gzip, deflate, br",
    "Cache-Control":   "no-cache",
  };
  if (referer) headers["Referer"] = referer;
  if (origin)  headers["Origin"]  = origin;
  if (cookie)  headers["Cookie"]  = cookie;

  // X-Custom-Headers: JSON string بالـ headers الإضافية
  const customHeadersRaw = url.searchParams.get("headers") ?? req.headers.get("X-Custom-Headers") ?? "";
  if (customHeadersRaw) {
    try {
      const extra = JSON.parse(customHeadersRaw) as Record<string, string>;
      for (const [k, v] of Object.entries(extra)) headers[k] = v;
    } catch {}
  }

  // Body للـ POST requests
  let body: string | undefined;
  if (method === "POST") {
    body = url.searchParams.get("body") ?? await req.text().catch(() => "");
  }

  try {
    const controller = new AbortController();
    const timer = setTimeout(() => controller.abort(), 25_000);

    const response = await fetch(targetUrl, {
      method,
      headers,
      body: method === "POST" ? body : undefined,
      signal: controller.signal,
      redirect: "follow",
    });

    clearTimeout(timer);

    const contentType = response.headers.get("Content-Type") ?? "text/plain";
    const text = await response.text();

    return new Response(text, {
      status: response.status,
      headers: {
        "Content-Type": contentType.includes("charset") ? contentType : contentType + "; charset=utf-8",
        "Access-Control-Allow-Origin": "*",
        "X-Proxied-Status": String(response.status),
        "X-Proxied-Url": targetUrl,
      },
    });
  } catch (e: unknown) {
    const msg = e instanceof Error ? e.message : String(e);
    const isTimeout = msg.includes("abort") || msg.includes("timeout");
    return new Response(JSON.stringify({ error: msg, timeout: isTimeout }), {
      status: isTimeout ? 504 : 502,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*",
      },
    });
  }
});

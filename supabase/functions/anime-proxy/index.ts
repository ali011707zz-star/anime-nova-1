const BROWSER_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

Deno.serve(async (req: Request): Promise<Response> => {
  const SECRET = Deno.env.get("PROXY_SECRET") ?? "";
  const url = new URL(req.url);

  if (url.pathname.endsWith("/health")) {
    return new Response(JSON.stringify({ ok: true, ts: Date.now() }), {
      headers: { "Content-Type": "application/json", "Access-Control-Allow-Origin": "*" },
    });
  }

  if (req.method === "OPTIONS") {
    return new Response(null, {
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type, X-Proxy-Key",
      },
    });
  }

  if (SECRET) {
    const key = req.headers.get("X-Proxy-Key") ?? url.searchParams.get("key") ?? "";
    if (key !== SECRET) {
      return new Response(JSON.stringify({ error: "Unauthorized" }), {
        status: 403, headers: { "Content-Type": "application/json" },
      });
    }
  }

  const targetUrl = url.searchParams.get("url");
  if (!targetUrl) {
    return new Response(JSON.stringify({ error: "Missing ?url= parameter" }), {
      status: 400, headers: { "Content-Type": "application/json" },
    });
  }

  const referer = url.searchParams.get("ref") ?? "";
  const origin  = url.searchParams.get("origin") ?? "";
  const method  = (url.searchParams.get("method") ?? req.method).toUpperCase();
  const cookie  = url.searchParams.get("cookie") ?? req.headers.get("X-Forward-Cookie") ?? "";

  const headers: Record<string, string> = {
    "User-Agent":      BROWSER_UA,
    "Accept":          "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.5",
    "Cache-Control":   "no-cache",
  };
  if (referer) headers["Referer"] = referer;
  if (origin)  headers["Origin"]  = origin;
  if (cookie)  headers["Cookie"]  = cookie;

  const customHeadersRaw = url.searchParams.get("headers") ?? req.headers.get("X-Custom-Headers") ?? "";
  if (customHeadersRaw) {
    try {
      const extra = JSON.parse(customHeadersRaw) as Record<string, string>;
      for (const [k, v] of Object.entries(extra)) headers[k] = v;
    } catch { /* ignore */ }
  }

  let body: string | undefined;
  if (method === "POST") {
    body = url.searchParams.get("body") ?? await req.text().catch(() => "");
  }

  try {
    const controller = new AbortController();
    const timer = setTimeout(() => controller.abort(), 25_000);

    const response = await fetch(targetUrl, {
      method, headers,
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
      },
    });
  } catch (e: unknown) {
    const msg = e instanceof Error ? e.message : String(e);
    const isTimeout = msg.includes("abort") || msg.includes("timeout");
    return new Response(JSON.stringify({ error: msg, timeout: isTimeout }), {
      status: isTimeout ? 504 : 502,
      headers: { "Content-Type": "application/json", "Access-Control-Allow-Origin": "*" },
    });
  }
});

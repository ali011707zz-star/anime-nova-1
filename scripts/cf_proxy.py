"""
CF Proxy — خادم Flask يستخدم curl_cffi لتجاوز Cloudflare
/fetch  : scraping النصوص (HTML) مع Cloudflare bypass
/stream : proxy ثنائي للـ CDN مع Referer/Origin + Range support (للمتصفح/hls.js)
"""

import json
import os
import sys
import urllib.parse
from flask import Flask, request, Response, stream_with_context
from curl_cffi import requests as cf

app = Flask(__name__)

IMPERSONATE   = "chrome136"
CF_PROXY_KEY  = os.environ.get("CF_PROXY_KEY", "")

DEFAULT_HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
    "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
    "Accept-Encoding": "gzip, deflate, br",
    "Cache-Control": "no-cache",
}

def check_key():
    if not CF_PROXY_KEY:
        return True
    return request.args.get("key", "") == CF_PROXY_KEY

@app.route("/health")
def health():
    return {"ok": True, "service": "cf-proxy", "impersonate": IMPERSONATE}

# ── /fetch : scraping HTML (السلوك الأصلي) ─────────────────────────────────────
@app.route("/fetch", methods=["GET", "POST"])
def fetch_url():
    url = request.args.get("url", "").strip()
    if not url:
        return {"error": "url param required"}, 400

    referer = request.args.get("ref", "").strip() or None
    method  = request.args.get("method", "GET").upper()
    timeout = int(request.args.get("timeout", "15"))

    hdrs = dict(DEFAULT_HEADERS)
    if referer:
        hdrs["Referer"] = urllib.parse.quote(referer, safe="/:@?#&=+,;!$'()*~%._-")

    extra_hdrs_raw = request.args.get("headers", "")
    if extra_hdrs_raw:
        try:
            extra = json.loads(extra_hdrs_raw)
            hdrs.update(extra)
        except Exception:
            pass

    try:
        if method == "POST":
            body = request.get_data(as_text=False) or b""
            content_type = request.content_type or "application/x-www-form-urlencoded"
            hdrs["Content-Type"] = content_type
            resp = cf.post(
                url,
                headers=hdrs,
                data=body,
                impersonate=IMPERSONATE,
                timeout=timeout,
                allow_redirects=True,
                verify=False,
            )
        else:
            resp = cf.get(
                url,
                headers=hdrs,
                impersonate=IMPERSONATE,
                timeout=timeout,
                allow_redirects=True,
                verify=False,
            )

        body_text = resp.text
        cf_blocked = (
            resp.status_code in (403, 429, 503)
            or ("just a moment" in body_text.lower() and "cf_chl_" in body_text.lower())
        )
        body_bytes = body_text.encode("utf-8", errors="replace")
        return Response(body_bytes, status=resp.status_code, headers={
            "X-CF-Blocked": "1" if cf_blocked else "0",
            "X-Final-URL":  str(resp.url),
            "Content-Type": "text/html; charset=utf-8",
            "X-Body-Size":  str(len(body_text)),
        })
    except Exception as e:
        return {"error": str(e)}, 502


# ── /stream : CDN proxy ثنائي مع Referer + Range ───────────────────────────────
@app.route("/stream")
def stream_url():
    if not check_key():
        return "Unauthorized", 401

    target = request.args.get("url", "").strip()
    ref    = request.args.get("ref", "").strip()
    if not target:
        return "url param required", 400
    if not target.startswith(("http://", "https://")):
        return "invalid url", 400

    origin = ""
    if ref:
        try:
            from urllib.parse import urlparse
            p = urlparse(ref)
            origin = f"{p.scheme}://{p.netloc}"
        except Exception:
            pass
    if not origin:
        try:
            from urllib.parse import urlparse
            p = urlparse(target)
            origin = f"{p.scheme}://{p.netloc}"
        except Exception:
            pass

    hdrs = {
        "User-Agent": DEFAULT_HEADERS["User-Agent"],
        "Accept": "*/*",
        "Accept-Encoding": "identity",
    }
    if ref:    hdrs["Referer"] = ref
    if origin: hdrs["Origin"]  = origin

    range_hdr = request.headers.get("Range")
    if range_hdr:
        hdrs["Range"] = range_hdr

    try:
        resp = cf.get(
            target,
            headers=hdrs,
            impersonate=IMPERSONATE,
            timeout=30,
            allow_redirects=True,
            stream=True,
            verify=False,
        )
    except Exception as e:
        return f"upstream fetch failed: {e}", 502

    res_headers = {
        "Access-Control-Allow-Origin":   "*",
        "Access-Control-Allow-Headers":  "Range",
        "Access-Control-Expose-Headers": "Content-Length, Content-Range, Content-Type",
    }
    for h in ("Content-Type", "Content-Length", "Content-Range", "Accept-Ranges", "Cache-Control"):
        v = resp.headers.get(h)
        if v:
            res_headers[h] = v
    if "Cache-Control" not in res_headers:
        res_headers["Cache-Control"] = "public, max-age=3600"

    def generate():
        try:
            for chunk in resp.iter_content(chunk_size=65536):
                if chunk:
                    yield chunk
        finally:
            resp.close()

    return Response(
        stream_with_context(generate()),
        status=resp.status_code,
        headers=res_headers,
    )


if __name__ == "__main__":
    port = int(os.environ.get("CF_PROXY_PORT", 8082))
    print(f"[cf-proxy] Starting on port {port} with impersonate={IMPERSONATE}", flush=True)
    app.run(host="0.0.0.0", port=port, debug=False)

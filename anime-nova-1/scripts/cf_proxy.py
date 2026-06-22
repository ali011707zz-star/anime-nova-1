"""
CF Proxy — خادم Flask يستخدم curl_cffi لتجاوز Cloudflare
يعمل على port 8082 ويُستدعى من Node.js API server
"""

import json
import os
import sys
import urllib.parse
from flask import Flask, request, Response
from curl_cffi import requests as cf

app = Flask(__name__)

IMPERSONATE = "chrome136"

DEFAULT_HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
    "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
    "Accept-Encoding": "gzip, deflate, br",
    "Cache-Control": "no-cache",
}

@app.route("/health")
def health():
    return {"ok": True, "service": "cf-proxy", "impersonate": IMPERSONATE}

@app.route("/fetch", methods=["GET", "POST"])
def fetch_url():
    url = request.args.get("url", "").strip()
    if not url:
        return {"error": "url param required"}, 400

    referer = request.args.get("ref", "").strip() or None
    method  = request.args.get("method", "GET").upper()
    timeout = int(request.args.get("timeout", "15"))

    # Build headers — merge defaults with caller overrides
    hdrs = dict(DEFAULT_HEADERS)
    if referer:
        # Encode non-ASCII chars (e.g. Arabic in URL path) for HTTP header compatibility
        hdrs["Referer"] = urllib.parse.quote(referer, safe="/:@?#&=+,;!$'()*~%._-")

    # Optional: caller can pass extra headers as JSON in ?headers=
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
            )
        else:
            resp = cf.get(
                url,
                headers=hdrs,
                impersonate=IMPERSONATE,
                timeout=timeout,
                allow_redirects=True,
            )

        # Detect CF block even on 200
        body_text = resp.text
        cf_blocked = (
            resp.status_code in (403, 429, 503)
            or ("just a moment" in body_text.lower() and "cf_chl_" in body_text.lower())
        )

        body_bytes = body_text.encode("utf-8", errors="replace")
        return Response(
            body_bytes,
            status=resp.status_code,
            headers={
                "X-CF-Blocked":    "1" if cf_blocked else "0",
                "X-Final-URL":     str(resp.url),
                "Content-Type":    "text/html; charset=utf-8",
                "X-Body-Size":     str(len(body_text)),
            },
        )

    except Exception as e:
        return {"error": str(e)}, 502


if __name__ == "__main__":
    port = int(os.environ.get("CF_PROXY_PORT", 8082))
    print(f"[cf-proxy] Starting on port {port} with impersonate={IMPERSONATE}", flush=True)
    app.run(host="0.0.0.0", port=port, debug=False)

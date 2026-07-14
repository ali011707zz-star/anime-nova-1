"""
hopx_proxy_server.py — runs inside Hopx sandbox on port 3000
curl_cffi is pre-installed by the manager before this script is launched.
Uses only built-in http.server (no Flask) to avoid blinker/distutils conflicts.
"""
import json
import sys
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse, parse_qs, unquote

from curl_cffi import requests as cf

session = cf.Session()


class ProxyHandler(BaseHTTPRequestHandler):
    def log_message(self, *args):
        pass  # suppress default access log

    def _send_json(self, code, data):
        body = json.dumps(data, ensure_ascii=False).encode("utf-8")
        self.send_response(code)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _parse_qs(self):
        parsed = urlparse(self.path)
        return {k: v[0] for k, v in parse_qs(parsed.query).items()}

    def do_GET(self):
        parsed = urlparse(self.path)

        if parsed.path == "/health":
            self._send_json(200, {"ok": True, "service": "hopx-proxy"})
            return

        if parsed.path == "/fetch":
            params = self._parse_qs()
            url = unquote(params.get("url", ""))
            imp = params.get("imp", "chrome136")
            ref = params.get("ref", "")
            if not url:
                self._send_json(400, {"error": "no url"})
                return
            try:
                hdrs = {"Referer": ref} if ref else None
                r = session.get(
                    url, impersonate=imp, timeout=25,
                    allow_redirects=True, headers=hdrs,
                )
                self._send_json(200, {
                    "status": r.status_code,
                    "html": r.text[:80000],
                    "cookies": dict(r.cookies),
                    "final_url": str(r.url),
                })
            except Exception as e:
                self._send_json(500, {"error": str(e)})
            return

        self._send_json(404, {"error": "not found"})

    def do_POST(self):
        parsed = urlparse(self.path)

        if parsed.path == "/post":
            params = self._parse_qs()
            url = unquote(params.get("url", ""))
            if not url:
                self._send_json(400, {"error": "no url"})
                return
            try:
                length = int(self.headers.get("Content-Length", 0))
                raw = self.rfile.read(length) if length else b"{}"
                body = json.loads(raw) if raw else {}
                r = session.post(
                    url, impersonate="chrome136", timeout=25,
                    data=body.get("data"), json=body.get("json"),
                )
                self._send_json(200, {
                    "status": r.status_code,
                    "html": r.text[:80000],
                    "cookies": dict(r.cookies),
                })
            except Exception as e:
                self._send_json(500, {"error": str(e)})
            return

        self._send_json(404, {"error": "not found"})


if __name__ == "__main__":
    port = 3000
    print(f"[hopx-proxy] starting on port {port}", flush=True)
    sys.stdout.flush()
    HTTPServer(("0.0.0.0", port), ProxyHandler).serve_forever()

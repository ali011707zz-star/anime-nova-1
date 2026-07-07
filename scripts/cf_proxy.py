"""
CF Proxy — خادم Flask يستخدم curl_cffi + primp لتجاوز Cloudflare
/fetch        : scraping النصوص (HTML) مع Cloudflare bypass (curl_cffi → primp fallback)
/stream       : proxy ثنائي للـ CDN مع Referer/Origin + Range support
/chain-fetch  : جلب صفحتين بنفس الجلسة (session persistence للـ cookies)
/health       : فحص الحالة
"""

import json
import os
import random
import urllib.parse
from flask import Flask, request, Response, stream_with_context
from curl_cffi import requests as cf

try:
    import primp as _primp
    PRIMP_AVAILABLE = True
except ImportError:
    PRIMP_AVAILABLE = False

app = Flask(__name__)

CF_PROXY_KEY = os.environ.get("CF_PROXY_KEY", "")

# ── بصمات curl_cffi ──────────────────────────────────────────────────────────
CURL_IMPERSONATES = [
    "chrome136", "chrome131", "chrome130", "chrome124",
    "edge136", "edge131", "safari18_0", "firefox133",
]

# ── بصمات primp ──────────────────────────────────────────────────────────────
PRIMP_IMPERSONATES = [
    ("chrome_148", "windows"),
    ("chrome_147", "windows"),
    ("chrome_146", "macos"),
    ("chrome_145", "linux"),
    ("edge_148",   "windows"),
    ("edge_147",   "windows"),
    ("firefox_148","windows"),
    ("firefox_146","linux"),
    ("safari_26",  "macos"),
]

DEFAULT_UA = (
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
    "AppleWebKit/537.36 (KHTML, like Gecko) "
    "Chrome/136.0.0.0 Safari/537.36"
)

DEFAULT_HEADERS = {
    "User-Agent":      DEFAULT_UA,
    "Accept":          "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
    "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
    "Accept-Encoding": "gzip, deflate, br",
    "Cache-Control":   "no-cache",
}

def check_key():
    if not CF_PROXY_KEY:
        return True
    return request.args.get("key", "") == CF_PROXY_KEY

def is_cf_blocked(status: int, body: str) -> bool:
    """اكتشاف حجب Cloudflare من الـ status والـ body"""
    if status in (403, 429, 503):
        return True
    low = body.lower()
    if "just a moment" in low and ("cf_chl_" in low or "cloudflare" in low):
        return True
    if "access denied" in low and "cloudflare" in low:
        return True
    if "error 1020" in low or "error 1015" in low:
        return True
    return False

def fetch_curl(url: str, hdrs: dict, method: str = "GET",
               body: bytes = b"", timeout: int = 15,
               impersonate: str = None) -> tuple:
    """محاولة جلب عبر curl_cffi — ترجع (status, text, imp_used) أو ترفع exception"""
    imp = impersonate or random.choice(CURL_IMPERSONATES)
    kwargs = dict(
        headers=hdrs,
        impersonate=imp,
        timeout=timeout,
        allow_redirects=True,
        verify=False,
    )
    if method == "POST":
        resp = cf.post(url, data=body, **kwargs)
    else:
        resp = cf.get(url, **kwargs)
    return resp.status_code, resp.text, imp

def fetch_primp(url: str, hdrs: dict, method: str = "GET",
                body: bytes = b"", timeout: int = 15,
                imp_pair: tuple = None) -> tuple:
    """محاولة جلب عبر primp — ترجع (status, text, imp_used) أو ترفع exception"""
    if not PRIMP_AVAILABLE:
        raise RuntimeError("primp not installed")
    browser, os_name = imp_pair or random.choice(PRIMP_IMPERSONATES)
    client = _primp.Client(
        impersonate=browser,
        impersonate_os=os_name,
        verify=False,
        timeout=timeout,
    )
    if method == "POST":
        resp = client.post(url, headers=hdrs, data=body)
    else:
        resp = client.get(url, headers=hdrs)
    return resp.status_code, resp.text, f"{browser}/{os_name}"


@app.route("/health")
def health():
    return {
        "ok":    True,
        "service": "cf-proxy",
        "curl_cffi": True,
        "primp": PRIMP_AVAILABLE,
        "curl_imps":  len(CURL_IMPERSONATES),
        "primp_imps": len(PRIMP_IMPERSONATES),
    }


@app.route("/fetch", methods=["GET", "POST"])
def fetch_url():
    url = request.args.get("url", "").strip()
    if not url:
        return {"error": "url param required"}, 400

    referer = request.args.get("ref", "").strip() or None
    method  = request.args.get("method", "GET").upper()
    timeout = int(request.args.get("timeout", "15"))
    force_engine = request.args.get("engine", "").lower()  # "curl" أو "primp"

    hdrs = dict(DEFAULT_HEADERS)
    if referer:
        hdrs["Referer"] = urllib.parse.quote(referer, safe="/:@?#&=+,;!$'()*~%._-")

    extra_raw = request.args.get("headers", "")
    if extra_raw:
        try:
            hdrs.update(json.loads(extra_raw))
        except Exception:
            pass

    post_body = b""
    if method == "POST":
        post_body = request.get_data(as_text=False) or b""
        hdrs.setdefault("Content-Type", request.content_type or "application/x-www-form-urlencoded")

    status, body_text, engine_used = 0, "", "none"
    error_msg = ""

    # ── المحاولة 1: curl_cffi (إلا لو force_engine=primp) ────────────────────
    if force_engine != "primp":
        try:
            status, body_text, imp = fetch_curl(url, hdrs, method, post_body, timeout)
            engine_used = f"curl/{imp}"
        except Exception as e:
            error_msg = str(e)

    # ── المحاولة 2: primp fallback لو curl_cffi فشل أو محجوب ─────────────────
    if PRIMP_AVAILABLE and (force_engine == "primp" or not body_text or is_cf_blocked(status, body_text)):
        try:
            s2, t2, imp2 = fetch_primp(url, hdrs, method, post_body, timeout)
            # استخدم primp فقط لو نتيجته أفضل
            if not is_cf_blocked(s2, t2) or is_cf_blocked(status, body_text):
                status, body_text, engine_used = s2, t2, f"primp/{imp2}"
                error_msg = ""
        except Exception as e2:
            if not body_text:
                error_msg = f"curl:{error_msg} | primp:{e2}"

    if not body_text and error_msg:
        return {"error": error_msg}, 502

    cf_blocked = is_cf_blocked(status, body_text)

    return Response(
        body_text.encode("utf-8", errors="replace"),
        status=status,
        headers={
            "X-CF-Blocked":  "1" if cf_blocked else "0",
            "X-Final-URL":   url,
            "X-Engine-Used": engine_used,
            "X-Body-Size":   str(len(body_text)),
            "Content-Type":  "text/html; charset=utf-8",
        },
    )


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
            p = urllib.parse.urlparse(ref)
            origin = f"{p.scheme}://{p.netloc}"
        except Exception:
            pass
    if not origin:
        try:
            p = urllib.parse.urlparse(target)
            origin = f"{p.scheme}://{p.netloc}"
        except Exception:
            pass

    hdrs = {
        "User-Agent":      DEFAULT_UA,
        "Accept":          "*/*",
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
            impersonate=random.choice(CURL_IMPERSONATES),
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


@app.route("/chain-fetch", methods=["GET"])
def chain_fetch():
    url1 = request.args.get("url1", "").strip()
    url2 = request.args.get("url2", "").strip()
    ref1 = request.args.get("ref1", "").strip() or None
    timeout = int(request.args.get("timeout", "18"))

    if not url1 or not url2:
        return {"error": "url1 and url2 params required"}, 400

    hdrs1 = dict(DEFAULT_HEADERS)
    if ref1:
        hdrs1["Referer"] = urllib.parse.quote(ref1, safe="/:@?#&=+,;!()*~%._-")

    imp = random.choice(CURL_IMPERSONATES)

    try:
        sess = cf.Session(impersonate=imp)
        r1 = sess.get(url1, headers=hdrs1, timeout=timeout, allow_redirects=True, verify=False)
        hdrs2 = dict(DEFAULT_HEADERS)
        hdrs2["Referer"] = url1
        r2 = sess.get(url2, headers=hdrs2, timeout=timeout, allow_redirects=True, verify=False)

        # لو r2 محجوب وprimp متوفر — جرّب primp بنفس الجلسة
        if PRIMP_AVAILABLE and is_cf_blocked(r2.status_code, r2.text):
            browser, os_name = random.choice(PRIMP_IMPERSONATES)
            pc = _primp.Client(impersonate=browser, impersonate_os=os_name, verify=False, timeout=timeout)
            pr1 = pc.get(url1, headers=hdrs1)
            pr2 = pc.get(url2, headers={**DEFAULT_HEADERS, "Referer": url1})
            if not is_cf_blocked(pr2.status_code, pr2.text):
                r2 = pr2

        body2 = r2.text.encode("utf-8", errors="replace")
        return Response(body2, status=r2.status_code, headers={
            "Content-Type":    "text/html; charset=utf-8",
            "X-Chain-Size1":   str(len(r1.text)),
            "X-Chain-Size2":   str(len(r2.text)),
            "X-Chain-Status1": str(r1.status_code),
            "X-Engine-Used":   imp,
        })
    except Exception as e:
        return {"error": str(e)}, 502


if __name__ == "__main__":
    port = int(os.environ.get("CF_PROXY_PORT", 8082))
    print(f"[cf-proxy] Starting on port {port}", flush=True)
    print(f"[cf-proxy] curl_cffi: {len(CURL_IMPERSONATES)} fingerprints", flush=True)
    print(f"[cf-proxy] primp:     {'✅ ' + str(len(PRIMP_IMPERSONATES)) + ' fingerprints' if PRIMP_AVAILABLE else '❌ not installed'}", flush=True)
    app.run(host="0.0.0.0", port=port, debug=False)

"""
cf_bridge_addon.py — mitmproxy addon (v13+)
يوجّه كل الطلبات المُعترَضة عبر CF Worker (nova-cdn-proxy)
بنفس تشفير AES-256-GCM المُستخدَم في fetchSegViaCfWorker (anime.ts)

تشغيل:
  mitmdump -s /opt/anime-nova/scripts/cf_bridge_addon.py --listen-host 127.0.0.1 --listen-port 8890 --ssl-insecure

التغييرات v13:
  - عند فشل CF Worker (401/4xx/5xx) → passthrough مباشر بدلاً من إرجاع الخطأ
  - هذا يجعل mediaflow-proxy يعمل كـ plain proxy عند عدم توفر CF Worker
"""
import os, json, time, secrets, logging
from cryptography.hazmat.primitives.ciphers.aead import AESGCM
import httpx
from mitmproxy import http

log = logging.getLogger("cf_bridge")

CF_WORKER_URL = os.environ.get("CF_WORKER_URL", "")
_raw_key      = os.environ.get("CF_PROXY_KEY", "").encode("utf-8")
CF_KEY        = (_raw_key + b"0" * 32)[:32]

# httpx client بدون proxy (يتجنّب infinite loop مع نفسه)
_client = httpx.Client(timeout=12.0, follow_redirects=True, verify=True)

# إحصاءات للمراقبة
_stats = {"cf_ok": 0, "cf_fail": 0, "passthrough": 0}


def _encrypt_token(url: str, ref: str) -> str:
    iv      = secrets.token_bytes(12)
    payload = json.dumps({"url": url, "ref": ref or url, "exp": int(time.time()) + 3600}).encode()
    aesgcm  = AESGCM(CF_KEY)
    # encrypt يُرجع ciphertext || GCM-tag (16 bytes) — نفس ترتيب TypeScript
    encrypted = aesgcm.encrypt(iv, payload, None)
    return iv.hex() + encrypted.hex()


def request(flow: http.HTTPFlow) -> None:
    """Hook يُنفَّذ لكل طلب — يحاول CF Worker أولاً، يمرر مباشرة عند الفشل"""
    if not CF_WORKER_URL:
        _stats["passthrough"] += 1
        return  # passthrough إذا لم يُضبَّط CF_WORKER_URL

    url = flow.request.pretty_url
    ref = flow.request.headers.get("Referer", url)

    try:
        token    = _encrypt_token(url, ref)
        cf_resp  = _client.get(f"{CF_WORKER_URL}?t={token}")

        # ── فقط عند نجاح CF Worker نُعيد توجيه الـ response ──────────────────
        if cf_resp.status_code == 200:
            _stats["cf_ok"] += 1
            skip = {"transfer-encoding", "content-encoding", "connection", "keep-alive", "trailer"}
            headers = {k: v for k, v in cf_resp.headers.items() if k.lower() not in skip}
            if "content-type" not in {k.lower() for k in headers}:
                headers["content-type"] = "application/octet-stream"

            flow.response = http.Response.make(
                200,
                cf_resp.content,
                headers,
            )
        else:
            # 401 (key mismatch) أو أي خطأ آخر → passthrough مباشر
            _stats["cf_fail"] += 1
            log.debug(f"CF Worker {cf_resp.status_code} for {url[:60]} — passthrough")
            # لا نضبط flow.response → mitmproxy يُرسل الطلب مباشرة للـ CDN

    except Exception as e:
        # timeout أو خطأ شبكي → passthrough
        _stats["passthrough"] += 1
        log.warning(f"CF bridge exception [{url[:60]}]: {e} — passthrough")
        # لا نضبط flow.response → mitmproxy يُرسل الطلب مباشرة


def done() -> None:
    log.info(f"CF bridge stats: ok={_stats['cf_ok']} fail={_stats['cf_fail']} passthrough={_stats['passthrough']}")

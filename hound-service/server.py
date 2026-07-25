"""
Hound CF-Bypass Service
=======================
FastAPI wrapper حول master-fetch's StealthyBrowser.
يحل Cloudflare Turnstile ويُرجع HTML للصفحات المحمية.

Port: 8766  (localhost فقط — بدون مصادقة خارجية)
POST /fetch  { url, wait?, referer? }  →  { ok, html, status, method }
GET  /health
"""

from __future__ import annotations

import asyncio
import logging
import os
import time
from contextlib import asynccontextmanager
from typing import Optional

import uvicorn
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s %(levelname)s %(name)s: %(message)s",
)
log = logging.getLogger("hound-service")

PORT = int(os.getenv("HOUND_SERVICE_PORT", "8766"))

# ── Browser singleton ────────────────────────────────────────────────────────
# نُبقي session واحدة دافئة ← لا cold-start لكل request
_session = None
_session_lock = asyncio.Lock()
_session_idle_since: float = 0.0
_active_requests: int = 0          # عدد الطلبات النشطة — watchdog لا يُغلق أثناءها
SESSION_IDLE_TIMEOUT = int(os.getenv("HOUND_IDLE_TIMEOUT", "300"))  # 5 دقائق


async def get_session():
    """يُرجع session دافئة أو يُنشئ جديدة."""
    global _session, _session_idle_since
    from master_fetch.browser import StealthyBrowser  # lazy import (patchright ~5s)

    if _session is None or not _session._is_alive:
        log.info("🚀 launching StealthyBrowser (patchright)…")
        _session = StealthyBrowser(
            headless=True,
            solve_cloudflare=True,   # ← يحل Turnstile تلقائياً
            network_idle=False,
            timeout=35_000,
            retries=2,
            humanize=True,
        )
        await _session.start()
        log.info("✅ StealthyBrowser ready")

    _session_idle_since = time.monotonic()
    return _session


async def idle_watchdog():
    """يُغلق البراوزر بعد SESSION_IDLE_TIMEOUT ثانية بدون استخدام — لا يُغلق أثناء request نشط."""
    global _session
    while True:
        await asyncio.sleep(60)
        if (
            SESSION_IDLE_TIMEOUT > 0
            and _session is not None
            and getattr(_session, "_is_alive", False)
            and _session_idle_since > 0
            and _active_requests == 0                        # ← لا تُغلق أثناء request
            and (time.monotonic() - _session_idle_since) > SESSION_IDLE_TIMEOUT
        ):
            log.info("💤 browser idle — closing to free RAM")
            try:
                await _session.close()
            except Exception:
                pass
            _session = None


@asynccontextmanager
async def lifespan(app: FastAPI):
    asyncio.create_task(idle_watchdog())
    yield
    # shutdown
    global _session
    if _session is not None:
        try:
            await _session.close()
        except Exception:
            pass


app = FastAPI(title="Hound CF-Bypass", lifespan=lifespan)


# ── Models ───────────────────────────────────────────────────────────────────

class FetchRequest(BaseModel):
    url: str
    wait: int = 8000          # ms to wait after page load
    referer: Optional[str] = None
    solve_cf: bool = True


class FetchResponse(BaseModel):
    ok: bool
    html: Optional[str] = None
    status: int = 0
    method: str = ""
    error: Optional[str] = None
    elapsed_ms: int = 0
    cookie_str: Optional[str] = None   # cf_clearance + __cf_bm بعد حل Turnstile


# ── Endpoints ────────────────────────────────────────────────────────────────

@app.get("/health")
async def health():
    browser_alive = _session is not None and getattr(_session, "_is_alive", False)
    return {"ok": True, "browser_alive": browser_alive}


@app.post("/fetch", response_model=FetchResponse)
async def fetch_url(req: FetchRequest):
    t0 = time.monotonic()

    # ── 1. محاولة HTTP سريعة أولاً عبر primp (TLS fingerprinting) ─────────
    try:
        import primp  # type: ignore
        client = primp.AsyncClient(
            impersonate="chrome_126",
            timeout=12,
            verify=False,
        )
        headers: dict = {
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "Accept-Language": "ar,en;q=0.9",
        }
        if req.referer:
            headers["Referer"] = req.referer

        r = await client.get(req.url, headers=headers)
        html = r.text or ""
        # تحقق: ليس CF challenge page
        if r.status_code == 200 and len(html) > 2000 and "challenge" not in html[:800].lower() and "Just a moment" not in html[:800]:
            elapsed = int((time.monotonic() - t0) * 1000)
            log.info(f"✅ primp ({r.status_code}) {req.url[-60:]} [{elapsed}ms]")
            return FetchResponse(ok=True, html=html, status=r.status_code, method="primp", elapsed_ms=elapsed)
        else:
            log.info(f"primp got {r.status_code} or CF block — escalating to browser")
    except Exception as e:
        log.info(f"primp failed: {e} — escalating to browser")

    # ── 2. StealthyBrowser (patchright + Turnstile solver) ─────────────────
    async with _session_lock:
        try:
            session = await get_session()
            extra: dict = {}
            if req.referer:
                extra["Referer"] = req.referer

            resp = await session.fetch(
                req.url,
                wait=req.wait,
                solve_cloudflare=req.solve_cf,
                extra_headers=extra if extra else None,
            )
            html = resp.content if hasattr(resp, "content") else (resp.html_content if hasattr(resp, "html_content") else "")
            status = resp.status if hasattr(resp, "status") else 200

            # ── استخراج cf_clearance من browser context ──────────────────
            cookie_str: str | None = None
            try:
                page = getattr(session, "_page", None) or getattr(session, "page", None)
                if page is not None:
                    all_cookies = await page.context.cookies()
                    cf_parts = []
                    for c in all_cookies:
                        if c.get("name") in ("cf_clearance", "__cf_bm", "__cflb"):
                            cf_parts.append(f"{c['name']}={c['value']}")
                    if cf_parts:
                        cookie_str = "; ".join(cf_parts)
                        log.info(f"🍪 cf cookies extracted: {[c.split('=')[0] for c in cf_parts]}")
            except Exception as ce:
                log.warning(f"cookie extraction failed (non-critical): {ce}")

            elapsed = int((time.monotonic() - t0) * 1000)
            log.info(f"✅ patchright ({status}) {req.url[-60:]} [{elapsed}ms]")
            return FetchResponse(ok=True, html=html, status=status, method="patchright",
                                 elapsed_ms=elapsed, cookie_str=cookie_str)

        except Exception as e:
            log.error(f"StealthyBrowser error: {e}")
            # أعد تهيئة الـ session في الـ request القادم
            global _session
            if _session is not None:
                try:
                    await _session.close()
                except Exception:
                    pass
                _session = None
            elapsed = int((time.monotonic() - t0) * 1000)
            raise HTTPException(500, detail={"ok": False, "error": str(e), "elapsed_ms": elapsed})


if __name__ == "__main__":
    log.info(f"Starting Hound CF-Bypass service on port {PORT}")
    uvicorn.run(app, host="0.0.0.0", port=PORT, log_level="info")

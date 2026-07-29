"""hopx_manager.py -- pm2 process on VPS
Manages a Hopx sandbox running hopx_proxy_server.py,
and exposes a local HTTP proxy on HOPX_LOCAL_PORT (default 8001).

تحسينات لمنع تراكم الحاويات:
- SANDBOX_TIMEOUT = 6h : sandbox يموت تلقائياً إذا مات المنيجر بدون cleanup
- عند الإعادة: ينتظر 30s للـ sandbox الموجود قبل قتله (قد يكون لا يزال يبوت)
- قبل إنشاء sandbox جديد: يقتل كل الموجودين أولاً (clean slate)
"""
import os, sys, time, threading, base64, logging
import requests as req
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse
from hopx_ai import Sandbox

logging.basicConfig(
    level=logging.INFO,
    format='[hopx-manager] %(asctime)s %(levelname)s %(message)s',
    datefmt='%H:%M:%S',
)
log = logging.getLogger('hopx-manager')

API_KEY         = os.environ.get('HOPX_API_KEY', '')
PROXY_PORT      = int(os.environ.get('HOPX_LOCAL_PORT', '8001'))
SANDBOX_TIMEOUT = 6 * 3600  # 6 ساعات — يموت تلقائياً إذا مات المنيجر
CHECK_INTERVAL  = 60         # health-check every 60s
ADOPT_WAIT_SECS = 45         # انتظر sandbox بوتينج قبل ما تقتله

# Read proxy server code from sibling file at startup
_SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
_PROXY_FILE = os.path.join(_SCRIPT_DIR, 'hopx_proxy_server.py')
with open(_PROXY_FILE, 'rb') as _f:
    PROXY_B64 = base64.b64encode(_f.read()).decode()

_state = {'sandbox': None, 'proxy_url': None, 'lock': threading.Lock()}


def _kill_all_sandboxes(except_id: str = None):
    """اقتل كل الحاويات الموجودة — اختيارياً إلا واحدة محددة."""
    try:
        boxes = Sandbox.list(api_key=API_KEY, limit=100)
        for b in boxes:
            if b.sandbox_id == except_id:
                continue
            try:
                b.kill()
                log.info(f'Killed sandbox: {b.sandbox_id}')
            except Exception as e:
                log.warning(f'Could not kill {b.sandbox_id}: {e}')
    except Exception as e:
        log.warning(f'_kill_all_sandboxes error: {e}')


def _wait_for_sandbox_health(pub_url: str, timeout: int = ADOPT_WAIT_SECS) -> bool:
    """
    انتظر حتى يصبح الـ sandbox صحياً (200 OK).
    يُعيد True إذا أصبح صحياً، False إذا انتهت المهلة.
    """
    deadline = time.time() + timeout
    attempt = 0
    while time.time() < deadline:
        attempt += 1
        try:
            r = req.get(pub_url + '/health', timeout=8)
            if r.status_code == 200 and r.json().get('ok'):
                log.info(f'Sandbox healthy after {attempt} attempt(s)')
                return True
            log.info(f'Health check attempt {attempt}: HTTP {r.status_code} — waiting...')
        except Exception as e:
            log.info(f'Health check attempt {attempt}: {e} — waiting...')
        time.sleep(5)
    return False


def _try_adopt_existing_sandbox() -> bool:
    """
    عند إعادة تشغيل المنيجر — يحاول التشبث بأول sandbox موجود.
    إذا كان لا يزال يبوت (502) ينتظر 45s قبل الاستسلام وقتله.
    يقتل أي sandboxes إضافية زيادة عن الواحد المعتمد.
    """
    try:
        boxes = Sandbox.list(api_key=API_KEY, limit=100)
        log.info(f'Found {len(boxes)} sandbox(es) on startup')
        if not boxes:
            return False

        # اعتمد أول sandbox وانتظره — اقتل الباقين
        primary = boxes[0]
        extras  = boxes[1:]

        # اقتل الحاويات الزائدة فوراً
        for b in extras:
            try:
                b.kill()
                log.info(f'Killed extra sandbox: {b.sandbox_id}')
            except Exception:
                pass

        # انتظر الـ sandbox الأساسي حتى يصبح جاهزاً
        try:
            pub_url = primary.get_preview_url(3000)
        except Exception as e:
            log.warning(f'Cannot get preview URL for {primary.sandbox_id}: {e}, killing it')
            try: primary.kill()
            except Exception: pass
            return False

        log.info(f'Waiting for sandbox {primary.sandbox_id} at {pub_url} ...')
        healthy = _wait_for_sandbox_health(pub_url, timeout=ADOPT_WAIT_SECS)

        if healthy:
            log.info(f'Adopting sandbox: {primary.sandbox_id}')
            with _state['lock']:
                _state['sandbox'] = primary
                _state['proxy_url'] = pub_url
            return True
        else:
            log.warning(f'Sandbox {primary.sandbox_id} did not become healthy in {ADOPT_WAIT_SECS}s, killing it')
            try: primary.kill()
            except Exception: pass
            return False

    except Exception as e:
        log.warning(f'Adopt-existing check failed: {e}')
        return False


def create_sandbox():
    # قبل الإنشاء: اقتل كل الموجودين للتأكد من clean slate
    log.info('Killing any lingering sandboxes before creating new one...')
    _kill_all_sandboxes()

    log.info('Creating Hopx sandbox...')
    sb = Sandbox.create(
        api_key=API_KEY,
        template_id='118',
        timeout_seconds=SANDBOX_TIMEOUT,
        internet_access=True,
    )
    log.info(f'Sandbox ID: {sb.sandbox_id}')

    # Write proxy script into sandbox via base64
    write_cmd = (
        "python3 -c \""
        "import base64,os; "
        "os.makedirs('/tmp/hopx',exist_ok=True); "
        f"open('/tmp/hopx/proxy_server.py','wb').write(base64.b64decode('{PROXY_B64}'))"
        "\""
    )
    sb.commands.run(write_cmd, timeout=15)

    # Verify write
    r0 = sb.commands.run('wc -l /tmp/hopx/proxy_server.py', timeout=5)
    log.info(f'Proxy file lines: {r0.stdout.strip()}')

    # Install curl_cffi (pre-install before server starts to avoid startup delay)
    log.info('Installing curl_cffi in sandbox...')
    r_pip = sb.commands.run(
        'pip install curl_cffi -q --break-system-packages 2>&1 | tail -3',
        timeout=120,
    )
    log.info(f'pip output: {r_pip.stdout.strip()[-200:]}')

    # Verify curl_cffi import works
    r_check = sb.commands.run(
        'python3 -c "from curl_cffi import requests; print(\'curl_cffi OK\')"',
        timeout=15,
    )
    log.info(f'curl_cffi check: {r_check.stdout.strip()}')
    if 'OK' not in r_check.stdout:
        log.error(f'curl_cffi import failed: {r_check.stderr.strip()[:300]}')
        try: sb.kill()
        except Exception: pass
        raise RuntimeError('curl_cffi failed to install/import')

    # Install patchright (stealth Chromium — يحل CF Turnstile بدون كشف)
    log.info('Installing patchright in sandbox...')
    r_pw = sb.commands.run(
        'pip install patchright -q --break-system-packages 2>&1 | tail -3',
        timeout=120,
    )
    log.info(f'patchright pip: {r_pw.stdout.strip()[-200:]}')
    # Install Chromium عبر patchright (يثبت نسخة مُعدَّلة stealth)
    r_cr = sb.commands.run(
        'patchright install --with-deps chromium 2>&1 | tail -8',
        timeout=300,
    )
    log.info(f'patchright chromium install: {r_cr.stdout.strip()[-400:]}')
    # Quick patchright smoke test
    r_pw_check = sb.commands.run(
        'python3 -c "from patchright.sync_api import sync_playwright; print(\'patchright OK\')"',
        timeout=15,
    )
    log.info(f'patchright check: {r_pw_check.stdout.strip()}')

    # Start the server in background
    sb.commands.run(
        'nohup python3 /tmp/hopx/proxy_server.py > /tmp/hopx/proxy.log 2>&1 &',
        timeout=5,
    )

    # Wait for server to be ready (up to 30s)
    pub_url = sb.get_preview_url(3000)
    log.info(f'Waiting for proxy server at {pub_url} ...')
    healthy = _wait_for_sandbox_health(pub_url, timeout=30)
    if not healthy:
        r_log = sb.commands.run('cat /tmp/hopx/proxy.log 2>/dev/null || cat /workspace/proxy.log 2>/dev/null', timeout=5)
        log.error(f'Proxy log: {r_log.stdout[:500]}')
        try: sb.kill()
        except Exception: pass
        raise RuntimeError('Sandbox proxy server did not start after 30s')

    log.info(f'Public proxy URL: {pub_url}')
    return sb, pub_url


def ensure_sandbox():
    with _state['lock']:
        sb = _state.get('sandbox')
        proxy_url = _state.get('proxy_url')

        # Check if existing sandbox is still alive
        if sb and proxy_url:
            try:
                r = req.get(proxy_url + '/health', timeout=10)
                if r.status_code == 200 and r.json().get('ok'):
                    return  # Still healthy
            except Exception as e:
                log.warning(f'Sandbox health check failed: {e}')

        # (Re)create sandbox
        log.info('(Re)creating sandbox...')
        try:
            sb_new, url_new = create_sandbox()
            _state['sandbox'] = sb_new
            _state['proxy_url'] = url_new
            log.info(f'Sandbox ready at {url_new}')
        except Exception as e:
            log.error(f'Failed to create sandbox: {e}')
            _state['sandbox'] = None
            _state['proxy_url'] = None
            raise


class ProxyHandler(BaseHTTPRequestHandler):
    def log_message(self, *a): pass

    def _forward(self):
        proxy_url = _state.get('proxy_url')
        if not proxy_url:
            self.send_error(503, 'Hopx sandbox not ready')
            return
        parsed = urlparse(self.path)
        target = proxy_url.rstrip('/') + parsed.path
        if parsed.query:
            target += '?' + parsed.query

        is_stream = parsed.path == '/stream'

        try:
            length = int(self.headers.get('Content-Length', 0))
            body = self.rfile.read(length) if length else None
            fwd_headers = {}
            ct = self.headers.get('Content-Type', '')
            if ct:
                fwd_headers['Content-Type'] = ct
            if is_stream:
                # إعادة توجيه Range header للـ sandbox لدعم video seeking
                rng = self.headers.get('Range')
                if rng:
                    fwd_headers['Range'] = rng

            r = req.request(
                self.command, target,
                data=body, timeout=60,
                headers=fwd_headers,
                stream=is_stream,
            )
            self.send_response(r.status_code)
            if is_stream:
                # إعادة توجيه headers الضرورية للـ streaming
                for h in ('Content-Type', 'Content-Length', 'Content-Range',
                          'Accept-Ranges', 'Cache-Control'):
                    v = r.headers.get(h)
                    if v:
                        self.send_header(h, v)
                self.send_header('Access-Control-Allow-Origin', '*')
                self.send_header('Access-Control-Allow-Headers', 'Range')
                self.send_header('Access-Control-Expose-Headers',
                                 'Content-Length, Content-Range, Content-Type')
            else:
                self.send_header('Content-Type', 'application/json')
            self.end_headers()

            if is_stream:
                for chunk in r.iter_content(chunk_size=65536):
                    if chunk:
                        self.wfile.write(chunk)
            else:
                self.wfile.write(r.content)
        except Exception as e:
            log.error(f'Forward error: {e}')
            try:
                self.send_error(502, str(e))
            except Exception:
                pass

    def do_GET(self):  self._forward()
    def do_POST(self): self._forward()


def monitor_loop():
    while True:
        time.sleep(CHECK_INTERVAL)
        try:
            ensure_sandbox()
        except Exception as e:
            log.error(f'Monitor error: {e}')


def main():
    if not API_KEY:
        log.error('HOPX_API_KEY not set! Exiting.')
        sys.exit(1)

    log.info('Starting hopx-manager...')
    # محاولة التشبث بـ sandbox موجود وصحي — بدل الحذف والإنشاء من الصفر
    adopted = _try_adopt_existing_sandbox()
    if not adopted:
        log.info('No healthy sandbox found, creating new one...')
        ensure_sandbox()

    threading.Thread(target=monitor_loop, daemon=True).start()

    log.info(f'Local proxy listening on 127.0.0.1:{PROXY_PORT}')
    HTTPServer(('127.0.0.1', PROXY_PORT), ProxyHandler).serve_forever()


if __name__ == '__main__':
    main()

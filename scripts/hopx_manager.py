"""hopx_manager.py -- pm2 process on VPS
Manages a Hopx sandbox running hopx_proxy_server.py,
and exposes a local HTTP proxy on HOPX_LOCAL_PORT (default 8001).
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
SANDBOX_TIMEOUT = None   # بلا حد زمني — sandbox يظل حياً حتى نقتله نحن
CHECK_INTERVAL  = 60     # health-check every 60s

# Read proxy server code from sibling file at startup
_SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
_PROXY_FILE = os.path.join(_SCRIPT_DIR, 'hopx_proxy_server.py')
with open(_PROXY_FILE, 'rb') as _f:
    PROXY_B64 = base64.b64encode(_f.read()).decode()

_state = {'sandbox': None, 'proxy_url': None, 'lock': threading.Lock()}


def cleanup_old_sandboxes(current_id: str | None = None):
    """حذف كل الـ sandboxes عدا الحالي عند التشغيل"""
    try:
        boxes = Sandbox.list(api_key=API_KEY, status='running', limit=100)
        log.info(f'Found {len(boxes)} running sandboxes, cleaning up old ones...')
        for b in boxes:
            if b.sandbox_id != current_id:
                try:
                    b.kill()
                    log.info(f'Killed old sandbox: {b.sandbox_id}')
                except Exception as e:
                    log.warning(f'Could not kill {b.sandbox_id}: {e}')
    except Exception as e:
        log.warning(f'Cleanup check failed: {e}')


def create_sandbox():
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
        "import base64; "
        f"open('/workspace/proxy_server.py','wb').write(base64.b64decode('{PROXY_B64}'))"
        "\""
    )
    sb.commands.run(write_cmd, timeout=15)

    # Verify write
    r0 = sb.commands.run('wc -l /workspace/proxy_server.py', timeout=5)
    log.info(f'Proxy file lines: {r0.stdout.strip()}')

    # Install curl_cffi (pre-install before server starts to avoid startup delay)
    log.info('Installing curl_cffi in sandbox...')
    r_pip = sb.commands.run(
        'pip install curl_cffi -q --break-system-packages 2>&1 | tail -5',
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
        raise RuntimeError('curl_cffi failed to install/import')

    # Install playwright (for browser-extract endpoint)
    log.info('Installing playwright in sandbox...')
    r_pw = sb.commands.run(
        'pip install playwright -q --break-system-packages 2>&1 | tail -5',
        timeout=120,
    )
    log.info(f'playwright pip: {r_pw.stdout.strip()[-200:]}')
    # Install Chromium + system dependencies (libnspr4 etc.)
    r_cr = sb.commands.run(
        'playwright install --with-deps chromium 2>&1 | tail -8',
        timeout=300,
    )
    log.info(f'chromium install: {r_cr.stdout.strip()[-400:]}')
    # Quick playwright smoke test
    r_pw_check = sb.commands.run(
        'python3 -c "from playwright.sync_api import sync_playwright; print(\'playwright OK\')"',
        timeout=15,
    )
    log.info(f'playwright check: {r_pw_check.stdout.strip()}')

    # Start the server in background
    sb.commands.run(
        'nohup python3 /workspace/proxy_server.py > /workspace/proxy.log 2>&1 &',
        timeout=5,
    )

    # Wait for server to be ready (up to 20s)
    for attempt in range(4):
        time.sleep(5)
        r_int = sb.commands.run('curl -s --max-time 3 http://localhost:3000/health 2>&1', timeout=10)
        health_out = r_int.stdout.strip()
        log.info(f'Health check attempt {attempt+1}: {health_out[:100]}')
        if '"ok"' in health_out:
            break
    else:
        r_log = sb.commands.run('cat /workspace/proxy.log', timeout=5)
        log.error(f'Proxy log: {r_log.stdout[:500]}')
        raise RuntimeError('Sandbox proxy server did not start after 20s')

    # Get public URL
    proxy_url = sb.get_preview_url(3000)
    log.info(f'Public proxy URL: {proxy_url}')
    return sb, proxy_url


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
        try:
            length = int(self.headers.get('Content-Length', 0))
            body = self.rfile.read(length) if length else None
            ct = self.headers.get('Content-Type', '')
            r = req.request(
                self.command, target,
                data=body, timeout=40,
                headers={'Content-Type': ct} if ct else {},
            )
            self.send_response(r.status_code)
            self.send_header('Content-Type', 'application/json')
            self.end_headers()
            self.wfile.write(r.content)
        except Exception as e:
            log.error(f'Forward error: {e}')
            self.send_error(502, str(e))

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
    cleanup_old_sandboxes()  # حذف sandboxes قديمة عند التشغيل
    ensure_sandbox()

    threading.Thread(target=monitor_loop, daemon=True).start()

    log.info(f'Local proxy listening on 127.0.0.1:{PROXY_PORT}')
    HTTPServer(('127.0.0.1', PROXY_PORT), ProxyHandler).serve_forever()


if __name__ == '__main__':
    main()

# Captcha Solver Global

Self-hosted CAPTCHA-solving HTTP sidecar built on **CloakBrowser** (anti-detect Chromium). Solves challenges natively in a real browser engine — no per-solve cost to external providers.

**Supported types (6):** Turnstile · reCAPTCHA (v2 / v3 / invisible, incl. Enterprise) · hCaptcha (checkbox / invisible / real-page) · Cloudflare (`cf_clearance`) · AWS WAF (`aws-waf-token`, silent JS challenge).

Merged from 4 upstream repos for maximum coverage and reliability:
[waguriagentic/captcha-solver](https://github.com/waguriagentic/captcha-solver) · [Boterdrop-Solver](https://github.com/najibyahya/Boterdrop-Solver) · [captcha-skill](https://github.com/Wawanahayy/captcha-skill) · [unified-captcha-solver](https://github.com/reizto/unified-captcha-solver)

## Architecture

```
client ──HTTP──> server.py (FastAPI, :8877)
                     │ dispatch by `type`
                     ├── turnstile/solve.py    (CloakBrowser, headless)
                     ├── recaptcha/solve.py     (CloakBrowser, headed via Xvfb)
                     │   └── image_solve.py    (Mistral Vision grid classification)
                     ├── hcaptcha/solve.py      (CloakBrowser)
                     │   └── image_solve.py    (Mistral Vision grid classification)
                     ├── cloudflare/solve.py    (CloakBrowser — cf_clearance harvester)
                     └── awswaf/solve.py        (CloakBrowser — aws-waf-token harvester)
```

## Quick Start

```bash
# Clone
git clone https://github.com/0xMissy22/captcha-solver-global.git
cd captcha-solver-global

# Setup
python3 -m venv venv && source venv/bin/activate
pip install -r requirements.txt

# Add Mistral API keys for image challenges (reCAPTCHA v2 / hCaptcha)
echo "your-mistral-api-key-1" > common/apikey.txt
echo "your-mistral-api-key-2" >> common/apikey.txt
chmod 600 common/apikey.txt

# Run
xvfb-run -a python3 server.py
# → http://127.0.0.1:8877/health
# → http://127.0.0.1:8877/docs (Swagger UI)
```

## Supported Types

| Type | Modes | Fallback |
|------|-------|----------|
| **Turnstile** | Route-intercept, solve-and-verify, real-page | Humanized B-spline mouse click |
| **reCAPTCHA v2** | Checkbox, real-page | Mistral Vision image grid solve |
| **reCAPTCHA v3** | execute(), real-page | Behavioral simulation for higher score |
| **reCAPTCHA invisible** | execute() | — |
| **reCAPTCHA Enterprise** | enterprise.js | — |
| **hCaptcha** | Checkbox, invisible, real-page | Mistral Vision image grid solve |
| **Cloudflare** | cf_clearance cookie harvest (Managed + JS challenge) | — |
| **AWS WAF** | Silent JS challenge → aws-waf-token | Retry through proxy |

## API Reference

### POST /solve

Single endpoint for all types. Dispatch by `type`.

```bash
# Turnstile
curl -X POST http://127.0.0.1:8877/solve \
  -H "Content-Type: application/json" \
  -d '{"type":"turnstile","sitekey":"0x4AAA...","url":"https://target.com"}'

# reCAPTCHA v3 Enterprise
curl -X POST http://127.0.0.1:8877/solve \
  -H "Content-Type: application/json" \
  -d '{"type":"recaptcha","version":"v3","enterprise":true,"sitekey":"6Lc...","url":"https://target.com","action":"login"}'

# hCaptcha
curl -X POST http://127.0.0.1:8877/solve \
  -H "Content-Type: application/json" \
  -d '{"type":"hcaptcha","sitekey":"10000000-ffff-...","url":"https://target.com"}'

# Cloudflare clearance
curl -X POST http://127.0.0.1:8877/solve \
  -H "Content-Type: application/json" \
  -d '{"type":"cloudflare","url":"https://protected.com","proxy":"http://user:***@ip:port"}'

# AWS WAF
curl -X POST http://127.0.0.1:8877/solve \
  -H "Content-Type: application/json" \
  -d '{"type":"awswaf","url":"https://protected.com","proxy":"http://user:***@ip:port"}'
```

### Request Body

```jsonc
{
  "type": "turnstile",          // turnstile | recaptcha | hcaptcha | cloudflare | awswaf
  "sitekey": "0x4AAA...",       // required for widget types (not cloudflare/awswaf)
  "url": "https://target.com",  // page the captcha is on (required)

  // All types
  "action": "submit",           // turnstile/reCAPTCHA action
  "cdata": "...",               // turnstile customer data
  "real_page": false,           // solve on live target page, not stub
  "timeout_s": 60,
  "proxy": "http://user:***@ip:port",  // cloudflare/awswaf only
  "pre_actions": [
    { "type": "click|fill|select|press|wait", "selector": "#start", "value": "...", "timeout": 10000 }
  ],
  "post_fetch": [
    { "url": "https://target.com/verify", "method": "POST", "body": {"token": "__TOKEN__"} }
  ],

  // reCAPTCHA only
  "version": "v2",              // v2 | v3 | invisible
  "secret": "...",              // v3 only: for score check
  "enterprise": false,

  // Turnstile only
  "verify_url": "...",
  "verify_payload": {},
  "page_url": "..."
}
```

### Response Contract

**2xx → read `solved`; non-2xx → read `detail`. Never both.**

```jsonc
// Success
{ "type": "turnstile", "solved": true, "token": "...", "elapsed": 4.1, "method": "route" }

// Partial failure (still 200)
{ "type": "turnstile", "solved": false, "token": "", "error": "...", "method": "route" }

// Request never solved (4xx/5xx)
{ "detail": "Unsupported type: foo" }
```

### Other Endpoints

| Method | Path       | Auth | Description |
|--------|------------|------|-------------|
| GET    | `/health`  | — | Liveness + supported types |
| GET    | `/status`  | token | Service status + running tasks |
| GET    | `/logs`    | token | Last N solve events (ring buffer) |
| GET    | `/docs`    | — | Swagger UI |
| GET    | `/redoc`   | — | ReDoc |

## Real-Page Mode

Solve on the actual target site with full automation:

```bash
curl -X POST http://127.0.0.1:8877/solve \
  -H "Content-Type: application/json" \
  -d '{
    "type": "turnstile",
    "real_page": true,
    "url": "https://app.example.com/login",
    "pre_actions": [
      {"type": "fill", "selector": "input[type=email]", "value": "user@example.com"},
      {"type": "click", "selector": "button[type=submit]"}
    ],
    "post_fetch": [
      {"url": "https://app.example.com/api/auth/verify", "body": {"token": "__TOKEN__"}}
    ]
  }'
```

**Selector formats:** CSS (default), XPath (`//...`), `text=...`, `regex=...`, `role=button[name='Submit']`

## Mistral Vision KeyPool

Image challenges (reCAPTCHA v2 grid, hCaptcha grid) are solved via Mistral Vision API:

- Thousands of API keys in `common/apikey.txt` (one per line)
- Round-robin rotation with automatic failover
- Keys auto-parked for 60s on 401/403/429
- Concurrency capped at 4 simultaneous calls per grid
- Zero external deps — stdlib `urllib` only

```bash
# Add keys
echo "mistral-key-1" > common/apikey.txt
echo "mistral-key-2" >> common/apikey.txt
echo "mistral-key-3" >> common/apikey.txt
chmod 600 common/apikey.txt
```

## Deployment

### systemd Service

```ini
[Unit]
Description=Captcha Solver Service
After=network.target

[Service]
Type=simple
WorkingDirectory=/opt/captcha-solver
ExecStart=/usr/bin/xvfb-run -a --server-args="-screen 0 1920x1080x24" \
    /opt/captcha-solver/venv/bin/python3 server.py
Environment=PORT=8877
Environment=TURNSTILE_HEADLESS=0
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
```

### Environment Variables

| Variable | Default | Effect |
|----------|---------|--------|
| `PORT` | `8877` | Listen port |
| `TURNSTILE_HEADLESS` | `1` | `0` = headful |
| `TURNSTILE_PROXY` | unset | Proxy for Turnstile browser |
| `TURNSTILE_GEOIP` | unset | `1` = align timezone/locale/WebGL to proxy |
| `RECAPTCHA_HEADLESS` | `0` | `1` = headless (lower success) |
| `RECAPTCHA_PROXY` | unset | Proxy for reCAPTCHA browser |
| `RECAPTCHA_GEOIP` | unset | `1` = geo alignment |
| `SOLVER_ALLOW_PRIVATE` | unset | `1` = allow private targets (SSRF off) |
| `SOLVER_PUBLIC_URL` | placeholder | Public URL for OpenAPI docs |

### Public Access (Caddy reverse proxy)

Bind service to `127.0.0.1` only. Use Caddy for public domain + Bearer token auth:

```bash
TOKEN=$(cat .solver-token.env | cut -d= -f2)

# Health (public, no token)
curl https://solver.example.com/health

# Solve (token required)
curl -X POST https://solver.example.com/solve \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"type":"turnstile","sitekey":"0x4AAA...","url":"https://target.com"}'
```

## cf_clearance Replay Contract

`cf_clearance` is bound to: **exit IP** + **JA3/TLS fingerprint** + **User-Agent** + **challenge instance**.

```bash
# 1. Harvest
RESP=$(curl -s -X POST http://127.0.0.1:8877/solve \
  -H "Content-Type: application/json" \
  -d '{"type":"cloudflare","url":"https://target.com","proxy":"http://user:***@ip:port"}')
CF=$(echo $RESP | jq -r '.cf_clearance.value')
UA=$(echo $RESP | jq -r '.user_agent')

# 2. Replay (same proxy IP + UA + TLS stack)
curl -H "User-Agent: $UA" \
     -H "Cookie: cf_clearance=$CF" \
     --proxy 'http://1.2.3.4:port' \
     https://target.com
```

**Short TTL:** cf_clearance typically lives ~15-30 min. Re-solve on expiry.

## Performance

| Test | Time | Notes |
|------|------|-------|
| Turnstile route-intercept | ~4s | Fake page, token polling |
| reCAPTCHA v3 execute | ~5-10s | Route-intercept stub |
| reCAPTCHA v2 (no challenge) | ~5-8s | Low-risk checkbox only |
| reCAPTCHA v2 (image grid) | ~15-30s | Mistral Vision classification |
| hCaptcha checkbox | ~5-10s | No challenge |
| hCaptcha invisible | ~3-5s | execute() |
| cf_clearance | ~5-30s | Depends on CF variant |
| AWS WAF silent | ~10-30s | JS proof-of-work |

## Project Structure

```
captcha-solver-global/
├── server.py              # FastAPI dispatcher (:8877), SSRF guard, global timeout
├── run.sh                 # venv launcher
├── requirements.txt       # runtime deps
├── SKILL.md               # Hermes skill file
├── .solver-token.env.example
├── proxies.txt.example
├── common/
│   ├── mistral.py         # KeyPool: round-robin + failover
│   ├── browser.py         # helpers: selector, pre_actions, post_fetch, browser_kwargs
│   └── apikey.txt         # Mistral key pool (one per line, chmod 600, gitignored)
├── turnstile/
│   ├── solve.py           # Turnstile (route-intercept + real-page)
│   └── template.html      # stub page with Turnstile widget
├── recaptcha/
│   ├── solve.py           # reCAPTCHA v2/v3/invisible/Enterprise
│   ├── image_solve.py     # Mistral Vision image grid solver
│   └── template.html      # stub page with reCAPTCHA widget
├── hcaptcha/
│   ├── solve.py           # hCaptcha checkbox/invisible/real-page
│   ├── image_solve.py     # Mistral Vision hCaptcha grid solver
│   └── template.html      # stub page with hCaptcha widget
├── cloudflare/
│   └── solve.py           # cf_clearance harvester
└── awswaf/
    └── solve.py           # aws-waf-token harvester
```

## License

MIT

## Credits

- [waguriagentic/captcha-solver](https://github.com/waguriagentic/captcha-solver) — primary architecture, CloakBrowser, Mistral Vision, all solver modules
- [najibyahya/Boterdrop-Solver](https://github.com/najibyahya/Boterdrop-Solver) — browser pool concept, memory cleanup patterns
- [Wawanahayy/captcha-skill](https://github.com/Wawanahayy/captcha-skill) — OCR/LLM integration, hermes-cli
- [reizto/unified-captcha-solver](https://github.com/reizto/unified-captcha-solver) — security hardening, SSRF guard, API key auth

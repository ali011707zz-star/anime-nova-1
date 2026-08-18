# Threat Model

## Project Overview

Anime NOVA is a Node.js/Express backend with React/Vite web and Expo React
Native clients. The backend runs on a VPS, stores data in PostgreSQL/Supabase,
and fetches media from third-party anime providers before exposing playback
through Nova proxy routes.

## Assets

- **Production secrets** — database credentials, Supabase service key,
  Telegram credentials, proxy keys, and session/signing secrets. Disclosure
  enables database access, impersonation, or control of external services.
- **User sessions and personal data** — session cookies, mobile user tokens,
  email/profile data, comments, and watch history.
- **Provider and playback URLs** — short-lived source URLs, referers, and
  manifest keys. Disclosure enables unauthorized scraping and bandwidth abuse.
- **Operations and administration** — admin routes, cache controls, and
  deployment configuration.
- **Mobile and web clients** — their code is observable by the user and must
  never be treated as a secret boundary.

## Trust Boundaries

- **Browser/mobile to API** — all client input and headers are untrusted,
  including client identifiers and any JavaScript anti-tamper signal.
- **API to PostgreSQL/Supabase** — the server holds elevated database
  credentials and must scope every user/admin operation.
- **API to media providers** — provider URLs and headers are server-side
  secrets or short-lived capabilities.
- **Public to protected source routes** — source extraction and proxy routes
  are expensive and must require short-lived authorization and rate limits.
- **Release client to server** — APK integrity checks are useful signals, but
  server authorization must not depend on an unextractable secret in the APK.

## Scan Anchors

- Backend startup and global middleware: `artifacts/api-server/src/app.ts`
- Signing, URL protection, and rate limits: `artifacts/api-server/src/lib/security.ts`
- Source and playback routes: `artifacts/api-server/src/routes/anime.ts`,
  `artifacts/api-server/src/routes/animation.ts`, and `hlsProxy.ts`
- Mobile startup and API client: `artifacts/nova-mobile/app/_layout.tsx` and
  `artifacts/nova-mobile/utils/secureApi.ts`
- Production process configuration: `ecosystem.config.cjs` and VPS `.env`

## Threat Categories

### Spoofing

Attackers can copy public client headers or replay captured requests. Protected
source routes MUST validate short-lived server-signed tokens, and user routes
MUST validate the session on every request. Device or app-integrity signals
are additional risk signals, not authentication secrets.

### Tampering

Modified APKs and browser scripts can remove UI restrictions or advertising.
The server MUST enforce source access, entitlements, rate limits, and signed
playback capabilities independently of client UI state.

### Information Disclosure

Secrets MUST remain in VPS environment variables and MUST NOT be bundled into
web or mobile assets. Provider URLs returned to clients SHOULD be encrypted
or signed, short-lived, and scoped to the playback session. Logs MUST exclude
tokens, query-string secrets, and service credentials.

### Denial of Service

Source extraction, HLS proxying, downloads, and SSE streams are expensive.
These routes MUST have endpoint-specific limits, bounded upstream timeouts,
request-size limits, and cleanup on client disconnect. In-memory limits are
only a single-process safeguard; production scaling needs a shared limiter or
edge/WAF enforcement.

### Elevation of Privilege

Admin and relay routes MUST enforce server-side role/secret checks. User-owned
data MUST be filtered by the authenticated user rather than by client-supplied
IDs. A client-provided app identifier, Referer, User-Agent, or integrity flag
MUST never grant privilege.

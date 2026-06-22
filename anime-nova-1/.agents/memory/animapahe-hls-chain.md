---
name: AnimePahe HLS proxy chain
description: How to correctly proxy AnimePahe/vidnest HLS streams through animanga.fun
---

## Rule
`browser-extract` for vidnest URLs returns `upcloud.animanga.fun/proxy?url=<vault-01-m3u8>&headers={"Referer":"kwik.cx/"}`.

**Never unwrap this URL.** Pass the full `animanga.fun/proxy?url=...` URL to `hls-proxy`.

## Why
Unwrapping gives the raw `vault-01.uwucdn.top` m3u8 URL. When `hls-proxy` fetches it directly, vault-01 returns 502 (IP/session restricted). animanga.fun handles the auth transparently.

## How to apply

**In frontend `triggerExtract`:**
- Extract `ref` (Referer) from animanga.fun headers param (`{"Referer":"kwik.cx/"}`)
- Keep `raw` (animanga.fun URL) as `finalUrl` — do NOT extract inner `url=` param
- Send as HLS: `hls-proxy?url=<animanga_url>&ref=<kwik.cx>`

**In API `hls-proxy` handler:**
- When `url.includes("animanga.fun") && url.includes("url=")`: extract inner URL and use as `baseForSegments` when rewriting relative segment URLs in the m3u8 manifest
- The actual fetch still goes to animanga.fun (not vault-01 directly)

## Segment chain
`seg-proxy?url=<animanga.fun/ts-proxy?url=<vault-segment>>&ref=kwik.cx`
→ seg-proxy fetches animanga.fun/ts-proxy → which fetches vault-01 segment with proper auth
Both seg-proxy (200 ✓) and hls-proxy (200 ✓) confirmed working with this chain.

## AES key
`#EXT-X-KEY` URI is also an `animanga.fun/ts-proxy` URL — browser accesses it directly (CORS headers present). No extra proxying needed for keys.

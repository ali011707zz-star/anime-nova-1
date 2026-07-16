---
name: MyCima scraper
description: mycima.gives WP-JSON search timeouts and fastvip.space extraction fix
---

## Root Cause: cfProxyGet timeout < WP-JSON response time

`mycima.gives` WP-JSON search (`/wp-json/wp/v2/posts?search=...`) takes **~9 seconds** via CF proxy (curl_cffi impersonation). The original `cfProxyGet` call used 8000ms timeout → always timed out silently → getMyCimaSources returned `[]`.

**Fix**: Increased timeouts in `getMyCimaSources`:
- WP-JSON search: `cfProxyGet(apiUrl, undefined, 14000)` (was 8000)
- Page fetch: `cfProxyGet(postUrl, undefined, 12000)` (was 10000)
- Overall race in fetch-source: 30000 (unchanged — 14+12+4s overhead ≈ 30s fits)

## fastvip.space extraction fix

MyCima data-watch URLs decode (via `decodeMyCimaWrap`) to:
- `fastvip.space/e/ID` → streamwish CDN (cdn-centaurus.com)
- `streamup.ws/ID` → streamwish CDN
- `mxdrop.to/e/ID` → streamwish CDN
- `filemoon.sx/e/ID` → filemoon CDN

Fix: added `fastvip.space`, `streamup.ws`, `mxdrop.to` to the streamwish-parser host list in `extractVideoDeep` (alongside `filemoon`, `wishembed`, etc.).

## Data-watch URL format

MyCima episode pages have `<li data-watch="URL">label</li>`. Two types:
1. **Wrapped**: `mycima-my.com?mycimafsd=BASE64` or `mycima.cx/?wplvp=BASE64` → `decodeMyCimaWrap` decodes base64 to real URL
2. **Direct**: `fastvip.space/e/ID`, `filemoon.sx/e/ID` etc. (no wrapper)

Regex in `parseMyCimaDataWatch`: `/<li[^>]*\sdata-watch=["'](https?:\/\/[^"']{5,})["'][^>]*>([\s\S]*?)<\/li>/gi`

## SSE stream

MyCima appears in SSE stream at ~15-20s (after faster scrapers). Sources cached in `mycimaSrcCache` (in-memory) for subsequent requests (sub-second).

**Why:** cfProxyGet does a health check (2s) + actual request. For getMyCimaSources: 2+14 + 2+12 = 30s worst case.

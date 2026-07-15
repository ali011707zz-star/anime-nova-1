#!/usr/bin/env python3
"""
Patches for AnimationWatch.tsx:
- Fix 1 (VF): getSourceTier — VidFast/VidKing/Videasy always "1080p FHD"
- Fix 2 (VE/VL): Add headers field to Source interface + SSE parsing + newSrc
"""
f = "/opt/anime-nova/artifacts/anime-scraper/src/pages/AnimationWatch.tsx"
c = open(f).read()

# ── Fix 1: getSourceTier — add VidFast/VidKing/Videasy FHD check ─────────────
old_tier = '  if (lbl.startsWith("Icefy") || lbl.startsWith("Vyla")) return "1080p FHD";'
new_tier = (
    '  if (lbl.startsWith("Icefy") || lbl.startsWith("Vyla")) return "1080p FHD";\n'
    '  // VidFast/VidKing/Videasy CDN URLs are direct (no hls-proxy) but always FHD\n'
    '  if (lbl.startsWith("VidFast") || lbl.startsWith("VidKing") || lbl.startsWith("Videasy")) return "1080p FHD";'
)
if old_tier in c:
    c = c.replace(old_tier, new_tier, 1)
    print("Fix 1 (VidFast/Videasy tier FHD): OK")
else:
    print("Fix 1: NOT FOUND")
    idx = c.find("Icefy")
    if idx >= 0:
        print("  Icefy context:", repr(c[max(0,idx-10):idx+100]))

# ── Fix 2a: Source interface — add headers field ─────────────────────────────
old_iface = '  _retriedDirect?: boolean; // true after first retry with raw directUrl'
new_iface = (
    '  headers?: Record<string, string>;  // CDN auth headers (e.g. Referer/Origin for ironbubble)\n'
    '  _retriedDirect?: boolean; // true after first retry with raw directUrl'
)
if old_iface in c:
    c = c.replace(old_iface, new_iface, 1)
    print("Fix 2a (Source interface headers): OK")
else:
    print("Fix 2a: NOT FOUND or already done")

# ── Fix 2b: SSE parsing — add headers to type cast ───────────────────────────
old_sse = (
    'const src = JSON.parse(e.data) as { url: string; label: string; '
    'directUrl?: string; proxyUrl?: string; subtitleUrl?: string; isEmbed?: boolean };'
)
new_sse = (
    'const src = JSON.parse(e.data) as { url: string; label: string; '
    'directUrl?: string; proxyUrl?: string; subtitleUrl?: string; isEmbed?: boolean; '
    'headers?: Record<string, string> };'
)
if old_sse in c:
    c = c.replace(old_sse, new_sse, 1)
    print("Fix 2b (SSE headers parse): OK")
else:
    print("Fix 2b: NOT FOUND or already done")

# ── Fix 2c: newSrc — propagate headers field ─────────────────────────────────
old_ns = (
    'newSrc = { url: src.url, label: src.label, directUrl: src.directUrl, '
    'proxyUrl, subtitleUrl: src.subtitleUrl, status: "ok" };'
)
new_ns = (
    'newSrc = { url: src.url, label: src.label, directUrl: src.directUrl, '
    'proxyUrl, subtitleUrl: src.subtitleUrl, headers: src.headers, status: "ok" };'
)
if old_ns in c:
    c = c.replace(old_ns, new_ns, 1)
    print("Fix 2c (newSrc headers): OK")
else:
    print("Fix 2c: NOT FOUND")
    idx = c.find("newSrc = { url: src.url")
    if idx >= 0:
        print("  snippet:", repr(c[idx:idx+220]))

open(f, "w").write(c)

# Verify
c2 = open(f).read()
gt_idx = c2.find("function getSourceTier")
print("\n=== Verification ===")
print("  VidFast FHD check:", 'lbl.startsWith("VidFast")' in c2[gt_idx:gt_idx+800])
print("  headers in Source interface:", "headers?: Record<string, string>" in c2[:c2.find("function getSourceTier")])
print("  headers in SSE parse:", "headers?: Record<string, string>" in c2[c2.find("JSON.parse(e.data)"):c2.find("JSON.parse(e.data)")+250])
print("  headers in newSrc:", "headers: src.headers" in c2)
print("Done.")

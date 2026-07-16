#!/usr/bin/env python3
"""
Patches for animation.ts:
- Fix 4: Add "vidfast" to ANIM_SOURCE_ALLOWLIST (4K source)
- Fix 3: VidLink directUrl = vlProxy (prevent raw IP-bound URL retry)
"""
f = "/opt/anime-nova/artifacts/api-server/src/routes/animation.ts"
c = open(f).read()

# Fix 4: Add "vidfast" to ALLOWLIST
old_al = '"vidlink_encdec", "multimovies_anim", "fourkhdhub_anim"'
new_al = '"vidfast", "vidlink_encdec", "multimovies_anim", "fourkhdhub_anim"'
if old_al in c:
    c = c.replace(old_al, new_al, 1)
    print("Fix 4 (vidfast ALLOWLIST): OK")
elif '"vidfast"' in c and 'ANIM_SOURCE_ALLOWLIST' in c:
    print("Fix 4: vidfast already in ALLOWLIST")
else:
    print("Fix 4: NOT FOUND — ALLOWLIST snippet:")
    idx = c.find("ANIM_SOURCE_ALLOWLIST")
    print(c[idx:idx+200])

# Fix 3: VidLink MP4 — directUrl = vlProxy (not raw IP-bound qData.url)
old_vl = 'sendSource(vlProxy, `VidLink \u00b7 ${q}p`, qData.url, vlProxy, subExtra);'
new_vl = 'sendSource(vlProxy, `VidLink \u00b7 ${q}p`, vlProxy, vlProxy, subExtra);'
if old_vl in c:
    c = c.replace(old_vl, new_vl, 1)
    print("Fix 3 (VidLink MP4 directUrl=proxyUrl): OK")
else:
    idx = c.find("VidLink \u00b7 ${q}p")
    if idx >= 0:
        print("Fix 3: snippet found but differs:", repr(c[idx-40:idx+130]))
    else:
        print("Fix 3: VidLink ${q}p line not found")

# Fix 3b: VidLink HLS — directUrl = vlProxy
old_hls = 'sendSource(vlProxy, "VidLink \u00b7 HLS", hlsPlaylist, vlProxy, subExtra);'
new_hls = 'sendSource(vlProxy, "VidLink \u00b7 HLS", vlProxy, vlProxy, subExtra);'
if old_hls in c:
    c = c.replace(old_hls, new_hls, 1)
    print("Fix 3b (VidLink HLS directUrl=proxyUrl): OK")

open(f, "w").write(c)

# Verify
c2 = open(f).read()
al_idx = c2.find("ANIM_SOURCE_ALLOWLIST")
al_block = c2[al_idx:al_idx+300]
print("\n=== Verification ===")
print("  vidfast in ALLOWLIST:", '"vidfast"' in al_block)
print("  VidLink MP4 fix:", "VidLink \u00b7 ${q}p`, vlProxy, vlProxy" in c2)
print("Done.")

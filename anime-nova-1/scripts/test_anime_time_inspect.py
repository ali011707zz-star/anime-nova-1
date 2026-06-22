#!/usr/bin/env python3
"""Inspect anime-time.live episode page HTML for video loading clues"""
import re, json, time
from curl_cffi import requests as cf_requests

IMPERSONATE = "chrome136"
BASE = "https://anime-time.live"
HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/136.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "ar,en-US;q=0.9",
}

def fetch(url, ref=None, extra=None):
    h = dict(HEADERS)
    if ref: h["Referer"] = ref
    if extra: h.update(extra)
    try:
        r = cf_requests.get(url, headers=h, impersonate=IMPERSONATE, timeout=20, allow_redirects=True)
        return r
    except Exception as e:
        print(f"  ERR: {e}")
        return None

# Step 1: get homepage, find a real episode URL
print("=== Step 1: Homepage ===")
r = fetch(BASE)
print(f"HTTP {r.status_code}, {len(r.text)} chars")

# Look for episode page links (wp-posts with /episode/ or similar)
episode_links = re.findall(r'https://anime-time\.live/\d{4}/\d{2}/[^\s"\'<>]+', r.text)
episode_links += re.findall(r'https://anime-time\.live/[^\s"\'<>]*(?:الحلقة|episode|ep-\d)[^\s"\'<>]*', r.text, re.I)
episode_links = list(dict.fromkeys(episode_links))[:5]

# Also find any /watch/ or /?p= links that look like episodes
watch_links = re.findall(r'href=["\']([^"\']*(?:watch|episode|مشاهدة|الحلقة)[^"\']*)["\']', r.text, re.I)
watch_links = [(l if l.startswith("http") else BASE + l) for l in watch_links if l]
watch_links = list(dict.fromkeys(watch_links))[:5]

print(f"Episode links: {episode_links[:3]}")
print(f"Watch links: {watch_links[:3]}")

# Try finding any post with ?p= that's short (episode page)
p_links = re.findall(r'href=["\'](' + re.escape(BASE) + r'/\?p=(\d+))["\']', r.text)
print(f"?p= links: {p_links[:5]}")

all_ep_candidates = episode_links + watch_links + [x[0] for x in p_links]

# Step 2: Get a known anime search page for One Piece
print("\n=== Step 2: Search for one-piece ===")
search_url = BASE + "/?s=one+piece"
rs = fetch(search_url, ref=BASE)
print(f"HTTP {rs.status_code}, {len(rs.text)} chars")
anime_pages = re.findall(r'href=["\'](' + re.escape(BASE) + r'/anime/[^"\']+)["\']', rs.text)
anime_pages = list(dict.fromkeys(anime_pages))[:3]
print(f"Anime pages: {anime_pages}")

# Step 3: get the anime page and find episode links
if anime_pages:
    print(f"\n=== Step 3: Anime page: {anime_pages[0]} ===")
    ra = fetch(anime_pages[0], ref=search_url)
    print(f"HTTP {ra.status_code}, {len(ra.text)} chars")
    
    # Find episode links on anime page
    ep_candidates = re.findall(r'href=["\'](' + re.escape(BASE) + r'/[^"\']*(?:الحلقة|\d+-\d+|ep-?\d|\bep\b)[^"\']*)["\']', ra.text, re.I)
    ep_candidates += re.findall(r'href=["\'](' + re.escape(BASE) + r'/\d{4}/\d{2}/[^"\']+)["\']', ra.text)
    ep_candidates = list(dict.fromkeys(ep_candidates))[:5]
    print(f"Episode candidates: {ep_candidates[:5]}")
    all_ep_candidates = ep_candidates + all_ep_candidates

# Step 4: pick first valid episode page and inspect deeply
if all_ep_candidates:
    ep_url = all_ep_candidates[0]
    print(f"\n=== Step 4: Episode page: {ep_url} ===")
    re_ep = fetch(ep_url, ref=BASE)
    print(f"HTTP {re_ep.status_code}, {len(re_ep.text)} chars")
    html = re_ep.text
    
    # Save for inspection
    with open("/tmp/episode_page.html", "w") as f:
        f.write(html)
    print("  Saved to /tmp/episode_page.html")
    
    # Look for ALL script tags
    scripts = re.findall(r'<script[^>]*>(.*?)</script>', html, re.S)
    print(f"\n  Script tags: {len(scripts)}")
    
    for i, sc in enumerate(scripts):
        sc_strip = sc.strip()
        if not sc_strip: continue
        # Look for anything video-related
        if any(kw in sc_strip.lower() for kw in ['m3u8', 'mp4', 'player', 'source', 'video', 'hls', 'stream', 'file', 'embed', 'yaviid', 'cdn']):
            print(f"\n  --- Script {i} ({len(sc_strip)} chars) ---")
            print(sc_strip[:2000])
    
    # Look for data- attributes with video
    data_attrs = re.findall(r'data-[a-z\-]+=["\']((?:https?://|/)[^"\']{10,})["\']', html, re.I)
    if data_attrs:
        print(f"\n  data-* URLs: {data_attrs[:10]}")
    
    # Look for window. assignments
    window_vars = re.findall(r'window\.(\w+)\s*=\s*["\']([^"\']{10,})["\']', html)
    if window_vars:
        print(f"\n  window vars: {window_vars[:10]}")
    
    # Look for JSON embedded in page
    json_blobs = re.findall(r'\{[^{}]{50,500}(?:m3u8|mp4|stream|video)[^{}]{0,200}\}', html, re.I)
    if json_blobs:
        print(f"\n  JSON blobs with video: {json_blobs[:3]}")
    
    # Look for AJAX/fetch/XMLHttpRequest URLs
    ajax_urls = re.findall(r'(?:fetch|ajax|XMLHttpRequest|axios)[^"\']*["\']([^"\']{10,})["\']', html, re.I)
    if ajax_urls:
        print(f"\n  AJAX URLs: {ajax_urls[:5]}")
    
    # Wordpress AJAX
    wp_ajax = re.findall(r'admin-ajax\.php', html)
    if wp_ajax:
        print(f"\n  WP admin-ajax: found {len(wp_ajax)} references")
        # Find nonce
        nonces = re.findall(r'nonce["\s:=]+["\']([a-f0-9]{10})["\']', html, re.I)
        print(f"  Nonces: {nonces}")
    
    # Check for yaviidcdn specifically (from memory notes)
    yaviid = re.findall(r'yaviidcdn[^\s"\'<>]*', html)
    print(f"\n  yaviidcdn refs: {yaviid[:5]}")
    
    # Look for encoded/obfuscated content
    b64 = re.findall(r'atob\(["\']([A-Za-z0-9+/=]{30,})["\']', html)
    if b64:
        import base64
        print(f"\n  base64 atob() calls: {len(b64)}")
        for b in b64[:3]:
            try:
                decoded = base64.b64decode(b).decode('utf-8', errors='replace')
                print(f"    decoded: {decoded[:200]}")
            except: pass
    
    # Print page snippet around "video" keyword
    idx = html.lower().find('video')
    if idx >= 0:
        print(f"\n  Snippet around 'video' (pos {idx}):")
        print(html[max(0,idx-100):idx+500])

else:
    print("No episode candidates found")

# Step 5: try WP REST API for posts
print("\n=== Step 5: WP REST API ===")
for ep_type in ["episodes", "series", "posts", "anime"]:
    url = f"{BASE}/wp-json/wp/v2/{ep_type}?per_page=3&_fields=id,link,title"
    r_api = fetch(url, ref=BASE)
    if r_api and r_api.status_code == 200:
        try:
            data = r_api.json()
            print(f"  /wp-json/wp/v2/{ep_type}: {len(data)} results")
            for item in data[:2]:
                print(f"    id={item.get('id')} link={item.get('link','?')[:80]}")
        except:
            print(f"  /wp-json/wp/v2/{ep_type}: not JSON ({r_api.status_code})")
    else:
        code = r_api.status_code if r_api else "ERR"
        print(f"  /wp-json/wp/v2/{ep_type}: {code}")

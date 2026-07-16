#!/usr/bin/env python3
"""
Deep scraper for anime-time.live — extract actual video URLs from episode pages
"""

import re, json, time, sys
from urllib.parse import urljoin, urlparse, unquote
from curl_cffi import requests as cf_requests

IMPERSONATE = "chrome136"
BASE = "https://anime-time.live"

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
    "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
    "Connection": "keep-alive",
}

def fetch(url, referer=None, extra_headers=None, timeout=20):
    h = dict(HEADERS)
    if referer: h["Referer"] = referer
    if extra_headers: h.update(extra_headers)
    t0 = time.time()
    try:
        r = cf_requests.get(url, headers=h, impersonate=IMPERSONATE, timeout=timeout, allow_redirects=True)
        return r, round(time.time() - t0, 2)
    except Exception as e:
        return None, round(time.time() - t0, 2)

def find_all_urls(text):
    """Extract all media-related URLs"""
    results = {}

    patterns = {
        "MP4":   r'https?://[^\s\'"<>\\]+\.mp4(?:[?#][^\s\'"<>\\]*)?',
        "M3U8":  r'https?://[^\s\'"<>\\]+\.m3u8(?:[?#][^\s\'"<>\\]*)?',
        "MPD":   r'https?://[^\s\'"<>\\]+\.mpd(?:[?#][^\s\'"<>\\]*)?',
        "WEBM":  r'https?://[^\s\'"<>\\]+\.webm(?:[?#][^\s\'"<>\\]*)?',
        "TS":    r'https?://[^\s\'"<>\\]+\.ts(?:[?#][^\s\'"<>\\]*)?',
        "M4S":   r'https?://[^\s\'"<>\\]+\.m4s(?:[?#][^\s\'"<>\\]*)?',
        "VTT":   r'https?://[^\s\'"<>\\]+\.vtt(?:[?#][^\s\'"<>\\]*)?',
        "SRT":   r'https?://[^\s\'"<>\\]+\.srt(?:[?#][^\s\'"<>\\]*)?',
        "ASS":   r'https?://[^\s\'"<>\\]+\.ass(?:[?#][^\s\'"<>\\]*)?',
        "KEY":   r'https?://[^\s\'"<>\\]+\.key(?:[?#][^\s\'"<>\\]*)?',
    }
    for kind, pat in patterns.items():
        found = list(dict.fromkeys(re.findall(pat, text, re.I)))
        if found:
            results[kind] = found
    return results

def extract_iframes(html):
    return re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', html, re.I)

def extract_src_tags(html):
    return re.findall(r'<source[^>]+src=["\']([^"\']+)["\']', html, re.I)

def extract_jwplayer(html):
    """Try to find JWPlayer / Video.js / hls.js setup calls"""
    urls = []
    for pat in [
        r'file\s*:\s*["\']([^"\']+\.(?:mp4|m3u8|mpd))["\']',
        r'src\s*:\s*["\']([^"\']+\.(?:mp4|m3u8|mpd))["\']',
        r'["\']([^"\']*(?:cdn|video|stream|media)[^"\']*\.(?:mp4|m3u8|mpd)[^"\']*)["\']',
        r'setupPlayer\([^)]*["\']([^"\']+\.m3u8)["\']',
        r'source\s*=\s*["\']([^"\']+\.(?:mp4|m3u8))["\']',
    ]:
        urls += re.findall(pat, html, re.I)
    return list(dict.fromkeys(urls))

def test_anime_time():
    print("="*65)
    print("  🔍 anime-time.live — اختبار عميق لاستخراج الفيديو")
    print("="*65)

    # 1. Get homepage
    r, t = fetch(BASE)
    print(f"\n📄 الصفحة الرئيسية: HTTP {r.status_code} ({t}s)")

    # 2. Find anime series links
    anime_links = re.findall(r'href=["\'](' + re.escape(BASE) + r'/anime/[^"\']+)["\']', r.text)
    anime_links = list(dict.fromkeys(anime_links))[:5]
    print(f"  → وُجد {len(anime_links)} روابط أنمي")
    for a in anime_links[:3]:
        print(f"    {a}")

    all_videos = {}

    # 3. Try each anime page → find episodes → fetch episode
    for anime_url in anime_links[:3]:
        print(f"\n📺 أنمي: {anime_url}")
        r2, t2 = fetch(anime_url, referer=BASE)
        if not r2 or r2.status_code != 200:
            print(f"  ✗ {r2.status_code if r2 else 'ERR'}")
            continue
        print(f"  HTTP {r2.status_code} ({t2}s)")

        # Find episode links
        ep_links = re.findall(r'href=["\']([^"\']*episode[^"\']*)["\']', r2.text, re.I)
        ep_links += re.findall(r'href=["\'](' + re.escape(BASE) + r'/[^"\']*\d+[^"\']*)["\']', r2.text)
        ep_links = [l if l.startswith("http") else urljoin(BASE, l) for l in ep_links]
        ep_links = list(dict.fromkeys(ep_links))
        # Filter out non-episode links
        ep_links = [l for l in ep_links if re.search(r'ep(isode)?[-_/]?\d|حلقة|\d+/?$', l, re.I)][:5]

        if not ep_links:
            # Try direct video in series page
            v = find_all_urls(r2.text)
            if v:
                print(f"  ✓ فيديو في صفحة السلسلة:")
                for k, urls in v.items():
                    for u in urls[:2]:
                        print(f"    [{k}] {u}")
                    all_videos.setdefault(k, []).extend(urls)
            # Also check iframes
            iframes = extract_iframes(r2.text)
            if iframes:
                print(f"  🖼 iframes: {iframes[:2]}")
            continue

        print(f"  → {len(ep_links)} حلقات وُجدت")
        for ep_url in ep_links[:3]:
            print(f"\n  📍 حلقة: {ep_url}")
            r3, t3 = fetch(ep_url, referer=anime_url)
            if not r3 or r3.status_code != 200:
                print(f"    ✗ {r3.status_code if r3 else 'ERR'}")
                continue
            print(f"    HTTP {r3.status_code} ({t3}s) — {len(r3.text)} chars")

            # Direct video URLs
            v = find_all_urls(r3.text)
            for k, urls in v.items():
                for u in urls[:3]:
                    print(f"    [{k}] ✓ {u[:110]}")
                all_videos.setdefault(k, []).extend(urls)

            # Source tags
            src_tags = extract_src_tags(r3.text)
            for s in src_tags:
                print(f"    [SRC] {s}")

            # JWPlayer/VideoJS
            jw = extract_jwplayer(r3.text)
            for j in jw:
                print(f"    [JW] {j[:100]}")
                all_videos.setdefault("JW", []).append(j)

            # Iframes
            iframes = extract_iframes(r3.text)
            for iframe in iframes[:3]:
                print(f"    [iframe] {iframe[:100]}")
                # Try to follow the iframe
                if iframe.startswith("http"):
                    ri, ti = fetch(iframe, referer=ep_url)
                    if ri and ri.status_code == 200:
                        vi = find_all_urls(ri.text)
                        jwi = extract_jwplayer(ri.text)
                        for k, urls in vi.items():
                            for u in urls[:2]:
                                print(f"      [{k} via iframe] ✓ {u[:100]}")
                            all_videos.setdefault(k, []).extend(urls)
                        for j in jwi[:2]:
                            print(f"      [JW via iframe] {j[:100]}")
                            all_videos.setdefault("JW_iframe", []).append(j)

            # Check JS for packed/encoded video URLs
            packed = re.findall(r'eval\(function\(p,a,c,k,e', r3.text)
            if packed:
                print(f"    ⚠ وُجد {len(packed)} كود مُعمَّى (p,a,c,k,e,d)")

            # yaviidcdn pattern (known from memory)
            yaviid = re.findall(r'(https?://[^"\'<>\s]*yaviidcdn[^"\'<>\s]*)', r3.text)
            for y in yaviid:
                print(f"    [yaviidcdn] ✓ {y[:100]}")
                all_videos.setdefault("M3U8_yaviid", []).append(y)

            if not v and not jw and not iframes and not yaviid:
                print(f"    ⚠ لا فيديو مباشر — المحتوى ديناميكي JavaScript")
                # Show snippet of page for clues
                snippet = r3.text[:3000]
                # Look for any video-related keywords
                for kw in ["player", "source", "video", "stream", "hls", "jwplayer", "videojs", "plyr"]:
                    idx = snippet.lower().find(kw)
                    if idx >= 0:
                        print(f"    💡 كلمة '{kw}' في موضع {idx}")

            time.sleep(0.5)

    print("\n" + "="*65)
    print("  📊 ملخص الروابط المستخرجة:")
    print("="*65)
    if all_videos:
        for k, urls in all_videos.items():
            unique = list(dict.fromkeys(urls))
            print(f"  [{k}] {len(unique)} رابط")
            for u in unique[:2]:
                print(f"    {u[:120]}")
    else:
        print("  ⚠ لم يُستخرج أي رابط فيديو مباشر")
        print("  السبب: anime-time.live يستخدم JS لتحميل الفيديو (dynamic rendering)")

    return all_videos

if __name__ == "__main__":
    test_anime_time()

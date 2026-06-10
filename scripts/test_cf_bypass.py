#!/usr/bin/env python3
"""
CF Bypass tester using curl_cffi — tests 6 anime sites for video URLs
"""

import re
import json
import time
import sys
from curl_cffi import requests as cf_requests

IMPERSONATE = "chrome136"

VIDEO_PATTERNS = {
    "MP4":      re.compile(r'https?://[^\s\'"<>]+\.mp4[^\s\'"<>]*', re.I),
    "M3U8":     re.compile(r'https?://[^\s\'"<>]+\.m3u8[^\s\'"<>]*', re.I),
    "MPD":      re.compile(r'https?://[^\s\'"<>]+\.mpd[^\s\'"<>]*', re.I),
    "WEBM":     re.compile(r'https?://[^\s\'"<>]+\.webm[^\s\'"<>]*', re.I),
    "TS_SEG":   re.compile(r'https?://[^\s\'"<>]+\.ts[^\s\'"<>]*', re.I),
    "M4S_SEG":  re.compile(r'https?://[^\s\'"<>]+\.m4s[^\s\'"<>]*', re.I),
    "VTT":      re.compile(r'https?://[^\s\'"<>]+\.vtt[^\s\'"<>]*', re.I),
    "SRT":      re.compile(r'https?://[^\s\'"<>]+\.srt[^\s\'"<>]*', re.I),
    "ASS":      re.compile(r'https?://[^\s\'"<>]+\.ass[^\s\'"<>]*', re.I),
    "KEY":      re.compile(r'https?://[^\s\'"<>]+\.key[^\s\'"<>]*', re.I),
}

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
    "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
    "Accept-Encoding": "gzip, deflate, br",
    "Connection": "keep-alive",
    "Upgrade-Insecure-Requests": "1",
}

def color(text, code):
    return f"\033[{code}m{text}\033[0m"

def green(t): return color(t, "92")
def red(t):   return color(t, "91")
def yellow(t):return color(t, "93")
def cyan(t):  return color(t, "96")
def bold(t):  return color(t, "1")

def fetch(url, referer=None, timeout=20):
    h = dict(HEADERS)
    if referer:
        h["Referer"] = referer
    t0 = time.time()
    try:
        r = cf_requests.get(url, headers=h, impersonate=IMPERSONATE, timeout=timeout, allow_redirects=True)
        elapsed = round(time.time() - t0, 2)
        return r, elapsed
    except Exception as e:
        elapsed = round(time.time() - t0, 2)
        return None, elapsed

def check_cf(html):
    if not html:
        return True
    lower = html.lower()
    return ("just a moment" in lower and "cf_chl_" in lower) or "cloudflare" in lower[:500]

def extract_urls(text):
    found = {}
    for kind, pat in VIDEO_PATTERNS.items():
        matches = list(set(pat.findall(text)))[:3]
        if matches:
            found[kind] = matches
    return found

def find_episode_links(html, base_url):
    """Extract episode/series links from homepage"""
    patterns = [
        r'href=["\']([^"\']*(?:episode|ep|watch|anime|مشاهدة)[^"\']*)["\']',
        r'href=["\'](/(?:watch|anime|episode|ep)[^"\']+)["\']',
        r'href=["\']([^"\']+/\d+/?)["\']',
    ]
    links = set()
    for pat in patterns:
        for m in re.finditer(pat, html, re.I):
            lnk = m.group(1)
            if lnk.startswith("http"):
                links.add(lnk)
            elif lnk.startswith("/"):
                from urllib.parse import urljoin
                links.add(urljoin(base_url, lnk))
    return list(links)[:5]

def test_site(name, base_url):
    print(f"\n{'='*60}")
    print(bold(cyan(f"  [{name}]  {base_url}")))
    print('='*60)

    # Step 1: homepage
    r, elapsed = fetch(base_url)
    if r is None:
        print(red(f"  ✗ فشل الاتصال ({elapsed}s)"))
        return {"site": name, "url": base_url, "status": "FAIL", "cf_blocked": True, "videos": {}}

    print(f"  → HTTP {r.status_code}  ({elapsed}s)  [{len(r.text)} chars]")

    if r.status_code == 403:
        print(red("  ✗ 403 Forbidden — محجوب تماماً"))
        return {"site": name, "url": base_url, "status": "BLOCKED_403", "cf_blocked": True, "videos": {}}

    if check_cf(r.text):
        print(red("  ✗ Cloudflare Challenge — فشل التجاوز"))
        print(yellow("    (curl_cffi لم تتمكن من تجاوز التحدي)"))
        return {"site": name, "url": base_url, "status": "CF_BLOCKED", "cf_blocked": True, "videos": {}}

    print(green("  ✓ تم تجاوز CF / الصفحة محملة"))

    # Step 2: find video URLs in homepage
    found = extract_urls(r.text)
    if found:
        print(green(f"  ✓ روابط فيديو في الصفحة الرئيسية:"))
        for kind, urls in found.items():
            for u in urls:
                print(f"    [{kind}] {u[:120]}")

    # Step 3: try to find episode pages
    ep_links = find_episode_links(r.text, base_url)
    print(f"\n  → محاولة {len(ep_links)} صفحات حلقات...")

    all_videos = dict(found)
    for ep_url in ep_links[:3]:
        print(f"  ↳ {ep_url[:80]}...")
        r2, t2 = fetch(ep_url, referer=base_url)
        if r2 and r2.status_code == 200 and not check_cf(r2.text):
            ep_vids = extract_urls(r2.text)
            if ep_vids:
                print(green(f"    ✓ وُجد فيديو!"))
                for kind, urls in ep_vids.items():
                    if kind not in all_videos:
                        all_videos[kind] = []
                    for u in urls:
                        if u not in all_videos[kind]:
                            all_videos[kind].append(u)
                            print(f"      [{kind}] {u[:110]}")
        else:
            status = r2.status_code if r2 else "ERR"
            print(yellow(f"    ⚠ {status}"))

    if not all_videos:
        print(yellow("  ⚠ لم يُعثر على روابط فيديو مباشرة (المحتوى قد يكون ديناميكياً/JS)"))

    return {
        "site": name,
        "url": base_url,
        "status": "OK",
        "cf_blocked": False,
        "time_s": elapsed,
        "videos": all_videos,
    }

SITES = [
    ("anime-time.live",  "https://anime-time.live/"),
    ("4h.y9x3c6v.shop",  "https://4h.y9x3c6v.shop/"),
    ("animerco",         "https://eta.animerco.org/"),
    ("anime3rb",         "https://anime3rb.com/"),
    ("witanime",         "https://witanime.life/"),
    ("anime-phoenix",    "https://anime-phoenix.com/"),
]

def main():
    print(bold("\n🔍 curl_cffi CF Bypass Tester — فحص 6 مواقع أنمي\n"))
    results = []
    total_t0 = time.time()

    for name, url in SITES:
        res = test_site(name, url)
        results.append(res)
        time.sleep(1)

    total = round(time.time() - total_t0, 1)

    print(f"\n\n{'='*60}")
    print(bold("  📊 ملخص النتائج"))
    print('='*60)
    for r in results:
        cf = red("CF محجوب") if r.get("cf_blocked") else green("✓ يعمل")
        vids = ", ".join(r.get("videos", {}).keys()) or yellow("لا فيديو مباشر")
        st = r["status"]
        t = f"{r.get('time_s','?')}s"
        print(f"  {r['site']:20} | {cf:30} | {st:12} | {t:6} | {vids}")

    print(f"\n  ⏱ الوقت الكلي: {total}s")
    print()

    # Save JSON
    with open("/tmp/cf_bypass_results.json", "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=2)
    print("  💾 النتائج محفوظة في /tmp/cf_bypass_results.json")

if __name__ == "__main__":
    main()

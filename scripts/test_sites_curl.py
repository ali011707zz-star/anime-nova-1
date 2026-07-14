#!/usr/bin/env python3
"""
اختبار المواقع من بيئة Replit باستخدام curl_cffi + primp
يسحب روابط حلقات حقيقية
"""
import re, time, json, sys
from curl_cffi import requests as cf

IMPERSONATES = ["chrome136", "chrome131", "safari18_0", "firefox133"]

CF_MARKERS = [
    "just a moment", "checking your browser", "verifying you are human",
    "attention required", "challenges.cloudflare.com", "enable javascript and cookies"
]

def smart_get(url, session=None, referer=None, retries=3):
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36",
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "ar,en;q=0.9",
    }
    if referer:
        headers["Referer"] = referer

    for imp in IMPERSONATES[:retries]:
        try:
            if session:
                r = session.get(url, headers=headers, impersonate=imp, timeout=20, allow_redirects=True)
            else:
                r = cf.get(url, headers=headers, impersonate=imp, timeout=20, allow_redirects=True)
            if r.status_code < 500:
                return r
        except Exception as e:
            print(f"  ⚠ {imp} failed: {e}", flush=True)
    return None

# ══════════════════════════════════════════════════════
# anime3rb.com
# ══════════════════════════════════════════════════════
def test_anime3rb():
    s = cf.Session()
    r = smart_get("https://anime3rb.com/", session=s)
    if not r: return {"ok": False, "error": "no response"}
    html = r.text
    is_cf = any(m in html.lower() for m in CF_MARKERS) and len(html) < 12000
    result = {"status": r.status_code, "html_len": len(html), "cf_blocked": is_cf, "cookies": dict(r.cookies)}

    if not is_cf and len(html) > 3000:
        # ابحث عن أنمي
        titles = re.findall(r'href="(https://anime3rb\.com/titles/[^"]+)"', html)[:5]
        result["anime_links"] = titles
        if titles:
            r2 = smart_get(titles[0], session=s, referer="https://anime3rb.com/")
            if r2 and r2.status_code == 200:
                h2 = r2.text
                eps = re.findall(r'href="(https://anime3rb\.com/episode/[^"]+)"', h2)[:5]
                result["episode_links"] = eps
                if eps:
                    r3 = smart_get(eps[0], session=s, referer=titles[0])
                    if r3:
                        h3 = r3.text
                        m3u8 = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', h3)
                        iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', h3)
                        result["ep_page"] = eps[0]
                        result["m3u8"] = m3u8[:3]
                        result["iframes"] = iframes[:3]
    return result

# ══════════════════════════════════════════════════════
# anime4up
# ══════════════════════════════════════════════════════
def test_anime4up():
    s = cf.Session()
    for domain in ["https://anime4up.cam/", "https://anime4up.pro/", "https://anime4up.live/"]:
        r = smart_get(domain, session=s)
        if r and r.status_code == 200 and len(r.text) > 3000:
            break
    if not r: return {"ok": False, "error": "no response"}
    html = r.text
    base = domain.rstrip("/")
    is_cf = any(m in html.lower() for m in CF_MARKERS) and len(html) < 12000
    result = {"domain": domain, "status": r.status_code, "html_len": len(html), "cf_blocked": is_cf}
    if not is_cf and len(html) > 3000:
        titles = re.findall(rf'href="({re.escape(base)}/anime/[^"]+)"', html)[:5]
        result["anime_links"] = titles
        if titles:
            r2 = smart_get(titles[0], session=s, referer=domain)
            if r2:
                h2 = r2.text
                eps = re.findall(rf'href="({re.escape(base)}/[^"]*(?:episode|\d+)[^"]*)"', h2)[:5]
                if not eps:
                    eps = re.findall(r'href="(https?://[^"]*anime4up[^"]*/\?p=\d+)"', h2)[:5]
                result["episode_links"] = eps
                if eps:
                    r3 = smart_get(eps[0], session=s, referer=titles[0])
                    if r3:
                        h3 = r3.text
                        m3u8 = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', h3)
                        iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', h3)
                        result["m3u8"] = m3u8[:3]
                        result["iframes"] = iframes[:3]
    return result

# ══════════════════════════════════════════════════════
# faselhd
# ══════════════════════════════════════════════════════
def test_faselhd():
    s = cf.Session()
    for domain in ["https://www.faselhd.cam/", "https://faselhd.ac/", "https://faselhd.club/"]:
        r = smart_get(domain + "anime/", session=s)
        if r and r.status_code == 200 and len(r.text) > 3000:
            base = domain
            break
    else:
        return {"ok": False, "error": "all domains failed"}
    html = r.text
    is_cf = any(m in html.lower() for m in CF_MARKERS) and len(html) < 12000
    result = {"domain": base, "status": r.status_code, "html_len": len(html), "cf_blocked": is_cf,
              "cookies": {k: v[:30] for k, v in dict(r.cookies).items()}}
    if not is_cf and len(html) > 3000:
        posts = re.findall(r'href="(https?://[^"]*faselhd[^"]*/\?p=\d+)"', html)
        if not posts:
            posts = re.findall(r'href="(https?://[^"]*faselhd[^"]*/(?!page)[a-z0-9\-]+/)"', html)[:5]
        result["post_links"] = posts[:5]
        if posts:
            r2 = smart_get(posts[0], session=s, referer=base + "anime/")
            if r2:
                h2 = r2.text
                data_url = re.findall(r'data-url=["\']([^"\']+)["\']', h2)
                m3u8 = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', h2)
                iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', h2)
                result["ep_page"] = posts[0]
                result["data_url"] = data_url[:3]
                result["m3u8"] = m3u8[:3]
                result["iframes"] = iframes[:3]
    return result

# ══════════════════════════════════════════════════════
# witanime
# ══════════════════════════════════════════════════════
def test_witanime():
    s = cf.Session()
    for domain in ["https://witanime.pics/", "https://witanime.life/", "https://witanime.cyou/"]:
        r = smart_get(domain, session=s)
        if r and r.status_code == 200 and len(r.text) > 3000:
            base = domain
            break
    else:
        return {"ok": False, "error": "all domains failed"}
    html = r.text
    is_cf = any(m in html.lower() for m in CF_MARKERS) and len(html) < 12000
    result = {"domain": base, "status": r.status_code, "html_len": len(html), "cf_blocked": is_cf}
    if not is_cf and len(html) > 3000:
        titles = re.findall(r'href="(https?://[^"]*witanime[^"]*/anime/[^"]+)"', html)[:5]
        result["anime_links"] = titles
        if titles:
            r2 = smart_get(titles[0], session=s, referer=base)
            if r2:
                h2 = r2.text
                eps = re.findall(r'href="(https?://[^"]*witanime[^"]*/episode/[^"]+)"', h2)[:5]
                result["episode_links"] = eps
                if eps:
                    r3 = smart_get(eps[-1], session=s, referer=titles[0])
                    if r3:
                        h3 = r3.text
                        m3u8 = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', h3)
                        iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', h3)
                        result["ep_page"] = eps[-1]
                        result["m3u8"] = m3u8[:3]
                        result["iframes"] = iframes[:3]
    return result

# ══════════════════════════════════════════════════════
# egydead
# ══════════════════════════════════════════════════════
def test_egydead():
    s = cf.Session()
    for domain in ["https://tv10.egydead.live/", "https://tv9.egydead.live/"]:
        r = smart_get(domain + "category/anime/", session=s)
        if r and r.status_code == 200 and len(r.text) > 3000:
            base = domain
            break
    else:
        return {"ok": False, "error": "all domains failed"}
    html = r.text
    is_cf = any(m in html.lower() for m in CF_MARKERS) and len(html) < 12000
    result = {"domain": base, "status": r.status_code, "html_len": len(html), "cf_blocked": is_cf}
    if not is_cf and len(html) > 3000:
        posts = re.findall(r'href="(https?://[^"]*egydead[^"]*/\d{4}/[^"]+)"', html)[:5]
        result["post_links"] = posts
        if posts:
            r2 = smart_get(posts[0], session=s, referer=base + "category/anime/")
            if r2:
                h2 = r2.text
                m3u8 = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', h2)
                iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', h2)
                result["ep_page"] = posts[0]
                result["m3u8"] = m3u8[:3]
                result["iframes"] = iframes[:3]
    return result

# ══════════════════════════════════════════════════════
# mycima / wecima
# ══════════════════════════════════════════════════════
def test_mycima():
    s = cf.Session()
    for domain in ["https://wecima.show/", "https://wecima.gold/", "https://mycima.tv/"]:
        cat = domain + "category/%d8%a3%d9%86%d9%8a%d9%85%d9%8a/"
        r = smart_get(cat, session=s)
        if r and r.status_code == 200 and len(r.text) > 3000:
            base = domain
            break
    else:
        return {"ok": False, "error": "all domains failed"}
    html = r.text
    is_cf = any(m in html.lower() for m in CF_MARKERS) and len(html) < 12000
    result = {"domain": base, "status": r.status_code, "html_len": len(html), "cf_blocked": is_cf}
    if not is_cf and len(html) > 3000:
        links = re.findall(r'href="(https?://[^"]*(?:wecima|mycima)[^"]*/watch/[^"]+)"', html)[:5]
        if not links:
            links = re.findall(r'href="(https?://[^"]*(?:wecima|mycima)[^"]*/\?p=\d+)"', html)[:5]
        result["watch_links"] = links
        if links:
            r2 = smart_get(links[0], session=s, referer=base)
            if r2:
                h2 = r2.text
                m3u8 = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', h2)
                iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', h2)
                data_watch = re.findall(r'data-watch=["\']([^"\']+)["\']', h2)
                my_player = re.findall(r'"my_player"\s*:\s*"([^"]+)"', h2)
                result["ep_page"] = links[0]
                result["m3u8"] = m3u8[:3]
                result["iframes"] = iframes[:3]
                result["data_watch"] = data_watch[:3]
                result["my_player"] = my_player[:2]
    return result

# ══════════════════════════════════════════════════════
# akwam
# ══════════════════════════════════════════════════════
def test_akwam():
    s = cf.Session()
    for domain in ["https://akwam.it/", "https://akwam.cc/", "https://ak.sv/"]:
        r = smart_get(domain + "animes", session=s)
        if r and r.status_code == 200 and len(r.text) > 3000:
            base = domain
            break
    else:
        return {"ok": False, "error": "all domains failed"}
    html = r.text
    is_cf = any(m in html.lower() for m in CF_MARKERS) and len(html) < 12000
    result = {"domain": base, "status": r.status_code, "html_len": len(html), "cf_blocked": is_cf}
    if not is_cf and len(html) > 3000:
        titles = re.findall(r'href="(https?://[^"]*(?:akwam|ak\.sv)[^"]*/anime/[^"]+)"', html)[:5]
        result["anime_links"] = titles
        if titles:
            r2 = smart_get(titles[0], session=s, referer=base + "animes")
            if r2:
                h2 = r2.text
                eps = re.findall(r'href="(https?://[^"]*(?:akwam|ak\.sv)[^"]*/episode/[^"]+)"', h2)[:5]
                result["episode_links"] = eps
                if eps:
                    r3 = smart_get(eps[-1], session=s, referer=titles[0])
                    if r3:
                        h3 = r3.text
                        m3u8 = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', h3)
                        iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', h3)
                        mp4 = re.findall(r'href="(https?://[^\s"\'<>]+\.mp4[^\s"\'<>]*)"', h3)
                        result["ep_page"] = eps[-1]
                        result["m3u8"] = m3u8[:3]
                        result["iframes"] = iframes[:3]
                        result["mp4"] = mp4[:3]
    return result

# ══════════════════════════════════════════════════════
# MAIN
# ══════════════════════════════════════════════════════
TESTS = [
    ("anime3rb",  test_anime3rb),
    ("anime4up",  test_anime4up),
    ("faselhd",   test_faselhd),
    ("witanime",  test_witanime),
    ("egydead",   test_egydead),
    ("mycima",    test_mycima),
    ("akwam",     test_akwam),
]

all_results = {}
print("🚀 اختبار المواقع من Replit (IP: 35.200.230.164)\n", flush=True)

for name, fn in TESTS:
    print(f"🔍 [{name}]", flush=True)
    t0 = time.time()
    try:
        r = fn()
    except Exception as e:
        r = {"error": str(e)}
    elapsed = round(time.time() - t0, 1)
    r["elapsed_s"] = elapsed

    status = "✅" if (r.get("m3u8") or r.get("iframes") or r.get("data_url") or r.get("watch_links") or r.get("anime_links")) else ("⚠️ CF" if r.get("cf_blocked") else "❌")
    print(f"   {status} | html={r.get('html_len',0)} | {elapsed}s | cf={r.get('cf_blocked','?')}", flush=True)

    for k in ["m3u8","iframes","data_url","data_watch","my_player","mp4","episode_links","anime_links","watch_links","post_links"]:
        v = r.get(k)
        if v:
            print(f"   📌 {k}: {v[0][:100] if v else '-'}", flush=True)
            if len(v) > 1:
                for item in v[1:]:
                    print(f"           {item[:100]}", flush=True)
    if r.get("error"): print(f"   💥 {r['error'][:120]}", flush=True)
    print("", flush=True)
    all_results[name] = r

with open("/tmp/results.json","w",encoding="utf-8") as f:
    json.dump(all_results, f, ensure_ascii=False, indent=2)
print("✅ النتائج كاملة في /tmp/results.json")

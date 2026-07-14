#!/usr/bin/env python3
"""
اختبار شامل للمواقع المحجوبة من الـ VPS باستخدام camoufox من بيئة Replit
يسحب روابط حلقات حقيقية من كل موقع
"""
import asyncio, json, time, re, sys
from camoufox.async_api import AsyncCamoufox

CF_MARKERS = [
    "just a moment", "checking your browser", "verifying you are human",
    "attention required", "cf-browser-verification", "challenges.cloudflare.com",
    "enable javascript and cookies", "ray id"
]

# ======================== استراتيجيات سحب الروابط ========================

async def extract_anime3rb(page):
    """anime3rb.com — أنمي 3 أب"""
    await page.goto("https://anime3rb.com/titles?type=anime", timeout=30000)
    await asyncio.sleep(5)
    html = await page.content()
    # ابحث عن روابط أنمي
    links = re.findall(r'href="(https://anime3rb\.com/titles/[^"]+)"', html)
    links = list(dict.fromkeys(links))[:3]
    episodes = []
    for link in links:
        await page.goto(link, timeout=30000)
        await asyncio.sleep(4)
        h = await page.content()
        ep_links = re.findall(r'href="(https://anime3rb\.com/episode/[^"]+)"', h)
        if ep_links:
            # افتح أول حلقة
            await page.goto(ep_links[0], timeout=30000)
            await asyncio.sleep(6)
            ep_html = await page.content()
            # ابحث عن m3u8 أو مشغّل
            m3u8 = re.findall(r'(https?://[^"\'<>\s]+\.m3u8[^"\'<>\s]*)', ep_html)
            iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', ep_html)
            episodes.append({
                "page": ep_links[0],
                "m3u8": m3u8[:2],
                "iframes": iframes[:2]
            })
            break
    return {"links_found": links, "episodes": episodes}

async def extract_anime4up(page):
    """anime4up.cam — أنمي 4 أب"""
    await page.goto("https://anime4up.cam/anime-list-3/", timeout=30000)
    await asyncio.sleep(5)
    html = await page.content()
    links = re.findall(r'href="(https://anime4up\.cam/anime/[^"]+)"', html)
    links = list(dict.fromkeys(links))[:3]
    episodes = []
    for link in links:
        await page.goto(link, timeout=30000)
        await asyncio.sleep(4)
        h = await page.content()
        ep_links = re.findall(r'href="(https://anime4up\.cam/[^"]*episode[^"]*)"', h, re.IGNORECASE)
        if not ep_links:
            ep_links = re.findall(r'href="(https://anime4up\.cam/\d+[^"]+)"', h)
        if ep_links:
            await page.goto(ep_links[0], timeout=30000)
            await asyncio.sleep(6)
            ep_html = await page.content()
            m3u8 = re.findall(r'(https?://[^"\'<>\s]+\.m3u8[^"\'<>\s]*)', ep_html)
            iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', ep_html)
            episodes.append({"page": ep_links[0], "m3u8": m3u8[:2], "iframes": iframes[:2]})
            break
    return {"links_found": links, "episodes": episodes}

async def extract_faselhd(page):
    """faselhd — فيصل HD"""
    for domain in ["https://www.faselhd.cam/", "https://faselhd.ac/"]:
        try:
            await page.goto(domain + "anime/", timeout=30000)
            await asyncio.sleep(6)
            html = await page.content()
            if len(html) > 5000 and not any(m in html.lower() for m in CF_MARKERS[:3]):
                break
        except:
            continue
    links = re.findall(r'href="(https?://[^"]*faselhd[^"]*/(?:season|episode|[^"]+episode)[^"]*)"', html, re.IGNORECASE)
    if not links:
        links = re.findall(r'href="(https?://[^"]*faselhd[^"]*/\?p=\d+)"', html)
    links = list(dict.fromkeys(links))[:3]
    episodes = []
    for link in links:
        await page.goto(link, timeout=30000)
        await asyncio.sleep(5)
        ep_html = await page.content()
        m3u8 = re.findall(r'(https?://[^"\'<>\s]+\.m3u8[^"\'<>\s]*)', ep_html)
        # FaselHD يستخدم data-url
        data_url = re.findall(r'data-url=["\']([^"\']+)["\']', ep_html)
        iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', ep_html)
        if m3u8 or data_url or iframes:
            episodes.append({"page": link, "m3u8": m3u8[:2], "data_url": data_url[:2], "iframes": iframes[:2]})
            break
    return {"links_found": links, "episodes": episodes}

async def extract_witanime(page):
    """witanime.life — وايت أنمي"""
    await page.goto("https://witanime.pics/", timeout=30000)
    await asyncio.sleep(6)
    html = await page.content()
    links = re.findall(r'href="(https://witanime\.pics/anime/[^"]+)"', html)
    links = list(dict.fromkeys(links))[:3]
    episodes = []
    for link in links:
        await page.goto(link, timeout=30000)
        await asyncio.sleep(4)
        h = await page.content()
        ep_links = re.findall(r'href="(https://witanime\.pics/episode/[^"]+)"', h)
        if ep_links:
            await page.goto(ep_links[-1], timeout=30000)  # آخر حلقة
            await asyncio.sleep(6)
            ep_html = await page.content()
            m3u8 = re.findall(r'(https?://[^"\'<>\s]+\.m3u8[^"\'<>\s]*)', ep_html)
            iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', ep_html)
            episodes.append({"page": ep_links[-1], "m3u8": m3u8[:2], "iframes": iframes[:2]})
            break
    return {"links_found": links, "episodes": episodes}

async def extract_egydead(page):
    """egydead — إيجي ديد"""
    await page.goto("https://tv10.egydead.live/category/anime/", timeout=30000)
    await asyncio.sleep(6)
    html = await page.content()
    links = re.findall(r'href="(https://tv10\.egydead\.live/\d{4}/[^"]+)"', html)
    links = list(dict.fromkeys(links))[:5]
    episodes = []
    for link in links:
        await page.goto(link, timeout=30000)
        await asyncio.sleep(5)
        ep_html = await page.content()
        m3u8 = re.findall(r'(https?://[^"\'<>\s]+\.m3u8[^"\'<>\s]*)', ep_html)
        iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', ep_html)
        if m3u8 or iframes:
            episodes.append({"page": link, "m3u8": m3u8[:2], "iframes": iframes[:2]})
            break
    return {"links_found": links, "episodes": episodes}

async def extract_mycima(page):
    """mycima / wecima — ماي سيما"""
    for domain in ["https://wecima.show/", "https://mycima.tv/", "https://wecima.gold/"]:
        try:
            await page.goto(domain + "category/%d8%a3%d9%86%d9%8a%d9%85%d9%8a/", timeout=30000)
            await asyncio.sleep(6)
            html = await page.content()
            if len(html) > 5000:
                break
        except:
            continue
    links = re.findall(r'href="(https?://[^"]*(?:wecima|mycima)[^"]*/watch/[^"]+)"', html)
    if not links:
        links = re.findall(r'href="(https?://[^"]*(?:wecima|mycima)[^"]*/\?p=\d+)"', html)
    links = list(dict.fromkeys(links))[:3]
    episodes = []
    for link in links:
        await page.goto(link, timeout=30000)
        await asyncio.sleep(6)
        ep_html = await page.content()
        m3u8 = re.findall(r'(https?://[^"\'<>\s]+\.m3u8[^"\'<>\s]*)', ep_html)
        iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', ep_html)
        data_watch = re.findall(r'data-watch=["\']([^"\']+)["\']', ep_html)
        episodes.append({"page": link, "m3u8": m3u8[:2], "iframes": iframes[:2], "data_watch": data_watch[:2]})
        break
    return {"links_found": links, "episodes": episodes}

async def extract_akwam(page):
    """akwam.it — أكوام"""
    await page.goto("https://akwam.it/animes", timeout=30000)
    await asyncio.sleep(6)
    html = await page.content()
    links = re.findall(r'href="(https://akwam\.it/anime/[^"]+)"', html)
    links = list(dict.fromkeys(links))[:3]
    episodes = []
    for link in links:
        await page.goto(link, timeout=30000)
        await asyncio.sleep(4)
        h = await page.content()
        ep_links = re.findall(r'href="(https://akwam\.it/episode/[^"]+)"', h)
        if ep_links:
            await page.goto(ep_links[-1], timeout=30000)
            await asyncio.sleep(6)
            ep_html = await page.content()
            m3u8 = re.findall(r'(https?://[^"\'<>\s]+\.m3u8[^"\'<>\s]*)', ep_html)
            iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', ep_html)
            download = re.findall(r'href="(https?://[^"]+\.mp4[^"]*)"', ep_html)
            episodes.append({"page": ep_links[-1], "m3u8": m3u8[:2], "iframes": iframes[:2], "mp4": download[:2]})
            break
    return {"links_found": links, "episodes": episodes}

# ======================== الاختبار الرئيسي ========================

SITES = [
    ("anime3rb",  "https://anime3rb.com/",         extract_anime3rb),
    ("anime4up",  "https://anime4up.cam/",          extract_anime4up),
    ("faselhd",   "https://www.faselhd.cam/",       extract_faselhd),
    ("witanime",  "https://witanime.pics/",         extract_witanime),
    ("egydead",   "https://tv10.egydead.live/",     extract_egydead),
    ("mycima",    "https://wecima.show/",           extract_mycima),
    ("akwam",     "https://akwam.it/",              extract_akwam),
]

async def test_site(browser, name, url, extractor):
    t0 = time.time()
    result = {"site": name, "url": url, "ok": False}
    try:
        page = await browser.new_page()

        # اختبار الوصول الأساسي
        await page.goto(url, timeout=30000)
        await asyncio.sleep(6)
        html = await page.content()
        title = await page.title()
        low = html.lower()

        is_cf = any(m in low for m in CF_MARKERS) and len(html) < 15000
        cf_cookies = await page.context.cookies()
        cf_clearance = any(c['name'] == 'cf_clearance' for c in cf_cookies)

        result.update({
            "title": title,
            "html_len": len(html),
            "cf_blocked": is_cf,
            "cf_clearance": cf_clearance,
        })

        if not is_cf and len(html) > 3000:
            # سحب الروابط الحقيقية
            try:
                extracted = await extractor(page)
                result["extracted"] = extracted
                result["ok"] = bool(extracted.get("episodes") or extracted.get("links_found"))
            except Exception as e:
                result["extract_error"] = str(e)

        await page.close()
    except Exception as e:
        result["error"] = str(e)

    result["elapsed_s"] = round(time.time() - t0, 1)
    return result

async def main():
    all_results = []
    print("🚀 بدء الاختبار بـ camoufox...\n", flush=True)

    async with AsyncCamoufox(headless=True, geoip=True) as browser:
        for name, url, extractor in SITES:
            print(f"🔍 [{name}] {url}", flush=True)
            r = await test_site(browser, name, url, extractor)
            status = "✅" if r.get("ok") else ("⚠️ CF" if r.get("cf_blocked") else "❌")
            print(f"   {status} | {r.get('title','')[:60]} | {r['elapsed_s']}s | html={r.get('html_len',0)}", flush=True)
            if r.get("extracted"):
                ex = r["extracted"]
                print(f"   📺 links={len(ex.get('links_found',[]))} | episodes={len(ex.get('episodes',[]))}", flush=True)
                for ep in ex.get("episodes", []):
                    if ep.get("m3u8"): print(f"   🎬 M3U8: {ep['m3u8'][0]}", flush=True)
                    if ep.get("iframes"): print(f"   🖼️  iframe: {ep['iframes'][0]}", flush=True)
                    if ep.get("data_url"): print(f"   🔗 data-url: {ep['data_url'][0]}", flush=True)
                    if ep.get("mp4"): print(f"   📥 MP4: {ep['mp4'][0]}", flush=True)
            if r.get("error"): print(f"   ⚠️ {r['error'][:100]}", flush=True)
            print("", flush=True)
            all_results.append(r)

    with open("/tmp/browser_test_results.json", "w", encoding="utf-8") as f:
        json.dump(all_results, f, ensure_ascii=False, indent=2)
    print("\n✅ النتائج محفوظة في /tmp/browser_test_results.json", flush=True)

if __name__ == "__main__":
    asyncio.run(main())

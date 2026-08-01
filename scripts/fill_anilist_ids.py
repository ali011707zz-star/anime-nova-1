#!/usr/bin/env python3
"""
fill_anilist_ids.py — يملأ anilist_id في جداول Supabase:
  1. aw_links   : بالاسم عبر AniList GraphQL
  2. anime      : بـ mal_id عبر AniList GraphQL (idMal)
  3. episodes   : بربطها بـ anime_id → anilist_id من جدول anime

الأنميات التي لا تُوجد في AniList → تُعتبر Animation (أفلام/كرتون غربي)
وتُكتب في animation_unmatched.txt للمراجعة.

تشغيل:
  cd /opt/anime-nova
  python3 scripts/fill_anilist_ids.py
  python3 scripts/fill_anilist_ids.py --mode aw_links   # فقط aw_links
  python3 scripts/fill_anilist_ids.py --mode anime       # فقط anime table
  python3 scripts/fill_anilist_ids.py --mode episodes    # فقط episodes
  python3 scripts/fill_anilist_ids.py --dry-run          # بدون تعديل
"""

import os, sys, json, time, re, argparse, unicodedata
from concurrent.futures import ThreadPoolExecutor, as_completed
import urllib.request, urllib.error

# ─── إعدادات ──────────────────────────────────────────────────────────────────
SB_URL = os.environ.get("SUPABASE_URL", "https://lylapkfnizpjoyutnlin.supabase.co")
SB_KEY = os.environ.get("SUPABASE_SERVICE_KEY", "")
ANILIST_API = "https://graphql.anilist.co"
WORKERS     = 1        # طلب واحد فقط (AniList: 90/min = ~1.5s بين كل طلب)
DELAY       = 1.5      # ثانية بين كل طلب
RETRY_DELAY = 60       # انتظار عند 429
LOG_FILE    = "/tmp/fill_anilist_ids.log"
UNMATCHED   = "/tmp/animation_unmatched.txt"

if not SB_URL or not SB_KEY:
    # محاولة قراءة .env
    env_path = os.path.join(os.path.dirname(__file__), "..", ".env")
    try:
        for line in open(env_path):
            line = line.strip()
            if line.startswith("SUPABASE_URL="):
                SB_URL = line.split("=", 1)[1]
            elif line.startswith("SUPABASE_SERVICE_KEY="):
                SB_KEY = line.split("=", 1)[1]
    except FileNotFoundError:
        pass

if not SB_KEY:
    print("❌  SUPABASE_SERVICE_KEY غير موجود في البيئة أو .env")
    sys.exit(1)

# ─── مساعدات HTTP ────────────────────────────────────────────────────────────

def sb_headers():
    return {
        "apikey": SB_KEY,
        "Authorization": f"Bearer {SB_KEY}",
        "Content-Type": "application/json",
        "Prefer": "return=minimal",
    }

def http_get(url, headers=None, timeout=15):
    req = urllib.request.Request(url, headers=headers or {})
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return json.loads(r.read())

def http_patch(url, data, headers=None, timeout=15):
    body = json.dumps(data).encode()
    req = urllib.request.Request(url, data=body, method="PATCH",
                                  headers={**(headers or {}), "Content-Type": "application/json"})
    try:
        with urllib.request.urlopen(req, timeout=timeout) as r:
            return r.status
    except urllib.error.HTTPError as e:
        return e.code

def http_post_json(url, payload, headers=None, timeout=20):
    body = json.dumps(payload).encode()
    req = urllib.request.Request(url, data=body, method="POST",
                                  headers={**(headers or {}), "Content-Type": "application/json"})
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return json.loads(r.read())

# ─── Supabase helpers ─────────────────────────────────────────────────────────

def sb_get_all(table, select, filters="", page_size=1000):
    """جلب كل الصفوف بالـ pagination"""
    rows = []
    offset = 0
    while True:
        url = f"{SB_URL}/rest/v1/{table}?select={select}{filters}&limit={page_size}&offset={offset}"
        try:
            batch = http_get(url, sb_headers())
        except Exception as e:
            print(f"  ⚠️  sb_get_all {table} offset={offset}: {e}")
            break
        if not batch:
            break
        rows.extend(batch)
        if len(batch) < page_size:
            break
        offset += page_size
    return rows

def sb_patch_row(table, row_id, data, dry_run=False):
    url = f"{SB_URL}/rest/v1/{table}?id=eq.{row_id}"
    if dry_run:
        return 200
    status = http_patch(url, data, sb_headers())
    return status

def sb_patch_where(table, field, value, data, dry_run=False):
    """UPDATE table SET data WHERE field = value"""
    url = f"{SB_URL}/rest/v1/{table}?{field}=eq.{urllib.parse.quote(str(value))}"
    if dry_run:
        return 200
    status = http_patch(url, data, sb_headers())
    return status

# urllib.parse للـ encoding
import urllib.parse

# ─── AniList API ─────────────────────────────────────────────────────────────

QUERY_BY_NAME = """
query ($search: String) {
  Media(search: $search, type: ANIME, isAdult: false) {
    id
    title { romaji english native }
    format
    startDate { year }
  }
}
"""

QUERY_BY_MAL = """
query ($malId: Int) {
  Media(idMal: $malId, type: ANIME) {
    id
    title { romaji english native }
    format
    startDate { year }
  }
}
"""

def anilist_query(payload, retries=4):
    """إرسال GraphQL لـ AniList مع retry عند 429"""
    for attempt in range(retries):
        try:
            resp = http_post_json(ANILIST_API, payload)
            errors = resp.get("errors", [])
            if errors:
                msg = errors[0].get("message", "")
                status = errors[0].get("status", 0)
                if status == 429 or "Too Many" in msg:
                    wait = RETRY_DELAY * (attempt + 1)
                    log(f"  ⏳ 429 Rate limit — انتظار {wait}s …")
                    time.sleep(wait)
                    continue
                return None  # خطأ آخر
            return resp
        except urllib.error.HTTPError as e:
            if e.code == 429:
                wait = RETRY_DELAY * (attempt + 1)
                log(f"  ⏳ 429 HTTP — انتظار {wait}s …")
                time.sleep(wait)
            else:
                return None
        except Exception as e:
            log(f"  ⚠️  AniList خطأ: {e}")
            return None
    return None

def anilist_search_by_name(name: str):
    """يبحث بالاسم، يُعيد (anilist_id, title) أو (None, None)"""
    resp = anilist_query({"query": QUERY_BY_NAME, "variables": {"search": name}})
    if resp:
        media = resp.get("data", {}).get("Media")
        if media:
            return media["id"], media["title"].get("romaji") or name
    return None, None

def anilist_search_by_mal(mal_id: int):
    """يبحث بـ MAL ID، يُعيد anilist_id أو None"""
    resp = anilist_query({"query": QUERY_BY_MAL, "variables": {"malId": mal_id}})
    if resp:
        media = resp.get("data", {}).get("Media")
        if media:
            return media["id"]
    return None

# ─── أدوات مساعدة ────────────────────────────────────────────────────────────

def normalize(s: str) -> str:
    s = unicodedata.normalize("NFKD", s or "").lower()
    s = re.sub(r"[^a-z0-9\s]", "", s)
    return s.strip()

def log(msg: str):
    print(msg, flush=True)
    with open(LOG_FILE, "a") as f:
        f.write(msg + "\n")

def write_unmatched(name: str):
    with open(UNMATCHED, "a") as f:
        f.write(name + "\n")

# ─── وضع 1: aw_links ─────────────────────────────────────────────────────────

def fill_aw_links(dry_run=False):
    log("\n📋  [aw_links] جلب الأنميات بدون anilist_id …")
    rows = sb_get_all("aw_links",
                      "anime_id,anime_name",
                      "&anilist_id=is.null")
    # اجمع الأسماء الفريدة
    unique: dict[str, str] = {}  # anime_name → anime_id
    for r in rows:
        name = r.get("anime_name") or ""
        if name and name not in unique:
            unique[name] = r.get("anime_id", name)

    log(f"  → {len(unique):,} اسم مختلف بدون anilist_id")

    found = 0
    not_found = 0
    errors = 0

    def process(name_id):
        name, anime_id = name_id
        time.sleep(DELAY)
        anilist_id, matched_title = anilist_search_by_name(name)
        return name, anime_id, anilist_id, matched_title

    names_list = list(unique.items())

    with ThreadPoolExecutor(max_workers=WORKERS) as ex:
        futures = {ex.submit(process, item): item for item in names_list}
        done = 0
        for fut in as_completed(futures):
            done += 1
            try:
                name, anime_id, anilist_id, matched_title = fut.result()
            except Exception as e:
                errors += 1
                log(f"  ⚠️  خطأ: {e}")
                continue

            if anilist_id:
                # حدّث كل الصفوف التي لها نفس anime_name
                url = f"{SB_URL}/rest/v1/aw_links?anime_name=eq.{urllib.parse.quote(name)}&anilist_id=is.null"
                if not dry_run:
                    try:
                        http_patch(url, {"anilist_id": anilist_id}, sb_headers())
                    except Exception as e:
                        log(f"  ⚠️  PATCH فشل لـ «{name}»: {e}")
                        errors += 1
                        continue
                found += 1
                log(f"  ✅ [{done}/{len(names_list)}] «{name}» → {anilist_id} ({matched_title})")
            else:
                not_found += 1
                write_unmatched(name)
                log(f"  🎬 [{done}/{len(names_list)}] «{name}» → لم يُوجد (animation/غير معروف)")

    log(f"\n  📊 aw_links نتائج: ✅ {found} مربوط | 🎬 {not_found} animation | ⚠️ {errors} خطأ")
    return found, not_found

# ─── وضع 2: anime table (بـ mal_id) ─────────────────────────────────────────

def fill_anime_table(dry_run=False):
    log("\n📋  [anime] جلب الأنمي بـ mal_id لربطها بـ anilist_id …")

    # أولاً: افحص إذا كان عمود anilist_id موجود
    sample = sb_get_all("anime", "id,mal_id,title", "&limit=1", page_size=1)
    if sample and "anilist_id" not in (sample[0].keys() if sample else {}):
        log("  ⚠️  جدول anime ليس فيه عمود anilist_id — سيتم إضافة المعلومات في log فقط")
        # نُنشئ جدول mapping محلي للاستخدام في fill_episodes
        _fill_anime_mapping_only(dry_run)
        return

    rows = sb_get_all("anime", "id,mal_id,title", "&anilist_id=is.null&mal_id=not.is.null")
    log(f"  → {len(rows):,} أنمي بـ mal_id بدون anilist_id")

    found = 0
    not_found = 0

    def process(row):
        time.sleep(DELAY)
        mal_id = row.get("mal_id")
        anilist_id = anilist_search_by_mal(int(mal_id)) if mal_id else None
        return row, anilist_id

    with ThreadPoolExecutor(max_workers=WORKERS) as ex:
        futures = {ex.submit(process, r): r for r in rows}
        done = 0
        for fut in as_completed(futures):
            done += 1
            try:
                row, anilist_id = fut.result()
            except Exception as e:
                log(f"  ⚠️  خطأ: {e}")
                continue

            if anilist_id:
                if not dry_run:
                    try:
                        sb_patch_row("anime", row["id"], {"anilist_id": anilist_id})
                    except Exception as e:
                        log(f"  ⚠️  PATCH anime {row['id']}: {e}")
                        continue
                found += 1
                log(f"  ✅ [{done}/{len(rows)}] «{row['title']}» MAL:{row['mal_id']} → AL:{anilist_id}")
            else:
                not_found += 1
                log(f"  ❌ [{done}/{len(rows)}] «{row['title']}» MAL:{row['mal_id']} → لم يُوجد")

    log(f"\n  📊 anime نتائج: ✅ {found} | ❌ {not_found}")

def _fill_anime_mapping_only(dry_run=False):
    """يبني mapping محلي mal_id → anilist_id ويكتبه لملف"""
    rows = sb_get_all("anime", "id,mal_id,title")
    log(f"  → {len(rows):,} أنمي في الجدول (بناء mapping محلي)")
    mapping = {}
    done = 0
    for row in rows:
        done += 1
        mal_id = row.get("mal_id")
        if not mal_id:
            continue
        time.sleep(DELAY)
        anilist_id = anilist_search_by_mal(int(mal_id))
        if anilist_id:
            mapping[int(mal_id)] = anilist_id
            log(f"  ✅ [{done}/{len(rows)}] {row['title']} → AL:{anilist_id}")
        else:
            log(f"  ❌ [{done}/{len(rows)}] {row['title']} → لم يُوجد")
    # حفظ الـ mapping
    with open("/tmp/mal_to_anilist.json", "w") as f:
        json.dump(mapping, f)
    log(f"  💾 mapping محفوظ في /tmp/mal_to_anilist.json ({len(mapping)} إدخال)")

# ─── وضع 3: episodes table ───────────────────────────────────────────────────

def fill_episodes(dry_run=False):
    log("\n📋  [episodes] ربط anilist_id من جدول anime …")

    # جلب anime table كـ mapping: id → anilist_id
    anime_rows = sb_get_all("anime", "id,mal_id,title")
    # حاول تحميل mal→anilist mapping من الوضع 2
    mal_map = {}
    try:
        with open("/tmp/mal_to_anilist.json") as f:
            mal_map = {int(k): v for k, v in json.load(f).items()}
    except FileNotFoundError:
        pass

    anime_to_anilist: dict[int, int] = {}
    for r in anime_rows:
        aid = r.get("id")
        mal = r.get("mal_id")
        if aid and mal and int(mal) in mal_map:
            anime_to_anilist[int(aid)] = mal_map[int(mal)]

    if not anime_to_anilist:
        log("  ⚠️  لا يوجد mapping جاهز — شغّل وضع anime أولاً أو أضف anilist_id لجدول anime")
        return

    log(f"  → mapping جاهز لـ {len(anime_to_anilist)} أنمي")

    # جلب episodes بدون anilist_id
    episodes = sb_get_all("episodes", "id,anime_id", "&anilist_id=is.null")
    log(f"  → {len(episodes):,} حلقة بدون anilist_id")

    updated = 0
    skipped = 0
    for ep in episodes:
        anime_id = ep.get("anime_id")
        anilist_id = anime_to_anilist.get(int(anime_id or 0))
        if not anilist_id:
            skipped += 1
            continue
        if not dry_run:
            try:
                sb_patch_row("episodes", ep["id"], {"anilist_id": anilist_id})
            except Exception as e:
                log(f"  ⚠️  PATCH episode {ep['id']}: {e}")
                continue
        updated += 1

    log(f"\n  📊 episodes: ✅ {updated} مُحدَّث | ⏭️ {skipped} بدون mapping")

# ─── Main ─────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="ملء anilist_id في Supabase")
    parser.add_argument("--mode", choices=["aw_links", "anime", "episodes", "all"],
                        default="all", help="الجدول المراد معالجته")
    parser.add_argument("--dry-run", action="store_true",
                        help="تجريب بدون تعديل فعلي")
    args = parser.parse_args()

    open(LOG_FILE, "w").close()   # مسح القديم
    open(UNMATCHED, "w").close()

    log(f"🚀  fill_anilist_ids — mode={args.mode} | dry_run={args.dry_run}")
    log(f"    Supabase: {SB_URL}")
    log(f"    Log: {LOG_FILE}")
    log(f"    Animation unmatched: {UNMATCHED}\n")

    if args.mode in ("aw_links", "all"):
        fill_aw_links(dry_run=args.dry_run)

    if args.mode in ("anime", "all"):
        fill_anime_table(dry_run=args.dry_run)

    if args.mode in ("episodes", "all"):
        fill_episodes(dry_run=args.dry_run)

    log("\n✅  اكتمل — راجع /tmp/fill_anilist_ids.log")
    log(f"🎬  الأنميشن غير المربوط: /tmp/animation_unmatched.txt")

if __name__ == "__main__":
    main()

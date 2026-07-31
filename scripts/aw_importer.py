#!/usr/bin/env python3
"""
aw_importer.py — AnimeWitcher Firestore → PostgreSQL bulk importer
يسحب كل روابط Firestore (MF, PD, VT, KF) ويخزّنها في جدول aw_links
الاستخدام: python3 aw_importer.py [--workers 30] [--dry-run]
"""

import os, sys, time, json, logging, argparse
import urllib.request, urllib.error
from urllib.parse import quote, urlencode
from concurrent.futures import ThreadPoolExecutor, as_completed
from threading import Lock

# ── إعداد الـ logging ──────────────────────────────────────────────────────
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.StreamHandler(sys.stdout),
        logging.FileHandler("/tmp/aw_importer.log", encoding="utf-8"),
    ],
)
log = logging.getLogger("aw_importer")

# ── إعدادات ────────────────────────────────────────────────────────────────
FS_BASE    = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents"
PAGE_SIZE  = 300          # max حجم الصفحة في Firestore
GOOD_SERVERS = {"MF", "MF2", "PD", "VT", "KF"}  # نحذف ST (Streamtape محجوب)
TIMEOUT    = 12

# ── إحصائيات ──────────────────────────────────────────────────────────────
stats = {"anime": 0, "episodes": 0, "links": 0, "skipped": 0, "errors": 0}
stats_lock = Lock()

# ── DB Connection ──────────────────────────────────────────────────────────
_db_conn = None
_db_lock = Lock()

def get_db():
    global _db_conn
    if _db_conn is None or _db_conn.closed:
        import psycopg2
        db_url = os.environ.get("DATABASE_URL", "")
        if not db_url:
            raise RuntimeError("DATABASE_URL غير موجود في البيئة")
        _db_conn = psycopg2.connect(db_url)
        _db_conn.autocommit = False
    return _db_conn


def fs_get(path: str, params: dict = {}) -> dict:
    """طلب GET لـ Firestore"""
    qs = ("?" + urlencode(params)) if params else ""
    url = f"{FS_BASE}/{path}{qs}"
    req = urllib.request.Request(url, headers={"Accept": "application/json"})
    with urllib.request.urlopen(req, timeout=TIMEOUT) as r:
        return json.load(r)


def extract_field(fields: dict, key: str) -> str:
    """استخرج قيمة من Firestore field map"""
    v = fields.get(key, {})
    if not v:
        return ""
    val = list(v.values())[0]
    return str(val) if val is not None else ""


def fetch_all_anime_ids() -> list[dict]:
    """يجلب كل الأنمي من Firestore (paginated) ← anime_id, name, anilist_id"""
    log.info("جلب قائمة الأنمي من Firestore...")
    results, page_token = [], ""
    page = 0
    while True:
        params = {"pageSize": PAGE_SIZE}
        if page_token:
            params["pageToken"] = page_token
        try:
            data = fs_get("anime_list", params)
        except Exception as e:
            log.error(f"خطأ في صفحة anime_list {page}: {e}")
            break

        docs = data.get("documents", [])
        for doc in docs:
            doc_id    = doc["name"].split("/")[-1]
            fields    = doc.get("fields", {})
            name      = extract_field(fields, "name")
            anilist   = extract_field(fields, "aniList_id")
            results.append({
                "anime_id":   doc_id,
                "anime_name": name,
                "anilist_id": int(anilist) if anilist and anilist.isdigit() else None,
            })

        page_token = data.get("nextPageToken", "")
        page += 1
        log.info(f"  صفحة {page}: +{len(docs)} أنمي (المجموع: {len(results)})")
        if not page_token:
            break
        time.sleep(0.15)

    log.info(f"✅ إجمالي الأنمي: {len(results)}")
    return results


def fetch_episodes(anime_id: str) -> list[dict]:
    """يجلب كل حلقات أنمي معيّن"""
    episodes, page_token = [], ""
    while True:
        params = {"pageSize": PAGE_SIZE}
        if page_token:
            params["pageToken"] = page_token
        try:
            path = f"anime_list/{quote(anime_id)}/episodes"
            data = fs_get(path, params)
        except Exception:
            break

        docs = data.get("documents", [])
        for doc in docs:
            ep_id  = doc["name"].split("/")[-1]
            fields = doc.get("fields", {})
            num_str = extract_field(fields, "doc_id") or ep_id
            try:
                num = int(num_str.lstrip("0") or "0") or int(ep_id.lstrip("0") or "0")
            except Exception:
                num = 0
            episodes.append({"ep_id": ep_id, "ep_number": num})

        page_token = data.get("nextPageToken", "")
        if not page_token:
            break
        time.sleep(0.05)

    return episodes


def fetch_servers(anime_id: str, ep_id: str) -> list[dict]:
    """يجلب servers subcollection لحلقة معيّنة"""
    try:
        path = f"anime_list/{quote(anime_id)}/episodes/{quote(ep_id)}/servers"
        data = fs_get(path, {"pageSize": 30})
        rows = []
        for doc in data.get("documents", []):
            fields  = doc.get("fields", {})
            name    = extract_field(fields, "name").upper()
            link    = extract_field(fields, "link")
            quality = extract_field(fields, "quality") or "720p"
            visible = extract_field(fields, "visible")

            if not link or not name:
                continue
            if visible.lower() == "false":
                continue
            if name not in GOOD_SERVERS:
                continue

            rows.append({"server": name, "link": link, "quality": quality})
        return rows
    except Exception:
        return []


def upsert_batch(rows: list[dict], dry_run: bool):
    """Upsert مجموعة صفوف في aw_links"""
    if dry_run or not rows:
        return
    sql = """
        INSERT INTO aw_links (anime_id, anime_name, anilist_id, ep_number, ep_id, server, quality, link)
        VALUES (%(anime_id)s, %(anime_name)s, %(anilist_id)s, %(ep_number)s, %(ep_id)s, %(server)s, %(quality)s, %(link)s)
        ON CONFLICT (anime_id, ep_id, server)
        DO UPDATE SET
            link        = EXCLUDED.link,
            quality     = EXCLUDED.quality,
            anime_name  = EXCLUDED.anime_name,
            anilist_id  = EXCLUDED.anilist_id,
            imported_at = NOW()
    """
    with _db_lock:
        try:
            conn = get_db()
            cur  = conn.cursor()
            cur.executemany(sql, rows)
            conn.commit()
        except Exception as e:
            conn.rollback()
            log.error(f"DB error: {e}")
            with stats_lock:
                stats["errors"] += len(rows)


def process_anime(anime: dict, dry_run: bool) -> int:
    """يعالج أنمي واحد: يجلب حلقاته + servers + يخزّن"""
    anime_id   = anime["anime_id"]
    anime_name = anime["anime_name"]
    anilist_id = anime["anilist_id"]

    try:
        episodes = fetch_episodes(anime_id)
    except Exception as e:
        log.warning(f"[{anime_id}] fetch_episodes error: {e}")
        with stats_lock:
            stats["errors"] += 1
        return 0

    batch = []
    for ep in episodes:
        servers = fetch_servers(anime_id, ep["ep_id"])
        for srv in servers:
            batch.append({
                "anime_id":   anime_id,
                "anime_name": anime_name,
                "anilist_id": anilist_id,
                "ep_number":  ep["ep_number"],
                "ep_id":      ep["ep_id"],
                "server":     srv["server"],
                "quality":    srv["quality"],
                "link":       srv["link"],
            })

    with stats_lock:
        stats["episodes"] += len(episodes)
        stats["links"]    += len(batch)

    upsert_batch(batch, dry_run)
    return len(batch)


def print_stats():
    log.info(
        f"📊 الإحصائيات: أنمي={stats['anime']} | حلقات={stats['episodes']} "
        f"| روابط={stats['links']} | أخطاء={stats['errors']}"
    )


# ── Main ───────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--workers",  type=int, default=25, help="عدد الـ threads المتوازية")
    parser.add_argument("--dry-run",  action="store_true",  help="تجربة بدون كتابة في DB")
    parser.add_argument("--start-at", type=int, default=0,  help="ابدأ من index معيّن (للاستئناف)")
    args = parser.parse_args()

    log.info(f"🚀 بدء الاستيراد | workers={args.workers} | dry_run={args.dry_run}")
    start_time = time.time()

    # جلب قائمة الأنمي
    all_anime = fetch_all_anime_ids()
    if args.start_at > 0:
        log.info(f"↩️  الاستئناف من index {args.start_at}")
        all_anime = all_anime[args.start_at:]

    total = len(all_anime)
    done  = 0

    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(process_anime, a, args.dry_run): a for a in all_anime}
        for fut in as_completed(futures):
            done += 1
            with stats_lock:
                stats["anime"] += 1
            if done % 100 == 0 or done == total:
                elapsed = time.time() - start_time
                rate    = done / elapsed * 60
                remaining = (total - done) / (done / elapsed) if done else 0
                log.info(
                    f"[{done}/{total}] ⏱ {elapsed/60:.1f}دق | "
                    f"سرعة={rate:.0f} أنمي/دق | متبقّي≈{remaining/60:.1f}دق | "
                    f"روابط={stats['links']:,}"
                )
            if done % 500 == 0:
                print_stats()

    elapsed = time.time() - start_time
    log.info(f"\n✅ اكتمل في {elapsed/60:.1f} دقيقة")
    print_stats()


if __name__ == "__main__":
    # تحميل .env من مسار VPS
    env_path = "/opt/anime-nova/.env"
    if os.path.exists(env_path):
        with open(env_path) as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith("#") and "=" in line:
                    k, _, v = line.partition("=")
                    os.environ.setdefault(k.strip(), v.strip())

    main()

# خطة نظام aw_links — تخزين روابط AnimeWitcher الدائمة

## المشكلة التي نحلّها

عند طلب أي حلقة من مصدر AnimeWitcher، كانت العملية تستغرق **3–5 ثواني** لكل مستخدم:

```
Algolia search (title match)
    ↓ ~800ms
Firestore: جلب episode ID
    ↓ ~400ms
Firestore: جلب servers subcollection
    ↓ ~400ms
MediaFire/Pixeldrain: resolve إلى MP4 مباشر
    ↓ ~1-3s
المجموع: 3–5 ثانية لكل حلقة
```

## الاكتشاف الأساسي

كل حلقة في Firestore لديها **subcollection** اسمها `servers` تحتوي روابط **دائمة** لكل سيرفر:

```
anime_list/{anime_id}/episodes/{ep_id}/servers/{doc}
  → name: "MF"  | link: "https://www.mediafire.com/file/abc.../ep.mp4/file" | quality: "1080p"
  → name: "PD"  | link: "https://pixeldrain.com/u/XYZ"                      | quality: "720p"
  → name: "VT"  | link: "https://vidtube.one/..."                            | quality: "720p"
  → name: "KF"  | link: "https://krakenfiles.com/view/..."                   | quality: "480p"
```

هذه الروابط **دائمة** (page URLs وليست direct CDN URLs).
- **ST (Streamtape)** مستبعد — محجوب من IPs السحابية.

## الجدول الجديد: aw_links

```sql
CREATE TABLE aw_links (
  id          BIGSERIAL PRIMARY KEY,
  anime_id    TEXT    NOT NULL,     -- Firestore doc ID (e.g., "009-1")
  anime_name  TEXT    NOT NULL,     -- اسم الأنمي للمرجعية
  anilist_id  INT,                  -- AniList ID (من Firestore مباشرة، nullable)
  ep_number   INT     NOT NULL,     -- رقم الحلقة (1, 2, 3...)
  ep_id       TEXT    NOT NULL,     -- Firestore episode doc ID (e.g., "001")
  server      TEXT    NOT NULL,     -- MF | PD | VT | KF
  quality     TEXT    NOT NULL,     -- 1080p | 720p | 480p
  link        TEXT    NOT NULL,     -- الرابط الدائم
  imported_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  verified_at TIMESTAMPTZ,          -- آخر تحقق (nullable)
  UNIQUE (anime_id, ep_id, server)  -- لا تكرار لنفس السيرفر/الحلقة
);
```

**Indexes:**
- `idx_aw_links_anilist`  — lookup سريع بـ anilist_id (المسار الأساسي)
- `idx_aw_links_anime_ep` — lookup بـ anime_id + ep_number
- `idx_aw_links_server`   — فلترة بالسيرفر

## سكريبت الاستيراد: scripts/aw_importer.py

### كيف يعمل

```
① fetch_all_anime_ids()
   └─ Firestore /anime_list (paginated, 300/page)
   └─ يحصل على: anime_id, anime_name, anilist_id
   └─ المجموع المتوقع: ~6,413 أنمي

② ThreadPoolExecutor (25 workers موازية)
   └─ لكل أنمي → process_anime()
      ├─ fetch_episodes()    → كل حلقاته من Firestore
      └─ fetch_servers()     → servers subcollection لكل حلقة
         └─ يفلتر: MF, PD, VT, KF فقط (يحذف ST + الفارغة + visible=false)

③ upsert_batch()
   └─ INSERT ... ON CONFLICT DO UPDATE
   └─ batch upsert لكل أنمي
```

### تشغيل الاستيراد على VPS

```bash
# تشغيل مباشر مع 25 worker
cd /opt/anime-nova
python3 scripts/aw_importer.py --workers 25

# أو في الخلفية عبر pm2
pm2 start scripts/aw_importer.py --name aw-importer --interpreter python3

# متابعة التقدم
tail -f /tmp/aw_importer.log
pm2 logs aw-importer
```

### الوقت المتوقع

| المرحلة | التوقع |
|---------|--------|
| جلب 6,413 أنمي | ~5 دقائق |
| جلب الحلقات والـ servers (25 workers) | ~60–90 دقيقة |
| إجمالي الروابط المتوقعة | ~150,000–300,000 رابط |

### الاستئناف بعد انقطاع

```bash
# إذا توقف عند anime #2000
python3 scripts/aw_importer.py --workers 25 --start-at 2000
```

## تكامل API: getAnimeWitcherSources المحسّنة

### المسار الجديد (fast path)

```
getAnimeWitcherSources(title, english, ep, anilistId)
    ↓
① aw_links DB lookup بـ anilist_id + ep_number
   └─ إذا وُجد → resolve MF/PD مباشرة = ~0.5 ثانية ✅
   └─ إذا لم يوجد → fallback للمسار القديم (Algolia + Firestore)

② resolve الرابط الدائم → MP4 مباشر
   MF  → MediaFire API (get_links.php) = ~300ms
   PD  → pixeldrain.com/api/file/{id}  = instant
   VT  → extractVideoDeep              = ~500ms
   KF  → krakenfiles token API         = ~400ms
```

### أولوية السيرفرات

```
PD (Pixeldrain) → أسرع للـ resolve + مجاني
MF (MediaFire)  → دائم + جودة عالية (1080p غالباً)
KF (KrakenFiles) → احتياطي
VT (VidTube)    → احتياطي
```

## ملاحظات مهمة

1. **ديمومة الروابط**: روابط الصفحة دائمة، لكن الملف قد يُحذف من السيرفر.
   - نضيف `verified_at` ونحدّثها عند كل استخدام ناجح.
   - حلقة لم تُستخدم منذ 90 يوم + `verified_at = NULL` → مرشّحة للحذف.

2. **تحديث دوري**: يمكن تشغيل الاستيراد مرة كل أسبوع لالتقاط أنمي جديد.
   ```bash
   # cron كل أحد منتصف الليل
   0 0 * * 0 cd /opt/anime-nova && python3 scripts/aw_importer.py --workers 20 >> /tmp/aw_weekly.log 2>&1
   ```

3. **ST (Streamtape) مستبعد**: كل datacenter IPs محجوبة منه. لا نخزّنه.

4. **Bunny.net**: الحقل `bunny_video_id` في Firestore فارغ لكل الأنمي المفحوصة.
   محذوف من الكود منذ 2026-07-28 (domain suspended).

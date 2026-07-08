---
name: Animatoo App Analysis
description: تحليل كامل لتطبيق Animatoo (animatoo.app) — APK، Supabase DB، نظام الفيديو، وإمكانية الاستفادة في Nova
---

## معلومات التطبيق
- **الموقع**: https://www.animatoo.app
- **APK**: https://cdn.animatoo.app/animatoo-v3.8.6-universal-release.apk (7.9MB)
- **Package name**: `com.shinro.animatoo`
- **Stack**: Kotlin + Jetpack Compose + Supabase-kt + Ktor HTTP + Firebase Analytics/Firestore + Jikan API

## Backend — Supabase PostgreSQL
- **URL**: `https://iwccaogufwaqzrodojvh.supabase.co`
- **Anon Key**: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml3Y2Nhb2d1ZndhcXpyb2RvanZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzkxMTMxNjUsImV4cCI6MjA5NDY4OTE2NX0.hEl_v7cfd1lZMqI3QJAk2eaX-AFw3C_TAAWpkSMMGwk`
- **REST API**: `https://iwccaogufwaqzrodojvh.supabase.co/rest/v1/{table}?apikey={KEY}`

## جداول قاعدة البيانات

### anime (6,339 صف)
| العمود | النوع | ملاحظات |
|--------|-------|----------|
| id | int | PK داخلي |
| slug | text | slug يطابق anime3rb.com |
| title | text | الاسم الأصلي |
| title_ar | text | الاسم العربي |
| en_title | text | الاسم الإنجليزي |
| type | text | TV / Movie / OVA... |
| synopsis | text | عربي |
| rating | float | |
| episode_count | int | |
| status | text | منتهي / يُعرض... |
| season | text | ربيع 2026... |
| release_date | text | |
| age_rating | text | |
| poster_url | text | AniList CDN |
| alternative_names | json[] | |
| external_links | json[] | MAL / AniDB / ANN / Wikipedia |
| banner_url | text | |
| **tmdb_id** | int | **5,949 أنمي لديه tmdb_id** |
| tmdb_season | int | |
| tv_thumb | text | TMDB / Fanart.tv |
| slider_url | text | |
| background | text | |

### episodes (77,395 صف)
| العمود | النوع | ملاحظات |
|--------|-------|----------|
| id | int | PK |
| anime_id | int | FK → anime.id |
| number | int | رقم الحلقة |
| title | text | إنجليزي |
| title_ar | text | عربي |
| **url** | text | **https://anime3rb.com/episode/{slug}/{number}** |
| duration | text | "24:12" |
| thumbnail | text | TMDB CDN |
| air_date | text | |
| description | text | |
| description_ar | text | |
| likes / dislikes | int | |

### genres (77 صف)
id, slug, name_ar, icon_url, image_url

### anime_genres
فارغة (0 صف) — غير مستخدمة حالياً

### user_anime_list
Firebase Firestore — ليس في Supabase

## نظام الفيديو
1. **المصدر الأساسي**: `episodes.url` يشير لـ anime3rb.com/episode/{slug}/{ep}
2. **عند التشغيل**: التطبيق يفتح صفحة anime3rb ويستخرج URL بـ regex:
   - `https?://[^"'\s<>]+vid3rb[^"'\s<>]*\.mp4` → CDN vid3rb.com (CDN خاص بـ anime3rb)
   - `https?://[^"'\s<>]+vid3rb[^"'\s<>]*/video/[^"'\s<>]+`
   - `https?://[^"'\s<>]+/cdn/[^"'\s<>]*(?:mp4|m3u8)`
3. **لا يوجد CDN خاص بأنيماتو** — cdn.animatoo.app للـ APK فقط

## الاستفادة في Nova ⭐⭐⭐
الاكتشاف الأهم: Animatoo DB هي **tmdb_id → anime3rb_slug** mapping لـ 5,949 أنمي.

### كيفية الاستخدام في Nova:
```typescript
// بدلاً من بحث بالعنوان على anime3rb (بطيء + غير دقيق)
// استخدم Supabase DB لجلب الـ slug مباشرة بـ tmdb_id:

const SUPA = 'https://iwccaogufwaqzrodojvh.supabase.co';
const KEY = '...anon key...';

async function getAnime3rbSlugViaTmdb(tmdbId: number): Promise<string|null> {
  const r = await fetch(
    `${SUPA}/rest/v1/anime?select=slug,episode_count&tmdb_id=eq.${tmdbId}&limit=5`,
    { headers: { apikey: KEY, Authorization: `Bearer ${KEY}` } }
  );
  const data = await r.json();
  // اختر الأنمي صاحب أكبر episode_count (الرئيسي)
  const best = data.sort((a,b) => b.episode_count - a.episode_count)[0];
  return best?.slug ?? null;
}

// ثم مباشرة إلى anime3rb:
// const epUrl = `https://anime3rb.com/episode/${slug}/${epNumber}`;
```

### ما يُعطيه هذا لـ Nova:
- **سرعة**: جلب slug بدون HTML parsing أو title matching
- **دقة**: tmdb_id مطابقة مضمونة
- **تغطية**: 5,949 أنمي × slug مؤكد على anime3rb
- **مجاني**: anon key مفتوح بدون rate limiting واضح

## استعلامات Supabase المفيدة لـ Nova
```bash
# البحث بـ en_title
GET /rest/v1/anime?en_title=ilike.*naruto*&select=id,slug,tmdb_id,episode_count

# جلب slug بـ tmdb_id
GET /rest/v1/anime?tmdb_id=eq.46298&select=slug,episode_count

# جلب الحلقات بـ anime_id
GET /rest/v1/episodes?anime_id=eq.{id}&select=number,url&order=number.asc
```

**Why:** Animatoo بنت قاعدة بيانات فريدة تربط TMDB IDs بـ anime3rb slugs — وهذا مجاني ومفتوح بـ anon key.

**How to apply:** عند إضافة scraper لـ anime3rb أو تحسين الحالي → استخدم `tmdb_id → Animatoo Supabase → slug` بدلاً من title search.

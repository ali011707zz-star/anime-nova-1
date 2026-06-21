# نشر Anime NOVA على Koyeb (مجاني دائم)

## المتطلبات
- حساب [Koyeb](https://koyeb.com) (مجاني بدون بطاقة)
- حساب [GitHub](https://github.com) لرفع الكود
- قاعدة بيانات مجانية: [Neon](https://neon.tech) (PostgreSQL دائم، بدون بطاقة)

---

## الخطوة 1 — إعداد قاعدة بيانات Neon

1. سجّل على [neon.tech](https://neon.tech) (مجاني)
2. أنشئ مشروعاً جديداً → نسخ **Connection string** (يبدو هكذا):
   ```
   postgresql://user:pass@ep-xxx.us-east-2.aws.neon.tech/neondb?sslmode=require
   ```
3. افتح **SQL Editor** في Neon وشغّل السكريبتات:
   - `supabase/migrations/001_all_tables.sql`
   - `supabase/migrations/002_missing_tables.sql`

---

## الخطوة 2 — رفع الكود على GitHub

في Replit، افتح **Shell** ونفّذ:

```bash
git remote add origin https://github.com/YOUR_USERNAME/anime-nova.git
git add .
git commit -m "deploy: koyeb setup"
git push -u origin main
```

> إذا طُلب منك كلمة مرور، استخدم **Personal Access Token** من:  
> GitHub → Settings → Developer Settings → Personal access tokens → Tokens (classic)

---

## الخطوة 3 — نشر على Koyeb

1. افتح [app.koyeb.com](https://app.koyeb.com)
2. اضغط **Create Service**
3. اختر **GitHub** → اختر الـ repo
4. اضبط الإعدادات:
   - **Dockerfile path**: `Dockerfile`
   - **Port**: `5000`
   - **Instance**: `Free (Nano)` — 0.1 vCPU / 512MB RAM

---

## الخطوة 4 — متغيرات البيئة على Koyeb

في صفحة الـ Service، اضغط **Environment Variables** وأضف:

| المتغير | القيمة |
|---|---|
| `DATABASE_URL` | connection string من Neon |
| `SESSION_SECRET` | أي نص عشوائي طويل (32 حرف+) |
| `APP_SECRET` | أي نص عشوائي طويل آخر |
| `NODE_ENV` | `production` |
| `CF_PROXY_PORT` | `8001` |

**اختياري** (للمصادقة بالبريد):
| المتغير | القيمة |
|---|---|
| `SMTP_USER` | حساب Gmail |
| `SMTP_PASS` | App Password من Gmail |

---

## الخطوة 5 — نشر

اضغط **Deploy** — Koyeb سيبني الصورة تلقائياً (5-10 دقائق أول مرة).

بعد اكتمال البناء، سيظهر رابط مثل:  
`https://anime-nova-xxx.koyeb.app`

---

## ملاحظات مهمة

- **الـ CF Proxy** يعمل داخل الحاوية على port 8001 — يساعد في تجاوز Cloudflare لبعض المصادر
- **قاعدة البيانات الحالية** (Replit PostgreSQL) لن تعمل على Koyeb — لازم Neon
- **Koyeb Free Tier**: 1 سيرفيس فقط، بدون نوم (always-on)، 512MB RAM
- إذا امتلأت الـ RAM (512MB)، بعض المشاهد المتزامنة ستبطؤ — الحل: Koyeb Starter ($2.8/شهر)

---

## إعادة النشر التلقائية

بعد ربط GitHub، أي `git push` سيُشغّل build جديد تلقائياً.

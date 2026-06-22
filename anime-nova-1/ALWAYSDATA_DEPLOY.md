# نشر Anime NOVA على AlwaysData — مجاني بدون بطاقة

## المتطلبات
- حساب AlwaysData موجود ✅ (anime08963)
- SSH: `ssh-anime08963.alwaysdata.net`

---

## الخطوة 1 — رفع الملفات عبر SSH

افتح Shell في Replit ونفّذ:

```bash
# اضغط على كلمة المرور الجديدة (بعد تغييرها)
sftp anime08963@ssh-anime08963.alwaysdata.net << 'EOF'
mkdir anime-nova
mkdir anime-nova/artifacts
mkdir anime-nova/artifacts/api-server
mkdir anime-nova/artifacts/api-server/dist
mkdir anime-nova/artifacts/anime-scraper
mkdir anime-nova/artifacts/anime-scraper/dist
mkdir anime-nova/scripts
quit
EOF
```

ثم ارفع الملفات المبنية:
```bash
scp -r artifacts/api-server/dist/ anime08963@ssh-anime08963.alwaysdata.net:~/anime-nova/artifacts/api-server/
scp -r artifacts/anime-scraper/dist/ anime08963@ssh-anime08963.alwaysdata.net:~/anime-nova/artifacts/anime-scraper/
scp scripts/cf_proxy.py anime08963@ssh-anime08963.alwaysdata.net:~/anime-nova/scripts/
scp alwaysdata-start.sh anime08963@ssh-anime08963.alwaysdata.net:~/anime-nova/
```

---

## الخطوة 2 — تثبيت Node.js عبر SSH

```bash
ssh anime08963@ssh-anime08963.alwaysdata.net

# داخل AlwaysData:
mkdir -p ~/.local
curl -fsSL https://nodejs.org/dist/v20.18.0/node-v20.18.0-linux-x64.tar.gz \
  | tar -xz -C ~/.local --strip-components=1

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
node --version   # يجب أن يظهر v20.x.x

# تثبيت مكتبات node اللازمة
cd ~/anime-nova
npm install --prefix . nodemailer pg
```

---

## الخطوة 3 — إعداد الموقع في لوحة التحكم

1. افتح **admin.alwaysdata.com**
2. اذهب إلى **Web → Sites → Add a site**
3. اختر **Node.js**
4. اضبط:
   - **Name**: anime-nova
   - **Command**: `bash /home/anime08963/anime-nova/alwaysdata-start.sh`
   - **Working directory**: `/home/anime08963/anime-nova`
5. احفظ

---

## الخطوة 4 — متغيرات البيئة

في لوحة التحكم → **Environment → Add variable**:

| المتغير | القيمة |
|--------|--------|
| `DATABASE_URL` | connection string من Neon (مجاني) |
| `SESSION_SECRET` | `nova-anime-secret-2024` |
| `APP_SECRET` | `534def19634fbf8584b48eb725318ad53f9a966b88b1fadbc460de73014d2c6c` |
| `NODE_ENV` | `production` |

---

## قاعدة البيانات المجانية (Neon)

AlwaysData لا توفر PostgreSQL في الخطة المجانية — استخدم **[neon.tech](https://neon.tech)** (مجاني، بدون بطاقة):

1. سجّل → أنشئ مشروع → انسخ Connection String
2. افتح **SQL Editor** في Neon وشغّل:
   - `supabase/migrations/001_all_tables.sql`
   - `supabase/migrations/002_missing_tables.sql`

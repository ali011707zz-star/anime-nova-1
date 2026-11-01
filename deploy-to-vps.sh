#!/bin/bash
# =============================================================================
#  Anime NOVA — سكريبت النشر التلقائي على VPS
#  الاستخدام: bash deploy-to-vps.sh
# =============================================================================
set -e

REPO_URL="https://github.com/ali011707zz-star/anime-nova-1"
APP_DIR="/opt/anime-nova"
APP_PORT=5000
NODE_VERSION="20"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

log()  { echo -e "${GREEN}[✓]${NC} $1"; }
warn() { echo -e "${YELLOW}[!]${NC} $1"; }
err()  { echo -e "${RED}[✗]${NC} $1"; exit 1; }

echo ""
echo "╔══════════════════════════════════════╗"
echo "║    Anime NOVA — VPS Deployment       ║"
echo "╚══════════════════════════════════════╝"
echo ""

# ── 1. مواصفات الخادم ──────────────────────────────────────────────────────
echo "📊 مواصفات الخادم:"
echo "  النظام   : $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '\"')"
echo "  CPU      : $(nproc) cores — $(grep 'model name' /proc/cpuinfo | head -1 | cut -d: -f2 | xargs)"
echo "  RAM      : $(free -h | awk '/^Mem:/ {print $2}') total, $(free -h | awk '/^Mem:/ {print $7}') available"
echo "  Disk     : $(df -h / | awk 'NR==2 {print $4}') free of $(df -h / | awk 'NR==2 {print $2}')"
echo ""

# ── 2. تثبيت الأدوات الأساسية ────────────────────────────────────────────
log "تحديث قائمة الحزم..."
apt-get update -qq

log "تثبيت الأدوات الأساسية (git, curl, nginx)..."
apt-get install -y -qq git curl wget nginx 2>/dev/null

# ── 3. تثبيت Node.js ────────────────────────────────────────────────────────
if ! command -v node &>/dev/null || [[ "$(node -v | cut -d. -f1 | tr -d 'v')" -lt "$NODE_VERSION" ]]; then
  log "تثبيت Node.js $NODE_VERSION..."
  curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - -qq
  apt-get install -y -qq nodejs
else
  log "Node.js موجود: $(node -v)"
fi

# ── 4. تثبيت pnpm ────────────────────────────────────────────────────────────
if ! command -v pnpm &>/dev/null; then
  log "تثبيت pnpm..."
  npm install -g pnpm@latest --quiet
else
  log "pnpm موجود: $(pnpm -v)"
fi

# ── 5. تثبيت PM2 (مدير العمليات) ─────────────────────────────────────────
if ! command -v pm2 &>/dev/null; then
  log "تثبيت PM2..."
  npm install -g pm2 --quiet
else
  log "PM2 موجود: $(pm2 -v)"
fi

# ── 6. سحب الكود من GitHub ───────────────────────────────────────────────
if [ -d "$APP_DIR/.git" ]; then
  log "تحديث الكود الموجود..."
  cd "$APP_DIR"
  git pull origin main 2>/dev/null || git pull origin master 2>/dev/null || warn "لم يتم التحديث — قد تحتاج إعداد Git credentials"
else
  log "تحميل الكود من GitHub..."
  git clone "$REPO_URL" "$APP_DIR"
  cd "$APP_DIR"
fi

# ── 7. إعداد متغيرات البيئة ──────────────────────────────────────────────
ENV_FILE="$APP_DIR/.env"
if [ ! -f "$ENV_FILE" ]; then
  warn "ملف .env غير موجود — سيتم إنشاؤه..."
  cat > "$ENV_FILE" << 'ENVEOF'
# ═══════════════════════════════════════════════
#  Anime NOVA — متغيرات البيئة
#  عدّل القيم أدناه بقيمك الحقيقية
# ═══════════════════════════════════════════════

# [مطلوب] رابط قاعدة البيانات PostgreSQL / Supabase
DATABASE_URL=postgresql://USER:PASSWORD@HOST:5432/DATABASE

# [مطلوب] Supabase
SUPABASE_URL=https://YOUR_PROJECT.supabase.co
SUPABASE_SERVICE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...

# [مطلوب] مفتاح الجلسة (أي نص عشوائي طويل)
SESSION_SECRET=change-me-to-a-long-random-string-at-least-32-chars

# [اختياري] Telegram Bot
TELEGRAM_BOT_TOKEN=
TELEGRAM_CHANNEL_ID=
TELEGRAM_CHAT_ID=

# [اختياري] البريد الإلكتروني SMTP
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=
SMTP_PASS=

# إعدادات الخادم
PORT=5000
NODE_ENV=production
APP_DOMAIN=95.182.93.105
ENVEOF
  echo ""
  warn "════════════════════════════════════════════════"
  warn "  يجب عليك تعديل ملف .env قبل تشغيل الخادم!   "
  warn "  الأمر: nano $ENV_FILE                         "
  warn "════════════════════════════════════════════════"
  echo ""
  read -p "هل تريد تعديل .env الآن؟ [y/N]: " EDIT_ENV
  if [[ "$EDIT_ENV" =~ ^[Yy]$ ]]; then
    nano "$ENV_FILE"
  fi
else
  log "ملف .env موجود ✓"
fi

# خدمة Consumet مستقلة — لا تُضمّن داخل Nova حتى يمكن تحديثها أو إيقافها
# دون التأثير على API الرئيسي.
CONSUMET_DIR="/opt/consumet-api"
CONSUMET_REPO="https://github.com/solo12345689/api.consumet.org.git"
if ! grep -q '^CONSUMET_API_URL=' "$ENV_FILE"; then
  echo "CONSUMET_API_URL=http://127.0.0.1:3000" >> "$ENV_FILE"
fi
if [ -d "$CONSUMET_DIR/.git" ]; then
  log "تحديث Consumet..."
  git -C "$CONSUMET_DIR" pull --ff-only origin main 2>/dev/null || warn "تعذر تحديث Consumet — سيُستخدم الإصدار الموجود"
else
  log "تحميل Consumet..."
  git clone "$CONSUMET_REPO" "$CONSUMET_DIR"
fi
log "تثبيت تبعيات Consumet..."
cd "$CONSUMET_DIR"
npm install --no-audit --no-fund

# ── 8. تثبيت التبعيات والبناء ────────────────────────────────────────────
cd "$APP_DIR"
log "تثبيت التبعيات (pnpm install)..."
pnpm install --prefer-offline --ignore-scripts 2>/dev/null || pnpm install --ignore-scripts

log "بناء الخادم الخلفي..."
pnpm --filter @workspace/api-server run build

log "بناء الواجهة الأمامية..."
GOOGLE_CLIENT_ID="$(sed -n 's/^[[:space:]]*GOOGLE_CLIENT_ID[[:space:]]*=[[:space:]]*//p' "$ENV_FILE" | tail -n 1)"
GOOGLE_CLIENT_ID="$GOOGLE_CLIENT_ID" VITE_API_URL= NODE_ENV=production \
  pnpm --filter @workspace/anime-scraper run build

# ── 9. إعداد PM2 ─────────────────────────────────────────────────────────
log "إعداد PM2..."
cat > "$APP_DIR/ecosystem.config.cjs" << ECOSEOF
module.exports = {
  apps: [
    {
      name: "anime-nova-api",
      script: "node",
      args: "--enable-source-maps artifacts/api-server/dist/index.mjs",
      cwd: "$APP_DIR",
      env_file: "$APP_DIR/.env",
      instances: 1,
      autorestart: true,
      watch: false,
      max_memory_restart: "512M",
      error_file: "/var/log/anime-nova/error.log",
      out_file: "/var/log/anime-nova/out.log",
      log_date_format: "YYYY-MM-DD HH:mm:ss"
    },
    {
      name: "consumet-api",
      script: "/usr/bin/npm",
      args: "run start",
      cwd: "$CONSUMET_DIR",
      env: { NODE_ENV: "PROD", PORT: "3000" },
      autorestart: true,
      watch: false,
      max_memory_restart: "512M",
      error_file: "/var/log/anime-nova/consumet-error.log",
      out_file: "/var/log/anime-nova/consumet-out.log"
    }
  ]
};
ECOSEOF

mkdir -p /var/log/anime-nova

# إيقاف أي نسخة قديمة
pm2 delete anime-nova-api 2>/dev/null || true
pm2 delete consumet-api 2>/dev/null || true

# تشغيل الخادم
pm2 start "$APP_DIR/ecosystem.config.cjs"
pm2 save
pm2 startup | tail -1 | bash 2>/dev/null || true

# ── 10. إعداد Nginx ──────────────────────────────────────────────────────
log "إعداد Nginx كـ reverse proxy..."
cat > /etc/nginx/sites-available/anime-nova << NGINXEOF
server {
    listen 80;
    server_name 95.182.93.105 _;

    # الحد الأقصى لحجم الرفع
    client_max_body_size 50M;

    # Proxy للـ API
    location /api/ {
        proxy_pass http://127.0.0.1:$APP_PORT;
        proxy_http_version 1.1;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_cache_bypass \$http_upgrade;
        proxy_read_timeout 300s;
        proxy_connect_timeout 75s;
    }

    # كل شيء للخادم الخلفي
    location / {
        proxy_pass http://127.0.0.1:$APP_PORT;
        proxy_http_version 1.1;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_cache_bypass \$http_upgrade;
        proxy_read_timeout 300s;
    }
}
NGINXEOF

ln -sf /etc/nginx/sites-available/anime-nova /etc/nginx/sites-enabled/
rm -f /etc/nginx/sites-enabled/default
nginx -t && systemctl restart nginx && systemctl enable nginx

# ── 11. فتح المنافذ في الجدار الناري ─────────────────────────────────────
if command -v ufw &>/dev/null; then
  log "فتح المنافذ في UFW..."
  ufw allow 22/tcp   2>/dev/null || true
  ufw allow 80/tcp   2>/dev/null || true
  ufw allow 443/tcp  2>/dev/null || true
  ufw --force enable 2>/dev/null || true
fi

# ── 12. الملخص النهائي ───────────────────────────────────────────────────
echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║              ✅ النشر اكتمل بنجاح!                   ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""
echo "  🌐 الخادم يعمل على: http://95.182.93.105"
echo "  📁 مجلد المشروع  : $APP_DIR"
echo "  📋 ملف البيئة    : $ENV_FILE"
echo ""
echo "  ──────────────── أوامر مفيدة ────────────────"
echo "  pm2 status            ← حالة الخادم"
echo "  pm2 logs anime-nova-api ← عرض السجلات"
echo "  pm2 restart anime-nova-api ← إعادة التشغيل"
echo "  nano $ENV_FILE        ← تعديل الإعدادات"
echo ""
pm2 status

#!/bin/bash
# ============================================================
#  Anime NOVA — VPS Deploy Script
#  يعمل على: Ubuntu 22.04 / Debian 12 (rawhq, DigitalOcean, Hetzner...)
#  الاستخدام: bash vps-deploy.sh
# ============================================================
set -e

REPO="https://github.com/ali011707zz-star/anime-nova-1"
APP_DIR="/opt/anime-nova"
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'

info()    { echo -e "${GREEN}[nova]${NC} $1"; }
warning() { echo -e "${YELLOW}[nova]${NC} $1"; }
error()   { echo -e "${RED}[nova]${NC} $1"; exit 1; }

# ── 1. تحقق من صلاحيات root ───────────────────────────────
if [ "$EUID" -ne 0 ]; then
  error "شغّل السكريبت كـ root: sudo bash vps-deploy.sh"
fi

info "=== Anime NOVA VPS Setup ==="

# ── 2. تحديث النظام ───────────────────────────────────────
info "تحديث النظام..."
apt-get update -qq
apt-get install -y -qq curl git ca-certificates gnupg

# ── 3. تثبيت Docker ───────────────────────────────────────
if ! command -v docker &>/dev/null; then
  info "تثبيت Docker..."
  curl -fsSL https://get.docker.com | sh
  systemctl enable docker
  systemctl start docker
else
  info "Docker موجود مسبقاً ✓"
fi

# ── 4. تثبيت Docker Compose ───────────────────────────────
if ! command -v docker-compose &>/dev/null && ! docker compose version &>/dev/null 2>&1; then
  info "تثبيت Docker Compose..."
  COMPOSE_VER=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep '"tag_name"' | cut -d'"' -f4)
  curl -SL "https://github.com/docker/compose/releases/download/${COMPOSE_VER}/docker-compose-linux-x86_64" \
    -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
else
  info "Docker Compose موجود مسبقاً ✓"
fi

# ── 5. استنساخ/تحديث الكود ───────────────────────────────
if [ -d "$APP_DIR/.git" ]; then
  info "تحديث الكود من GitHub..."
  cd "$APP_DIR"
  git pull origin main
else
  info "استنساخ الكود من GitHub..."
  git clone "$REPO" "$APP_DIR"
  cd "$APP_DIR"
fi

# ── 6. إنشاء ملف البيئة ───────────────────────────────────
if [ ! -f "$APP_DIR/.env.production" ]; then
  warning "لم يُوجد .env.production — سنُنشئه الآن."
  echo ""
  echo "أدخل بيانات قاعدة البيانات PostgreSQL:"
  read -rp "DATABASE_URL (postgresql://user:pass@host:5432/db): " DB_URL
  read -rp "SESSION_SECRET (نص عشوائي طويل): " SESSION_SECRET

  cat > "$APP_DIR/.env.production" <<EOF
DATABASE_URL=${DB_URL}
SESSION_SECRET=${SESSION_SECRET}
NODE_ENV=production
PORT=8080
CF_PROXY_PORT=8082
EOF

  echo ""
  echo "هل تريد إضافة Google OAuth؟ (اتركه فارغاً للتخطي)"
  read -rp "GOOGLE_CLIENT_ID: " GOOG_ID
  read -rp "GOOGLE_CLIENT_SECRET: " GOOG_SECRET
  if [ -n "$GOOG_ID" ]; then
    echo "GOOGLE_CLIENT_ID=${GOOG_ID}" >> "$APP_DIR/.env.production"
    echo "GOOGLE_CLIENT_SECRET=${GOOG_SECRET}" >> "$APP_DIR/.env.production"
  fi

  echo ""
  echo "هل تريد إضافة GitHub OAuth؟ (اتركه فارغاً للتخطي)"
  read -rp "GITHUB_CLIENT_ID: " GH_ID
  read -rp "GITHUB_CLIENT_SECRET: " GH_SECRET
  if [ -n "$GH_ID" ]; then
    echo "GITHUB_CLIENT_ID=${GH_ID}" >> "$APP_DIR/.env.production"
    echo "GITHUB_CLIENT_SECRET=${GH_SECRET}" >> "$APP_DIR/.env.production"
  fi

  info "تم حفظ .env.production ✓"
else
  info ".env.production موجود مسبقاً ✓"
fi

# ── 7. بناء وتشغيل ───────────────────────────────────────
cd "$APP_DIR"

info "إيقاف الحاويات القديمة (إن وُجدت)..."
docker compose down 2>/dev/null || docker-compose down 2>/dev/null || true

info "بناء التطبيق (قد يستغرق 3-5 دقائق)..."
docker compose build --no-cache 2>&1 | tail -20 || \
docker-compose build --no-cache 2>&1 | tail -20

info "تشغيل التطبيق..."
docker compose up -d 2>/dev/null || docker-compose up -d

# ── 8. انتظر حتى يكون جاهزاً ─────────────────────────────
info "انتظار تشغيل الخادم..."
for i in $(seq 1 30); do
  if curl -s http://localhost:8080/api/health &>/dev/null || \
     curl -s http://localhost:8080 &>/dev/null; then
    info "التطبيق يعمل ✓"
    break
  fi
  sleep 2
done

# ── 9. عرض الحالة ─────────────────────────────────────────
echo ""
echo "════════════════════════════════════════"
echo -e "${GREEN}✅ Anime NOVA يعمل الآن!${NC}"
echo "════════════════════════════════════════"
VPS_IP=$(curl -s ifconfig.me 2>/dev/null || hostname -I | awk '{print $1}')
echo ""
echo "  🌐 الواجهة الأمامية: http://${VPS_IP}"
echo "  🔌 الـ API:          http://${VPS_IP}:8080"
echo ""
echo "الأوامر المفيدة:"
echo "  docker compose logs -f          — مشاهدة السجلات"
echo "  docker compose restart api      — إعادة تشغيل الباكند"
echo "  docker compose down             — إيقاف الكل"
echo "  cd $APP_DIR && git pull && docker compose up -d --build  — تحديث"
echo ""
echo "لتحديث التطبيق في المستقبل:"
echo "  cd $APP_DIR && git pull && docker compose up -d --build"
echo "════════════════════════════════════════"

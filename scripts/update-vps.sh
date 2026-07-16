#!/bin/bash
# =============================================================================
#  Anime NOVA — سكريبت التحديث (لما تغير كود وتبي تحدّث الخادم)
#  الاستخدام: bash /opt/anime-nova/scripts/update-vps.sh
# =============================================================================
set -e
APP_DIR="/opt/anime-nova"
cd "$APP_DIR"

echo "🔄 جاري تحديث Anime NOVA..."

git pull origin main 2>/dev/null || git pull origin master

pnpm install --prefer-offline --ignore-scripts 2>/dev/null || pnpm install --ignore-scripts

pnpm --filter @workspace/api-server run build
VITE_API_URL= NODE_ENV=production pnpm --filter @workspace/anime-scraper run build

# ⚠️  يجب استخدام delete+start وليس restart
# pm2 restart لا يُعيد تحميل env vars من ecosystem.config.cjs
# بينما delete+start يُعيد قراءة الملف بالكامل مع كل متغيرات البيئة
pm2 delete anime-nova-api 2>/dev/null || true
pm2 start "$APP_DIR/ecosystem.config.cjs" --only anime-nova-api
pm2 save

echo "✅ التحديث اكتمل!"
pm2 status

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

pm2 restart anime-nova-api

echo "✅ التحديث اكتمل!"
pm2 status

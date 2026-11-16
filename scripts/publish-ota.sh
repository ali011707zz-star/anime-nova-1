#!/usr/bin/env bash
# =============================================================================
#  Anime NOVA — نشر تحديث هوائي (OTA) لتطبيق الموبايل بدون بناء APK جديد
#  الاستخدام على السيرفر: bash /opt/anime-nova/scripts/publish-ota.sh
# =============================================================================
set -e

APP_DIR="/opt/anime-nova"
cd "$APP_DIR"

echo "🚀 جاري تجهيز ونشر التحديث الهوائي (OTA) لتطبيق الموبايل..."
git fetch origin main && git reset --hard origin/main

NODE_ENV="" pnpm install --prefer-offline --ignore-scripts 2>/dev/null || NODE_ENV="" pnpm install --ignore-scripts

EXPO_PUBLIC_DOMAIN="${EXPO_PUBLIC_DOMAIN:-https://animenovaa.duckdns.org}" \
  pnpm --filter @workspace/nova-mobile run export:ota

echo "✅ تم نشر تحديث الـ OTA بنجاح! سيصل للمستخدمين تلقائياً عند فتح التطبيق."

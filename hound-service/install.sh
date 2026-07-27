#!/usr/bin/env bash
# تثبيت hound-service على VPS
set -e
cd /opt/anime-nova/hound-service

echo "📦 installing Python deps..."
pip3 install --break-system-packages -r requirements.txt

echo "🎭 installing patchright Chrome (requires chrome, not chromium)..."
python3 -m patchright install chrome

echo "✅ Done. Start with: pm2 start /opt/anime-nova/hound-service/start.sh --name hound-service"

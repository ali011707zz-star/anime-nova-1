#!/bin/bash
# شغّل هذا السكريبت عبر SSH في AlwaysData
# ssh anime08963@ssh-anime08963.alwaysdata.net
# ثم: bash alwaysdata-setup.sh

set -e

echo "=== إعداد Anime NOVA على AlwaysData ==="

cd ~

# تنزيل Node.js 20 محلياً إن لم يكن موجوداً
if ! command -v node &>/dev/null || [[ "$(node --version)" != v20* ]]; then
  echo "[1/5] تثبيت Node.js 20..."
  mkdir -p ~/.local
  curl -fsSL https://nodejs.org/dist/v20.18.0/node-v20.18.0-linux-x64.tar.gz | tar -xz -C ~/.local --strip-components=1
  export PATH="$HOME/.local/bin:$PATH"
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi

echo "[2/5] Node $(node --version) جاهز"

# تثبيت pnpm
if ! command -v pnpm &>/dev/null; then
  echo "[3/5] تثبيت pnpm..."
  curl -fsSL https://get.pnpm.io/install.sh | sh -
  export PATH="$HOME/.local/share/pnpm:$PATH"
  echo 'export PATH="$HOME/.local/share/pnpm:$PATH"' >> ~/.bashrc
fi

# تثبيت curl_cffi للـ CF Proxy
echo "[4/5] تثبيت Python packages..."
pip3 install flask "curl_cffi>=0.7" --user --quiet 2>/dev/null || \
  pip install flask "curl_cffi>=0.7" --user --quiet 2>/dev/null || \
  echo "تخطّي Python (غير متوفر)"

echo "[5/5] الإعداد اكتمل ✓"
echo ""
echo "=== الخطوات التالية ==="
echo "1. ارفع ملفات المشروع إلى ~/anime-nova/"
echo "2. افتح admin.alwaysdata.com → Sites → Add → Node.js"
echo "3. اضبط Command: bash /home/anime08963/anime-nova/alwaysdata-start.sh"
echo "4. اضبط PORT حسب ما تعطيك إياه AlwaysData"

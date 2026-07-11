#!/bin/bash
# ============================================================
# Cloudflare Bypass Tool - Linux 环境安装脚本
# 支持 Ubuntu/Debian 系统
# ============================================================

set -e

echo "=============================================="
echo "Cloudflare Bypass Tool - Linux 环境安装"
echo "=============================================="

# 检测是否为root
if [ "$EUID" -ne 0 ]; then 
    echo "[!] 请使用 root 权限运行: sudo bash install_linux.sh"
    exit 1
fi

echo "[1/5] 更新软件源..."
apt-get update -qq

echo "[2/5] 安装系统依赖..."
apt-get install -y -qq \
    xvfb \
    libglib2.0-0 \
    libnss3 \
    libnspr4 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    libpango-1.0-0 \
    libcairo2 \
    fonts-liberation \
    wget \
    curl \
    unzip

echo "[3/5] 安装 Google Chrome..."
if ! command -v google-chrome &> /dev/null; then
    wget -q -O /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    apt-get install -y -qq /tmp/chrome.deb || apt-get install -f -y -qq
    rm -f /tmp/chrome.deb
    echo "[+] Chrome 安装完成"
else
    echo "[+] Chrome 已安装"
fi

echo "[4/5] 安装 Python 依赖..."
pip install -q seleniumbase pyvirtualdisplay

echo "[5/5] 验证安装..."
echo -n "  Chrome: "
google-chrome --version 2>/dev/null || echo "未找到"
echo -n "  Xvfb: "
which Xvfb &>/dev/null && echo "已安装" || echo "未安装"
echo -n "  Python: "
python3 --version

echo ""
echo "=============================================="
echo "✅ 安装完成！"
echo "=============================================="
echo ""
echo "使用方法:"
echo "  python simple_bypass.py https://example.com"
echo ""

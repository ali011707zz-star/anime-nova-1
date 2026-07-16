#!/bin/bash
set -e

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_PORT="${PORT:-8100}"
CF_PORT=8001

export CF_PROXY_PORT=$CF_PORT
export PORT=$APP_PORT
export NODE_ENV=production

echo "[start] Starting CF Proxy on port $CF_PORT..."
python3 "$BASE_DIR/scripts/cf_proxy.py" &
CF_PID=$!
sleep 2

if kill -0 "$CF_PID" 2>/dev/null; then
  echo "[start] CF Proxy running (PID $CF_PID)"
else
  echo "[start] CF Proxy failed — continuing without it"
fi

echo "[start] Starting Anime NOVA API on port $APP_PORT..."
exec node --enable-source-maps "$BASE_DIR/artifacts/api-server/dist/index.mjs"

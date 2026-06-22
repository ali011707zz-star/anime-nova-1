#!/bin/bash
set -e

APP_PORT="${PORT:-5000}"
CF_PORT=18001

export CF_PROXY_PORT=$CF_PORT

echo "[start] Starting CF Proxy on internal port $CF_PORT..."
python3 scripts/cf_proxy.py &
CF_PID=$!

sleep 2

if kill -0 "$CF_PID" 2>/dev/null; then
  echo "[start] CF Proxy running (PID $CF_PID)"
else
  echo "[start] CF Proxy failed — scraping continues without it"
fi

echo "[start] Starting API Server on port $APP_PORT..."
exec PORT="$APP_PORT" node --enable-source-maps artifacts/api-server/dist/index.mjs

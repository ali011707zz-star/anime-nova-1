#!/bin/bash
APP_PORT="${PORT:-8080}"

echo "[nova] Starting CF Proxy on port 8082..."
CF_PROXY_PORT=8082 python3 scripts/cf_proxy.py &
CF_PID=$!

sleep 2
if kill -0 "$CF_PID" 2>/dev/null; then
  echo "[nova] CF Proxy running (PID $CF_PID)"
else
  echo "[nova] CF Proxy failed — continuing without it"
fi

echo "[nova] Starting API + Frontend on port $APP_PORT..."
PORT="$APP_PORT" CF_PROXY_PORT=8082 node --enable-source-maps artifacts/api-server/dist/index.mjs &
NODE_PID=$!

wait $NODE_PID

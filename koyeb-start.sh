#!/bin/bash
set -e
APP_PORT="${PORT:-5000}"
echo "[start] Starting API Server on port $APP_PORT..."
exec PORT="$APP_PORT" node --enable-source-maps artifacts/api-server/dist/index.mjs


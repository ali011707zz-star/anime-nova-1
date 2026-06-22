#!/bin/bash
set -e
export PORT="${PORT:-5000}"
echo "[start] Starting API Server on port $PORT..."
exec node --enable-source-maps artifacts/api-server/dist/index.mjs


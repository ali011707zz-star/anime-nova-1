#!/bin/bash
set -e

echo "[start.sh] Installing dependencies..."
NODE_ENV=development pnpm install --no-frozen-lockfile 2>&1

echo "[start.sh] Building API server..."
NODE_ENV=development pnpm --filter @workspace/api-server run build 2>&1

echo "[start.sh] Building frontend..."
NODE_ENV=development pnpm --filter @workspace/anime-scraper run build 2>&1

echo "[start.sh] Starting API server on port 8080..."
PORT=8080 node --enable-source-maps artifacts/api-server/dist/index.mjs &
API_PID=$!

echo "[start.sh] Waiting for API server..."
sleep 4

echo "[start.sh] Starting Vite dev server on port 5000..."
PORT=5000 pnpm --filter @workspace/anime-scraper run dev

# If frontend exits, kill backend too
kill $API_PID 2>/dev/null || true

#!/bin/bash
set -e

echo "[dev-start] Building API server..."
NODE_ENV=development pnpm --filter @workspace/api-server run build

echo "[dev-start] Starting API server on port 8080..."
PORT=8080 NODE_ENV=development node --enable-source-maps artifacts/api-server/dist/index.mjs &
API_PID=$!

cleanup() {
  kill "$API_PID" 2>/dev/null || true
}
trap cleanup EXIT

echo "[dev-start] Starting Vite dev server on port 5000..."
PORT=5000 NODE_ENV=development pnpm --filter @workspace/anime-scraper run dev

#!/bin/bash
# Build script for Anime NOVA — runs with dev deps to compile TypeScript/Vite
set -e

echo "[build] Installing dependencies (including devDependencies)..."
NODE_ENV=development pnpm install --no-frozen-lockfile 2>&1

echo "[build] Building API server..."
NODE_ENV=development pnpm --filter @workspace/api-server run build 2>&1

echo "[build] Building frontend..."
NODE_ENV=development pnpm --filter @workspace/anime-scraper run build 2>&1

echo "[build] ✅ Build complete"

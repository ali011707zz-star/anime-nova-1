#!/bin/bash
# Start both the API server (port 8080) and Vite dev server (port 5000) together

# Kill any lingering processes on our ports
fuser -k 8080/tcp 2>/dev/null || true
fuser -k 5000/tcp 2>/dev/null || true
sleep 1

# Start the API backend in the background
PORT=8080 node --enable-source-maps artifacts/api-server/dist/index.mjs &
API_PID=$!

# Wait a moment for the API to initialize
sleep 3

# Start the Vite frontend dev server in the foreground (port 5000 = webview)
PORT=5000 pnpm --filter @workspace/anime-scraper run dev

# If frontend exits, kill backend too
kill $API_PID 2>/dev/null || true

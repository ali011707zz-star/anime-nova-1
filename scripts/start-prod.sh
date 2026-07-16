#!/bin/bash
# Production startup: starts CF Proxy + Node.js API server together

echo "[start-prod] Starting CF Proxy on port 8000..."
CF_PROXY_PORT=8000 python3.11 scripts/cf_proxy.py &
CF_PID=$!

# Give CF proxy a moment to bind
sleep 2

echo "[start-prod] Starting Node.js API server on port 5000..."
PORT=5000 node --enable-source-maps artifacts/api-server/dist/index.mjs &
NODE_PID=$!

# Wait for either process to exit
wait -n $CF_PID $NODE_PID
EXIT_CODE=$?

echo "[start-prod] A process exited (code $EXIT_CODE), shutting down..."
kill $CF_PID $NODE_PID 2>/dev/null
exit $EXIT_CODE

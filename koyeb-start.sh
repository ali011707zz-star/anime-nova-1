#!/bin/bash
<<<<<<< HEAD
  APP_PORT="${PORT:-5000}"

  echo "[start] Starting API Server on port $APP_PORT..."
  PORT="$APP_PORT" CF_PROXY_PORT=8000 node --enable-source-maps artifacts/api-server/dist/index.mjs &
  NODE_PID=$!

  echo "[start] Waiting for Node.js to bind to port $APP_PORT..."
  for i in $(seq 1 30); do
    if (echo >/dev/tcp/127.0.0.1/$APP_PORT) 2>/dev/null; then
      echo "[start] Node.js ready after ${i}s"
      break
    fi
    sleep 1
  done

  echo "[start] Starting CF Proxy on internal port 8000..."
  CF_PROXY_PORT=8000 python3 scripts/cf_proxy.py &
  CF_PID=$!

  sleep 1
  if kill -0 "$CF_PID" 2>/dev/null; then
    echo "[start] CF Proxy running (PID $CF_PID)"
  else
    echo "[start] CF Proxy failed — scraping continues without it"
  fi

  wait $NODE_PID
  
=======
APP_PORT="${PORT:-5000}"

echo "[start] Starting API Server on port $APP_PORT..."
PORT="$APP_PORT" CF_PROXY_PORT=8000 node --enable-source-maps artifacts/api-server/dist/index.mjs &
NODE_PID=$!

echo "[start] Waiting for Node.js to bind to port $APP_PORT..."
for i in $(seq 1 30); do
  if (echo >/dev/tcp/127.0.0.1/$APP_PORT) 2>/dev/null; then
    echo "[start] Node.js ready after ${i}s"
    break
  fi
  sleep 1
done

echo "[start] Starting CF Proxy on internal port 8000..."
CF_PROXY_PORT=8000 python3 scripts/cf_proxy.py &
CF_PID=$!

sleep 1
if kill -0 "$CF_PID" 2>/dev/null; then
  echo "[start] CF Proxy running (PID $CF_PID)"
else
  echo "[start] CF Proxy failed — scraping continues without it"
fi

wait $NODE_PID
>>>>>>> e91275c (Update startup sequence to ensure API server is ready before proxy)

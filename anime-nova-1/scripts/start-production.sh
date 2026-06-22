#!/bin/bash
set -e
export PORT=${PORT:-8080}
exec node --enable-source-maps artifacts/api-server/dist/index.mjs

#!/usr/bin/env bash
set -euo pipefail
LOCKFILE="/tmp/nova-film-archiver.lock"
exec /usr/bin/flock -n "$LOCKFILE" \
  /usr/bin/systemd-run --scope --quiet -p CPUQuota=20% -p MemoryMax=256M \
  /usr/bin/ionice -c 3 /usr/bin/nice -n 19 \
  /usr/bin/node /opt/anime-nova/scripts/safe-film-vault-archiver.mjs "$@"

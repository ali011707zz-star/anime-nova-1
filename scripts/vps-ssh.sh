#!/usr/bin/env bash
# وصل للـ VPS بسهولة
# الاستخدام:
#   ./scripts/vps-ssh.sh              ← shell تفاعلي
#   ./scripts/vps-ssh.sh 'pm2 list'   ← تشغيل أمر واحد

set -e

HOST="${VPS_HOST:-95.182.93.105}"
USER="${VPS_USER:-root}"
PASS="${VPS_SSH_PASSWORD}"

if [ -z "$PASS" ]; then
  echo "❌ VPS_SSH_PASSWORD غير محدد في البيئة"
  exit 1
fi

if [ $# -eq 0 ]; then
  exec sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no "$USER@$HOST"
else
  exec sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no "$USER@$HOST" "$@"
fi

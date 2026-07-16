#!/usr/bin/env bash
# =============================================================
#  Setup /opt/anime-nova/.env on the VPS from ecosystem values
#  Run ONCE after pulling a fresh copy on the VPS:
#    bash scripts/setup-vps-env.sh
#
#  This script ONLY creates the .env file if it does not exist.
#  It will NOT overwrite an existing .env (to protect real secrets).
# =============================================================

ENV_FILE="/opt/anime-nova/.env"

if [ -f "$ENV_FILE" ]; then
  echo "✅ $ENV_FILE already exists — not overwriting."
  echo "   Edit it manually if you need to change a value."
  exit 0
fi

echo "Creating $ENV_FILE from template..."
cat > "$ENV_FILE" <<'EOF'
# Fill in real values — never commit this file
DATABASE_URL=postgresql://anime_nova:anime_nova_pass_2024@localhost:5432/anime_nova
CF_PROXY_KEY=
TELEGRAM_BOT_TOKEN=
TELEGRAM_CHANNEL_ID=
TELEGRAM_CHAT_ID=
SMTP_USER=
SMTP_PASS=
APP_DOMAIN=animenovaa.duckdns.org
SESSION_SECRET=
APP_SECRET=
CINESRC_BASE=http://localhost:13004
SUPABASE_URL=
SUPABASE_SERVICE_KEY=
CF_WORKER_URL=
HOPX_API_KEY=
EOF

echo "✅ Created $ENV_FILE — fill in your secrets, then restart pm2:"
echo "   pm2 delete all && pm2 start /opt/anime-nova/ecosystem.config.cjs && pm2 save"

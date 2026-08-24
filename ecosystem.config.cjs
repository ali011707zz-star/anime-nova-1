const _fs = require("fs");
/** قراءة .env مباشرة — يعمل حتى عند pm2 start بدون export env مسبق */
function _loadEnv() {
  try {
    const out = {};
    _fs.readFileSync("/opt/anime-nova/.env", "utf8").split("\n").forEach(l => {
      l = l.trim(); if (!l || l[0] === "#") return;
      const i = l.indexOf("="); if (i > 0) out[l.slice(0, i).trim()] = l.slice(i + 1).trim();
    });
    return out;
  } catch { return {}; }
}
const _fe = _loadEnv();
const _e  = k => process.env[k] || _fe[k] || "";

module.exports = {
  apps: [
    {
      name: "anime-nova-api",
      script: "/usr/bin/node",
      args: "--enable-source-maps artifacts/api-server/dist/index.mjs",
      cwd: "/opt/anime-nova",
      env: {
        NODE_ENV: "production",
        PORT: "5000",
        DATABASE_URL: _e("DATABASE_URL"),
        CF_PROXY_KEY: _e("CF_PROXY_KEY"),
        CF_WORKER_URL: _e("CF_WORKER_URL"),
        TELEGRAM_BOT_TOKEN: _e("TELEGRAM_BOT_TOKEN"),
        TELEGRAM_CHANNEL_ID: _e("TELEGRAM_CHANNEL_ID"),
        TELEGRAM_CHAT_ID: _e("TELEGRAM_CHAT_ID"),
        TELEGRAM_SCHEDULER_ENABLED: _e("TELEGRAM_SCHEDULER_ENABLED"),
        TELEGRAM_EPISODE_NOTIFICATIONS_ENABLED: _e("TELEGRAM_EPISODE_NOTIFICATIONS_ENABLED"),
        SMTP_HOST: "smtp.gmail.com",
        SMTP_PORT: "587",
        SMTP_USER: _e("SMTP_USER"),
        SMTP_PASS: _e("SMTP_PASS"),
        RESEND_API_KEY: _e("RESEND_API_KEY"),
        RESEND_FROM: _e("RESEND_FROM") || "Anime NOVA <onboarding@resend.dev>",
        APP_DOMAIN: _e("APP_DOMAIN") || "animenovaa.duckdns.org",
        GOOGLE_CLIENT_ID: _e("GOOGLE_CLIENT_ID"),
        SESSION_SECRET: _e("SESSION_SECRET"),
        APP_SECRET: _e("APP_SECRET"),
        NOVA_ADMIN_PATH: _e("NOVA_ADMIN_PATH"),
        NOVA_ADMIN_PASSWORD_HASH: _e("NOVA_ADMIN_PASSWORD_HASH"),
        NOVA_ADMIN_BACKUP_PASSWORD_HASH: _e("NOVA_ADMIN_BACKUP_PASSWORD_HASH"),
        CINESRC_BASE: _e("CINESRC_BASE") || "http://localhost:13004",
        CONSUMET_API_URL: _e("CONSUMET_API_URL") || "http://127.0.0.1:3000",
        ANIVEXA_API_URL: _e("ANIVEXA_API_URL") || "http://127.0.0.1:8787",
        SUPABASE_URL: _e("SUPABASE_URL"),
        SUPABASE_SERVICE_KEY: _e("SUPABASE_SERVICE_KEY"),
        SCRAPINGANT_KEY: _e("SCRAPINGANT_KEY"),
        NOPECHA_KEY: _e("NOPECHA_KEY"),
        OPENSHIFT_CF_URL: "https://nova-cf-bypass-lly581758-dev.apps.rm1.0a51.p1.openshiftapps.com",
        HOUND_SERVICE_URL: "http://localhost:8766",
        MXP_SERVICE_PORT: "8002",
        CF_PROXY_PORT: "8000",   // cf-proxy (curl_cffi + primp) — hopx حُذف 2026-08-03
      },
    },
    {
      name: "consumet-api",
      script: "/usr/bin/npm",
      args: "run start",
      cwd: "/opt/consumet-api",
      env: {
        NODE_ENV: "PROD",
        PORT: "3000",
      },
      restart_delay: 5000,
      max_memory_restart: "512M",
    },
    {
      name: "cf-proxy",
      script: "/opt/anime-nova/scripts/cf_proxy.py",
      interpreter: "/opt/cf-proxy-venv/bin/python",
      cwd: "/root",
      env: {
        CF_PROXY_PORT: "8000",
        CF_PROXY_KEY: _e("CF_PROXY_KEY"),
      },
    },
    {
      name: 'mitmproxy-cf-bridge',
      script: '/usr/local/bin/mitmdump',
      interpreter: 'none',
      args: '-s /opt/anime-nova/scripts/cf_bridge_addon.py --listen-host 127.0.0.1 --listen-port 8890 --ssl-insecure',
      cwd: '/opt/anime-nova',
      restart_delay: 5000,
      env: {
        CF_WORKER_URL: _e('CF_WORKER_URL'),
        CF_PROXY_KEY:  _e('CF_PROXY_KEY'),
      },
    },
    {
      name: 'mediaflow-proxy',
      script: '/usr/local/bin/uvicorn',
      interpreter: 'none',
      args: 'mediaflow_proxy.main:app --host 127.0.0.1 --port 8888',
      cwd: '/opt/anime-nova',
      restart_delay: 5000,
      env: {
         API_PASSWORD:                       _e("MEDIAFLOW_API_PASSWORD"),
        HOST:                               '127.0.0.1',
        PORT:                               '8888',
        PROXY_URL:                          'http://127.0.0.1:8890',
        DISABLE_SSL_VERIFICATION_GLOBALLY:  'true',
        M3U8_CONTENT_ROUTING:               'direct',
      },
    },
    {
      name: 'nova-mobile-download',
      script: '/opt/anime-nova/artifacts/nova-mobile/server/serve.js',
      cwd: '/opt/anime-nova/artifacts/nova-mobile',
      env: {
        PORT: '5100',
        BASE_PATH: '/nova-mobile',
      },
    },
  ],
};

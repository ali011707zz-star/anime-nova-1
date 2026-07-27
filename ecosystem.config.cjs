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
        SMTP_HOST: "smtp.gmail.com",
        SMTP_PORT: "587",
        SMTP_USER: _e("SMTP_USER"),
        SMTP_PASS: _e("SMTP_PASS"),
        APP_DOMAIN: _e("APP_DOMAIN") || "animenovaa.duckdns.org",
        SESSION_SECRET: _e("SESSION_SECRET"),
        APP_SECRET: _e("APP_SECRET"),
        CINESRC_BASE: _e("CINESRC_BASE") || "http://localhost:13004",
        SUPABASE_URL: _e("SUPABASE_URL"),
        SUPABASE_SERVICE_KEY: _e("SUPABASE_SERVICE_KEY"),
        SCRAPINGANT_KEY: _e("SCRAPINGANT_KEY"),
        NOPECHA_KEY: _e("NOPECHA_KEY"),
        OPENSHIFT_CF_URL: "https://nova-cf-bypass-lly581758-dev.apps.rm1.0a51.p1.openshiftapps.com",
        HOUND_SERVICE_URL: "http://localhost:8766",
        MXP_SERVICE_PORT: "8002",
        CF_PROXY_PORT: "8001",   // ← السكرابر الآن عبر Hopx (35Mbps, 2vCPU) بدل cf-proxy
        HOPX_PROXY_URL: "http://localhost:8001",
      },
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
      name: "hopx-manager",
      script: "/opt/anime-nova/scripts/hopx_manager.py",
      interpreter: "/usr/bin/python3",
      cwd: "/opt/anime-nova/scripts",
      restart_delay: 10000,
      env: {
        HOPX_API_KEY: _e("HOPX_API_KEY"),
        HOPX_LOCAL_PORT: "8001",
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
        API_PASSWORD:                       'nova_mf_2026',
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

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
        DATABASE_URL: process.env.DATABASE_URL || "",
        CF_PROXY_KEY: process.env.CF_PROXY_KEY || "",
        TELEGRAM_BOT_TOKEN: process.env.TELEGRAM_BOT_TOKEN || "",
        TELEGRAM_CHANNEL_ID: process.env.TELEGRAM_CHANNEL_ID || "",
        TELEGRAM_CHAT_ID: process.env.TELEGRAM_CHAT_ID || "",
        SMTP_HOST: "smtp.gmail.com",
        SMTP_PORT: "587",
        SMTP_USER: process.env.SMTP_USER || "",
        SMTP_PASS: process.env.SMTP_PASS || "",
        APP_DOMAIN: process.env.APP_DOMAIN || "animenovaa.duckdns.org",
        SESSION_SECRET: process.env.SESSION_SECRET || "",
        APP_SECRET: process.env.APP_SECRET || "",
        CINESRC_BASE: process.env.CINESRC_BASE || "http://localhost:13004",
        SUPABASE_URL: process.env.SUPABASE_URL || "",
        SUPABASE_SERVICE_KEY: process.env.SUPABASE_SERVICE_KEY || "",
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
        CF_PROXY_KEY: process.env.CF_PROXY_KEY || "",
      },
    },
    {
      name: "hopx-manager",
      script: "/opt/anime-nova/scripts/hopx_manager.py",
      interpreter: "/usr/bin/python3",
      cwd: "/opt/anime-nova/scripts",
      restart_delay: 10000,
      env: {
        HOPX_API_KEY: process.env.HOPX_API_KEY || "",
        HOPX_LOCAL_PORT: "8001",
      },
    },
  ],
};

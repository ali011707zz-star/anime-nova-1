---
name: CinePro self-hosted service (install/usage reference)
description: How CinePro (cinepro-org/core) was installed and run as a local pm2 service on the VPS. PERMANENTLY DELETED from VPS on 2026-07-13 to reclaim RAM.
---

## ⚠️ الحالة: محذوف من VPS نهائياً (2026-07-13)
`/opt/cinepro` و pm2 process `cinepro` حُذفا من الـ VPS. الملف هذا للمرجعية فقط.

## ما هو
`cinepro-org/core` (`@cinepro/core`) — Node.js 20+ scraping backend متوافق مع OMSS، TMDB-native.
يجمع ~14+ provider (VidSrc, VidApi, Icefy, FshareTV, VixSrc...) للأفلام والمسلسلات — ليس مخصصاً للأنمي.

## إعادة التثبيت (لو احتجته لاحقاً)
```bash
git clone https://github.com/cinepro-org/core /opt/cinepro
cd /opt/cinepro
npm install
```

`.env` في `/opt/cinepro/.env`:
```
PORT=3000
HOST=0.0.0.0
NODE_ENV=production
CORS_ORIGIN=*
STREMIO_ADDON=false
MCP_ENABLED=false
INTERNAL_DEBUG=false
TMDB_API_KEY=<tmdb_v3_key>
TMDB_CACHE_TTL=86400
CACHE_TYPE=memory
```

بناء وتشغيل:
```bash
cd /opt/cinepro
npm run build
pm2 start dist/server.js --name cinepro --cwd /opt/cinepro
pm2 save
```

## شكل الـ API (كما كان يُستخدم في animation.ts)
- فيلم: `GET http://localhost:3000/v1/movies/{tmdbId}`
- مسلسل: `GET http://localhost:3000/v1/tv/{tmdbId}/seasons/{season}/episodes/{epNum}`
- الرد: `{ sources: [{ provider, quality, url }], subtitles: [...] }`
- بعض الـ `url` مُوكَّلة داخلياً كـ `/v1/proxy?data=<json-encoded-{url}>` — فكّها لتحصل على الرابط الحقيقي.
- روابط VidApi هي HLS (`.m3u8`) لكن بمسارات غير قياسية (`/pl/`, `/playlist/`) — اكتشفها باسم الـ provider لا بامتداد الـ URL.

## لماذا أُزيل
أُزيل بطلب المستخدم من قائمة scraping الحية في `animation.ts`. استهلك 70MB RAM بدون فائدة.

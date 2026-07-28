# Anime NOVA

تطبيق بث أنمي وأنيميشن — monorepo بـ pnpm.

## المشروع

| جزء | المسار | الوصف |
|-----|--------|-------|
| API Server | `artifacts/api-server` | الباكند (Express + scraper logic) |
| Anime Scraper (Web) | `artifacts/anime-scraper` | الفرونت إند (React + Vite) |
| Nova Mobile | `artifacts/nova-mobile` | تطبيق Expo موبايل |
| Mockup Sandbox | `artifacts/mockup-sandbox` | بيئة تصميم مكونات |

## طريقة العمل

**الكود يُحرَّر هنا على Replit، والتطبيق يعمل على VPS فقط.**

### الاتصال بالـ VPS
```bash
# الطريقة السريعة
./scripts/vps-ssh.sh

# أو مباشرة
sshpass -p "$VPS_SSH_PASSWORD" ssh -o StrictHostKeyChecking=no root@95.182.93.105
```

### نشر التغييرات على الـ VPS
```bash
# بعد تحرير الكود، ادفع للـ GitHub ثم على VPS:
git pull && pnpm install && node build.mjs && pm2 restart anime-nova-api
```

### مراقبة الـ VPS
```bash
./scripts/vps-ssh.sh 'pm2 list'
./scripts/vps-ssh.sh 'pm2 logs anime-nova-api --lines 50 --nostream'
```

## VPS
- **IP**: 95.182.93.105
- **المسار**: `/opt/anime-nova`
- **OS**: Ubuntu 24.04

## خدمات pm2 الرئيسية
| الاسم | الوظيفة |
|-------|---------|
| `anime-nova-api` | الخادم الرئيسي |
| `hopx-manager` | proxy لتجاوز CF |
| `hound-service` | Chromium لحل Turnstile |
| `nova-mobile-download` | خادم ملفات الموبايل |
| `cf-proxy` | proxy CF محلي |

## User preferences
- الكود يُحرَّر على Replit، لا يُشغَّل محلياً
- النشر دائماً عبر VPS (pm2)
- لا تُشغِّل workflows محلية للباكند

# نشر Nova Anime على Cloudflare Pages + APK

## الرابط الخلفي: https://anime-nova.orkestr.run

---

## 1. واجهة الويب — Cloudflare Pages

### إعدادات البناء في Cloudflare:
| الحقل | القيمة |
|-------|--------|
| **Framework preset** | None |
| **Build command** | `cd artifacts/anime-scraper && npm install -g pnpm@10 && pnpm install && pnpm run build` |
| **Build output directory** | `artifacts/anime-scraper/dist/public` |
| **Root directory** | (اتركه فارغاً) |

### متغيرات البيئة (Environment Variables):
| المتغير | القيمة |
|---------|--------|
| `VITE_API_URL` | `https://anime-nova.orkestr.run` |
| `NODE_VERSION` | `20` |
| `BASE_PATH` | `/` |

---

## 2. APK لأندرويد

### على جهازك المحلي:
```bash
# 1. تثبيت EAS CLI
npm install -g eas-cli

# 2. الانتقال لمجلد nova-mobile
cd artifacts/nova-mobile

# 3. تسجيل الدخول بحساب Expo (أنشئ واحداً مجاناً على expo.dev)
eas login

# 4. بناء APK (مجاناً على سيرفرات Expo)
eas build --platform android --profile preview

# بعد 15-20 دقيقة ستحصل على رابط تحميل APK مباشر
```

### EXPO_PUBLIC_DOMAIN مضبوط تلقائياً في eas.json على:
```
https://anime-nova.orkestr.run
```

---

## 3. تحديث الـ Backend (Orkestr) لقبول طلبات Cloudflare

الـ CORS في الـ backend مضبوط على `origin: true` ← يقبل كل المصادر ✅
لا حاجة لأي تعديل.

---

## ملاحظة مهمة

عند نشر Cloudflare Pages، يجب أن يكون خادم Orkestr يعمل 24/7.
الخادم الحالي على Replit (development) — للإنتاج الحقيقي يُنصح بنشر الـ backend على Orkestr أو Railway.

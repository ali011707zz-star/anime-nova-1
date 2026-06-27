# نشر Nova Anime على Cloudflare Pages

## 1. واجهة الويب (anime-scraper)

### إعدادات Cloudflare Pages:
| الحقل | القيمة |
|-------|--------|
| **Framework preset** | None |
| **Build command** | `cd artifacts/anime-scraper && pnpm install && pnpm run build` |
| **Build output directory** | `artifacts/anime-scraper/dist/public` |
| **Root directory** | `/` (اتركه فارغاً) |
| **Node version** | `20` |

### متغيرات البيئة في Cloudflare Pages:
| المتغير | القيمة |
|---------|--------|
| `VITE_API_URL` | رابط خادم Orkestr (مثل `https://api.nova-anime.com`) |
| `NODE_VERSION` | `20` |

---

## 2. APK لأندرويد (nova-mobile)

### المتطلبات:
- حساب Expo (مجاني): https://expo.dev
- تثبيت EAS CLI: `npm install -g eas-cli`

### خطوات البناء:
```bash
cd artifacts/nova-mobile

# تسجيل الدخول لـ Expo
eas login

# إعداد المشروع (مرة واحدة)
eas build:configure

# بناء APK (مجاناً على Expo cloud)
eas build --platform android --profile preview
```

### متغيرات البيئة للـ APK:
```
EXPO_PUBLIC_DOMAIN=https://api.nova-anime.com
```
أضفها في: https://expo.dev → مشروعك → Environment Variables

---

## 3. الخادم الخلفي على Orkestr

الـ backend يعمل على Replit ويتصل بـ Orkestr كـ relay.
لا حاجة لنقله — فقط تأكد أن:
- `ORKESTR_API_KEY` موجود في Replit Secrets ✅
- الـ CORS يسمح بدومين Cloudflare Pages

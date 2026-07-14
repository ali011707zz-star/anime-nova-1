/**
 * Nova Anime — Service Worker v1
 * الهدف: صفر bandwidth على VPS عند تكرار تشغيل نفس الحلقة
 *
 * استراتيجية الـ cache:
 *  - /api/anime/hls-proxy   → 3 دقائق (manifest صغير لكن يُطلب كثيراً)
 *  - /api/anime/watch-src   → 30 دقيقة (نتيجة scraping للمصدر)
 *  - /api/animation/watch-src → 30 دقيقة
 *  - /api/dubbed/watch-src  → 30 دقيقة
 *  - /api/anime/translate-vtt → 24 ساعة (ترجمة لا تتغير)
 *
 * ملاحظة: الـ segments تمر عبر CF Worker مباشرة (307 redirect) — لا تمر هنا
 */

const SW_VERSION = "nova-v1.3";
const CACHE_NAME = `nova-api-${SW_VERSION}`;

const ROUTES = [
  { pattern: /\/api\/anime\/hls-proxy\?/,         ttl: 3 * 60 },
  { pattern: /\/api\/anime\/watch-src\?/,          ttl: 30 * 60 },
  { pattern: /\/api\/animation\/watch-src\?/,      ttl: 30 * 60 },
  { pattern: /\/api\/dubbed\/watch-src\?/,         ttl: 30 * 60 },
  { pattern: /\/api\/anime\/translate-vtt\?/,      ttl: 24 * 60 * 60 },
  { pattern: /\/api\/anime\/animex-source\?/,      ttl: 5 * 60 },
];

self.addEventListener("install", (e) => {
  e.waitUntil(self.skipWaiting());
});

self.addEventListener("activate", (e) => {
  e.waitUntil(
    caches.keys().then(keys =>
      Promise.all(keys.filter(k => k !== CACHE_NAME).map(k => caches.delete(k)))
    ).then(() => self.clients.claim())
  );
});

self.addEventListener("fetch", (e) => {
  const url = e.request.url;
  if (e.request.method !== "GET") return;

  const route = ROUTES.find(r => r.pattern.test(url));
  if (!route) return;

  e.respondWith(handleApiRequest(e.request, route.ttl));
});

async function handleApiRequest(request, ttlSeconds) {
  const cache = await caches.open(CACHE_NAME);
  const cached = await cache.match(request);

  if (cached) {
    const cachedAt = cached.headers.get("X-Nova-Cached-At");
    if (cachedAt) {
      const age = (Date.now() - parseInt(cachedAt)) / 1000;
      if (age < ttlSeconds) {
        return cached;
      }
      cache.delete(request);
    }
  }

  try {
    const response = await fetch(request.clone());
    if (response.ok) {
      const headers = new Headers(response.headers);
      headers.set("X-Nova-Cached-At", String(Date.now()));
      headers.set("X-Nova-SW-Cache", "HIT");

      const cloned = new Response(await response.clone().arrayBuffer(), {
        status: response.status,
        headers,
      });
      cache.put(request, cloned);
    }
    return response;
  } catch (err) {
    if (cached) return cached;
    throw err;
  }
}

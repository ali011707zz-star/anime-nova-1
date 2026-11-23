export const SITE_BASE = "https://animenovaa.duckdns.org";
export const APP_VERSION = "1.0.10";

const INDEXABLE_EXACT = new Set([
  "/",
  "/app",
  "/browse",
  "/manga",
  "/dubbed",
  "/aw-dubbed",
  "/spacetoon",
  "/cartoon",
  "/animation",
  "/latest",
  "/updates",
  "/schedule",
  "/seasons",
  "/upcoming",
]);

const NOINDEX_EXACT = new Set([
  "/search",
  "/watch",
  "/dubbed/watch",
  "/aw-dubbed/watch",
  "/stardima/servers",
  "/stardima/watch",
  "/auth",
  "/auth/callback",
  "/profile",
  "/settings",
  "/library",
  "/history",
  "/tv",
  "/comments",
  "/subscription",
  "/stats",
  "/download",
]);

export function normalizeSeoPath(rawPath) {
  const p = String(rawPath || "/").split("?")[0].split("#")[0] || "/";
  if (p === "/") return "/";
  const collapsed = p.replace(/\/{2,}/g, "/").replace(/\/+$/, "");
  return collapsed || "/";
}

export function needsTrailingSlashRedirect(rawPath) {
  const pathOnly = String(rawPath || "/").split("?")[0];
  if (!pathOnly || pathOnly === "/") return false;
  if (pathOnly.startsWith("/api/") || pathOnly.startsWith("/assets/")) return false;
  return /\/+$/.test(pathOnly);
}

export function buildCanonicalUrl(cleanPath, base = SITE_BASE) {
  const norm = normalizeSeoPath(cleanPath);
  return norm === "/" ? `${base}/` : `${base}${norm}`;
}

/**
 * Classifies any SPA request path for SEO HTTP status and robots meta.
 * Prevents Soft-404s by returning status 404 + noindex on unknown routes,
 * and prevents index bloat by returning 200 + noindex on search/watch/private routes.
 */
export function classifySpaRoute(rawPath) {
  const cleanPath = normalizeSeoPath(rawPath);

  if (INDEXABLE_EXACT.has(cleanPath)) {
    return { kind: "indexable", status: 200, robots: "index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1", cleanPath };
  }
  if (NOINDEX_EXACT.has(cleanPath)) {
    return { kind: "noindex_ok", status: 200, robots: "noindex, follow", cleanPath };
  }

  // Dynamic indexable content pages
  if (/^\/anime\/\d+$/.test(cleanPath)) {
    return { kind: "indexable", status: 200, robots: "index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1", cleanPath };
  }
  if (/^\/manga\/[^/]+$/.test(cleanPath)) {
    return { kind: "indexable", status: 200, robots: "index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1", cleanPath };
  }
  if (/^\/dubbed\/[^/]+$/.test(cleanPath) || /^\/aw-dubbed\/[^/]+$/.test(cleanPath)) {
    return { kind: "indexable", status: 200, robots: "index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1", cleanPath };
  }
  if (/^\/stardima\/title\/[^/]+$/.test(cleanPath)) {
    return { kind: "indexable", status: 200, robots: "index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1", cleanPath };
  }
  if (/^\/episodes\/\d+$/.test(cleanPath)) {
    return { kind: "indexable", status: 200, robots: "index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1", cleanPath };
  }

  // Dynamic non-indexable player routes
  if (/^\/watch\/\d+$/.test(cleanPath)) {
    return { kind: "noindex_ok", status: 200, robots: "noindex, follow", cleanPath };
  }

  return { kind: "not_found", status: 404, robots: "noindex, nofollow", cleanPath };
}

export function buildPageJsonLd({
  base = SITE_BASE,
  cleanPath = "/",
  title = "",
  desc = "",
  ogImage = `${SITE_BASE}/opengraph.jpg`,
  animeName = "",
}) {
  const canonical = buildCanonicalUrl(cleanPath, base);

  const websiteNode = {
    "@type": "WebSite",
    "@id": `${base}/#website`,
    name: "أنمي نوفا | Anime NOVA",
    alternateName: ["انمي نوفا", "تطبيق انمي نوفا", "Anime NOVA"],
    url: `${base}/`,
    inLanguage: "ar",
    description: "موقع وتطبيق أنمي نوفا لمشاهدة الأنمي المترجم والمدبلج وقراءة المانجا والمانهوا ومسلسلات سبيستون مجاناً بجودة FHD.",
    potentialAction: {
      "@type": "SearchAction",
      target: `${base}/search?q={search_term_string}`,
      "query-input": "required name=search_term_string",
    },
  };

  const orgNode = {
    "@type": "Organization",
    "@id": `${base}/#organization`,
    name: "أنمي نوفا | Anime NOVA",
    url: `${base}/`,
    logo: {
      "@type": "ImageObject",
      url: `${base}/icon-512.png`,
      width: 512,
      height: 512,
    },
  };

  const appNode = {
    "@type": ["SoftwareApplication", "MobileApplication"],
    "@id": `${base}/app#app`,
    name: "تطبيق أنمي نوفا - Anime NOVA",
    alternateName: ["تطبيق انمي نوفا", "انمي نوفا APK", "Anime NOVA TV"],
    operatingSystem: "Android, Android TV, Google TV, Fire TV",
    applicationCategory: "EntertainmentApplication",
    softwareVersion: APP_VERSION,
    url: `${base}/app`,
    downloadUrl: `${base}/Anime-Nova.apk`,
    installUrl: `${base}/app`,
    image: `${base}/icon-512.png`,
    screenshot: [
      `${base}/app-screens/screen-home.png`,
      `${base}/app-screens/screen-detail.png`,
      `${base}/app-screens/screen-manga.png`,
      `${base}/app-screens/screen-spacetoon.png`,
    ],
    inLanguage: "ar",
    description: "تطبيق أنمي نوفا الرسمي لهواتف الأندرويد وشاشات التلفاز الذكية Android TV (كود Downloader: 2576388) لمشاهدة الأنمي والمانجا وسبيستون بدون إعلانات.",
    offers: {
      "@type": "Offer",
      price: "0",
      priceCurrency: "USD",
    },
  };

  const faqNode = {
    "@type": "FAQPage",
    "@id": `${canonical}#faq`,
    mainEntity: [
      {
        "@type": "Question",
        name: "ما هو موقع وتطبيق أنمي نوفا (Anime NOVA)؟",
        acceptedAnswer: {
          "@type": "Answer",
          text: "أنمي نوفا هو موقع وتطبيق عربي لمشاهدة وتحميل الأنمي المترجم والمدبلج بجودة FHD، وقراءة المانجا والمانهوا، ومسلسلات سبيستون والكرتون مجاناً وبدون إعلانات.",
        },
      },
      {
        "@type": "Question",
        name: "كيف أحمّل تطبيق أنمي نوفا للأندرويد والتلفاز الذكي؟",
        acceptedAnswer: {
          "@type": "Answer",
          text: `يمكنك تحميل تطبيق أنمي نوفا (APK v${APP_VERSION}) مباشرة من صفحة التحميل الرسمية ${base}/app أو عبر كود Downloader رقم 2576388 على شاشات Android TV.`,
        },
      },
    ],
  };

  if (cleanPath === "/") {
    return {
      "@context": "https://schema.org",
      "@graph": [websiteNode, orgNode, appNode, faqNode],
    };
  }

  if (cleanPath === "/app") {
    return {
      "@context": "https://schema.org",
      "@graph": [
        websiteNode,
        appNode,
        faqNode,
        {
          "@type": "BreadcrumbList",
          itemListElement: [
            { "@type": "ListItem", position: 1, name: "أنمي نوفا", item: `${base}/` },
            { "@type": "ListItem", position: 2, name: "تحميل تطبيق أنمي نوفا", item: `${base}/app` },
          ],
        },
      ],
    };
  }

  if (/^\/anime\/\d+$/.test(cleanPath)) {
    return {
      "@context": "https://schema.org",
      "@graph": [
        websiteNode,
        {
          "@type": "TVSeries",
          "@id": `${canonical}#series`,
          name: animeName || title,
          description: desc,
          url: canonical,
          image: ogImage,
          inLanguage: "ar",
        },
        {
          "@type": "BreadcrumbList",
          itemListElement: [
            { "@type": "ListItem", position: 1, name: "أنمي نوفا", item: `${base}/` },
            { "@type": "ListItem", position: 2, name: "تصفح الأنمي", item: `${base}/browse` },
            { "@type": "ListItem", position: 3, name: animeName || title, item: canonical },
          ],
        },
      ],
    };
  }

  return {
    "@context": "https://schema.org",
    "@graph": [
      websiteNode,
      {
        "@type": "CollectionPage",
        "@id": `${canonical}#page`,
        name: title,
        description: desc,
        url: canonical,
        inLanguage: "ar",
        isPartOf: { "@id": `${base}/#website` },
      },
      {
        "@type": "BreadcrumbList",
        itemListElement: [
          { "@type": "ListItem", position: 1, name: "أنمي نوفا", item: `${base}/` },
          { "@type": "ListItem", position: 2, name: title, item: canonical },
        ],
      },
    ],
  };
}

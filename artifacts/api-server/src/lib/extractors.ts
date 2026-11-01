/**
 * extractors.ts — دوال استخراج مباشر من مواقع الأنمي
 *
 * الأخطاء التي تم تصحيحها:
 * 1. Template literals مفقودة الـ backticks في 9 أماكن
 * 2. Regex بها slashes غير مُهرَّبة:
 *    - `//$`              → `/\/$/`
 *    - `//watch/(\d+)/`  → `/\/watch\/(\d+)\//`
 *    - `/https://w.aflamy...` → `/https:\/\/w\.aflamy\..../`
 *    - نقاط الدومين في MyCima غير مُهرَّبة
 * 3. `DOMParser` غير موجود في Node.js → استُبدل بـ cheerio
 * 4. `atob` غير موثوق في Node.js → استُبدل بـ `Buffer.from(..., "base64")`
 * 5. Kawaii Anime: منطق خاطئ (قراءة URL) → استُبدل بـ API مباشر
 */

import * as cheerio from "cheerio";

// ─── TopCinemaa ───────────────────────────────────────────────────────────────

export async function extractDirectTopCinemaa(urlStr: string) {
  // BUG 1+2 FIX: كانت `//$` خطأ regex، والـ template literal بدون backticks
  const watchUrl = urlStr.endsWith("/watch/")
    ? urlStr
    : `${urlStr.replace(/\/$/, "")}/watch/`;
  const targetUrl = watchUrl.replace("topcinemaa.com", "web.topcinemaa.com");

  const res = await fetch(targetUrl, { headers: { "User-Agent": "Mozilla/5.0" } });
  if (!res.ok) throw new Error(`TopCinemaa HTTP ${res.status}`);
  const html = await res.text();

  // BUG 3 FIX: DOMParser → cheerio
  const $ = cheerio.load(html);

  const iframes = $("iframe")
    .map((_, el) => $(el).attr("src"))
    .get()
    .filter((src): src is string => !!src);

  const servers = iframes.map((src) => {
    const name = src.includes("vidtube")
      ? "VidTube"
      : src.includes("mp4plus")
      ? "MP4Plus"
      : "Direct Server";
    // BUG 1 FIX: كان `${name} (Direct)` بدون backticks
    return { name: `${name} (Direct)`, url: src, type: "direct" };
  });

  return { success: true, source: "TopCinemaa (Direct)", servers };
}

// ─── MyCima ───────────────────────────────────────────────────────────────────

export async function extractDirectMyCima(urlStr: string) {
  // BUG 2 FIX: النقاط في الدومين تحتاج escape في regex
  const targetUrl = urlStr.replace(
    /(mycima\.gives|wecima\.cx|mycima\.movie)/,
    "mycami.skin"
  );
  const res = await fetch(targetUrl, { headers: { "User-Agent": "Mozilla/5.0" } });
  if (!res.ok) throw new Error(`MyCima HTTP ${res.status}`);
  const html = await res.text();

  // BUG 2 FIX: الـ regex الأصلي `/https://w.aflamy.pro/albaplayer/...`
  // الـ slashes والنقاط داخل regex literal يجب هربتها
  const albaplayerMatch = html.match(
    /https:\/\/w\.aflamy\.pro\/albaplayer\/[^\s"']+/
  );

  if (albaplayerMatch) {
    const albaRes = await fetch(albaplayerMatch[0], {
      headers: { "User-Agent": "Mozilla/5.0", Referer: "https://mycami.skin/" },
    });
    const albaHtml = await albaRes.text();

    const iframeMatches =
      albaHtml.match(
        /https:\/\/(?:mp4plus|anafast|vidoba|vidspeed)\.cyou\/embed-[^\s"']+/g
      ) || [];

    const servers = [...new Set(iframeMatches)].map((u) => {
      const name = u.includes("mp4plus")
        ? "MP4Plus"
        : u.includes("anafast")
        ? "AnaFast"
        : u.includes("vidoba")
        ? "Vidoba"
        : "VidSpeed";
      // BUG 1 FIX: `${name} (Direct)` بدون backticks
      return { name: `${name} (Direct)`, url: u, type: "direct" };
    });

    return {
      success: true,
      source: "MyCima (Direct)",
      playerUrl: albaplayerMatch[0],
      servers,
    };
  }

  throw new Error("No player found on MyCima page");
}

// ─── AnimeDar ─────────────────────────────────────────────────────────────────

export async function extractDirectAnimedar(urlStr: string) {
  const res = await fetch(urlStr, { headers: { "User-Agent": "Mozilla/5.0" } });
  if (!res.ok) throw new Error(`AnimeDar HTTP ${res.status}`);
  const html = await res.text();

  // BUG 3 FIX: DOMParser → cheerio
  const $ = cheerio.load(html);

  const servers: Array<{ name: string; url: string; type: string }> = [];

  $("li[data][type]").each((_, li) => {
    const type = $(li).attr("type") || "";
    const data = $(li).attr("data") || "";
    const quality = $(li).attr("quality-data") || "HD";
    const name = $(li).text().trim() || type.toUpperCase();

    if (type === "4shared") {
      // BUG 1 FIX: template literals كانت بدون backticks
      servers.push({
        name: `${name} (${quality})`,
        url: `https://www.4shared.com/web/embed/file/${data}`,
        type: "direct",
      });
    } else if (type === "mega") {
      servers.push({
        name: `${name} (${quality})`,
        url: `https://mega.nz/embed#!${data}`,
        type: "direct",
      });
    }
  });

  return { success: true, source: "Animedar (Direct)", servers };
}

// ─── Shahiid Anime ────────────────────────────────────────────────────────────

export async function extractDirectShahiid(urlStr: string) {
  const res = await fetch(urlStr, { headers: { "User-Agent": "Mozilla/5.0" } });
  if (!res.ok) throw new Error(`Shahiid HTTP ${res.status}`);
  const html = await res.text();

  // BUG 3 FIX: DOMParser → cheerio
  const $ = cheerio.load(html);

  const servers: Array<{ name: string; url: string; type: string }> = [];

  for (const btn of $(".movies-servers a.buttosn").toArray()) {
    const name = $(btn).text().trim();
    const frameServer = $(btn).attr("data-frameserver") || "";

    if (name.includes("Okru") && frameServer) {
      try {
        // BUG 1 FIX: template literal `https://ok.ru/videoembed/${frameServer}` بدون backticks
        const okRes = await fetch(
          `https://ok.ru/videoembed/${frameServer}`
        );
        const okHtml = await okRes.text();

        // BUG 3 FIX: DOMParser ثانية → cheerio
        const $ok = cheerio.load(okHtml);
        const el = $ok("[data-options]").first();
        const options = JSON.parse(el.attr("data-options") || "{}") as {
          flashvars?: { metadata?: string };
        };
        const metadata = JSON.parse(options.flashvars?.metadata || "{}") as {
          videos?: Array<{ name: string; url: string }>;
        };

        for (const vid of metadata.videos || []) {
          // BUG 1 FIX: `OkRu (${vid.name})` بدون backticks
          servers.push({ name: `OkRu (${vid.name})`, url: vid.url, type: "direct" });
        }
      } catch (_) {}
    }
  }

  return { success: true, source: "Shahiid Anime (Direct)", servers };
}

// ─── Kawaii Anime ─────────────────────────────────────────────────────────────

/**
 * Kawaii now serves episode data from /api/miruro and wraps it in `data`.
 * The older /api/watch route can return APP_KEY_MISSING, so try the live API
 * and its aliases first; keep /api/watch only as a final compatibility path.
 */
const KAWAII_EXTRACTOR_API_BASES = [
  "https://kawaiianime.cc",
  "https://www.kawaii-anime.com",
  "https://kawaii-anime.com",
] as const;

type KawaiiExtractorSource = {
  url: string;
  quality?: string;
  isM3U8?: boolean;
  type?: string;
};

async function fetchKawaiiExtractorSources(
  base: string,
  apiUrl: string,
): Promise<KawaiiExtractorSource[] | null> {
  try {
    const response = await fetch(apiUrl, {
      headers: {
        "User-Agent": "Mozilla/5.0",
        Referer: `${base}/`,
        Accept: "application/json",
      },
      signal: AbortSignal.timeout(10_000),
    });
    if (!response.ok) return null;

    const candidate = await response.json().catch(() => null) as any;
    const payload = candidate?.data && typeof candidate.data === "object"
      ? candidate.data
      : candidate;
    const rows = Array.isArray(payload?.sources)
      ? payload.sources.filter((row: unknown): row is KawaiiExtractorSource =>
          !!row &&
          typeof row === "object" &&
          typeof (row as KawaiiExtractorSource).url === "string" &&
          (row as KawaiiExtractorSource).url.trim().length > 0)
      : [];
    return rows.length ? rows : null;
  } catch {
    return null;
  }
}

export async function extractDirectKawaiiAnime(anilistId: number, ep: number) {
  if (!Number.isSafeInteger(anilistId) || anilistId <= 0 ||
      !Number.isSafeInteger(ep) || ep <= 0) {
    throw new Error("Kawaii requires a valid AniList ID and episode number");
  }

  let result: { base: string; sources: KawaiiExtractorSource[] } | null = null;

  // Prefer the current public endpoint across all known aliases before
  // falling back to the old app-key-protected endpoint.
  for (const base of KAWAII_EXTRACTOR_API_BASES) {
    const urls = [
      `${base}/api/miruro?anilistId=${anilistId}&ep=${ep}`,
      `${base}/api/miruro?anilist_id=${anilistId}&episode=${ep}`,
    ];
    for (const apiUrl of urls) {
      const sources = await fetchKawaiiExtractorSources(base, apiUrl);
      if (sources) {
        result = { base, sources };
        break;
      }
    }
    if (result) break;
  }

  if (!result) {
    for (const base of KAWAII_EXTRACTOR_API_BASES) {
      const apiUrl = `${base}/api/watch?anilistId=${anilistId}&ep=${ep}`;
      const sources = await fetchKawaiiExtractorSources(base, apiUrl);
      if (!sources) continue;
      result = { base, sources };
      break;
    }
  }

  if (!result) throw new Error("No sources from Kawaii API");
  const { base: sourceBase, sources } = result;

  return {
    success: true,
    source: "Kawaii Anime",
    servers: sources.map((source) => {
      const url = new URL(source.url, `${sourceBase}/`).toString();
      const type = String(source.type || "").toLowerCase();
      const isHls = source.isM3U8 === true ||
        type === "hls" ||
        type === "m3u8" ||
        /\.m3u8(?:[?#]|$)/i.test(url) ||
        /\/(?:hls|playlist)(?:\/|$)/i.test(url);
      return {
        name: `Kawaii (${source.quality || "HD"})`,
        url,
        type: isHls ? "hls" : "direct",
      };
    }),
  };
}

// ─── Anime Phoenix ────────────────────────────────────────────────────────────

export async function extractDirectAnimePhoenix(urlStr: string) {
  const res = await fetch(urlStr, {
    headers: {
      "User-Agent":
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
    },
  });
  if (!res.ok) throw new Error(`AnimePhoenix HTTP ${res.status}`);
  const html = await res.text();

  // BUG 3 FIX: DOMParser → cheerio
  const $ = cheerio.load(html);

  const servers: Array<{ name: string; url: string; type: string }> = [];

  $(".FJ-Server-Link.server-link").each((_, el) => {
    const dataServer = $(el).attr("data-server");
    if (!dataServer) return;

    try {
      // BUG 4 FIX: `atob` غير موثوق في Node.js → Buffer.from(..., "base64")
      const normalized = dataServer.replace(/-/g, "+").replace(/_/g, "/");
      const decoded = JSON.parse(
        decodeURIComponent(Buffer.from(normalized, "base64").toString("utf-8"))
      ) as { link?: string; type?: string; name?: string };

      if (
        decoded.link &&
        (decoded.type === "direct" ||
          decoded.link.includes("workers.dev") ||
          decoded.link.includes("drive"))
      ) {
        servers.push({
          name: decoded.name || $(el).text().trim() || "Direct Server",
          url: decoded.link,
          type: "direct",
        });
      }
    } catch (_) {}
  });

  return { success: true, source: "Anime Phoenix (Direct Links)", servers };
}

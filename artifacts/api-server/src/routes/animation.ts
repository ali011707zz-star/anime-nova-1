import { Router, type Request, type Response } from "express";
import { AsyncLocalStorage } from "node:async_hooks";
import { randomBytes, createHash, createDecipheriv } from "node:crypto";
import {
  makeAnimCacheKey,
  getFromSourceCache,
  setSourceCache,
  shouldRefreshCache,
} from "../lib/sourceCache.js";

const router = Router();

const TMDB_KEY  = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_BASE = "https://api.themoviedb.org/3";
const SD_BASE   = "https://watch.stardima.com/watch";
const SD_AJAX   = "https://watch.stardima.com/watch/wp-admin/admin-ajax.php";
const MV_BASE   = "https://moviz-time.co";
const AS_CDN_B  = "https://as-cdn21.top";
const RUBY_B    = "https://rubystm.com";

// ── Icefy (streams.icefy.top) — عبر Orkestr EU relay ─────────────────────────
// API: GET /movie/{tmdbId} → {"stream":"https://streams.icefy.top/{hash}/master.m3u8"}
// CF blocks Replit IPs → route API + HLS through anime-nova.orkestr.run (EU IP)

// ── SeePanal (panel.seepanel.top) ─────────────────────────────────────────────
const SP_BASE = "https://panel.seepanel.top/api";
const SP_KEY  = "4F5A9C3D9A86FA54EACEDDD635185";
const SP_UUID = "d506abfd-9fe2-4b71-b979-feff21bcad13";
const spSearchCache = new Map<string, { data: any; ts: number }>();
const SP_TTL = 3_600_000;

// ── VidFast Pro helpers (shared with anime.ts logic, duplicated here for module isolation) ──
const _VFK1 = Buffer.from("6430779f4751854e855dcf55adedd397341ca1917f499326d39987a9de3f10b1", "hex");
const _VFK2 = Buffer.from("7c81780901000000", "hex");
const _VFK3 = Buffer.from("2339bbcb00000000", "hex");
const _VF_ORIGIN       = "https://vidfast.pro";
const _VF_PROBE_PREFIX = "/c1e375a038fedd84d8efd9f3a6b2aba044d1f28e/x";
const _VF_STREAM_PFX   = "j2iuFyZz_-A";
const _VF_UA           = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36";
const _VF_PROBE_B64    = "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";
let _animVfProbe: { name: string; data: string }[] | null = null;
function _animVfDeriveKey(header: Buffer): Buffer {
  const h1 = createHash("sha256").update(_VFK1).update(_VFK2).update(_VFK3).digest();
  return createHash("sha256").update(h1).update(header).digest();
}
function _animVfDecJson(b64: string): any {
  const raw    = Buffer.from(b64, "base64");
  const header = raw.subarray(0, 16);
  const iv     = raw.subarray(16, 28);
  const tag    = raw.subarray(raw.length - 16);
  const enc    = raw.subarray(28, raw.length - 16);
  const d = createDecipheriv("aes-256-gcm", _animVfDeriveKey(header), iv);
  d.setAuthTag(tag);
  const plain = Buffer.concat([d.update(enc), d.final()]);
  return JSON.parse(plain.subarray(8).toString("utf8"));
}
function _animVfGetProbe(): { name: string; data: string }[] {
  if (_animVfProbe) return _animVfProbe;
  try {
    const json = _animVfDecJson(_VF_PROBE_B64);
    const list: any[] = Array.isArray(json) ? json : (json.servers || []);
    _animVfProbe = list.map((r: any, i: number) => ({
      name: r.name || r.server || `Server ${i + 1}`,
      data: String(r.data ?? r.id ?? ""),
    })).filter(r => r.data);
  } catch { _animVfProbe = []; }
  return _animVfProbe!;
}
async function _animVfPostStream(data: string, page: string): Promise<string | null> {
  const path = `${_VF_PROBE_PREFIX}/${_VF_STREAM_PFX}/${data}`.replace(/\/+/g, "/").replace(/^\//, "");
  try {
    const res = await fetch(`${_VF_ORIGIN}/${path}`, {
      method : "POST",
      headers: { "User-Agent": _VF_UA, "Origin": _VF_ORIGIN, "Referer": `${_VF_ORIGIN}${page}` },
      signal : AbortSignal.timeout(5_000),
    });
    const text = (await res.text()).trim();
    return (!res.ok || !text || text.startsWith("{")) ? null : text;
  } catch { return null; }
}
async function scrapeVidFastAnim(
  tmdbId: string, type: "movie" | "tv", season: number, episode: number,
  sendSource: (url: string, label: string, directUrl?: string, proxyUrl?: string) => void,
): Promise<void> {
  if (!tmdbId) return;
  const page    = type === "tv" ? `/tv/${tmdbId}/${season}/${episode}` : `/movie/${tmdbId}`;
  const servers = _animVfGetProbe();
  if (!servers.length) return;
  const seenVF = new Set<string>();
  await Promise.allSettled(
    servers.map(async (srv) => {
      const b64 = await _animVfPostStream(srv.data, page);
      if (!b64) return;
      let url: string;
      try { const j = _animVfDecJson(b64); url = j.url; if (!url) return; } catch { return; }
      if (seenVF.has(url)) return;
      seenVF.add(url);
      const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(_VF_ORIGIN + "/")}`;
      sendSource(proxied, `VidFast · ${srv.name}`, url, proxied);
    }),
  );
}
// Dead / empty hosts on SeePanal
const SP_DEAD = [
  "wecima.video","dailymotion","faselhds.life","goveed1.space","vdbtm.shop",
  "okprime.site","vk.com","hgcloud.to","vidhideplus.com","mixdrop",
];

async function spFetch<T>(path: string): Promise<T | null> {
  try {
    const r = await fetch(`${SP_BASE}/${path}/${SP_KEY}/${SP_UUID}/`, {
      headers: { "User-Agent": "okhttp/4.12.0", Accept: "application/json" },
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) return null;
    const text = await r.text();
    if (text.startsWith("<!")) return null;
    return JSON.parse(text) as T;
  } catch { return null; }
}

async function spSearch(query: string): Promise<any[]> {
  const cKey = `sp:${query.toLowerCase()}`;
  const cached = spSearchCache.get(cKey);
  if (cached && Date.now() - cached.ts < SP_TTL) return cached.data;
  const data = await spFetch<{ posters: any[] }>(`search/${encodeURIComponent(query)}`);
  const posters = data?.posters ?? [];
  spSearchCache.set(cKey, { data: posters, ts: Date.now() });
  return posters;
}

function spTitleSim(a: string, b: string): number {
  const norm = (s: string) => s.toLowerCase()
    .replace(/\s*-\s*[\u0600-\u06ff].*/u, "")  // strip Arabic subtitle after dash
    .replace(/[^a-z0-9\u0600-\u06ff ]/g, " ").replace(/\s+/g, " ").trim();
  return titleSim(norm(a), norm(b));
}

// Extract live sources from a SeePanal entry (serie or movie)
// Returns array of { url, quality } for each working server
async function spGetSources(
  poster: any, epIdx: number,
): Promise<Array<{ url: string; quality: string }>> {
  if (poster.type === "movie") {
    const movie = await spFetch<{ sources?: any[] }>(`movie/by/${poster.id}`);
    return (movie?.sources ?? [])
      .filter((s: any) => s.url?.startsWith("http") && !SP_DEAD.some(h => s.url.includes(h)))
      .map((s: any) => ({ url: s.url, quality: s.quality || "HD" }));
  }
  const seasons: any[] | null = await spFetch(`season/by/serie/${poster.id}`);
  if (!seasons?.length) return [];
  const active = seasons
    .filter((s: any) => !s.title?.includes("قريبا") && s.episodes?.some((e: any) => e.sources?.length))
    .sort((a: any, b: any) => a.id - b.id);
  let idx = 0;
  for (const season of active) {
    for (const ep of season.episodes) {
      if (!ep.sources?.length) continue;
      idx++;
      if (idx === epIdx) {
        return (ep.sources as any[])
          .filter((s: any) => s.url?.startsWith("http") && !SP_DEAD.some(h => s.url.includes(h)))
          .map((s: any) => ({ url: s.url, quality: s.quality || "HD" }));
      }
    }
  }
  return [];
}

const UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

// ── helpers ──────────────────────────────────────────────────────────────────

const _tmdbCache = new Map<string, { data: any; ts: number }>();
const TMDB_TTL_BROWSE = 10 * 60_000;
const TMDB_TTL_DETAIL = 30 * 60_000;
const TMDB_TTL_SEARCH = 5  * 60_000;

async function tmdb(path: string, ttl = TMDB_TTL_BROWSE): Promise<any> {
  const sep = path.includes("?") ? "&" : "?";
  const url = `${TMDB_BASE}${path}${sep}api_key=${TMDB_KEY}&language=ar`;
  const hit = _tmdbCache.get(url);
  if (hit && Date.now() - hit.ts < ttl) return hit.data;
  const r = await fetch(url, { signal: AbortSignal.timeout(12_000) });
  if (!r.ok) throw new Error(`TMDB ${r.status} — ${path}`);
  const data = await r.json();
  _tmdbCache.set(url, { data, ts: Date.now() });
  return data;
}

// ═══════════════════════════════════════════════════════════════════
//  ARABSEED (a.asd.ink) — Arabic dubbed/subbed content
//  a.asd.ink WP REST + episode pages work directly from Replit (confirmed 2026-06)
//  arabseed.ink → 302 → a.asd.ink; m.asd.ink → 302 (dead from Replit)
// ═══════════════════════════════════════════════════════════════════
const AS_BASE = "https://a.asd.ink";

function asDecode(raw: string): string {
  return raw.replace(/&#(\d+);/g, (_, n) => String.fromCharCode(+n))
            .replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">");
}

// CF proxy helper — يمرر الطلب عبر curl_cffi (يتجاوز حجب IP من Replit)
async function cfProxyGet(url: string): Promise<string> {
  const CF_PORT = process.env["CF_PROXY_PORT"] || "8000";
  const proxyUrl = `http://localhost:${CF_PORT}/fetch?url=${encodeURIComponent(url)}`;
  const r = await fetch(proxyUrl, {
    headers: { "User-Agent": UA },
    signal: AbortSignal.timeout(12_000),
  });
  if (!r.ok) throw new Error(`CF proxy HTTP ${r.status}`);
  return r.text();
}

// CF + Orkestr fallback — يجرب cfProxyGet أولاً، إذا حجبه CF يجرب خادم Orkestr الخارجي (EU IP)
async function cfOrOrkestGet(url: string): Promise<string> {
  const isCfPage = (h: string) =>
    h.includes("Just a moment") || h.includes("cf-browser-verification") || h.length < 300;
  try {
    const html = await cfProxyGet(url);
    if (!isCfPage(html)) return html;
  } catch { /* fall through */ }
  // Fallback: Orkestr relay (EU IP, not Replit datacenter)
  const ORKESTR = process.env["ORKESTR_URL"] || "https://anime-nova.orkestr.run";
  const ORKESTR_API_KEY = process.env["ORKESTR_API_KEY"] || "";
  const orkHeaders: Record<string, string> = {};
  if (ORKESTR_API_KEY) orkHeaders["Authorization"] = `Bearer ${ORKESTR_API_KEY}`;
  const r = await fetch(
    `${ORKESTR}/api/anime/proxy-text?url=${encodeURIComponent(url)}`,
    { headers: orkHeaders, signal: AbortSignal.timeout(25_000) }
  );
  if (!r.ok) throw new Error(`Orkestr HTTP ${r.status}`);
  const html = await r.text();
  if (isCfPage(html)) throw new Error("CF still blocked via Orkestr");
  return html;
}

// Orkestr direct GET — يتجاوز CF proxy تماماً (مفيد للمواقع التي تحجب Replit IPs وcf_proxy معاً)
async function orkestDirectGet(url: string, timeoutMs = 25_000): Promise<string> {
  const ORKESTR = process.env["ORKESTR_URL"] || "https://anime-nova.orkestr.run";
  const ORKESTR_API_KEY = process.env["ORKESTR_API_KEY"] || "";
  const orkHeaders: Record<string, string> = {};
  if (ORKESTR_API_KEY) orkHeaders["Authorization"] = `Bearer ${ORKESTR_API_KEY}`;
  const r = await fetch(
    `${ORKESTR}/api/anime/proxy-text?url=${encodeURIComponent(url)}`,
    { headers: orkHeaders, signal: AbortSignal.timeout(timeoutMs) }
  );
  if (!r.ok) throw new Error(`Orkestr HTTP ${r.status}`);
  const html = await r.text();
  if (html.length < 500 || html.includes("Just a moment") || html.includes("Attention Required")) {
    throw new Error("Orkestr: CF blocked");
  }
  return html;
}

// CF proxy POST — يرسل POST عبر curl_cffi مع Orkestr fallback
async function cfOrOrkestPost(url: string): Promise<string> {
  const CF_PORT = process.env["CF_PROXY_PORT"] || "8000";
  const isCfPage = (h: string) =>
    h.includes("Just a moment") || h.includes("cf-browser-verification") || h.length < 300;
  try {
    const r = await fetch(
      `http://localhost:${CF_PORT}/fetch?url=${encodeURIComponent(url)}&method=POST`,
      { signal: AbortSignal.timeout(18_000) }
    );
    if (r.ok) {
      const html = await r.text();
      if (!isCfPage(html)) return html;
    }
  } catch { /* fall through */ }
  // Fallback: Orkestr POST relay
  const ORKESTR = process.env["ORKESTR_URL"] || "https://anime-nova.orkestr.run";
  const ORKESTR_API_KEY = process.env["ORKESTR_API_KEY"] || "";
  const orkHeaders2: Record<string, string> = {};
  if (ORKESTR_API_KEY) orkHeaders2["Authorization"] = `Bearer ${ORKESTR_API_KEY}`;
  const r2 = await fetch(
    `${ORKESTR}/api/anime/proxy-text?url=${encodeURIComponent(url)}&method=POST`,
    { headers: orkHeaders2, signal: AbortSignal.timeout(25_000) }
  );
  if (!r2.ok) throw new Error(`Orkestr POST HTTP ${r2.status}`);
  return r2.text();
}

async function asFetchPosts(params: string): Promise<Array<{ id: number; link: string; title: { rendered: string } }>> {
  try {
    // arabseed.ink WP REST works directly from Replit IPs (confirmed 2026-06)
    const url = `${AS_BASE}/wp-json/wp/v2/posts?${params}&_fields=id,link,title`;
    const r = await fetch(url, {
      headers: { "User-Agent": UA, Accept: "application/json" },
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) return [];
    const text = await r.text();
    if (!text.trim().startsWith("[")) return [];
    return JSON.parse(text) as Array<{ id: number; link: string; title: { rendered: string } }>;
  } catch { return []; }
}

async function asFindEpisodeUrl(q: string, ep: number): Promise<string | null> {
  const EP_RE = /الحلقة\s+(\d+)/;
  const qWords = q.toLowerCase().split(/\s+/).filter(w => w.length > 2);
  function matchEp(posts: Array<{ id: number; link: string; title: { rendered: string } }>): string | null {
    for (const post of posts) {
      const title = asDecode(post.title?.rendered || "");
      const epM = EP_RE.exec(title);
      if (!epM || parseInt(epM[1], 10) !== ep) continue;
      const titleLow = title.toLowerCase();
      if (qWords.some(w => titleLow.includes(w))) return post.link;
    }
    return null;
  }
  const enc = encodeURIComponent(q);
  const [targeted, asc, desc] = await Promise.all([
    asFetchPosts(`search=${encodeURIComponent(q + " الحلقة " + ep)}&per_page=20`),
    asFetchPosts(`search=${enc}&per_page=100&orderby=date&order=asc`),
    asFetchPosts(`search=${enc}&per_page=100&orderby=date&order=desc`),
  ]);
  return matchEp(targeted) ?? matchEp(asc) ?? matchEp(desc) ?? null;
}

async function asFindMovieUrl(q: string): Promise<string | null> {
  const qWords = q.toLowerCase().split(/\s+/).filter(w => w.length > 2);
  try {
    const posts = await asFetchPosts(`search=${encodeURIComponent(q)}&per_page=20&orderby=relevance`);
    for (const post of posts) {
      const title = asDecode(post.title?.rendered || "").toLowerCase();
      if (qWords.some(w => title.includes(w))) return post.link;
    }
  } catch {}
  return null;
}

async function cfGet(url: string, referer?: string): Promise<string> {
  const r = await fetch(url, {
    headers: {
      "User-Agent"     : UA,
      "Accept"         : "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      "Accept-Language": "ar,en;q=0.9",
      "Referer"        : referer || url,
    },
    signal: AbortSignal.timeout(14_000),
  });
  if (!r.ok) throw new Error(`HTTP ${r.status}`);
  return r.text();
}

function titleSim(a: string, b: string): number {
  const norm = (s: string) => s.toLowerCase().replace(/[^a-z0-9\u0600-\u06ff ]/g, "").replace(/\s+/g, " ").trim();
  // ASCII-only fallback: strips non-ASCII (e.g. Arabic chars) — helps with mixed-language slugs
  const normAscii = (s: string) => s.toLowerCase().replace(/[^a-z0-9 ]/g, "").replace(/\s+/g, " ").trim();
  const na = norm(a); const nb = norm(b);
  if (na === nb) return 1;
  if (na.includes(nb) || nb.includes(na)) {
    const wa_len = na.split(" ").length;
    const wb_len = nb.split(" ").length;
    const wordRatio = Math.min(wa_len, wb_len) / Math.max(wa_len, wb_len || 1);
    const lenRatio  = Math.min(na.length, nb.length) / Math.max(na.length, nb.length || 1);
    // Penalise by BOTH word count AND char length; prevents "Kung Fu Panda" from
    // strongly matching "Kung Fu Panda 4" or "Kung Fu Panda: Dragon Knight"
    return Math.min(0.95, 0.85 * (0.4 + Math.min(wordRatio, lenRatio) * 0.6));
  }
  const wa = na.split(" "); const wb = nb.split(" ");
  const common = wa.filter(w => wb.some(x => x === w || (w.length > 3 && (x.includes(w) || w.includes(x))))).length;
  const score = common / Math.max(wa.length, wb.length);
  if (score > 0) return score;
  // ASCII fallback: useful when one string has Arabic that the other omits
  const aa = normAscii(a); const ab = normAscii(b);
  if (!aa || !ab) return 0;
  if (aa === ab) return 0.92;
  if (aa.includes(ab) || ab.includes(aa)) {
    const rl = Math.min(aa.length, ab.length) / Math.max(aa.length, ab.length || 1);
    return Math.min(0.88, 0.75 * (0.4 + rl * 0.6));
  }
  const wa2 = aa.split(" "); const wb2 = ab.split(" ");
  const c2 = wa2.filter(w => wb2.some(x => x === w || (w.length > 3 && (x.includes(w) || w.includes(x))))).length;
  return (c2 / Math.max(wa2.length, wb2.length)) * 0.9; // slight penalty for ASCII-only match
}

function parsePostId(html: string): string | null {
  for (const re of [/postid-(\d+)/, /post_id['":\s]+(\d+)/, /"id":(\d+)/]) {
    const m = html.match(re); if (m) return m[1];
  }
  return null;
}

function parseNonce(html: string): string {
  // Try data-nonce attribute first
  const m1 = html.match(/data-nonce="([a-f0-9]{10,12})"/);
  if (m1) return m1[1];
  // Try JSON nonce
  const m2 = html.match(/"nonce"\s*:\s*"([a-f0-9]{10,12})"/);
  if (m2) return m2[1];
  // Try wp_localize_script nonce
  const m3 = html.match(/nonce["'\s:]+([a-f0-9]{10,12})/);
  if (m3) return m3[1];
  return "023077457a";
}

// Extract data-src or src iframes from HTML
function parseIframes(html: string, skipDomains: string[] = []): string[] {
  const seen = new Set<string>();
  const out: string[] = [];
  const re = /<iframe[^>]+(?:data-src|src)\s*=\s*["']([^"']+)["'][^>]*>/gi;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const u = m[1].trim();
    if (!u || u.startsWith("about:") || u.startsWith("javascript:")) continue;
    if (seen.has(u)) continue;
    const skip = skipDomains.some(d => u.includes(d));
    if (skip) continue;
    seen.add(u);
    out.push(u);
  }
  return out;
}

// ── StarDima helpers ──────────────────────────────────────────────────────────

function parseSDShows(html: string): { title: string; slug: string; poster: string; section: "tvshows" | "movies" }[] {
  const seen = new Set<string>();
  const out: { title: string; slug: string; poster: string; section: "tvshows" | "movies" }[] = [];

  for (const section of ["tvshows", "movies"] as const) {
    const re1 = new RegExp(
      `href="https://watch\\.stardima\\.com/watch/${section}/([^"]+)"[^>]*>[\\s\\S]{0,400}?<img[^>]+src="([^"]+)"[^>]*alt="([^"]*)"`, "g"
    );
    let m: RegExpExecArray | null;
    while ((m = re1.exec(html)) !== null) {
      const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
      if (seen.has(slug)) continue; seen.add(slug);
      out.push({ slug, poster: m[2], title: m[3].trim() || slug, section });
    }
    const re2 = new RegExp(
      `<a[^>]+href="https://watch\\.stardima\\.com/watch/${section}/([^"]+)"[^>]*>([^<]+)<`, "g"
    );
    while ((m = re2.exec(html)) !== null) {
      const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
      if (seen.has(slug)) continue; seen.add(slug);
      out.push({ slug, poster: "", title: m[2].trim() || slug, section });
    }
  }
  return out;
}

function parseSDEpisodes(html: string): { title: string; slug: string; num: number }[] {
  const seen = new Set<string>();
  const out: { title: string; slug: string; num: number }[] = [];
  const re = /href="https:\/\/watch\.stardima\.com\/watch\/episodes\/([^"]+)"[^>]*(?:title="([^"]*)")?/g;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
    if (seen.has(slug)) continue; seen.add(slug);
    const title = m[2] ? m[2].trim() : slug;
    const numM = title.match(/(\d+)/);
    out.push({ slug, title, num: numM ? parseInt(numM[1]) : out.length + 1 });
  }
  return out;
}

async function sdDoopPlayerAjax(postId: string, nonce: string, referer: string): Promise<string[]> {
  const out: string[] = [];
  await Promise.allSettled(
    [1, 2, 3, 4, 5].map(async (num) => {
      const body = new URLSearchParams({
        action : "doo_player_ajax",
        post_id: postId,
        nonce,
        num    : String(num),
        g      : "0",
      });
      try {
        const r = await fetch(SD_AJAX, {
          method : "POST",
          headers: {
            "Content-Type"    : "application/x-www-form-urlencoded",
            "User-Agent"      : UA,
            "Referer"         : referer,
            "X-Requested-With": "XMLHttpRequest",
          },
          body  : body.toString(),
          signal: AbortSignal.timeout(7_000),
        });
        if (!r.ok) return;
        const text = await r.text();
        if (!text || text === "0" || text === "false") return;
        let parsed: any;
        try { parsed = JSON.parse(text); } catch { return; }
        const url = parsed.embed_url || parsed.url || parsed.link || "";
        if (url) out.push(url);
      } catch { /* skip */ }
    })
  );
  return out;
}

// ── moviz-time.co helpers ─────────────────────────────────────────────────────

function parseMVLinks(html: string): { url: string; title: string }[] {
  const seen = new Set<string>();
  const out: { url: string; title: string }[] = [];
  // Match any moviz-time.co page links (case-insensitive percent encoding)
  const re = /href="(https?:\/\/moviz-time\.co\/[^"]+)"[^>]*(?:title="([^"]*)")?/gi;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const url  = m[1];
    const title = m[2] || decodeURIComponent(url).split("/").filter(Boolean).pop() || url;
    if (seen.has(url)) continue;
    // Skip pagination, category, feed, contact, tag pages
    if (/\/(category|page|feed|tag|contact|about|wp-|wp-json)\//i.test(url)) continue;
    if (url === "https://moviz-time.co/" || url === "https://moviz-time.co") continue;
    seen.add(url);
    out.push({ url, title });
  }
  return out;
}

async function mvScrapeMovie(url: string): Promise<string[]> {
  try {
    const html = await cfGet(url, MV_BASE + "/");
    const iframes = parseIframes(html, ["moviz-time", "google", "histats", "w3counter"]);
    return iframes;
  } catch { return []; }
}

// For moviz-time.co series: find episode links
async function mvFindEpisode(seriesUrl: string, epNum: number): Promise<string | null> {
  try {
    const html = await cfGet(seriesUrl, MV_BASE + "/");
    // Look for episode links
    const re = /href="(https:\/\/moviz-time\.co\/[^"]+(?:الحلقة|حلقة|episode)[^"]+)"/g;
    const episodes: { url: string; num: number }[] = [];
    let m: RegExpExecArray | null;
    while ((m = re.exec(html)) !== null) {
      const ep = m[1];
      const numM = ep.match(/(?:الحلقة|حلقة|episode)[^\d]*(\d+)/u);
      const num = numM ? parseInt(numM[1]) : episodes.length + 1;
      episodes.push({ url: ep, num });
    }
    if (!episodes.length) return null;
    episodes.sort((a, b) => a.num - b.num);
    const target = episodes.find(e => e.num === epNum) || episodes[epNum - 1] || episodes[0];
    return target?.url || null;
  } catch { return null; }
}

// ── topcinemaa.com helpers ────────────────────────────────────────────────────

// topcinemaa uses /search/?query=...&type=all (NOT /?s=)
async function tcSearch(title: string): Promise<{ url: string; title: string; epNum?: number }[]> {
  const out: { url: string; title: string; epNum?: number }[] = [];
  const seen = new Set<string>();
  try {
    const html = await cfGet(`https://topcinemaa.com/search/?query=${encodeURIComponent(title)}&type=all`, "https://topcinemaa.com/");
    const re = /href="(https:\/\/topcinemaa\.com\/[^"]+)"[^>]*title="([^"]+)"/g;
    let m: RegExpExecArray | null;
    while ((m = re.exec(html)) !== null) {
      const url = m[1]; const t = m[2];
      if (!url || seen.has(url)) continue;
      if (/\/(category|page|feed|tag|wp-|wp-json|search|movies|series|full-packs|netflix)\//i.test(url)) continue;
      if (url === "https://topcinemaa.com/") continue;
      seen.add(url);
      // Extract episode number from title or URL
      const decoded = decodeURIComponent(url);
      const numM = (t + " " + decoded).match(/(?:الحلقة|ep|episode)[^\d]*(\d+)/ui);
      out.push({ url, title: t, epNum: numM ? parseInt(numM[1]) : undefined });
    }
  } catch { /* silent */ }
  return out;
}

async function tcScrapePlayer(url: string): Promise<string[]> {
  try {
    const html = await cfGet(url, "https://topcinemaa.com/");

    // 1. Try JSON-LD embedUrl (Schema.org VideoObject)
    const jsonLdM = html.match(/<script[^>]+type="application\/ld\+json"[^>]*>([\s\S]+?)<\/script>/gi);
    if (jsonLdM) {
      for (const block of jsonLdM) {
        const inner = block.replace(/<script[^>]*>/, "").replace(/<\/script>/, "");
        try {
          const obj = JSON.parse(inner);
          const embedUrl = obj.embedUrl || obj.embed_url || obj.contentUrl || "";
          if (embedUrl && !embedUrl.includes("topcinemaa")) return [embedUrl];
        } catch { /* skip */ }
      }
    }

    // 2. Try data-src iframes (lazy load) - skip image CDN
    const iframes = parseIframes(html, ["topcinemaa", "google", "histats", "w3counter", "wp-content"]);
    if (iframes.length) return iframes;

    // 3. Try scanning for known CDN embed URLs in script tags
    const cdnMatch = html.match(/https?:\/\/(?:embed\.mystream\.to|vidbm\.|streamwish\.|filemoon\.|ok\.ru|dood\.|streamtape\.|vidmoly\.|mega\.nz)[^\s"'<>]{6,}/gi);
    if (cdnMatch) return [...new Set(cdnMatch)].slice(0, 3);

    // 4. Get post ID — try HTML parse first, then WordPress REST API via slug
    let postId = parsePostId(html);
    if (!postId) {
      const slugMatch = url.match(/topcinemaa\.com\/([^/?#]+)\/?$/);
      if (slugMatch) {
        try {
          const slugRaw = slugMatch[1];
          const restText = await cfGet(
            `https://topcinemaa.com/wp-json/wp/v2/posts?slug=${slugRaw}&_fields=id`,
            "https://topcinemaa.com/"
          );
          const restData = JSON.parse(restText);
          if (Array.isArray(restData) && restData[0]?.id) postId = String(restData[0].id);
        } catch { /* silent */ }
      }
    }
    const nonce = parseNonce(html);
    if (!postId) return [];

    const results: string[] = [];
    await Promise.allSettled([1, 2, 3, 4, 5].map(async (num) => {
      const body = new URLSearchParams({ action: "doo_player_ajax", post_id: postId!, nonce, num: String(num), g: "0" });
      try {
        const r = await fetch("https://topcinemaa.com/wp-admin/admin-ajax.php", {
          method: "POST",
          headers: { "Content-Type": "application/x-www-form-urlencoded", "User-Agent": UA, "Referer": url, "X-Requested-With": "XMLHttpRequest" },
          body  : body.toString(),
          signal: AbortSignal.timeout(8_000),
        });
        if (!r.ok) return;
        const text = await r.text();
        if (!text || text === "0" || text === "false") return;
        let parsed: any;
        try { parsed = JSON.parse(text); } catch { return; }
        const u = parsed.embed_url || parsed.url || parsed.link || "";
        if (u) results.push(u);
      } catch { /* skip */ }
    }));
    return results;
  } catch { return []; }
}

// ── TMDB endpoints ────────────────────────────────────────────────────────────

/** Detect Japanese/Chinese/Korean characters — filter out untranslated titles */
function hasCJK(text: string): boolean {
  return /[\u3040-\u30ff\u4e00-\u9fff\u3400-\u4dbf\uff00-\uffef\uac00-\ud7a3\u1100-\u11ff\u3130-\u318f]/.test(text);
}

router.get("/animation/browse", async (req: Request, res: Response) => {
  try {
    const type   = String(req.query.type   || "movie");
    const genre  = String(req.query.genre  || "16");
    const page   = String(req.query.page   || "1");
    const sort   = String(req.query.sort   || "popularity.desc");
    const year   = String(req.query.year   || "");
    const ep     = type === "tv" ? "/discover/tv"    : "/discover/movie";
    const gp     = genre === "all" || genre === "0"
                   ? "16"
                   : genre === "16" ? "16" : `16,${genre}`;
    const tvExtra = type === "tv" ? "&without_keywords=210024&certification_country=US&certification.lte=TV-PG&without_genres=10749" : "&certification_country=US&certification.lte=PG-13&without_genres=10749";
    const yearParam = year
      ? (type === "tv" ? `&first_air_date_year=${year}` : `&primary_release_year=${year}`)
      : "";
    const data: any = await tmdb(`${ep}?with_genres=${gp}&sort_by=${sort}&page=${page}&include_adult=true${tvExtra}${yearParam}&vote_count.gte=10`);
    // Remove results whose TMDB title is still in Japanese/Chinese (no Arabic translation)
    const results = (data.results || []).filter((r: any) => {
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/detail", async (req: Request, res: Response) => {
  try {
    const type = String(req.query.type || "movie");
    const id   = String(req.query.id   || "");
    if (!id) { res.status(400).json({ error: "id required" }); return; }
    const app = type === "tv"
      ? "aggregate_credits,recommendations,content_ratings,videos"
      : "credits,recommendations,videos";
    const data: any = await tmdb(`/${type}/${id}?append_to_response=${app}`, TMDB_TTL_DETAIL);
    // Fallback: if no Arabic overview, fetch English overview so the synopsis section is never empty
    if (!data.overview) {
      try {
        const enUrl = `${TMDB_BASE}/${type}/${id}?api_key=${TMDB_KEY}&language=en-US`;
        const enR = await fetch(enUrl, { signal: AbortSignal.timeout(8_000) });
        if (enR.ok) {
          const enD: any = await enR.json();
          if (enD.overview) data.overview = enD.overview;
        }
      } catch { /* ignore */ }
    }
    // Filter recommendations to animation-only (genre 16 = رسوم متحركة)
    if (data.recommendations?.results) {
      data.recommendations.results = data.recommendations.results.filter(
        (r: any) => (r.genre_ids || []).includes(16)
      );
    }
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/season", async (req: Request, res: Response) => {
  try {
    const id     = String(req.query.id     || "");
    const season = String(req.query.season || "1");
    if (!id) { res.status(400).json({ error: "id required" }); return; }
    const data: any = await tmdb(`/tv/${id}/season/${season}`);
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/search", async (req: Request, res: Response) => {
  try {
    const q    = String(req.query.q   || "");
    const type = String(req.query.type || "multi");
    if (!q) { res.status(400).json({ error: "q required" }); return; }
    const data: any = await tmdb(`/search/${type}?query=${encodeURIComponent(q)}&include_adult=true`, TMDB_TTL_SEARCH);
    const results = (data.results || []).filter((r: any) => {
      if (type === "multi" && !(r.genre_ids || []).includes(16)) return false;
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/trending", async (req: Request, res: Response) => {
  try {
    const type   = String(req.query.type   || "movie");
    const window = String(req.query.window || "week");
    const data: any = await tmdb(`/trending/${type}/${window}`);
    const results = (data.results || []).filter((r: any) => {
      if (!(r.genre_ids || []).includes(16)) return false;
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

// ── StarDima endpoints (legacy) ───────────────────────────────────────────────

router.get("/animation/stardima-search", async (req: Request, res: Response) => {
  try {
    const q = String(req.query.q || "");
    if (!q) { res.status(400).json({ error: "q required" }); return; }
    const html  = await cfGet(`${SD_BASE}/?s=${encodeURIComponent(q)}`, SD_BASE + "/");
    const shows = parseSDShows(html).slice(0, 12);
    shows.sort((a, b) => titleSim(b.title, q) - titleSim(a.title, q));
    res.json({ shows });
  } catch (e) { res.status(502).json({ error: String(e), shows: [] }); }
});

router.get("/animation/stardima-series", async (req: Request, res: Response) => {
  try {
    const slug = String(req.query.slug || "");
    if (!slug) { res.status(400).json({ error: "slug required" }); return; }
    const html     = await cfGet(`${SD_BASE}/tvshows/${encodeURI(slug)}/`, SD_BASE + "/");
    const title    = (html.match(/property="og:title"\s+content="([^"]+)"/) || [])[1] || slug;
    const poster   = (html.match(/property="og:image"\s+content="([^"]+)"/) || [])[1] || "";
    const desc     = (html.match(/class="description[^"]*"[^>]*>\s*([\s\S]{0,400})/) || [])[1]
                      ?.replace(/<[^>]+>/g, "").trim() || "";
    const seasons: { slug: string; title: string }[] = [];
    const sRe = /href="https:\/\/watch\.stardima\.com\/watch\/seasons\/([^"]+)"[^>]*>([^<]+)</g;
    let m: RegExpExecArray | null;
    while ((m = sRe.exec(html)) !== null) {
      seasons.push({ slug: decodeURIComponent(m[1]).replace(/\/$/, ""), title: m[2].trim() });
    }
    const episodes = parseSDEpisodes(html);
    res.json({ title, poster, desc, seasons, episodes });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/stardima-episode", async (req: Request, res: Response) => {
  try {
    const slug = String(req.query.slug || "");
    if (!slug) { res.status(400).json({ error: "slug required" }); return; }
    const html   = await cfGet(`${SD_BASE}/episodes/${encodeURI(slug)}/`, SD_BASE + "/");
    const postId = parsePostId(html);
    const nonce  = parseNonce(html);
    const iframeUrls = parseIframes(html, ["stardima", "google", "histats", "rdparena"]);
    const sources: { url: string; label: string; num: number }[] = [];
    if (postId) {
      const urls = await sdDoopPlayerAjax(postId, nonce, slug);
      urls.forEach((url, i) => sources.push({ url, label: `StarDima · سيرفر ${i + 1}`, num: i + 1 }));
    }
    res.json({ postId, iframes: iframeUrls, sources });
  } catch (e) {
    res.status(502).json({ error: String(e), iframes: [], sources: [] });
  }
});

// ── Shared HLS / MP4 extractor for embed pages ────────────────────────────────

// Regex patterns to find direct stream URLs inside HTML/JS source
const M3U8_RE  = /["'`](https?:\/\/[^"'`\s]{12,}\.m3u8(?:[^"'`\s]*)?)['"` ]/gi;
const MP4_RE   = /["'`](https?:\/\/[^"'`\s]{12,}\.mp4(?:[^"'`\s]*)?)['"` ]/gi;
const MPD_RE   = /["'`](https?:\/\/[^"'`\s]{12,}\.mpd(?:[^"'`\s]*)?)['"` ]/gi;

function extractStreamsFromHtml(html: string): { url: string; type: "hls" | "mp4" | "dash" }[] {
  const seen = new Set<string>();
  const out:  { url: string; type: "hls" | "mp4" | "dash" }[] = [];
  const push = (url: string, type: "hls" | "mp4" | "dash") => {
    const clean = url.replace(/['"` ]/g, "").trim();
    if (!clean || seen.has(clean)) return;
    // Skip thumbnail/image/logo/font CDNs
    if (/\/(thumb|poster|backdrop|image|img|logo|font|css|js)\//i.test(clean)) return;
    seen.add(clean);
    out.push({ url: clean, type });
  };
  let m: RegExpExecArray | null;
  M3U8_RE.lastIndex = 0; while ((m = M3U8_RE.exec(html)) !== null) push(m[1], "hls");
  MP4_RE.lastIndex  = 0; while ((m = MP4_RE.exec(html))  !== null) push(m[1], "mp4");
  MPD_RE.lastIndex  = 0; while ((m = MPD_RE.exec(html))  !== null) push(m[1], "dash");
  return out;
}

// Try to call the internal anime extract-video API (reuses extractVideoDeep logic)
async function callExtractApi(url: string): Promise<{ directUrl?: string } | null> {
  try {
    const port   = process.env["PORT"] || "5000";
    const apiUrl = `http://localhost:${port}/api/anime/extract-video?url=${encodeURIComponent(url)}`;
    const r = await fetch(apiUrl, { signal: AbortSignal.timeout(14_000) });
    if (!r.ok) return null;
    return (await r.json()) as { directUrl?: string };
  } catch { return null; }
}

// Wrap m3u8 in hls-proxy (relative path → works for client)
function wrapHls(url: string, ref: string): string {
  return `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}

// Wrap MP4/video through video-proxy (needed for IP-tied sources like Streamtape, Sendvid, CDNs)
function wrapMp4(url: string, ref: string): string {
  return `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}

// Hexa cooldown — enc-dec.app returns "Next retry: N minutes" on 500; don't hammer it
let _hexaFailUntil = 0;

// Probe a proxied HLS/MP4 URL through our own server before sending to client.
// Returns true = accessible (200/206), false = dead (skip source).
// Timeout 5s — fast enough to not block the 30s deadline significantly.
async function probeHlsProxy(proxied: string): Promise<boolean> {
  if (!proxied.startsWith("/api/anime/")) return true; // external URL — assume OK
  try {
    const port = process.env.PORT || "5000";
    const pr = await fetch(`http://localhost:${port}${proxied}`, {
      signal: AbortSignal.timeout(5_000),
    });
    // 200/206 = accessible; 403 might still play in browser (auth bypass) so allow it
    return pr.ok || pr.status === 206 || pr.status === 403;
  } catch {
    return false; // timeout or network error = dead
  }
}

// Hosts that must go through video-proxy (IP-tied or CORS-blocked)
const MP4_PROXY_HOSTS = [
  "streamtape", "sendvid", "sendcdn", "uptostream", "uqload",
  "upstream", "vidcdn", "cdnfile", "vidmoly",
];

// Known extractable video hosts (same ones that extractVideoDeep handles in anime.ts)
const EXTRACTABLE_HOSTS = [
  "streamwish", "filemoon", "streamtape", "vidmoly", "vidcloud", "upcloud",
  "megacloud", "rabbitstream", "mcloud", "vidsrc.stream", "alions.pro",
  "vizcloud", "dokicloud", "kerapoxy", "bestx.stream", "asianload",
  "govad", "moviesapi.club", "closeload", "smoothpre", "filmecho",
  "ghost.online", "zoro", "rapid-cloud", "moon-cloud",
];

// Find URLs from known extractable hosts in HTML source
function findExtractableUrls(html: string): string[] {
  const seen = new Set<string>();
  const out: string[] = [];
  const re = /["'`](https?:\/\/[^"'`\s,;{}()\[\]]{10,})['"` ,;)]/g;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const url = m[1].trim();
    if (!url.startsWith("http")) continue;
    if (EXTRACTABLE_HOSTS.some(h => url.includes(h)) && !seen.has(url)) {
      seen.add(url);
      out.push(url);
    }
  }
  return out;
}

// Try to fetch embed page and extract streams; returns list of found streams
async function scrapeEmbedForStreams(
  embedUrl: string
): Promise<{ url: string; proxyUrl: string; type: "hls" | "mp4" | "dash" }[]> {
  const out: { url: string; proxyUrl: string; type: "hls" | "mp4" | "dash" }[] = [];
  try {
    const html = await cfGet(embedUrl, embedUrl);

    // 1. Look for direct m3u8/mp4 URLs in page source
    const streams = extractStreamsFromHtml(html);
    for (const s of streams.slice(0, 4)) {
      const needProxy = MP4_PROXY_HOSTS.some(h => s.url.includes(h));
      const proxyUrl = s.type === "hls" ? wrapHls(s.url, embedUrl) : needProxy ? wrapMp4(s.url, embedUrl) : s.url;
      out.push({ url: s.url, proxyUrl, type: s.type });
    }

    if (out.length) return out;

    // 2. Look for known extractable host URLs in the HTML
    const extractableUrls = findExtractableUrls(html);
    for (const inner of extractableUrls.slice(0, 3)) {
      const extracted = await callExtractApi(inner);
      if (extracted?.directUrl) {
        const d = extracted.directUrl;
        const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
        const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
        const proxyUrl = type === "hls" ? wrapHls(d, inner) : needProxy ? wrapMp4(d, inner) : d;
        out.push({ url: d, proxyUrl, type });
        if (out.length >= 2) return out;
      }
    }

    if (out.length) return out;

    // 3. Check inner iframes → try extractVideoDeep on each
    const inners = parseIframes(html, ["google", "histats", "w3counter", "doubleclick", "cdn.js"]);
    for (const inner of inners.slice(0, 4)) {
      // Try direct streams from inner page first
      try {
        const innerHtml = await cfGet(inner, embedUrl);
        const innerStreams = extractStreamsFromHtml(innerHtml);
        for (const s of innerStreams.slice(0, 2)) {
          const needProxy = MP4_PROXY_HOSTS.some(h => s.url.includes(h));
          const proxyUrl = s.type === "hls" ? wrapHls(s.url, inner) : needProxy ? wrapMp4(s.url, inner) : s.url;
          out.push({ url: s.url, proxyUrl, type: s.type });
        }
        // Also check extractable hosts in inner page
        const innerExtractable = findExtractableUrls(innerHtml);
        for (const iu of innerExtractable.slice(0, 2)) {
          const ex = await callExtractApi(iu);
          if (ex?.directUrl) {
            const d = ex.directUrl;
            const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
            const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
            out.push({ url: d, proxyUrl: type === "hls" ? wrapHls(d, iu) : needProxy ? wrapMp4(d, iu) : d, type });
          }
        }
      } catch { /* try extractApi directly */ }

      if (!out.length) {
        const extracted = await callExtractApi(inner);
        if (extracted?.directUrl) {
          const d = extracted.directUrl;
          const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
          const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
          const proxyUrl = type === "hls" ? wrapHls(d, inner) : needProxy ? wrapMp4(d, inner) : d;
          out.push({ url: d, proxyUrl, type });
        }
      }

      if (out.length >= 2) break;
    }
  } catch { /* silent */ }
  return out;
}

// ── Anime-Day GitHub subtitle library ────────────────────────────────────────
// فريق أنمي داي ترجم هذه العروض للعربية ورفع ملفات VTT على GitHub Pages
// جميعها مع CORS * وحية تماماً (تحقق 2026-06)
function getAnimeDaySubtitleUrl(title: string, season: number, ep: number): string | null {
  const tl = (title || "").toLowerCase().replace(/[^\w\s]/g, " ").trim();
  const gh = "https://adnango1.github.io";

  if (/regular\s+show/.test(tl) && /movie/.test(tl))
    return `${gh}/RegularShowMovie/movie`;
  if (/regular\s+show/.test(tl))
    return `${gh}/Regular-Show/eps${ep}season${season}.vtt`;
  if (/sym.?bionic/.test(tl))
    return `${gh}/symbionic/eps${ep}.vtt`;
  if (/\bprimal\b/.test(tl) && season === 2)
    return `${gh}/primal2/eps${ep}season1.vtt`;
  if (/demon\s+hunter/.test(tl))
    return `${gh}/thedemonhunter/eps${ep}season${season}.vtt`;
  if (/martial\s+god\s+asura/.test(tl))
    return `${gh}/MARTIALGODASURA/eps${ep}season${season}`;
  if (/ben\s*10.*omnitrix|omnitrix.*ben\s*10/.test(tl))
    return `${gh}/ben10SecretoftheOmnitrix/movie`;

  return null;
}

// ── Animation subtitle local cache ──────────────────────────────────────────
const animSubCache = new Map<string, { content: string | null; language?: string; ts: number }>();
const ANIM_SUB_TTL      = 60 * 60 * 1000; // 1 hour  (success)
const ANIM_SUB_FAIL_TTL =  5 * 60 * 1000; // 5 min   (failure → retry sooner)

// ── Arabic subtitle search for TMDB animation content ───────────────────────
// Uses wyzie.ru (free aggregator, no key) + subdl fallback (needs SUBDL_API_KEY)
router.get("/animation/subtitles", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie"); // movie | tv
  const ep     = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season = parseInt(String(req.query.season || "1"), 10) || 1;
  const title  = String(req.query.title  || "");
  if (!tmdbId) { res.json({ content: null }); return; }

  const ck = `anim-sub:${tmdbId}:${type}:${season}:${ep}`;
  const hit = animSubCache.get(ck);
  const hitTtl = hit?.content ? ANIM_SUB_TTL : ANIM_SUB_FAIL_TTL;
  if (hit && Date.now() - hit.ts < hitTtl) {
    res.json({ content: hit.content, ...(hit.language ? { language: hit.language } : {}) });
    return;
  }

  try {
    // Step 1: Get IMDB ID from TMDB external_ids
    let imdbId = "";
    try {
      const extR = await fetch(
        `${TMDB_BASE}/${type}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`,
        { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(7_000) }
      );
      if (extR.ok) {
        const ext = await extR.json() as any;
        imdbId = (ext.imdb_id as string) || "";
      }
    } catch { /* ignore */ }

    // Step 2: wyzie.ru — free subtitle aggregator (no key needed)
    if (imdbId) {
      try {
        const wyzieBase = "https://sub.wyzie.ru/search";
        const wyzieQ = type === "tv"
          ? `${wyzieBase}?id=${imdbId}&language=ar&season=${season}&episode=${ep}`
          : `${wyzieBase}?id=${imdbId}&language=ar`;
        const wR = await fetch(wyzieQ, {
          headers: { "User-Agent": UA, "Accept": "application/json" },
          signal: AbortSignal.timeout(10_000),
        });
        if (wR.ok) {
          const wData = await wR.json() as any;
          const items: any[] = Array.isArray(wData) ? wData : (wData?.data ?? []);
          const arItem = items.find((s: any) =>
            (s.language || s.lang || "").toLowerCase().includes("ar") && s.url
          );
          if (arItem?.url) {
            const dlR = await fetch(arItem.url, {
              headers: { "User-Agent": UA },
              signal: AbortSignal.timeout(10_000),
            });
            if (dlR.ok) {
              const content = await dlR.text();
              if (content.includes("-->") || (content.includes(",") && content.includes("\n"))) {
                animSubCache.set(ck, { content, ts: Date.now() });
                res.json({ content }); return;
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    // Step 2b: wyzie.ru English fallback — client will auto-translate
    if (imdbId) {
      try {
        const wyzieBase = "https://sub.wyzie.ru/search";
        const wyzieEnQ = type === "tv"
          ? `${wyzieBase}?id=${imdbId}&language=en&season=${season}&episode=${ep}`
          : `${wyzieBase}?id=${imdbId}&language=en`;
        const wEnR = await fetch(wyzieEnQ, {
          headers: { "User-Agent": UA, "Accept": "application/json" },
          signal: AbortSignal.timeout(10_000),
        });
        if (wEnR.ok) {
          const wEnData = await wEnR.json() as any;
          const enItems: any[] = Array.isArray(wEnData) ? wEnData : (wEnData?.data ?? []);
          const enItem = enItems.find((s: any) => s.url);
          if (enItem?.url) {
            const dlEnR = await fetch(enItem.url, {
              headers: { "User-Agent": UA },
              signal: AbortSignal.timeout(10_000),
            });
            if (dlEnR.ok) {
              const content = await dlEnR.text();
              if (content.includes("-->")) {
                animSubCache.set(ck, { content, language: "en", ts: Date.now() });
                res.json({ content, language: "en" }); return;
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    // Step 3: subdl.com with IMDB ID or title (requires SUBDL_API_KEY)
    const sdKey = (process.env.SUBDL_API_KEY || "").trim();
    if (sdKey) {
      try {
        const sdParam = imdbId
          ? `imdb_id=${imdbId.replace("tt", "")}`
          : `film_name=${encodeURIComponent(title)}`;
        const sdEpParam = type === "tv" ? `&season_number=${season}&episode_number=${ep}` : "";
        const sdUrl = `https://api.subdl.com/api/v1/subtitles?api_key=${sdKey}&${sdParam}${sdEpParam}&languages=AR&subs_per_page=5`;
        const sdR = await fetch(sdUrl, {
          headers: { "User-Agent": UA },
          signal: AbortSignal.timeout(10_000),
        });
        if (sdR.ok) {
          const sdData = await sdR.json() as any;
          const subs: any[] = (sdData.subtitles || []).filter((s: any) => s.url);
          if (subs.length > 0) {
            const dlPath = subs[0].url as string;
            const dlUrl = dlPath.startsWith("http") ? dlPath : `https://dl.subdl.com${dlPath}`;
            const dlR = await fetch(dlUrl, { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(12_000) });
            if (dlR.ok) {
              const ct = dlR.headers.get("content-type") || "";
              if (!ct.includes("zip") && !dlUrl.endsWith(".zip")) {
                const content = await dlR.text();
                if (content.includes("-->")) {
                  animSubCache.set(ck, { content, ts: Date.now() });
                  res.json({ content }); return;
                }
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    animSubCache.set(ck, { content: null, ts: Date.now() });
    res.json({ content: null });
  } catch {
    res.json({ content: null });
  }
});

// ── subtitle-tracks: discover ALL available subtitle tracks for a title ──────
// Returns { tracks:[{id,lang,label,url}] } — Arabic first, then English
// CDN HEAD checks + wyzie.ru + vidzee run in parallel (max ~12s), cached 25 min
const animTracksCache = new Map<string, { tracks: any[]; ts: number }>();
const TRACKS_TTL = 25 * 60 * 1000;

router.get("/animation/subtitle-tracks", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const ep     = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season = parseInt(String(req.query.season || "1"), 10) || 1;
  const title  = String(req.query.title  || "");
  if (!tmdbId) { res.json({ tracks: [] }); return; }

  const ck = `tracks:${tmdbId}:${type}:${season}:${ep}`;
  const hit = animTracksCache.get(ck);
  if (hit && Date.now() - hit.ts < TRACKS_TTL) { res.json({ tracks: hit.tracks }); return; }

  type Track = { id: string; lang: string; label: string; url: string };

  // ── 1. IMDB ID from TMDB (needed for wyzie.ru) ──
  let imdbId = "";
  try {
    const r = await fetch(`${TMDB_BASE}/${type}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`, {
      headers: { "User-Agent": UA }, signal: AbortSignal.timeout(5_000),
    });
    if (r.ok) { const d = await r.json() as any; imdbId = String(d.imdb_id || ""); }
  } catch { /* ignore */ }

  // ── 2. CDN candidates (vdrk.site — v2 and v3 are live; v1 returns 404) ──
  const cdnPath = type === "tv" ? `tv/${tmdbId}/${season}/${ep}` : `movie/${tmdbId}`;
  const cdnBase = "https://cache.vdrk.site";
  const cdnCandidates: Track[] = [
    { id: "ar-cdn-v2",   lang: "ar", label: "عربي · CDN",      url: `${cdnBase}/v2/${cdnPath}/Arabic.vtt`   },
    { id: "ar-cdn-v3",   lang: "ar", label: "عربي · CDN 2",    url: `${cdnBase}/v3/${cdnPath}/Arabic.vtt`   },
    { id: "ar-cdn-v2-2", lang: "ar", label: "عربي · CDN 3",    url: `${cdnBase}/v2/${cdnPath}/Arabic2.vtt`  },
    { id: "ar-cdn-v2-3", lang: "ar", label: "عربي · CDN 4",    url: `${cdnBase}/v2/${cdnPath}/Arabic3.vtt`  },
    { id: "en-cdn-v2",   lang: "en", label: "إنجليزي · CDN",   url: `${cdnBase}/v2/${cdnPath}/English.vtt`  },
    { id: "en-cdn-v3",   lang: "en", label: "إنجليزي · CDN 2", url: `${cdnBase}/v3/${cdnPath}/English.vtt`  },
  ];
  const cdnFound: Track[] = [];
  await Promise.allSettled(cdnCandidates.map(async c => {
    try {
      const r = await fetch(c.url, { method: "HEAD", signal: AbortSignal.timeout(5_000) });
      if (r.ok) cdnFound.push(c);
    } catch { /* ignore */ }
  }));

  // ── 3. wyzie.ru (Arabic + English) — run in parallel with CDN ──
  const wyzieItems: Track[] = [];
  if (imdbId) {
    await Promise.allSettled(["ar", "en"].map(async lang => {
      try {
        const q = type === "tv"
          ? `https://sub.wyzie.ru/search?id=${imdbId}&language=${lang}&season=${season}&episode=${ep}`
          : `https://sub.wyzie.ru/search?id=${imdbId}&language=${lang}`;
        const r = await fetch(q, {
          headers: { "User-Agent": UA, Accept: "application/json" },
          signal: AbortSignal.timeout(8_000),
        });
        if (!r.ok) return;
        const data = await r.json() as any;
        const items: any[] = Array.isArray(data) ? data : (data?.data ?? []);
        items.slice(0, 2).forEach((item: any, i: number) => {
          if (!item.url) return;
          const sfx = i > 0 ? ` ${i + 1}` : "";
          wyzieItems.push({
            id: `${lang}-wyzie-${i}`,
            lang,
            label: lang === "ar" ? `عربي · Wyzie${sfx}` : `إنجليزي · Wyzie${sfx}`,
            url: item.url,
          });
        });
      } catch { /* ignore */ }
    }));
  }

  // ── 4. vidzee-meta (starcima) ──
  const vidzeeItems: Track[] = [];
  try {
    const tvExtra = type === "tv" ? `&season=${season}&episode=${ep}` : "";
    const r = await fetch(
      `https://starcima.com/api/vidzee?tmdbId=${tmdbId}&type=${type}&title=${encodeURIComponent(title)}${tvExtra}`,
      { headers: { "User-Agent": UA, Referer: "https://starcima.com/", Accept: "application/json" }, signal: AbortSignal.timeout(8_000) },
    );
    if (r.ok) {
      const vData = await r.json() as any;
      const cnt: Record<string, number> = {};
      const EN_LANGS = ["english", "en"];
      for (const s of (vData.subtitles || []) as any[]) {
        if (!s.url) continue;
        // Resolve relative URLs (starcima returns /api/sub-retime?... for some tracks)
        let trackUrl: string = s.url;
        if (!trackUrl.startsWith("http")) {
          if (trackUrl.startsWith("/")) trackUrl = `https://starcima.com${trackUrl}`;
          else continue; // skip unparseable URLs
        }
        // Skip dead vdrk.site v1 CDN path — v2 and v3 are live
        if (trackUrl.includes("cache.vdrk.site/v1/")) continue;
        const lCode = (s.languageCode || s.language || "").toLowerCase();
        // Only include Arabic or English tracks — skip Bengali, Malay, Russian, etc.
        const isAr = lCode.startsWith("ar");
        const isEn = EN_LANGS.some(l => lCode.startsWith(l));
        if (!isAr && !isEn) continue;
        const lang = isAr ? "ar" : "en";
        const i = (cnt[lang] = (cnt[lang] ?? 0) + 1);
        const sfx = i > 1 ? ` ${i}` : "";
        vidzeeItems.push({
          id: `${lang}-vidzee-${i}`,
          lang,
          label: lang === "ar" ? `عربي · الثريا${sfx}` : `إنجليزي · الثريا${sfx}`,
          url: trackUrl,
        });
      }
    }
  } catch { /* ignore */ }

  // Vyla subtitle API removed — Vyla HF Space replaced by Icefy scraper
  const vylaItems: Track[] = [];

  // ── Anime-Day GitHub subtitles (Arabic, hosted on GitHub Pages) ──
  const adGhUrl = getAnimeDaySubtitleUrl(title, season, ep);
  const adItems: Track[] = adGhUrl ? [{
    id: "ar-animeday-gh",
    lang: "ar",
    label: "عربي · أنمي داي",
    url: adGhUrl,
  }] : [];

  // ── 6. OpenSubtitles free REST API (no key, legacy endpoint) ──
  const osItems: Track[] = [];
  if (imdbId) {
    try {
      const osId = imdbId.replace(/^tt/, "");
      const osUrl = `https://rest.opensubtitles.org/search/imdbid-${osId}/sublanguageid-ara`;
      const r = await fetch(osUrl, {
        headers: { "User-Agent": "TemporaryUserAgent", "X-User-Agent": "TemporaryUserAgent" },
        signal: AbortSignal.timeout(8_000),
      });
      if (r.ok) {
        const items = await r.json() as any[];
        if (Array.isArray(items)) {
          items.slice(0, 3).forEach((item: any, i: number) => {
            const dlLink: string = item?.SubDownloadLink || item?.ZipDownloadLink || "";
            if (!dlLink) return;
            const sfx = i > 0 ? ` ${i + 1}` : "";
            osItems.push({
              id: `ar-opensubs-${i}`,
              lang: "ar",
              label: `عربي · OpenSubs${sfx}`,
              url: dlLink.replace(/\.gz$/, ""),
            });
          });
        }
      }
    } catch { /* ignore */ }
  }

  // ── Kitsunekko Mirror (GitHub) — ترجمة يابانية → عربي تلقائي ──
  // يبحث في أرشيف kitsunekko-mirror عن ملف SRT مطابق للعنوان والحلقة
  const kitsunekkoItems: Track[] = [];
  const kQuery = (title || "").replace(/[^\w\s]/g, " ").trim();
  if (kQuery) {
    try {
      const ghUrl = `https://api.github.com/search/code?q=${encodeURIComponent(kQuery)}+repo:Ajatt-Tools/kitsunekko-mirror+in:path&per_page=15`;
      const ghR = await fetch(ghUrl, {
        headers: { "User-Agent": UA, "Accept": "application/vnd.github+json" },
        signal: AbortSignal.timeout(8_000),
      });
      if (ghR.ok) {
        const ghData = await ghR.json() as any;
        const items: any[] = ghData.items || [];
        const epPad = String(ep).padStart(2, "0");
        const epPatterns = [
          new RegExp(`[-_\\s]0*${ep}[\\s._\\[\\(]`),
          new RegExp(`E${epPad}`),
          new RegExp(`episode[_\\s-]?0*${ep}\\b`, "i"),
        ];
        const picked = type === "movie"
          ? items.find((item: any) => /\.(srt|ass|vtt)$/i.test(item.name || "") && !/\[ch[st]\]|[\u4e00-\u9fff]/.test(item.name || ""))
          : items.find((item: any) => {
              const name: string = item.name || "";
              if (!/\.(srt|ass|vtt)$/i.test(name)) return false;
              if (/\[ch[st]\]|[\u4e00-\u9fff]/.test(name)) return false;
              return epPatterns.some(p => p.test(name));
            });
        if (picked) {
          const rawUrl = `https://raw.githubusercontent.com/Ajatt-Tools/kitsunekko-mirror/main/${picked.path}`;
          kitsunekkoItems.push({
            id: "ar-kitsunekko",
            lang: "ar-auto",
            label: "عربي مُترجم · Kitsunekko",
            url: `/api/anime/translate-vtt?url=${encodeURIComponent(rawUrl)}&from=ja&to=ar`,
          });
        }
      }
    } catch { /* silent — GitHub rate limit or network */ }
  }

  // ── Merge, sort Arabic-first, deduplicate by URL ──
  const all = [...adItems, ...cdnFound, ...wyzieItems, ...vidzeeItems, ...vylaItems, ...osItems, ...kitsunekkoItems];
  all.sort((a, b) => (a.lang === "ar" && b.lang !== "ar" ? -1 : a.lang !== "ar" && b.lang === "ar" ? 1 : 0));
  const seen = new Set<string>();
  const tracks = all.filter(t => { if (seen.has(t.url)) return false; seen.add(t.url); return true; });

  // ── Auto-translate: add عربي مُترجم whenever English tracks exist ──
  // Added ALWAYS (even when Arabic exists) so user can switch between direct Arabic and translated
  const firstEnTrack = tracks.find(t => t.lang === "en");
  if (firstEnTrack && !tracks.some(t => t.lang === "ar-auto")) {
    const autoTrack: Track = {
      id: "ar-auto-translate",
      lang: "ar-auto",
      label: "عربي مُترجم",
      url: `/api/anime/translate-vtt?url=${encodeURIComponent(firstEnTrack.url)}&from=en&to=ar`,
    };
    // Insert right after last Arabic track (or at start if none)
    const lastArIdx = tracks.reduce((acc, t, i) => t.lang === "ar" ? i : acc, -1);
    if (lastArIdx >= 0) tracks.splice(lastArIdx + 1, 0, autoTrack);
    else tracks.unshift(autoTrack);
  }

  animTracksCache.set(ck, { tracks, ts: Date.now() });
  res.setHeader("Cache-Control", "no-store");
  res.json({ tracks });
});

// ── StarCima vidzee subtitle proxy (CORS bypass) ────────────────────────────
router.get("/animation/vidzee-meta", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const ep     = String(req.query.ep     || "1");
  const season = String(req.query.season || "1");
  const title  = String(req.query.title  || "");
  if (!tmdbId) { res.status(400).json({ error: "tmdbId required" }); return; }

  const tvExtra = type === "tv" ? `&season=${season}&episode=${ep}` : "";
  const url = `https://starcima.com/api/vidzee?tmdbId=${tmdbId}&type=${type}&title=${encodeURIComponent(title)}${tvExtra}`;
  try {
    const r = await fetch(url, {
      headers: { "User-Agent": UA, "Referer": `https://starcima.com/watch/${tmdbId}?type=${type}`, "Accept": "application/json" },
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) { res.json({ subtitles: [] }); return; }
    const data: any = await r.json();
    res.json({ subtitles: data.subtitles || [] });
  } catch {
    res.json({ subtitles: [] });
  }
});

// ── quick-check: fast availability probe (Vyla only, 6s timeout) ─────────────

const availCache = new Map<string, { ok: boolean; ts: number }>();
const AVAIL_TTL = 2 * 60 * 60 * 1000; // 2 hours

router.get("/animation/quick-check", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const season = String(req.query.season || "1");
  const ep     = String(req.query.ep     || "1");
  if (!tmdbId) { res.json({ available: false }); return; }

  const ck = `avail:${tmdbId}:${type}:${season}:${ep}`;
  const cached = availCache.get(ck);
  if (cached && Date.now() - cached.ts < AVAIL_TTL) {
    res.json({ available: cached.ok });
    return;
  }

  let available = false;
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), 6_500);

  // Quick probe via Icefy (movie only) — fast EU relay check
  try {
    if (type === "movie") {
      const ORKESTR = process.env["ORKESTR_URL"] || "https://anime-nova.orkestr.run";
      const raw = await fetch(
        `${ORKESTR}/api/anime/proxy-text?url=${encodeURIComponent(`https://streams.icefy.top/movie/${tmdbId}`)}`,
        { signal: controller.signal }
      ).then(r => r.ok ? r.text() : "{}").catch(() => "{}");
      const data = JSON.parse(raw) as { stream?: string };
      if (data.stream) available = true;
    } else {
      // TV: always assume available (many scrapers support it)
      available = true;
    }
  } catch { /* timeout or network error */ }

  clearTimeout(timer);
  availCache.set(ck, { ok: available, ts: Date.now() });
  res.json({ available });
});

// ── aflaam.com helpers ────────────────────────────────────────────────────────
const AFLAAM_BASE = "https://aflaam.com";

async function aflaamSearch(
  q: string,
  kind: "movie" | "series"
): Promise<{ id: string; slug: string }[]> {
  const html = await cfGet(
    `${AFLAAM_BASE}/search?q=${encodeURIComponent(q)}`,
    AFLAAM_BASE + "/"
  );
  const out: { id: string; slug: string }[] = [];
  const re = new RegExp(
    `href="https:\\/\\/aflaam\\.com\\/${kind}\\/(\\d+)\\/([^"]+)"`, "g"
  );
  let m: RegExpExecArray | null;
  const seen = new Set<string>();
  while ((m = re.exec(html)) !== null) {
    if (seen.has(m[1])) continue;
    seen.add(m[1]);
    out.push({ id: m[1], slug: m[2] });
  }
  return out;
}

function parseAflaamMp4s(html: string): { url: string; size: string }[] {
  const out: { url: string; size: string }[] = [];
  const seen = new Set<string>();
  let idx = 0;
  while (true) {
    const s = html.indexOf("<source", idx);
    if (s === -1) break;
    const e = html.indexOf("/>", s);
    if (e === -1) break;
    const tag = html.slice(s, e + 2);
    idx = e + 2;
    const srcM  = /src="([^"]+)"/.exec(tag);
    const sizeM = /size="(\d+)"/.exec(tag);
    if (!srcM || !srcM[1].startsWith("http")) continue;
    const url = srcM[1].trim();
    if (seen.has(url)) continue;
    seen.add(url);
    out.push({ url, size: sizeM ? sizeM[1] : "720" });
  }
  return out;
}

async function aflaamWatchSources(
  watchUrl: string,
  ref: string
): Promise<{ url: string; size: string }[]> {
  // Try CF proxy first (bypasses CF-protection and JS-rendered pages)
  // Fall back to regular cfGet if CF proxy fails
  let html: string;
  try {
    html = await cfProxyGet(watchUrl);
  } catch {
    html = await cfGet(watchUrl, ref);
  }
  return parseAflaamMp4s(html);
}

async function scrapeAflaamMovie(
  title: string,
  enTitle?: string
): Promise<{ url: string; quality: string }[]> {
  for (const t of [title, enTitle].filter(Boolean) as string[]) {
    try {
      const results = await aflaamSearch(t, "movie");
      if (!results.length) continue;
      const best = results
        .map(r => ({ ...r, sc: titleSim(t, r.slug.replace(/-/g, " ")) }))
        .sort((a, b) => b.sc - a.sc)[0];
      if (best.sc < 0.30) continue;

      const movieRef  = `${AFLAAM_BASE}/movie/${best.id}/${best.slug}`;
      const movieHtml = await cfGet(movieRef, AFLAAM_BASE + "/");
      const wre       = /href="(https:\/\/aflaam\.com\/watch\/\d+\/[^"]+)"/g;
      let m: RegExpExecArray | null;
      const watchUrls: string[] = [];
      const ws = new Set<string>();
      while ((m = wre.exec(movieHtml)) !== null) {
        if (ws.has(m[1])) continue; ws.add(m[1]); watchUrls.push(m[1]);
      }
      if (!watchUrls.length) continue;

      const srcs = await aflaamWatchSources(watchUrls[0], movieRef);
      if (srcs.length) return srcs.map(s => ({ url: s.url, quality: s.size }));
    } catch { continue; }
  }
  return [];
}

async function scrapeAflaamSeries(
  title: string,
  epNum: number,
  season: number,
  enTitle?: string
): Promise<{ url: string; quality: string }[]> {
  for (const t of [title, enTitle].filter(Boolean) as string[]) {
    try {
      const results = await aflaamSearch(t, "series");
      if (!results.length) continue;

      const best = results
        .map(r => {
          let sc = titleSim(t, r.slug.replace(/-/g, " "));
          if (season > 1 && new RegExp(`-${season}(?:-|$)`).test(r.slug)) sc += 0.3;
          return { ...r, sc };
        })
        .sort((a, b) => b.sc - a.sc)[0];
      if (best.sc < 0.28) continue;

      const seriesRef  = `${AFLAAM_BASE}/series/${best.id}/${best.slug}`;
      const seriesHtml = await cfGet(seriesRef, AFLAAM_BASE + "/");
      const epRe       = /href="https:\/\/aflaam\.com\/episode\/(\d+)\/([^"]+)"/g;
      let m: RegExpExecArray | null;
      const episodes: { epId: string; epSlug: string; num: number }[] = [];
      const eseen = new Set<string>();
      while ((m = epRe.exec(seriesHtml)) !== null) {
        if (eseen.has(m[1])) continue; eseen.add(m[1]);
        const decoded = decodeURIComponent(m[2]);
        const numM    = /(\d+)\s*$/.exec(decoded);
        episodes.push({
          epId   : m[1],
          epSlug : m[2],
          num    : numM ? parseInt(numM[1]) : episodes.length + 1,
        });
      }
      if (!episodes.length) continue;

      const target = episodes.find(e => e.num === epNum) ?? episodes[epNum - 1];
      if (!target) continue;

      const epRef  = `${AFLAAM_BASE}/episode/${target.epId}/${target.epSlug}`;
      const epHtml = await cfGet(epRef, seriesRef);
      const watchUrls: string[] = [];
      const wre   = /href="(https:\/\/aflaam\.com\/watch\/\d+\/[^"]+)"/g;
      const wseen = new Set<string>();
      while ((m = wre.exec(epHtml)) !== null) {
        if (wseen.has(m[1])) continue; wseen.add(m[1]); watchUrls.push(m[1]);
      }
      if (!watchUrls.length) continue;

      const srcs = await aflaamWatchSources(watchUrls[0], epRef);
      if (srcs.length) return srcs.map(s => ({ url: s.url, quality: s.size }));
    } catch { continue; }
  }
  return [];
}

// ── Videasy fresh URL redirect ─────────────────────────────────────────────────
// Returns a 302 redirect to a freshly-fetched Videasy CDN URL.
// Called from the browser so the browser follows the redirect with its own
// residential IP (CDN blocks datacenter IPs but allows browser IPs).
const videasyCache = new Map<string, { url: string; ts: number }>();
const VIDEASY_TTL  = 30 * 60 * 1000; // 30 min

router.get("/animation/videasy-fresh", async (req: Request, res: Response) => {
  const server    = String(req.query.server    || "mb-flix");
  const tmdbId    = String(req.query.tmdbId    || "");
  const mediaType = String(req.query.mediaType || "movie");
  const epNum     = String(req.query.ep        || "1");
  const season    = String(req.query.season    || "1");
  const quality   = String(req.query.quality   || "");
  if (!tmdbId) { res.status(400).json({ error: "tmdbId required" }); return; }

  const cacheKey = `${server}|${tmdbId}|${mediaType}|${epNum}|${season}|${quality}`;
  const cached = videasyCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < VIDEASY_TTL) {
    res.redirect(302, cached.url); return;
  }

  try {
    const UA2 = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36";
    const VEA_HDRS = {
      "User-Agent": UA2,
      "Accept": "application/json, */*; q=0.01",
      "Referer": "https://player.videasy.to/",
      "Origin": "https://player.videasy.to",
    };
    const encTitle = encodeURIComponent(encodeURIComponent(""));
    const baseParams = mediaType === "tv"
      ? `title=${encTitle}&mediaType=tv&year=&tmdbId=${tmdbId}&imdbId=&episodeId=${epNum}&seasonId=${season}`
      : `title=${encTitle}&mediaType=movie&year=&tmdbId=${tmdbId}&imdbId=&episodeId=1&seasonId=1`;

    const apiUrl = `https://api.videasy.to/${server}/sources-with-title?${baseParams}`;
    const r = await fetch(apiUrl, { headers: VEA_HDRS, signal: AbortSignal.timeout(12_000) });
    if (!r.ok) { res.status(502).json({ error: `Videasy API ${r.status}` }); return; }
    const blob = await r.text();
    if (!blob || blob.length < 20) { res.status(502).json({ error: "empty response" }); return; }

    const decR = await fetch("https://enc-dec.app/api/dec-videasy", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ text: blob, id: tmdbId }),
      signal: AbortSignal.timeout(10_000),
    });
    if (!decR.ok) { res.status(502).json({ error: "decrypt failed" }); return; }
    const decData = await decR.json() as {
      status: number;
      result?: { sources?: Array<{ url: string; quality?: string }> };
    };
    if (decData.status !== 200 || !decData.result?.sources?.length) {
      res.status(404).json({ error: "no sources" }); return;
    }

    // Pick best quality match or highest available
    const sources = decData.result.sources;
    let picked = sources.find(s => s.quality === quality) || sources[0];
    if (!picked?.url) { res.status(404).json({ error: "no url" }); return; }

    videasyCache.set(cacheKey, { url: picked.url, ts: Date.now() });

    // Add CORS headers so browser hls.js can read m3u8 via redirect
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET");
    res.redirect(302, picked.url);
  } catch (e) {
    res.status(500).json({ error: String(e) });
  }
});

// ── SSE animation sources stream ──────────────────────────────────────────────

router.get("/animation/sources-stream", async (req: Request, res: Response) => {
  const title   = String(req.query.title  || "");
  const type    = String(req.query.type   || "movie");
  const epNum   = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season  = parseInt(String(req.query.season || "1"), 10) || 1;
  const tmdbId  = String(req.query.tmdbId || req.query.id || "");

  res.setHeader("Content-Type",      "text/event-stream; charset=utf-8");
  res.setHeader("Cache-Control",     "no-cache");
  res.setHeader("Connection",        "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders();

  const send = (event: string, data: any) => {
    try { res.write(`event: ${event}\ndata: ${JSON.stringify(data)}\n\n`); } catch { /* closed */ }
  };

  const keepAlive = setInterval(() => { try { res.write(": keepalive\n\n"); } catch { /* closed */ } }, 5_000);
  req.on("close", () => clearInterval(keepAlive));

  const seenUrls = new Set<string>();
  let sourceCount = 0;

  // Anime-Day GitHub Arabic subtitle for this show (if known)
  const adSub = getAnimeDaySubtitleUrl(title, season, epNum);

  // ── كاش capture: AsyncLocalStorage لتجنب race condition في الاستدعاءات المتزامنة ──
  const captureStorage = new AsyncLocalStorage<any[]>();

  // Send a source; directUrl = already-extracted stream URL, proxyUrl = proxied version
  const sendSource = (url: string, label: string, directUrl?: string, proxyUrl?: string, extra2?: Record<string, any>) => {
    if (!url || seenUrls.has(url)) return;
    seenUrls.add(url);
    sourceCount++;
    const extra = { ...(adSub ? { subtitleUrl: adSub } : {}), ...(extra2 || {}) };
    send("source", { url, label, directUrl, proxyUrl, ...extra });
    // capture for caching — isolated per async context (no race condition)
    const captureArr = captureStorage.getStore();
    if (captureArr) captureArr.push({ url, label, directUrl, proxyUrl, ...extra });
  };

  // ── scrapeAnimCached: يكشط مع كاش L1+L2 (Supabase) ──────────────────────
  async function scrapeAnimCached(
    site: string,
    scrape: () => Promise<void>,
  ) {
    const cKey = makeAnimCacheKey(site, tmdbId || title.slice(0, 20), type, season, epNum);
    const hit  = await getFromSourceCache(cKey);

    if (hit) {
      // ✅ تقديم من الكاش فوراً (< 5ms)
      for (const s of hit.sources) {
        sendSource(s.url, s.label, s.directUrl, s.proxyUrl, s.subtitleUrl ? { subtitleUrl: s.subtitleUrl } : undefined);
      }
      // تجديد خلفي إذا انتهى الكاش (stale) أو اقترب انتهاؤه
      if (hit.stale || shouldRefreshCache(hit.expiresAt)) {
        setImmediate(async () => {
          try {
            const bgArr: any[] = [];
            await captureStorage.run(bgArr, () => scrape());
            if (bgArr.length) await setSourceCache(cKey, site, bgArr);
          } catch { /* silent */ }
        });
      }
      return;
    }

    // ❌ لا يوجد كاش → اكشط مع التسجيل في context معزول
    const captured: any[] = [];
    await captureStorage.run(captured, () => scrape());
    if (captured.length) await setSourceCache(cKey, site, captured);
  }

  // Try embed URL → extract stream → probe → sendSource
  // Returns true if a direct stream was found and sent, false otherwise
  const sendExtracted = async (embedUrl: string, label: string): Promise<boolean> => {
    if (!embedUrl || seenUrls.has(embedUrl)) return true; // already seen → don't send embed either

    // 1. Try callExtractApi (extractVideoDeep)
    const extracted = await callExtractApi(embedUrl);
    if (extracted?.directUrl) {
      const d = extracted.directUrl;
      // Probe only for definitive failures (404/5xx) — 403/405/timeout → still send
      if (d.startsWith("http")) {
        try {
          const probe = await fetch(d, {
            method : "HEAD",
            headers: { "User-Agent": UA, "Referer": embedUrl },
            signal : AbortSignal.timeout(5_000),
            redirect: "follow",
          });
          // Only skip truly dead URLs (404, 4xx excluding 403/405, 5xx excluding 503)
          const definitivelyDead = !probe.ok
            && probe.status !== 403
            && probe.status !== 405
            && probe.status !== 503
            && probe.status !== 0;
          if (definitivelyDead) return false;
        } catch {
          // HEAD timeout/network error — CDN may still work from client browser
          // Fall through and send the source anyway
        }
      }
      const isHls = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
      const needProxy = !isHls && MP4_PROXY_HOSTS.some(h => d.includes(h));
      const proxy = isHls && !d.startsWith("/") ? wrapHls(d, embedUrl) : needProxy ? wrapMp4(d, embedUrl) : d;
      seenUrls.add(embedUrl);
      sendSource(embedUrl, label, d, proxy);
      return true;
    }

    // 2. Try fetching embed page for direct streams
    const streams = await scrapeEmbedForStreams(embedUrl);
    let sentAny = false;
    for (const s of streams.slice(0, 2)) {
      // Probe each found stream — skip only definitive failures
      if (s.url.startsWith("http")) {
        try {
          const probe = await fetch(s.url, {
            method : "HEAD",
            headers: { "User-Agent": UA, "Referer": embedUrl },
            signal : AbortSignal.timeout(4_000),
            redirect: "follow",
          });
          const definitivelyDead = !probe.ok
            && probe.status !== 403
            && probe.status !== 405
            && probe.status !== 503;
          if (definitivelyDead) continue;
        } catch { /* timeout/network → still try */ }
      }
      seenUrls.add(embedUrl);
      sendSource(s.url, label, s.url, s.proxyUrl);
      sentAny = true;
    }
    return sentAny;
  };

  try {
    send("status", { msg: `جاري البحث عن "${title}"…` });



    // Fetch IMDB ID + English title + release year from TMDB in parallel (needed for multiple scrapers)
    let imdbId = "";
    let enTitlePrefetched = "";
    let releaseYear = "";
    await Promise.allSettled([
      (async () => {
        if (!tmdbId) return;
        try {
          const extUrl = `https://api.themoviedb.org/3/${type === "tv" ? "tv" : "movie"}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`;
          const extHtml = await cfGet(extUrl, "");
          const extJson = JSON.parse(extHtml);
          imdbId = extJson.imdb_id || "";
        } catch { /* silent */ }
      })(),
      (async () => {
        if (!tmdbId) return;
        try {
          const r = await fetch(
            `${TMDB_BASE}/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${TMDB_KEY}&language=en`,
            { signal: AbortSignal.timeout(6_000) }
          );
          if (r.ok) {
            const d: any = await r.json();
            enTitlePrefetched = d.title || d.name || "";
            const dateStr: string = d.release_date || d.first_air_date || "";
            if (dateStr) releaseYear = dateStr.slice(0, 4);
          }
        } catch { /* silent */ }
      })(),
    ]);

    // ── Hard 30s deadline — يُجبر DONE حتى لو علّق أحد الـ scrapers ──────────
    let streamDone = false;
    const forceClose = setTimeout(() => {
      if (!streamDone && !res.writableEnded) {
        streamDone = true;
        send("done", {}); clearInterval(keepAlive); res.end();
      }
    }, 30_000);

    // ── Run all scrapers in parallel ──────────────────────────────────────────
    await Promise.allSettled([

      // ── 11. vidsrc.xyz + vidsrc.me → DISABLED (DNS failure from Replit datacenter) ─
      Promise.resolve(),

      // ── 12. vidsrc.pro → DISABLED (redirects to embed.su, already handled below) ─
      Promise.resolve(),

      // ── 9. vidsrc.icu → DISABLED (timeout from datacenter IPs) ──────────────
      Promise.resolve(),

      // ── 10. autoembed.cc → DISABLED (DNS failure from Replit datacenter) ────
      Promise.resolve(),

      // ── 13. ToonStream — DISABLED ──
      Promise.resolve(),

      // ── 19. multiembed.mov → DISABLED (403 from Replit datacenter) ──────────
      Promise.resolve(),

      // ── 20. vidsrc.vip → DISABLED (timeout from datacenter IPs) ─────────────
      Promise.resolve(),

      // ── 21. smashy → DISABLED (timeout from datacenter IPs) ─────────────────
      Promise.resolve(),

      // ── 22. VidLink → DISABLED (returns 0 bytes from Replit datacenter IPs) ─
      Promise.resolve(),

      // ── 23. vidbinge → DISABLED (timeout from datacenter IPs) ───────────────
      Promise.resolve(),

      // ── 16. 2embed.skin (TMDB-based, tries streamwish/filemoon extraction) ─────
      (async () => {
        try {
          const url = type === "tv"
            ? `https://www.2embed.skin/embedtv/${tmdbId}&s=${season}&e=${epNum}`
            : `https://www.2embed.skin/embed/${tmdbId}`;
          await sendExtracted(url, "2Embed");
        } catch { /* silent */ }
      })(),

      // ── 17. vidsrc.xyz → DISABLED (duplicate + DNS failure) ─────────────────
      Promise.resolve(),

      // ── 18. embed.su → DISABLED (DNS failure from Replit datacenter) ─────────
      Promise.resolve(),

      // ── 14. moviesapi.club → DISABLED (domain dead — redirects to alliance4creativity.com) ─
      Promise.resolve(),

      // ── 15. StarCima (vidzee HLS direct + arabic-sources embeds, TMDB ID native) ─
      scrapeAnimCached("starcima", async () => {
        if (!tmdbId) return;
        const SC_BASE    = "https://starcima.com";
        const SC_VIDZEE  = `${SC_BASE}/api/vidzee`;
        const SC_ARABIC  = `${SC_BASE}/api/arabic-sources`;
        const SC_REF_HLS = "https://player.vidzee.wtf/";
        const tvExtra    = type === "tv" ? `&season=${season}&episode=${epNum}` : "";
        const watchRef   = `${SC_BASE}/watch/${tmdbId}?type=${type}`;

        const scHeaders = {
          "User-Agent": UA,
          "Referer": watchRef,
          "Origin": SC_BASE,
          "Accept": "application/json",
          "Accept-Language": "ar,en;q=0.9",
        };

        try {
          send("status", { msg: "StarCima: جاري الاستخراج…" });

          await Promise.allSettled([

            // ── vidzee: 3 direct HLS servers ────────────────────────────────
            (async () => {
              try {
                const r = await fetch(
                  `${SC_VIDZEE}?tmdbId=${tmdbId}&type=${type}&title=${encodeURIComponent(title)}${tvExtra}`,
                  { headers: scHeaders, signal: AbortSignal.timeout(18_000) }
                );
                if (!r.ok) {
                  console.error(`[StarCima/vidzee] HTTP ${r.status} for tmdbId=${tmdbId}`);
                  return;
                }
                const data: any = await r.json();
                const servers: any[] = (data.servers || []);
                if (!servers.length) console.warn(`[StarCima/vidzee] No servers returned for tmdbId=${tmdbId}`);

                // Sort: isMain first (الثريا), then others, then Najm (lower CDN)
                const srvSorted = [...servers].sort((a: any, b: any) => {
                  const rank = (s: any) =>
                    s.isMain ? 0
                    : (s.name || "").startsWith("Najm") ? 2
                    : 1;
                  return rank(a) - rank(b);
                });

                // Build list of (proxied URL, raw URL, label) for all servers
                // Filter out Hindi/Bollywood-dubbed servers (name contains hindi/bolly/hin/urdu)
                const HINDI_NAME_RE = /\b(hindi|bolly|bollywood|hin|urdu)\b/i;
                const prepared = srvSorted
                  .filter((srv: any) => !!srv.url && !HINDI_NAME_RE.test(srv.name || ""))
                  .map((srv: any) => {
                    let rawUrl  = String(srv.url);
                    let referer = SC_REF_HLS;
                    if (rawUrl.includes(`${SC_BASE}/cdn/?`)) {
                      try {
                        const pu = new URL(rawUrl);
                        rawUrl   = pu.searchParams.get("url")     || rawUrl;
                        referer  = pu.searchParams.get("referer") || SC_REF_HLS;
                      } catch { /* keep original */ }
                    }
                    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`;
                    const label   = `StarCima · ${srv.name || "HD"}`;
                    return { proxied, rawUrl, label, isAtlas: false };
                  });

                // Probe all CDN URLs in parallel to check server-side accessibility.
                // If CDN returns 200/206 from server: send via hls-proxy (CORS + segment rewriting).
                // If CDN returns 403 from server (IP-blocked): send raw URL for browser direct access
                // (browser fetches m3u8 + segments from user's home IP, bypassing our datacenter IP).
                const PROBE_PORT = process.env.PORT || 5000;
                const probeResults = await Promise.allSettled(
                  prepared.map(async ({ proxied, rawUrl: pRaw, label }) => {
                    try {
                      const pr = await fetch(`http://localhost:${PROBE_PORT}${proxied}`, {
                        signal: AbortSignal.timeout(6_000),
                      });
                      // 200/206 = CDN accessible from server → use hls-proxy
                      // 403/502/other = CDN blocks server IPs → send raw for browser
                      const serverAccessible = pr.ok || pr.status === 206;
                      return { proxied, rawUrl: pRaw, label, serverAccessible };
                    } catch {
                      // Network error = assume blocked from server → send raw for browser
                      return { proxied, rawUrl: pRaw, label, serverAccessible: false };
                    }
                  })
                );

                const probed = probeResults
                  .filter(r => r.status === "fulfilled")
                  .map(r => (r as PromiseFulfilledResult<{ proxied: string; rawUrl: string; label: string; serverAccessible: boolean }>).value);

                for (const { proxied, rawUrl: sRaw, label, serverAccessible } of probed) {
                  if (serverAccessible) {
                    // CDN accessible from server → use hls-proxy (handles CORS + seg rewriting)
                    sendSource(proxied, label, sRaw, proxied);
                  } else {
                    // CDN blocks server IPs (403) → send raw URL for browser direct access
                    sendSource(sRaw, label, sRaw, sRaw);
                  }
                }
              } catch (e) { console.error("[StarCima/vidzee] error:", e); }
            })(),

            // ── arabic-sources: many embed servers (streamwish, filemoon …) ─
            (async () => {
              if (!tmdbId || tmdbId === "0") return; // بدون TMDB ID لا فائدة من الاستعلام
              try {
                const sp = new URLSearchParams({
                  title : title,
                  type,
                  tmdbId,
                  ...(type === "tv" ? { season: String(season), episode: String(epNum) } : {}),
                });
                const r = await fetch(`${SC_ARABIC}?${sp.toString()}`, {
                  headers: scHeaders,
                  signal : AbortSignal.timeout(25_000),
                });
                if (!r.ok) {
                  console.error(`[StarCima/arabic] HTTP ${r.status}`);
                  return;
                }
                const data: any = await r.json();
                const servers: any[] = (data.servers || []);
                if (!servers.length) console.warn("[StarCima/arabic] No arabic servers returned");

                // isTopPriority first (streamwish, filemoon, dood …) — run ALL in parallel (no cap)
                const priority = servers.filter((s: any) => s.isTopPriority);
                const rest     = servers.filter((s: any) => !s.isTopPriority);
                const ordered  = [...priority, ...rest];

                await Promise.allSettled(ordered.map(async (srv: any) => {
                  if (!srv.embedUrl) return;
                  // Try server-side extraction only — no iframe fallback
                  await sendExtracted(srv.embedUrl, `الثريا · ${srv.name || "عربي"}`);
                }));
              } catch (e) { console.error("[StarCima/arabic] error:", e); }
            })(),
          ]);

        } catch { /* silent */ }
      }),

      // ── AnimeWitcher Dubbed (Firebase Firestore — مدبلج عربي/إنجليزي) ────────────
      // يُعيد أنمي مدبلج لا علاقة له بالأنيميشن الغربي → مُعطَّل
      Promise.resolve() || (async () => {
        if (!title) return;
        try {
          const AW_FS = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

          // جلب كتالوج المدبلج (dubbed=true) — 116 عنوان فقط
          const awDubRes = await fetch(`${AW_FS}:runQuery`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              structuredQuery: {
                from : [{ collectionId: "anime_list" }],
                where: { fieldFilter: { field: { fieldPath: "dubbed" }, op: "EQUAL", value: { booleanValue: true } } },
                limit: 200,
              }
            }),
            signal: AbortSignal.timeout(10_000),
          });
          if (!awDubRes.ok) throw new Error("dubbed catalog fetch failed");
          const awDubData = await awDubRes.json() as any[];

          // AW Dubbed هو كتالوج أنمي مدبلج — للأفلام الغربية (Moana, Frozen...) لا ينطبق
          // عتبة عالية جداً لتجنب التطابقات الخاطئة بين عناوين الأنمي وعناوين الأنيميشن
          const awDubThreshold = 0.82;

          // بحث بالتشابه
          const candidates = (awDubData || [])
            .filter((d: any) => d?.document?.name)
            .map((d: any) => {
              const f    = d.document.fields || {};
              const name = d.document.name.split("/").pop() || "";
              const titleEn  = f.title_en?.stringValue || f.title?.stringValue || f.name?.stringValue || name;
              const titleAr  = f.title_ar?.stringValue || f.title_arabic?.stringValue || "";
              const best = Math.max(titleSim(title, titleEn), titleSim(title, titleAr), titleSim(title, name.replace(/-/g, " ")));
              return { name, score: best };
            })
            .filter(c => c.score >= awDubThreshold)
            .sort((a, b) => b.score - a.score);

          if (!candidates.length) {
            // fallback: إضافة TMDB English title لزيادة الاحتمالية
            let tmdbEnTitle = "";
            if (tmdbId) {
              try {
                const td = await fetch(`https://api.themoviedb.org/3/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${process.env.TMDB_API_KEY || "2f7e0b0b4f5a5ae0b96c94f1e636a60f"}&language=en`, { signal: AbortSignal.timeout(4_000) });
                if (td.ok) { const j: any = await td.json(); tmdbEnTitle = j.title || j.name || ""; }
              } catch { /* skip */ }
            }
            if (!tmdbEnTitle) return;
            const byTmdb = (awDubData || [])
              .filter((d: any) => d?.document?.name)
              .map((d: any) => {
                const f    = d.document.fields || {};
                const name = d.document.name.split("/").pop() || "";
                const titleEn = f.title_en?.stringValue || f.title?.stringValue || name;
                return { name, score: titleSim(tmdbEnTitle, titleEn) };
              })
              .filter(c => c.score >= awDubThreshold)
              .sort((a, b) => b.score - a.score);
            if (!byTmdb.length) return;
            candidates.push(...byTmdb);
          }

          const animeName = candidates[0].name;

          // جلب servers للحلقة
          const epPad  = String(type === "movie" ? 1 : epNum).padStart(3, "0");
          const srvRes = await fetch(
            `${AW_FS}/anime_list/${encodeURIComponent(animeName)}/episodes/${epPad}/servers?pageSize=20`,
            { signal: AbortSignal.timeout(10_000) }
          );
          if (!srvRes.ok) return;
          const srvData: any = await srvRes.json();
          if (!srvData.documents?.length) return;

          send("status", { msg: `AnimeWitcher Dubbed: "${animeName}" — جاري الاستخراج…` });

          await Promise.allSettled((srvData.documents as any[]).map(async (doc) => {
            const f       = doc.fields || {};
            const srvName = f.name?.stringValue || "";
            const quality = f.quality?.stringValue || "720p";
            const link    = f.link?.stringValue || "";
            const visible = f.visible?.booleanValue !== false;
            if (!link || !visible || !srvName) return;

            const qLabel = quality === "1080p" ? "FHD 1080p" : quality === "720p" ? "HD 720p" : quality;
            const label  = `AW·Dubbed · ${qLabel} · ${srvName}`;

            if (srvName === "PD") {
              const pdId = link.split("/").pop();
              if (!pdId || pdId.length < 4) return;
              const apiUrl  = `https://pixeldrain.com/api/file/${pdId}`;
              const proxied = wrapMp4(apiUrl, "https://pixeldrain.com/");
              sendSource(proxied, label, proxied, proxied);
            } else if (srvName === "ST") {
              // Streamtape — محجوب/متغير الـ obfuscation → متجاهَل
            } else if (srvName === "VT") {
              try {
                const extracted = await callExtractApi(link);
                if (extracted?.directUrl) {
                  const d       = extracted.directUrl;
                  const isHls   = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                  const proxied = isHls ? wrapHls(d, link) : wrapMp4(d, link);
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }
            } else if (srvName === "MF") {
              try {
                const mfHtml = await fetch(link, {
                  headers: { "User-Agent": UA, "Referer": "https://www.mediafire.com/" },
                  signal: AbortSignal.timeout(10_000),
                }).then(r => r.ok ? r.text() : "").catch(() => "");
                const mfDirect =
                  (/(https:\/\/download\d*\.mediafire\.com\/[^"' \n<>]+)/.exec(mfHtml))?.[1] ||
                  (/id="downloadButton"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] || null;
                if (mfDirect) {
                  const proxied = wrapMp4(mfDirect.replace(/&amp;/g, "&"), "https://www.mediafire.com/");
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }
            }
          }));
        } catch { /* silent */ }
      })(),

      // ── AnimeWitcher (AniList-based) → DISABLED ───────────────────────────────
      // يبحث في AniList عن عنوان TMDB فيُعيد أنمي ياباني لا علاقة له بالأنيميشن
      // يسبب ظهور حلقات أنمي خاطئة داخل قسم الأنيميشن الغربي → مُعطَّل
      Promise.resolve() || (async () => {
        if (!title) return;
        try {
          const AW_FS = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

          // 1. جلب العنوان الإنجليزي من TMDB (لأن title قد يكون عربياً)
          let tmdbEnTitle = "";
          let tmdbOrigTitle = "";
          if (tmdbId) {
            try {
              const tmdbEn = await fetch(
                `${TMDB_BASE}/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${TMDB_KEY}&language=en`,
                { signal: AbortSignal.timeout(6_000) }
              );
              if (tmdbEn.ok) {
                const td: any = await tmdbEn.json();
                tmdbEnTitle   = td.title || td.name || "";
                tmdbOrigTitle = td.original_title || td.original_name || "";
              }
            } catch { /* skip */ }
          }

          // 2. بحث AniList بالعنوان للحصول على aniList_id
          //    نُجرّب: العنوان الإنجليزي من TMDB ← العنوان الأصلي ← title المُمرَّر
          // بحث AniList بالتوازي — بدلاً من تسلسلي (كل بحث 8s × 4 = 32s)
          const awTitles = [tmdbEnTitle, tmdbOrigTitle, title, req.query.english ? String(req.query.english) : ""]
            .filter(Boolean)
            .filter((v, i, a) => a.indexOf(v) === i);
          let anilistId = "";
          try {
            anilistId = await Promise.any(
              awTitles.map(async t => {
                const gql = await fetch("https://graphql.anilist.co", {
                  method : "POST",
                  headers: { "Content-Type": "application/json", "Accept": "application/json" },
                  body   : JSON.stringify({
                    query    : "query($s:String){Media(search:$s,type:ANIME,isAdult:false){id title{romaji english}}}",
                    variables: { s: t },
                  }),
                  signal: AbortSignal.timeout(8_000),
                });
                if (!gql.ok) throw new Error("not ok");
                const gd: any = await gql.json();
                if (!gd?.data?.Media?.id) throw new Error("no id");
                return String(gd.data.Media.id);
              })
            );
          } catch { /* لم يُوجد في AniList */ }
          if (!anilistId) return;

          // 2. ابحث عن الأنمي في Firestore بالـ aniList_id — الوصول العام بدون auth
          const qRes = await fetch(`${AW_FS}:runQuery`, {
            method : "POST",
            headers: { "Content-Type": "application/json" },
            body   : JSON.stringify({
              structuredQuery: {
                from : [{ collectionId: "anime_list" }],
                where: { fieldFilter: { field: { fieldPath: "aniList_id" }, op: "EQUAL", value: { stringValue: anilistId } } },
                limit: 1,
              }
            }),
            signal: AbortSignal.timeout(10_000),
          });
          if (!qRes.ok) return;
          const qData = await qRes.json() as any[];
          const docPath  = qData?.[0]?.document?.name;
          if (!docPath) return;
          const animeName = docPath.split("/").pop();
          if (!animeName) return;

          // 4. جلب الـ servers للحلقة (مُبطّنة 3 أرقام)
          const epPad  = String(type === "movie" ? 1 : epNum).padStart(3, "0");
          const srvRes = await fetch(
            `${AW_FS}/anime_list/${encodeURIComponent(animeName)}/episodes/${epPad}/servers?pageSize=20`,
            { signal: AbortSignal.timeout(10_000) }
          );
          if (!srvRes.ok) return;
          const srvData: any = await srvRes.json();
          if (!srvData.documents?.length) return;

          send("status", { msg: `AnimeWitcher: وُجد "${animeName}" — جاري الاستخراج…` });

          // 5. معالجة كل سيرفر وإرسال المصادر
          await Promise.allSettled((srvData.documents as any[]).map(async (doc) => {
            const f       = doc.fields || {};
            const srvName = f.name?.stringValue || "";
            const quality = f.quality?.stringValue || "720p";
            const link    = f.link?.stringValue || "";
            const visible = f.visible?.booleanValue !== false;
            if (!link || !visible || !srvName) return;

            const qLabel = quality === "1080p" ? "FHD 1080p" : quality === "720p" ? "HD 720p" : quality;
            const label  = `AnimeWitcher · ${qLabel} · ${srvName}`;

            if (srvName === "PD") {
              // Pixeldrain → رابط مباشر MP4 عبر video-proxy
              const pdId = link.split("/").pop();
              if (!pdId || pdId.length < 4) return;
              const apiUrl  = `https://pixeldrain.com/api/file/${pdId}`;
              const proxied = wrapMp4(apiUrl, "https://pixeldrain.com/");
              sendSource(proxied, label, proxied, proxied);

            } else if (srvName === "ST") {
              // Streamtape — محجوب/متغير الـ obfuscation → متجاهَل

            } else if (srvName === "VT") {
              // VidTube → استخراج عبر callExtractApi (extractVideoDeep)
              try {
                const extracted = await callExtractApi(link);
                if (extracted?.directUrl) {
                  const d       = extracted.directUrl;
                  const isHls   = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                  const proxied = isHls ? wrapHls(d, link) : wrapMp4(d, link);
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }

            } else if (srvName === "MF") {
              // MediaFire → استخراج رابط التحميل المباشر
              try {
                const mfHtml = await fetch(link, {
                  headers: { "User-Agent": UA, "Referer": "https://www.mediafire.com/" },
                  signal: AbortSignal.timeout(10_000),
                }).then(r => r.ok ? r.text() : "").catch(() => "");
                const mfDirect =
                  (/(https:\/\/download\d*\.mediafire\.com\/[^"' \n<>]+)/.exec(mfHtml))?.[1] ||
                  (/id="downloadButton"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] ||
                  (/aria-label="[Dd]ownload [Ff]ile"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] ||
                  null;
                if (mfDirect) {
                  const proxied = wrapMp4(mfDirect.replace(/&amp;/g, "&"), "https://www.mediafire.com/");
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }

            } else if (srvName === "KF") {
              // KrakenFiles → Cloudflare 502 من Replit → يُتخطى
            }
          }));

        } catch { /* silent */ }
      })(),

      // ── 25. vidlink.pro — مُعطَّل (iframe مُزال من الواجهة) ──────────────────
      Promise.resolve(),

      // ── 26. player.videasy.to — مُعطَّل (iframe مُزال من الواجهة) ────────────
      Promise.resolve(),

      // ── 27. anyembed.xyz — مُعطَّل (iframe مُزال من الواجهة) ─────────────────
      Promise.resolve(),

      // ── 28. VidFast Pro (TMDB-native, AES-256-GCM, multi-server HLS) ─────────
      scrapeAnimCached("vidfast", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "VidFast: جاري الاستخراج…" });
          await scrapeVidFastAnim(tmdbId, type as "movie" | "tv", season, epNum, sendSource);
        } catch { /* silent */ }
      }),

      // ── VidCore (vidcore.net) — نفس نمط VidFast عبر enc-dec.app ─────────────
      scrapeAnimCached("vidcore", async () => {
        if (!tmdbId) return;
        const ENCDEC    = "https://enc-dec.app/api";
        const VC_ORIGIN = "https://vidcore.net";
        send("status", { msg: "VidCore: جاري الاستخراج…" });
        try {
          // Step 1: جلب الصفحة عبر Orkestr (CF يحجب Replit IPs مباشرة)
          const pagePath = type === "tv" ? `/tv/${tmdbId}/${season}/${epNum}/` : `/movie/${tmdbId}/`;
          const pageHtml = await cfOrOrkestGet(`${VC_ORIGIN}${pagePath}`);
          if (!pageHtml || pageHtml.length < 500) return;

          // استخراج النص المشفر من صفحة الـ player (React/Next.js inlined JSON)
          const textMatch =
            pageHtml.match(/[?&](?:key|token|data|hash)=([A-Za-z0-9_-]{16,})/)?.[1] ||
            pageHtml.match(/"(?:key|token|data|encKey)"\s*:\s*"([A-Za-z0-9_-]{16,})"/) ?.[1] ||
            pageHtml.match(/src="[^"]*\/e\/([A-Za-z0-9_-]{16,})"/) ?.[1];
          if (!textMatch) return;

          // Step 2: enc-vidcore → {servers, stream, token}
          const encRes = await fetch(`${ENCDEC}/enc-vidcore?text=${encodeURIComponent(textMatch)}`, {
            signal: AbortSignal.timeout(10_000),
          });
          if (!encRes.ok) return;
          const encData: any = await encRes.json();
          if (encData.status !== 200) return;
          const { servers: srvUrl, stream: streamBase, token: csrf } = encData.result;
          if (!srvUrl || !streamBase) return;

          const VC_HEADERS = {
            "User-Agent": UA, "Referer": VC_ORIGIN + "/",
            "X-Requested-With": "XMLHttpRequest", "X-CSRF-Token": csrf || "",
          };

          // Step 3: POST servers URL → decrypt list
          const srvEncRes = await fetch(srvUrl, { method: "POST", headers: VC_HEADERS, signal: AbortSignal.timeout(10_000) });
          if (!srvEncRes.ok) return;
          const srvEncText = await srvEncRes.text();
          const decSrvRes = await fetch(`${ENCDEC}/dec-vidcore`, {
            method: "POST", headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ text: srvEncText }), signal: AbortSignal.timeout(10_000),
          });
          const decSrvData: any = await decSrvRes.json();
          if (decSrvData.status !== 200 || !Array.isArray(decSrvData.result)) return;
          const serversList: Array<{ name: string; data: string }> = decSrvData.result;

          // Step 4: جلب كل سيرفر → فك التشفير → sendSource
          const seen = new Set<string>();
          await Promise.allSettled(
            serversList.slice(0, 8).map(async (srv) => {
              try {
                const stRes = await fetch(`${streamBase}/${srv.data}`, {
                  method: "POST", headers: VC_HEADERS, signal: AbortSignal.timeout(10_000),
                });
                const stText = await stRes.text();
                const decStRes = await fetch(`${ENCDEC}/dec-vidcore`, {
                  method: "POST", headers: { "Content-Type": "application/json" },
                  body: JSON.stringify({ text: stText }), signal: AbortSignal.timeout(10_000),
                });
                const decSt: any = await decStRes.json();
                if (decSt.status !== 200) return;
                const m3u8: string = decSt.result?.url || decSt.result || "";
                if (typeof m3u8 !== "string" || !m3u8.includes(".m3u8") || seen.has(m3u8)) return;
                seen.add(m3u8);
                sendSource(wrapHls(m3u8, VC_ORIGIN + "/"), `VidCore · ${srv.name}`, m3u8, wrapHls(m3u8, VC_ORIGIN + "/"));
              } catch { /* silent */ }
            })
          );
        } catch { /* silent */ }
      }),

      // ── VidSync — مُعطَّل: enc-vidsync يحتاج Turnstile في المتصفح (InitTabs2)
      Promise.resolve(),

      // rivestream: محذوف (iframe fallback غير مرغوب)

      // ── 16. Icefy (streams.icefy.top) — عبر Orkestr EU relay ────────────────
      // CF تحجب IPs ريبليت → Orkestr (EU) يتجاوزها للـ API والـ CDN معاً
      scrapeAnimCached("icefy", async () => {
        if (!tmdbId) return;
        if (type !== "movie") return; // TV endpoint format غير مكتشف
        try {
          const ORKESTR = process.env["ORKESTR_URL"] || "https://anime-nova.orkestr.run";
          send("status", { msg: "Icefy: جاري الاستخراج…" });
          const raw = await orkestDirectGet(`https://streams.icefy.top/movie/${tmdbId}`, 12_000);
          const data = JSON.parse(raw) as { stream?: string };
          if (!data.stream) return;
          // HLS عبر Orkestr hls-proxy (EU IP يصل CDN بدون حجب)
          const proxied = `${ORKESTR}/api/anime/hls-proxy?url=${encodeURIComponent(data.stream)}&ref=${encodeURIComponent("https://icefy.top/")}`;
          sendSource(proxied, "Icefy · FHD", data.stream, proxied);
        } catch { /* silent */ }
      }),

      // ── anime-day.com — أنمي داي (كرتون غربي/أنمي صيني) ────────────────────
      scrapeAnimCached("animeday_anim", async () => {
        if (!title) return;
        try {
          send("status", { msg: "AniméDay: جاري البحث…" });
          const ADBASE  = "https://www.anime-day.com";
          const AD_UA   = "com.anime.day/4.0 (Android)";

          // ── resolve relative URL → full URL using server name ──────────────
          const adResolve = (srv: any): string | null => {
            const u: string = srv.url || "";
            const p: string = ((srv.name || "").toLowerCase().split(" ").pop() || "");
            if (!u) return null;
            if (u.startsWith("https://")) return u;
            if (u.startsWith("/v/"))          return `https://vidhidepro.com${u}`;
            if (/^\/e\//.test(u)) {
              if (p === "dood")     return `https://dood.to${u}`;
              if (p === "mixdrop")  return `https://mixdrop.ag${u}`;
              if (p === "kerapoxy") return `https://kerapoxy.cc${u}`;
              if (p === "filemoon") return `https://filemoon.sx${u}`;
              if (p === "voe_sx" || p === "voe") return `https://voe.sx${u}`;
              return `https://embedwish.com${u}`;
            }
            if (/^\/embed-[^/]+\.html$/.test(u)) {
              if (p === "upstream")  return `https://upstream.to${u}`;
              if (p === "uqload")    return `https://uqload.co${u}`;
              if (p === "vadbam")    return `https://vadbam.net${u}`;
              if (p === "viidshar")  return `https://viidshar.com${u}`;
              if (p === "mp4upload") return `https://www.mp4upload.com${u}`;
              return `https://upstream.to${u}`;
            }
            return null;
          };

          // ── fetch anime list + servers in parallel ──────────────────────────
          const [animeR, servR] = await Promise.all([
            fetch(`${ADBASE}/app/anime.php`, {
              headers: { "User-Agent": AD_UA, "Accept": "application/json" },
              signal : AbortSignal.timeout(8_000),
            }),
            fetch(`${ADBASE}/app/servers.php`, {
              headers: { "User-Agent": AD_UA, "Accept": "application/json" },
              signal : AbortSignal.timeout(10_000),
            }),
          ]);
          if (!animeR.ok || !servR.ok) return;
          const animeList: any[] = ((await animeR.json() as any).data ?? []);
          const serverList: any[] = ((await servR.json() as any).data ?? []);
          if (!animeList.length || !serverList.length) return;

          // ── Arabic ordinal → digit (الأول=1, الثاني=2, …) ──────────────────
          const AR_ORDINAL: Record<string, number> = {
            'الأول':1,'الاول':1,'الأولى':1,'الأولي':1,
            'الثاني':2,'الثانى':2,'الثانية':2,
            'الثالث':3,'الثالثة':3,
            'الرابع':4,'الرابعة':4,
            'الخامس':5,'الخامسة':5,
            'السادس':6,'السابع':7,'الثامن':8,'التاسع':9,'العاشر':10,
          };
          const parseSeasonNum = (nm: string): number => {
            const d = nm.match(/(?:season)\s+(\d+)/i);
            if (d) return parseInt(d[1], 10);
            const ar = nm.match(/الموسم\s+(\S+)/);
            if (ar) return AR_ORDINAL[ar[1]] ?? 1;
            return 1;
          };

          // ── title matching: use titleSim against name (strip season) ─────────
          const searchQ = title.toLowerCase().replace(/[^a-z0-9\s]/g, " ").trim();

          // Collect ALL entries that match title (multiple seasons)
          const candidates: { anime: any; seasonNum: number; score: number }[] = [];
          for (const anime of animeList) {
            const nm = (anime.name || "")
              .toLowerCase()
              .replace(/\s*(season|الموسم)\s+.*/i, "")
              .replace(/[^a-z0-9\s]/g, " ").trim();
            const sn = (anime.second_name || "")
              .toLowerCase().replace(/[^a-z0-9\s]/g, " ");
            const sc = Math.max(titleSim(searchQ, nm), titleSim(searchQ, sn));
            if (sc >= 0.5) {
              const sNum = parseSeasonNum(anime.name || "");
              candidates.push({ anime, seasonNum: sNum, score: sc });
            }
          }
          if (!candidates.length) return;

          // For TV: prefer the entry whose season matches; for movie: highest score
          let bestCandidate = candidates[0];
          if (type === "tv") {
            const exact = candidates.find(c => c.seasonNum === season);
            if (exact) bestCandidate = exact;
            else return; // season not available
          } else {
            bestCandidate = candidates.reduce((a, b) => a.score >= b.score ? a : b);
          }
          const bestAnime = bestCandidate.anime;
          if (!bestAnime) return;

          const animeName: string = bestAnime.name || "";
          const showNamePart = animeName.toLowerCase()
            .replace(/\s*(season|الموسم)\s+.*/i, "").trim();
          const matched = serverList.filter((s: any) => {
            const sn = (s.name || "").toLowerCase();
            if (!sn.includes(showNamePart.split(" ")[0])) return false;
            if (type === "tv") {
              // Use regex with word boundary so ep 5 doesn't match ep 50/55
              return sn.includes(`season ${season}`) &&
                     new RegExp(`\\beps\\s+${epNum}(?:\\s|$)`).test(sn);
            }
            return sn.includes(showNamePart.slice(0, 12));
          });
          if (!matched.length) return;

          // ── try each server, send extracted streams ─────────────────────────
          const seen = new Set<string>();
          for (const srv of matched.slice(0, 10)) {
            const full = adResolve(srv);
            if (!full || seen.has(full)) continue;
            seen.add(full);
            const prov = (srv.name || "").toLowerCase().split(" ").pop() || "animeday";
            await sendExtracted(full, `AniméDay · ${prov}`);
          }
        } catch { /* silent */ }
      }),

      // ── aflaam.com — مباشر MP4 عربي متعدد الجودات ───────────────────────────
      scrapeAnimCached("aflaam", async () => {
        if (!title) return;
        try {
          send("status", { msg: "aflaam: جاري البحث…" });

          // Use pre-fetched English title (already resolved before Promise.allSettled)
          const sources = type === "tv"
            ? await scrapeAflaamSeries(title, epNum, season, enTitlePrefetched || undefined)
            : await scrapeAflaamMovie(title, enTitlePrefetched || undefined);

          for (const src of sources) {
            const qLabel  = src.quality === "1080" ? "1080p FHD"
              : src.quality === "720" ? "720p HD"
              : src.quality === "480" ? "480p SD"
              : `${src.quality}p`;
            const proxied = wrapMp4(src.url, `${AFLAAM_BASE}/`);
            sendSource(proxied, `aflaam · ${qLabel}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

      // ── SeePanal — أنيميشن وكرتون مدبلج عربي ─────────────────────────────────
      scrapeAnimCached("seepanel", async () => {
        if (!title) return;
        try {
          send("status", { msg: "SeePanal: جاري البحث…" });

          // Build search queries: TMDB title + English alternative title
          const queries = [title, enTitlePrefetched].filter(Boolean) as string[];
          const seenIds = new Set<number>();
          const candidates: Array<{ poster: any; score: number }> = [];

          for (const q of queries) {
            const posters = await spSearch(q);
            for (const p of posters) {
              if (seenIds.has(p.id)) continue;
              seenIds.add(p.id);
              const spNorm = p.title
                .replace(/\s*-\s*[\u0600-\u06ff].*$/u, "")
                .toLowerCase().replace(/[^a-z0-9 ]/g, " ").replace(/\s+/g, " ").trim();
              const qNorm  = q.toLowerCase().replace(/[^a-z0-9 ]/g, " ").replace(/\s+/g, " ").trim();
              const tNorm  = title.toLowerCase().replace(/[^a-z0-9 ]/g, " ").replace(/\s+/g, " ").trim();
              const score = Math.max(
                spTitleSim(p.title, q),
                spTitleSim(p.title, title),
                // Substring bonus: title inside SeePanal title (e.g. "kung fu panda" in title)
                (spNorm.includes(qNorm) || spNorm.includes(tNorm) ||
                 qNorm.includes(spNorm) || tNorm.includes(spNorm)) ? 0.6 : 0,
              );
              if (score >= 0.4) candidates.push({ poster: p, score });
            }
          }

          if (!candidates.length) return;

          // Filter by content type: movie requests only match movie posters; tv only series
          const typeFiltered = candidates.filter(({ poster }) =>
            type === "movie" ? poster.type === "movie" : poster.type !== "movie",
          );
          const finalCandidates = typeFiltered.length ? typeFiltered : candidates;

          finalCandidates.sort((a, b) =>
            b.score !== a.score ? b.score - a.score :
            (a.poster.type === "movie" && type === "movie" ? -1 : 1),
          );

          // Episode index for TV; 1 for movies/OVAs
          const epIdx = type === "movie" ? 1 : epNum;

          for (const { poster } of finalCandidates.slice(0, 4)) {
            const srcs = await spGetSources(poster, epIdx);
            if (!srcs.length) continue;

            // Extract each source via extractVideoDeep (handles vidspeed/hlswish/1vid/uqload)
            await Promise.allSettled(srcs.map(async (src) => {
              try {
                const extracted = await callExtractApi(src.url);
                if (!extracted?.directUrl) return;
                const d = extracted.directUrl;
                const isHls = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                const proxied = isHls
                  ? (d.startsWith("/") ? d : wrapHls(d, src.url))
                  : wrapMp4(d, src.url);
                sendSource(proxied, `SeePanal · Dubbed · ${src.quality}`, proxied, proxied);
              } catch { /* skip */ }
            }));

            // Stop if we got at least one source from this poster
            if (sourceCount > 0) break;
          }
        } catch { /* silent */ }
      }),

      // ── ArabSeed (m.asd.ink) — Arabic dubbed/subbed content ──────────────────
      scrapeAnimCached("arabseed", async () => {
        if (!title) return;
        try {
          send("status", { msg: "عرب سيد: جاري البحث…" });
          const queries = [enTitlePrefetched, title].filter(Boolean) as string[];
          let epUrl: string | null = null;
          for (const q of queries) {
            epUrl = type === "movie"
              ? await asFindMovieUrl(q)
              : await asFindEpisodeUrl(q, epNum);
            if (epUrl) break;
          }
          if (!epUrl) return;

          // a.asd.ink (episode pages) works directly from Replit (confirmed 2026-06)
          const epOrigin = new URL(epUrl).origin; // https://a.asd.ink
          const AS_HDRS: Record<string, string> = {
            "User-Agent": UA,
            "Referer": epUrl,
            "Origin": epOrigin,
          };

          // Direct fetch — a.asd.ink is accessible without CF proxy from Replit
          const epResp = await fetch(epUrl, {
            headers: { "User-Agent": UA, "Referer": `${AS_BASE}/` },
            signal: AbortSignal.timeout(10_000),
            redirect: "follow",
          }).catch(() => null);
          if (!epResp?.ok) return;
          const epHtml = await epResp.text();
          if (!epHtml) return;

          // psot_id: object__info = {'psot_id': '12345'} or psot_id: "12345"
          const postIdM = epHtml.match(/psot_id['"]?\s*[:']\s*['"](\d+)['"]/i)
            || epHtml.match(/var\s+post_id\s*=\s*['"]?(\d+)/i)
            || epHtml.match(/data-post[_-]id=["'](\d+)/i);
          const csrfM = epHtml.match(/csrf[_]{1,2}token['"]?\s*[:']\s*["']([a-zA-Z0-9_/-]{4,80})["']/i);
          if (!postIdM) return;
          const psotId = postIdM[1];
          const csrf   = csrfM?.[1] || "";

          // POST /get__quality__servers/ → server list
          let serverIndices: number[] = [];
          let firstEmbedUrl = "";
          try {
            const qRes = await fetch(`${epOrigin}/get__quality__servers/`, {
              method: "POST",
              headers: { ...AS_HDRS, "Content-Type": "application/x-www-form-urlencoded", "X-Requested-With": "XMLHttpRequest" },
              body: new URLSearchParams({ post_id: psotId, quality: "1080", csrf_token: csrf }).toString(),
              signal: AbortSignal.timeout(9_000),
            });
            if (qRes.ok) {
              const qData = await qRes.json() as { html?: string; server?: string };
              firstEmbedUrl = qData.server || "";
              for (const m of (qData.html || "").matchAll(/data-server=["'](\d+)["']/gi)) {
                const idx = parseInt(m[1], 10);
                if (!serverIndices.includes(idx)) serverIndices.push(idx);
              }
            }
          } catch { /* fallback to default indices */ }
          if (!serverIndices.length) serverIndices = [0, 1, 2, 3];

          await Promise.allSettled(serverIndices.slice(0, 4).map(async (serverIdx) => {
            try {
              const sRes = await fetch(`${epOrigin}/get__watch__server/`, {
                method: "POST",
                headers: { ...AS_HDRS, "Content-Type": "application/x-www-form-urlencoded", "X-Requested-With": "XMLHttpRequest" },
                body: new URLSearchParams({ post_id: psotId, quality: "1080", server: String(serverIdx), csrf_token: csrf }).toString(),
                signal: AbortSignal.timeout(9_000),
              });
              if (!sRes.ok) return;
              const sData = await sRes.json() as { type?: string; server?: string };
              const embedUrl: string = sData.server || (serverIdx === 0 ? firstEmbedUrl : "");
              if (!embedUrl?.startsWith("http")) return;
              if (embedUrl.includes("luluvid")) return;
              const srvLabel = `ArabSeed · سيرفر ${serverIdx + 1}`;
              const extracted = await callExtractApi(embedUrl);
              if (extracted?.directUrl) {
                const d = extracted.directUrl;
                const isHls = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                const proxied = isHls && !d.startsWith("/") ? wrapHls(d, embedUrl) : wrapMp4(d, embedUrl);
                sendSource(embedUrl, srvLabel, d, proxied);
              }
            } catch { /* skip */ }
          }));
        } catch { /* silent */ }
      }),

      // ── EzVidAPI (api.ezvidapi.com) — free HLS multi-quality TMDB-native ────────
      scrapeAnimCached("2embed", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "EzVidAPI: جاري الاستخراج…" });
          // vidnest: TV-only (times out for movies); vidlink works for both; vidrock removed (broken)
          const providers = type === "tv"
            ? ["vidnest", "vidlink"]
            : ["vidlink"];
          await Promise.allSettled(providers.map(async (prov) => {
            try {
              const apiUrl = type === "tv"
                ? `https://api.ezvidapi.com/tv/${prov}/${tmdbId}?season=${season}&episode=${epNum}`
                : `https://api.ezvidapi.com/movie/${prov}/${tmdbId}`;
              const r = await fetch(apiUrl, {
                headers: { "User-Agent": UA },
                signal: AbortSignal.timeout(10_000),
              });
              if (!r.ok) return;
              const data = await r.json() as { stream_url?: string };
              if (!data.stream_url) return;
              const streamUrl = data.stream_url;
              if (seenUrls.has(streamUrl)) return;
              const ezRef = `https://www.${prov}.pro/`;
              // vidrock: EzVidAPI proxy URL already handles CORS/auth internally — send raw to browser
              // Others: wrap with hls-proxy so server rewrites segments via seg-proxy
              const proxiedStream = streamUrl.includes(".m3u8") ? wrapHls(streamUrl, ezRef) : wrapMp4(streamUrl, ezRef);
              // Probe — probeHlsProxy returns true immediately for external (non-/api/) URLs
              const ezProbeOk = await probeHlsProxy(proxiedStream);
              if (!ezProbeOk) return;
              const subtitleUrl: string | undefined = undefined;
              seenUrls.add(streamUrl);
              sourceCount++;
              send("source", {
                url: proxiedStream,
                label: `EzVidAPI · ${prov}`,
                directUrl: streamUrl,
                proxyUrl: proxiedStream,
                ...(subtitleUrl ? { subtitleUrl } : {}),
              });
            } catch { /* silent per provider */ }
          }));
        } catch { /* silent */ }
      }),

      // ── Videasy (api.videasy.to) — TMDB-native HLS multi-quality + Arabic subtitle ─
      scrapeAnimCached("videasy3", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "Videasy: جاري الاستخراج…" });
          const rawTitle = enTitlePrefetched || title || "";
          if (!rawTitle) return;
          // Videasy requires double URL-encoding for the title parameter
          const encTitle = encodeURIComponent(encodeURIComponent(rawTitle));
          const mediaType = type === "movie" ? "movie" : "tv";
          const baseParams = mediaType === "tv"
            ? `title=${encTitle}&mediaType=tv&year=&tmdbId=${tmdbId}&imdbId=&episodeId=${epNum}&seasonId=${season}`
            : `title=${encTitle}&mediaType=movie&year=&tmdbId=${tmdbId}&imdbId=&episodeId=1&seasonId=1`;
          const VEA_HDRS = {
            "User-Agent": UA,
            "Accept": "application/json, */*; q=0.01",
            "Referer": "https://player.videasy.to/",
            "Origin": "https://player.videasy.to",
          };
          // mb-flix = primary English; cdn = high-quality (4K)
          const servers = ["mb-flix", "cdn"];
          await Promise.allSettled(servers.map(async (server) => {
            try {
              const url = `https://api.videasy.to/${server}/sources-with-title?${baseParams}`;
              const r = await fetch(url, { headers: VEA_HDRS, signal: AbortSignal.timeout(12_000) });
              if (!r.ok) return;
              const blob = await r.text();
              if (!blob || blob.length < 20) return;
              // Decrypt via enc-dec.app — downloader2 may need empty id as fallback
              const tryDecrypt = async (id: string) =>
                fetch("https://enc-dec.app/api/dec-videasy", {
                  method: "POST",
                  headers: { "Content-Type": "application/json" },
                  body: JSON.stringify({ text: blob, id, server }),
                  signal: AbortSignal.timeout(10_000),
                }).then(r2 => r2.ok ? r2.json() : null).catch(() => null) as
                Promise<{ status: number; result?: { sources?: any[]; subtitles?: any[] } } | null>;

              let decData = await tryDecrypt(String(tmdbId));
              if (!decData || decData.status !== 200 || !decData.result?.sources?.length) {
                decData = await tryDecrypt("");
              }
              if (!decData || decData.status !== 200 || !decData.result?.sources) return;
              // Arabic subtitle from cc.boopigcdn.com (publicly accessible, WEBVTT)
              const subs = decData.result.subtitles ?? [];
              const araSub = subs.find((s: any) => s.lang === "ara" || s.lang === "ar");
              for (const src of (decData.result.sources ?? [])) {
                if (!src?.url) continue;
                const quality = src.quality || "HD";
                const label = `Videasy · ${server} · ${quality}`;
                // CDN (joe.goldweather.net) blocks by Referer — REQUIRES Referer: https://player.videasy.to/
                // Our server CAN access it when the correct Referer is sent (confirmed 200).
                // Route through hls-proxy with ref=player.videasy.to so:
                //   browser → hls-proxy (server, correct Referer) → CDN → returns m3u8 ✓
                //   segment URLs rewritten to seg-proxy (same Referer) → CDN → segments ✓
                const hlsProxied = `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent("https://player.videasy.to/")}`;
                // Probe before sending — skip dead/expired CDN streams (fixes CDN 4K issue)
                const veaProbeOk = await probeHlsProxy(hlsProxied);
                if (!veaProbeOk) continue;
                sendSource(
                  hlsProxied, label, hlsProxied, hlsProxied,
                  araSub?.url ? { subtitleUrl: araSub.url } : undefined,
                );
              }
            } catch { /* silent per server */ }
          }));
        } catch { /* silent */ }
      }),

      // ── VidLink via enc-dec.app — TMDB-native HLS + Arabic captions ─────────────
      scrapeAnimCached("vidlink_encdec", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "VidLink: جاري التشفير…" });
          // Step 1: Encrypt TMDB ID via enc-dec.app
          const encR = await fetch(`https://enc-dec.app/api/enc-vidlink?text=${tmdbId}`, {
            headers: { "User-Agent": UA },
            signal: AbortSignal.timeout(8_000),
          });
          if (!encR.ok) { console.error(`[vidlink_anim] enc-dec ${encR.status}`); return; }
          const encData = await encR.json() as { status?: number; result?: string; data?: string };
          const encrypted = encData.result || encData.data || "";
          if (!encrypted) { console.error("[vidlink_anim] enc-dec no encrypted value", encData); return; }
          // Step 2: Fetch VidLink API with encrypted ID
          const vlUrl = type === "movie"
            ? `https://vidlink.pro/api/b/movie/${encrypted}`
            : `https://vidlink.pro/api/b/tv/${encrypted}/${season}/${epNum}`;
          const vlR = await fetch(vlUrl, {
            headers: {
              "User-Agent": UA,
              "Origin": "https://vidlink.pro",
              "Referer": "https://vidlink.pro/",
            },
            signal: AbortSignal.timeout(12_000),
          });
          if (!vlR.ok) { console.error(`[vidlink_anim] API ${vlR.status}`); return; }
          const vlData = await vlR.json() as any;
          const hlsUrl: string = vlData?.stream?.playlist || vlData?.stream?.url || vlData?.playlist || "";
          if (!hlsUrl) { console.error("[vidlink_anim] no playlist in response", JSON.stringify(vlData).slice(0, 150)); return; }
          const captions: any[] = vlData?.stream?.captions || vlData?.captions || [];
          const araCap = captions.find((c: any) => c.language === "ara" || c.language === "ar");
          // storm.vodvidl.site auth token is bound to the server IP that requested it.
          // Browser (different IP) gets 403. Use hls-proxy so server fetches segments
          // with the same IP that generated the auth token.
          const VL_REF  = "https://vidlink.pro/";
          const vlProxy = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent(VL_REF)}`;
          sendSource(
            vlProxy, "VidLink · HLS", hlsUrl, vlProxy,
            araCap?.url ? { subtitleUrl: araCap.url } : undefined,
          );
        } catch { /* silent */ }
      }),

      // LordFlix: محذوف — Cloudflare browser-challenge يمنع استخراج البيانات

      // VixSrc (vixsrc.to) — محذوف: Next.js SPA، الـ API يعيد 404 من السيرفر (client-side only)

      // ── AnimePhoenix (anime-phoenix.com) — أنمي مدبلج عربي x265/HEVC ─────────
      // ── MyCima / WeCima — أفلام وكرتون مترجم ──────────────────────────────
      scrapeAnimCached("mycima_anim", async () => {
        const q = enTitlePrefetched || title;
        if (!q) return;
        try {
          send("status", { msg: "ماي سيما: جاري البحث…" });
          const PORT    = process.env["PORT"] || "5000";
          const ep      = type === "movie" ? 1 : epNum;
          const isMovie = type === "movie" ? "true" : "false";
          const fsUrl   = `http://localhost:${PORT}/api/anime/fetch-source?site=mycima`
            + `&title=${encodeURIComponent(q)}&english=${encodeURIComponent(q)}&ep=${ep}&isMovie=${isMovie}`;
          const r = await fetch(fsUrl, {
            headers: { "x-internal": "1" },
            signal: AbortSignal.timeout(25_000),
          });
          if (!r.ok) return;
          const { sources } = await r.json() as {
            sources?: Array<{ directUrl?: string; url?: string; name?: string }>;
          };
          for (const src of sources || []) {
            const u = src.directUrl || src.url;
            if (!u) continue;
            const proxied = u.startsWith("/api/") ? u
              : u.includes(".m3u8") ? wrapHls(u, "https://mycima.gives/")
              : u;
            sendSource(proxied, `MyCima · ${src.name || "Arabic Dubbed"}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

      // AnimePhoenix → موقع أنمي ياباني مدبلج بالعربية — ليس أنيميشن غربي → مُعطَّل من قسم الأنيميشن
      // (متاح في قسم الأنمي عبر /api/anime/fetch-source?site=animephoenix)
      Promise.resolve(),

      scrapeAnimCached("topcinemaa_anim", async () => {
        const q = enTitlePrefetched || title;
        if (!q) return;
        try {
          send("status", { msg: "توب سيما: جاري البحث…" });
          const ep      = type === "movie" ? 1 : epNum;
          const isMovie = type === "movie" ? "true" : "false";
          const PORT    = process.env["PORT"] || "5000";
          const fsUrl   = `http://localhost:${PORT}/api/anime/fetch-source?site=topcinemaa`
            + `&title=${encodeURIComponent(q)}&english=${encodeURIComponent(q)}&ep=${ep}&isMovie=${isMovie}`;
          const r = await fetch(fsUrl, {
            headers: { "x-internal": "1" },
            signal: AbortSignal.timeout(25_000),
          });
          if (!r.ok) return;
          const { sources } = await r.json() as {
            sources?: Array<{ directUrl?: string; url?: string; name?: string; qualityRank?: number }>;
          };
          for (const src of sources || []) {
            const u = src.directUrl || src.url;
            if (!u) continue;
            const proxied = u.startsWith("/api/") ? u
              : u.includes(".m3u8") ? wrapHls(u, "https://web.topcinemaa.com/")
              : wrapMp4(u, "https://web.topcinemaa.com/");
            sendSource(proxied, `TopCinema · ${src.name || "Arabic Dubbed"}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

      // Animeify (animeify.net) → موقع أنمي ياباني بالعربية — ليس أنيميشن غربي → مُعطَّل من قسم الأنيميشن
      // (متاح في قسم الأنمي عبر /api/anime/fetch-source?site=animeify)
      Promise.resolve(),

      // ── FaselHD (faselhds.biz / faselhd.club) — أفلام ومسلسلات عربية مترجمة ────
      // CF-protected: يجرب cfProxyGet أولاً ثم يعود لـ Orkestr (EU IP) كـ fallback
      scrapeAnimCached("faselhd", async () => {
        const FASEL_BASE = "https://www.faselhds.biz";
        const FASEL_ALT  = "https://faselhd.club";
        const q = encodeURIComponent(title);
        send("status", { msg: "FaselHD: جاري البحث…" });

        const isCfBlocked = (html: string) =>
          html.includes("Just a moment") || html.includes("cf-browser-verification") || html.length < 500;

        try {
          // Step 1: Search (cfProxyGet → Orkestr fallback)
          let html = "";
          for (const base of [FASEL_BASE, FASEL_ALT]) {
            try {
              html = await cfOrOrkestGet(`${base}/?s=${q}`);
              if (!isCfBlocked(html)) break;
              html = "";
            } catch { /* try alt */ }
          }
          if (!html || isCfBlocked(html)) return;

          // Step 2: Parse results — div#postList div.postDiv a
          const results: Array<{ url: string; ttl: string }> = [];
          const itemRe = /<div[^>]+class="[^"]*postDiv[^"]*"[^>]*>[\s\S]*?<a[^>]+href="([^"]+)"[^>]*>[\s\S]*?img[^>]+alt="([^"]*)"[\s\S]*?<\/a>/g;
          let m: RegExpExecArray | null;
          while ((m = itemRe.exec(html))) {
            results.push({ url: m[1], ttl: m[2].trim() });
          }
          if (!results.length) return;

          // Step 3: Best match
          const best = results
            .map(r => ({ ...r, sc: Math.max(titleSim(title, r.ttl), titleSim(enTitlePrefetched, r.ttl)) }))
            .filter(r => r.sc > 0.38)
            .sort((a, b) => b.sc - a.sc)[0];
          if (!best) return;

          // Step 4: Load content page
          let pageHtml = "";
          try { pageHtml = await cfOrOrkestGet(best.url); } catch { return; }
          if (isCfBlocked(pageHtml)) return;

          const isMoviePage = !/<div[^>]+class="[^"]*epAll[^"]*"/.test(pageHtml);

          if (isMoviePage || type === "movie") {
            // Movie: download link page → POST → direct MP4
            const dlM = pageHtml.match(/class="downloadLinks"[\s\S]*?<a\s+href="([^"]+)"/);
            if (!dlM) {
              // Try iframe player
              const ifrM = pageHtml.match(/iframe[^>]+name="player_iframe"[^>]+src="([^"]+)"/);
              if (ifrM) await sendExtracted(ifrM[1], "FaselHD");
              return;
            }
            try {
              const dlHtml = await cfOrOrkestPost(dlM[1]);
              const directM = dlHtml.match(/class="dl-link[^"]*"[^>]*href="([^"]+)"/);
              if (!directM) return;
              const directUrl = directM[1];
              if (directUrl.includes(".mp4") || directUrl.includes("download")) {
                const proxied = wrapMp4(directUrl, FASEL_BASE + "/");
                sendSource(proxied, "FaselHD · تحميل مباشر", directUrl, proxied);
              }
            } catch { /* silent */ }
          } else {
            // Series: find episode N in div.epAll
            const epRe = /<div[^>]+class="[^"]*epAll[^"]*"[\s\S]*?(<a[^>]+href="([^"]+)"[^>]*>\s*(?:حلقة\s*)?(\d+)\s*<\/a>)/g;
            while ((m = epRe.exec(pageHtml))) {
              const num = parseInt(m[3]) || 0;
              if (num !== epNum) continue;
              let epHtml = "";
              try { epHtml = await cfOrOrkestGet(m[2]); } catch { break; }
              if (isCfBlocked(epHtml)) break;
              const dlM2 = epHtml.match(/class="downloadLinks"[\s\S]*?<a\s+href="([^"]+)"/);
              if (dlM2) {
                try {
                  const dlHtml = await cfOrOrkestPost(dlM2[1]);
                  const directM = dlHtml.match(/class="dl-link[^"]*"[^>]*href="([^"]+)"/);
                  if (directM?.length) {
                    const directUrl = directM[1];
                    if (directUrl.includes(".mp4")) {
                      const proxied = wrapMp4(directUrl, FASEL_BASE + "/");
                      sendSource(proxied, `FaselHD · حلقة ${epNum}`, directUrl, proxied);
                    }
                  }
                } catch { /* silent */ }
              }
              const ifrM = epHtml.match(/iframe[^>]+name="player_iframe"[^>]+src="([^"]+)"/);
              if (ifrM) await sendExtracted(ifrM[1], `FaselHD · ح${epNum}`);
              break;
            }
          }
        } catch { /* silent */ }
      }),

      // ── EgyDead (tv9.egydead.live) — DISABLED ────────────────────────────────────
      // Servers محملة عبر JS AJAX فقط — لا روابط ثابتة في HTML
      // CF يحجب Replit+cfProxy كلياً → الكود يستخدم orkestDirectGet
      // الكود كاملاً محفوظ في egydead-scraper.md و git history
      Promise.resolve(),

      // ── Aether / Nebula (nebula.aether.cx) — TMDB-native، CDN مفتوح ────────
      // nebula.aether.cx/movie/{id} → {stream_url:"..."} مباشرة بدون proxy
      scrapeAnimCached("aether", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "Aether: جاري الاستخراج…" });
          const NEBULA_BASE = "https://nebula.aether.cx";
          const url = type === "movie"
            ? `${NEBULA_BASE}/movie/${tmdbId}?ser=tik`
            : `${NEBULA_BASE}/tv/${tmdbId}/${season}/${epNum}?ser=tik`;
          const r = await fetch(url, {
            headers: { Origin: "https://aether.cx", Referer: "https://aether.cx/" },
            signal: AbortSignal.timeout(10_000),
          });
          if (!r.ok) return;
          const data = await r.json() as { stream_url?: string; stream?: string };
          const stream = data?.stream_url || data?.stream;
          if (!stream) return;
          // unwrap مغلّف /m3u8-proxy?url= إذا كان الـ CDN مغلّف
          let rawStream = stream;
          if (stream.includes("/m3u8-proxy?url=")) {
            try {
              const pu = new URL(stream);
              rawStream = pu.searchParams.get("url") || stream;
            } catch { /* keep as-is */ }
          }
          const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawStream)}&ref=${encodeURIComponent("https://aether.cx/")}`;
          const probeOk = await probeHlsProxy(proxied);
          if (!probeOk) return;
          sendSource(proxied, "Aether · Nebula · HLS", proxied, proxied);
        } catch { /* silent */ }
      }),

      // ── StreamGuide (streamguide.cfd) — TMDB-native، 23 خادم HLS ────────────
      // URL format: /{ServerName}/movie/{id}?verify=false → providers[].sources[].url
      // Confirmed working: Crius, Theia return HLS at /x/... CDN
      scrapeAnimCached("streamguide", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "StreamGuide: جاري الاستخراج…" });
          const SG_BASE = "https://streamguide.cfd";
          const SG_HDRS = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124.0.0.0 Safari/537.36",
            "Accept": "application/json",
            "Origin": SG_BASE,
            "Referer": SG_BASE + "/",
          };
          const HONEYPOT = new Set(["nomorflix.icu", "www.nomorflix.icu"]);
          const SG_SERVERS = ["Crius", "Theia", "Apollo", "Zeus", "Hades"];

          type SgSource = { url: string; type?: string; quality?: string; language?: string };
          type SgResp = { providers?: Array<{ sources?: SgSource[] }> };

          const buildUrl = (srv: string) => type === "movie"
            ? `${SG_BASE}/${srv}/movie/${tmdbId}?verify=false`
            : `${SG_BASE}/${srv}/tv/${tmdbId}/${season}/${epNum}?verify=false`;

          // Try servers in parallel, take first valid result
          const results = await Promise.allSettled(
            SG_SERVERS.map(srv =>
              fetch(buildUrl(srv), { headers: SG_HDRS, signal: AbortSignal.timeout(12_000) })
                .then(r => r.ok ? r.json() as Promise<SgResp> : Promise.reject(new Error(`HTTP ${r.status}`)))
            )
          );

          const allSources: SgSource[] = [];
          for (const res of results) {
            if (res.status !== "fulfilled") continue;
            const data = res.value as SgResp;
            const srcs = (data?.providers || [])
              .flatMap(p => p.sources || [])
              .filter((s: SgSource) => {
                if (!s?.url) return false;
                try { return !HONEYPOT.has(new URL(s.url).hostname); } catch { return false; }
              })
              .filter((s: SgSource) =>
                s.type === "hls" || s.url.includes(".m3u8") || s.url.includes("/x/"),
              );
            allSources.push(...srcs);
            if (allSources.length >= 3) break;
          }

          let sent = 0;
          for (const src of allSources.slice(0, 5)) {
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent(SG_BASE + "/")}`;
            const probeOk = await probeHlsProxy(proxied);
            if (!probeOk) continue;
            const qual = src.quality || "HLS";
            sendSource(proxied, `StreamGuide · ${qual}`, proxied, proxied);
            if (++sent >= 2) break;
          }
        } catch { /* silent */ }
      }),

      // ── Hexa (hexa.su / flixer.su) — TMDB-native HLS متعدد السيرفرات ──────────
      // CDN: nxt.cfw69.workers.dev — CORS * — يعمل من Replit مباشرة
      // cooldown: enc-dec.app/api/enc-hexa يعيد 500 مع "Next retry: N minutes"
      //           → نتجنب الـ hammering بحفظ _hexaFailUntil
      scrapeAnimCached("hexa", async () => {
        if (!tmdbId) return;
        if (Date.now() < _hexaFailUntil) return; // cooldown active — enc-dec.app مشغول
        try {
          send("status", { msg: "Hexa: جاري الاستخراج…" });
          const HEXA_UA  = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36";
          const HEXA_REF = "https://hexa.su/";
          // Generate random 32-byte hex key (included in decrypt request)
          const hexaKey  = randomBytes(32).toString("hex");
          const hexaHdrs: Record<string, string> = {
            "User-Agent"          : HEXA_UA,
            "Referer"             : HEXA_REF,
            "Accept"              : "text/plain",
            "X-Fingerprint-Lite"  : "e9136c41504646444",
            "X-Api-Key"           : hexaKey,
          };

          // Step 1: Get challenge token from enc-dec.app
          const encR = await fetch("https://enc-dec.app/api/enc-hexa", {
            headers: hexaHdrs,
            signal : AbortSignal.timeout(8_000),
          });
          // Parse body even on HTTP error (contains retry hint)
          const encData = await encR.json().catch(() => ({})) as {
            status?: number; result?: { token?: string }; hint?: string;
          };
          if (!encR.ok || encData.status !== 200 || !encData.result?.token) {
            // Apply cooldown: parse "Next retry: N minutes" hint
            const hint = encData.hint || "";
            const retryMin = parseInt(hint.match(/(\d+)\s*min/i)?.[1] || "20");
            _hexaFailUntil = Date.now() + retryMin * 60_000;
            return;
          }
          hexaHdrs["X-Cap-Token"] = encData.result.token;

          // Step 2: Fetch encrypted stream data from Hexa TMDB API
          const hexaUrl = type === "movie"
            ? `https://theemoviedb.hexa.su/api/tmdb/movie/${tmdbId}/images`
            : `https://theemoviedb.hexa.su/api/tmdb/tv/${tmdbId}/season/${season}/episode/${epNum}/images`;
          const dataR = await fetch(hexaUrl, {
            headers: hexaHdrs,
            signal : AbortSignal.timeout(12_000),
          });
          if (!dataR.ok) return;
          const encrypted = await dataR.text();
          if (!encrypted || encrypted.length < 20) return;

          // Step 3: Decrypt via enc-dec.app (requires key in body)
          const decR = await fetch("https://enc-dec.app/api/dec-hexa", {
            method : "POST",
            headers: { "Content-Type": "application/json" },
            body   : JSON.stringify({ text: encrypted, key: hexaKey }),
            signal : AbortSignal.timeout(10_000),
          });
          if (!decR.ok) return;
          const decData = await decR.json() as { status?: number; result?: { sources?: Array<{ server: string; url: string }> } };
          if (decData.status !== 200 || !decData.result?.sources?.length) return;

          // Step 4: Send each server's HLS stream through hls-proxy (handles relative segments)
          for (const src of decData.result.sources) {
            if (!src?.url || !src.url.includes(".m3u8")) continue;
            // CDN pjd.cfw69.workers.dev: CORS * + accessible from Replit
            // hls-proxy needed to resolve relative segment paths correctly
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent(HEXA_REF)}`;
            const probeOk = await probeHlsProxy(proxied);
            if (!probeOk) continue;
            sendSource(proxied, `Hexa · ${src.server}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

    ]);

    clearTimeout(forceClose);
    if (!streamDone && !res.writableEnded) {
      streamDone = true;
      send("done", {}); clearInterval(keepAlive); res.end();
    }
  } catch (e) {
    clearTimeout(forceClose);
    if (!res.writableEnded) {
      send("error", { msg: String(e) });
      send("done",  {}); clearInterval(keepAlive); res.end();
    }
  }
});

export default router;

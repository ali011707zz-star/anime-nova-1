#!/usr/bin/env node
/**
 * Safe, 6-Layer Protected Film Vault Archiver for Nova Film
 * - Single PostgreSQL connection (max: 1) with 6s statement timeout
 * - Sequential fetching (concurrency = 1) with gentle pacing (400ms + 3s page breather)
 * - Live Health Circuit-Breaker (CPU loadavg < 1.2, pg_conns < 18, /api/ota/status < 350ms)
 * - Automatic Checkpoint / Resume in /opt/anime-nova/.vault-checkpoints/
 * - Single-server discipline: ONE verified server per movie/episode (moviebox:// or ex.divhard.com)
 */
import fs from "node:fs";
import os from "node:os";
import path from "node:path";
import crypto from "node:crypto";
import { createRequire } from "node:module";

const require = createRequire("/opt/anime-nova/artifacts/api-server/package.json");
const { Pool } = require("pg");

const UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36";
const CHECKPOINT_DIR = "/opt/anime-nova/.vault-checkpoints";
const TMDB_BASE = "https://api.themoviedb.org/3";
const TMDB_IMG_POSTER = "https://image.tmdb.org/t/p/w780";
const TMDB_IMG_BACKDROP = "https://image.tmdb.org/t/p/w1280";

const envMap = {};
try {
  for (const line of fs.readFileSync("/opt/anime-nova/.env", "utf8").split(/\r?\n/)) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;
    const eq = trimmed.indexOf("=");
    if (eq === -1) continue;
    const k = trimmed.slice(0, eq).trim();
    const v = trimmed.slice(eq + 1).trim().replace(/^["']|["']$/g, "");
    envMap[k] = v;
  }
} catch {}

const DATABASE_URL = process.env.DATABASE_URL || envMap.DATABASE_URL || "";
const TMDB_KEY = process.env.TMDB_API_KEY || envMap.TMDB_API_KEY || "4ef0d7355d9ffb5151e987764708ce96";
const MOVIEBOX_HOST = (process.env.MOVIEBOX_DOMAIN || envMap.MOVIEBOX_DOMAIN || "https://fmoviesunblocked.net").replace(/\/+$/, "");
const HITV_HOST = (process.env.HITV_DOMAIN || envMap.HITV_DOMAIN || "https://aflam-hitv.cam").replace(/\/+$/, "");

if (!DATABASE_URL) {
  console.error("[archiver] DATABASE_URL missing");
  process.exit(1);
}

const args = Object.fromEntries(
  process.argv.slice(2).map((a) => {
    const clean = a.replace(/^--/, "");
    const eq = clean.indexOf("=");
    return eq === -1 ? [clean, "true"] : [clean.slice(0, eq), clean.slice(eq + 1)];
  }),
);

const SOURCE = String(args.source || "all");
const MB_MOVIES = Math.max(0, Number.parseInt(String(args["mb-movies"] || args.movies || "200"), 10) || 0);
const MB_SERIES = Math.max(0, Number.parseInt(String(args["mb-series"] || args.series || "100"), 10) || 0);
const HITV_MOVIES = Math.max(0, Number.parseInt(String(args["hitv-movies"] || "400"), 10) || 0);
const HITV_EPISODES = Math.max(0, Number.parseInt(String(args["hitv-episodes"] || "500"), 10) || 0);
const REQUIRE_ARABIC = String(args["arabic-only"] || "true") !== "false";
const PACE_MS = Math.max(250, Number.parseInt(String(args.pace || "400"), 10) || 400);

const pool = new Pool({
  connectionString: DATABASE_URL,
  max: 1,
  idleTimeoutMillis: 10_000,
  connectionTimeoutMillis: 10_000,
  statement_timeout: 6_000,
});

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));
const tmdbCache = new Map();

function stripArabicDiacritics(s) {
  return String(s || "").replace(/[\u064B-\u065F\u0670\u06D6-\u06ED]/g, "");
}

function hasArabicText(s) {
  const clean = stripArabicDiacritics(String(s || "")).toLowerCase();
  return clean.includes("arab") || clean.includes("عرب");
}

function hashToPositiveInt32(str) {
  const hex = crypto.createHash("sha1").update(String(str)).digest("hex").slice(0, 8);
  return (Number.parseInt(hex, 16) & 0x7fffffff) || 1;
}

function slugKey(str) {
  return String(str || "")
    .toLowerCase()
    .replace(/[^a-z0-9\u0600-\u06ff]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .slice(0, 80);
}

function loadCheckpoint(name, defaults) {
  fs.mkdirSync(CHECKPOINT_DIR, { recursive: true });
  const fp = path.join(CHECKPOINT_DIR, `${name}.json`);
  try {
    if (fs.existsSync(fp)) return { ...defaults, ...JSON.parse(fs.readFileSync(fp, "utf8")) };
  } catch {}
  return { ...defaults };
}

function saveCheckpoint(name, data) {
  fs.mkdirSync(CHECKPOINT_DIR, { recursive: true });
  const fp = path.join(CHECKPOINT_DIR, `${name}.json`);
  fs.writeFileSync(fp, JSON.stringify({ ...data, updatedAt: new Date().toISOString() }, null, 2));
}

async function waitUntilServerHealthy(label = "") {
  let waits = 0;
  while (true) {
    const load1 = os.loadavg()[0];
    let pgConns = 0;
    try {
      const r = await pool.query("SELECT count(*)::int AS c FROM pg_stat_activity");
      pgConns = Number(r.rows[0]?.c || 0);
    } catch {
      pgConns = 99;
    }

    let apiMs = 9999;
    let apiOk = false;
    try {
      const t0 = Date.now();
      const resp = await fetch("http://127.0.0.1:5000/api/ota/status", { signal: AbortSignal.timeout(2500) });
      apiMs = Date.now() - t0;
      apiOk = resp.ok;
    } catch {
      apiOk = false;
    }

    if (load1 < 1.2 && pgConns < 18 && apiOk && apiMs < 350) {
      if (label) {
        console.log(`[${new Date().toISOString()}] [health ${label}] OK load=${load1.toFixed(2)} pg=${pgConns}/30 api=${apiMs}ms`);
      }
      return;
    }
    waits++;
    console.warn(`[${new Date().toISOString()}] [circuit-breaker] Pause 25s (#${waits}): load=${load1.toFixed(2)} pg=${pgConns}/30 apiOk=${apiOk} api=${apiMs}ms`);
    await sleep(25_000);
  }
}

async function tmdbEnrich(titleEn, year, tmdbType) {
  if (!TMDB_KEY || !titleEn) return null;
  const cleanTitle = titleEn.replace(/\s*\[[^\]]+\]\s*/g, "").replace(/\(\d{4}\)/g, "").trim();
  const ck = `${tmdbType}:${cleanTitle.toLowerCase()}:${year || ""}`;
  if (tmdbCache.has(ck)) return tmdbCache.get(ck);
  try {
    const qs = new URLSearchParams({
      api_key: TMDB_KEY,
      language: "ar",
      query: cleanTitle,
      include_adult: "false",
    });
    if (year && year >= 1950 && year <= 2030) {
      qs.set(tmdbType === "tv" ? "first_air_date_year" : "year", String(year));
    }
    const endpoint = tmdbType === "tv" ? "/search/tv" : "/search/movie";
    const r = await fetch(`${TMDB_BASE}${endpoint}?${qs.toString()}`, { signal: AbortSignal.timeout(5000) });
    if (!r.ok) return null;
    const j = await r.json();
    const first = j?.results?.[0];
    if (!first) {
      tmdbCache.set(ck, null);
      return null;
    }
    const out = {
      tmdbId: Number(first.id) || null,
      titleAr: String(first.title || first.name || "").trim() || null,
      synopsis: String(first.overview || "").trim() || null,
      posterUrl: first.poster_path ? `${TMDB_IMG_POSTER}${first.poster_path}` : null,
      backdropUrl: first.backdrop_path ? `${TMDB_IMG_BACKDROP}${first.backdrop_path}` : null,
      voteAverage: typeof first.vote_average === "number" && first.vote_average > 0 ? Number(first.vote_average.toFixed(1)) : null,
    };
    if (tmdbCache.size > 500) tmdbCache.clear();
    tmdbCache.set(ck, out);
    return out;
  } catch {
    return null;
  }
}

async function upsertVaultTitleAndEpisodes({
  cleanSeriesKey,
  titleAr,
  titleEn,
  mediaType,
  tmdbType,
  year,
  posterUrl,
  backdropUrl,
  synopsis,
  tmdbId,
  imdbRating,
  qualityBadge,
  audioLabel,
  categoryLabel,
  genres,
  categories,
  episodes,
}) {
  const seasonsSet = new Set(episodes.map((e) => e.season));
  const seasonCount = Math.max(1, seasonsSet.size);
  const epCount = episodes.length;

  let existingId = null;
  let wasDead = false;
  const byKey = await pool.query(
    "SELECT id, has_live_server FROM film_vault_titles WHERE clean_series_key = $1 LIMIT 1",
    [cleanSeriesKey],
  );
  if (byKey.rows[0]) {
    existingId = Number(byKey.rows[0].id);
    wasDead = !byKey.rows[0].has_live_server;
  } else if (tmdbId) {
    const byTmdb = await pool.query(
      "SELECT id, has_live_server FROM film_vault_titles WHERE tmdb_id = $1 AND tmdb_type = $2 AND is_archived = FALSE LIMIT 1",
      [tmdbId, tmdbType],
    );
    if (byTmdb.rows[0]) {
      existingId = Number(byTmdb.rows[0].id);
      wasDead = !byTmdb.rows[0].has_live_server;
    }
  } else if (titleEn && titleEn.length >= 3) {
    const byTitle = await pool.query(
      "SELECT id, has_live_server FROM film_vault_titles WHERE LOWER(title_en) = LOWER($1) AND tmdb_type = $2 AND is_archived = FALSE LIMIT 1",
      [titleEn, tmdbType],
    );
    if (byTitle.rows[0]) {
      existingId = Number(byTitle.rows[0].id);
      wasDead = !byTitle.rows[0].has_live_server;
    }
  }

  let titleId = existingId;
  if (!titleId) {
    const ins = await pool.query(
      `INSERT INTO film_vault_titles (
        clean_series_key, title_ar, title_en, media_type, tmdb_type, year,
        poster_url, backdrop_url, synopsis, tmdb_id, imdb_rating,
        quality_badge, audio_label, category_label, genres_json, categories_json,
        season_count, episode_count, playable_episode_count, has_live_server, is_archived
      ) VALUES (
        $1,$2,$3,$4,$5,$6,
        $7,$8,$9,$10,$11,
        $12,$13,$14,$15,$16,
        $17,$18,$19,TRUE,FALSE
      )
      ON CONFLICT (clean_series_key) DO UPDATE SET
        has_live_server = TRUE,
        updated_at = NOW()
      RETURNING id`,
      [
        cleanSeriesKey,
        titleAr || titleEn,
        titleEn || titleAr,
        mediaType,
        tmdbType,
        year || null,
        posterUrl || "",
        backdropUrl || posterUrl || "",
        synopsis || "",
        tmdbId || null,
        imdbRating || null,
        qualityBadge || "1080p FHD",
        audioLabel || "مترجم",
        categoryLabel || "أفلام أجنبية",
        JSON.stringify(genres || []),
        JSON.stringify(categories || []),
        seasonCount,
        epCount,
        epCount,
      ],
    );
    titleId = Number(ins.rows[0].id);
  } else {
    await pool.query(
      `UPDATE film_vault_titles SET
        has_live_server = TRUE,
        media_type = CASE WHEN $2 = 'animation' THEN 'animation' ELSE media_type END,
        poster_url = CASE WHEN poster_url = '' OR poster_url IS NULL THEN $3 ELSE poster_url END,
        backdrop_url = CASE WHEN backdrop_url = '' OR backdrop_url IS NULL THEN $4 ELSE backdrop_url END,
        synopsis = CASE WHEN synopsis = '' OR synopsis IS NULL THEN $5 ELSE synopsis END,
        tmdb_id = COALESCE(tmdb_id, $6),
        updated_at = NOW()
      WHERE id = $1`,
      [titleId, mediaType, posterUrl || "", backdropUrl || posterUrl || "", synopsis || "", tmdbId || null],
    );
  }

  for (const ep of episodes) {
    const existingEp = await pool.query(
      "SELECT id, servers_json, has_live_server FROM film_vault_episodes WHERE title_id = $1 AND season_number = $2 AND episode_number = $3 LIMIT 1",
      [titleId, ep.season, ep.episode],
    );
    if (existingEp.rows[0]) {
      let curServers = [];
      try { curServers = JSON.parse(existingEp.rows[0].servers_json || "[]"); } catch {}
      const newUrl = ep.servers[0]?.url;
      if (newUrl && !curServers.some((s) => s.url === newUrl)) {
        const merged = existingEp.rows[0].has_live_server
          ? [...curServers.slice(0, 1), ep.servers[0]]
          : [ep.servers[0], ...curServers.slice(0, 1)];
        await pool.query(
          "UPDATE film_vault_episodes SET servers_json = $1, has_live_server = TRUE, updated_at = NOW() WHERE id = $2",
          [JSON.stringify(merged), existingEp.rows[0].id],
        );
      }
    } else {
      await pool.query(
        `INSERT INTO film_vault_episodes (
          wp_post_id, title_id, slug, raw_title, season_number, episode_number,
          servers_json, has_live_server, download_url, source_url, is_archived
        ) VALUES ($1,$2,$3,$4,$5,$6,$7,TRUE,'',$8,FALSE)
        ON CONFLICT (title_id, season_number, episode_number) DO UPDATE SET
          servers_json = EXCLUDED.servers_json,
          has_live_server = TRUE,
          updated_at = NOW()`,
        [
          ep.wpPostId || hashToPositiveInt32(`${cleanSeriesKey}:s${ep.season}:e${ep.episode}`),
          titleId,
          cleanSeriesKey,
          ep.rawTitle || titleEn,
          ep.season,
          ep.episode,
          JSON.stringify(ep.servers),
          ep.sourceUrl || "",
        ],
      );
    }
  }

  // Refresh accurate season/episode counts for this title
  await pool.query(
    `UPDATE film_vault_titles SET
      season_count = GREATEST(1, (SELECT COUNT(DISTINCT season_number) FROM film_vault_episodes WHERE title_id = $1 AND is_archived = FALSE)),
      episode_count = (SELECT COUNT(*) FROM film_vault_episodes WHERE title_id = $1 AND is_archived = FALSE),
      playable_episode_count = (SELECT COUNT(*) FROM film_vault_episodes WHERE title_id = $1 AND is_archived = FALSE AND has_live_server = TRUE)
    WHERE id = $1`,
    [titleId],
  );

  return { titleId, revived: wasDead, existed: Boolean(existingId) };
}

// ══════════════════════════════════════════════════════════════════════════════
// PHASE 1: HiTv Quick Movies + Full Movies (ONE verified ex.divhard.com server)
// ══════════════════════════════════════════════════════════════════════════════
const AR_ORDINAL_SEASONS = [
  [/الاول|الأول/i, 1], [/الثاني/i, 2], [/الثالث/i, 3], [/الرابع/i, 4], [/الخامس/i, 5],
  [/السادس/i, 6], [/السابع/i, 7], [/الثامن/i, 8], [/التاسع/i, 9], [/العاشر/i, 10],
  [/الحادي\s*عشر/i, 11], [/الثاني\s*عشر/i, 12],
];

function parseHiTvMovieTitle(raw) {
  const clean = String(raw || "")
    .replace(/<[^>]+>/g, "")
    .replace(/&#8211;|&#8212;|&amp;/g, " ")
    .replace(/مشاهدة|مترجم|مترجمة|اون لاين|أون لاين|كامل|HD|WEB-DL/gi, "")
    .replace(/\s+/g, " ")
    .trim();
  const yearMatch = clean.match(/\b(19\d{2}|20\d{2})\b/);
  const year = yearMatch ? Number(yearMatch[1]) : null;
  const enMatch = clean.match(/[A-Za-z][A-Za-z0-9:'.,!&\-\s]{2,}/);
  const titleEn = enMatch ? enMatch[0].replace(/\b(19\d{2}|20\d{2})\b/, "").trim() : clean.replace(/^فيلم\s+/, "").trim();
  const titleAr = clean.replace(/^فيلم\s+/, "").trim();
  return { titleAr, titleEn: titleEn || titleAr, year };
}

function parseHiTvEpisodeTitle(raw) {
  const clean = String(raw || "")
    .replace(/<[^>]+>/g, "")
    .replace(/&#8211;|&#8212;|&amp;/g, " ")
    .replace(/مشاهدة|مترجم|مترجمة|اون لاين|أون لاين|والاخيرة|والأخيرة|كاملة/gi, "")
    .replace(/\s+/g, " ")
    .trim();

  let season = 1;
  const seNumMatch = clean.match(/الموسم\s+(\d+)/i) || clean.match(/S(\d{1,2})/i);
  if (seNumMatch) {
    season = Math.max(1, Number(seNumMatch[1]));
  } else {
    for (const [rx, num] of AR_ORDINAL_SEASONS) {
      if (new RegExp("الموسم\\s+" + rx.source, "i").test(clean)) { season = num; break; }
    }
  }

  const epMatch = clean.match(/الحلقة\s+(\d+)/i) || clean.match(/E(\d{1,3})/i);
  const episode = epMatch ? Math.max(1, Number(epMatch[1])) : null;
  if (!episode) return null;

  const seriesPart = clean
    .replace(/^مسلسل\s+/i, "")
    .replace(/الموسم\s+(?:\d+|\S+(?:\s+عشر)?)[\s\S]*$/i, "")
    .replace(/الحلقة\s+\d+[\s\S]*$/i, "")
    .trim();

  const enMatch = seriesPart.match(/[A-Za-z][A-Za-z0-9:'.,!&\-\s]{2,}/);
  const titleEn = enMatch ? enMatch[0].trim() : seriesPart;
  const titleAr = seriesPart || titleEn;
  if (!titleEn || titleEn.length < 2) return null;
  return { titleAr, titleEn, season, episode };
}

async function pickOneVerifiedDivHardServer(watchUrl) {
  const r = await fetch(watchUrl, { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(12_000) }).catch(() => null);
  if (!r || !r.ok) return null;
  const html = await r.text();
  const tokens = [...new Set([...html.matchAll(/ex\.divhard\.com\/play\/([a-f0-9]+)/gi)].map((m) => m[1]))];
  for (const tok of tokens.slice(0, 2)) {
    const playUrl = `https://ex.divhard.com/play/${tok}`;
    const apiResp = await fetch(`https://ex.divhard.com/api/source.php?t=${tok}`, {
      headers: { "User-Agent": UA, Referer: playUrl, Accept: "application/json" },
      signal: AbortSignal.timeout(8_000),
    }).catch(() => null);
    if (!apiResp || !apiResp.ok) continue;
    const data = await apiResp.json().catch(() => null);
    if (data?.ok && Array.isArray(data.sources) && data.sources[0]?.url) {
      return {
        name: `سيرفر 1 (${data.title || "HiTv HLS"})`,
        url: playUrl,
        host: "ex.divhard.com",
        live: true,
      };
    }
  }
  return null;
}

async function runHiTvMovies(limit) {
  if (limit <= 0) return;
  const cp = loadCheckpoint("hitv-movies", { page: 1, totalProcessed: 0, totalRevived: 0 });
  console.log(`[hitv-movies] Starting gentle batch: limit=${limit}, startPage=${cp.page}`);
  await waitUntilServerHealthy("hitv-movies-start");

  let done = 0;
  let revived = 0;
  let page = cp.page || 1;
  let scannedPages = 0;

  while (done < limit && scannedPages < 40) {
    scannedPages++;
    const r = await fetch(`${HITV_HOST}/wp-json/wp/v2/posts?categories=22,793,530&per_page=20&page=${page}`, {
      headers: { "User-Agent": UA },
      signal: AbortSignal.timeout(12_000),
    }).catch(() => null);
    if (!r || !r.ok) break;
    const posts = await r.json().catch(() => []);
    if (!Array.isArray(posts) || posts.length === 0) break;

    for (const post of posts) {
      if (done >= limit) break;
      const link = String(post?.link || "").trim();
      if (!link) continue;
      const watchUrl = link.replace(/\/?$/, "/watch/");
      const srv = await pickOneVerifiedDivHardServer(watchUrl);
      if (!srv) { await sleep(PACE_MS); continue; }

      const cats = Array.isArray(post.categories) ? post.categories : [];
      const isAnim = cats.includes(530);
      const isAsian = cats.includes(793);
      const { titleAr, titleEn, year } = parseHiTvMovieTitle(post.title?.rendered || "");
      const tmdb = await tmdbEnrich(titleEn, year, "movie");

      const res = await upsertVaultTitleAndEpisodes({
        cleanSeriesKey: `hitv-mv-${post.id}`,
        titleAr: tmdb?.titleAr || titleAr,
        titleEn,
        mediaType: isAnim ? "animation" : "movie",
        tmdbType: "movie",
        year,
        posterUrl: tmdb?.posterUrl || "",
        backdropUrl: tmdb?.backdropUrl || tmdb?.posterUrl || "",
        synopsis: tmdb?.synopsis || "",
        tmdbId: tmdb?.tmdbId || null,
        imdbRating: tmdb?.voteAverage || null,
        qualityBadge: "1080p FHD",
        audioLabel: "مترجم",
        categoryLabel: isAnim ? "أفلام أنميشن" : isAsian ? "أفلام آسيوية" : "أفلام أجنبية",
        genres: isAnim ? ["أنميشن"] : isAsian ? ["آسيوي"] : ["أفلام أجنبية"],
        categories: [isAnim ? "أفلام أنميشن" : isAsian ? "أفلام آسيوية" : "أفلام أجنبية"],
        episodes: [{
          wpPostId: Number(post.id) || 0,
          season: 1,
          episode: 1,
          rawTitle: titleAr,
          servers: [srv],
          sourceUrl: link,
        }],
      });

      done++;
      if (res.revived) revived++;
      if (done % 10 === 0) {
        console.log(`[hitv-movies] ${done}/${limit} (revived=${revived}, latest=${tmdb?.titleAr || titleEn})`);
        await waitUntilServerHealthy(`hitv-mv-${done}`);
      }
      await sleep(PACE_MS);
    }

    page++;
    cp.page = page;
    cp.totalProcessed = (cp.totalProcessed || 0) + done;
    cp.totalRevived = (cp.totalRevived || 0) + revived;
    saveCheckpoint("hitv-movies", cp);
    await sleep(2500);
  }
  console.log(`[hitv-movies] Batch finished: done=${done}, revived=${revived}`);
}

async function runHiTvSeries(limitEps) {
  if (limitEps <= 0) return;
  const cp = loadCheckpoint("hitv-series", { page: 1, totalEpisodes: 0, totalRevived: 0 });
  console.log(`[hitv-series] Starting gentle batch: limitEps=${limitEps}, startPage=${cp.page}`);
  await waitUntilServerHealthy("hitv-series-start");

  let done = 0;
  let revived = 0;
  let page = cp.page || 1;
  let scannedPages = 0;

  while (done < limitEps && scannedPages < 45) {
    scannedPages++;
    // Categories 2 (مسلسلات اجنبي) + 89 (مسلسلات اسيوية)
    const r = await fetch(`${HITV_HOST}/wp-json/wp/v2/posts?categories=2,89&per_page=20&page=${page}`, {
      headers: { "User-Agent": UA },
      signal: AbortSignal.timeout(12_000),
    }).catch(() => null);
    if (!r || !r.ok) break;
    const posts = await r.json().catch(() => []);
    if (!Array.isArray(posts) || posts.length === 0) break;

    for (const post of posts) {
      if (done >= limitEps) break;
      const parsed = parseHiTvEpisodeTitle(post.title?.rendered || "");
      if (!parsed) continue;
      const link = String(post?.link || "").trim();
      if (!link) continue;
      const watchUrl = link.replace(/\/?$/, "/watch/");
      const srv = await pickOneVerifiedDivHardServer(watchUrl);
      if (!srv) { await sleep(PACE_MS); continue; }

      const cats = Array.isArray(post.categories) ? post.categories : [];
      const isAsian = cats.includes(89);
      const tmdb = await tmdbEnrich(parsed.titleEn, null, "tv");
      const seriesKey = `hitv-tv-${slugKey(parsed.titleEn)}`;

      const res = await upsertVaultTitleAndEpisodes({
        cleanSeriesKey: seriesKey,
        titleAr: tmdb?.titleAr || parsed.titleAr,
        titleEn: parsed.titleEn,
        mediaType: "series",
        tmdbType: "tv",
        year: null,
        posterUrl: tmdb?.posterUrl || "",
        backdropUrl: tmdb?.backdropUrl || tmdb?.posterUrl || "",
        synopsis: tmdb?.synopsis || "",
        tmdbId: tmdb?.tmdbId || null,
        imdbRating: tmdb?.voteAverage || null,
        qualityBadge: "1080p FHD",
        audioLabel: "مترجم",
        categoryLabel: isAsian ? "مسلسلات آسيوية" : "مسلسلات أجنبية",
        genres: isAsian ? ["دراما آسيوية"] : ["مسلسلات أجنبية"],
        categories: [isAsian ? "مسلسلات آسيوية" : "مسلسلات أجنبية"],
        episodes: [{
          wpPostId: Number(post.id) || 0,
          season: parsed.season,
          episode: parsed.episode,
          rawTitle: `${parsed.titleEn} S${parsed.season}E${parsed.episode}`,
          servers: [srv],
          sourceUrl: link,
        }],
      });

      done++;
      if (res.revived) revived++;
      if (done % 10 === 0) {
        console.log(`[hitv-series] ${done}/${limitEps} eps (revived=${revived}, latest=${tmdb?.titleAr || parsed.titleEn} S${parsed.season}E${parsed.episode})`);
        await waitUntilServerHealthy(`hitv-tv-${done}`);
      }
      await sleep(PACE_MS);
    }

    page++;
    cp.page = page;
    cp.totalEpisodes = (cp.totalEpisodes || 0) + done;
    cp.totalRevived = (cp.totalRevived || 0) + revived;
    saveCheckpoint("hitv-series", cp);
    await sleep(2500);
  }
  console.log(`[hitv-series] Batch finished: eps=${done}, revived=${revived}`);
}

// ══════════════════════════════════════════════════════════════════════════════
// PHASE 2: MovieBox Animation Movies & Series ONLY
// ══════════════════════════════════════════════════════════════════════════════
async function runMovieBoxAnimation(limitMovies, limitSeries) {
  const cp = loadCheckpoint("moviebox-animation", { moviePage: 1, seriesPage: 1, totalMovies: 0, totalSeries: 0 });
  const hdrs = {
    "User-Agent": UA,
    Accept: "application/json",
    "Content-Type": "application/json",
    Referer: MOVIEBOX_HOST + "/",
    Origin: MOVIEBOX_HOST,
  };

  console.log(`[moviebox-animation] Starting gentle batch: movies=${limitMovies}, series=${limitSeries}, startPages=(m:${cp.moviePage}, s:${cp.seriesPage})`);
  await waitUntilServerHealthy("mb-start");

  let addedMovies = 0;
  let page = cp.moviePage || 1;
  let scannedPages = 0;
  while (addedMovies < limitMovies && scannedPages < 40) {
    scannedPages++;
    const r = await fetch(`${MOVIEBOX_HOST}/wefeed-h5-bff/web/filter`, {
      method: "POST",
      headers: hdrs,
      body: JSON.stringify({ page, perPage: 20, channelId: 1, genre: "Animation", sort: "ForYou" }),
      signal: AbortSignal.timeout(12_000),
    }).catch(() => null);
    if (!r || !r.ok) break;
    const j = await r.json().catch(() => null);
    const items = j?.data?.items || [];
    if (items.length === 0) break;

    for (const item of items) {
      if (addedMovies >= limitMovies) break;
      if (!item?.hasResource || !item?.subjectId) continue;
      if (REQUIRE_ARABIC && !hasArabicText(item.subtitles || "")) continue;

      const year = Number.parseInt(String(item.releaseDate || "").slice(0, 4), 10) || null;
      const titleEn = String(item.title || "").replace(/\s*\[(?:Arabic|English|Hindi|Indonesian|Russian)[^\]]*\]\s*/gi, "").trim();
      const detailPath = String(item.detailPath || item.subjectId);

      const dlResp = await fetch(
        `${MOVIEBOX_HOST}/wefeed-h5-bff/web/subject/download?subjectId=${item.subjectId}&se=0&ep=0&detail_path=${encodeURIComponent(detailPath)}`,
        {
          headers: { ...hdrs, Referer: `${MOVIEBOX_HOST}/spa/videoPlayPage/movies/${encodeURIComponent(detailPath)}?id=${item.subjectId}&type=/movie/detail` },
          signal: AbortSignal.timeout(10_000),
        },
      ).catch(() => null);
      const dlJson = dlResp && dlResp.ok ? await dlResp.json().catch(() => null) : null;
      const downloads = dlJson?.data?.downloads || [];
      if (downloads.length === 0) { await sleep(PACE_MS); continue; }

      const maxRes = Math.max(...downloads.map((d) => Number(d.resolution || 0)), 720);
      const tmdb = await tmdbEnrich(titleEn, year, "movie");
      const mbCover = item.cover?.url || "";
      const imdbVal = Number.parseFloat(String(item.imdbRatingValue || "0")) || tmdb?.voteAverage || null;

      await upsertVaultTitleAndEpisodes({
        cleanSeriesKey: `mb-anim-${item.subjectId}`,
        titleAr: tmdb?.titleAr || titleEn,
        titleEn,
        mediaType: "animation",
        tmdbType: "movie",
        year,
        posterUrl: tmdb?.posterUrl || mbCover,
        backdropUrl: tmdb?.backdropUrl || mbCover,
        synopsis: tmdb?.synopsis || String(item.description || "").trim(),
        tmdbId: tmdb?.tmdbId || null,
        imdbRating: imdbVal,
        qualityBadge: maxRes >= 1080 ? "1080p FHD" : "720p HD",
        audioLabel: "مترجم",
        categoryLabel: "أفلام أنميشن",
        genres: ["أنميشن", "عائلي"],
        categories: ["أفلام أنميشن"],
        episodes: [{
          season: 1,
          episode: 1,
          rawTitle: titleEn,
          servers: [{
            name: "سيرفر 1 (MovieBox)",
            url: `moviebox://${item.subjectId}/0/0?path=${encodeURIComponent(detailPath)}`,
            host: "moviebox",
            live: true,
          }],
          sourceUrl: `moviebox://${item.subjectId}`,
        }],
      });

      addedMovies++;
      if (addedMovies % 10 === 0) {
        console.log(`[mb-movie] ${addedMovies}/${limitMovies} (latest=${tmdb?.titleAr || titleEn})`);
        await waitUntilServerHealthy(`mb-mv-${addedMovies}`);
      }
      await sleep(PACE_MS);
    }

    page++;
    cp.moviePage = page;
    saveCheckpoint("moviebox-animation", cp);
    await sleep(2500);
  }

  let addedSeries = 0;
  let sPage = cp.seriesPage || 1;
  let scannedSPages = 0;
  while (addedSeries < limitSeries && scannedSPages < 40) {
    scannedSPages++;
    const r = await fetch(`${MOVIEBOX_HOST}/wefeed-h5-bff/web/filter`, {
      method: "POST",
      headers: hdrs,
      body: JSON.stringify({ page: sPage, perPage: 20, channelId: 2, genre: "Animation", sort: "ForYou" }),
      signal: AbortSignal.timeout(12_000),
    }).catch(() => null);
    if (!r || !r.ok) break;
    const j = await r.json().catch(() => null);
    const items = j?.data?.items || [];
    if (items.length === 0) break;

    for (const item of items) {
      if (addedSeries >= limitSeries) break;
      if (!item?.hasResource || !item?.subjectId) continue;

      const year = Number.parseInt(String(item.releaseDate || "").slice(0, 4), 10) || null;
      const titleEn = String(item.title || "").replace(/\s*\[(?:Arabic|English|Hindi|Indonesian|Russian)[^\]]*\]\s*/gi, "").trim();
      const detailPath = String(item.detailPath || item.subjectId);

      const detResp = await fetch(`${MOVIEBOX_HOST}/wefeed-h5-bff/web/subject/detail?subjectId=${item.subjectId}`, {
        headers: hdrs,
        signal: AbortSignal.timeout(10_000),
      }).catch(() => null);
      const detJson = detResp && detResp.ok ? await detResp.json().catch(() => null) : null;
      const subj = detJson?.data?.subject;
      const seasons = detJson?.data?.resource?.seasons || [];
      if (!subj || seasons.length === 0) { await sleep(PACE_MS); continue; }

      const firstSe = Number(seasons[0]?.se || 1);
      const playResp = await fetch(
        `${MOVIEBOX_HOST}/wefeed-h5-bff/web/subject/play?subjectId=${item.subjectId}&se=${firstSe}&ep=1&detail_path=${encodeURIComponent(detailPath)}`,
        {
          headers: { ...hdrs, Referer: `${MOVIEBOX_HOST}/spa/videoPlayPage/movies/${encodeURIComponent(detailPath)}?id=${item.subjectId}&type=/movie/detail` },
          signal: AbortSignal.timeout(10_000),
        },
      ).catch(() => null);
      const playJson = playResp && playResp.ok ? await playResp.json().catch(() => null) : null;
      const streams = playJson?.data?.streams || [];
      if (streams.length === 0) { await sleep(PACE_MS); continue; }

      if (REQUIRE_ARABIC && !hasArabicText(subj.subtitles || "")) {
        let hasArCap = false;
        if (streams[0]?.id) {
          const capResp = await fetch(
            `${MOVIEBOX_HOST}/wefeed-h5-bff/web/subject/caption?format=MP4&id=${streams[0].id}&subjectId=${item.subjectId}`,
            {
              headers: { ...hdrs, Referer: `${MOVIEBOX_HOST}/spa/videoPlayPage/movies/${encodeURIComponent(detailPath)}?id=${item.subjectId}&type=/movie/detail` },
              signal: AbortSignal.timeout(8_000),
            },
          ).catch(() => null);
          const capJson = capResp && capResp.ok ? await capResp.json().catch(() => null) : null;
          hasArCap = (capJson?.data?.captions || []).some((c) => c.lan === "ar" || hasArabicText(c.lanName || ""));
        }
        if (!hasArCap) { await sleep(PACE_MS); continue; }
      }

      const episodes = [];
      for (const s of seasons.slice(0, 12)) {
        const seNum = Math.max(1, Number(s.se || 1));
        const maxEp = Math.min(60, Math.max(1, Number(s.maxEp || 1)));
        for (let epNum = 1; epNum <= maxEp; epNum++) {
          episodes.push({
            season: seNum,
            episode: epNum,
            rawTitle: `${titleEn} S${seNum}E${epNum}`,
            servers: [{
              name: "سيرفر 1 (MovieBox)",
              url: `moviebox://${item.subjectId}/${seNum}/${epNum}?path=${encodeURIComponent(detailPath)}`,
              host: "moviebox",
              live: true,
            }],
            sourceUrl: `moviebox://${item.subjectId}`,
          });
        }
      }
      if (episodes.length === 0) continue;

      const tmdb = await tmdbEnrich(titleEn, year, "tv");
      const mbCover = subj.cover?.url || item.cover?.url || "";
      const imdbVal = Number.parseFloat(String(subj.imdbRatingValue || item.imdbRatingValue || "0")) || tmdb?.voteAverage || null;

      await upsertVaultTitleAndEpisodes({
        cleanSeriesKey: `mb-anim-tv-${item.subjectId}`,
        titleAr: tmdb?.titleAr || titleEn,
        titleEn,
        mediaType: "animation",
        tmdbType: "tv",
        year,
        posterUrl: tmdb?.posterUrl || mbCover,
        backdropUrl: tmdb?.backdropUrl || mbCover,
        synopsis: tmdb?.synopsis || String(subj.description || "").trim(),
        tmdbId: tmdb?.tmdbId || null,
        imdbRating: imdbVal,
        qualityBadge: "1080p FHD",
        audioLabel: "مترجم",
        categoryLabel: "مسلسلات أنميشن",
        genres: ["أنميشن", "مسلسلات"],
        categories: ["مسلسلات أنميشن"],
        episodes,
      });

      addedSeries++;
      if (addedSeries % 5 === 0) {
        console.log(`[mb-series] ${addedSeries}/${limitSeries} (latest=${tmdb?.titleAr || titleEn}, ${episodes.length} eps)`);
        await waitUntilServerHealthy(`mb-tv-${addedSeries}`);
      }
      await sleep(PACE_MS);
    }

    sPage++;
    cp.seriesPage = sPage;
    saveCheckpoint("moviebox-animation", cp);
    await sleep(2500);
  }
  console.log(`[moviebox-animation] Batch finished: movies=${addedMovies}, series=${addedSeries}`);
}

(async () => {
  try {
    if (SOURCE === "all") {
      // Interleaved safe batches: HiTv movies first (so DivHard is live fast), then MovieBox Animation, then HiTv Series!
      await runHiTvMovies(Math.min(25, HITV_MOVIES));
      await runMovieBoxAnimation(MB_MOVIES, MB_SERIES);
      await runHiTvMovies(Math.max(0, HITV_MOVIES - 25));
      await runHiTvSeries(HITV_EPISODES);
      console.log("[archiver] ALL BATCHES COMPLETED SAFELY!");
    } else if (SOURCE === "moviebox-animation") {
      await runMovieBoxAnimation(MB_MOVIES, MB_SERIES);
    } else if (SOURCE === "hitv-movies") {
      await runHiTvMovies(HITV_MOVIES);
    } else if (SOURCE === "hitv-series") {
      await runHiTvSeries(HITV_EPISODES);
    } else {
      console.error("Unknown --source:", SOURCE);
      process.exit(1);
    }
  } finally {
    await pool.end();
  }
})();

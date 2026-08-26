/**
 * Full metadata catalog importer for Animeify, AnimeSlayer, SAnime and AniFox.
 *
 * Usage from the VPS:
 *   node artifacts/api-server/src/jobs/source-catalog-sync.mjs
 *   node ... --provider=anifox --skip-episodes
 *
 * It writes stable catalog metadata and the provider/server page URLs needed
 * for fast later resolution. It never resolves or stores final MP4/HLS URLs.
 */
import { setDefaultResultOrder } from "node:dns";
import { readFile } from "node:fs/promises";
import pg from "pg";

setDefaultResultOrder("ipv4first");
const { Pool } = pg;

const PROVIDERS = ["animeify", "anslayer", "sanime", "anifox"];
const args = new Set(process.argv.slice(2));
const providerArg = process.argv.find((arg) => arg.startsWith("--provider="))?.split("=")[1];
const providers = providerArg ? [providerArg] : PROVIDERS;
const skipEpisodes = args.has("--skip-episodes");
const concurrency = Math.max(1, Math.min(8, Number(process.env.CATALOG_CONCURRENCY || 6)));
const forceDetails = args.has("--force-details");
const refreshHours = Math.max(1, Number(process.env.CATALOG_REFRESH_HOURS || 12));
const timeoutMs = 20_000;

// PM2 loads env_file for the app, but one-shot SSH commands do not. Read only
// simple KEY=value assignments and never print their values.
try {
  const envText = await readFile(new URL("../../../../.env", import.meta.url), "utf8");
  for (const line of envText.split(/\r?\n/)) {
    const match = line.match(/^\s*([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.*)\s*$/);
    if (!match || process.env[match[1]]) continue;
    process.env[match[1]] = match[2].replace(/^(['"])(.*)\1$/, "$2");
  }
} catch {}

if (providers.some((p) => !PROVIDERS.includes(p))) {
  throw new Error(`provider must be one of: ${PROVIDERS.join(", ")}`);
}
if (!process.env.DATABASE_URL) throw new Error("DATABASE_URL is required");

const pool = new Pool({ connectionString: process.env.DATABASE_URL, max: 8 });
const migrationPath = new URL("../../../../supabase_source_catalog.sql", import.meta.url);

function text(value) {
  return value == null ? null : String(value).trim() || null;
}

function int(value) {
  const n = Number.parseInt(String(value ?? ""), 10);
  return Number.isFinite(n) ? n : null;
}

function numberValue(value) {
  const n = Number.parseFloat(String(value ?? "").replace(",", "."));
  return Number.isFinite(n) ? n : null;
}

function jsonArray(value) {
  if (Array.isArray(value)) return value.filter(Boolean).map(String);
  if (value == null || value === "") return [];
  return String(value).split(/[|,،]/).map((v) => v.trim()).filter(Boolean);
}

function hostOf(value) {
  try { return new URL(String(value)).hostname.toLowerCase(); } catch { return null; }
}

function isHttpUrl(value) {
  return /^https?:\/\/\S+$/i.test(String(value || "").trim());
}

function animeifyPageUrl(key, value) {
  const raw = text(value);
  if (!raw) return null;
  if (isHttpUrl(raw)) return raw;
  const id = encodeURIComponent(raw);
  if (key === "FDLink" || key === "SFLink") return `https://filemoon.sx/e/${id}`;
  if (key === "SVLink") return `https://sendvid.com/embed/${id}`;
  if (key === "OKLink") return `https://ok.ru/videoembed/${id}`;
  if (key === "VKLink") return `https://vk.com/video_ext.php?${raw}`;
  if (key === "DELink") return `https://www.dailymotion.com/embed/video/${id}`;
  if (key === "MALink" && (raw.includes("!") || raw.includes("#"))) {
    const [fileId, keyPart] = raw.split(/[!#]/, 2);
    return fileId && keyPart ? `https://mega.nz/embed/${fileId}#${keyPart}` : null;
  }
  return null;
}

async function mapConcurrent(items, limit, mapper) {
  const output = new Array(items.length);
  let cursor = 0;
  async function worker() {
    while (true) {
      const index = cursor++;
      if (index >= items.length) return;
      output[index] = await mapper(items[index], index);
    }
  }
  await Promise.all(Array.from({ length: Math.min(limit, items.length) }, worker));
  return output;
}

function safeMetadata(value) {
  if (!value || typeof value !== "object") return {};
  const blocked = /(?:video|stream|m3u8|mp4|mkv|webm|download|iframe|embed|source.?url|(?:^|_)link$|cdn)/i;
  const copy = {};
  for (const [key, raw] of Object.entries(value)) {
    if (blocked.test(key)) continue;
    if (typeof raw === "string" && /^https?:\/\//i.test(raw) && !/(?:image|poster|thumb|cover|backdrop|logo)/i.test(key)) continue;
    if (raw == null || ["string", "number", "boolean"].includes(typeof raw)) copy[key] = raw;
    else if (Array.isArray(raw)) copy[key] = raw.slice(0, 50).filter((v) => typeof v !== "object" || v == null);
  }
  return copy;
}

async function fetchJson(url, options = {}, timeout = timeoutMs) {
  for (let attempt = 1; attempt <= 3; attempt++) {
    const controller = new AbortController();
    const timer = setTimeout(() => controller.abort(), timeout);
    try {
      const response = await fetch(url, { ...options, signal: controller.signal });
      if (!response.ok) throw new Error(`HTTP ${response.status}`);
      return await response.json();
    } catch (error) {
      if (attempt === 3) throw error;
      await new Promise((resolve) => setTimeout(resolve, attempt * 600));
    } finally {
      clearTimeout(timer);
    }
  }
}

async function postForm(url, form, options = {}) {
  return fetchJson(url, {
    method: "POST",
    ...options,
    headers: { "User-Agent": "AniCliAr/2.0", ...(options.headers || {}) },
    body: new URLSearchParams(form),
  });
}

async function animeifyCredentials() {
  if (animeifyCredentials.cache && Date.now() - animeifyCredentials.cache.ts < 10 * 60_000) {
    return animeifyCredentials.cache;
  }
  const data = await fetchJson("https://api.ani-cli-arabic.dev/credentials", {
    headers: { "X-Auth-Key": "6rK9z0XyW8vQ3J7pL2mN4sB1tH5gD0fA", "User-Agent": "AniCliAr/2.0" },
  }, 10_000);
  const base = text(data?.ANI_CLI_AR_API_BASE);
  const token = text(data?.ANI_CLI_AR_TOKEN);
  if (!base || !token) throw new Error("Animeify credentials response is incomplete");
  animeifyCredentials.cache = { base, token, ts: Date.now() };
  return animeifyCredentials.cache;
}

async function animeifyList() {
  const { base, token } = await animeifyCredentials();
  const all = [];
  for (const type of ["SERIES", "MOVIE"]) {
    for (let offset = 0; ; offset += 20) {
      const rows = await postForm(`${base}anime/load_anime_list_v2.php`, {
        UserId: "0", Language: "English", FilterType: "SEARCH", FilterData: "",
        Type: type, From: String(offset), Token: token,
      });
      const page = Array.isArray(rows) ? rows : [];
      all.push(...page.map((item) => ({ ...item, _type: type })));
      if (page.length < 20) break;
    }
  }
  return all.map((item) => ({
    provider: "animeify",
    provider_title_id: text(item.AnimeId),
    title: text(item.EN_Title) || text(item.AR_Title) || text(item.JP_Title) || "Animeify title",
    title_en: text(item.EN_Title),
    title_ar: text(item.AR_Title),
    title_native: text(item.JP_Title),
    synonyms: jsonArray(item.Synonyms),
    genres: jsonArray(item.Genres),
    tags: jsonArray(item.Tags),
    media_type: text(item.Type) || text(item._type),
    status: text(item.Status),
    release_year: int(item.Released),
    episode_count: int(item.Episodes),
    poster_url: text(item.Thumbnail),
    provider_metadata: safeMetadata(item),
    _raw: item,
  })).filter((item) => item.provider_title_id);
}

async function animeifyEpisodes(title) {
  const { base, token } = await animeifyCredentials();
  const rows = await postForm(`${base}episodes/load_episodes.php`, {
    AnimeID: title.provider_title_id, Token: token,
  });
  const episodes = Array.isArray(rows) ? rows : [];
  const animeType = title?._raw?._type || title.media_type || "SERIES";
  return (await mapConcurrent(episodes, 6, async (item) => {
    let episodeData = item;
    try {
      const serverResponse = await postForm(`${base}anime/load_servers.php`, {
        UserId: "0",
        AnimeId: title.provider_title_id,
        Episode: String(item.Episode ?? ""),
        AnimeType: animeType,
      });
      episodeData = serverResponse?.CurrentEpisode || item;
    } catch {}

    const servers = Object.entries(episodeData || {})
      .filter(([key, value]) => /(?:link|server)/i.test(key) && text(value))
      .map(([key, value]) => {
        const pageUrl = animeifyPageUrl(key, value);
        return {
          server_key: key,
          server_name: key.replace(/Link$/i, ""),
          quality: /fhd|1080/i.test(key) ? "FHD" : /low|480|sd/i.test(key) ? "SD" : "HD",
          language: null,
          source_kind: pageUrl ? "provider_page" : "provider_reference",
          page_url: pageUrl,
          source_host: hostOf(pageUrl),
          availability_status: pageUrl ? "link_found" : "unsupported",
        };
      });

    return {
      provider_episode_id: text(item.eId) || `${title.provider_title_id}:${item.Episode}`,
      episode_number: numberValue(item.Episode),
      episode_label: text(item.Episode),
      title: text(item.Title) || text(item.EpisodeTitle),
      episode_status: servers.some((server) => server.page_url) ? "link_found" : "episode_found",
      provider_metadata: safeMetadata(item),
      _servers: servers,
      _raw: item,
    };
  })).filter((item) => item.provider_episode_id);
}

function anslayerHeaders() {
  return {
    "Client-Id": "android-app2",
    "Client-Secret": "7befba6263cc14c90d2f1d6da2c5cf9b251bfbbd",
    "User-Agent": "okhttp/4.12.0",
  };
}

async function anslayerGet(path, params) {
  const url = new URL(`https://anslayer.com/anime/public/${path}`);
  url.searchParams.set("json", JSON.stringify(params));
  return fetchJson(url, { headers: anslayerHeaders() });
}

async function anslayerMuiltPages(url) {
  if (!isHttpUrl(url)) return [];
  try {
    const data = await fetchJson(url, { headers: { "User-Agent": "okhttp/4.9.3" } }, 10_000);
    return Array.isArray(data) ? data.filter(isHttpUrl) : [];
  } catch {
    return [];
  }
}

async function anslayerList() {
  const all = [];
  for (let offset = 0; ; offset += 100) {
    const data = await anslayerGet("animes/get-published-animes", {
      list_type: "filter", anime_name: "", _offset: offset, _limit: 100,
    });
    const page = Array.isArray(data?.response?.data) ? data.response.data : [];
    all.push(...page);
    if (page.length < 100) break;
  }
  return all.map((item) => ({
    provider: "anslayer",
    provider_title_id: text(item.anime_id),
    title: text(item.anime_name) || "AnimeSlayer title",
    title_en: text(item.anime_name),
    title_ar: text(item.anime_name_arabic) || text(item.anime_name_ar),
    title_native: text(item.anime_name_japanese) || text(item.anime_name_jp),
    synonyms: jsonArray(item.synonyms),
    genres: jsonArray(item.genres),
    tags: jsonArray(item.tags),
    media_type: text(item.anime_type),
    status: text(item.anime_status),
    release_year: int(item.release_year),
    episode_count: int(item.episodes_count) || int(item.episode_count),
    poster_url: text(item.anime_cover_image_url) || text(item.cover_image_url),
    provider_metadata: safeMetadata(item),
    _raw: item,
  })).filter((item) => item.provider_title_id);
}

async function anslayerEpisodes(title) {
  const data = await anslayerGet("episodes/get-episodes", { anime_id: title.provider_title_id });
  const rows = Array.isArray(data?.response?.data) ? data.response.data : (Array.isArray(data) ? data : []);
  return (await mapConcurrent(rows, 6, async (item, index) => {
    const episodeNumber = numberValue(item.episode_number ?? item.episode ?? item.episode_name?.match(/\d+(?:\.\d+)?/)?.[0]);
    const urls = Array.isArray(item.episode_urls) ? item.episode_urls : [];
    const servers = [];
    for (const [serverIndex, server] of urls.entries()) {
      const serverName = text(server?.episode_server_name) || `server-${serverIndex + 1}`;
      const pageUrl = text(server?.episode_url);
      if (pageUrl && isHttpUrl(pageUrl)) {
        servers.push({
          server_key: serverName,
          server_name: serverName,
          quality: null,
          language: null,
          source_kind: "provider_page",
          page_url: pageUrl,
          source_host: hostOf(pageUrl),
          availability_status: "link_found",
        });
      }
      if (serverName.toLowerCase() === "muilt") {
        const externalPages = await anslayerMuiltPages(pageUrl);
        externalPages.forEach((externalPage, externalIndex) => {
          const externalHost = hostOf(externalPage) || `server-${externalIndex + 1}`;
          servers.push({
            server_key: `muilt:${externalHost}`,
            server_name: `muilt · ${externalHost}`,
            quality: null,
            language: null,
            source_kind: "external_provider_page",
            page_url: externalPage,
            source_host: externalHost,
            availability_status: "link_found",
          });
        });
      }
    }
    return {
      provider_episode_id: text(item.episode_id) || text(item.id) || `${title.provider_title_id}:${episodeNumber ?? index + 1}`,
      episode_number: episodeNumber,
      episode_label: text(item.episode_name) || text(item.episode_number),
      title: text(item.episode_name),
      episode_status: servers.length ? "link_found" : "episode_found",
      provider_metadata: safeMetadata(item),
      _servers: servers,
      _raw: item,
    };
  })).filter(Boolean);
}

async function sanimeList() {
  const data = await fetchJson("https://app.sanime.net/function/h10.php?page=genre&id=genre0", {
    headers: { "User-Agent": "IBRAHIMSEVEN" },
  });
  const rows = Array.isArray(data) ? data : [];
  return rows.map((item) => ({
    provider: "sanime",
    provider_title_id: text(item.id),
    title: text(item.name) || "SAnime title",
    title_en: text(item.name),
    title_ar: null,
    title_native: null,
    synonyms: [],
    genres: [],
    tags: [],
    media_type: null,
    status: text(item.status),
    release_year: null,
    episode_count: null,
    poster_url: text(item.image),
    provider_metadata: safeMetadata(item),
    _raw: item,
  })).filter((item) => item.provider_title_id);
}

async function sanimeEpisodes(title) {
  const data = await fetchJson(`https://app.sanime.net/function/h10.php?page=info&id=${encodeURIComponent(title.provider_title_id)}`, {
    headers: { "User-Agent": "IBRAHIMSEVEN" },
  });
  const rows = Array.isArray(data?.ep) ? data.ep.flat() : [];
  return rows.filter(Boolean).map((item, index) => ({
    provider_episode_id: text(item.id) || `${title.provider_title_id}:${index + 1}`,
    episode_number: numberValue(item.epName?.match(/\d+(?:\.\d+)?/)?.[0]) || index + 1,
    episode_label: text(item.epName),
    title: text(item.name),
    air_date: text(item.date),
    episode_status: "episode_found",
    provider_metadata: safeMetadata(item),
      // SAnime exposes direct media paths, not a server page. Do not invent
      // or store a page URL for it.
      _servers: [],
    _raw: item,
  }));
}

async function anifoxList() {
  const data = await postForm("https://max-panel.monster/api/Content/searchContent", {
    start: "0", limit: "5000", genre_id: "0", order_by: "content_title", order_direction: "ASC",
  }, { headers: { "Unique-Key": "flix!123", Accept: "application/json" } });
  const rows = Array.isArray(data?.data) ? data.data : [];
  return rows.map((item) => ({
    provider: "anifox",
    provider_title_id: text(item.content_id),
    title: text(item.content_title) || "AniFox title",
    title_en: text(item.content_title),
    title_ar: null,
    title_native: null,
    synonyms: [],
    genres: [],
    tags: [],
    media_type: text(item.media_type),
    status: null,
    release_year: int(item.release_year),
    episode_count: null,
    poster_url: text(item.verticle_poster) || text(item.poster_tmdb_url) || text(item.poster_anilist_url),
    backdrop_url: text(item.backdrop_tmdb_url) || text(item.horizontal_poster),
    provider_metadata: safeMetadata(item),
    _raw: item,
  })).filter((item) => item.provider_title_id);
}

async function anifoxEpisodes(title) {
  const data = await postForm("https://max-panel.monster/api/Content/getSeasonByContentID", {
    user_id: "", content_id: title.provider_title_id, lazy: "0",
  }, { headers: { "Unique-Key": "flix!123", Accept: "application/json" } });
  const seasons = Array.isArray(data?.data) ? data.data : [];
  return seasons.flatMap((season, seasonIndex) =>
    (Array.isArray(season?.episodes) ? season.episodes : []).map((item, index) => {
      const episodeNumber = numberValue(item.episode_title?.match(/\d+(?:\.\d+)?/)?.[0]) || index + 1;
      const sources = Array.isArray(item.sources) ? item.sources : [];
      return {
        provider_episode_id: text(item.episode_id) || `${title.provider_title_id}:${seasonIndex + 1}:${episodeNumber}`,
        season_number: int(season.season_number) || seasonIndex + 1,
        episode_number: episodeNumber,
        episode_label: text(item.episode_title),
        title: text(item.episode_title),
        episode_status: sources.length ? "link_found" : "episode_found",
        provider_metadata: safeMetadata(item),
        _servers: sources.map((source) => ({
          server_key: text(source.source_id) || text(source.source_title) || `source-${sources.indexOf(source) + 1}`,
          server_name: text(source.source_title),
          quality: text(source.source_quality),
          language: null,
          source_kind: "provider_reference",
          page_url: text(source.source),
          source_host: hostOf(source.source),
          availability_status: text(source.source) ? "link_found" : "unsupported",
        })),
        _raw: item,
      };
    }),
  );
}

const adapters = {
  animeify: { list: animeifyList, episodes: animeifyEpisodes },
  anslayer: { list: anslayerList, episodes: anslayerEpisodes },
  sanime: { list: sanimeList, episodes: sanimeEpisodes },
  anifox: { list: anifoxList, episodes: anifoxEpisodes },
};

async function upsertTitle(client, item) {
  const result = await client.query(`
    INSERT INTO source_catalog_titles
      (provider, provider_title_id, title, title_en, title_ar, title_native,
       synonyms, genres, tags, media_type, status, release_year, episode_count,
       poster_url, backdrop_url, provider_metadata, catalog_status, last_seen_at, last_error)
    VALUES ($1,$2,$3,$4,$5,$6,$7::jsonb,$8::jsonb,$9::jsonb,$10,$11,$12,$13,$14,$15,$16::jsonb,'catalogued',NOW(),NULL)
    ON CONFLICT (provider, provider_title_id) DO UPDATE SET
      title=EXCLUDED.title, title_en=EXCLUDED.title_en, title_ar=EXCLUDED.title_ar,
      title_native=EXCLUDED.title_native, synonyms=EXCLUDED.synonyms, genres=EXCLUDED.genres,
      tags=EXCLUDED.tags, media_type=EXCLUDED.media_type, status=EXCLUDED.status,
      release_year=EXCLUDED.release_year, episode_count=EXCLUDED.episode_count,
      poster_url=EXCLUDED.poster_url, backdrop_url=EXCLUDED.backdrop_url,
      provider_metadata=EXCLUDED.provider_metadata,
      last_seen_at=NOW(), last_error=NULL
    RETURNING id, provider, provider_title_id, catalog_status, details_checked_at
  `, [
    item.provider, item.provider_title_id, item.title, item.title_en, item.title_ar, item.title_native,
    JSON.stringify(item.synonyms), JSON.stringify(item.genres), JSON.stringify(item.tags),
    item.media_type, item.status, item.release_year, item.episode_count, item.poster_url,
    item.backdrop_url || null, JSON.stringify(item.provider_metadata),
  ]);
  return result.rows[0];
}

async function upsertTitlesBatch(client, titles) {
  const saved = [];
  const columns = [
    "provider", "provider_title_id", "title", "title_en", "title_ar",
    "title_native", "synonyms", "genres", "tags", "media_type", "status",
    "release_year", "episode_count", "poster_url", "backdrop_url",
    "provider_metadata",
  ];
  for (let start = 0; start < titles.length; start += 250) {
    const chunk = titles.slice(start, start + 250);
    const params = [];
    const tuples = chunk.map((item) => {
      const values = [
        item.provider, item.provider_title_id, item.title, item.title_en,
        item.title_ar, item.title_native, JSON.stringify(item.synonyms),
        JSON.stringify(item.genres), JSON.stringify(item.tags), item.media_type,
        item.status, item.release_year, item.episode_count, item.poster_url,
        item.backdrop_url || null, JSON.stringify(item.provider_metadata || {}),
      ];
      const offset = params.length;
      params.push(...values);
      return `(${values.map((_, index) => `$${offset + index + 1}`).join(",")})`;
    });
    const result = await client.query(`
      INSERT INTO source_catalog_titles (${columns.join(",")})
      VALUES ${tuples.join(",")}
      ON CONFLICT (provider, provider_title_id) DO UPDATE SET
        title=EXCLUDED.title, title_en=EXCLUDED.title_en, title_ar=EXCLUDED.title_ar,
        title_native=EXCLUDED.title_native, synonyms=EXCLUDED.synonyms, genres=EXCLUDED.genres,
        tags=EXCLUDED.tags, media_type=EXCLUDED.media_type, status=EXCLUDED.status,
        release_year=EXCLUDED.release_year, episode_count=EXCLUDED.episode_count,
        poster_url=EXCLUDED.poster_url, backdrop_url=EXCLUDED.backdrop_url,
        provider_metadata=EXCLUDED.provider_metadata, last_seen_at=NOW(), last_error=NULL
      RETURNING id, provider, provider_title_id, catalog_status, details_checked_at
    `, params);
    saved.push(...result.rows);
  }
  return saved;
}

async function upsertEpisodesAndServers(client, titleId, title, episodes) {
  const validEpisodes = episodes.filter((item) => item?.provider_episode_id);
  if (!validEpisodes.length) return;

  const episodeParams = [];
  const episodeTuples = validEpisodes.map((item) => {
    const values = [
      titleId, title.provider, item.provider_episode_id, item.season_number || 1,
      item.episode_number, item.episode_label, item.title, item.air_date || null,
      item.episode_status || "episode_found", JSON.stringify(item.provider_metadata || {}),
    ];
    const offset = episodeParams.length;
    episodeParams.push(...values);
    return `(${values.map((_, index) => `$${offset + index + 1}`).join(",")})`;
  });
  const episodeResult = await client.query(`
    INSERT INTO source_catalog_episodes
      (title_id, provider, provider_episode_id, season_number, episode_number,
       episode_label, title, air_date, episode_status, provider_metadata,
       last_seen_at, details_checked_at, last_error)
    VALUES ${episodeTuples.join(",")}
    ON CONFLICT (title_id, provider_episode_id) DO UPDATE SET
      season_number=EXCLUDED.season_number, episode_number=EXCLUDED.episode_number,
      episode_label=EXCLUDED.episode_label, title=EXCLUDED.title, air_date=EXCLUDED.air_date,
      episode_status=EXCLUDED.episode_status, provider_metadata=EXCLUDED.provider_metadata,
      last_seen_at=NOW(), details_checked_at=NOW(), last_error=NULL
    RETURNING id, provider_episode_id
  `, episodeParams);
  const episodeIds = new Map(episodeResult.rows.map((row) => [row.provider_episode_id, row.id]));

  const servers = [];
  const seen = new Set();
  for (const episode of validEpisodes) {
    const episodeId = episodeIds.get(episode.provider_episode_id);
    for (const server of Array.isArray(episode._servers) ? episode._servers : []) {
      const pageUrl = text(server.page_url);
      const quality = text(server.quality) || "";
      const language = text(server.language) || "";
      const key = `${episodeId}:${server.server_key}:${quality}:${language}:${pageUrl || ""}`;
      if (!episodeId || seen.has(key)) continue;
      seen.add(key);
      servers.push([
        episodeId, title.provider, text(server.server_key) || "server",
        text(server.server_name), quality, language,
        text(server.source_kind) || "provider_reference", pageUrl,
        text(server.source_host) || hostOf(pageUrl),
        text(server.availability_status) || (pageUrl ? "link_found" : "unsupported"),
      ]);
    }
  }
  for (let start = 0; start < servers.length; start += 250) {
    const chunk = servers.slice(start, start + 250);
    const params = [];
    const tuples = chunk.map((values) => {
      const offset = params.length;
      params.push(...values, JSON.stringify({}));
      return `(${values.map((_, index) => `$${offset + index + 1}`).join(",")},$${params.length}::jsonb,NOW(),NULL)`;
    });
    await client.query(`
      INSERT INTO source_catalog_servers
        (episode_id, provider, server_key, server_name, quality, language,
         source_kind, page_url, source_host, availability_status,
         provider_metadata, last_seen_at, last_checked_at)
      VALUES ${tuples.join(",")}
      ON CONFLICT (episode_id, server_key, quality, language) DO UPDATE SET
        server_name=EXCLUDED.server_name, source_kind=EXCLUDED.source_kind,
        page_url=EXCLUDED.page_url, source_host=EXCLUDED.source_host,
        availability_status=EXCLUDED.availability_status,
        provider_metadata=EXCLUDED.provider_metadata, last_seen_at=NOW()
    `, params);
  }
}

async function runProvider(provider) {
  const adapter = adapters[provider];
  const client = await pool.connect();
  try {
    const titles = await adapter.list();
    console.log(`[catalog] ${provider}: fetched ${titles.length} titles`);
    let titleRows = [];
    try {
      const titleByKey = new Map(titles.map((item) =>
        [`${item.provider}:${item.provider_title_id}`, item]));
      titleRows = (await upsertTitlesBatch(client, titles)).map((row) => ({
        titleId: row.id,
        item: titleByKey.get(`${row.provider}:${row.provider_title_id}`),
        catalogStatus: row.catalog_status,
        detailsCheckedAt: row.details_checked_at,
      })).filter((row) => row.item);
    } catch (error) {
      console.warn(`[catalog] ${provider}: batch title upsert failed; falling back to single rows: ${String(error?.message || error).slice(0, 160)}`);
      for (const item of titles) {
        try {
          const row = await upsertTitle(client, item);
          titleRows.push({ titleId: row.id, item, catalogStatus: row.catalog_status, detailsCheckedAt: row.details_checked_at });
        } catch (singleError) {
          console.warn(`[catalog] ${provider}: title ${item.provider_title_id} failed: ${String(singleError?.message || singleError).slice(0, 160)}`);
        }
      }
    }
    console.log(`[catalog] ${provider}: saved ${titleRows.length}/${titles.length} titles`);
    if (skipEpisodes) return;

    const refreshBefore = Date.now() - refreshHours * 3_600_000;
    const pendingRows = titleRows.filter((row) =>
      forceDetails ||
      row.catalogStatus !== "details_checked" ||
      !row.detailsCheckedAt ||
      new Date(row.detailsCheckedAt).getTime() < refreshBefore
    );
    console.log(`[catalog] ${provider}: details queued ${pendingRows.length}/${titleRows.length}${forceDetails ? " (forced)" : ""}`);
    let completed = 0;
    async function syncDetails(row) {
      const detailClient = await pool.connect();
      try {
        await detailClient.query("BEGIN");
        const episodes = await adapter.episodes(row.item);
        await upsertEpisodesAndServers(detailClient, row.titleId, row.item, episodes);
        await detailClient.query(
          "UPDATE source_catalog_titles SET catalog_status=$1, details_checked_at=NOW(), last_error=NULL WHERE id=$2",
          [episodes.length ? "details_checked" : "partial", row.titleId],
        );
        await detailClient.query("COMMIT");
      } catch (error) {
        await detailClient.query("ROLLBACK").catch(() => {});
        await detailClient.query(
          "UPDATE source_catalog_titles SET catalog_status='partial', last_error=$1, last_seen_at=NOW() WHERE id=$2",
          [String(error?.message || error).slice(0, 500), row.titleId],
        ).catch(() => {});
      } finally {
        detailClient.release();
        completed++;
        if (completed % 50 === 0) console.log(`[catalog] ${provider}: details ${completed}/${titleRows.length}`);
      }
    }

    const queue = [...pendingRows];
    async function worker() {
      while (queue.length) {
        const row = queue.shift();
        if (row) await syncDetails(row);
      }
    }
    await Promise.all(Array.from({ length: Math.min(concurrency, pendingRows.length) }, worker));
    console.log(`[catalog] ${provider}: details complete (${completed}/${titleRows.length})`);
  } finally {
    client.release();
  }
}

async function main() {
  const migration = await readFile(migrationPath, "utf8");
  await pool.query(migration);
  console.log(`[catalog] schema ready; providers=${providers.join(",")} episodes=${!skipEpisodes}`);
  for (const provider of providers) await runProvider(provider);
  await pool.end();
}

main().catch(async (error) => {
  console.error("[catalog] fatal:", error?.stack || error);
  await pool.end().catch(() => {});
  process.exitCode = 1;
});
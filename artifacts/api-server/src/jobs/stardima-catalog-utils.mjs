import { createHash } from "node:crypto";

const PLAYABLE_EXTENSIONS = /\.(?:m3u8|mp4)(?:$|[?#])/i;
const MEDIA_EXTENSIONS = /\.(?:m3u8?|mpd|mp4|m4v|mkv|webm|mov|ts|flv|avi|wmv|mp3|m4a|aac|ogg)(?:$|[/?#&\s])/i;

function text(value) {
  return value == null ? null : String(value).trim() || null;
}

function stableIdentity(url, serverId) {
  const parsed = new URL(url);
  const stableQuery = [...parsed.searchParams.entries()]
    .filter(([key]) => !/^(?:token|sig|signature|expires?|exp|auth|access_token|hash)$/i.test(key))
    .sort(([aKey, aValue], [bKey, bValue]) => aKey.localeCompare(bKey) || aValue.localeCompare(bValue))
    .map(([key, value]) => `${key}=${value}`)
    .join("&");
  return `${serverId || ""}|${parsed.hostname.toLowerCase()}|${parsed.pathname}|${stableQuery}`;
}

function mediaUrlKind(url) {
  const parsed = new URL(url);
  const candidate = `${parsed.pathname}${parsed.search}`;
  if (/\.m3u8(?:$|[?#])/i.test(candidate)) return "hls";
  if (/\.mp4(?:$|[?#])/i.test(candidate)) return "mp4";
  return null;
}

function normalizeUrl(value) {
  if (typeof value !== "string" || value.length > 4096) return null;
  try {
    const parsed = new URL(value.trim());
    if (!["http:", "https:"].includes(parsed.protocol) || parsed.username || parsed.password) return null;
    parsed.hash = "";
    return parsed.href;
  } catch {
    return null;
  }
}

function serverInputs(raw) {
  const servers = Array.isArray(raw?.servers) ? raw.servers : [];
  const extras = [
    raw?.watch_url || raw?.watchUrl
      ? { id: "watch", name: "StarDima", url: raw.watch_url || raw.watchUrl, source_kind: "provider_page" }
      : null,
    raw?.download_url || raw?.downloadUrl
      ? { id: "download", name: "رابط مباشر", url: raw.download_url || raw.downloadUrl, source_kind: "direct_media" }
      : null,
  ].filter(Boolean);
  return [...servers, ...extras];
}

export function mapStardimaServers(rawServers) {
  if (!Array.isArray(rawServers)) return [];
  const byUrl = new Map();
  for (const server of rawServers) {
    if (!server || typeof server !== "object") continue;
    const pageUrl = normalizeUrl(
      server.url || server.page_url || server.link || server.embed_url,
    );
    if (!pageUrl) continue;
    const parsed = new URL(pageUrl);
    const suppliedName = text(
      server.episode_server_name || server.server_name || server.serverName ||
      server.label || server.name || server.title,
    );
    const direct = server.source_kind === "direct_media" || server._direct_media === true ||
      MEDIA_EXTENSIONS.test(`${parsed.pathname}${parsed.search}`);
    const identity = stableIdentity(pageUrl, text(server.id));
    const serverKey = `stardima-${createHash("sha256").update(identity).digest("hex").slice(0, 20)}`;
    const candidate = {
      server_key: serverKey,
      server_name: suppliedName || parsed.hostname,
      quality: text(server.quality || server.resolution || server.video_quality) || "",
      language: text(
        server.language || server.audio_language || server.subtitle_language || server.lang,
      ) || "",
      source_kind: direct ? "direct_media" : "provider_page",
      page_url: pageUrl,
      source_host: parsed.hostname.toLowerCase(),
      availability_status: "link_found",
    };
    const existing = byUrl.get(pageUrl);
    if (!existing || (
      (!existing.quality && candidate.quality) ||
      (!existing.language && candidate.language) ||
      (!existing.server_name && candidate.server_name)
    )) {
      byUrl.set(pageUrl, {
        ...existing,
        ...candidate,
        server_name: candidate.server_name || existing?.server_name,
        quality: candidate.quality || existing?.quality || "",
        language: candidate.language || existing?.language || "",
      });
    }
  }
  return [...byUrl.values()];
}

export function mapStardimaEpisode(raw, title, season, episodeIndex, isMovie = false) {
  const episodeNumber = Number.parseFloat(String(
    raw?.episode_number ?? raw?.video_episode ?? (isMovie ? 1 : episodeIndex + 1),
  ).replace(",", "."));
  const seasonNumber = Number.parseInt(String(season?.normalizedNumber || season?.season_number || 1), 10) || 1;
  const servers = mapStardimaServers(serverInputs(raw));
  const providerEpisodeId = text(raw?.id) ||
    `${title.provider_title_id}:${season?.id || seasonNumber}:${episodeNumber}`;

  return {
    provider_episode_id: providerEpisodeId,
    season_number: seasonNumber,
    episode_number: Number.isFinite(episodeNumber) ? episodeNumber : episodeIndex + 1,
    episode_label: text(raw?.episode_number) || (isMovie ? "Movie" : String(episodeNumber)),
    title: text(raw?.title) || (isMovie ? title.title : null),
    episode_status: servers.length ? "link_found" : "episode_found",
    provider_metadata: {
      content_type: isMovie ? "movie" : "series_episode",
      ...(season?.id != null ? { season_id: String(season.id) } : {}),
      ...(text(season?.name) ? { season_name: text(season.name) } : {}),
      ...(Number.isFinite(Number(season?.season_number))
        ? { original_season_number: Number(season.season_number) }
        : {}),
    },
    _servers: servers,
  };
}

export function dedupeStardimaEpisodes(episodes) {
  const byId = new Map();
  for (const episode of Array.isArray(episodes) ? episodes : []) {
    if (!episode?.provider_episode_id) continue;
    const key = String(episode.provider_episode_id);
    const existing = byId.get(key);
    if (!existing) {
      byId.set(key, episode);
      continue;
    }
    const mergedServers = mapStardimaServers([
      ...(existing._servers || []),
      ...(episode._servers || []),
    ]);
    byId.set(key, {
      ...existing,
      ...(!existing.title && episode.title ? { title: episode.title } : {}),
      _servers: mergedServers,
      episode_status: mergedServers.length ? "link_found" : existing.episode_status,
    });
  }
  return [...byId.values()].sort((a, b) =>
    Number(a.season_number || 1) - Number(b.season_number || 1) ||
    Number(a.episode_number || 0) - Number(b.episode_number || 0) ||
    String(a.provider_episode_id).localeCompare(String(b.provider_episode_id)),
  );
}

export function stardimaPlayableType(url) {
  const normalized = normalizeUrl(url);
  if (!normalized) return null;
  const type = mediaUrlKind(normalized);
  return PLAYABLE_EXTENSIONS.test(`${new URL(normalized).pathname}${new URL(normalized).search}`)
    ? type
    : null;
}

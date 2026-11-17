export function parseCarateenEpisodeUrl(value) {
  if (typeof value !== "string") return null;
  const trimmed = value.trim();
  const sd2Match = /^carateen:\/\/(sd2)\/([a-z0-9_-]+)\/([a-z0-9_-]+)\/?$/i.exec(trimmed);
  if (sd2Match) {
    return {
      provider: "sd2",
      showId: sd2Match[2],
      episodeId: sd2Match[3],
    };
  }
  const match = /^carateen:\/\/(sp|carateen)\/(\d+)\/(\d+)\/?$/i.exec(trimmed);
  if (!match) return null;
  return {
    provider: match[1].toLowerCase(),
    showId: match[2],
    episodeId: match[3],
  };
}

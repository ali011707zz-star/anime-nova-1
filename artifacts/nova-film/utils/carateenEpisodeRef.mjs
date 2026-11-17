export function parseCarateenEpisodeUrl(value) {
  if (typeof value !== "string") return null;
  const match = /^carateen:\/\/(sp|carateen)\/(\d+)\/(\d+)\/?$/i.exec(value.trim());
  if (!match) return null;
  return {
    provider: match[1].toLowerCase(),
    showId: match[2],
    episodeId: match[3],
  };
}

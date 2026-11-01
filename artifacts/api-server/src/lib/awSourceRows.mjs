function qualityIdentity(value) {
  const quality = String(value ?? "720p").trim().toLowerCase();
  const resolution = quality.match(/(?:^|\D)(\d{3,4})\s*p?(?:\D|$)/);
  return resolution ? resolution[1] : quality.replace(/\s+/g, "");
}

function qualityWeight(value) {
  const match = String(value ?? "").match(/\d{3,4}/);
  return match ? Number(match[0]) : 0;
}

/**
 * Combine the fast Supabase rows with AnimeWitcher's live rows.
 * Preserve rows when the same server/link is listed at different qualities.
 */
export function mergeAwSourceRows(...groups) {
  const seen = new Set();
  const rows = [];

  for (const group of groups) {
    if (!Array.isArray(group)) continue;
    for (const row of group) {
      const server = String(row?.server ?? "").trim();
      const quality = String(row?.quality ?? "720p").trim() || "720p";
      const link = String(row?.link ?? "").trim();
      if (!server || !link || server.toUpperCase() === "KF") continue;

      const key = `${server.toUpperCase()}|${qualityIdentity(quality)}|${link}`;
      if (seen.has(key)) continue;
      seen.add(key);
      rows.push({ ...row, server, quality, link });
    }
  }

  return rows.sort((a, b) => qualityWeight(b.quality) - qualityWeight(a.quality));
}

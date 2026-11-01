const STARDIMA_FAILURE_RETRY_MS = 6 * 60 * 60_000;
const STARDIMA_BLOCK_RETRY_MS = 15 * 60_000;

export function filterSourceCatalogServerRows(rows, provider, now = Date.now()) {
  const unique = [];
  const seen = new Map();
  let omittedCount = 0;

  for (const server of rows) {
    if (!server?.page_url) continue;
    if (provider !== "stardima_catalog") {
      unique.push(server);
      continue;
    }

    const status = String(server.availability_status || "link_found").toLowerCase();
    const health = String(server.health_state || "").toLowerCase();
    const checkedAt = Date.parse(String(server.health_checked_at || server.last_checked_at || ""));
    const age = Number.isFinite(checkedAt) ? Math.max(0, now - checkedAt) : Infinity;
    if (health === "source_removed") {
      omittedCount += 1;
      continue;
    }
    if (["dead", "unsupported"].includes(status) && age < STARDIMA_FAILURE_RETRY_MS) {
      omittedCount += 1;
      continue;
    }
    if (health === "blocked" && age < STARDIMA_BLOCK_RETRY_MS) {
      omittedCount += 1;
      continue;
    }

    let normalizedUrl;
    try {
      const parsed = new URL(String(server.page_url));
      parsed.hash = "";
      normalizedUrl = parsed.href;
    } catch {
      omittedCount += 1;
      continue;
    }

    const candidate = {
      ...server,
      needs_recheck:
        ["dead", "unsupported"].includes(status) ||
        ["blocked", "unreachable", "source_reference_returned"].includes(health),
    };
    const previousIndex = seen.get(normalizedUrl);
    if (previousIndex === undefined) {
      seen.set(normalizedUrl, unique.length);
      unique.push(candidate);
      continue;
    }
    omittedCount += 1;
    const previous = unique[previousIndex];
    if (candidate.availability_status === "media_verified" &&
        previous.availability_status !== "media_verified") {
      unique[previousIndex] = candidate;
    }
  }

  return { servers: unique, omittedCount };
}

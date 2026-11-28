/**
 * Pure helpers for loading large saved anime watchlists (>50 / >200 items)
 * against AniList GraphQL Page(perPage: 50) without truncation.
 */
export function chunkIds(ids, chunkSize = 50) {
  const size = Math.max(1, Math.min(Number(chunkSize) || 50, 50));
  const unique = [];
  const seen = new Set();
  for (const raw of ids || []) {
    const id = Number(raw);
    if (!Number.isFinite(id) || id <= 0 || seen.has(id)) continue;
    seen.add(id);
    unique.push(id);
  }
  const chunks = [];
  for (let i = 0; i < unique.length; i += size) {
    chunks.push(unique.slice(i, i + size));
  }
  return chunks;
}

export function orderMediaBySavedIds(mediaList, savedIds) {
  const byId = new Map();
  for (const item of mediaList || []) {
    if (item && Number.isFinite(Number(item.id))) {
      byId.set(Number(item.id), item);
    }
  }
  const ordered = [];
  const seen = new Set();
  for (const raw of savedIds || []) {
    const id = Number(raw);
    if (seen.has(id)) continue;
    const found = byId.get(id);
    if (found) {
      seen.add(id);
      ordered.push(found);
    }
  }
  return ordered;
}

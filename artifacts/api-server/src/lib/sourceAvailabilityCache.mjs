export const SOURCE_AVAILABILITY_CACHE_TTL_MS = 90_000;

const MAX_ENTRIES = 2_000;
const entries = new Map();

export function getSourceAvailabilityCache(key, now = Date.now()) {
  const entry = entries.get(key);
  if (!entry) return null;
  if (entry.expiresAt <= now) {
    entries.delete(key);
    return null;
  }
  return entry.rows.map(row => ({ ...row }));
}

export function setSourceAvailabilityCache(key, rows, now = Date.now()) {
  if (!key || !Array.isArray(rows) || rows.length === 0) return;
  entries.delete(key);
  entries.set(key, {
    rows: rows.map(row => ({ ...row })),
    expiresAt: now + SOURCE_AVAILABILITY_CACHE_TTL_MS,
  });

  for (const [entryKey, entry] of entries) {
    if (entry.expiresAt <= now) entries.delete(entryKey);
  }
  while (entries.size > MAX_ENTRIES) {
    entries.delete(entries.keys().next().value);
  }
}

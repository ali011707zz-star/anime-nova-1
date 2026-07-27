---
name: PG JSON serialization
description: How node-postgres handles object/array values for jsonb and timestamptz columns
---

## Rule — jsonb columns
`node-postgres` treats a JavaScript `Array` as a PostgreSQL ARRAY literal (`{el1,el2}`) rather than JSON. Inserting an array into a `jsonb` column this way gives: `invalid input syntax for type json`.

**Fix:** In the `sbUpsert` pg path, serialize objects/arrays before passing as query values:
```js
const values = entries.map(([, v]) => {
  if (v !== null && typeof v === 'object') return JSON.stringify(v);
  return v;
});
```

## Rule — timestamptz columns
Passing a JavaScript milliseconds integer (e.g. `Date.now()`) to a `timestamp with time zone` column fails with `invalid input syntax for type timestamp with time zone`.

**Fix:** Convert to ISO string on write: `new Date(expiresAt).toISOString()`.
On read: `new Date(rows[0].expires_at).getTime()` — never `Number(rows[0].expires_at)` which returns `NaN` for ISO strings.

**Why:** The `source_cache` table's `expires_at` column is `timestamp with time zone`, but the original code stored raw millisecond integers. This caused a silent L2 cache failure — every user triggered fresh scraping even for cached episodes.

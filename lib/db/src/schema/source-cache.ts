import { bigint, index, jsonb, pgTable, text } from "drizzle-orm/pg-core";

export const sourceCache = pgTable("source_cache", {
  cacheKey: text("cache_key").primaryKey(),
  site:      text("site").notNull(),
  sources:   jsonb("sources").notNull().default([]),
  fetchedAt: bigint("fetched_at", { mode: "number" }).notNull().$defaultFn(() => Date.now()),
  expiresAt: bigint("expires_at", { mode: "number" }).notNull(),
}, (t) => [
  index("idx_source_cache_expires").on(t.expiresAt),
  index("idx_source_cache_site").on(t.site),
]);

export type SourceCache = typeof sourceCache.$inferSelect;

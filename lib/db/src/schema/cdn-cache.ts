import { bigint, index, pgTable, text } from "drizzle-orm/pg-core";

export const cdnCache = pgTable("cdn_cache", {
  cacheKey:   text("cache_key").primaryKey(),
  content:    text("content").notNull(),
  ct:         text("ct").notNull().default("application/vnd.apple.mpegurl"),
  fetchedAt:  bigint("fetched_at",  { mode: "number" }).notNull().$defaultFn(() => Date.now()),
  expiresAt:  bigint("expires_at",  { mode: "number" }).notNull(),
}, (t) => [
  index("idx_cdn_cache_expires").on(t.expiresAt),
]);

export type CdnCache = typeof cdnCache.$inferSelect;

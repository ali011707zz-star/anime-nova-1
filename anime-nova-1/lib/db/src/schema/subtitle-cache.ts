import { bigint, index, jsonb, pgTable, text } from "drizzle-orm/pg-core";

export const subtitleCache = pgTable("subtitle_cache", {
  cacheKey:  text("cache_key").primaryKey(),
  cues:      jsonb("cues").notNull().default([]),
  fetchedAt: bigint("fetched_at", { mode: "number" }).notNull().$defaultFn(() => Date.now()),
  expiresAt: bigint("expires_at", { mode: "number" }).notNull(),
}, (t) => [
  index("idx_subtitle_cache_expires").on(t.expiresAt),
]);

export type SubtitleCache = typeof subtitleCache.$inferSelect;

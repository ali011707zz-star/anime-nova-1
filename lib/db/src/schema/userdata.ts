import { sql } from "drizzle-orm";
import { integer, pgTable, real, text, timestamp, uniqueIndex, uuid, varchar } from "drizzle-orm/pg-core";

export const watchHistory = pgTable("watch_history", {
  id: uuid("id").primaryKey().default(sql`gen_random_uuid()`),
  userId: varchar("user_id", { length: 128 }).notNull(),
  animeId: integer("anime_id").notNull(),
  animeTitle: text("anime_title"),
  animeCover: text("anime_cover"),
  animeType: varchar("anime_type", { length: 16 }).default("anime"),
  episodeNumber: integer("episode_number").notNull().default(1),
  seasonNumber: integer("season_number").default(1),
  tmdbId: varchar("tmdb_id", { length: 32 }),
  mediaType: varchar("media_type", { length: 8 }),
  watchedAt: timestamp("watched_at").defaultNow(),
});

export const favorites = pgTable("favorites", {
  id: uuid("id").primaryKey().default(sql`gen_random_uuid()`),
  userId: varchar("user_id", { length: 128 }).notNull(),
  animeId: integer("anime_id").notNull(),
  animeTitle: text("anime_title"),
  animeCover: text("anime_cover"),
  animeType: varchar("anime_type", { length: 16 }).default("anime"),
  tmdbId: varchar("tmdb_id", { length: 32 }),
  mediaType: varchar("media_type", { length: 8 }),
  addedAt: timestamp("added_at").defaultNow(),
}, (t) => [
  uniqueIndex("favorites_user_anime_uniq").on(t.userId, t.animeId),
]);

export const watchProgress = pgTable("watch_progress", {
  id: uuid("id").primaryKey().default(sql`gen_random_uuid()`),
  userId: varchar("user_id", { length: 128 }).notNull(),
  animeId: integer("anime_id").notNull(),
  animeType: varchar("anime_type", { length: 16 }).default("anime"),
  episodeNumber: integer("episode_number").notNull().default(1),
  seasonNumber: integer("season_number").default(1),
  tmdbId: varchar("tmdb_id", { length: 32 }),
  progressSeconds: real("progress_seconds").notNull().default(0),
  durationSeconds: real("duration_seconds").default(0),
  updatedAt: timestamp("updated_at").defaultNow(),
}, (t) => [
  uniqueIndex("progress_user_anime_ep_uniq").on(t.userId, t.animeId, t.episodeNumber, t.seasonNumber),
]);

export type WatchHistory = typeof watchHistory.$inferSelect;
export type Favorite = typeof favorites.$inferSelect;
export type WatchProgress = typeof watchProgress.$inferSelect;

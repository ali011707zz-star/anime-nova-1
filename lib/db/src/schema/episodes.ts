import { pgTable, text, integer, timestamp, real } from "drizzle-orm/pg-core";
import { createInsertSchema } from "drizzle-zod";
import { z } from "zod/v4";

export const episodesTable = pgTable("episodes", {
  id: text("id").primaryKey(),
  anilist_id: integer("anilist_id").notNull(),
  episode_number: integer("episode_number").notNull(),
  title: text("title").notNull().default(""),
  thumbnail: text("thumbnail").notNull().default(""),
  server_url: text("server_url"),
  server_name: text("server_name").notNull().default("سيرفر"),
  quality: text("quality").notNull().default("HD"),
  source: text("source").notNull().default("cached"),
  priority: integer("priority").notNull().default(0),
  episode_page_url: text("episode_page_url"),
  watch_url: text("watch_url"),
  created_at: timestamp("created_at").notNull().defaultNow(),
});

export const insertEpisodeSchema = createInsertSchema(episodesTable);
export type InsertEpisode = z.infer<typeof insertEpisodeSchema>;
export type EpisodeRow = typeof episodesTable.$inferSelect;

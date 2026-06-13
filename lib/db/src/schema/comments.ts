import { sql } from "drizzle-orm";
import { boolean, integer, pgTable, text, timestamp, uuid, varchar } from "drizzle-orm/pg-core";

export const comments = pgTable("comments", {
  id: uuid("id").primaryKey().default(sql`gen_random_uuid()`),
  userId: varchar("user_id", { length: 128 }).notNull(),
  username: varchar("username", { length: 64 }).notNull().default("مستخدم"),
  avatarUrl: text("avatar_url"),
  animeId: integer("anime_id"),
  episodeNumber: integer("episode_number"),
  animeType: varchar("anime_type", { length: 16 }).default("anime"),
  tmdbId: varchar("tmdb_id", { length: 32 }),
  text: text("text").notNull(),
  likes: integer("likes").notNull().default(0),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const commentLikes = pgTable("comment_likes", {
  id: uuid("id").primaryKey().default(sql`gen_random_uuid()`),
  commentId: uuid("comment_id").notNull().references(() => comments.id, { onDelete: "cascade" }),
  userId: varchar("user_id", { length: 128 }).notNull(),
  createdAt: timestamp("created_at").notNull().defaultNow(),
});

export type Comment = typeof comments.$inferSelect;
export type CommentLike = typeof commentLikes.$inferSelect;

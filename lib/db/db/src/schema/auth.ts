import { sql } from "drizzle-orm";
import { boolean, index, integer, jsonb, pgTable, smallint, text, timestamp, varchar } from "drizzle-orm/pg-core";

export const sessions = pgTable(
  "sessions",
  {
    sid: varchar("sid").primaryKey(),
    sess: jsonb("sess").notNull(),
    expire: timestamp("expire").notNull(),
  },
  (table) => [index("IDX_session_expire").on(table.expire)]
);

export const users = pgTable("users", {
  id: varchar("id").primaryKey().default(sql`gen_random_uuid()`),
  email: varchar("email").unique(),
  firstName: varchar("first_name"),
  lastName: varchar("last_name"),
  profileImageUrl: varchar("profile_image_url"),
  passwordHash: varchar("password_hash"),
  username: varchar("username"),
  displayName: varchar("display_name"),
  profileImageCustom: text("profile_image_custom"),
  avatarColor: smallint("avatar_color").default(sql`0`),
  emailVerified: boolean("email_verified").default(false),
  verificationCode: varchar("verification_code", { length: 6 }),
  verificationExpires: timestamp("verification_expires"),
  createdAt: timestamp("created_at").defaultNow(),
  updatedAt: timestamp("updated_at").defaultNow(),
});

export type UpsertUser = typeof users.$inferInsert;
export type User = typeof users.$inferSelect;

export const pendingVerifications = pgTable("pending_verifications", {
  email: text("email").primaryKey(),
  code: text("code").notNull(),
  type: text("type").notNull(),
  expiresAt: timestamp("expires_at").notNull(),
  attempts: integer("attempts").notNull().default(0),
  sentAt: timestamp("sent_at").notNull().defaultNow(),
});

import { pgTable, serial, text, timestamp } from "drizzle-orm/pg-core";

export const reports = pgTable("reports", {
  id:              serial("id").primaryKey(),
  type:            text("type").notNull().default("other"),
  message:         text("message").notNull(),
  page:            text("page"),
  userDisplayName: text("user_display_name"),
  createdAt:       timestamp("created_at").notNull().defaultNow(),
});

export type Report = typeof reports.$inferSelect;
export type NewReport = typeof reports.$inferInsert;

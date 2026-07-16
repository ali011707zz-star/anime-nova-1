/**
 * db.ts — Direct PostgreSQL connection via Drizzle ORM
 * Replaces the Supabase REST API (sb.ts) with a native DB connection.
 */
import { db, pool } from "@workspace/db";
export { db, pool };

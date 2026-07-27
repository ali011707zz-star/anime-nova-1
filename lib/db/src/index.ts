import { drizzle } from "drizzle-orm/node-postgres";
import pg from "pg";
import * as schema from "./schema";

const { Pool } = pg;

<<<<<<< HEAD
if (!process.env.DATABASE_URL) {
  throw new Error(
    "DATABASE_URL must be set. Did you forget to provision a database?",
  );
}

export const pool = new Pool({ connectionString: process.env.DATABASE_URL });
export const db = drizzle(pool, { schema });

=======
let pool: pg.Pool;
let db: ReturnType<typeof drizzle<typeof schema>>;

if (!process.env.DATABASE_URL) {
  console.warn("[db] ⚠️ DATABASE_URL not set — database disabled (auth/sessions unavailable)");
  pool = null as any;
  db = null as any;
} else {
  pool = new Pool({ connectionString: process.env.DATABASE_URL });
  db = drizzle(pool, { schema });
}

export { pool, db };
>>>>>>> 22277ebee9275f51cb7b54c9b3300c5144e2c175
export * from "./schema";

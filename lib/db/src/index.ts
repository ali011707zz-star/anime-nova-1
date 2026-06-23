import { drizzle } from "drizzle-orm/node-postgres";
  import pg from "pg";
  import * as schema from "./schema";

  const { Pool } = pg;

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
  export * from "./schema";
  
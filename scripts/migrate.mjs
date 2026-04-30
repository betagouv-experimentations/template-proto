// Applies pending Drizzle migrations against DATABASE_URL.
// Run automatically by the Docker container at startup; can also be
// invoked manually via `node scripts/migrate.mjs`.

import { drizzle } from "drizzle-orm/postgres-js";
import { migrate } from "drizzle-orm/postgres-js/migrator";
import postgres from "postgres";

const databaseUrl = process.env.DATABASE_URL;
if (!databaseUrl) {
  console.error("DATABASE_URL is not set; refusing to run migrations.");
  process.exit(1);
}

const sql = postgres(databaseUrl, { max: 1 });

try {
  console.log("Applying Drizzle migrations from ./drizzle ...");
  await migrate(drizzle(sql), { migrationsFolder: "./drizzle" });
  console.log("Migrations applied.");
} catch (err) {
  console.error("Migration failed:", err);
  process.exitCode = 1;
} finally {
  await sql.end();
}

import fs from "node:fs/promises";
import os from "node:os";
import path from "node:path";
const INTERVAL_MS = 15 * 60_000, TEMP_MAX_AGE_MS = 2 * 60 * 60_000;
const TEMP_PATTERNS = [/^nova-download-/, /^nova-vtt-/, /^nova-subtitle-/];
async function cleanTemp() {
  const now = Date.now(); let removed = 0, reclaimed = 0, entries = [];
  try { entries = await fs.readdir("/tmp", { withFileTypes: true }); } catch (err) { console.warn("[maintenance] cannot read /tmp:", err?.message || err); return { removed, reclaimed }; }
  for (const entry of entries) {
    if (!TEMP_PATTERNS.some((pattern) => pattern.test(entry.name))) continue;
    const target = path.join("/tmp", entry.name);
    try { const stat = await fs.stat(target); if (now - stat.mtimeMs < TEMP_MAX_AGE_MS) continue; await fs.rm(target, { recursive: true, force: true }); removed++; reclaimed += stat.size || 0; }
    catch (err) { console.warn("[maintenance] cleanup skipped:", target, err?.message || err); }
  }
  return { removed, reclaimed };
}
async function run() {
  const cleaned = await cleanTemp(); if (typeof global.gc === "function") global.gc(); const mem = process.memoryUsage();
  console.log(JSON.stringify({ event: "maintenance", cleaned, load1m: Number(os.loadavg()[0].toFixed(2)), cpuCount: os.cpus().length, rssMb: Math.round(mem.rss / 1048576), heapUsedMb: Math.round(mem.heapUsed / 1048576), systemFreeMb: Math.round(os.freemem() / 1048576) }));
}
await run(); setInterval(run, INTERVAL_MS);

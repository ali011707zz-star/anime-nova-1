import fs from "node:fs";
import path from "node:path";
import { execFile } from "node:child_process";
import { promisify } from "node:util";
import { pool } from "./db.js";

const execFileAsync = promisify(execFile);

export function getVaultPaths() {
  const vaultDir =
    process.env.MEDIA_VAULT_DIR ||
    (process.getuid && process.getuid() === 0
      ? "/var/lib/anime-nova-vault"
      : path.join(process.env.HOME || "/tmp", ".anime-nova-vault"));
  const backupDir =
    process.env.MEDIA_VAULT_BACKUP_DIR ||
    (process.getuid && process.getuid() === 0
      ? "/var/backups/anime-nova-vault"
      : path.join(process.env.HOME || "/tmp", ".anime-nova-vault-backups"));
  return {
    vaultDir,
    backupDir,
    dbPath: path.join(vaultDir, "media-catalog.sqlite"),
  };
}

export async function createVaultSnapshot(reason = "manual") {
  const scriptPath = fs.existsSync("/usr/local/bin/backup-media-vault.sh")
    ? "/usr/local/bin/backup-media-vault.sh"
    : path.resolve(process.cwd(), "scripts/backup-media-vault.sh");
  const { stdout, stderr } = await execFileAsync("bash", [scriptPath], {
    timeout: 60_000,
    env: { ...process.env, BACKUP_REASON: reason },
  });
  const { backupDir } = getVaultPaths();
  const backups = listBackupFiles(backupDir);
  return {
    ok: true,
    reason,
    latest: backups[0] || null,
    output: (stdout || stderr || "").trim(),
  };
}

function listBackupFiles(backupDir: string) {
  try {
    return fs
      .readdirSync(backupDir)
      .filter((f) => f.endsWith(".sqlite") || f.endsWith(".sql.gz"))
      .map((name) => {
        const st = fs.statSync(path.join(backupDir, name));
        return { name, sizeBytes: st.size, createdAt: st.mtime.toISOString() };
      })
      .sort((a, b) => b.createdAt.localeCompare(a.createdAt))
      .slice(0, 20);
  } catch {
    return [];
  }
}

export async function getMediaVaultReport() {
  const { vaultDir, backupDir, dbPath } = getVaultPaths();

  const [byTypeRes, totalsRes, logsRes] = await Promise.all([
    pool.query(`
      SELECT
        media_type,
        COUNT(*)::int AS titles_count,
        COUNT(*) FILTER (WHERE has_live_server = TRUE)::int AS playable_titles_count,
        COALESCE(SUM(episode_count), 0)::int AS total_episodes,
        COALESCE(SUM(playable_episode_count), 0)::int AS playable_episodes
      FROM film_vault_titles
      WHERE is_archived = FALSE
      GROUP BY media_type
      ORDER BY titles_count DESC
    `),
    pool.query(`
      SELECT
        (SELECT COUNT(*)::int FROM film_vault_titles WHERE is_archived = FALSE) AS total_titles,
        (SELECT COUNT(*)::int FROM film_vault_titles WHERE is_archived = FALSE AND has_live_server = TRUE) AS playable_titles,
        (SELECT COUNT(*)::int FROM film_vault_episodes WHERE is_archived = FALSE) AS total_episodes,
        (SELECT COUNT(*)::int FROM film_vault_episodes WHERE is_archived = FALSE AND has_live_server = TRUE) AS playable_episodes,
        (SELECT COALESCE(SUM(pages_processed), 0)::int FROM film_vault_sync_logs) AS total_pages_synced
    `),
    pool.query(`
      SELECT id, source_name, category_name, pages_processed, items_saved, status, notes, created_at
      FROM film_vault_sync_logs
      ORDER BY id DESC
      LIMIT 20
    `),
  ]);

  let sqliteSizeBytes = 0;
  try {
    sqliteSizeBytes = fs.statSync(dbPath).size;
  } catch {
    sqliteSizeBytes = 0;
  }

  const backups = listBackupFiles(backupDir);
  const totals = totalsRes.rows[0] || {};

  return {
    storage: {
      engine: "PostgreSQL 16 + Protected SQLite Mirror",
      vaultDir,
      backupDir,
      dbPath,
      sqliteSizeBytes,
      sqliteSizeMB: Number((sqliteSizeBytes / (1024 * 1024)).toFixed(2)),
      deleteProtection:
        "ENABLED (PostgreSQL BEFORE DELETE + BEFORE TRUNCATE Triggers + SQLite BEFORE DELETE Triggers + Read-Only Snapshots)",
    },
    summary: {
      totalTitles: Number(totals.total_titles || 0),
      playableTitles: Number(totals.playable_titles || 0),
      totalEpisodes: Number(totals.total_episodes || 0),
      playableEpisodes: Number(totals.playable_episodes || 0),
      totalPagesSynced: Number(totals.total_pages_synced || 0),
      breakdownByType: byTypeRes.rows,
    },
    backupsCount: backups.length,
    recentBackups: backups,
    recentSyncLogs: logsRes.rows,
  };
}

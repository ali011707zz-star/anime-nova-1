import fs from "node:fs";
import path from "node:path";
import crypto from "node:crypto";
import { createRequire } from "node:module";

const requireModule = createRequire(import.meta.url);

export interface MediaServerItem {
  name: string;
  url: string;
}

export interface MediaCatalogInput {
  wpPostId: number;
  slug?: string;
  rawTitle: string;
  titleAr?: string;
  titleEn?: string;
  mediaType: "movie" | "series" | "animation" | "anime_series" | "anime_movie" | "asian_movie" | "indian_movie";
  seasonNumber?: number;
  episodeNumber?: number;
  year?: number | null;
  posterUrl?: string;
  synopsis?: string;
  tmdbId?: number | null;
  imdbRating?: number | null;
  categories?: string[];
  servers: MediaServerItem[];
  downloadUrl?: string;
  sourceUrl?: string;
  publishedAt?: string;
}

function resolveVaultDirs() {
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

let _db: any = null;
let _lastDir = "";

export function getVaultPaths() {
  return resolveVaultDirs();
}

export function normalizeMediaTitle(rawTitle: string): {
  cleanSeriesKey: string;
  titleAr: string;
  titleEn: string;
  seasonNumber: number;
  episodeNumber: number;
  year: number | null;
  isEpisode: boolean;
} {
  const clean = rawTitle
    .replace(/&#8211;|&#8212;|&ndash;|&mdash;/g, "-")
    .replace(/&#038;|&amp;/g, "&")
    .replace(/\s+/g, " ")
    .trim();

  const yearMatch = clean.match(/\b(19\d{2}|20\d{2})\b/);
  const year = yearMatch ? Number.parseInt(yearMatch[1], 10) : null;

  const seasonWordMap: Record<string, number> = {
    "الاول": 1, "الأول": 1, "الثاني": 2, "الثالث": 3, "الرابع": 4,
    "الخامس": 5, "السادس": 6, "السابع": 7, "الثامن": 8, "التاسع": 9, "العاشر": 10,
  };

  let seasonNumber = 1;
  const seasonNumMatch = clean.match(/(?:الموسم|موسم|Season|S)\s*(\d{1,2})/i);
  if (seasonNumMatch) {
    seasonNumber = Number.parseInt(seasonNumMatch[1], 10);
  } else {
    for (const [word, num] of Object.entries(seasonWordMap)) {
      if (clean.includes(`الموسم ${word}`) || clean.includes(`موسم ${word}`)) {
        seasonNumber = num;
        break;
      }
    }
  }

  let episodeNumber = 1;
  let isEpisode = false;
  const epMatch = clean.match(/(?:الحلقة|حلقة|Episode|Ep)\s*(\d{1,4})/i);
  if (epMatch) {
    episodeNumber = Number.parseInt(epMatch[1], 10);
    isEpisode = true;
  }

  const stripped = clean
    .replace(/^(?:مشاهدة\s+و?\s*تحميل\s+|مشاهدة\s+|تحميل\s+)?(?:فيلم|مسلسل|انمي|أنمي|كرتون)\s+/i, "")
    .replace(/\s+(?:الموسم|موسم)\s+(?:\d+|\S+).*$/i, "")
    .replace(/\s+(?:الحلقة|حلقة)\s+\d+.*$/i, "")
    .replace(/\s+(?:مترجمة?|مدبلجة?|كاملة?|اون\s*لاين|أونلاين|HD|FHD|BluRay).*$/i, "")
    .trim();

  const enMatch = stripped.match(/[A-Za-z0-9][A-Za-z0-9\s:'’.,&-]{1,80}/);
  const titleEn = enMatch ? enMatch[0].replace(/\b(19\d{2}|20\d{2})\b/, "").trim() : "";
  const titleAr = stripped || clean;

  const cleanSeriesKey = (titleEn || titleAr)
    .toLowerCase()
    .replace(/\b(19\d{2}|20\d{2})\b/g, "")
    .replace(/[^\p{L}\p{N}]+/gu, "-")
    .replace(/^-+|-+$/g, "") || "unknown";

  return {
    cleanSeriesKey,
    titleAr,
    titleEn,
    seasonNumber,
    episodeNumber,
    year,
    isEpisode,
  };
}

export function getMediaVaultDb(): any {
  const { vaultDir, backupDir, dbPath } = getVaultPaths();
  if (_db && _lastDir === vaultDir) return _db;

  fs.mkdirSync(vaultDir, { recursive: true, mode: 0o750 });
  fs.mkdirSync(backupDir, { recursive: true, mode: 0o750 });

  const { DatabaseSync } = requireModule("node:sqlite");
  const db = new DatabaseSync(dbPath);
  db.exec(`
    PRAGMA journal_mode = WAL;
    PRAGMA synchronous = NORMAL;
    PRAGMA foreign_keys = ON;
    PRAGMA busy_timeout = 5000;

    CREATE TABLE IF NOT EXISTS media_titles (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      clean_series_key TEXT NOT NULL UNIQUE,
      title_ar TEXT NOT NULL,
      title_en TEXT NOT NULL DEFAULT '',
      media_type TEXT NOT NULL,
      year INTEGER,
      poster_url TEXT NOT NULL DEFAULT '',
      synopsis TEXT NOT NULL DEFAULT '',
      tmdb_id INTEGER,
      imdb_rating REAL,
      categories_json TEXT NOT NULL DEFAULT '[]',
      season_count INTEGER NOT NULL DEFAULT 1,
      episode_count INTEGER NOT NULL DEFAULT 1,
      is_archived INTEGER NOT NULL DEFAULT 0,
      created_at TEXT NOT NULL DEFAULT (datetime('now')),
      updated_at TEXT NOT NULL DEFAULT (datetime('now'))
    );

    CREATE INDEX IF NOT EXISTS idx_media_titles_type ON media_titles(media_type);
    CREATE INDEX IF NOT EXISTS idx_media_titles_year ON media_titles(year DESC);

    CREATE TABLE IF NOT EXISTS media_episodes (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      wp_post_id INTEGER NOT NULL UNIQUE,
      title_id INTEGER NOT NULL REFERENCES media_titles(id),
      slug TEXT NOT NULL DEFAULT '',
      raw_title TEXT NOT NULL,
      season_number INTEGER NOT NULL DEFAULT 1,
      episode_number INTEGER NOT NULL DEFAULT 1,
      servers_json TEXT NOT NULL DEFAULT '[]',
      download_url TEXT NOT NULL DEFAULT '',
      source_url TEXT NOT NULL DEFAULT '',
      published_at TEXT,
      is_archived INTEGER NOT NULL DEFAULT 0,
      created_at TEXT NOT NULL DEFAULT (datetime('now')),
      updated_at TEXT NOT NULL DEFAULT (datetime('now'))
    );

    CREATE INDEX IF NOT EXISTS idx_media_episodes_title ON media_episodes(title_id, season_number, episode_number);

    CREATE TABLE IF NOT EXISTS vault_sync_logs (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      source_name TEXT NOT NULL,
      category_name TEXT NOT NULL,
      pages_processed INTEGER NOT NULL DEFAULT 0,
      items_saved INTEGER NOT NULL DEFAULT 0,
      status TEXT NOT NULL DEFAULT 'completed',
      notes TEXT NOT NULL DEFAULT '',
      created_at TEXT NOT NULL DEFAULT (datetime('now'))
    );

    CREATE TRIGGER IF NOT EXISTS prevent_media_titles_delete
    BEFORE DELETE ON media_titles
    BEGIN
      SELECT RAISE(ABORT, 'Accidental deletion blocked: media_titles is protected. Use soft archive (is_archived = 1) instead.');
    END;

    CREATE TRIGGER IF NOT EXISTS prevent_media_episodes_delete
    BEFORE DELETE ON media_episodes
    BEGIN
      SELECT RAISE(ABORT, 'Accidental deletion blocked: media_episodes is protected. Use soft archive (is_archived = 1) instead.');
    END;
  `);

  _db = db;
  _lastDir = vaultDir;
  return db;
}

export function upsertMediaCatalogItem(input: MediaCatalogInput): { titleId: number; episodeId: number } {
  const db = getMediaVaultDb();
  const parsed = normalizeMediaTitle(input.rawTitle);
  const seriesKey = `${input.mediaType}:${parsed.cleanSeriesKey}`;
  const titleAr = input.titleAr || parsed.titleAr;
  const titleEn = input.titleEn || parsed.titleEn;
  const year = input.year !== undefined ? input.year : parsed.year;
  const seasonNumber = input.seasonNumber ?? parsed.seasonNumber;
  const episodeNumber = input.episodeNumber ?? parsed.episodeNumber;
  const categoriesJson = JSON.stringify(input.categories || []);
  const serversJson = JSON.stringify(input.servers || []);

  const upsertTitleStmt = db.prepare(`
    INSERT INTO media_titles (
      clean_series_key, title_ar, title_en, media_type, year, poster_url, synopsis, tmdb_id, imdb_rating, categories_json, updated_at
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
    ON CONFLICT(clean_series_key) DO UPDATE SET
      title_ar = COALESCE(NULLIF(excluded.title_ar, ''), media_titles.title_ar),
      title_en = COALESCE(NULLIF(excluded.title_en, ''), media_titles.title_en),
      year = COALESCE(excluded.year, media_titles.year),
      poster_url = COALESCE(NULLIF(excluded.poster_url, ''), media_titles.poster_url),
      synopsis = COALESCE(NULLIF(excluded.synopsis, ''), media_titles.synopsis),
      tmdb_id = COALESCE(excluded.tmdb_id, media_titles.tmdb_id),
      imdb_rating = COALESCE(excluded.imdb_rating, media_titles.imdb_rating),
      updated_at = datetime('now')
    RETURNING id
  `);

  const titleRow = upsertTitleStmt.get(
    seriesKey,
    titleAr,
    titleEn,
    input.mediaType,
    year ?? null,
    input.posterUrl || "",
    input.synopsis || "",
    input.tmdbId ?? null,
    input.imdbRating ?? null,
    categoriesJson,
  ) as { id: number };

  const titleId = Number(titleRow.id);

  const upsertEpStmt = db.prepare(`
    INSERT INTO media_episodes (
      wp_post_id, title_id, slug, raw_title, season_number, episode_number, servers_json, download_url, source_url, published_at, updated_at
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
    ON CONFLICT(wp_post_id) DO UPDATE SET
      title_id = excluded.title_id,
      raw_title = excluded.raw_title,
      season_number = excluded.season_number,
      episode_number = excluded.episode_number,
      servers_json = CASE WHEN excluded.servers_json != '[]' THEN excluded.servers_json ELSE media_episodes.servers_json END,
      download_url = COALESCE(NULLIF(excluded.download_url, ''), media_episodes.download_url),
      source_url = COALESCE(NULLIF(excluded.source_url, ''), media_episodes.source_url),
      updated_at = datetime('now')
    RETURNING id
  `);

  const epRow = upsertEpStmt.get(
    input.wpPostId,
    titleId,
    input.slug || "",
    input.rawTitle,
    seasonNumber,
    episodeNumber,
    serversJson,
    input.downloadUrl || "",
    input.sourceUrl || "",
    input.publishedAt || null,
  ) as { id: number };

  db.prepare(`
    UPDATE media_titles SET
      season_count = (SELECT COUNT(DISTINCT season_number) FROM media_episodes WHERE title_id = ? AND is_archived = 0),
      episode_count = (SELECT COUNT(*) FROM media_episodes WHERE title_id = ? AND is_archived = 0),
      updated_at = datetime('now')
    WHERE id = ?
  `).run(titleId, titleId, titleId);

  return { titleId, episodeId: Number(epRow.id) };
}

export function createVaultSnapshot(reason = "manual"): {
  snapshotPath: string;
  checksumPath: string;
  sha256: string;
  sizeBytes: number;
} {
  const db = getMediaVaultDb();
  const { backupDir } = getVaultPaths();
  fs.mkdirSync(backupDir, { recursive: true, mode: 0o750 });

  const ts = new Date().toISOString().replace(/[:.]/g, "-");
  const safeReason = reason.replace(/[^a-zA-Z0-9_-]/g, "_").slice(0, 32);
  const snapshotPath = path.join(backupDir, `media-catalog-${ts}-${safeReason}.sqlite`);
  const escapedPath = snapshotPath.replace(/'/g, "''");

  db.exec(`VACUUM INTO '${escapedPath}'`);

  const buf = fs.readFileSync(snapshotPath);
  const sha256 = crypto.createHash("sha256").update(buf).digest("hex");
  const checksumPath = `${snapshotPath}.sha256`;
  fs.writeFileSync(checksumPath, `${sha256}  ${path.basename(snapshotPath)}\n`, { mode: 0o440 });

  try {
    fs.chmodSync(snapshotPath, 0o440);
  } catch {
    // ignore on filesystems that don't support chmod
  }

  return {
    snapshotPath,
    checksumPath,
    sha256,
    sizeBytes: buf.byteLength,
  };
}

export function getMediaVaultReport() {
  const db = getMediaVaultDb();
  const { vaultDir, backupDir, dbPath } = getVaultPaths();

  const byType = db.prepare(`
    SELECT
      media_type,
      COUNT(*) as titles_count,
      SUM(episode_count) as total_episodes
    FROM media_titles
    WHERE is_archived = 0
    GROUP BY media_type
  `).all() as Array<{ media_type: string; titles_count: number; total_episodes: number }>;

  const totals = db.prepare(`
    SELECT
      (SELECT COUNT(*) FROM media_titles WHERE is_archived = 0) as total_titles,
      (SELECT COUNT(*) FROM media_episodes WHERE is_archived = 0) as total_episodes,
      (SELECT COALESCE(SUM(pages_processed), 0) FROM vault_sync_logs) as total_pages_synced
  `).get() as { total_titles: number; total_episodes: number; total_pages_synced: number };

  const integrityRow = db.prepare("PRAGMA quick_check").get() as { quick_check?: string } | undefined;
  const recentLogs = db.prepare(`
    SELECT id, source_name, category_name, pages_processed, items_saved, status, notes, created_at
    FROM vault_sync_logs
    ORDER BY id DESC
    LIMIT 20
  `).all();

  let dbSizeBytes = 0;
  try {
    dbSizeBytes = fs.statSync(dbPath).size;
  } catch {
    dbSizeBytes = 0;
  }

  let backups: Array<{ name: string; sizeBytes: number; createdAt: string }> = [];
  try {
    backups = fs
      .readdirSync(backupDir)
      .filter((f) => f.endsWith(".sqlite"))
      .map((name) => {
        const st = fs.statSync(path.join(backupDir, name));
        return { name, sizeBytes: st.size, createdAt: st.mtime.toISOString() };
      })
      .sort((a, b) => b.createdAt.localeCompare(a.createdAt))
      .slice(0, 15);
  } catch {
    backups = [];
  }

  return {
    storage: {
      vaultDir,
      backupDir,
      dbPath,
      dbSizeBytes,
      dbSizeMB: Number((dbSizeBytes / (1024 * 1024)).toFixed(2)),
      integrity: integrityRow?.quick_check || "ok",
      deleteProtection: "ENABLED (SQLite BEFORE DELETE Trigger + Read-Only Snapshots)",
    },
    summary: {
      totalTitles: Number(totals?.total_titles || 0),
      totalEpisodes: Number(totals?.total_episodes || 0),
      totalPagesSynced: Number(totals?.total_pages_synced || 0),
      breakdownByType: byType,
    },
    backupsCount: backups.length,
    recentBackups: backups,
    recentSyncLogs: recentLogs,
  };
}

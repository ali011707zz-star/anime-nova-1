/**
 * supabaseMigrate.ts
 * ينقل البيانات من Supabase إلى Replit PostgreSQL تلقائياً عند بدء الخادم.
 * يعمل فقط إذا كانت SUPABASE_URL و SUPABASE_SERVICE_ROLE_KEY موجودتَين.
 * يستخدم ON CONFLICT DO NOTHING لتجنب التكرار — آمن للتشغيل المتعدد.
 */
import { pool } from "./db.js";
import { logger } from "./logger.js";

const SB_URL = process.env.SUPABASE_URL;
const SB_KEY  = process.env.SUPABASE_SERVICE_ROLE_KEY;

async function sbFetch(table: string): Promise<any[]> {
  const r = await fetch(`${SB_URL}/rest/v1/${table}?select=*&limit=5000`, {
    headers: {
      "apikey": SB_KEY!,
      "Authorization": `Bearer ${SB_KEY}`,
    },
  });
  if (!r.ok) return [];
  const data = await r.json();
  return Array.isArray(data) ? data : [];
}

export async function runSupabaseMigration(): Promise<void> {
  if (!SB_URL || !SB_KEY) return;

  try {
    logger.info("[migrate] بدء مزامنة البيانات من Supabase...");

    // ── users ────────────────────────────────────────────────
    const users = await sbFetch("users");
    let count = 0;
    for (const u of users) {
      try {
        await pool.query(
          `INSERT INTO users
             (id, email, username, display_name, first_name, last_name,
              password_hash, avatar_color, email_verified, profile_image_url,
              created_at, updated_at)
           VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12)
           ON CONFLICT (id) DO NOTHING`,
          [
            u.id, u.email, u.username, u.display_name,
            u.first_name, u.last_name, u.password_hash,
            u.avatar_color ?? 0, u.email_verified ?? false,
            u.profile_image_url ?? null,
            u.created_at ? new Date(u.created_at) : new Date(),
            new Date(),
          ]
        );
        count++;
      } catch { /* تكرار أو خطأ — تجاهل */ }
    }
    if (count) logger.info(`[migrate] users: ${count} مُزامَن`);

    // ── watch_history ────────────────────────────────────────
    const wh = await sbFetch("watch_history");
    count = 0;
    for (const r of wh) {
      try {
        await pool.query(
          `INSERT INTO watch_history
             (id, user_id, anime_id, anime_title, anime_cover, anime_type,
              episode_number, season_number, tmdb_id, media_type, watched_at)
           VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11)
           ON CONFLICT (id) DO NOTHING`,
          [
            r.id, r.user_id, r.anime_id, r.anime_title ?? null,
            r.anime_cover ?? null, r.anime_type ?? "anime",
            r.episode_number ?? 1, r.season_number ?? 1,
            r.tmdb_id ?? null, r.media_type ?? null,
            r.watched_at ? new Date(r.watched_at) : new Date(),
          ]
        );
        count++;
      } catch { /* تكرار — تجاهل */ }
    }
    if (count) logger.info(`[migrate] watch_history: ${count} مُزامَن`);

    // ── watch_progress ───────────────────────────────────────
    const wp = await sbFetch("watch_progress");
    count = 0;
    for (const r of wp) {
      try {
        await pool.query(
          `INSERT INTO watch_progress
             (id, user_id, anime_id, anime_type, episode_number, season_number,
              tmdb_id, progress_seconds, duration_seconds, updated_at)
           VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)
           ON CONFLICT (id) DO NOTHING`,
          [
            r.id, r.user_id, r.anime_id, r.anime_type ?? "anime",
            r.episode_number ?? 1, r.season_number ?? 1,
            r.tmdb_id ?? null, r.progress_seconds ?? 0,
            r.duration_seconds ?? 0,
            r.updated_at ? new Date(r.updated_at) : new Date(),
          ]
        );
        count++;
      } catch { /* تكرار — تجاهل */ }
    }
    if (count) logger.info(`[migrate] watch_progress: ${count} مُزامَن`);

    // ── comments ─────────────────────────────────────────────
    const cm = await sbFetch("comments");
    count = 0;
    for (const r of cm) {
      try {
        await pool.query(
          `INSERT INTO comments
             (id, user_id, username, avatar_url, anime_id, episode_number,
              anime_type, tmdb_id, text, likes, parent_id, reply_to_username,
              created_at, updated_at)
           VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14)
           ON CONFLICT (id) DO NOTHING`,
          [
            r.id, r.user_id, r.username ?? "مستخدم", r.avatar_url ?? null,
            r.anime_id ?? null, r.episode_number ?? null,
            r.anime_type ?? "anime", r.tmdb_id ?? null,
            r.text ?? "", r.likes ?? 0,
            r.parent_id ?? null, r.reply_to_username ?? null,
            r.created_at ? new Date(r.created_at) : new Date(),
            r.updated_at ? new Date(r.updated_at) : new Date(),
          ]
        );
        count++;
      } catch { /* تكرار — تجاهل */ }
    }
    if (count) logger.info(`[migrate] comments: ${count} مُزامَن`);

    // ── comment_likes ────────────────────────────────────────
    const cl = await sbFetch("comment_likes");
    count = 0;
    for (const r of cl) {
      try {
        await pool.query(
          `INSERT INTO comment_likes (id, comment_id, user_id, created_at)
           VALUES ($1,$2,$3,$4)
           ON CONFLICT (id) DO NOTHING`,
          [r.id, r.comment_id, r.user_id,
           r.created_at ? new Date(r.created_at) : new Date()]
        );
        count++;
      } catch { /* تكرار — تجاهل */ }
    }
    if (count) logger.info(`[migrate] comment_likes: ${count} مُزامَن`);

    logger.info("[migrate] ✅ مزامنة Supabase اكتملت");
  } catch (err) {
    logger.warn({ err }, "[migrate] ⚠️ فشلت مزامنة Supabase — التطبيق يعمل بشكل طبيعي");
  }
}

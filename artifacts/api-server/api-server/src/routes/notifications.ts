/**
 * notifications.ts — إشعارات الحلقات الجديدة والأنيميشن داخل التطبيق
 */
import { Router, type Request, type Response } from "express";
import pg from "pg";

const router = Router();

let _pool: pg.Pool | null = null;
function getPool(): pg.Pool | null {
  if (!process.env.DATABASE_URL) return null;
  if (!_pool) _pool = new pg.Pool({ connectionString: process.env.DATABASE_URL, max: 3 });
  return _pool;
}

// ── نوع الإشعار ──────────────────────────────────────────────────────────
export type NotifType = "anime_episode" | "animation_new";

export interface NotifInsert {
  type: NotifType;
  title: string;
  title_ar?: string;
  body?: string;
  image_url?: string;
  link_path?: string;
  anime_id?: number;
  tmdb_id?: string;
  episode_num?: number;
}

// ── مفتاح تتبّع الإشعارات المُضافة (لمنع التكرار في الذاكرة) ────────────
const _addedKeys = new Set<string>();

export async function saveNotification(n: NotifInsert): Promise<void> {
  const pool = getPool();
  if (!pool) return;

  const dedupKey = `${n.type}:${n.anime_id ?? n.tmdb_id ?? n.title}:${n.episode_num ?? ""}`;
  if (_addedKeys.has(dedupKey)) return;
  _addedKeys.add(dedupKey);

  try {
    // تحقق أنه غير موجود في آخر 48 ساعة
    const existing = await pool.query(
      `SELECT id FROM notifications WHERE type=$1 AND title=$2 AND episode_num IS NOT DISTINCT FROM $3
       AND created_at > NOW() - INTERVAL '48 hours' LIMIT 1`,
      [n.type, n.title, n.episode_num ?? null]
    );
    if (existing.rows.length > 0) return;

    await pool.query(
      `INSERT INTO notifications (type, title, title_ar, body, image_url, link_path, anime_id, tmdb_id, episode_num)
       VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9)`,
      [
        n.type,
        n.title,
        n.title_ar ?? null,
        n.body ?? null,
        n.image_url ?? null,
        n.link_path ?? null,
        n.anime_id ?? null,
        n.tmdb_id ?? null,
        n.episode_num ?? null,
      ]
    );
  } catch (e: any) {
    console.warn("[notifications] saveNotification error:", e.message);
  }
}

// ── GET /api/notifications — جلب آخر 40 إشعار ─────────────────────────
router.get("/notifications", async (_req: Request, res: Response) => {
  const pool = getPool();
  if (!pool) return res.json([]);
  try {
    const result = await pool.query(
      `SELECT * FROM notifications ORDER BY created_at DESC LIMIT 40`
    );
    res.json(result.rows);
  } catch {
    res.json([]);
  }
});

// ── GET /api/notifications/unread-count ────────────────────────────────
router.get("/notifications/unread-count", async (_req: Request, res: Response) => {
  const pool = getPool();
  if (!pool) return res.json({ count: 0 });
  try {
    const result = await pool.query(
      `SELECT COUNT(*) AS count FROM notifications WHERE is_read = FALSE`
    );
    res.json({ count: Number(result.rows[0]?.count ?? 0) });
  } catch {
    res.json({ count: 0 });
  }
});

// ── POST /api/notifications/mark-all-read ─────────────────────────────
router.post("/notifications/mark-all-read", async (_req: Request, res: Response) => {
  const pool = getPool();
  if (!pool) return res.json({ ok: true });
  try {
    await pool.query(`UPDATE notifications SET is_read = TRUE WHERE is_read = FALSE`);
    res.json({ ok: true });
  } catch {
    res.json({ ok: false });
  }
});

// ── POST /api/notifications/mark-read/:id ─────────────────────────────
router.post("/notifications/mark-read/:id", async (req: Request, res: Response) => {
  const pool = getPool();
  if (!pool) return res.json({ ok: true });
  try {
    await pool.query(`UPDATE notifications SET is_read = TRUE WHERE id=$1`, [req.params.id]);
    res.json({ ok: true });
  } catch {
    res.json({ ok: false });
  }
});

// ── POST /api/notifications/delete-old — تنظيف الإشعارات القديمة ──────
router.post("/notifications/delete-old", async (_req: Request, res: Response) => {
  const pool = getPool();
  if (!pool) return res.json({ ok: true });
  try {
    await pool.query(`DELETE FROM notifications WHERE created_at < NOW() - INTERVAL '30 days'`);
    res.json({ ok: true });
  } catch {
    res.json({ ok: false });
  }
});

/* ── Animation Scheduler ─────────────────────────────────────────────────
 * يفحص TMDB كل 60 دقيقة لأجدد الأنيميشن (Animation) ويحفظ إشعارات
 * لكل محتوى جديد لم يسبق إشعاره.
 */
const TMDB_KEY  = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_BASE = "https://api.themoviedb.org/3";
const _notifiedAnimation = new Set<string>();
let _animLastPage = 0;

async function checkNewAnimation(): Promise<void> {
  const pool = getPool();
  if (!pool) return;

  try {
    // احضر آخر تنبيهات أنيميشن لتحديث الـ dedup set
    if (_notifiedAnimation.size === 0) {
      const rows = await pool.query(
        `SELECT tmdb_id FROM notifications WHERE type='animation_new' AND created_at > NOW() - INTERVAL '7 days'`
      );
      for (const r of rows.rows) {
        if (r.tmdb_id) _notifiedAnimation.add(r.tmdb_id);
      }
    }

    // جلب ترند الأنيميشن من TMDB
    const url = `${TMDB_BASE}/discover/movie?api_key=${TMDB_KEY}&with_genres=16&sort_by=popularity.desc&page=1&language=ar`;
    const r = await fetch(url, { signal: AbortSignal.timeout(10_000) });
    if (!r.ok) return;
    const data = await r.json() as any;
    const results: any[] = data?.results ?? [];

    let added = 0;
    for (const item of results.slice(0, 10)) {
      const id = String(item.id);
      if (_notifiedAnimation.has(id)) continue;
      _notifiedAnimation.add(id);

      const titleAr = item.title || item.name || "";
      const titleEn = item.original_title || item.original_name || titleAr;
      const poster = item.poster_path ? `https://image.tmdb.org/t/p/w342${item.poster_path}` : undefined;

      await saveNotification({
        type: "animation_new",
        title: titleEn,
        title_ar: titleAr !== titleEn ? titleAr : undefined,
        body: item.release_date ? `${item.release_date.slice(0, 4)} · أنيميشن جديد` : "أنيميشن جديد",
        image_url: poster,
        link_path: `/animation/${id}`,
        tmdb_id: id,
      });
      added++;
    }
    if (added > 0) console.log(`[anim-scheduler] ✅ أُضيف ${added} إشعار أنيميشن`);
  } catch (e: any) {
    console.warn("[anim-scheduler] error:", e.message);
  }
}

let _animSchedRunning = false;
export function startAnimationNotificationScheduler(): void {
  if (_animSchedRunning) return;
  _animSchedRunning = true;
  // أول فحص بعد 20 ثانية من بدء السيرفر
  setTimeout(() => {
    checkNewAnimation().catch(() => {});
    setInterval(() => checkNewAnimation().catch(() => {}), 60 * 60_000); // كل 60 دقيقة
  }, 20_000);
  console.log("[anim-scheduler] 🎬 مُشغَّل — يفحص TMDB Animation كل 60 دقيقة");
}

export default router;

/**
 * dbRelay.ts — يُعيد توجيه طلبات Supabase REST API
 * يعمل فقط على الخادم الذي عنده SUPABASE_URL (مثل Orkestr)
 * يحمي الطلبات بـ APP_SECRET
 */
import { Router, type Request, type Response } from "express";

const router = Router();

const SUPABASE_URL = process.env.SUPABASE_URL || "";
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_KEY || "";
const APP_SECRET   = process.env.APP_SECRET || "anime-nova-default-change-me-aabbccdd";

function authOk(req: Request): boolean {
  const h = req.headers["x-relay-secret"] as string | undefined;
  return h === APP_SECRET;
}

function sbHeaders(extra: Record<string, string> = {}) {
  return {
    "apikey":        SUPABASE_KEY,
    "Authorization": `Bearer ${SUPABASE_KEY}`,
    "Content-Type":  "application/json",
    ...extra,
  };
}

/* ── GET /api/db-relay/:table — SELECT ── */
router.get("/db-relay/:table", async (req: Request, res: Response) => {
  if (!authOk(req))   return res.status(401).json({ error: "unauthorized" });
  if (!SUPABASE_URL)  return res.status(503).json({ error: "Supabase not configured on this server" });

  const { table } = req.params;
  const qs = new URLSearchParams(req.query as Record<string, string>).toString();
  const url = `${SUPABASE_URL}/rest/v1/${table}${qs ? "?" + qs : ""}`;

  try {
    const r = await fetch(url, { headers: sbHeaders(), signal: AbortSignal.timeout(10000) });
    const data = await r.json();
    return res.status(r.status).json(data);
  } catch (e: any) {
    return res.status(500).json({ error: e.message });
  }
});

/* ── POST /api/db-relay/:table — INSERT / UPSERT ── */
router.post("/db-relay/:table", async (req: Request, res: Response) => {
  if (!authOk(req))   return res.status(401).json({ error: "unauthorized" });
  if (!SUPABASE_URL)  return res.status(503).json({ error: "Supabase not configured on this server" });

  const { table } = req.params;
  const qs = new URLSearchParams(req.query as Record<string, string>).toString();
  const url = `${SUPABASE_URL}/rest/v1/${table}${qs ? "?" + qs : ""}`;
  const prefer = (req.headers["prefer"] as string) || "return=representation";

  try {
    const r = await fetch(url, {
      method: "POST",
      headers: sbHeaders({ "Prefer": prefer }),
      body: JSON.stringify(req.body),
      signal: AbortSignal.timeout(10000),
    });
    const data = await r.json();
    return res.status(r.status).json(data);
  } catch (e: any) {
    return res.status(500).json({ error: e.message });
  }
});

/* ── PATCH /api/db-relay/:table — UPDATE ── */
router.patch("/db-relay/:table", async (req: Request, res: Response) => {
  if (!authOk(req))   return res.status(401).json({ error: "unauthorized" });
  if (!SUPABASE_URL)  return res.status(503).json({ error: "Supabase not configured on this server" });

  const { table } = req.params;
  const qs = new URLSearchParams(req.query as Record<string, string>).toString();
  const url = `${SUPABASE_URL}/rest/v1/${table}${qs ? "?" + qs : ""}`;

  try {
    const r = await fetch(url, {
      method: "PATCH",
      headers: sbHeaders({ "Prefer": "return=representation" }),
      body: JSON.stringify(req.body),
      signal: AbortSignal.timeout(10000),
    });
    const data = await r.json();
    return res.status(r.status).json(data);
  } catch (e: any) {
    return res.status(500).json({ error: e.message });
  }
});

/* ── DELETE /api/db-relay/:table — DELETE ── */
router.delete("/db-relay/:table", async (req: Request, res: Response) => {
  if (!authOk(req))   return res.status(401).json({ error: "unauthorized" });
  if (!SUPABASE_URL)  return res.status(503).json({ error: "Supabase not configured on this server" });

  const { table } = req.params;
  const qs = new URLSearchParams(req.query as Record<string, string>).toString();
  const url = `${SUPABASE_URL}/rest/v1/${table}${qs ? "?" + qs : ""}`;

  try {
    const r = await fetch(url, {
      method: "DELETE",
      headers: sbHeaders(),
      signal: AbortSignal.timeout(10000),
    });
    if (r.status === 204) return res.status(204).send();
    const data = await r.json();
    return res.status(r.status).json(data);
  } catch (e: any) {
    return res.status(500).json({ error: e.message });
  }
});

export default router;

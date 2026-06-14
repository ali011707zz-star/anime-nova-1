import { Router, type Request, type Response } from "express";
import { setConfig, resetTransporter } from "../auth/emailService.js";
import { getEmailUser } from "../auth/emailAuth.js";

const router = Router();

async function isAdmin(req: Request): Promise<boolean> {
  const eu = await getEmailUser(req);
  return !!eu?.id;
}

router.post("/admin/smtp-config", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  const { smtp_pass, smtp_user, smtp_host, smtp_port } = req.body || {};

  if (!smtp_pass)
    return res.status(400).json({ error: "smtp_pass مطلوب" });

  await setConfig("smtp_pass", String(smtp_pass));
  if (smtp_user) await setConfig("smtp_user", String(smtp_user));
  if (smtp_host) await setConfig("smtp_host", String(smtp_host));
  if (smtp_port) await setConfig("smtp_port", String(smtp_port));

  resetTransporter();

  return res.json({ ok: true, message: "تم حفظ إعدادات SMTP في قاعدة البيانات ✓" });
});

router.get("/admin/smtp-status", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  const { pool } = await import("../lib/db.js");
  const r = await pool.query(`SELECT key FROM app_config WHERE key LIKE 'smtp_%'`);
  const keys = r.rows.map((row: any) => row.key);
  return res.json({
    configured: keys,
    hasUser: keys.includes("smtp_user"),
    hasPass: keys.includes("smtp_pass"),
  });
});

export default router;

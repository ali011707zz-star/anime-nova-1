import { Router, type Request, type Response } from "express";
import { createHash, randomInt } from "node:crypto";
import { sbDelete, sbInsert, sbPatch, sbSelect } from "../lib/supabaseClient.js";
import {
  checkRateLimit,
  getDeviceUserTokenInfo,
  getMobileUserId,
  issueDeviceUserToken,
} from "../lib/security.js";

const router = Router();
const CODE_TTL_MS = 10 * 60 * 1000;
const CODE_LENGTH = 6;
const MAX_ACTIVE_DEVICES = 8;

function signedInUserId(req: Request): string | null {
  return (
    (req.session as any)?.userId ||
    (req.session as any)?.emailUserId ||
    getMobileUserId(req) ||
    null
  );
}

function requestIp(req: Request): string {
  return (
    (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
    req.socket.remoteAddress ||
    "unknown"
  );
}

function hashCode(code: string): string {
  return createHash("sha256").update(code, "utf8").digest("hex");
}

function normalizeCode(value: unknown): string {
  return String(value ?? "").replace(/\s/g, "");
}

function normalizeDeviceId(value: unknown): string {
  return String(value ?? "").trim().slice(0, 160);
}

function deviceSummary(row: any) {
  return {
    id: String(row.id),
    deviceId: row.device_id,
    name: row.device_name || "جهاز التلفاز",
    platform: row.platform || "android-tv",
    linkedAt: row.linked_at,
    lastSeenAt: row.last_seen_at || row.linked_at,
  };
}

function userPayload(user: any, deviceId: string) {
  const token = issueDeviceUserToken(String(user.id), deviceId);
  return {
    id: user.id,
    email: user.email,
    displayName: user.display_name ?? user.displayName,
    username: user.username,
    avatarColor: user.avatar_color ?? 0,
    profileImageUrl: user.profile_image_custom ?? user.profile_image_url ?? null,
    authType: "device-link" as const,
    createdAt: user.created_at,
    plan: user.plan ?? "free",
    expiresAt: user.expires_at ?? null,
    authToken: token.token,
    authTokenExp: token.exp,
    deviceId,
  };
}

/** POST /api/device-link/request — create a short-lived code on the signed-in phone. */
router.post("/device-link/request", async (req: Request, res: Response) => {
  const userId = signedInUserId(req);
  if (!userId) return res.status(401).json({ error: "سجّل الدخول من الهاتف أولاً" });

  if (!checkRateLimit(`device-link-create:${userId}`, 8, 15 * 60_000)) {
    return res.status(429).json({ error: "أنشأت رموزاً كثيرة. حاول بعد قليل." });
  }

  try {
    // A user should have only one active code. Old codes are unusable after this.
    await sbDelete("device_link_codes", { user_id: `eq.${userId}`, claimed_at: "is.null" });

    let code = "";
    let inserted: any = null;
    for (let attempt = 0; attempt < 5 && !inserted; attempt++) {
      code = String(randomInt(0, 1_000_000)).padStart(CODE_LENGTH, "0");
      const codeHash = hashCode(code);
      const collision = await sbSelect("device_link_codes", {
        code_hash: `eq.${codeHash}`,
        claimed_at: "is.null",
      }, { limit: 1 });
      if (collision.length) continue;

      const expiresAt = new Date(Date.now() + CODE_TTL_MS).toISOString();
      inserted = await sbInsert("device_link_codes", {
        user_id: userId,
        code_hash: codeHash,
        expires_at: expiresAt,
        attempts: 0,
      });
      if (inserted) {
        return res.json({
          ok: true,
          requestId: inserted.id,
          code,
          expiresAt,
          ttlSeconds: Math.floor(CODE_TTL_MS / 1000),
        });
      }
    }

    return res.status(503).json({ error: "تعذّر إنشاء رمز الربط، حاول مرة أخرى" });
  } catch (err) {
    console.error("[device-link] request:", err);
    return res.status(503).json({ error: "تعذّر الاتصال بالخادم" });
  }
});

/** POST /api/device-link/claim — exchange the code for a revocable TV token. */
router.post("/device-link/claim", async (req: Request, res: Response) => {
  const ip = requestIp(req);
  const code = normalizeCode(req.body?.code);
  const deviceId = normalizeDeviceId(req.body?.deviceId);
  const deviceName = String(req.body?.deviceName || "Android TV").trim().slice(0, 80) || "Android TV";
  const platform = String(req.body?.platform || "android-tv").trim().slice(0, 30) || "android-tv";

  if (!/^\d{6}$/.test(code)) {
    return res.status(400).json({ error: "أدخل الرمز المكوّن من 6 أرقام" });
  }
  if (!/^[A-Za-z0-9._:-]{6,160}$/.test(deviceId)) {
    return res.status(400).json({ error: "معرّف جهاز التلفاز غير صالح" });
  }
  // Six-digit codes are deliberately short-lived, so keep guessing tightly rate-limited.
  if (!checkRateLimit(`device-link-claim:${ip}`, 10, 60_000)) {
    return res.status(429).json({ error: "محاولات كثيرة. انتظر دقيقة ثم حاول مجدداً." });
  }

  try {
    const codeHash = hashCode(code);
    const rows = await sbSelect("device_link_codes", {
      code_hash: `eq.${codeHash}`,
      claimed_at: "is.null",
    }, { limit: 1 });
    const pending = rows[0];
    if (!pending) return res.status(400).json({ error: "الرمز غير صحيح أو مستخدم من قبل" });

    const expiresAt = new Date(pending.expires_at).getTime();
    if (!Number.isFinite(expiresAt) || expiresAt <= Date.now()) {
      await sbDelete("device_link_codes", { id: `eq.${pending.id}` });
      return res.status(410).json({ error: "انتهت صلاحية الرمز. أنشئ رمزاً جديداً من الهاتف." });
    }

    const userRows = await sbSelect("users", { id: `eq.${pending.user_id}` }, { limit: 1 });
    const user = userRows[0];
    if (!user) return res.status(410).json({ error: "الحساب المرتبط بالرمز غير موجود" });

    const existing = await sbSelect("linked_devices", {
      user_id: `eq.${pending.user_id}`,
      revoked_at: "is.null",
    }, { limit: MAX_ACTIVE_DEVICES });
    const linkedForDevice = existing.find(row => row.device_id === deviceId);
    if (!linkedForDevice && existing.length >= MAX_ACTIVE_DEVICES) {
      return res.status(409).json({ error: "وصلت إلى الحد الأقصى وهو 8 أجهزة تلفاز. ألغِ ربط جهاز أولاً." });
    }

    // The conditional update is the one-time-use gate. Concurrent claims cannot both win.
    const claimed = await sbPatch("device_link_codes", {
      id: `eq.${pending.id}`,
      claimed_at: "is.null",
      expires_at: `gt.${new Date().toISOString()}`,
    }, {
      claimed_at: new Date().toISOString(),
      claimed_device_id: deviceId,
    });
    if (!claimed) return res.status(409).json({ error: "تم استخدام الرمز. أنشئ رمزاً جديداً من الهاتف." });

    const now = new Date().toISOString();
    const linked = linkedForDevice
      ? await sbPatch("linked_devices", { id: `eq.${linkedForDevice.id}`, user_id: `eq.${pending.user_id}` }, {
          device_name: deviceName,
          platform,
          linked_at: now,
          last_seen_at: now,
          revoked_at: null,
        })
      : await sbInsert("linked_devices", {
          user_id: pending.user_id,
          device_id: deviceId,
          device_name: deviceName,
          platform,
          linked_at: now,
          last_seen_at: now,
        });

    if (!linked) return res.status(503).json({ error: "تعذّر حفظ جهاز التلفاز. حاول برمز جديد." });

    return res.json({
      ok: true,
      ...userPayload(user, deviceId),
      device: deviceSummary(linked),
    });
  } catch (err) {
    console.error("[device-link] claim:", err);
    return res.status(503).json({ error: "تعذّر الاتصال بالخادم" });
  }
});

/** GET /api/device-link/devices — active TV devices for the signed-in phone. */
router.get("/device-link/devices", async (req: Request, res: Response) => {
  const userId = signedInUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });
  try {
    const rows = await sbSelect("linked_devices", {
      user_id: `eq.${userId}`,
      revoked_at: "is.null",
      order: "linked_at.desc",
    }, { limit: MAX_ACTIVE_DEVICES });
    return res.json({ devices: rows.map(deviceSummary) });
  } catch (err) {
    console.error("[device-link] devices:", err);
    return res.status(503).json({ error: "تعذّر تحميل الأجهزة" });
  }
});

/** DELETE /api/device-link/devices/:id — revoke a TV token immediately. */
router.delete("/device-link/devices/:id", async (req: Request, res: Response) => {
  const userId = signedInUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });
  try {
    const revoked = await sbPatch("linked_devices", {
      id: `eq.${req.params.id}`,
      user_id: `eq.${userId}`,
      revoked_at: "is.null",
    }, { revoked_at: new Date().toISOString() });
    if (!revoked) return res.status(404).json({ error: "الجهاز غير موجود" });
    return res.json({ ok: true });
  } catch (err) {
    console.error("[device-link] revoke:", err);
    return res.status(503).json({ error: "تعذّر إلغاء ربط الجهاز" });
  }
});

/** POST /api/device-link/heartbeat — update last-seen for an already linked TV. */
router.post("/device-link/heartbeat", async (req: Request, res: Response) => {
  const token = String(req.headers["x-user-token"] || "");
  const info = getDeviceUserTokenInfo(token);
  if (!info) return res.status(401).json({ error: "توكن التلفاز غير صالح" });
  try {
    const updated = await sbPatch("linked_devices", {
      user_id: `eq.${info.userId}`,
      device_id: `eq.${info.deviceId}`,
      revoked_at: "is.null",
    }, { last_seen_at: new Date().toISOString() });
    if (!updated) return res.status(403).json({ error: "تم إلغاء ربط هذا التلفاز", code: "DEVICE_REVOKED" });
    return res.json({ ok: true });
  } catch (err) {
    console.error("[device-link] heartbeat:", err);
    return res.status(503).json({ error: "تعذّر تحديث حالة الجهاز" });
  }
});

export default router;
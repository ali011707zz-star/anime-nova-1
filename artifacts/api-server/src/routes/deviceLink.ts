import { Router, type Request, type Response } from "express";
import { createHash, randomBytes, randomInt } from "node:crypto";
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

type TvLoginSession = {
  code: string;
  sessionSecret: string;
  deviceId: string;
  deviceName: string;
  platform: string;
  createdAt: number;
  expiresAt: number;
  approvedPayload: Record<string, any> | null;
};

const tvLoginSessions = new Map<string, TvLoginSession>();

function cleanupExpiredTvSessions(): void {
  const now = Date.now();
  for (const [key, session] of tvLoginSessions.entries()) {
    if (session.expiresAt <= now) {
      tvLoginSessions.delete(key);
    }
  }
}

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
  return String(value ?? "")
    .replace(/[٠-٩]/g, digit => String(digit.charCodeAt(0) - 0x0660))
    .replace(/[۰-۹]/g, digit => String(digit.charCodeAt(0) - 0x06f0))
    .replace(/\s/g, "");
}

function normalizeDeviceId(value: unknown): string {
  return String(value ?? "").trim().slice(0, 160);
}

function defaultDeviceName(platform: string): string {
  if (platform === "android-tv") return "جهاز التلفاز";
  if (platform === "ios") return "هاتف iPhone";
  if (platform === "android") return "هاتف Android";
  return "جهاز جديد";
}

function deviceSummary(row: any) {
  const platform = row.platform || "android";
  return {
    id: String(row.id),
    deviceId: row.device_id,
    name: row.device_name || defaultDeviceName(platform),
    platform,
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

/** POST /api/device-link/claim — exchange the code for a revocable device token. */
router.post("/device-link/claim", async (req: Request, res: Response) => {
  const ip = requestIp(req);
  const code = normalizeCode(req.body?.code);
  const deviceId = normalizeDeviceId(req.body?.deviceId);
  const platform = String(req.body?.platform || "android").trim().slice(0, 30) || "android";
  const deviceName = String(req.body?.deviceName || defaultDeviceName(platform)).trim().slice(0, 80) || defaultDeviceName(platform);

  if (!/^\d{6}$/.test(code)) {
    return res.status(400).json({ error: "أدخل الرمز المكوّن من 6 أرقام" });
  }
  if (!/^[A-Za-z0-9._:-]{6,160}$/.test(deviceId)) {
    return res.status(400).json({ error: "معرّف الجهاز غير صالح" });
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
      return res.status(409).json({ error: "وصلت إلى الحد الأقصى وهو 8 أجهزة. ألغِ ربط جهاز أولاً." });
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
    const insertedLinked = linkedForDevice
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

    // Some PostgREST configurations return an empty representation even
    // though the write succeeded. Confirm the row before reporting failure.
    const linked = insertedLinked || (await sbSelect("linked_devices", {
      user_id: `eq.${pending.user_id}`,
      device_id: `eq.${deviceId}`,
      revoked_at: "is.null",
    }, { limit: 1 }))[0];

    if (!linked) return res.status(503).json({ error: "تعذّر حفظ الجهاز. حاول برمز جديد." });

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

/** GET /api/device-link/devices — active devices for the signed-in phone. */
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

/** DELETE /api/device-link/devices/:id — revoke a linked device immediately. */
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

/** POST /api/device-link/heartbeat — update last-seen for an already linked device. */
router.post("/device-link/heartbeat", async (req: Request, res: Response) => {
  const token = String(req.headers["x-user-token"] || "");
  const info = getDeviceUserTokenInfo(token);
  if (!info) return res.status(401).json({ error: "توكن الجهاز غير صالح" });
  try {
    const updated = await sbPatch("linked_devices", {
      user_id: `eq.${info.userId}`,
      device_id: `eq.${info.deviceId}`,
      revoked_at: "is.null",
    }, { last_seen_at: new Date().toISOString() });
    if (!updated) return res.status(403).json({ error: "تم إلغاء ربط هذا الجهاز", code: "DEVICE_REVOKED" });
    return res.json({ ok: true });
  } catch (err) {
    console.error("[device-link] heartbeat:", err);
    return res.status(503).json({ error: "تعذّر تحديث حالة الجهاز" });
  }
});

/**
 * POST /api/device-link/tv-session/start
 * Called by Android TV when the user clicks "المتابعة باستخدام Google" or opens TV Link.
 * Generates a 6-digit code + QR URL so the user can scan with their phone and sign in via Google.
 */
router.post("/device-link/tv-session/start", async (req: Request, res: Response) => {
  const ip = requestIp(req);
  const deviceId = normalizeDeviceId(req.body?.deviceId);
  const platform = String(req.body?.platform || "android-tv").trim().slice(0, 30) || "android-tv";
  const deviceName =
    String(req.body?.deviceName || defaultDeviceName(platform)).trim().slice(0, 80) ||
    defaultDeviceName(platform);

  if (!/^[A-Za-z0-9._:-]{6,160}$/.test(deviceId)) {
    return res.status(400).json({ error: "معرّف الجهاز غير صالح" });
  }
  if (!checkRateLimit(`tv-session-start:${ip}`, 15, 5 * 60_000)) {
    return res.status(429).json({ error: "محاولات كثيرة. انتظر قليلاً ثم حاول مجدداً." });
  }

  cleanupExpiredTvSessions();

  // Remove any previous unapproved session for the same deviceId
  for (const [existingCode, sess] of tvLoginSessions.entries()) {
    if (sess.deviceId === deviceId && !sess.approvedPayload) {
      tvLoginSessions.delete(existingCode);
    }
  }

  let code = "";
  for (let i = 0; i < 10; i++) {
    const candidate = String(randomInt(100_000, 1_000_000)).padStart(CODE_LENGTH, "0");
    if (!tvLoginSessions.has(candidate)) {
      code = candidate;
      break;
    }
  }
  if (!code) {
    return res.status(503).json({ error: "تعذّر إنشاء جلسة التلفاز، حاول مرة أخرى" });
  }

  const now = Date.now();
  const expiresAt = now + CODE_TTL_MS;
  const sessionSecret = randomBytes(24).toString("hex");

  tvLoginSessions.set(code, {
    code,
    sessionSecret,
    deviceId,
    deviceName,
    platform,
    createdAt: now,
    expiresAt,
    approvedPayload: null,
  });

  const publicOrigin = (process.env.PUBLIC_ORIGIN || "https://animenovaa.duckdns.org").replace(/\/$/, "");
  const activateUrl = `${publicOrigin}/tv?code=${code}`;

  return res.json({
    ok: true,
    code,
    sessionSecret,
    expiresAt: new Date(expiresAt).toISOString(),
    ttlSeconds: Math.floor(CODE_TTL_MS / 1000),
    activateUrl,
    shortUrl: `${publicOrigin.replace(/^https?:\/\//, "")}/tv`,
  });
});

/**
 * POST /api/device-link/tv-session/poll
 * Polled by Android TV every 2.5 seconds to check if the user completed Google Sign-In on their phone.
 */
router.post("/device-link/tv-session/poll", async (req: Request, res: Response) => {
  cleanupExpiredTvSessions();
  const code = normalizeCode(req.body?.code);
  const sessionSecret = String(req.body?.sessionSecret || "").trim();
  const deviceId = normalizeDeviceId(req.body?.deviceId);

  if (!/^\d{6}$/.test(code) || !sessionSecret) {
    return res.status(400).json({ status: "invalid", error: "بيانات الجلسة غير صالحة" });
  }

  const session = tvLoginSessions.get(code);
  if (!session || session.expiresAt <= Date.now()) {
    tvLoginSessions.delete(code);
    return res.status(410).json({ status: "expired", error: "انتهت صلاحية الرمز" });
  }

  if (session.sessionSecret !== sessionSecret || (deviceId && session.deviceId !== deviceId)) {
    return res.status(403).json({ status: "forbidden", error: "غير مصرّح لهذه الجلسة" });
  }

  if (!session.approvedPayload) {
    return res.json({
      ok: true,
      status: "pending",
      ttlSeconds: Math.max(0, Math.floor((session.expiresAt - Date.now()) / 1000)),
    });
  }

  const payload = session.approvedPayload;
  tvLoginSessions.delete(code);
  return res.json({
    ok: true,
    status: "approved",
    ...payload,
  });
});

/**
 * POST /api/device-link/tv-session/approve
 * Called by the phone browser (/tv) or signed-in mobile app after Google Sign-In.
 * Authorizes the waiting TV immediately.
 */
router.post("/device-link/tv-session/approve", async (req: Request, res: Response) => {
  cleanupExpiredTvSessions();
  const ip = requestIp(req);
  if (!checkRateLimit(`tv-session-approve:${ip}`, 15, 60_000)) {
    return res.status(429).json({ error: "محاولات كثيرة. انتظر دقيقة ثم حاول مجدداً." });
  }

  const code = normalizeCode(req.body?.code);
  if (!/^\d{6}$/.test(code)) {
    return res.status(400).json({ error: "أدخل رمز التلفاز المكوّن من 6 أرقام" });
  }

  const session = tvLoginSessions.get(code);
  if (!session || session.expiresAt <= Date.now()) {
    tvLoginSessions.delete(code);
    return res.status(410).json({ error: "رمز التلفاز غير صحيح أو انتهت صلاحيته. اعرض رمزاً جديداً على التلفاز." });
  }

  const userId = signedInUserId(req);
  if (!userId) {
    return res.status(401).json({ error: "يرجى تسجيل الدخول بحساب Google أولاً لإتمام ربط التلفاز" });
  }

  try {
    const userRows = await sbSelect("users", { id: `eq.${userId}` }, { limit: 1 });
    const user = userRows[0];
    if (!user) {
      return res.status(410).json({ error: "الحساب غير موجود" });
    }

    const existing = await sbSelect("linked_devices", {
      user_id: `eq.${userId}`,
      revoked_at: "is.null",
    }, { limit: MAX_ACTIVE_DEVICES });
    const linkedForDevice = existing.find(row => row.device_id === session.deviceId);
    if (!linkedForDevice && existing.length >= MAX_ACTIVE_DEVICES) {
      return res.status(409).json({ error: "وصلت إلى الحد الأقصى وهو 8 أجهزة. ألغِ ربط جهاز أولاً." });
    }

    const now = new Date().toISOString();
    const insertedLinked = linkedForDevice
      ? await sbPatch("linked_devices", { id: `eq.${linkedForDevice.id}`, user_id: `eq.${userId}` }, {
          device_name: session.deviceName,
          platform: session.platform,
          linked_at: now,
          last_seen_at: now,
          revoked_at: null,
        })
      : await sbInsert("linked_devices", {
          user_id: userId,
          device_id: session.deviceId,
          device_name: session.deviceName,
          platform: session.platform,
          linked_at: now,
          last_seen_at: now,
        });

    const linked = insertedLinked || (await sbSelect("linked_devices", {
      user_id: `eq.${userId}`,
      device_id: `eq.${session.deviceId}`,
      revoked_at: "is.null",
    }, { limit: 1 }))[0];

    if (!linked) {
      return res.status(503).json({ error: "تعذّر حفظ جهاز التلفاز. حاول مرة أخرى." });
    }

    session.approvedPayload = {
      ...userPayload(user, session.deviceId),
      device: deviceSummary(linked),
    };

    return res.json({
      ok: true,
      deviceName: session.deviceName,
      user: {
        displayName: user.display_name || user.username || user.email,
        email: user.email,
      },
    });
  } catch (err) {
    console.error("[device-link] tv-session approve:", err);
    return res.status(503).json({ error: "تعذّر الاتصال بالخادم" });
  }
});

export default router;
import { Router, type Request, type Response } from "express";
import { createHash, randomBytes } from "node:crypto";
import { getEmailUser } from "../auth/emailAuth.js";
import { decryptParam, encryptParam } from "../lib/security.js";
import { sbInsert, sbPatch, sbSelect } from "../lib/supabaseClient.js";

const router = Router();
const CONFIG_PREFIX = "reward_ads:";
const DOWNLOAD_LIMIT = 4;
const WATCH_ACCESS_MS = 60 * 60 * 1000;
type RewardKind = "download" | "watch";
type AdState = {
  downloadCount: number;
  completedEpisodes: string[];
  watchAccessUntil: number;
  pendingRewards: string[];
};

function emptyState(): AdState {
  return { downloadCount: 0, completedEpisodes: [], watchAccessUntil: 0, pendingRewards: [] };
}

async function subjectFor(req: Request): Promise<{ key: string; privileged: boolean }> {
  const user = await getEmailUser(req);
  if (user?.id) {
    return {
      key: `user:${String(user.id)}`,
      privileged: user.plan === "premium" || user.plan === "admin",
    };
  }
  const raw = String(req.headers["x-nova-device"] || req.headers["x-app-token"] || "anonymous");
  return { key: `device:${createHash("sha256").update(raw).digest("hex").slice(0, 32)}`, privileged: false };
}

async function loadState(key: string): Promise<AdState> {
  const rows = await sbSelect<any>("app_config", { key: `eq.${CONFIG_PREFIX}${key}` }, { limit: 1 });
  if (!rows.length) return emptyState();
  try {
    const value = JSON.parse(String(rows[0].value || ""));
    return {
      downloadCount: Math.max(0, Math.min(DOWNLOAD_LIMIT, Number(value.downloadCount) || 0)),
      completedEpisodes: Array.isArray(value.completedEpisodes) ? value.completedEpisodes.map(String).slice(-100) : [],
      watchAccessUntil: Number(value.watchAccessUntil) || 0,
      pendingRewards: Array.isArray(value.pendingRewards) ? value.pendingRewards.map(String).slice(-5) : [],
    };
  } catch {
    return emptyState();
  }
}

async function saveState(key: string, state: AdState): Promise<void> {
  const configKey = `${CONFIG_PREFIX}${key}`;
  const value = JSON.stringify(state);
  const existing = await sbSelect<any>("app_config", { key: `eq.${configKey}` }, { limit: 1 });
  if (existing.length) await sbPatch("app_config", { key: `eq.${configKey}` }, { value, updated_at: new Date().toISOString() });
  else await sbInsert("app_config", { key: configKey, value, updated_at: new Date().toISOString() });
}

function publicState(state: AdState, privileged: boolean) {
  return {
    privileged,
    downloadCount: privileged ? 0 : state.downloadCount,
    downloadLimit: DOWNLOAD_LIMIT,
    downloadNeedsReward: !privileged && state.downloadCount >= DOWNLOAD_LIMIT,
    watchAccessUntil: privileged ? null : state.watchAccessUntil,
    watchNeedsReward: !privileged && state.watchAccessUntil <= Date.now(),
  };
}

router.get("/ads/state", async (req: Request, res: Response) => {
  try {
    const subject = await subjectFor(req);
    return res.json(publicState(await loadState(subject.key), subject.privileged));
  } catch (error) {
    console.error("[ads/state]", error);
    return res.status(500).json({ error: "تعذر قراءة حالة الإعلانات" });
  }
});

router.post("/ads/download-start", async (req: Request, res: Response) => {
  const subject = await subjectFor(req);
  const state = await loadState(subject.key);
  if (!subject.privileged && state.downloadCount >= DOWNLOAD_LIMIT) {
    return res.status(402).json({ needsReward: true, message: "شاهد إعلانًا قصيرًا لمتابعة تنزيل الحلقات" });
  }
  return res.json({ allowed: true, ...publicState(state, subject.privileged) });
});

router.post("/ads/download-complete", async (req: Request, res: Response) => {
  try {
    const subject = await subjectFor(req);
    if (subject.privileged) return res.json({ counted: false, ...publicState(emptyState(), true) });
    const animeId = String(req.body?.animeId || "").trim();
    const ep = Number(req.body?.ep);
    if (!animeId || !Number.isSafeInteger(ep) || ep < 1) return res.status(400).json({ error: "حلقة غير صالحة" });
    const state = await loadState(subject.key);
    const episodeKey = `${animeId}:${ep}`;
    if (!state.completedEpisodes.includes(episodeKey)) {
      state.completedEpisodes.push(episodeKey);
      state.downloadCount = Math.min(DOWNLOAD_LIMIT, state.downloadCount + 1);
      await saveState(subject.key, state);
      return res.json({ counted: true, ...publicState(state, false) });
    }
    return res.json({ counted: false, ...publicState(state, false) });
  } catch (error) {
    console.error("[ads/download-complete]", error);
    return res.status(500).json({ error: "تعذر تسجيل التنزيل" });
  }
});

router.post("/ads/watch-start", async (req: Request, res: Response) => {
  const subject = await subjectFor(req);
  const state = await loadState(subject.key);
  if (!subject.privileged && state.watchAccessUntil <= Date.now()) {
    return res.status(402).json({ needsReward: true, message: "شاهد إعلانًا قصيرًا لفتح السيرفرات ومشاهدة الحلقة لمدة 60 دقيقة" });
  }
  return res.json({ allowed: true, ...publicState(state, subject.privileged) });
});

router.post("/ads/reward/start", async (req: Request, res: Response) => {
  try {
    const kind = String(req.body?.kind || "") as RewardKind;
    if (kind !== "download" && kind !== "watch") return res.status(400).json({ error: "نوع إعلان غير صالح" });
    const subject = await subjectFor(req);
    if (subject.privileged) return res.json({ bypass: true, ...publicState(emptyState(), true) });
    const state = await loadState(subject.key);
    const nonce = randomBytes(18).toString("hex");
    state.pendingRewards.push(nonce);
    await saveState(subject.key, state);
    const token = encryptParam(JSON.stringify({ v: 1, kind, subject: subject.key, nonce, exp: Date.now() + 10 * 60 * 1000 }));
    return res.json({ token, kind, ttl: 600 });
  } catch (error) {
    console.error("[ads/reward-start]", error);
    return res.status(500).json({ error: "تعذر بدء الإعلان" });
  }
});

router.post("/ads/reward/complete", async (req: Request, res: Response) => {
  try {
    const token = String(req.body?.token || "");
    const payload = JSON.parse(decryptParam(token)) as { v?: number; kind?: RewardKind; subject?: string; nonce?: string; exp?: number };
    if (payload.v !== 1 || (payload.kind !== "download" && payload.kind !== "watch") || !payload.subject || !payload.nonce || !payload.exp || payload.exp < Date.now()) {
      return res.status(400).json({ error: "تصريح إعلان غير صالح" });
    }
    const subject = await subjectFor(req);
    if (payload.subject !== subject.key || subject.privileged) return res.status(403).json({ error: "تصريح إعلان غير مصرّح" });
    const state = await loadState(subject.key);
    if (!state.pendingRewards.includes(payload.nonce)) return res.status(409).json({ error: "تم استخدام الإعلان أو انتهت صلاحيته" });
    state.pendingRewards = state.pendingRewards.filter((nonce) => nonce !== payload.nonce);
    if (payload.kind === "download") state.downloadCount = 0;
    else state.watchAccessUntil = Date.now() + WATCH_ACCESS_MS;
    await saveState(subject.key, state);
    return res.json({ ok: true, ...publicState(state, false) });
  } catch {
    return res.status(400).json({ error: "تصريح إعلان غير صالح" });
  }
});

export default router;
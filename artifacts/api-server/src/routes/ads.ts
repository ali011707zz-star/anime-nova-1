import { Router, type Request, type Response } from "express";
import { createHash, randomBytes } from "node:crypto";
import { getEmailUser } from "../auth/emailAuth.js";
import { decryptParam, encryptParam } from "../lib/security.js";
import { sbInsert, sbPatch, sbSelect } from "../lib/supabaseClient.js";
import { getDbConfig, setDbConfig } from "../lib/dbConfig.js";

const router = Router();
const CONFIG_PREFIX = "reward_ads:";
const DOWNLOAD_LIMIT = 4;
const WATCH_ACCESS_MS = 60 * 60 * 1000;
const SETTINGS_KEY = "reward_ads:settings";
// The live Android Rewarded unit configured by the app owner.
// Ad unit IDs are client-visible by design; the app still fail-closes when
// Google cannot load or verify the reward.
const TEST_REWARDED_ID = "ca-app-pub-7738594986393012/4388351429";
type RewardKind = "download" | "watch";
type RewardSettings = { enabled: boolean; rewardedAdUnitId: string };
type AdState = {
  downloadCount: number;
  completedEpisodes: string[];
  watchAccessUntil: number;
  pendingRewards: string[];
};

function emptyState(): AdState {
  return { downloadCount: 0, completedEpisodes: [], watchAccessUntil: 0, pendingRewards: [] };
}

async function getRewardSettings(): Promise<RewardSettings> {
  const raw = await getDbConfig(SETTINGS_KEY);
  if (!raw) return { enabled: true, rewardedAdUnitId: TEST_REWARDED_ID };
  try {
    const value = JSON.parse(raw);
    return {
      enabled: value?.enabled !== false,
      rewardedAdUnitId: String(value?.rewardedAdUnitId || TEST_REWARDED_ID).trim() || TEST_REWARDED_ID,
    };
  } catch {
    return { enabled: true, rewardedAdUnitId: TEST_REWARDED_ID };
  }
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

function publicState(state: AdState, privileged: boolean, settings: RewardSettings) {
  return {
    privileged,
    adsEnabled: settings.enabled,
    rewardedAdUnitId: settings.rewardedAdUnitId,
    downloadCount: privileged || !settings.enabled ? 0 : state.downloadCount,
    downloadLimit: DOWNLOAD_LIMIT,
    downloadNeedsReward: settings.enabled && !privileged && state.downloadCount >= DOWNLOAD_LIMIT,
    watchAccessUntil: privileged || !settings.enabled ? null : state.watchAccessUntil,
    watchNeedsReward: settings.enabled && !privileged && state.watchAccessUntil <= Date.now(),
  };
}

router.get("/ads/state", async (req: Request, res: Response) => {
  try {
    const subject = await subjectFor(req);
    const settings = await getRewardSettings();
    return res.json(publicState(await loadState(subject.key), subject.privileged, settings));
  } catch (error) {
    console.error("[ads/state]", error);
    return res.status(500).json({ error: "تعذر قراءة حالة الإعلانات" });
  }
});

router.post("/ads/download-start", async (req: Request, res: Response) => {
  const subject = await subjectFor(req);
  const settings = await getRewardSettings();
  const state = await loadState(subject.key);
  if (settings.enabled && !subject.privileged && state.downloadCount >= DOWNLOAD_LIMIT) {
    return res.status(402).json({ needsReward: true, message: "شاهد إعلانًا قصيرًا لمتابعة تنزيل الحلقات" });
  }
  return res.json({ allowed: true, ...publicState(state, subject.privileged, settings) });
});

router.post("/ads/download-complete", async (req: Request, res: Response) => {
  try {
    const subject = await subjectFor(req);
    const settings = await getRewardSettings();
    if (subject.privileged) return res.json({ counted: false, ...publicState(emptyState(), true, settings) });
    const animeId = String(req.body?.animeId || "").trim();
    const ep = Number(req.body?.ep);
    if (!animeId || !Number.isSafeInteger(ep) || ep < 1) return res.status(400).json({ error: "حلقة غير صالحة" });
    const state = await loadState(subject.key);
    const episodeKey = `${animeId}:${ep}`;
    if (!state.completedEpisodes.includes(episodeKey)) {
      state.completedEpisodes.push(episodeKey);
      state.downloadCount = Math.min(DOWNLOAD_LIMIT, state.downloadCount + 1);
      await saveState(subject.key, state);
      return res.json({ counted: true, ...publicState(state, false, settings) });
    }
    return res.json({ counted: false, ...publicState(state, false, settings) });
  } catch (error) {
    console.error("[ads/download-complete]", error);
    return res.status(500).json({ error: "تعذر تسجيل التنزيل" });
  }
});

router.post("/ads/watch-start", async (req: Request, res: Response) => {
  const subject = await subjectFor(req);
  const settings = await getRewardSettings();
  const state = await loadState(subject.key);
  if (settings.enabled && !subject.privileged && state.watchAccessUntil <= Date.now()) {
    return res.status(402).json({ needsReward: true, message: "شاهد إعلانًا قصيرًا لفتح السيرفرات ومشاهدة الحلقة لمدة 60 دقيقة" });
  }
  return res.json({ allowed: true, ...publicState(state, subject.privileged, settings) });
});

router.post("/ads/reward/start", async (req: Request, res: Response) => {
  try {
    const kind = String(req.body?.kind || "") as RewardKind;
    if (kind !== "download" && kind !== "watch") return res.status(400).json({ error: "نوع إعلان غير صالح" });
    const subject = await subjectFor(req);
    const settings = await getRewardSettings();
    if (!settings.enabled || subject.privileged) {
      return res.json({ bypass: true, ...publicState(emptyState(), subject.privileged, settings) });
    }
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

router.get("/admin/ads-settings", async (req: Request, res: Response) => {
  const { isWebAdmin } = await import("./webAdmin.js");
  const { getEmailUser } = await import("../auth/emailAuth.js");
  const user = await getEmailUser(req);
  if (!isWebAdmin(req) && user?.plan !== "admin") return res.status(401).json({ error: "غير مصرّح" });
  return res.json(await getRewardSettings());
});

router.patch("/admin/ads-settings", async (req: Request, res: Response) => {
  const { isWebAdmin } = await import("./webAdmin.js");
  const { getEmailUser } = await import("../auth/emailAuth.js");
  const user = await getEmailUser(req);
  if (!isWebAdmin(req) && user?.plan !== "admin") return res.status(401).json({ error: "غير مصرّح" });
  const current = await getRewardSettings();
  const enabled = req.body?.enabled === undefined ? current.enabled : req.body.enabled;
  const rewardedAdUnitId = req.body?.rewardedAdUnitId === undefined
    ? current.rewardedAdUnitId
    : String(req.body.rewardedAdUnitId || "").trim();
  if (typeof enabled !== "boolean") return res.status(400).json({ error: "enabled يجب أن يكون true أو false" });
  if (!rewardedAdUnitId) return res.status(400).json({ error: "rewardedAdUnitId مطلوب" });
  const next = { enabled, rewardedAdUnitId };
  await setDbConfig(SETTINGS_KEY, JSON.stringify(next));
  return res.json({ ok: true, ...next });
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
    const settings = await getRewardSettings();
    return res.json({ ok: true, ...publicState(state, false, settings) });
  } catch {
    return res.status(400).json({ error: "تصريح إعلان غير صالح" });
  }
});

export default router;
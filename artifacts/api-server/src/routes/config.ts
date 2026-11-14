import { Router } from "express";
import { sbSelect, sbUpsert } from "../lib/supabaseClient.js";
import { getDbConfig, setDbConfig } from "../lib/dbConfig.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { isWebAdmin } from "./webAdmin.js";

const router = Router();
const REMOTE_CONFIG_KEY = "remote_config";
const PERMANENTLY_DISABLED_SOURCES = [
  "anivexa_re",
  "reanime",
  "consumet_reanime",
  "animekai",
  "anineko",
  "consumet_gogo",
] as const;

const LATEST_APP_VERSION = "1.0.8";
const LATEST_VERSION_CODE = 9;

function compareSemver(a: string, b: string): number {
  const pa = String(a || "0.0.0").replace(/[^0-9.]/g, "").split(".").map((x) => parseInt(x, 10) || 0);
  const pb = String(b || "0.0.0").replace(/[^0-9.]/g, "").split(".").map((x) => parseInt(x, 10) || 0);
  for (let i = 0; i < 3; i++) {
    const da = pa[i] || 0;
    const db = pb[i] || 0;
    if (da < db) return -1;
    if (da > db) return 1;
  }
  return 0;
}

const DEFAULT_CONFIG = {
  version: LATEST_APP_VERSION,
  latestVersion: LATEST_APP_VERSION,
  latestVersionCode: LATEST_VERSION_CODE,
  apkUrl: "https://animenovaa.duckdns.org/nova.apk?v=" + LATEST_APP_VERSION,
  tvDownloaderCode: "2576388",
  forceUpdate: true,
  updateTitle: "التحديث مطلوب",
  updateMessage: "يجب تحديث التطبيق إلى الإصدار " + LATEST_APP_VERSION + " للمتابعة — هذا الإصدار لم يعد مدعوماً.",
  updateChangelog: [
    "تشغيل أسرع: بدء أسرع وتقديم شبه فوري في جميع سيرفرات الأنمي والمدبلج",
    "تحديث وتثبيت مباشر داخل التطبيق مع متابعة حجم التقدم بالميجابايت",
    "إطار تركيز مزدوج عالي التباين وتنقل فوري سلس بالريموت في جميع الصفحات",
    "تحسينات كبيرة في الأداء والثبات وإصلاحات عامة",
  ],
  maintenanceMode: false,
  maintenanceMessage: "",
  sources: {
    shahiid:      true,
    animelek:     true,
    animedar:     true,
    okanime:      true,
    animeify:     true,
    kawaii:       true,
    anikoto:      true,
    animepahe:    true,
    animewitcher: true,
    animekai:      false,
    anime4up2:      true,
    megaplay:      true,
    anineko:       false,
    anifox:        true,
    anslayer:      true,
    sanime:        true,
    anipm:         true,
    dulo_anim:     true,
    vidfast:       true,
    vidlink_anim:  true,
    anivexa_re:    false,
    reanime:       false,
    seepanel:     true,
    arabseed:     true,
    animephoenix: true,
    starcima:     true,
    videasy:      true,
    vidlink:      true,
    lordflix:     true,
    vyla:         true,
    aflaam:       true,
    stardima:     true,
    consumet_gogo: false,
    consumet_world: true,
    consumet_reanime: false,
    consumet_miruro: true,
    consumet_saturn: true,
    consumet_anikoto: true,
    anivexa_anibd: true,
  },
  announcements: [] as {
    id: string;
    message: string;
    type: "info" | "warning" | "success";
    link?: string;
  }[],
  features: {
    comments:         true,
    watchHistory:     true,
    subscriptions:    true,
    downloads:        false,
    animationSection: true,
  },
  limits: {
    downloadLimit: 4,
    watchAccessMinutes: 60,
  },
};

function mergeConfig(value: any) {
  const merged = {
    ...DEFAULT_CONFIG,
    ...(value && typeof value === "object" ? value : {}),
    sources: { ...DEFAULT_CONFIG.sources, ...(value?.sources || {}) },
    features: { ...DEFAULT_CONFIG.features, ...(value?.features || {}) },
    limits: { ...DEFAULT_CONFIG.limits, ...(value?.limits || {}) },
  };
  // The latest-episodes rail and its playback path now use ANIFOX.
  merged.sources.anifox = true;
  for (const source of PERMANENTLY_DISABLED_SOURCES) merged.sources[source] = false;
  return merged;
}

async function isAdmin(req: any): Promise<boolean> {
  if (isWebAdmin(req)) return true;
  const user = await getEmailUser(req);
  return user?.plan === "admin";
}

/* ── GET /api/config ── public remote configuration ── */
router.get("/config", async (req, res) => {
  const clientVersionHeader = String(req.headers["x-nova-version"] || "").trim();
  const uaMatch = String(req.headers["user-agent"] || "").match(/NovaAnime\/([0-9.]+)/i);
  const clientVersion = clientVersionHeader || (uaMatch ? uaMatch[1] : "");
  const isOutdatedClient = Boolean(clientVersion && compareSemver(clientVersion, LATEST_APP_VERSION) < 0);
  const outdatedBanner = {
    id: "auto-update-v" + LATEST_APP_VERSION,
    type: "warning" as const,
    message: "🚀 يتوفر تحديث جديد للتطبيق (v" + LATEST_APP_VERSION + ")! للتحديث على الهاتف حمّله من animenovaa.duckdns.org/nova.apk أو على التلفاز عبر كود Downloader: 2576388",
    link: "https://animenovaa.duckdns.org/nova.apk",
  };

  try {
    const remoteRaw = await getDbConfig(REMOTE_CONFIG_KEY);
    const remote = remoteRaw ? JSON.parse(remoteRaw) : {};
    const rows = await sbSelect("app_config", { key: "eq.announcements" }, { limit: 1 });
    const dbAnnouncements = rows.length > 0 && rows[0].value
      ? JSON.parse(rows[0].value)
      : [];
    const baseList = Array.isArray(dbAnnouncements) ? dbAnnouncements : [];
    const mergedCfg = mergeConfig(remote);
    const latestVer = mergedCfg.latestVersion || LATEST_APP_VERSION;
    const clientNeedsUpdate = Boolean(clientVersion && compareSemver(clientVersion, latestVer) < 0);
    const announcements = clientNeedsUpdate
      ? [outdatedBanner, ...baseList.filter((a: any) => a?.id !== outdatedBanner.id)]
      : baseList;
    return res.json({
      ...mergedCfg,
      version: latestVer,
      latestVersion: latestVer,
      latestVersionCode: mergedCfg.latestVersionCode || LATEST_VERSION_CODE,
      apkUrl: mergedCfg.apkUrl || DEFAULT_CONFIG.apkUrl,
      tvDownloaderCode: mergedCfg.tvDownloaderCode || DEFAULT_CONFIG.tvDownloaderCode,
      forceUpdate: typeof mergedCfg.forceUpdate === "boolean" ? mergedCfg.forceUpdate : DEFAULT_CONFIG.forceUpdate,
      updateTitle: mergedCfg.updateTitle || DEFAULT_CONFIG.updateTitle,
      updateMessage: mergedCfg.updateMessage || DEFAULT_CONFIG.updateMessage,
      updateChangelog: Array.isArray(mergedCfg.updateChangelog) && mergedCfg.updateChangelog.length > 0 ? mergedCfg.updateChangelog : DEFAULT_CONFIG.updateChangelog,
      announcements,
    });
  } catch {
    /* fall through to default */
  }
  return res.json({
    ...DEFAULT_CONFIG,
    announcements: isOutdatedClient ? [outdatedBanner] : [],
  });
});

/* ── GET/PATCH /api/admin/remote-config ── protected remote control ── */
router.get("/admin/remote-config", async (req, res) => {
  if (!(await isAdmin(req))) return res.status(401).json({ error: "غير مصرّح" });
  const raw = await getDbConfig(REMOTE_CONFIG_KEY);
  return res.json(mergeConfig(raw ? JSON.parse(raw) : {}));
});

router.patch("/admin/remote-config", async (req, res) => {
  if (!(await isAdmin(req))) return res.status(401).json({ error: "غير مصرّح" });
  const currentRaw = await getDbConfig(REMOTE_CONFIG_KEY);
  const current = currentRaw ? JSON.parse(currentRaw) : {};
  const incoming = req.body && typeof req.body === "object" ? req.body : {};
  const next = mergeConfig({
    ...current,
    ...incoming,
    sources: { ...(current.sources || {}), ...(incoming.sources || {}) },
    features: { ...(current.features || {}), ...(incoming.features || {}) },
    limits: { ...(current.limits || {}), ...(incoming.limits || {}) },
  });
  if (typeof next.maintenanceMode !== "boolean") {
    return res.status(400).json({ error: "maintenanceMode يجب أن يكون true أو false" });
  }
  if (!Number.isInteger(next.limits.downloadLimit) || next.limits.downloadLimit < 0 || next.limits.downloadLimit > 100) {
    return res.status(400).json({ error: "limits.downloadLimit غير صالح" });
  }
  if (!Number.isInteger(next.limits.watchAccessMinutes) || next.limits.watchAccessMinutes < 1 || next.limits.watchAccessMinutes > 1440) {
    return res.status(400).json({ error: "limits.watchAccessMinutes غير صالح" });
  }
  await setDbConfig(REMOTE_CONFIG_KEY, JSON.stringify(next));
  return res.json({ ok: true, config: next });
});

/* ── GET /api/config/announcements ── list current announcements ── */
router.get("/config/announcements", async (_req, res) => {
  try {
    const rows = await sbSelect("app_config", { key: "eq.announcements" }, { limit: 1 });
    const list = rows.length > 0 ? JSON.parse(rows[0].value || "[]") : [];
    return res.json({ announcements: list });
  } catch {
    return res.json({ announcements: [] });
  }
});

/* ── POST /api/config/announcements ── add/replace announcements ── */
/* Body: { announcements: [{id,message,type,link?}] }               */
router.post("/config/announcements", async (req, res) => {
  const userId = (req.session as any)?.userId || (req.session as any)?.emailUserId;
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول" });

  try {
    const { announcements } = req.body as { announcements: any[] };
    if (!Array.isArray(announcements))
      return res.status(400).json({ error: "announcements يجب أن تكون مصفوفة" });

    await sbUpsert("app_config", { key: "announcements", value: JSON.stringify(announcements) }, "key");
    return res.json({ ok: true, count: announcements.length });
  } catch (err) {
    console.error("[config] POST announcements:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ── DELETE /api/config/announcements/:id ── remove one by id ── */
router.delete("/config/announcements/:id", async (req, res) => {
  const userId = (req.session as any)?.userId || (req.session as any)?.emailUserId;
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول" });

  try {
    const rows = await sbSelect("app_config", { key: "eq.announcements" }, { limit: 1 });
    const list: any[] = rows.length > 0 ? JSON.parse(rows[0].value || "[]") : [];
    const filtered = list.filter((a: any) => a.id !== req.params.id);
    await sbUpsert("app_config", { key: "announcements", value: JSON.stringify(filtered) }, "key");
    return res.json({ ok: true });
  } catch (err) {
    console.error("[config] DELETE announcement:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

export default router;

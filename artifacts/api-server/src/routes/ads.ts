import { Router, type Request, type Response } from "express";
import { setDbConfig } from "../lib/dbConfig.js";

const router = Router();
const SETTINGS_KEY = "reward_ads:settings";

// الإعلانات ملغية بالكامل والسيرفرات مفتوحة لجميع المستخدمين
function getUnlockedState() {
  return {
    privileged: true,
    adsEnabled: false,
    rewardedProvider: "none",
    downloadCount: 0,
    downloadLimit: 9999,
    downloadNeedsReward: false,
    watchAccessUntil: null,
    watchNeedsReward: false,
  };
}

// قراءة حالة الإعلانات — تُرجع دائمًا حالة مفتوحة ومجانية بدون قيود
router.get("/ads/state", (_req: Request, res: Response) => {
  return res.json(getUnlockedState());
});

// بدء المشاهدة — مسموح دائمًا ومفتوح لجميع السيرفرات
router.post("/ads/watch-start", (_req: Request, res: Response) => {
  return res.json({ allowed: true, ...getUnlockedState() });
});

// بدء التنزيل — مسموح دائمًا وبدون إعلانات
router.post("/ads/download-start", (_req: Request, res: Response) => {
  return res.json({ allowed: true, ...getUnlockedState() });
});

// إكمال التنزيل
router.post("/ads/download-complete", (_req: Request, res: Response) => {
  return res.json({ counted: false, ...getUnlockedState() });
});

// طلب إعلان — تجاوز فوري (bypass) لأن الإعلانات ملغية
router.post("/ads/reward/start", (_req: Request, res: Response) => {
  return res.json({ bypass: true, ...getUnlockedState() });
});

// إكمال مكافأة — نجاح مباشر
router.post("/ads/reward/complete", (_req: Request, res: Response) => {
  return res.json({ ok: true, ...getUnlockedState() });
});

// إعدادات الإعلانات في لوحة الإدارة
router.get("/admin/ads-settings", async (req: Request, res: Response) => {
  const { isWebAdmin } = await import("./webAdmin.js");
  const { getEmailUser } = await import("../auth/emailAuth.js");
  const user = await getEmailUser(req);
  if (!isWebAdmin(req) && user?.plan !== "admin") return res.status(401).json({ error: "غير مصرّح" });
  return res.json({ enabled: false });
});

router.patch("/admin/ads-settings", async (req: Request, res: Response) => {
  const { isWebAdmin } = await import("./webAdmin.js");
  const { getEmailUser } = await import("../auth/emailAuth.js");
  const user = await getEmailUser(req);
  if (!isWebAdmin(req) && user?.plan !== "admin") return res.status(401).json({ error: "غير مصرّح" });
  const enabled = false; // الإعلانات ملغية
  await setDbConfig(SETTINGS_KEY, JSON.stringify({ enabled: false }));
  return res.json({ ok: true, enabled: false });
});

export default router;

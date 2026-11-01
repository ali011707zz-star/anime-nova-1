import { Router, type Request, type Response } from "express";
import { randomBytes, createHmac, timingSafeEqual } from "crypto";
import { sbSelect, sbUpsert } from "../lib/supabaseClient.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { getMobileUserId } from "../lib/security.js";

const router = Router();
const PREFIX = "rewarded_ads:";
const DOWNLOAD_LIMIT = 4;
const WATCH_MINUTES = 60;
const CHALLENGE_TTL_MS = 10 * 60 * 1000;
type RewardType = "download" | "watch";
type PendingChallenge = { type: RewardType; nonce: string; exp: number };
type State = {
  downloads: number;
  episodes: string[];
  watchUntil: string | null;
  events: Array<{ type: string; ok: boolean; at: string }>;
  pending: PendingChallenge[];
};

type ChallengePayload = { type: RewardType; id: string; nonce: string; exp: number };

function userId(req: Request): string | null {
  return (req.session as any)?.userId || (req.session as any)?.emailUserId || getMobileUserId(req) || null;
}
function deviceId(req: Request): string | null {
  const raw = String(req.headers["x-nova-device"] || "").trim();
  return raw && /^[a-zA-Z0-9._:-]{8,120}$/.test(raw) ? raw : null;
}
function key(req: Request): string | null { return userId(req) || deviceId(req); }
function empty(): State { return { downloads: 0, episodes: [], watchUntil: null, events: [], pending: [] }; }
function normalize(value: any): State {
  const base = empty();
  return {
    downloads: Math.max(0, Math.min(DOWNLOAD_LIMIT, Number(value?.downloads) || 0)),
    episodes: Array.isArray(value?.episodes) ? value.episodes.map(String).slice(-100) : [],
    watchUntil: typeof value?.watchUntil === "string" ? value.watchUntil : null,
    events: Array.isArray(value?.events) ? value.events.slice(-50) : [],
    pending: Array.isArray(value?.pending)
      ? value.pending.filter((p: any) => (p?.type === "download" || p?.type === "watch") && p?.nonce && Number(p?.exp) > Date.now()).slice(-10)
      : base.pending,
  };
}
async function state(req: Request): Promise<State> {
  const id = key(req); if (!id) return empty();
  const rows = await sbSelect<any>("app_config", { key: `eq.${PREFIX}${id}` }, { limit: 1 });
  try { return normalize(JSON.parse(rows[0]?.value || "{}")); } catch { return empty(); }
}
async function save(id: string, value: State): Promise<void> {
  await sbUpsert("app_config", { key: `${PREFIX}${id}`, value: JSON.stringify(value), updated_at: new Date().toISOString() }, "key");
}
async function plan(req: Request): Promise<string> {
  const id = userId(req);
  if (id) {
    const entitlement = await sbSelect<any>("app_config", { key: `eq.admin_entitlement:${id}` }, { limit: 1 });
    try {
      const value = JSON.parse(entitlement[0]?.value || "{}");
      if (value.plan === "premium" || value.plan === "admin") return value.plan;
    } catch {}
  }
  try {
    const u = await getEmailUser(req);
    return u?.plan === "premium" || u?.plan === "admin" ? u.plan : "free";
  } catch { return "free"; }
}
function signingSecret(): string { return process.env.APP_SECRET || "anime-nova-default-change-me-aabbccdd"; }
function issueChallenge(type: RewardType, id: string, s: State): string {
  const payload: ChallengePayload = { type, id, nonce: randomBytes(18).toString("base64url"), exp: Date.now() + CHALLENGE_TTL_MS };
  const encoded = Buffer.from(JSON.stringify(payload)).toString("base64url");
  const sig = createHmac("sha256", signingSecret()).update(encoded).digest("base64url");
  s.pending = [...s.pending.filter((p) => p.exp > Date.now()), { type, nonce: payload.nonce, exp: payload.exp }].slice(-10);
  return `${encoded}.${sig}`;
}
function parseChallenge(raw: string, type: RewardType, id: string): ChallengePayload | null {
  const [encoded, sig] = String(raw || "").split(".");
  if (!encoded || !sig) return null;
  const expected = createHmac("sha256", signingSecret()).update(encoded).digest("base64url");
  try {
    if (!timingSafeEqual(Buffer.from(sig), Buffer.from(expected))) return null;
    const payload = JSON.parse(Buffer.from(encoded, "base64url").toString("utf8")) as ChallengePayload;
    if (payload.type !== type || payload.id !== id || !payload.nonce || !Number.isSafeInteger(payload.exp) || payload.exp <= Date.now()) return null;
    return payload;
  } catch { return null; }
}
function consumeChallenge(s: State, payload: ChallengePayload): boolean {
  const found = s.pending.some((p) => p.type === payload.type && p.nonce === payload.nonce && p.exp > Date.now());
  if (!found) return false;
  s.pending = s.pending.filter((p) => p.nonce !== payload.nonce);
  return true;
}

router.get("/ads/status", async (req: Request, res: Response) => {
  const id = key(req); const p = await plan(req); const s = await state(req);
  const active = s.watchUntil ? new Date(s.watchUntil).getTime() > Date.now() : false;
  const watchChallenge = id && p === "free" ? issueChallenge("watch", id, s) : null;
  const downloadChallenge = id && p === "free" && s.downloads >= DOWNLOAD_LIMIT ? issueChallenge("download", id, s) : null;
  if (id && p === "free" && (watchChallenge || downloadChallenge)) await save(id, s);
  return res.json({
    plan: p,
    adsEnabled: p === "free",
    downloads: p === "free" ? s.downloads : 0,
    downloadLimit: DOWNLOAD_LIMIT,
    downloadAdRequired: p === "free" && s.downloads >= DOWNLOAD_LIMIT,
    watchAccess: p !== "free" || active,
    watchUntil: p !== "free" ? null : (active ? s.watchUntil : null),
    challenge: watchChallenge,
    downloadChallenge,
  });
});

router.post("/ads/download/completed", async (req: Request, res: Response) => {
  const id = key(req); if (!id) return res.status(401).json({ error: "تسجيل الدخول أو معرّف الجهاز مطلوب" });
  const episodeKey = String(req.body?.episodeKey || `${req.body?.animeId}:e${req.body?.ep}`).slice(0, 160);
  if (!episodeKey || episodeKey === ":eundefined") return res.status(400).json({ error: "episodeKey مطلوب" });
  const p = await plan(req); const s = await state(req);
  if (p !== "free") return res.json({ ok: true, plan: p, downloadAdRequired: false });
  if (s.episodes.includes(episodeKey)) return res.json({ ok: true, duplicate: true, downloads: s.downloads, downloadAdRequired: s.downloads >= DOWNLOAD_LIMIT });
  s.episodes = [...s.episodes.slice(-99), episodeKey]; s.downloads += 1;
  s.events = [...s.events.slice(-49), { type: "download", ok: true, at: new Date().toISOString() }];
  await save(id, s);
  return res.json({ ok: true, downloads: s.downloads, downloadAdRequired: s.downloads >= DOWNLOAD_LIMIT });
});

router.post("/ads/download/reward", async (req: Request, res: Response) => {
  const id = key(req); if (!id) return res.status(401).json({ error: "غير مصرّح" });
  const p = await plan(req); if (p !== "free") return res.json({ ok: true, plan: p, downloads: 0 });
  const s = await state(req);
  if (s.downloads < DOWNLOAD_LIMIT) return res.status(409).json({ error: "لم يكتمل عدد التنزيلات المطلوب" });
  const payload = parseChallenge(String(req.body?.challenge || ""), "download", id);
  if (!payload || !consumeChallenge(s, payload)) return res.status(403).json({ error: "تصريح الإعلان غير صالح أو مستخدم" });
  s.downloads = 0; s.episodes = []; s.events = [...s.events.slice(-49), { type: "download_reward", ok: true, at: new Date().toISOString() }];
  await save(id, s); return res.json({ ok: true, downloads: 0 });
});

router.post("/ads/watch/reward", async (req: Request, res: Response) => {
  const id = key(req); if (!id) return res.status(401).json({ error: "غير مصرّح" });
  const p = await plan(req); if (p !== "free") return res.json({ ok: true, plan: p, watchAccess: true, watchUntil: null });
  const s = await state(req);
  const payload = parseChallenge(String(req.body?.challenge || ""), "watch", id);
  if (!payload || !consumeChallenge(s, payload)) return res.status(403).json({ error: "تصريح الإعلان غير صالح أو مستخدم" });
  const until = new Date(Date.now() + WATCH_MINUTES * 60_000).toISOString();
  s.watchUntil = until; s.events = [...s.events.slice(-49), { type: "watch_reward", ok: true, at: new Date().toISOString() }];
  await save(id, s); return res.json({ ok: true, watchAccess: true, watchUntil: until });
});
export default router;

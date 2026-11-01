import { getDbConfig, setDbConfig } from "./dbConfig.js";

const POLICY_KEY = "mobile_release_policy";
const DEFAULT_POLICY = { minVersion: "1.0.0", blockedVersions: [] as string[] };
let cached: { value: typeof DEFAULT_POLICY; at: number } | null = null;

function normalizeVersion(value: unknown): string {
  return String(value ?? "").trim().replace(/^v/i, "").slice(0, 32);
}
function parts(value: string): number[] {
  return normalizeVersion(value).split(".").map((x) => Number.parseInt(x, 10)).map((x) => Number.isFinite(x) && x >= 0 ? x : 0);
}
export function versionAtLeast(current: string, minimum: string): boolean {
  const a = parts(current), b = parts(minimum);
  for (let i = 0; i < Math.max(a.length, b.length); i++) {
    const av = a[i] ?? 0, bv = b[i] ?? 0;
    if (av !== bv) return av > bv;
  }
  return true;
}
function clean(raw: unknown): typeof DEFAULT_POLICY {
  const value = raw && typeof raw === "object" ? raw as any : {};
  const blocked = Array.isArray(value.blockedVersions)
    ? [...new Set(value.blockedVersions.map(normalizeVersion).filter(Boolean))].slice(0, 200)
    : [];
  const minVersion = normalizeVersion(value.minVersion) || DEFAULT_POLICY.minVersion;
  return { minVersion, blockedVersions: blocked };
}
export async function getMobileReleasePolicy(force = false) {
  if (!force && cached && Date.now() - cached.at < 30_000) return cached.value;
  try {
    const raw = await getDbConfig(POLICY_KEY);
    const value = clean(raw ? JSON.parse(raw) : DEFAULT_POLICY);
    cached = { value, at: Date.now() };
    return value;
  } catch {
    return cached?.value ?? DEFAULT_POLICY;
  }
}
export async function saveMobileReleasePolicy(value: unknown) {
  const next = clean(value);
  await setDbConfig(POLICY_KEY, JSON.stringify(next));
  cached = { value: next, at: Date.now() };
  return next;
}
export async function checkMobileRelease(version: string) {
  const policy = await getMobileReleasePolicy();
  const normalized = normalizeVersion(version);
  if (!normalized || policy.blockedVersions.includes(normalized)) return { ok: false as const, code: "APP_VERSION_BLOCKED" as const, policy };
  if (!versionAtLeast(normalized, policy.minVersion)) return { ok: false as const, code: "APP_UPDATE_REQUIRED" as const, policy };
  return { ok: true as const, policy };
}
export { POLICY_KEY };

import { sendAdminAlert } from "../routes/telegram.js";

export type KawaiiIncidentKind = "api_unavailable" | "untrusted_media_host";

export type KawaiiIncidentAttempt = {
  reason?: string;
  outcome?: string;
  status?: number | null;
  host?: string;
  mediaHosts?: string[];
};

export type KawaiiIncidentContext = {
  anilistId?: number;
  episode?: number;
  mediaHosts?: readonly string[];
};

let alertInFlight = false;
let incidentActive = false;

/**
 * Notify the configured Telegram admin chat once per incident window.
 * The message contains status categories only—never media URLs or signatures.
 */
export function notifyKawaiiIncident(
  kind: KawaiiIncidentKind,
  attempts: readonly KawaiiIncidentAttempt[] = [],
  context: KawaiiIncidentContext = {},
): void {
  if (incidentActive || alertInFlight) return;

  incidentActive = true;
  alertInFlight = true;

  const counts = new Map<string, number>();
  const hosts = new Set<string>();
  for (const attempt of attempts) {
    const rawReason = String(attempt.reason || attempt.outcome || "unknown").toLowerCase();
    const reason = rawReason.replace(/[^a-z0-9_-]/g, "").slice(0, 32) || "unknown";
    const status = typeof attempt.status === "number" &&
      Number.isInteger(attempt.status) &&
      attempt.status >= 100 &&
      attempt.status <= 599
      ? `/${attempt.status}`
      : "";
    const label = `${reason}${status}`;
    counts.set(label, (counts.get(label) || 0) + 1);
    for (const candidate of [attempt.host, ...(attempt.mediaHosts || [])]) {
      const host = sanitizeHostname(candidate);
      if (host) hosts.add(host);
    }
  }
  for (const candidate of context.mediaHosts || []) {
    const host = sanitizeHostname(candidate);
    if (host) hosts.add(host);
  }

  const summary = [...counts.entries()]
    .slice(0, 8)
    .map(([reason, count]) => `${reason}=${count}`)
    .join(", ") || "no attempt details";
  const description = kind === "api_unavailable"
    ? "فشلت جميع محاولات الوصول إلى واجهة كواي البديلة."
    : "أعاد API كواي نطاق فيديو غير موثوق؛ تم رفضه.";
  const message = [
    "⚠️ تنبيه مصدر كواي أنمي",
    description,
    `AniList ID: ${Number.isSafeInteger(context.anilistId) && Number(context.anilistId) > 0 ? context.anilistId : "غير متاح"}؛ الحلقة: ${Number.isSafeInteger(context.episode) && Number(context.episode) >= 0 ? context.episode : "غير متاحة"}`,
    hosts.size ? `المضيفون: ${[...hosts].slice(0, 8).join(", ")}` : "",
    `المحاولات: ${attempts.length}. الأسباب: ${summary}`,
    "لا يتضمن التنبيه عنوان الأنمي أو روابط/تواقيع فيديو. يُرسل تنبيه واحد لكل عطل، ويُعاد تفعيله بعد عودة المصدر للعمل.",
  ].filter(Boolean).join("\n");

  void sendAdminAlert(message)
    .catch(() => undefined)
    .finally(() => { alertInFlight = false; });
}

/** A successful trusted Kawaii response closes the incident so a later outage alerts again. */
export function markKawaiiRecovered(): void {
  incidentActive = false;
}

function sanitizeHostname(value: unknown): string | null {
  if (typeof value !== "string" || !value.trim()) return null;
  try {
    const raw = value.trim();
    const hostname = (raw.includes("://")
      ? new URL(raw).hostname
      : raw.split(/[/?#]/, 1)[0].replace(/:\d+$/, "")
    ).toLowerCase().replace(/\.$/, "");
    return hostname.length <= 253 && /^[a-z0-9.-]+$/.test(hostname) ? hostname : null;
  } catch {
    return null;
  }
}

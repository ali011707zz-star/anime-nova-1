import { sendAdminAlert } from "../routes/telegram.js";

export type KawaiiIncidentKind = "api_unavailable" | "untrusted_media_host";

export type KawaiiIncidentAttempt = {
  reason?: string;
  outcome?: string;
  status?: number | null;
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
): void {
  if (incidentActive || alertInFlight) return;

  incidentActive = true;
  alertInFlight = true;

  const counts = new Map<string, number>();
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
    `المحاولات: ${attempts.length}. الأسباب: ${summary}`,
    "لم يتضمن التنبيه روابط فيديو أو روابط موقّعة. سيُحدّ تكراره إلى مرة كل 30 دقيقة.",
  ].join("\n");

  void sendAdminAlert(message)
    .catch(() => undefined)
    .finally(() => { alertInFlight = false; });
}

/** A successful trusted Kawaii response closes the incident so a later outage alerts again. */
export function markKawaiiRecovered(): void {
  incidentActive = false;
}

export const FCM_TOKEN_REFRESH_INTERVAL_MS = 7 * 24 * 60 * 60 * 1000;

export function shouldRefreshFcmToken(token, checkedAt, now = Date.now(), force = false) {
  if (force || typeof token !== "string" || !token.trim()) return true;
  if (!Number.isFinite(checkedAt) || checkedAt <= 0 || now < checkedAt) return true;
  return now - checkedAt >= FCM_TOKEN_REFRESH_INTERVAL_MS;
}

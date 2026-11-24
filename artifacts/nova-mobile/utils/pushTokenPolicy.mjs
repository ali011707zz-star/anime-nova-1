export const FCM_TOKEN_REFRESH_INTERVAL_MS = 7 * 24 * 60 * 60 * 1000;
export const PUSH_REGISTER_DEDUPE_WINDOW_MS = 5 * 60 * 1000;
export const PUSH_TOKEN_EVENT_COOLDOWN_MS = 30 * 1000;

export function shouldRefreshFcmToken(token, checkedAt, now = Date.now(), force = false) {
  if (force || typeof token !== "string" || !token.trim()) return true;
  if (!Number.isFinite(checkedAt) || checkedAt <= 0 || now < checkedAt) return true;
  return now - checkedAt >= FCM_TOKEN_REFRESH_INTERVAL_MS;
}

export function buildPushSyncSignature(token, userId) {
  const cleanToken = typeof token === "string" ? token.trim() : "";
  const cleanUser = typeof userId === "string" ? userId.trim() : "";
  return `${cleanToken}::${cleanUser}`;
}

/**
 * Prevents the Android expo-notifications feedback loop where calling
 * getDevicePushTokenAsync() synchronously emits addPushTokenListener() with
 * the exact same token, triggering an infinite POST /api/push/register cycle.
 */
export function shouldProcessPushTokenEvent(
  incomingToken,
  knownToken,
  lastEventAt = 0,
  now = Date.now(),
  cooldownMs = PUSH_TOKEN_EVENT_COOLDOWN_MS,
) {
  const cleanIncoming = typeof incomingToken === "string" ? incomingToken.trim() : "";
  if (cleanIncoming.length < 20) return false;
  const cleanKnown = typeof knownToken === "string" ? knownToken.trim() : "";
  if (cleanKnown && cleanIncoming === cleanKnown) return false;
  if (Number.isFinite(lastEventAt) && lastEventAt > 0 && now >= lastEventAt && now - lastEventAt < cooldownMs) {
    return false;
  }
  return true;
}

/**
 * Skips redundant POST /api/push/register calls during the same session when
 * the exact same (token, userId) pair was already registered recently.
 */
export function shouldSkipDuplicatePushRegister(
  token,
  userId,
  lastSignature,
  lastSyncedAt,
  now = Date.now(),
  windowMs = PUSH_REGISTER_DEDUPE_WINDOW_MS,
  force = false,
) {
  if (force) return false;
  const sig = buildPushSyncSignature(token, userId);
  if (!sig || sig.startsWith("::")) return false;
  if (!lastSignature || sig !== lastSignature) return false;
  if (!Number.isFinite(lastSyncedAt) || lastSyncedAt <= 0 || now < lastSyncedAt) return false;
  return now - lastSyncedAt < windowMs;
}

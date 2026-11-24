export declare const FCM_TOKEN_REFRESH_INTERVAL_MS: number;
export declare const PUSH_REGISTER_DEDUPE_WINDOW_MS: number;
export declare const PUSH_TOKEN_EVENT_COOLDOWN_MS: number;
export declare function shouldRefreshFcmToken(
  token: string | null | undefined,
  checkedAt: number,
  now?: number,
  force?: boolean,
): boolean;
export declare function buildPushSyncSignature(
  token: string | null | undefined,
  userId: string | null | undefined,
): string;
export declare function shouldProcessPushTokenEvent(
  incomingToken: unknown,
  knownToken: string | null | undefined,
  lastEventAt?: number,
  now?: number,
  cooldownMs?: number,
): boolean;
export declare function shouldSkipDuplicatePushRegister(
  token: string | null | undefined,
  userId: string | null | undefined,
  lastSignature: string | null | undefined,
  lastSyncedAt: number,
  now?: number,
  windowMs?: number,
  force?: boolean,
): boolean;

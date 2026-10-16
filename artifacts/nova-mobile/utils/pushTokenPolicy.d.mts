export declare const FCM_TOKEN_REFRESH_INTERVAL_MS: number;

export declare function shouldRefreshFcmToken(
  token: string | null | undefined,
  checkedAt: number,
  now?: number,
  force?: boolean,
): boolean;

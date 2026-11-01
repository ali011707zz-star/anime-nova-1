import { createSign } from "node:crypto";
import { readFileSync, statSync } from "node:fs";

const GOOGLE_TOKEN_URL = "https://oauth2.googleapis.com/token";
const FCM_SCOPE = "https://www.googleapis.com/auth/firebase.messaging";
// Keep the private credential outside the repository and outside Replit.
const DEFAULT_SERVICE_ACCOUNT_FILE = "/etc/nova/fcm-service-account.json";
const TEMPORARY_FCM_ERRORS = new Set(["QUOTA_EXCEEDED", "UNAVAILABLE", "INTERNAL"]);

type FirebaseServiceAccount = {
  project_id: string;
  client_email: string;
  private_key: string;
};

type FcmPayload = {
  title?: unknown;
  body?: unknown;
  channelId?: unknown;
  sound?: unknown;
  richContent?: { image?: unknown };
  data?: Record<string, unknown>;
};

export type FcmSendResult =
  | { ok: true }
  | { ok: false; code: string; retryable: boolean; invalidToken: boolean };

class FcmConfigurationError extends Error {
  constructor(readonly code: string) {
    super(code);
    this.name = "FcmConfigurationError";
  }
}

let cachedAccount: {
  filePath: string;
  mtimeMs: number;
  account: FirebaseServiceAccount;
} | null = null;
let cachedAccessToken: { value: string; expiresAt: number } | null = null;
let accessTokenRequest: Promise<string> | null = null;

function safeCode(value: unknown, fallback: string): string {
  return typeof value === "string" && /^[A-Za-z0-9_.-]{1,80}$/.test(value)
    ? value.toUpperCase()
    : fallback;
}

function loadServiceAccount(): FirebaseServiceAccount {
  const filePath = DEFAULT_SERVICE_ACCOUNT_FILE;
  let metadata;
  try {
    metadata = statSync(filePath);
  } catch {
    throw new FcmConfigurationError("CREDENTIAL_FILE_MISSING");
  }
  if (!metadata.isFile()) throw new FcmConfigurationError("CREDENTIAL_FILE_INVALID");
  if ((metadata.mode & 0o077) !== 0) throw new FcmConfigurationError("CREDENTIAL_FILE_PERMISSIONS");
  if (cachedAccount?.filePath === filePath && cachedAccount.mtimeMs === metadata.mtimeMs) {
    return cachedAccount.account;
  }

  let parsed: Partial<FirebaseServiceAccount>;
  try {
    parsed = JSON.parse(readFileSync(filePath, "utf8")) as Partial<FirebaseServiceAccount>;
  } catch {
    throw new FcmConfigurationError("CREDENTIAL_FILE_INVALID");
  }
  if (
    typeof parsed.project_id !== "string" ||
    !/^[a-z0-9-]+$/i.test(parsed.project_id) ||
    typeof parsed.client_email !== "string" ||
    !parsed.client_email.endsWith(".gserviceaccount.com") ||
    typeof parsed.private_key !== "string" ||
    !parsed.private_key.includes("PRIVATE KEY")
  ) {
    throw new FcmConfigurationError("CREDENTIAL_FILE_INVALID");
  }

  const account = {
    project_id: parsed.project_id,
    client_email: parsed.client_email,
    private_key: parsed.private_key.replace(/\\n/g, "\n"),
  };
  cachedAccount = { filePath, mtimeMs: metadata.mtimeMs, account };
  return account;
}

function encodeBase64Url(value: string | Buffer): string {
  return Buffer.from(value).toString("base64url");
}

function createServiceAccountJwt(account: FirebaseServiceAccount): string {
  const now = Math.floor(Date.now() / 1000);
  const header = encodeBase64Url(JSON.stringify({ alg: "RS256", typ: "JWT" }));
  const claims = encodeBase64Url(JSON.stringify({
    iss: account.client_email,
    scope: FCM_SCOPE,
    aud: GOOGLE_TOKEN_URL,
    iat: now,
    exp: now + 3600,
  }));
  const unsignedJwt = `${header}.${claims}`;
  const signer = createSign("RSA-SHA256");
  signer.update(unsignedJwt);
  signer.end();
  return `${unsignedJwt}.${signer.sign(account.private_key).toString("base64url")}`;
}

async function requestAccessToken(): Promise<string> {
  const account = loadServiceAccount();
  let response: Response;
  try {
    response = await fetch(GOOGLE_TOKEN_URL, {
      method: "POST",
      headers: { "Content-Type": "application/x-www-form-urlencoded" },
      body: new URLSearchParams({
        grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
        assertion: createServiceAccountJwt(account),
      }),
      signal: AbortSignal.timeout(10_000),
    });
  } catch {
    throw new FcmConfigurationError("TOKEN_EXCHANGE_NETWORK");
  }

  const body = await response.json().catch(() => null) as {
    access_token?: unknown;
    expires_in?: unknown;
    error?: unknown;
  } | null;
  if (!response.ok || typeof body?.access_token !== "string") {
    const providerError = safeCode(body?.error, `HTTP${response.status}`);
    throw new FcmConfigurationError(`TOKEN_EXCHANGE_${providerError}`);
  }

  const lifetimeSeconds = typeof body.expires_in === "number" && body.expires_in > 0
    ? body.expires_in
    : 3600;
  cachedAccessToken = {
    value: body.access_token,
    expiresAt: Date.now() + lifetimeSeconds * 1000,
  };
  return body.access_token;
}

async function getAccessToken(): Promise<string> {
  if (cachedAccessToken && cachedAccessToken.expiresAt > Date.now() + 60_000) {
    return cachedAccessToken.value;
  }
  if (!accessTokenRequest) {
    accessTokenRequest = requestAccessToken().finally(() => {
      accessTokenRequest = null;
    });
  }
  return accessTokenRequest;
}

function stringData(data: Record<string, unknown> | undefined): Record<string, string> | undefined {
  if (!data) return undefined;
  const result: Record<string, string> = {};
  for (const [key, value] of Object.entries(data)) {
    if (!key || key === "from" || key.startsWith("google.")) continue;
    if (value === null || value === undefined) continue;
    const serialized = typeof value === "string" ? value : JSON.stringify(value);
    if (typeof serialized === "string") result[key] = serialized;
  }
  return Object.keys(result).length ? result : undefined;
}

function errorResult(body: unknown, status: number): FcmSendResult {
  const error = body && typeof body === "object" && "error" in body
    ? (body as { error?: { status?: unknown; details?: unknown } }).error
    : undefined;
  const details = Array.isArray(error?.details) ? error.details : [];
  const fcmDetail = details.find((detail: any) =>
    detail && typeof detail === "object" && typeof detail.errorCode === "string",
  ) as { errorCode?: unknown } | undefined;
  const providerCode = safeCode(fcmDetail?.errorCode, safeCode(error?.status, `HTTP${status}`));
  return {
    ok: false,
    code: `FCM_${providerCode}`,
    invalidToken: providerCode === "UNREGISTERED",
    retryable: status === 429 || status >= 500 || TEMPORARY_FCM_ERRORS.has(providerCode),
  };
}

export async function sendFcmMessage(token: string, payload: FcmPayload): Promise<FcmSendResult> {
  try {
    const account = loadServiceAccount();
    const accessToken = await getAccessToken();
    const image = typeof payload.richContent?.image === "string" ? payload.richContent.image : undefined;
    const notification = {
      ...(typeof payload.title === "string" ? { title: payload.title } : {}),
      ...(typeof payload.body === "string" ? { body: payload.body } : {}),
      ...(image ? { image } : {}),
    };
    const data = stringData(payload.data);
    const message = {
      token,
      ...(Object.keys(notification).length ? { notification } : {}),
      ...(data ? { data } : {}),
      android: {
        priority: "HIGH",
        notification: {
          channel_id: typeof payload.channelId === "string" ? payload.channelId : "nova-new-episodes",
          ...(typeof payload.sound === "string" ? { sound: payload.sound } : {}),
          ...(image ? { image } : {}),
        },
      },
    };

    let response: Response;
    try {
      response = await fetch(
        `https://fcm.googleapis.com/v1/projects/${encodeURIComponent(account.project_id)}/messages:send`,
        {
          method: "POST",
          headers: {
            Authorization: `Bearer ${accessToken}`,
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ message }),
          signal: AbortSignal.timeout(15_000),
        },
      );
    } catch {
      return { ok: false, code: "FCM_NETWORK_ERROR", retryable: true, invalidToken: false };
    }

    if (response.ok) return { ok: true };
    const body = await response.json().catch(() => null);
    return errorResult(body, response.status);
  } catch (error) {
    const code = error instanceof FcmConfigurationError ? error.code : "SEND_FAILED";
    return {
      ok: false,
      code: `FCM_${code}`,
      retryable: code === "TOKEN_EXCHANGE_NETWORK",
      invalidToken: false,
    };
  }
}
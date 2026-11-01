import { Router, type Request, type Response } from "express";
import { randomUUID } from "node:crypto";
import { sbInsertIgnore, sbPatch, sbSelect, sbUpsert } from "../lib/supabaseClient.js";
import { getMobileUserId } from "../lib/security.js";
import { sendFcmMessage } from "../lib/fcm.js";

const router = Router();
const EXPO_PUSH_URL = "https://exp.host/--/api/v2/push/send";
const EXPO_RECEIPTS_URL = "https://exp.host/--/api/v2/push/getReceipts";
const EXPO_TOKEN_RE = /^(?:Expo|Exponent)PushToken\[[A-Za-z0-9_-]+\]$/;
const PUSH_DELIVERIES_TABLE = "mobile_push_deliveries";
const RECEIPT_DELAY_MS = 15 * 60_000;
const MAX_RETRY_DELAY_MS = 24 * 60 * 60_000;
const TRANSIENT_EXPO_ERRORS = new Set([
  "MessageRateExceeded",
  "ExpoServerError",
  "ExpoPushReceiptTimeout",
  "ServiceUnavailable",
  "InternalServerError",
  "GatewayTimeout",
  "ECONNRESET",
  "ETIMEDOUT",
]);

type DeliveryStatus = "queued" | "retry" | "ticket_pending" | "sent" | "invalid_token" | "failed";

type PushDeliveryRow = {
  id: number;
  event_key: string;
  token: string;
  payload_json: string;
  status: DeliveryStatus;
  attempts: number;
  next_attempt_at: string | null;
  ticket_id?: string | null;
  created_at: string;
  last_error?: string | null;
};

export type PushDeliverySummary = {
  eventKey: string;
  targets: number;
  delivered: number;
  pending: number;
  failed: number;
  /** True when every active target has a durable delivery row (delivery may still be pending). */
  queueReady: boolean;
  complete: boolean;
};

type PushTokenRow = {
  token: string;
  user_id?: string;
  platform?: string;
  app_version?: string;
};

function isExpoToken(value: string): boolean {
  return EXPO_TOKEN_RE.test(value);
}

function validToken(value: unknown): value is string {
  return typeof value === "string" &&
    value.length >= 20 &&
    value.length <= 4096 &&
    !/[\u0000-\u0020\u007f]/.test(value) &&
    (EXPO_TOKEN_RE.test(value) || value.length >= 32);
}

router.post("/push/register", async (req: Request, res: Response) => {
  const token = req.body?.token;
  const platform = req.body?.platform === "ios" ? "ios" : "android";
  if (!validToken(token) || (!isExpoToken(token) && platform !== "android")) {
    console.warn("[push] registration rejected: invalid push token or provider/platform mismatch");
    return res.status(400).json({ error: "Invalid push token" });
  }

  const appVersion = typeof req.body?.appVersion === "string"
    ? req.body.appVersion.slice(0, 32)
    : null;
  try {
    const previousToken = req.body?.previousToken;
    if (previousToken !== token && validToken(previousToken)) {
      const previousDisabled = await sbPatch(
        "mobile_push_tokens",
        { token: `eq.${previousToken}` },
        {
          disabled_at: new Date().toISOString(),
          last_seen_at: new Date().toISOString(),
        },
      );
      if (!previousDisabled) {
        const stillActive = await sbSelect<PushTokenRow>(
          "mobile_push_tokens",
          { token: `eq.${previousToken}`, disabled_at: "is.null" },
          { limit: 1, strict: true },
        );
        if (stillActive.length) {
          console.warn(`[push] previous token could not be disabled during provider migration platform=${platform}`);
          return res.status(503).json({ error: "Previous push token cleanup unavailable" });
        }
      }
    }

    const saved = await sbUpsert(
      "mobile_push_tokens",
      {
        token,
        user_id: getMobileUserId(req) ?? null,
        platform,
        app_version: appVersion,
        last_seen_at: new Date().toISOString(),
        disabled_at: null,
      },
      "token",
    );
    if (!saved) {
      console.warn(`[push] registration unavailable platform=${platform} version=${appVersion || "unknown"}`);
      return res.status(503).json({ error: "Push registration unavailable" });
    }
    console.log(`[push] registered device platform=${platform} version=${appVersion || "unknown"}`);
  } catch (error: any) {
    console.error("[push] registration failed:", error?.message || String(error));
    return res.status(503).json({ error: "Push registration unavailable" });
  }
  return res.json({ ok: true });
});

router.post("/push/unregister", async (req: Request, res: Response) => {
  const token = req.body?.token;
  if (!validToken(token)) return res.status(400).json({ error: "Invalid push token" });
  const updated = await sbPatch("mobile_push_tokens", { token: `eq.${token}` }, {
    disabled_at: new Date().toISOString(),
    last_seen_at: new Date().toISOString(),
  });
  if (!updated) {
    console.warn("[push] token unregister failed at database stage");
    return res.status(503).json({ error: "Push token unregister unavailable" });
  }
  return res.json({ ok: true });
});

async function disableToken(token: string): Promise<boolean> {
  const updated = await sbPatch("mobile_push_tokens", { token: `eq.${token}` }, {
    disabled_at: new Date().toISOString(),
  });
  return Boolean(updated);
}

function retryDelay(attempt: number): number {
  const base = Math.min(30_000 * 2 ** Math.min(Math.max(attempt - 1, 0), 11), MAX_RETRY_DELAY_MS);
  return Math.round(base * (0.8 + Math.random() * 0.4));
}

function retryAt(attempt: number, delayOverride?: number): string {
  return new Date(Date.now() + (delayOverride ?? retryDelay(attempt))).toISOString();
}

function cleanErrorCode(value: unknown): string {
  return typeof value === "string" && /^[A-Za-z0-9_.-]{1,80}$/.test(value)
    ? value
    : "UnknownExpoError";
}

function isRetryableExpoError(code: string): boolean {
  return TRANSIENT_EXPO_ERRORS.has(code) || code === "InvalidCredentials" || code === "MismatchSenderId";
}

async function patchDelivery(row: PushDeliveryRow, values: Record<string, unknown>): Promise<boolean> {
  const updated = await sbPatch<PushDeliveryRow>(
    PUSH_DELIVERIES_TABLE,
    { id: `eq.${row.id}` },
    { ...values, updated_at: new Date().toISOString() },
  );
  return Boolean(updated);
}

async function postExpoJson(url: string, payload: unknown, stage: "ticket" | "receipt") {
  let lastStatus = 0;
  let lastError = "NetworkError";
  for (let attempt = 1; attempt <= 3; attempt += 1) {
    try {
      const response = await fetch(url, {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json" },
        body: JSON.stringify(payload),
        signal: AbortSignal.timeout(15_000),
      });
      lastStatus = response.status;
      if (response.ok) {
        try {
          return { ok: true as const, status: response.status, body: await response.json() as any };
        } catch {
          lastError = "InvalidExpoResponse";
        }
      } else {
        lastError = `HTTP${response.status}`;
        if (response.status < 500 && response.status !== 429) {
          return { ok: false as const, status: response.status, error: lastError, retryable: false };
        }
      }
    } catch (error) {
      lastError = error instanceof Error ? cleanErrorCode(error.name === "TimeoutError" ? "ETIMEDOUT" : error.name) : "NetworkError";
    }

    if (attempt < 3) {
      console.warn(`[push] Expo ${stage} temporary failure attempt=${attempt}/3 status=${lastStatus || "network"} error=${lastError}`);
      await new Promise((resolve) => setTimeout(resolve, 500 * 2 ** (attempt - 1)));
    }
  }
  return {
    ok: false as const,
    status: lastStatus,
    error: lastError,
    retryable: lastStatus === 0 || lastStatus === 429 || lastStatus >= 500 || lastError === "InvalidExpoResponse",
  };
}

async function deferDelivery(
  row: PushDeliveryRow,
  code: string,
  options: { status?: DeliveryStatus; delayMs?: number; clearTicket?: boolean } = {},
): Promise<void> {
  const attempts = (row.attempts || 0) + 1;
  const status = options.status || (isRetryableExpoError(code) ? "retry" : "failed");
  const updated = await patchDelivery(row, {
    status,
    attempts,
    last_error: code,
    next_attempt_at: status === "failed" ? null : retryAt(attempts, options.delayMs),
    ...(options.clearTicket ? { ticket_id: null } : {}),
  });
  if (!updated) console.error(`[push] database failed to persist retry state error=${code}`);
  console.warn(`[push] delivery deferred status=${status} error=${code} attempt=${attempts}`);
}

async function disableDeliveryToken(row: PushDeliveryRow, code: string): Promise<void> {
  const disabled = await disableToken(row.token);
  const updated = await patchDelivery(row, {
    status: "invalid_token",
    last_error: disabled ? code : `${code}_database_retry`,
    next_attempt_at: disabled ? null : retryAt((row.attempts || 0) + 1, 5 * 60_000),
  });
  if (!disabled || !updated) {
    console.error(`[push] failed to disable invalid token at database stage; token suffix=${row.token.slice(-6)}`);
  } else {
    console.warn(`[push] invalid token disabled error=${code}`);
  }
}

async function sendTicketBatch(rows: PushDeliveryRow[]): Promise<void> {
  if (!rows.length) return;
  const messages = rows.map((row) => ({
    ...JSON.parse(row.payload_json),
    to: row.token,
  }));
  const response = await postExpoJson(EXPO_PUSH_URL, messages, "ticket");
  if (!response.ok) {
    for (const row of rows) {
      await deferDelivery(row, response.error, {
        status: response.retryable ? "retry" : "failed",
      });
    }
    console.warn(`[push] Expo ticket request failed status=${response.status || "network"} batch=${rows.length}`);
    return;
  }

  const tickets = Array.isArray(response.body?.data) ? response.body.data : [];
  if (tickets.length !== rows.length) {
    console.warn(`[push] Expo ticket count mismatch received=${tickets.length} expected=${rows.length}`);
  }
  for (let index = 0; index < rows.length; index += 1) {
    const row = rows[index];
    const ticket = tickets[index];
    if (ticket?.status === "ok" && typeof ticket.id === "string" && ticket.id) {
      const saved = await patchDelivery(row, {
        status: "ticket_pending",
        ticket_id: ticket.id,
        attempts: (row.attempts || 0) + 1,
        next_attempt_at: new Date(Date.now() + RECEIPT_DELAY_MS).toISOString(),
        last_error: null,
      });
      if (!saved) console.error("[push] database failed to save Expo ticket; retrying delivery row");
      else console.info("[push] Expo ticket accepted; receipt check scheduled");
      continue;
    }

    const code = cleanErrorCode(ticket?.details?.error || ticket?.message);
    if (code === "DeviceNotRegistered") {
      await disableDeliveryToken(row, code);
    } else if (isRetryableExpoError(code) || !ticket) {
      await deferDelivery(row, code === "UnknownExpoError" ? "MissingExpoTicket" : code, { status: "retry" });
    } else {
      await deferDelivery(row, code, { status: "failed" });
    }
  }
}

async function sendFcmDelivery(row: PushDeliveryRow): Promise<void> {
  let payload: Parameters<typeof sendFcmMessage>[1];
  try {
    payload = JSON.parse(row.payload_json) as Parameters<typeof sendFcmMessage>[1];
  } catch {
    await deferDelivery(row, "FCM_INVALID_QUEUED_PAYLOAD", { status: "failed" });
    return;
  }

  const result = await sendFcmMessage(row.token, payload);
  if (result.ok) {
    const saved = await patchDelivery(row, {
      status: "sent",
      attempts: (row.attempts || 0) + 1,
      next_attempt_at: null,
      last_error: null,
    });
    if (saved) console.info("[push] FCM accepted notification for delivery");
    else console.error("[push] database failed to persist FCM acceptance");
    return;
  }

  if (result.invalidToken) {
    await disableDeliveryToken(row, result.code);
    return;
  }
  await deferDelivery(row, result.code, {
    status: result.retryable ? "retry" : "failed",
  });
}

async function sendFcmBatch(rows: PushDeliveryRow[]): Promise<void> {
  for (let offset = 0; offset < rows.length; offset += 10) {
    await Promise.all(rows.slice(offset, offset + 10).map((row) => sendFcmDelivery(row)));
  }
}

async function processTicketReceipts(rows: PushDeliveryRow[]): Promise<void> {
  const withTickets = rows.filter((row) => row.ticket_id);
  for (let offset = 0; offset < withTickets.length; offset += 1000) {
    const batch = withTickets.slice(offset, offset + 1000);
    const response = await postExpoJson(
      EXPO_RECEIPTS_URL,
      { ids: batch.map((row) => row.ticket_id) },
      "receipt",
    );
    if (!response.ok) {
      for (const row of batch) {
        if (response.retryable) {
          await patchDelivery(row, {
            status: "ticket_pending",
            next_attempt_at: retryAt((row.attempts || 0) + 1),
            last_error: response.error,
          });
        } else {
          await patchDelivery(row, { status: "failed", next_attempt_at: null, last_error: response.error });
        }
      }
      console.warn(`[push] Expo receipt request failed status=${response.status || "network"} batch=${batch.length}`);
      continue;
    }

    const receipts = response.body?.data || {};
    for (const row of batch) {
      const receipt = row.ticket_id ? receipts[row.ticket_id] : null;
      if (!receipt) {
        const age = Date.now() - new Date(row.created_at).getTime();
        if (age >= 24 * 60 * 60_000) {
          await patchDelivery(row, { status: "failed", next_attempt_at: null, last_error: "ExpoReceiptExpired" });
          console.error("[push] Expo receipt missing beyond retention window; delivery marked failed");
        } else {
          await patchDelivery(row, {
            status: "ticket_pending",
            next_attempt_at: retryAt((row.attempts || 0) + 1, 5 * 60_000),
            last_error: "ExpoReceiptNotReady",
          });
          console.info("[push] Expo receipt not ready; another receipt check is scheduled");
        }
        continue;
      }

      if (receipt.status === "ok") {
        const updated = await patchDelivery(row, {
          status: "sent",
          next_attempt_at: null,
          last_error: null,
        });
        if (updated) console.info("[push] Expo receipt accepted by FCM/APNs");
        else console.error("[push] database failed to persist successful Expo receipt");
        continue;
      }

      const code = cleanErrorCode(receipt.details?.error || receipt.message);
      if (code === "DeviceNotRegistered") {
        await disableDeliveryToken(row, code);
      } else if (isRetryableExpoError(code)) {
        await deferDelivery(row, code, { clearTicket: true });
      } else {
        await deferDelivery(row, code, { status: "failed", clearTicket: true });
      }
    }
  }
}

let pushCycle: Promise<void> | null = null;

async function processPushCycle(): Promise<void> {
  const now = new Date().toISOString();
  const dueTickets = await sbSelect<PushDeliveryRow>(
    PUSH_DELIVERIES_TABLE,
    {
      status: "eq.ticket_pending",
      next_attempt_at: `lte.${now}`,
      order: "next_attempt_at.asc",
    },
    { limit: 1000, strict: true },
  );
  await processTicketReceipts(dueTickets);

  const dueSends = await sbSelect<PushDeliveryRow>(
    PUSH_DELIVERIES_TABLE,
    {
      status: "in.(queued,retry)",
      next_attempt_at: `lte.${now}`,
      order: "next_attempt_at.asc",
    },
    { limit: 1000, strict: true },
  );
  const expoRows = dueSends.filter((row) => isExpoToken(row.token));
  const fcmRows = dueSends.filter((row) => !isExpoToken(row.token));
  for (let offset = 0; offset < expoRows.length; offset += 100) {
    await sendTicketBatch(expoRows.slice(offset, offset + 100));
  }
  await sendFcmBatch(fcmRows);

  const invalidRows = await sbSelect<PushDeliveryRow>(
    PUSH_DELIVERIES_TABLE,
    {
      status: "eq.invalid_token",
      next_attempt_at: `lte.${now}`,
    },
    { limit: 100, strict: true },
  );
  for (const row of invalidRows) {
    const disabled = await disableToken(row.token);
    await patchDelivery(row, {
      next_attempt_at: disabled ? null : retryAt((row.attempts || 0) + 1, 5 * 60_000),
      last_error: disabled ? row.last_error : "DeviceNotRegistered_database_retry",
    });
  }
}

async function runPushCycle(): Promise<void> {
  if (pushCycle) return pushCycle;
  pushCycle = processPushCycle()
    .catch((error) => {
      console.error("[push] delivery worker failed at database/provider stage:", error instanceof Error ? error.message : String(error));
    })
    .finally(() => {
      pushCycle = null;
    });
  return pushCycle;
}

export function startPushDeliveryWorker(): void {
  console.info("[push] durable Expo ticket/receipt + FCM delivery worker started interval_seconds=60");
  void runPushCycle();
  setInterval(() => void runPushCycle(), 60_000);
}

export async function sendMobilePushDetailed(input: {
  title: string;
  body: string;
  posterUrl?: string;
  userId?: string;
  data?: Record<string, unknown>;
  eventKey?: string;
}): Promise<PushDeliverySummary> {
  const eventKey = input.eventKey || `push:${randomUUID()}`;
  let rows: PushTokenRow[] = [];
  try {
    for (let offset = 0; ; offset += 1000) {
      const page = await sbSelect<PushTokenRow>(
        "mobile_push_tokens",
        {
          disabled_at: "is.null",
          ...(input.userId ? { user_id: `eq.${input.userId}` } : {}),
          order: "token.asc",
        },
        { limit: 1000, offset, strict: true },
      );
      rows.push(...page);
      if (page.length < 1000) break;
    }
  } catch (error) {
    console.error(`[push] token database query failed event=${eventKey}:`, error instanceof Error ? error.message : String(error));
    return { eventKey, targets: 0, delivered: 0, pending: 1, failed: 0, queueReady: false, complete: false };
  }

  const validRows = rows.filter((row) => validToken(row.token));
  const invalidRows = rows.filter((row) => !validToken(row.token));
  for (const row of invalidRows) {
    const disabled = await disableToken(row.token);
    console.warn(`[push] invalid stored token ${disabled ? "disabled" : "could not be disabled"} suffix=${String(row.token).slice(-6)}`);
  }
  if (!validRows.length) {
    console.info(`[push] no active target devices event=${eventKey}`);
    return { eventKey, targets: 0, delivered: 0, pending: 0, failed: 0, queueReady: true, complete: true };
  }

  const payload = {
    sound: "default",
    title: input.title,
    body: input.body,
    channelId: "nova-new-episodes",
    ...(input.posterUrl ? { richContent: { image: input.posterUrl } } : {}),
    data: input.data || {},
  };
  const payloadJson = JSON.stringify(payload);
  try {
    for (let offset = 0; offset < validRows.length; offset += 100) {
      const batch = validRows.slice(offset, offset + 100).map((row) => ({
        event_key: eventKey,
        token: row.token,
        payload_json: payloadJson,
        status: "queued",
        attempts: 0,
        next_attempt_at: new Date().toISOString(),
      }));
      const inserted = await sbInsertIgnore(PUSH_DELIVERIES_TABLE, batch, "event_key,token");
      if (!inserted) {
        const existing = await sbSelect<PushDeliveryRow>(
          PUSH_DELIVERIES_TABLE,
          {
            event_key: `eq.${eventKey}`,
            token: `in.(${batch.map((row) => row.token).join(",")})`,
          },
          { limit: batch.length, strict: true },
        );
        if (existing.length < batch.length) throw new Error("Push delivery batch could not be queued");
      }
    }
  } catch (error) {
    console.error(`[push] delivery queue/database failed event=${eventKey}:`, error instanceof Error ? error.message : String(error));
    return { eventKey, targets: validRows.length, delivered: 0, pending: validRows.length, failed: 0, queueReady: false, complete: false };
  }

  console.info(`[push] database queue ready event=${eventKey} devices=${validRows.length}`);
  await runPushCycle();
  try {
    const deliveries: PushDeliveryRow[] = [];
    for (let offset = 0; ; offset += 1000) {
      const page = await sbSelect<PushDeliveryRow>(
        PUSH_DELIVERIES_TABLE,
        { event_key: `eq.${eventKey}`, order: "id.asc" },
        { limit: 1000, offset, strict: true },
      );
      deliveries.push(...page);
      if (page.length < 1000) break;
    }
    const delivered = deliveries.filter((row) => row.status === "sent").length;
    const pending = deliveries.filter((row) => ["queued", "retry", "ticket_pending"].includes(row.status)).length
      + Math.max(validRows.length - deliveries.length, 0);
    const failed = deliveries.filter((row) => row.status === "failed").length;
    return {
      eventKey,
      targets: validRows.length,
      delivered,
      pending,
      failed,
      queueReady: true,
      complete: pending === 0 && failed === 0 && deliveries.length >= validRows.length,
    };
  } catch (error) {
    console.error(`[push] delivery status query failed event=${eventKey}:`, error instanceof Error ? error.message : String(error));
    return { eventKey, targets: validRows.length, delivered: 0, pending: validRows.length, failed: 0, queueReady: true, complete: false };
  }
}

export async function sendMobilePush(input: Parameters<typeof sendMobilePushDetailed>[0]): Promise<number> {
  const result = await sendMobilePushDetailed(input);
  return result.delivered;
}

export async function sendNewEpisodePushDetailed(input: {
  animeId: number;
  title: string;
  episode: number;
  posterUrl?: string;
}): Promise<PushDeliverySummary> {
  // Episode alerts are broadcasts: leave userId unset so every active device gets them.
  return sendMobilePushDetailed({
    title: "🌸 حلقة جديدة وصلت!",
    body: `✨ ${input.title}\n🎬 الحلقة ${input.episode}`,
    posterUrl: input.posterUrl,
    eventKey: `episode:${input.animeId}:${input.episode}`,
    data: {
      type: "new-episode",
      animeId: input.animeId,
      episode: input.episode,
      title: input.title,
      poster: input.posterUrl || "",
    },
  });
}

export async function sendNewEpisodePush(input: {
  animeId: number;
  title: string;
  episode: number;
  posterUrl?: string;
}): Promise<number> {
  const result = await sendNewEpisodePushDetailed(input);
  return result.delivered;
}

export default router;
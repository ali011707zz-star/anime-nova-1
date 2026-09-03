import { Router, type Request, type Response } from "express";
import { sbPatch, sbSelect, sbUpsert } from "../lib/supabaseClient.js";
import { getMobileUserId } from "../lib/security.js";

const router = Router();
const EXPO_PUSH_URL = "https://exp.host/--/api/v2/push/send";
const EXPO_TOKEN_RE = /^(?:Expo|Exponent)PushToken\[[A-Za-z0-9_-]+\]$/;

type PushTokenRow = {
  token: string;
  user_id?: string;
  platform?: string;
  app_version?: string;
};

function validToken(value: unknown): value is string {
  return typeof value === "string" && value.length <= 255 && EXPO_TOKEN_RE.test(value);
}

router.post("/push/register", async (req: Request, res: Response) => {
  const token = req.body?.token;
  if (!validToken(token)) {
    console.warn("[push] registration rejected: invalid Expo token");
    return res.status(400).json({ error: "Invalid Expo push token" });
  }

  const platform = req.body?.platform === "ios" ? "ios" : "android";
  const appVersion = typeof req.body?.appVersion === "string"
    ? req.body.appVersion.slice(0, 32)
    : null;
  try {
    const saved = await sbUpsert(
      "mobile_push_tokens",
      {
        token,
        user_id: getMobileUserId(req),
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
  if (!validToken(token)) return res.status(400).json({ error: "Invalid Expo push token" });
  await sbPatch("mobile_push_tokens", { token: `eq.${token}` }, {
    disabled_at: new Date().toISOString(),
    last_seen_at: new Date().toISOString(),
  });
  return res.json({ ok: true });
});

async function disableToken(token: string): Promise<void> {
  await sbPatch("mobile_push_tokens", { token: `eq.${token}` }, {
    disabled_at: new Date().toISOString(),
  });
}

async function sendExpoBatch(messages: Array<Record<string, unknown>>): Promise<number> {
  if (!messages.length) return 0;
  try {
    const response = await fetch(EXPO_PUSH_URL, {
      method: "POST",
      headers: { "Content-Type": "application/json", Accept: "application/json" },
      body: JSON.stringify(messages),
      signal: AbortSignal.timeout(15_000),
    });
    if (!response.ok) {
      console.warn(`[push] Expo HTTP ${response.status}`);
      return 0;
    }
    const body = await response.json() as { data?: Array<{ status?: string; details?: { error?: string } }> };
    const results = body.data || [];
    let sent = 0;
    for (let index = 0; index < results.length; index += 1) {
      const result = results[index];
      if (result?.status === "ok") {
        sent += 1;
      } else if (result?.details?.error === "DeviceNotRegistered") {
        const token = messages[index]?.to;
        if (typeof token === "string") await disableToken(token);
      } else if (result?.details?.error) {
        console.warn(`[push] Expo rejected message ${index + 1}/${messages.length}: ${result.details.error}`);
      }
    }
    if (results.length !== messages.length) {
      console.warn(`[push] Expo returned ${results.length}/${messages.length} results`);
    }
    return sent;
  } catch (error: any) {
    console.warn("[push] Expo send failed:", error?.message || String(error));
    return 0;
  }
}

export async function sendMobilePush(input: {
  title: string;
  body: string;
  posterUrl?: string;
  userId?: string;
  data?: Record<string, unknown>;
}): Promise<number> {
  const rows = await sbSelect<PushTokenRow>(
    "mobile_push_tokens",
    {
      disabled_at: "is.null",
      ...(input.userId ? { user_id: `eq.${input.userId}` } : {}),
    },
    { limit: 10_000 },
  );
  if (!rows.length) {
    console.warn("[push] no active device tokens; notification skipped");
    return 0;
  }

  const messages = rows
    .filter((row) => validToken(row.token))
    .map((row) => ({
      to: row.token,
      sound: "default",
      title: input.title,
      body: input.body,
      channelId: "nova-new-episodes",
      ...(input.posterUrl ? { richContent: { image: input.posterUrl } } : {}),
      data: input.data || {},
    }));
  console.log(`[push] preparing mobile notification devices=${rows.length} valid=${messages.length}`);
  if (!messages.length) {
    console.warn("[push] active rows contained no valid Expo tokens");
    return 0;
  }

  let sent = 0;
  for (let offset = 0; offset < messages.length; offset += 100) {
    sent += await sendExpoBatch(messages.slice(offset, offset + 100));
  }
  console.log(`[push] mobile notification result sent=${sent} attempted=${messages.length}`);
  return sent;
}

export async function sendNewEpisodePush(input: {
  animeId: number;
  title: string;
  episode: number;
  posterUrl?: string;
}): Promise<number> {
  return sendMobilePush({
    title: `حلقة جديدة · ${input.title}`,
    body: `✨ ${input.title} — الحلقة ${input.episode} متاحة الآن\nشاهِدها على Anime NOVA واستمتع!`,
    posterUrl: input.posterUrl,
    data: {
      type: "new-episode",
      animeId: input.animeId,
      episode: input.episode,
      title: input.title,
      poster: input.posterUrl || "",
    },
  });
}

export default router;
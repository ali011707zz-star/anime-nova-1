export const DEFAULT_LEGACY_CHANNEL_ID = "nova-new-episodes";
export const UPGRADED_ALERT_CHANNEL_ID = "nova-alerts-v2";

const CHANNEL_ID_RE = /^[a-z0-9_-]{3,48}$/i;

export function sanitizeChannelId(raw) {
  if (typeof raw !== "string") return null;
  const trimmed = raw.trim();
  return CHANNEL_ID_RE.test(trimmed) ? trimmed : null;
}

export function resolveDeviceChannelId(deviceChannelId, fallback = DEFAULT_LEGACY_CHANNEL_ID) {
  return sanitizeChannelId(deviceChannelId) || sanitizeChannelId(fallback) || DEFAULT_LEGACY_CHANNEL_ID;
}

export function parseCartoonAlertKey(contentKey) {
  const raw = String(contentKey || "").trim();
  if (!raw) return null;
  const spMatch = raw.match(/^sp:([0-9]+)$/i);
  if (spMatch) return { provider: "sp", showId: spMatch[1] };
  const crMatch = raw.match(/^carateen:([0-9]+)$/i);
  if (crMatch) return { provider: "carateen", showId: crMatch[1] };
  const sd2Match = raw.match(/^sd2:(.+)$/i);
  if (sd2Match && sd2Match[1].trim()) return { provider: "sd2", slug: sd2Match[1].trim() };
  return null;
}

export function detectNewEpisodesByWatermark(prevState, episodes) {
  const list = Array.isArray(episodes) ? episodes : [];
  const normalized = list
    .map((ep, idx) => {
      const epId = String(ep?.epId || ep?.id || "").trim();
      const num = Number(ep?.number || idx + 1);
      const safeNum = Number.isFinite(num) && num > 0 ? Math.trunc(num) : idx + 1;
      const key = epId || `num:${safeNum}`;
      return {
        key,
        epId: epId || null,
        number: safeNum,
        title: String(ep?.title || "").trim(),
        thumbnail: typeof ep?.thumbnail === "string" && /^https?:\/\//i.test(ep.thumbnail) ? ep.thumbnail : "",
      };
    });

  const allKeys = Array.from(new Set(normalized.map((e) => e.key)));
  const maxNumber = normalized.reduce((m, e) => Math.max(m, e.number), 0);
  const nextState = {
    knownIds: allKeys.slice(-500),
    maxNumber,
    count: normalized.length,
  };

  if (!prevState || !Array.isArray(prevState.knownIds) || prevState.knownIds.length === 0) {
    return { isSeed: true, newEpisodes: [], nextState };
  }

  const prevSet = new Set(prevState.knownIds.map((k) => String(k)));
  const newEpisodes = normalized.filter((e) => !prevSet.has(e.key));
  const mergedKeys = Array.from(new Set([...prevState.knownIds, ...allKeys])).slice(-500);
  return {
    isSeed: false,
    newEpisodes,
    nextState: {
      knownIds: mergedKeys,
      maxNumber: Math.max(Number(prevState.maxNumber || 0), maxNumber),
      count: normalized.length,
    },
  };
}

export function buildFcmAndroidConfig(payload) {
  const image = typeof payload?.richContent?.image === "string" && /^https?:\/\//i.test(payload.richContent.image)
    ? payload.richContent.image
    : undefined;
  const customSound = typeof payload?.sound === "string" && payload.sound.trim() && payload.sound.trim().toLowerCase() !== "default"
    ? payload.sound.trim()
    : undefined;
  const tag = typeof payload?.tag === "string" && payload.tag.trim()
    ? payload.tag.trim().slice(0, 80)
    : undefined;

  return {
    priority: "HIGH",
    ttl: "86400s",
    direct_boot_ok: true,
    notification: {
      channel_id: resolveDeviceChannelId(payload?.channelId, DEFAULT_LEGACY_CHANNEL_ID),
      ...(customSound ? { sound: customSound } : { default_sound: true }),
      default_vibrate_timings: true,
      default_light_settings: true,
      notification_priority: "PRIORITY_MAX",
      visibility: "PUBLIC",
      ...(tag ? { tag } : {}),
      ...(image ? { image } : {}),
    },
  };
}

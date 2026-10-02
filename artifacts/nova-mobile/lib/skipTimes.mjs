const INTRO_TYPES = new Set(["op", "opening", "intro"]);
const OUTRO_TYPES = new Set(["ed", "ending", "outro"]);

function readFiniteNumber(value) {
  if (typeof value !== "number" && typeof value !== "string") return undefined;
  if (typeof value === "string" && !value.trim()) return undefined;
  const parsed = Number(value);
  return Number.isFinite(parsed) ? parsed : undefined;
}

function readInterval(value) {
  if (!value || typeof value !== "object") return undefined;
  const nested = value.interval ?? value.timestamps ?? value.time ?? value;
  if (!nested || typeof nested !== "object") return undefined;

  const start = readFiniteNumber(
    nested.start_time ?? nested.startTime ?? nested.start
      ?? nested.from ?? value.start_time ?? value.startTime ?? value.start,
  );
  const end = readFiniteNumber(
    nested.end_time ?? nested.endTime ?? nested.end
      ?? nested.to ?? value.end_time ?? value.endTime ?? value.end,
  );
  if (start === undefined || end === undefined) return undefined;
  return { start, end };
}

/**
 * Normalize and validate a provider/source timing. When duration is known,
 * reject timings outside the current media rather than clamping bad metadata.
 */
export function validateSkipInterval(value, duration = 0) {
  const interval = readInterval(value);
  if (!interval || interval.start < 0 || interval.end <= 0 || interval.end <= interval.start) {
    return undefined;
  }
  if (Number.isFinite(duration) && duration > 0) {
    // A one-second tolerance accounts for container rounding without accepting
    // timings from a different episode or a wildly incorrect runtime.
    if (interval.start >= duration || interval.end > duration + 1) return undefined;
  }
  return interval;
}

/**
 * Resolve each segment independently. Source timing always wins for that
 * segment; a missing/invalid intro does not affect a valid outro, or vice versa.
 */
export function resolveSkipTimes({
  sourceIntroProp,
  sourceIntro,
  sourceOutroProp,
  sourceOutro,
  fetchedIntro,
  fetchedOutro,
  duration = 0,
}) {
  return {
    intro: validateSkipInterval(sourceIntroProp, duration)
      ?? validateSkipInterval(sourceIntro, duration)
      ?? validateSkipInterval(fetchedIntro, duration)
      ?? null,
    outro: validateSkipInterval(sourceOutroProp, duration)
      ?? validateSkipInterval(sourceOutro, duration)
      ?? validateSkipInterval(fetchedOutro, duration)
      ?? null,
  };
}

function typeTokens(result) {
  const values = [
    result?.skip_type,
    result?.skipType,
    result?.type,
    result?.kind,
    result?.category,
    ...(Array.isArray(result?.types) ? result.types : []),
  ];
  return values.flatMap(value => {
    if (typeof value === "string") return [value.toLowerCase().trim()];
    if (value && typeof value === "object") {
      return [value.name, value.type, value.id]
        .filter(item => typeof item === "string")
        .map(item => item.toLowerCase().trim());
    }
    return [];
  });
}

function resultHasType(result, accepted) {
  return typeTokens(result).some(token => {
    if (accepted.has(token)) return true;
    return token.split(/[\s_-]+/).some(part => accepted.has(part));
  });
}

/** Parse AniSkip's partial result lists; `found` is intentionally not a gate. */
export function parseAniSkipTimes(payload) {
  const parsed = { intro: null, outro: null };
  const results = Array.isArray(payload?.results) ? payload.results : [];
  for (const result of results) {
    const interval = validateSkipInterval(result);
    if (!interval) continue;
    if (!parsed.intro && resultHasType(result, INTRO_TYPES)) parsed.intro = interval;
    if (!parsed.outro && resultHasType(result, OUTRO_TYPES)) parsed.outro = interval;
    if (parsed.intro && parsed.outro) break;
  }
  return parsed;
}

export function buildSkipScopeKey({
  anilistId,
  episode,
  title,
  sourceSite,
  sourceUrl,
  intro,
  outro,
}) {
  return JSON.stringify([
    anilistId ?? "",
    episode ?? "",
    title ?? "",
    sourceSite ?? "",
    sourceUrl ?? "",
    intro?.start ?? "",
    intro?.end ?? "",
    outro?.start ?? "",
    outro?.end ?? "",
  ]);
}

export function isSkipInRange(interval, position, duration = 0, dismissed = false, lead = 3) {
  const valid = validateSkipInterval(interval, duration);
  if (!valid || dismissed || !Number.isFinite(position) || position < 0) return false;
  return position >= Math.max(0, valid.start - lead) && position < valid.end;
}
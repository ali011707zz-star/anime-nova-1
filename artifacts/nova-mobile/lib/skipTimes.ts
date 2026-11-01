export type SkipInterval = {
  start: number;
  end: number;
};

type ResolveSkipTimesInput = {
  sourceIntroProp?: unknown;
  sourceIntro?: unknown;
  sourceOutroProp?: unknown;
  sourceOutro?: unknown;
  fetchedIntro?: unknown;
  fetchedOutro?: unknown;
  duration?: number;
};

type SkipScopeInput = {
  anilistId?: string | number;
  episode?: string | number;
  title?: string;
  sourceSite?: string;
  sourceUrl?: string;
  intro?: unknown;
  outro?: unknown;
};

export function validateSkipInterval(value: unknown): SkipInterval | null {
  if (!value || typeof value !== "object") return null;
  const candidate = value as Record<string, unknown>;
  const start = Number(candidate.start);
  const end = Number(candidate.end);

  if (!Number.isFinite(start) || !Number.isFinite(end) || start < 0 || end <= start) {
    return null;
  }

  return { start, end };
}

function fitToDuration(
  interval: SkipInterval | null,
  duration: number | undefined,
): SkipInterval | null {
  if (!interval || !Number.isFinite(duration) || !duration || duration <= 0) {
    return interval;
  }
  if (interval.start >= duration) return null;

  const end = Math.min(interval.end, duration);
  return end > interval.start ? { start: interval.start, end } : null;
}

export function resolveSkipTimes(input: ResolveSkipTimesInput): {
  intro: SkipInterval | null;
  outro: SkipInterval | null;
} {
  const intro = validateSkipInterval(input.sourceIntroProp)
    ?? validateSkipInterval(input.sourceIntro)
    ?? validateSkipInterval(input.fetchedIntro);
  const outro = validateSkipInterval(input.sourceOutroProp)
    ?? validateSkipInterval(input.sourceOutro)
    ?? validateSkipInterval(input.fetchedOutro);

  return {
    intro: fitToDuration(intro, input.duration),
    outro: fitToDuration(outro, input.duration),
  };
}

function sourceIdentity(value: string | undefined): string {
  if (!value) return "";
  try {
    const url = new URL(value);
    return `${url.protocol}//${url.host}${url.pathname}`.toLowerCase();
  } catch {
    return value.split(/[?#]/, 1)[0].slice(0, 160).toLowerCase();
  }
}

export function buildSkipScopeKey(input: SkipScopeInput): string {
  const contentId = String(input.anilistId ?? "").trim().toLowerCase()
    || String(input.title ?? "").trim().toLowerCase();
  const episode = String(input.episode ?? "").trim();
  const site = String(input.sourceSite ?? "").trim().toLowerCase();
  const source = sourceIdentity(input.sourceUrl);
  return [contentId, episode, site, source]
    .map((part) => encodeURIComponent(part))
    .join("|");
}

export function isSkipInRange(
  value: unknown,
  position: number,
  duration: number,
  dismissed: boolean,
  leadSeconds = 3,
): boolean {
  const interval = fitToDuration(validateSkipInterval(value), duration);
  if (!interval || dismissed || !Number.isFinite(position) || position < 0) return false;

  const lead = Number.isFinite(leadSeconds) ? Math.max(0, leadSeconds) : 0;
  return position >= Math.max(0, interval.start - lead) && position < interval.end;
}

export type SkipInterval = { start: number; end: number };

export type ResolvedSkipTimes = {
  intro: SkipInterval | null;
  outro: SkipInterval | null;
};

export function validateSkipInterval(
  value: unknown,
  duration?: number,
): SkipInterval | undefined;

export function resolveSkipTimes(input: {
  sourceIntroProp?: unknown;
  sourceIntro?: unknown;
  sourceOutroProp?: unknown;
  sourceOutro?: unknown;
  fetchedIntro?: unknown;
  fetchedOutro?: unknown;
  duration?: number;
}): ResolvedSkipTimes;

export function parseAniSkipTimes(payload: unknown): ResolvedSkipTimes;

export function buildSkipScopeKey(input: {
  anilistId?: number;
  episode?: number;
  title?: string;
  sourceSite?: string;
  sourceUrl?: string;
  intro?: SkipInterval;
  outro?: SkipInterval;
}): string;

export function isSkipInRange(
  interval: unknown,
  position: number,
  duration?: number,
  dismissed?: boolean,
  lead?: number,
): boolean;
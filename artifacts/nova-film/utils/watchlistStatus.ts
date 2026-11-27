export type WatchlistStatus =
  | "watching"
  | "plan_to_watch"
  | "completed"
  | "on_hold"
  | "dropped";

export type WatchlistFilter = "all" | WatchlistStatus;

export interface WatchlistStatusMeta {
  id: WatchlistStatus;
  label: string;
  shortLabel: string;
  icon: "play-circle-outline" | "add-circle-outline" | "checkmark-circle-outline" | "pause-circle-outline" | "close-circle-outline";
  activeIcon: "play-circle" | "add-circle" | "checkmark-circle" | "pause-circle" | "close-circle";
  color: string;
  bg: string;
  border: string;
}

export const WATCHLIST_STATUSES: WatchlistStatusMeta[] = [
  {
    id: "watching",
    label: "أشاهدها حالياً",
    shortLabel: "أشاهدها",
    icon: "play-circle-outline",
    activeIcon: "play-circle",
    color: "#10B981",
    bg: "rgba(16, 185, 129, 0.16)",
    border: "rgba(16, 185, 129, 0.42)",
  },
  {
    id: "plan_to_watch",
    label: "أرغب بمشاهدتها",
    shortLabel: "أرغب بها",
    icon: "add-circle-outline",
    activeIcon: "add-circle",
    color: "#38BDF8",
    bg: "rgba(56, 189, 248, 0.16)",
    border: "rgba(56, 189, 248, 0.42)",
  },
  {
    id: "completed",
    label: "تمت مشاهدتها",
    shortLabel: "تمت",
    icon: "checkmark-circle-outline",
    activeIcon: "checkmark-circle",
    color: "#A78BFA",
    bg: "rgba(167, 139, 250, 0.18)",
    border: "rgba(167, 139, 250, 0.45)",
  },
  {
    id: "on_hold",
    label: "أكملها لاحقاً",
    shortLabel: "لاحقاً",
    icon: "pause-circle-outline",
    activeIcon: "pause-circle",
    color: "#F59E0B",
    bg: "rgba(245, 158, 11, 0.16)",
    border: "rgba(245, 158, 11, 0.42)",
  },
  {
    id: "dropped",
    label: "لا أرغب بمشاهدتها",
    shortLabel: "مستبعدة",
    icon: "close-circle-outline",
    activeIcon: "close-circle",
    color: "#F43F5E",
    bg: "rgba(244, 63, 94, 0.16)",
    border: "rgba(244, 63, 94, 0.42)",
  },
];

export const DEFAULT_WATCHLIST_STATUS: WatchlistStatus = "plan_to_watch";

const VALID_SET = new Set<string>(WATCHLIST_STATUSES.map(s => s.id));

export function normalizeWatchlistStatus(raw?: string | null): WatchlistStatus | undefined {
  if (!raw || typeof raw !== "string") return undefined;
  const cleaned = raw.trim().toLowerCase();
  return VALID_SET.has(cleaned) ? (cleaned as WatchlistStatus) : undefined;
}

export function resolveWatchlistStatus(raw?: string | null): WatchlistStatus {
  return normalizeWatchlistStatus(raw) ?? DEFAULT_WATCHLIST_STATUS;
}

export function getWatchlistStatusMeta(raw?: string | null): WatchlistStatusMeta {
  const status = resolveWatchlistStatus(raw);
  return WATCHLIST_STATUSES.find(s => s.id === status) ?? WATCHLIST_STATUSES[1];
}

export function countByWatchlistStatus<T extends { watchStatus?: WatchlistStatus | null }>(
  items: T[],
): Record<WatchlistFilter, number> {
  const counts: Record<WatchlistFilter, number> = {
    all: items.length,
    watching: 0,
    plan_to_watch: 0,
    completed: 0,
    on_hold: 0,
    dropped: 0,
  };
  for (const item of items) {
    counts[resolveWatchlistStatus(item.watchStatus)] += 1;
  }
  return counts;
}

export function filterByWatchlistStatus<T extends { watchStatus?: WatchlistStatus | null }>(
  items: T[],
  filter: WatchlistFilter,
): T[] {
  if (filter === "all") return items;
  return items.filter(item => resolveWatchlistStatus(item.watchStatus) === filter);
}

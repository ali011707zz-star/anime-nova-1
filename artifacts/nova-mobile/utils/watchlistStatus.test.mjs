import test from "node:test";
import assert from "node:assert/strict";

const VALID_STATUSES = ["watching", "plan_to_watch", "completed", "on_hold", "dropped"];

function resolveWatchlistStatus(raw) {
  const s = typeof raw === "string" ? raw.trim().toLowerCase() : "";
  return VALID_STATUSES.includes(s) ? s : "plan_to_watch";
}

function countByWatchlistStatus(items) {
  const counts = { all: items.length, watching: 0, plan_to_watch: 0, completed: 0, on_hold: 0, dropped: 0 };
  for (const item of items) counts[resolveWatchlistStatus(item.watchStatus)] += 1;
  return counts;
}

function filterByWatchlistStatus(items, filter) {
  if (filter === "all") return items;
  return items.filter(i => resolveWatchlistStatus(i.watchStatus) === filter);
}

test("legacy favorites without watchStatus default to plan_to_watch and stay visible under all", () => {
  const items = [
    { id: 1 },
    { id: 2, watchStatus: "watching" },
    { id: 3, watchStatus: "completed" },
    { id: 4, watchStatus: "invalid_value" },
  ];
  const counts = countByWatchlistStatus(items);
  assert.equal(counts.all, 4);
  assert.equal(counts.watching, 1);
  assert.equal(counts.completed, 1);
  assert.equal(counts.plan_to_watch, 2);
  assert.equal(counts.on_hold, 0);
  assert.equal(counts.dropped, 0);
  assert.deepEqual(filterByWatchlistStatus(items, "plan_to_watch").map(x => x.id), [1, 4]);
  assert.deepEqual(filterByWatchlistStatus(items, "all").map(x => x.id), [1, 2, 3, 4]);
});

test("watchlistStatus.ts files exist and export all 5 statuses in the approved order", async () => {
  const fs = await import("node:fs");
  for (const p of [
    "/opt/anime-nova/artifacts/nova-mobile/utils/watchlistStatus.ts",
    "/opt/anime-nova/artifacts/anime-scraper/src/lib/watchlistStatus.ts",
  ]) {
    const content = fs.readFileSync(p, "utf8");
    const idxWatching = content.indexOf('"watching"');
    const idxPlan = content.indexOf('"plan_to_watch"');
    const idxCompleted = content.indexOf('"completed"');
    const idxHold = content.indexOf('"on_hold"');
    const idxDropped = content.indexOf('"dropped"');
    assert.ok(idxWatching > 0 && idxWatching < idxPlan && idxPlan < idxCompleted && idxCompleted < idxHold && idxHold < idxDropped);
  }
});

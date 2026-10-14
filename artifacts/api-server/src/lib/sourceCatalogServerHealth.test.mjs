import assert from "node:assert/strict";
import test from "node:test";
import { filterSourceCatalogServerRows } from "./sourceCatalogServerHealth.mjs";

const NOW = Date.parse("2026-10-14T00:00:00.000Z");

function server(overrides = {}) {
  return {
    id: 1,
    provider: "stardima_catalog",
    page_url: "https://strema.top/embed/episode-1",
    availability_status: "link_found",
    health_state: null,
    last_checked_at: null,
    health_checked_at: null,
    ...overrides,
  };
}

test("recent dead and unsupported servers are omitted until a later recheck window", () => {
  const checkedAt = new Date(NOW - 60_000).toISOString();
  const recent = filterSourceCatalogServerRows([
    server({ availability_status: "dead", last_checked_at: checkedAt }),
    server({ id: 2, page_url: "https://uqload.vc/unsupported", availability_status: "unsupported", last_checked_at: checkedAt }),
  ], "stardima_catalog", NOW);
  assert.equal(recent.servers.length, 0);
  assert.equal(recent.omittedCount, 2);

  const stale = filterSourceCatalogServerRows([
    server({ availability_status: "dead", last_checked_at: new Date(NOW - 7 * 60 * 60_000).toISOString() }),
  ], "stardima_catalog", NOW);
  assert.equal(stale.servers.length, 1);
  assert.equal(stale.servers[0].needs_recheck, true);
});

test("blocked links are hidden briefly and returned for recheck after cooldown", () => {
  const checkedAt = new Date(NOW - 60_000).toISOString();
  const hidden = filterSourceCatalogServerRows([
    server({ health_state: "blocked", health_checked_at: checkedAt }),
  ], "stardima_catalog", NOW);
  assert.equal(hidden.servers.length, 0);
  assert.equal(hidden.omittedCount, 1);

  const retry = filterSourceCatalogServerRows([
    server({ health_state: "blocked", health_checked_at: new Date(NOW - 16 * 60_000).toISOString() }),
  ], "stardima_catalog", NOW);
  assert.equal(retry.servers.length, 1);
  assert.equal(retry.servers[0].needs_recheck, true);
});

test("source-removed rows are never offered and duplicate URLs prefer verified media", () => {
  const result = filterSourceCatalogServerRows([
    server({ id: 1, health_state: "source_removed" }),
    server({ id: 2, availability_status: "link_found" }),
    server({ id: 3, availability_status: "media_verified" }),
  ], "stardima_catalog", NOW);
  assert.equal(result.servers.length, 1);
  assert.equal(result.servers[0].id, 3);
  assert.equal(result.servers[0].availability_status, "media_verified");
  assert.equal(result.omittedCount, 2);
});

test("non-StarDima providers retain their existing listing behavior", () => {
  const rows = [
    server({ provider: "anifox", health_state: "source_removed" }),
    server({ id: 2, provider: "anifox" }),
  ];
  const result = filterSourceCatalogServerRows(rows, "anifox", NOW);
  assert.equal(result.servers.length, 2);
  assert.equal(result.omittedCount, 0);
});

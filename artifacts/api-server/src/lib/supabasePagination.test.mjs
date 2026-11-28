import test from "node:test";
import assert from "node:assert/strict";
import { collectPaginatedRows } from "./supabasePagination.mjs";

test("collectPaginatedRows fetches past 200 and 1000 rows without truncation", async () => {
  const dataset = Array.from({ length: 1250 }, (_, i) => ({ id: i + 1 }));
  let calls = 0;
  const rows = await collectPaginatedRows(async (limit, offset) => {
    calls++;
    return dataset.slice(offset, offset + limit);
  }, { pageSize: 500, maxRows: 5000 });

  assert.equal(rows.length, 1250);
  assert.equal(rows[0].id, 1);
  assert.equal(rows[1249].id, 1250);
  assert.equal(calls, 3);
});

test("collectPaginatedRows handles exact page multiples and stops cleanly on empty final page", async () => {
  const dataset = Array.from({ length: 1000 }, (_, i) => ({ id: i + 1 }));
  let calls = 0;
  const rows = await collectPaginatedRows(async (limit, offset) => {
    calls++;
    return dataset.slice(offset, offset + limit);
  }, { pageSize: 500, maxRows: 5000 });

  assert.equal(rows.length, 1000);
  assert.equal(calls, 3); // 500, 500, 0
});

test("collectPaginatedRows enforces maxRows safety cap", async () => {
  const dataset = Array.from({ length: 2000 }, (_, i) => ({ id: i + 1 }));
  const rows = await collectPaginatedRows(async (limit, offset) => {
    return dataset.slice(offset, offset + limit);
  }, { pageSize: 500, maxRows: 750 });

  assert.equal(rows.length, 750);
  assert.equal(rows[749].id, 750);
});

test("collectPaginatedRows handles empty results", async () => {
  const rows = await collectPaginatedRows(async () => [], { pageSize: 500, maxRows: 5000 });
  assert.deepEqual(rows, []);
});

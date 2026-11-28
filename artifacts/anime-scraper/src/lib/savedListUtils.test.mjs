import test from "node:test";
import assert from "node:assert/strict";
import { chunkIds, orderMediaBySavedIds } from "./savedListUtils.mjs";

test("chunkIds splits 250 unique IDs into five 50-item chunks without losing any", () => {
  const ids = Array.from({ length: 250 }, (_, i) => i + 1);
  const chunks = chunkIds(ids, 50);
  assert.equal(chunks.length, 5);
  assert.deepEqual(chunks.map(c => c.length), [50, 50, 50, 50, 50]);
  assert.equal(chunks.flat().length, 250);
  assert.equal(chunks[4][49], 250);
});

test("chunkIds deduplicates and filters invalid IDs while preserving order", () => {
  const chunks = chunkIds([10, 20, 10, 0, -5, NaN, 30], 2);
  assert.deepEqual(chunks, [[10, 20], [30]]);
});

test("orderMediaBySavedIds preserves saved order and drops duplicates", () => {
  const media = [{ id: 30, t: "c" }, { id: 10, t: "a" }, { id: 20, t: "b" }];
  const ordered = orderMediaBySavedIds(media, [20, 10, 999, 30, 10]);
  assert.deepEqual(ordered.map(x => x.id), [20, 10, 30]);
});

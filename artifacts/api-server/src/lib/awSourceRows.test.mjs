import assert from "node:assert/strict";
import test from "node:test";
import { mergeAwSourceRows } from "./awSourceRows.mjs";

test("AW source merge removes duplicate cache/live rows but preserves each quality", () => {
  const rows = mergeAwSourceRows(
    [
      { server: "PD", quality: "1080p", link: "https://pixeldrain.com/u/a" },
      { server: "PD", quality: "720p", link: "https://pixeldrain.com/u/a" },
      { server: "KF", quality: "1080p", link: "https://krakenfiles.com/a" },
    ],
    [
      { server: "PD", quality: "1080p", link: "https://pixeldrain.com/u/a" },
      { server: "MF", quality: "480p", link: "https://mediafire.com/b" },
    ],
  );

  assert.deepEqual(rows.map(({ server, quality }) => [server, quality]), [
    ["PD", "1080p"],
    ["PD", "720p"],
    ["MF", "480p"],
  ]);
});

test("AW source merge treats equivalent quality labels as the same cached row", () => {
  const rows = mergeAwSourceRows(
    [{ server: "PD", quality: "1080p", link: "https://pixeldrain.com/u/a" }],
    [{ server: "PD", quality: "1080 P", link: "https://pixeldrain.com/u/a" }],
  );

  assert.equal(rows.length, 1);
});

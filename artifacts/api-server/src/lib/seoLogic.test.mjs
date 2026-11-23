import test from "node:test";
import assert from "node:assert/strict";
import {
  normalizeSeoPath,
  needsTrailingSlashRedirect,
  buildCanonicalUrl,
  classifySpaRoute,
  buildPageJsonLd,
} from "./seoLogic.mjs";

test("normalizeSeoPath and trailing-slash redirect prevent duplicate canonical alternates", () => {
  assert.equal(normalizeSeoPath("/"), "/");
  assert.equal(normalizeSeoPath("/app/"), "/app");
  assert.equal(normalizeSeoPath("/browse///?sort=pop"), "/browse");
  assert.equal(needsTrailingSlashRedirect("/"), false);
  assert.equal(needsTrailingSlashRedirect("/app/"), true);
  assert.equal(needsTrailingSlashRedirect("/app"), false);
  assert.equal(needsTrailingSlashRedirect("/api/anime/"), false);
  assert.equal(buildCanonicalUrl("/"), "https://animenovaa.duckdns.org/");
  assert.equal(buildCanonicalUrl("/app/"), "https://animenovaa.duckdns.org/app");
});

test("classifySpaRoute returns 200 indexable for valid routes, 200 noindex for search/private, and 404 noindex for unknown routes", () => {
  for (const p of ["/", "/app", "/browse", "/manga", "/dubbed", "/spacetoon", "/cartoon", "/animation", "/anime/21", "/dubbed/conan"]) {
    const r = classifySpaRoute(p);
    assert.equal(r.status, 200, p);
    assert.equal(r.kind, "indexable", p);
    assert.match(r.robots, /^index, follow/);
  }
  for (const p of ["/search", "/watch", "/watch/21", "/auth", "/profile", "/settings", "/library"]) {
    const r = classifySpaRoute(p);
    assert.equal(r.status, 200, p);
    assert.equal(r.kind, "noindex_ok", p);
    assert.equal(r.robots, "noindex, follow");
  }
  for (const p of ["/this-page-does-not-exist", "/apk", "/install", "/mobile", "/anime/abc"]) {
    const r = classifySpaRoute(p);
    assert.equal(r.status, 404, p);
    assert.equal(r.kind, "not_found", p);
    assert.equal(r.robots, "noindex, nofollow");
  }
});

test("buildPageJsonLd scopes FAQPage only to / and /app and emits TVSeries for anime pages", () => {
  const homeLd = buildPageJsonLd({ cleanPath: "/", title: "أنمي نوفا", desc: "وصف" });
  const homeTypes = homeLd["@graph"].map((n) => JSON.stringify(n["@type"]));
  assert.ok(homeTypes.some((t) => t.includes("FAQPage")));
  assert.ok(homeTypes.some((t) => t.includes("Organization")));

  const appLd = buildPageJsonLd({ cleanPath: "/app", title: "تطبيق أنمي نوفا", desc: "وصف" });
  assert.ok(appLd["@graph"].some((n) => n["@type"] === "FAQPage"));

  const animeLd = buildPageJsonLd({ cleanPath: "/anime/21", title: "ون بيس", desc: "وصف", animeName: "ون بيس (ONE PIECE)" });
  assert.equal(animeLd["@graph"].some((n) => n["@type"] === "FAQPage"), false);
  assert.equal(animeLd["@graph"].some((n) => n["@type"] === "TVSeries"), true);
});

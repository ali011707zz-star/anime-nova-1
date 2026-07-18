/**
 * Nova CF Bypass Service
 * Drop-in replacement for Hopx /extract-cookies & /browser-html endpoints.
 * Deployed on OpenShift Developer Sandbox as a free Playwright browser service.
 *
 * Endpoints:
 *   GET /health                              → { ok, playwright }
 *   GET /extract-cookies?url=&ref=&wait=     → { ok, html, cookie_str, cookies }
 *   GET /browser-html?url=&ref=&wait=        → { ok, html }
 */

"use strict";
const express = require("express");
const { chromium } = require("playwright-core");

const app  = express();
const PORT = parseInt(process.env.PORT || "8080", 10);

// Chromium launch options — compatible with OpenShift restricted SCC (no-sandbox)
const LAUNCH_ARGS = [
  "--no-sandbox",
  "--disable-setuid-sandbox",
  "--disable-dev-shm-usage",
  "--disable-gpu",
  "--no-first-run",
  "--no-zygote",
  "--disable-background-networking",
  "--disable-extensions",
  "--disable-sync",
  "--metrics-recording-only",
  "--mute-audio",
];

const CHROME_EXEC =
  process.env.CHROME_BIN ||
  process.env.CHROMIUM_PATH ||
  "/usr/bin/chromium" ;

const DEFAULT_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) " +
  "AppleWebKit/537.36 (KHTML, like Gecko) " +
  "Chrome/125.0.0.0 Safari/537.36";

// ── helpers ───────────────────────────────────────────────────────────────────

async function launchBrowser() {
  return chromium.launch({
    executablePath: CHROME_EXEC,
    args: LAUNCH_ARGS,
    headless: true,
  });
}

function extractCfCookies(cookies) {
  const map = {};
  cookies.forEach(c => { map[c.name] = c.value; });
  const parts = [];
  if (map["cf_clearance"]) parts.push(`cf_clearance=${map["cf_clearance"]}`);
  if (map["__cf_bm"])      parts.push(`__cf_bm=${map["__cf_bm"]}`);
  return { cookie_str: parts.join("; "), cookies: map };
}

// ── routes ────────────────────────────────────────────────────────────────────

app.get("/health", (_req, res) => {
  res.json({ ok: true, playwright: true, service: "nova-cf-bypass" });
});

/**
 * GET /extract-cookies?url=<url>&ref=<referer>&wait=<ms>
 * Returns HTML + cf_clearance cookie (mirrors Hopx /extract-cookies)
 */
app.get("/extract-cookies", async (req, res) => {
  const { url, ref, wait = "8000" } = req.query;
  if (!url) return res.status(400).json({ ok: false, error: "url required" });

  const timeoutMs = Math.min(parseInt(wait, 10) || 8000, 30000);

  let browser;
  try {
    browser = await launchBrowser();
    const context = await browser.newContext({
      userAgent: DEFAULT_UA,
      extraHTTPHeaders: ref ? { Referer: String(ref) } : {},
    });
    const page = await context.newPage();

    // Navigate — tolerate both networkidle and domcontentloaded
    try {
      await page.goto(String(url), { waitUntil: "networkidle", timeout: 25000 });
    } catch {
      await page.waitForLoadState("domcontentloaded", { timeout: 10000 }).catch(() => {});
    }

    // Extra wait so CF JS challenge can complete
    await page.waitForTimeout(timeoutMs);

    const html    = await page.content();
    const cookies = await context.cookies();
    const { cookie_str, cookies: cookieMap } = extractCfCookies(cookies);

    await browser.close();
    return res.json({ ok: true, html, cookie_str, cookies: cookieMap });
  } catch (e) {
    if (browser) await browser.close().catch(() => {});
    console.error("[extract-cookies] error:", e.message);
    return res.json({ ok: false, error: e.message });
  }
});

/**
 * GET /browser-html?url=<url>&ref=<referer>&wait=<ms>
 * Returns rendered HTML only (mirrors Hopx /browser-html)
 */
app.get("/browser-html", async (req, res) => {
  const { url, ref, wait = "3000" } = req.query;
  if (!url) return res.status(400).json({ ok: false, error: "url required" });

  const timeoutMs = Math.min(parseInt(wait, 10) || 3000, 20000);

  let browser;
  try {
    browser = await launchBrowser();
    const context = await browser.newContext({
      userAgent: DEFAULT_UA,
      extraHTTPHeaders: ref ? { Referer: String(ref) } : {},
    });
    const page = await context.newPage();

    try {
      await page.goto(String(url), { waitUntil: "networkidle", timeout: 25000 });
    } catch {
      await page.waitForLoadState("domcontentloaded", { timeout: 10000 }).catch(() => {});
    }
    await page.waitForTimeout(timeoutMs);

    const html = await page.content();
    await browser.close();
    return res.json({ ok: true, html });
  } catch (e) {
    if (browser) await browser.close().catch(() => {});
    console.error("[browser-html] error:", e.message);
    return res.json({ ok: false, error: e.message });
  }
});

// ── start ─────────────────────────────────────────────────────────────────────

app.listen(PORT, "0.0.0.0", () => {
  console.log(`[nova-cf-bypass] listening on :${PORT}`);
  console.log(`[nova-cf-bypass] chromium: ${CHROME_EXEC}`);
});

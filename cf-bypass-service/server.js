/**
 * Nova CF Bypass Service  v2
 * ──────────────────────────────────────────────────────────────────────
 * Endpoints:
 *   GET /health
 *   GET /extract-cookies?url=&ref=&wait=        → html + cf_clearance
 *   GET /browser-html?url=&ref=&wait=           → rendered html
 *   GET /nopecha-refresh?key=<API_KEY>          → cf_clearance via nopecha (NEW)
 *   GET /intercept-sources?url=&cookie=&ref=    → raw vid3rb URLs via network intercept (NEW)
 */

"use strict";
const express    = require("express");
const { chromium } = require("playwright-core");
const { execSync } = require("child_process");
const path       = require("path");
const fs         = require("fs");
const os         = require("os");

const app  = express();
app.use(express.json());
const PORT = parseInt(process.env.PORT || "8080", 10);

// ── Chromium ───────────────────────────────────────────────────────────────────
const CHROME_EXEC =
  process.env.CHROME_BIN || process.env.CHROMIUM_PATH || "/usr/bin/chromium";

const DEFAULT_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) " +
  "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";

// ── Launch args (standard headless — بدون extensions) ─────────────────────────
const LAUNCH_ARGS = [
  "--no-sandbox", "--disable-setuid-sandbox", "--disable-dev-shm-usage",
  "--disable-gpu", "--no-first-run", "--no-zygote",
  "--disable-background-networking", "--disable-extensions",
  "--disable-sync", "--metrics-recording-only", "--mute-audio",
];

async function launchBrowser() {
  return chromium.launch({ executablePath: CHROME_EXEC, args: LAUNCH_ARGS, headless: true });
}

function extractCfCookies(cookies) {
  const map = {};
  cookies.forEach(c => { map[c.name] = c.value; });
  const parts = [];
  if (map["cf_clearance"]) parts.push(`cf_clearance=${map["cf_clearance"]}`);
  if (map["__cf_bm"])      parts.push(`__cf_bm=${map["__cf_bm"]}`);
  return { cookie_str: parts.join("; "), cookies: map };
}

// ══════════════════════════════════════════════════════════════════════
//  NopeCHA — extension download + persistent context launch
// ══════════════════════════════════════════════════════════════════════
const NOPECHA_KEY = process.env.NOPECHA_KEY || "";
const EXT_DIR     = path.join(os.tmpdir(), "nopecha-ext");
const EXT_ZIP     = path.join(os.tmpdir(), "nopecha.zip");
let _extReady     = false;

async function ensureNopechaExtension() {
  if (_extReady && fs.existsSync(path.join(EXT_DIR, "manifest.json"))) return EXT_DIR;
  console.log("[nopecha] downloading extension v0.6.1 ...");
  const resp = await fetch(
    "https://github.com/NopeCHALLC/nopecha-extension/releases/download/0.6.1/chromium.zip"
  );
  if (!resp.ok) throw new Error(`download failed: ${resp.status}`);
  fs.writeFileSync(EXT_ZIP, Buffer.from(await resp.arrayBuffer()));
  fs.mkdirSync(EXT_DIR, { recursive: true });
  execSync(`unzip -o "${EXT_ZIP}" -d "${EXT_DIR}"`, { stdio: "pipe" });
  _extReady = true;
  console.log("[nopecha] extension ready at", EXT_DIR);
  return EXT_DIR;
}

/** حقن مفتاح API في service worker الخاص بـ nopecha */
async function injectNopechaKey(context, key) {
  if (!key) return;
  // service worker (Manifest V3)
  let sw = context.serviceWorkers()[0];
  if (!sw) {
    try { sw = await context.waitForEvent("serviceworker", { timeout: 8000 }); } catch {}
  }
  if (sw) {
    try {
      await sw.evaluate((k) => new Promise(r => chrome.storage.local.set({ settings: { key: k } }, r)), key);
      console.log("[nopecha] key injected via service worker ✓");
      return;
    } catch {}
  }
  // background page (Manifest V2)
  const bg = context.backgroundPages()[0];
  if (bg) {
    try {
      await bg.evaluate((k) => new Promise(r => chrome.storage.local.set({ settings: { key: k } }, r)), key);
      console.log("[nopecha] key injected via background page ✓");
    } catch {}
  }
}

// ── Auth middleware ────────────────────────────────────────────────────────────
const APP_SECRET = process.env.APP_SECRET || "";

function requireSecret(req, res, next) {
  const provided = req.headers["x-app-secret"] || "";
  if (!APP_SECRET || !provided || provided !== APP_SECRET) {
    return res.status(403).json({ ok: false, error: "forbidden" });
  }
  next();
}

// ── routes ────────────────────────────────────────────────────────────────────

app.get("/health", (_req, res) => {
  // لا نكشف أي تفاصيل حساسة في health endpoint العام
  res.json({ ok: true, service: "nova-cf-bypass-v2" });
});

// ── /extract-cookies ─────────────────────────────────────────────────────────
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
    try {
      await page.goto(String(url), { waitUntil: "networkidle", timeout: 25000 });
    } catch {
      await page.waitForLoadState("domcontentloaded", { timeout: 10000 }).catch(() => {});
    }
    await page.waitForTimeout(timeoutMs);
    const html    = await page.content();
    const cookies = await context.cookies();
    const { cookie_str, cookies: cookieMap } = extractCfCookies(cookies);
    await browser.close();
    return res.json({ ok: true, html, cookie_str, cookies: cookieMap });
  } catch (e) {
    if (browser) await browser.close().catch(() => {});
    return res.json({ ok: false, error: e.message });
  }
});

// ── /browser-html ─────────────────────────────────────────────────────────────
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
    return res.json({ ok: false, error: e.message });
  }
});

// ══════════════════════════════════════════════════════════════════════
//  /nopecha-refresh — يحل CF Turnstile عبر nopecha-extension ويُرجع cf_clearance
//  يُستدعى مرة واحدة كل ~20 ساعة فقط عند اقتراب انتهاء الكوكيز
//  محمي بـ x-app-secret header — NOPECHA_KEY يُقرأ من env السيرفر فقط (لا query string)
//  GET /nopecha-refresh?site=<URL>   + Header: x-app-secret: <APP_SECRET>
// ══════════════════════════════════════════════════════════════════════
app.get("/nopecha-refresh", requireSecret, async (req, res) => {
  const key     = NOPECHA_KEY;
  const siteUrl = String(req.query.site || "https://anime3rb.com");
  if (!key) return res.status(503).json({ ok: false, error: "NOPECHA_KEY not configured on server" });

  let context;
  try {
    const extDir = await ensureNopechaExtension();

    // launchPersistentContext يدعم تحميل extensions — headless=new للـ Chrome 112+
    context = await chromium.launchPersistentContext("", {
      executablePath: CHROME_EXEC,
      headless       : false,
      args: [
        "--headless=new",
        "--no-sandbox", "--disable-setuid-sandbox", "--disable-dev-shm-usage",
        "--disable-gpu", "--no-first-run", "--no-zygote", "--mute-audio",
        `--disable-extensions-except=${extDir}`,
        `--load-extension=${extDir}`,
      ],
    });

    await injectNopechaKey(context, key);

    const page = await context.newPage();
    await page.setExtraHTTPHeaders({ "Accept-Language": "ar,en;q=0.9" });

    console.log(`[nopecha-refresh] navigating to ${siteUrl}`);
    try {
      await page.goto(siteUrl, { waitUntil: "domcontentloaded", timeout: 30000 });
    } catch { /* قد تنتهي مهلة networkidle */ }

    // انتظر cf_clearance — nopecha تحله تلقائياً (أقصى 50 ثانية)
    let cookieStr = "";
    const deadline = Date.now() + 50_000;
    while (Date.now() < deadline) {
      const cookies = await context.cookies(siteUrl);
      const cf = cookies.find(c => c.name === "cf_clearance");
      if (cf) {
        const parts = [`cf_clearance=${cf.value}`];
        const bm = cookies.find(c => c.name === "__cf_bm");
        if (bm) parts.push(`__cf_bm=${bm.value}`);
        cookieStr = parts.join("; ");
        break;
      }
      await page.waitForTimeout(2000);
    }

    await context.close(); context = null;

    if (!cookieStr) throw new Error("cf_clearance لم يظهر خلال 50 ثانية — nopecha failed");
    console.log("[nopecha-refresh] ✅ cf_clearance obtained");
    return res.json({ ok: true, cookie_str: cookieStr });

  } catch (e) {
    if (context) await context.close().catch(() => {});
    console.error("[nopecha-refresh] error:", e.message);
    return res.json({ ok: false, error: e.message });
  }
});

// ══════════════════════════════════════════════════════════════════════
//  /intercept-sources — يعترض طلبات الشبكة لاستخراج روابط vid3rb الخام
//  محمي بـ x-app-secret header
//  GET /intercept-sources?url=<episodeUrl>&cookie=<cf_clearance>&ref=<referer>
// ══════════════════════════════════════════════════════════════════════
app.get("/intercept-sources", requireSecret, async (req, res) => {
  const { url, cookie, ref, wait = "8000" } = req.query;
  if (!url) return res.status(400).json({ ok: false, error: "url required" });
  const waitMs = Math.min(parseInt(wait, 10) || 8000, 25000);

  let browser;
  try {
    browser = await launchBrowser();
    const context = await browser.newContext({
      userAgent: DEFAULT_UA,
      extraHTTPHeaders: {
        ...(ref    ? { Referer: String(ref) } : {}),
        ...(cookie ? { Cookie:  String(cookie) } : {}),
        "Accept-Language": "ar,en;q=0.9",
      },
    });

    const captured = new Set();

    // اعتراض كل الطلبات — التقاط روابط الفيديو
    await context.route("**/*", async (route) => {
      const u = route.request().url();
      if (
        u.includes("vid3rb") ||
        /\.(m3u8|mp4)(\?|$)/i.test(u) ||
        u.includes("cdn.") && /\.(m3u8|mp4)/i.test(u)
      ) {
        captured.add(u);
      }
      try { await route.continue(); } catch {}
    });

    const page = await context.newPage();
    try {
      await page.goto(String(url), { waitUntil: "domcontentloaded", timeout: 25000 });
    } catch {}

    // انتظر تحميل المشغّل
    await page.waitForTimeout(waitMs);

    // فحص الـ HTML أيضاً لأي روابط مباشرة
    const html = await page.content();
    const RE = /(https?:\/\/[^\s"'<>\\]+(?:vid3rb[^\s"'<>\\]*|\.m3u8[^\s"'<>\\]*|\.mp4[^\s"'<>\\]*))/gi;
    for (const m of html.matchAll(RE)) captured.add(m[1].replace(/\\(["'])/g, "$1"));

    await browser.close();

    const urls = [...captured].filter(u => {
      const low = u.toLowerCase();
      return !["thumb","poster","banner","logo","icon","ads","google","facebook","png","jpg","webp","svg"].some(n => low.includes(n));
    });

    return res.json({ ok: true, urls, count: urls.length });
  } catch (e) {
    if (browser) await browser.close().catch(() => {});
    console.error("[intercept-sources] error:", e.message);
    return res.json({ ok: false, error: e.message, urls: [] });
  }
});

// ── start ─────────────────────────────────────────────────────────────────────
app.listen(PORT, "0.0.0.0", () => {
  console.log(`[nova-cf-bypass] v2 listening on :${PORT}`);
  console.log(`[nova-cf-bypass] chromium: ${CHROME_EXEC}`);
  console.log(`[nova-cf-bypass] nopecha: ${NOPECHA_KEY ? "configured ✓" : "NO KEY — /nopecha-refresh disabled"}`);
});

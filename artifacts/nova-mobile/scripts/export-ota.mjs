#!/usr/bin/env node
/**
 * Builds the Android OTA bundle (Hermes bytecode + assets) using Expo CLI
 * and generates a precomputed Expo Updates v1 manifest (ota-dist/ota-manifest.json).
 */
import { spawnSync } from "node:child_process";
import crypto from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const projectRoot = path.resolve(__dirname, "..");
const outDir = path.join(projectRoot, "ota-dist");
const appJsonPath = path.join(projectRoot, "app.json");

const MIME_BY_EXT = {
  png: "image/png",
  jpg: "image/jpeg",
  jpeg: "image/jpeg",
  gif: "image/gif",
  webp: "image/webp",
  svg: "image/svg+xml",
  ttf: "font/ttf",
  otf: "font/otf",
  woff: "font/woff",
  woff2: "font/woff2",
  mp4: "video/mp4",
  mp3: "audio/mpeg",
  json: "application/json",
  js: "application/javascript",
  hbc: "application/javascript",
  bundle: "application/javascript",
};

function sha256Base64Url(buffer) {
  return crypto.createHash("sha256").update(buffer).digest("base64url");
}

function md5Hex(buffer) {
  return crypto.createHash("md5").update(buffer).digest("hex");
}

function deterministicUuidFromHash(hexHash) {
  const h = hexHash.padEnd(32, "0").slice(0, 32).split("");
  h[12] = "4";
  h[16] = ((parseInt(h[16], 16) & 0x3) | 0x8).toString(16);
  const s = h.join("");
  return `${s.slice(0, 8)}-${s.slice(8, 12)}-${s.slice(12, 16)}-${s.slice(16, 20)}-${s.slice(20, 32)}`;
}

console.log("📦 Exporting Android OTA bundle via Expo CLI...");
const expoBin = path.join(projectRoot, "node_modules", ".bin", "expo");
const cmd = fs.existsSync(expoBin) ? expoBin : "npx";
const args = fs.existsSync(expoBin)
  ? ["export", "--platform", "android", "--output-dir", "ota-dist", "--clear"]
  : ["expo", "export", "--platform", "android", "--output-dir", "ota-dist", "--clear"];

const res = spawnSync(cmd, args, {
  cwd: projectRoot,
  stdio: "inherit",
  env: {
    ...process.env,
    NODE_ENV: "production",
    EXPO_PUBLIC_DOMAIN: process.env.EXPO_PUBLIC_DOMAIN || "https://animenovaa.duckdns.org",
  },
});

if (res.status !== 0) {
  console.error("❌ expo export failed with code:", res.status);
  process.exit(res.status || 1);
}

const metadataPath = path.join(outDir, "metadata.json");
if (!fs.existsSync(metadataPath)) {
  console.error("❌ metadata.json not found in ota-dist/");
  process.exit(1);
}

const metadata = JSON.parse(fs.readFileSync(metadataPath, "utf8"));
const appJson = JSON.parse(fs.readFileSync(appJsonPath, "utf8"));
const expoConfig = appJson.expo || {};
const runtimeVersion =
  typeof expoConfig.runtimeVersion === "string"
    ? expoConfig.runtimeVersion
    : String(expoConfig.version || "1.0.9");

const androidMeta = metadata?.fileMetadata?.android;
if (!androidMeta || !androidMeta.bundle) {
  console.error("❌ Invalid metadata.json: missing fileMetadata.android.bundle");
  process.exit(1);
}

const bundleRelPath = String(androidMeta.bundle).replace(/^\/+/, "");
const bundleAbsPath = path.join(outDir, bundleRelPath);
if (!fs.existsSync(bundleAbsPath)) {
  console.error("❌ Bundle file missing:", bundleAbsPath);
  process.exit(1);
}

const bundleBuffer = fs.readFileSync(bundleAbsPath);
const bundleSha256Hex = crypto.createHash("sha256").update(bundleBuffer).digest("hex");
const updateId = deterministicUuidFromHash(bundleSha256Hex);
const createdAt = new Date(fs.statSync(bundleAbsPath).mtimeMs).toISOString();

const launchAsset = {
  hash: sha256Base64Url(bundleBuffer),
  key: md5Hex(bundleBuffer),
  fileExtension: ".bundle",
  contentType: "application/javascript",
  relativePath: bundleRelPath,
};

const assets = [];
const rawAssets = Array.isArray(androidMeta.assets) ? androidMeta.assets : [];
const seenKeys = new Set();

for (const item of rawAssets) {
  if (!item || !item.path) continue;
  const relPath = String(item.path).replace(/^\/+/, "");
  const absPath = path.join(outDir, relPath);
  if (!fs.existsSync(absPath)) continue;
  const buf = fs.readFileSync(absPath);
  const key = md5Hex(buf);
  const ext = String(item.ext || path.extname(relPath).replace(/^\./, "") || "bin").toLowerCase();
  const dedupKey = `${key}.${ext}`;
  if (seenKeys.has(dedupKey)) continue;
  seenKeys.add(dedupKey);
  assets.push({
    hash: sha256Base64Url(buf),
    key,
    fileExtension: `.${ext}`,
    contentType: MIME_BY_EXT[ext] || "application/octet-stream",
    relativePath: relPath,
  });
}

const otaManifest = {
  id: updateId,
  createdAt,
  runtimeVersion,
  launchAsset,
  assets,
  metadata: {},
  extra: {
    expoClient: {
      ...expoConfig,
      runtimeVersion,
    },
  },
};

const manifestOutPath = path.join(outDir, "ota-manifest.json");
fs.writeFileSync(manifestOutPath, JSON.stringify(otaManifest, null, 2));
console.log(`✅ OTA Manifest generated: id=${updateId} runtimeVersion=${runtimeVersion} assets=${assets.length}`);

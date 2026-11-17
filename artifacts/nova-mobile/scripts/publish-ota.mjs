#!/usr/bin/env node
import crypto from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { execSync } from "node:child_process";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const mobileDir = path.resolve(__dirname, "..");
const outDir = path.join(mobileDir, "ota-dist");
const appJson = JSON.parse(fs.readFileSync(path.join(mobileDir, "app.json"), "utf8"));
const runtimeVersion = String(appJson?.expo?.runtimeVersion || appJson?.expo?.version || "1.0.10");

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
};

fs.rmSync(outDir, { recursive: true, force: true });
console.log(`[ota] Exporting Android JS bundle for runtimeVersion=${runtimeVersion}...`);
execSync("npx expo export --platform android --output-dir ota-dist", {
  cwd: mobileDir,
  stdio: "inherit",
  env: {
    ...process.env,
    EXPO_PUBLIC_DOMAIN: process.env.EXPO_PUBLIC_DOMAIN || "https://animenovaa.duckdns.org",
  },
});

const meta = JSON.parse(fs.readFileSync(path.join(outDir, "metadata.json"), "utf8"));
const androidMeta = meta?.fileMetadata?.android;
if (!androidMeta?.bundle) throw new Error("Missing android bundle in metadata.json");

function hashFile(relPath) {
  const abs = path.join(outDir, relPath);
  const buf = fs.readFileSync(abs);
  return {
    hash: crypto.createHash("sha256").update(buf).digest("base64url"),
    key: crypto.createHash("md5").update(buf).digest("hex"),
  };
}

const bundleHashes = hashFile(androidMeta.bundle);
const seenKeys = new Set();
const assets = [];
for (const asset of androidMeta.assets || []) {
  const rel = String(asset.path || "").replace(/^\/+/, "");
  if (!rel) continue;
  const ext = String(asset.ext || "").replace(/^\./, "").toLowerCase();
  const h = hashFile(rel);
  if (seenKeys.has(h.key)) continue;
  seenKeys.add(h.key);
  assets.push({
    hash: h.hash,
    key: h.key,
    fileExtension: ext ? `.${ext}` : "",
    contentType: MIME_BY_EXT[ext] || "application/octet-stream",
    relativePath: rel,
  });
}

const manifest = {
  id: crypto.randomUUID(),
  createdAt: new Date().toISOString(),
  runtimeVersion,
  launchAsset: {
    hash: bundleHashes.hash,
    key: bundleHashes.key,
    fileExtension: ".bundle",
    contentType: "application/javascript",
    relativePath: androidMeta.bundle,
  },
  assets,
  metadata: {},
  extra: { expoClient: appJson.expo },
};

fs.writeFileSync(path.join(outDir, "ota-manifest.json"), JSON.stringify(manifest, null, 2) + "\n", "utf8");
console.log(`[ota] Published ota-manifest.json id=${manifest.id} runtime=${runtimeVersion} assets=${assets.length}`);

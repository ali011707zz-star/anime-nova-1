import { execFileSync } from "node:child_process";
import crypto from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { Router, type Request, type Response } from "express";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const router = Router();

const MIME_BY_EXT: Record<string, string> = {
  ".png": "image/png",
  ".jpg": "image/jpeg",
  ".jpeg": "image/jpeg",
  ".gif": "image/gif",
  ".webp": "image/webp",
  ".svg": "image/svg+xml",
  ".ttf": "font/ttf",
  ".otf": "font/otf",
  ".woff": "font/woff",
  ".woff2": "font/woff2",
  ".mp4": "video/mp4",
  ".mp3": "audio/mpeg",
  ".json": "application/json",
  ".js": "application/javascript",
  ".hbc": "application/javascript",
  ".bundle": "application/javascript",
};

function resolveOtaDistDir(): string {
  const candidates = [
    path.resolve(__dirname, "../../../nova-mobile/ota-dist"),
    path.resolve(process.cwd(), "artifacts/nova-mobile/ota-dist"),
    "/opt/anime-nova/artifacts/nova-mobile/ota-dist",
  ];
  for (const dir of candidates) {
    if (fs.existsSync(dir)) return dir;
  }
  return candidates[0];
}

let cachedManifest: { mtimeMs: number; data: any } | null = null;

function loadOtaManifest(): any | null {
  const otaDir = resolveOtaDistDir();
  const manifestPath = path.join(otaDir, "ota-manifest.json");
  if (!fs.existsSync(manifestPath)) return null;
  try {
    const stat = fs.statSync(manifestPath);
    if (cachedManifest && cachedManifest.mtimeMs === stat.mtimeMs) {
      return cachedManifest.data;
    }
    const parsed = JSON.parse(fs.readFileSync(manifestPath, "utf8"));
    cachedManifest = { mtimeMs: stat.mtimeMs, data: parsed };
    return parsed;
  } catch {
    return null;
  }
}

function getPublicBaseUrl(req: Request): string {
  const protoHeader = req.headers["x-forwarded-proto"];
  const proto = (Array.isArray(protoHeader) ? protoHeader[0] : protoHeader) || req.protocol || "https";
  const hostHeader = req.headers["x-forwarded-host"] || req.headers.host;
  const host = (Array.isArray(hostHeader) ? hostHeader[0] : hostHeader) || process.env.APP_DOMAIN || "animenovaa.duckdns.org";
  const cleanProto = proto.split(",")[0].trim() || "https";
  const cleanHost = host.split(",")[0].trim();
  return `${cleanProto}://${cleanHost}`;
}

function sendNoUpdateAvailable(res: Response): void {
  res
    .status(204)
    .set({
      "expo-protocol-version": "1",
      "expo-sfv-version": "0",
      "cache-control": "private, max-age=0",
    })
    .end();
}

router.get("/status", (_req: Request, res: Response) => {
  const manifest = loadOtaManifest();
  if (!manifest) {
    res.json({ enabled: true, activeUpdate: false });
    return;
  }
  res.json({
    enabled: true,
    activeUpdate: true,
    id: manifest.id,
    createdAt: manifest.createdAt,
    runtimeVersion: manifest.runtimeVersion,
    assetsCount: Array.isArray(manifest.assets) ? manifest.assets.length : 0,
  });
});

router.get("/manifest", (req: Request, res: Response) => {
  const platformHeader = req.headers["expo-platform"] || req.query.platform || "android";
  const platform = String(Array.isArray(platformHeader) ? platformHeader[0] : platformHeader).toLowerCase();
  if (platform !== "android") {
    sendNoUpdateAvailable(res);
    return;
  }

  const rawManifest = loadOtaManifest();
  if (!rawManifest || !rawManifest.id || !rawManifest.launchAsset) {
    sendNoUpdateAvailable(res);
    return;
  }

  const runtimeHeader = req.headers["expo-runtime-version"] || req.query.runtimeVersion || "";
  const requestedRuntime = String(Array.isArray(runtimeHeader) ? runtimeHeader[0] : runtimeHeader).trim();
  if (requestedRuntime && requestedRuntime !== String(rawManifest.runtimeVersion)) {
    sendNoUpdateAvailable(res);
    return;
  }

  const currentIdHeader = req.headers["expo-current-update-id"] || "";
  const currentUpdateId = String(Array.isArray(currentIdHeader) ? currentIdHeader[0] : currentIdHeader).trim().toLowerCase();
  const embeddedIdHeader = req.headers["expo-embedded-update-id"] || "";
  const embeddedUpdateId = String(Array.isArray(embeddedIdHeader) ? embeddedIdHeader[0] : embeddedIdHeader).trim().toLowerCase();
  const targetUpdateId = String(rawManifest.id).trim().toLowerCase();

  if (currentUpdateId && currentUpdateId === targetUpdateId) {
    sendNoUpdateAvailable(res);
    return;
  }
  if (!currentUpdateId && embeddedUpdateId && embeddedUpdateId === targetUpdateId) {
    sendNoUpdateAvailable(res);
    return;
  }

  const baseUrl = getPublicBaseUrl(req);
  const responseManifest = {
    id: rawManifest.id,
    createdAt: rawManifest.createdAt,
    runtimeVersion: rawManifest.runtimeVersion,
    launchAsset: {
      hash: rawManifest.launchAsset.hash,
      key: rawManifest.launchAsset.key,
      fileExtension: rawManifest.launchAsset.fileExtension || ".bundle",
      contentType: rawManifest.launchAsset.contentType || "application/javascript",
      url: `${baseUrl}/api/ota/assets/${rawManifest.launchAsset.relativePath}`,
    },
    assets: (Array.isArray(rawManifest.assets) ? rawManifest.assets : []).map((asset: any) => ({
      hash: asset.hash,
      key: asset.key,
      fileExtension: asset.fileExtension,
      contentType: asset.contentType,
      url: `${baseUrl}/api/ota/assets/${asset.relativePath}`,
    })),
    metadata: rawManifest.metadata || {},
    extra: rawManifest.extra || {},
  };

  res
    .status(200)
    .set({
      "expo-protocol-version": "1",
      "expo-sfv-version": "0",
      "cache-control": "private, max-age=0",
      "content-type": "application/expo+json; charset=utf-8",
    })
    .send(JSON.stringify(responseManifest));
});

router.use("/assets", (req: Request, res: Response, next) => {
  if (req.method !== "GET" && req.method !== "HEAD") {
    next();
    return;
  }
  const otaDir = resolveOtaDistDir();
  const relPath = decodeURIComponent(req.path || "").replace(/^\/+/, "");
  if (!relPath || relPath.includes("..")) {
    res.status(400).json({ error: "Invalid asset path" });
    return;
  }
  const absPath = path.resolve(otaDir, relPath);
  if (!absPath.startsWith(path.resolve(otaDir)) || !fs.existsSync(absPath) || fs.statSync(absPath).isDirectory()) {
    res.status(404).json({ error: "Asset not found" });
    return;
  }
  const ext = path.extname(absPath).toLowerCase();
  const contentType = MIME_BY_EXT[ext] || "application/octet-stream";
  res.set({
    "content-type": contentType,
    "cache-control": "public, max-age=31536000, immutable",
  });
  fs.createReadStream(absPath).pipe(res);
});

const OFFICIAL_CERT_SHA256 = "16bc22491be7c87c964fdab6403331c5743a108b7113ac7da77301f5e602b39d";

router.post("/upload-apk", (req: Request, res: Response) => {
  const tmpPath = `/tmp/incoming-release-${Date.now()}-${Math.random().toString(36).slice(2, 8)}.apk`;
  const writeStream = fs.createWriteStream(tmpPath);
  let aborted = false;

  const cleanup = () => {
    try {
      if (fs.existsSync(tmpPath)) fs.unlinkSync(tmpPath);
    } catch {}
  };

  req.on("aborted", () => {
    aborted = true;
    writeStream.destroy();
    cleanup();
  });

  writeStream.on("error", (err) => {
    cleanup();
    if (!res.headersSent) {
      res.status(500).json({ error: "Write stream error", message: err.message });
    }
  });

  writeStream.on("finish", () => {
    if (aborted) {
      cleanup();
      return;
    }
    try {
      const stat = fs.statSync(tmpPath);
      if (stat.size < 15 * 1024 * 1024) {
        cleanup();
        res.status(400).json({ error: "APK too small", size: stat.size });
        return;
      }
      const certOut = execFileSync("/usr/bin/apksigner", ["verify", "--print-certs", tmpPath], {
        encoding: "utf8",
        timeout: 20000,
      });
      if (!certOut.toLowerCase().includes(OFFICIAL_CERT_SHA256)) {
        cleanup();
        res.status(403).json({ error: "APK signature digest mismatch" });
        return;
      }
      const badging = execFileSync("/usr/bin/aapt", ["dump", "badging", tmpPath], {
        encoding: "utf8",
        timeout: 20000,
        maxBuffer: 10 * 1024 * 1024,
      });
      const pkgLine = badging.split("\n")[0] || "";
      const nameMatch = pkgLine.match(/name='([^']+)'/);
      const codeMatch = pkgLine.match(/versionCode='([^']+)'/);
      const verMatch = pkgLine.match(/versionName='([^']+)'/);
      const pkgName = nameMatch ? nameMatch[1] : "";
      const versionCode = codeMatch ? Number(codeMatch[1]) : 0;
      const versionName = verMatch ? verMatch[1] : "";

      if (pkgName !== "com.nova.anime" || versionCode < 11) {
        cleanup();
        res.status(400).json({ error: "Unexpected package or versionCode", pkgName, versionCode, versionName });
        return;
      }

      const targetDirs = [
        "/opt/anime-nova/public",
        "/opt/anime-nova/artifacts/anime-scraper/public",
        "/opt/anime-nova/artifacts/anime-scraper/dist/public",
      ];
      const fileNames = [
        "Anime Nova.apk",
        "Anime-Nova.apk",
        "nova.apk",
        "Anime-Nova-TV.apk",
      ];

      for (const dir of targetDirs) {
        fs.mkdirSync(dir, { recursive: true });
        for (const name of fileNames) {
          const dest = path.join(dir, name);
          const tmpDest = `${dest}.tmp-${Date.now()}`;
          fs.copyFileSync(tmpPath, tmpDest);
          fs.chmodSync(tmpDest, 0o644);
          fs.renameSync(tmpDest, dest);
        }
      }

      cleanup();
      res.json({
        ok: true,
        pkgName,
        versionName,
        versionCode,
        sizeBytes: stat.size,
      });
    } catch (err: any) {
      cleanup();
      res.status(500).json({ error: "Verification or install failed", message: err?.message || String(err) });
    }
  });

  req.pipe(writeStream);
});

export default router;

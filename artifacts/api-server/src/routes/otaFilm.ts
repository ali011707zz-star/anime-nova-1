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

function resolveOtaFilmDistDir(): string {
  const candidates = [
    path.resolve(__dirname, "../../../nova-film/ota-dist"),
    path.resolve(process.cwd(), "artifacts/nova-film/ota-dist"),
    "/opt/anime-nova/artifacts/nova-film/ota-dist",
  ];
  for (const dir of candidates) {
    if (fs.existsSync(dir)) return dir;
  }
  return candidates[0];
}

let cachedManifest: { mtimeMs: number; data: any } | null = null;

function loadOtaFilmManifest(): any | null {
  const otaDir = resolveOtaFilmDistDir();
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
  const manifest = loadOtaFilmManifest();
  if (!manifest) {
    res.json({ app: "nova-film", enabled: true, activeUpdate: false });
    return;
  }
  res.json({
    app: "nova-film",
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

  const rawManifest = loadOtaFilmManifest();
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
      url: `${baseUrl}/api/ota-film/assets/${rawManifest.launchAsset.relativePath}`,
    },
    assets: (Array.isArray(rawManifest.assets) ? rawManifest.assets : []).map((asset: any) => ({
      hash: asset.hash,
      key: asset.key,
      fileExtension: asset.fileExtension,
      contentType: asset.contentType,
      url: `${baseUrl}/api/ota-film/assets/${asset.relativePath}`,
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
  const otaDir = resolveOtaFilmDistDir();
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
  if (req.method === "HEAD") {
    res.status(200).end();
    return;
  }
  fs.createReadStream(absPath).pipe(res);
});

export default router;

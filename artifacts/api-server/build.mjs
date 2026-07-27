import { createRequire } from "node:module";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { build as esbuild } from "esbuild";
import esbuildPluginPino from "esbuild-plugin-pino";
<<<<<<< HEAD
import { rm } from "node:fs/promises";
=======
import { rm, cp, mkdir } from "node:fs/promises";
>>>>>>> 22277ebee9275f51cb7b54c9b3300c5144e2c175

// Plugins (e.g. 'esbuild-plugin-pino') may use `require` to resolve dependencies
globalThis.require = createRequire(import.meta.url);

const artifactDir = path.dirname(fileURLToPath(import.meta.url));

<<<<<<< HEAD
async function buildAll() {
  const distDir = path.resolve(artifactDir, "dist");
=======
const distDir = path.resolve(artifactDir, "dist");

async function buildAll() {
>>>>>>> 22277ebee9275f51cb7b54c9b3300c5144e2c175
  await rm(distDir, { recursive: true, force: true });

  await esbuild({
    entryPoints: [path.resolve(artifactDir, "src/index.ts")],
    platform: "node",
    bundle: true,
    format: "esm",
    outdir: distDir,
    outExtension: { ".js": ".mjs" },
    logLevel: "info",
    // Some packages may not be bundleable, so we externalize them, we can add more here as needed.
    // Some of the packages below may not be imported or installed, but we're adding them in case they are in the future.
    // Examples of unbundleable packages:
    // - uses native modules and loads them dynamically (e.g. sharp)
    // - use path traversal to read files (e.g. @google-cloud/secret-manager loads sibling .proto files)
    external: [
      "*.node",
      "sharp",
      "better-sqlite3",
      "sqlite3",
      "canvas",
      "bcrypt",
      "argon2",
      "fsevents",
      "re2",
      "farmhash",
      "xxhash-addon",
      "bufferutil",
      "utf-8-validate",
      "ssh2",
      "cpu-features",
      "dtrace-provider",
      "isolated-vm",
      "lightningcss",
      "pg-native",
      "oracledb",
      "mongodb-client-encryption",
      "nodemailer",
      "handlebars",
      "knex",
      "typeorm",
      "protobufjs",
      "onnxruntime-node",
      "@tensorflow/*",
      "@prisma/client",
      "@mikro-orm/*",
      "@grpc/*",
      "@swc/*",
      "@aws-sdk/*",
      "@azure/*",
      "@opentelemetry/*",
      "@google-cloud/*",
      "@google/*",
      "googleapis",
      "firebase-admin",
      "@parcel/watcher",
      "@sentry/profiling-node",
      "@tree-sitter/*",
      "aws-sdk",
      "classic-level",
      "dd-trace",
      "ffi-napi",
      "grpc",
      "hiredis",
      "kerberos",
      "leveldown",
      "miniflare",
      "mysql2",
      "newrelic",
      "odbc",
      "piscina",
      "realm",
      "ref-napi",
      "rocksdb",
      "sass-embedded",
      "sequelize",
      "serialport",
      "snappy",
      "tinypool",
      "usb",
      "workerd",
      "wrangler",
      "zeromq",
      "zeromq-prebuilt",
      "playwright",
<<<<<<< HEAD
      "puppeteer",
      "puppeteer-core",
      "electron",
=======
      "playwright-core",
      "puppeteer",
      "puppeteer-core",
      "electron",
      "chromium-bidi",
>>>>>>> 22277ebee9275f51cb7b54c9b3300c5144e2c175
    ],
    sourcemap: "linked",
    plugins: [
      // pino relies on workers to handle logging, instead of externalizing it we use a plugin to handle it
      esbuildPluginPino({ transports: ["pino-pretty"] })
    ],
    // Make sure packages that are cjs only (e.g. express) but are bundled continue to work in our esm output file
    banner: {
      js: `import { createRequire as __bannerCrReq } from 'node:module';
import __bannerPath from 'node:path';
import __bannerUrl from 'node:url';

globalThis.require = __bannerCrReq(import.meta.url);
globalThis.__filename = __bannerUrl.fileURLToPath(import.meta.url);
globalThis.__dirname = __bannerPath.dirname(globalThis.__filename);
    `,
    },
  });
}

<<<<<<< HEAD
buildAll().catch((err) => {
  console.error(err);
  process.exit(1);
});
=======
buildAll()
  .then(async () => {
    const srcData  = path.resolve(artifactDir, "src/data");
    const distData = path.resolve(artifactDir, "dist/data");
    await mkdir(distData, { recursive: true });
    await cp(srcData, distData, { recursive: true, force: true });

    // CycleTLS Go binary — must live next to the bundled dist/index.mjs
    // because esbuild sets __dirname = dist/, so cycletls resolves its binary there.
    try {
      const req    = createRequire(import.meta.url);
      const ctPath = req.resolve("cycletls");                          // .../cycletls/dist/index.js
      const ctBin  = path.join(path.dirname(ctPath), "index");        // Go binary (no extension)
      const dstBin = path.join(distDir, "index");
      await cp(ctBin, dstBin, { force: true });
      const { chmod } = await import("node:fs/promises");
      await chmod(dstBin, 0o755);
      console.log("[build] CycleTLS binary copied →", dstBin);
    } catch (e) {
      console.warn("[build] CycleTLS binary not found — skipping:", e.message);
    }
  })
  .catch((err) => {
    console.error(err);
    process.exit(1);
  });
>>>>>>> 22277ebee9275f51cb7b54c9b3300c5144e2c175

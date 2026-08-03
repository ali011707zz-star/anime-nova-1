import { defineConfig, loadEnv } from "vite";
import react from "@vitejs/plugin-react";
import tailwindcss from "@tailwindcss/vite";
import path from "path";

const rawPort = process.env.PORT ?? "24968";
const port = Number(rawPort);
if (Number.isNaN(port) || port <= 0) throw new Error(`Invalid PORT value: "${rawPort}"`);

const basePath = process.env.BASE_PATH ?? "/";

export default defineConfig(async ({ mode }) => {
  return {
    base: basePath,
    define: {
      "__GOOGLE_CLIENT_ID__": JSON.stringify(process.env.GOOGLE_CLIENT_ID || ""),
      "__GITHUB_CLIENT_ID__": JSON.stringify(process.env.GITHUB_CLIENT_ID || ""),
    },
    plugins: [
      react(),
      tailwindcss(),
      ...(process.env.NODE_ENV !== "production" && process.env.REPL_ID !== undefined
        ? [
            await import("@replit/vite-plugin-cartographer").then((m) =>
              m.cartographer({ root: path.resolve(import.meta.dirname, "..") })
            ),
            await import("@replit/vite-plugin-dev-banner").then((m) => m.devBanner()),
          ]
        : []),
    ],
    resolve: {
      alias: {
        "@": path.resolve(import.meta.dirname, "src"),
        "@assets": path.resolve(import.meta.dirname, "..", "..", "attached_assets"),
      },
      dedupe: ["react", "react-dom"],
    },
    root: path.resolve(import.meta.dirname),
    build: {
      outDir: path.resolve(import.meta.dirname, "dist/public"),
      emptyOutDir: true,
      chunkSizeWarningLimit: 600,
      rollupOptions: {
        output: {
          manualChunks(id) {
            if (id.includes("node_modules")) {
              if (id.includes("react-dom") || id.includes("react/"))   return "vendor-react";
              if (id.includes("framer-motion"))                         return "vendor-motion";
              if (id.includes("hls.js") || id.includes("@types/hls"))  return "vendor-hls";
              if (id.includes("lucide-react"))                          return "vendor-icons";
              if (id.includes("@radix-ui"))                             return "vendor-radix";
              if (id.includes("wouter") || id.includes("@tanstack"))    return "vendor-router";
              return "vendor-misc";
            }
          },
        },
      },
    },
    server: {
      port,
      strictPort: true,
      host: "0.0.0.0",
      allowedHosts: true,
      fs: { strict: true },
      proxy: {
        "/api": {
          target: "http://localhost:8080",
          changeOrigin: true,
          secure: false,
          timeout: 0,
          proxyTimeout: 0,
        },
      },
    },
    preview: {
      port,
      host: "0.0.0.0",
      allowedHosts: true,
    },
  };
});

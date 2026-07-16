import { Router, type IRouter } from "express";
import { HealthCheckResponse } from "@workspace/api-zod";
<<<<<<< HEAD
=======
import { readFileSync } from "fs";
import { join, dirname } from "path";
import { fileURLToPath } from "url";

const __dir = dirname(fileURLToPath(import.meta.url));
>>>>>>> origin/main

const router: IRouter = Router();

router.get("/healthz", (_req, res) => {
  const data = HealthCheckResponse.parse({ status: "ok" });
  res.json(data);
});

<<<<<<< HEAD
=======
router.get("/updates", (_req, res) => {
  try {
    const filePath = join(__dir, "../data/updates.json");
    const raw = readFileSync(filePath, "utf-8");
    const updates = JSON.parse(raw);
    res.setHeader("Cache-Control", "public, max-age=300");
    res.json({ updates });
  } catch {
    res.json({ updates: [] });
  }
});

>>>>>>> origin/main
export default router;

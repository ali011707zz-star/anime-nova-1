import { Router } from "express";
import fs from "fs";
import path from "path";

const router = Router();

const CONFIG_FILE = path.join(process.cwd(), "remote-config.json");

const DEFAULT_CONFIG = {
  sources: {
    shahiid: true,
    animelek: true,
    animedar: true,
    anikoto: true,
    anineko: true,
    videasy: true,
    vidlink: true,
    vyla: true,
    starcima: true,
    animePhoenix: true,
    kawaii: true,
  },
  announcements: [] as {
    id: string;
    message: string;
    type: "info" | "warning" | "success";
    link?: string;
  }[],
  features: {
    comments: true,
    watchHistory: true,
    subscriptions: true,
    downloads: false,
    schedule: true,
    animations: true,
  },
  maintenanceMode: false,
  maintenanceMessage: "",
  version: "1.0.0",
};

function readConfig() {
  try {
    if (fs.existsSync(CONFIG_FILE)) {
      const raw = fs.readFileSync(CONFIG_FILE, "utf-8");
      return { ...DEFAULT_CONFIG, ...JSON.parse(raw) };
    }
  } catch {}
  return DEFAULT_CONFIG;
}

function writeConfig(cfg: typeof DEFAULT_CONFIG) {
  try {
    fs.writeFileSync(CONFIG_FILE, JSON.stringify(cfg, null, 2), "utf-8");
  } catch {}
}

router.get("/api/config", (_req, res) => {
  const config = readConfig();
  res.json(config);
});

router.put("/api/config", (req, res) => {
  try {
    const current = readConfig();
    const updated = { ...current, ...req.body };
    writeConfig(updated);
    res.json({ success: true, config: updated });
  } catch (e) {
    res.status(500).json({ error: "Failed to update config" });
  }
});

router.patch("/api/config/announcement", (req, res) => {
  try {
    const config = readConfig();
    const ann = req.body;
    if (!ann.id) ann.id = Date.now().toString();
    config.announcements = [ann, ...config.announcements.filter((a: { id: string }) => a.id !== ann.id)];
    writeConfig(config);
    res.json({ success: true, announcement: ann });
  } catch {
    res.status(500).json({ error: "Failed to add announcement" });
  }
});

router.delete("/api/config/announcement/:id", (req, res) => {
  try {
    const config = readConfig();
    config.announcements = config.announcements.filter((a: { id: string }) => a.id !== req.params.id);
    writeConfig(config);
    res.json({ success: true });
  } catch {
    res.status(500).json({ error: "Failed to delete announcement" });
  }
});

router.patch("/api/config/source/:name", (req, res) => {
  try {
    const config = readConfig();
    const { enabled } = req.body;
    config.sources[req.params.name as keyof typeof config.sources] = enabled;
    writeConfig(config);
    res.json({ success: true, source: req.params.name, enabled });
  } catch {
    res.status(500).json({ error: "Failed to update source" });
  }
});

export default router;

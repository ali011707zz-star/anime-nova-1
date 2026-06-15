import { Router } from "express";

const router = Router();

/* ── Remote config ── */
/* Default config — can be extended to read from DB or env vars */
const DEFAULT_CONFIG = {
  version: "1.0.0",
  maintenanceMode: false,
  maintenanceMessage: "",
  sources: {
    shahiid:      true,
    animelek:     true,
    animedar:     true,
    okanime:      true,
    animeify:     true,
    kawaii:       true,
    anikoto:      true,
    animepahe:    true,
    animewitcher: true,
    seepanel:     true,
    arabseed:     true,
    animephoenix: true,
    starcima:     true,
    videasy:      true,
    vidlink:      true,
    lordflix:     true,
    vyla:         true,
    aflaam:       true,
    stardima:     true,
  },
  announcements: [] as {
    id: string;
    message: string;
    type: "info" | "warning" | "success";
    link?: string;
  }[],
  features: {
    comments:     true,
    watchHistory: true,
    subscriptions: true,
    downloads:    false,
    animationSection: true,
  },
};

router.get("/config", (_req, res) => {
  res.json(DEFAULT_CONFIG);
});

export default router;

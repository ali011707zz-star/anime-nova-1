import { Router } from "express";
import {
  getCarateenCatalog,
  getCarateenEpisodeStream,
  getCarateenEpisodes,
  type CarateenProvider,
} from "../lib/carateenSource";
import { logger } from "../lib/logger";

const router = Router();
const PROVIDERS = new Set<CarateenProvider>(["carateen", "sp"]);

function parseProvider(value: unknown): CarateenProvider | null {
  const provider = String(value ?? "");
  return PROVIDERS.has(provider as CarateenProvider)
    ? (provider as CarateenProvider)
    : null;
}

function parsePositiveId(value: unknown): number | null {
  const raw = String(value ?? "");
  if (!/^\d+$/.test(raw)) return null;
  const id = Number(raw);
  return Number.isSafeInteger(id) && id > 0 ? id : null;
}

router.get("/dubbed/carateen/catalog", async (req, res) => {
  const providerValue = req.query.provider;
  const provider = providerValue === undefined ? null : parseProvider(providerValue);
  if (providerValue !== undefined && !provider) {
    res.status(400).json({ items: [], results: [], error: "invalid provider" });
    return;
  }

  try {
    const catalog = await getCarateenCatalog(req.query.refresh === "1");
    const items = provider
      ? catalog.filter((item) => item.provider === provider)
      : catalog;
    const spacetoon = catalog.filter((item) => item.provider === "sp");
    res.setHeader("Cache-Control", req.query.refresh === "1" ? "no-store" : "public, max-age=300");
    res.json({ items, results: items, spacetoon, total: items.length });
  } catch (err) {
    logger.warn({ err }, "[carateen] catalog unavailable");
    res.status(502).json({ items: [], results: [], error: "catalog unavailable" });
  }
});

router.get("/dubbed/carateen/episodes", async (req, res) => {
  const provider = parseProvider(req.query.provider ?? "sp");
  const showId = parsePositiveId(req.query.id ?? req.query.showId);
  if (!provider || !showId) {
    res.status(400).json({ episodes: [], error: "invalid provider or show id" });
    return;
  }

  try {
    const episodes = await getCarateenEpisodes(provider, showId, req.query.refresh === "1");
    res.setHeader("Cache-Control", req.query.refresh === "1" ? "no-store" : "public, max-age=300");
    res.json({ episodes });
  } catch (err) {
    logger.warn({ err, provider, showId }, "[carateen] episodes unavailable");
    res.status(502).json({ episodes: [], error: "episodes unavailable" });
  }
});

router.get("/dubbed/carateen/stream", async (req, res) => {
  const provider = parseProvider(req.query.provider ?? "sp");
  const showId = parsePositiveId(req.query.id ?? req.query.showId);
  const episodeId = parsePositiveId(req.query.episode ?? req.query.episodeId);
  if (!provider || !showId || !episodeId) {
    res.status(400).json({ error: "invalid provider, show id, or episode id" });
    return;
  }

  try {
    const streamUrl = await getCarateenEpisodeStream(provider, showId, episodeId);
    res.setHeader("Cache-Control", "no-store");
    res.json({ streamUrl });
  } catch (err) {
    logger.warn({ err, provider, showId, episodeId }, "[carateen] stream unavailable");
    res.status(502).json({ error: "stream unavailable" });
  }
});

export default router;

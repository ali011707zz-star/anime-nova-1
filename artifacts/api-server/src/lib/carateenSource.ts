import { createDecipheriv } from "node:crypto";

const CARATEEN_BASE = "https://carateen.tv";
const CATALOG_TTL_MS = 15 * 60_000;
const EPISODE_TTL_MS = 20 * 60_000;
const DECRYPTION_KEY = Buffer.from("7annaba3l_loves_crypto_safe_key!", "utf8");

const API_HEADERS: Record<string, string> = {
  Accept: "application/json",
  "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
  Origin: CARATEEN_BASE,
  Referer: `${CARATEEN_BASE}/`,
  "User-Agent":
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36",
  "X-Cartoony-Client": "web-frontend-v1",
};

export type CarateenProvider = "carateen" | "sp";

export interface CarateenCatalogEntry {
  id: number;
  provider: CarateenProvider;
  providerLabel: string;
  title: string;
  image: string;
  category: string;
  episodeCount: number;
  isMovie: boolean;
  year: string;
}

type CacheEntry<T> = { value: T; expiresAt: number };

let catalogCache: CacheEntry<CarateenCatalogEntry[]> | null = null;
let catalogRequest: Promise<CarateenCatalogEntry[]> | null = null;
const episodeCache = new Map<string, CacheEntry<Record<string, unknown>[]>>();
const episodeRequests = new Map<string, Promise<Record<string, unknown>[]>>();

function decryptResponse(packet: unknown): unknown {
  if (!packet || typeof packet !== "object") {
    throw new Error("Carateen returned an invalid encrypted response");
  }

  const body = packet as { iv?: unknown; encryptedData?: unknown };
  if (typeof body.iv !== "string" || typeof body.encryptedData !== "string") {
    throw new Error("Carateen response is missing its encrypted payload");
  }

  try {
    const decipher = createDecipheriv(
      "aes-256-cbc",
      DECRYPTION_KEY,
      Buffer.from(body.iv, "hex"),
    );
    const cleartext = Buffer.concat([
      decipher.update(Buffer.from(body.encryptedData, "hex")),
      decipher.final(),
    ]).toString("utf8");
    return JSON.parse(cleartext);
  } catch {
    throw new Error("Could not decrypt the Carateen response");
  }
}

async function fetchEncrypted(
  path: string,
  init: RequestInit = {},
): Promise<unknown> {
  const response = await fetch(`${CARATEEN_BASE}${path}`, {
    ...init,
    headers: { ...API_HEADERS, ...(init.headers as Record<string, string> | undefined) },
    signal: init.signal ?? AbortSignal.timeout(12_000),
  });
  if (!response.ok) {
    throw new Error(`Carateen request failed with HTTP ${response.status}`);
  }
  return decryptResponse(await response.json());
}

function rowsFrom(value: unknown, label: string): Record<string, unknown>[] {
  if (Array.isArray(value)) return value as Record<string, unknown>[];
  if (value && typeof value === "object") {
    const body = value as Record<string, unknown>;
    for (const key of ["data", "results", "tvshows", "episodes"]) {
      if (Array.isArray(body[key])) return body[key] as Record<string, unknown>[];
    }
  }
  throw new Error(`Carateen returned an invalid ${label} list`);
}

function numberOrZero(value: unknown): number {
  const number = Number(value);
  return Number.isFinite(number) && number > 0 ? number : 0;
}

function safeSpacetoonImage(value: unknown): string {
  if (typeof value !== "string") return "";
  try {
    const image = new URL(value);
    if (
      image.protocol === "https:" &&
      (image.hostname === "cdn.spacetoongo.com" ||
        image.hostname.endsWith(".spacetoongo.com"))
    ) {
      return image.toString();
    }
  } catch {
    // Ignore malformed catalog images.
  }
  return "";
}

function normalizeCatalog(
  carateenRows: Record<string, unknown>[],
  spRows: Record<string, unknown>[],
): CarateenCatalogEntry[] {
  const spacetoon = spRows.map((row): CarateenCatalogEntry => {
    const category = String(row.planet_name || row.category || "سبيستون");
    return {
      id: numberOrZero(row.id),
      provider: "sp",
      providerLabel: "سبيستون",
      title: String(row.name || row.title || "بدون عنوان"),
      image: safeSpacetoonImage(row.cover_full_path),
      category,
      episodeCount: numberOrZero(row.ep_count),
      isMovie: Boolean(Number(row.is_movie)) || /فيلم|movie/i.test(category),
      year: String(row.release_year || ""),
    };
  });

  const archive = carateenRows.map((row): CarateenCatalogEntry => {
    const posterName = String(row.poster_cover || "");
    const image = /^[a-zA-Z0-9_.-]+\.(?:webp|png|jpe?g)$/i.test(posterName)
      ? `${CARATEEN_BASE}/assets/img/posters/${encodeURIComponent(posterName)}`
      : "";
    const category = String(row.category || "كراتين");
    const isMovie = /فيلم|movie/i.test(category);
    return {
      id: numberOrZero(row.id),
      provider: "carateen",
      providerLabel: "كراتين",
      title: String(row.title || row.name || "بدون عنوان"),
      image,
      category,
      episodeCount: numberOrZero(row.episodes_count_real || row.episodes_count),
      isMovie,
      year: String(row.release_year || ""),
    };
  });

  return [...spacetoon, ...archive].filter((entry) => entry.id > 0);
}

export async function getCarateenCatalog(
  forceRefresh = false,
): Promise<CarateenCatalogEntry[]> {
  if (!forceRefresh && catalogCache && catalogCache.expiresAt > Date.now()) {
    return catalogCache.value;
  }
  if (catalogRequest) return catalogRequest;

  catalogRequest = (async () => {
    const [carateenValue, spValue] = await Promise.all([
      fetchEncrypted("/api/tvshows"),
      fetchEncrypted("/api/sp/tvshows"),
    ]);
    const normalized = normalizeCatalog(
      rowsFrom(carateenValue, "Carateen catalog"),
      rowsFrom(spValue, "Spacetoon catalog"),
    );
    catalogCache = { value: normalized, expiresAt: Date.now() + CATALOG_TTL_MS };
    return normalized;
  })();

  try {
    return await catalogRequest;
  } finally {
    catalogRequest = null;
  }
}

export async function getCarateenEpisodes(
  provider: CarateenProvider,
  showId: number,
  forceRefresh = false,
): Promise<Record<string, unknown>[]> {
  const key = `${provider}:${showId}`;
  const cached = episodeCache.get(key);
  if (!forceRefresh && cached && cached.expiresAt > Date.now()) return cached.value;
  const inFlight = episodeRequests.get(key);
  if (inFlight) return inFlight;

  const path =
    provider === "sp"
      ? `/api/sp/episodes?id=${showId}`
      : `/api/episodes?id=${showId}`;
  const request = fetchEncrypted(path).then((value) => {
    const rows = rowsFrom(value, "episode");
    episodeCache.set(key, { value: rows, expiresAt: Date.now() + EPISODE_TTL_MS });
    return rows;
  });
  episodeRequests.set(key, request);
  try {
    return await request;
  } finally {
    episodeRequests.delete(key);
  }
}

export async function getCarateenEpisodeStream(
  provider: CarateenProvider,
  showId: number,
  episodeId: number,
): Promise<string> {
  const value =
    provider === "sp"
      ? await fetchEncrypted("/api/sp/episode/link", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ episodeId, userId: null }),
        })
      : await fetchEncrypted(
          `/api/episode?episodeId=${episodeId}&showId=${showId}`,
        );

  const body =
    value && typeof value === "object"
      ? (value as Record<string, unknown>)
      : {};
  if (provider === "sp" && body.success === false) {
    throw new Error("Carateen did not provide a stream for this episode");
  }
  const streamUrl = String(
    body.streamUrl || body.link || body.hlsUrl || body.url || "",
  );
  if (!isAllowedCarateenStreamUrl(streamUrl)) {
    throw new Error("Carateen returned an unsupported stream URL");
  }
  return streamUrl;
}

export function isAllowedCarateenStreamUrl(value: string): boolean {
  try {
    const url = new URL(value);
    return (
      url.protocol === "https:" &&
      (url.hostname === "pegasus.5387692.xyz" ||
        url.hostname.endsWith(".5387692.xyz"))
    );
  } catch {
    return false;
  }
}

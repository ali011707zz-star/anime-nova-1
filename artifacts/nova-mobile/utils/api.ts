import { secureFetch } from "./secureApi";
import { getBaseUrl } from "./baseUrl";
export { getBaseUrl };

export async function fetchRemoteConfig() {
  try {
    const res = await secureFetch(`${getBaseUrl()}/api/config`, {
      headers: { Accept: "application/json" },
    });
    if (!res.ok) {
      const body = await res.clone().json().catch(() => ({}));
      if (body?.officialDownloadRequired) {
        throw new Error("OFFICIAL_APP_REQUIRED");
      }
      throw new Error("config fetch failed");
    }
    return await res.json();
  } catch (error) {
    if (error instanceof Error && error.message === "OFFICIAL_APP_REQUIRED") {
      throw error;
    }
    throw new Error("config fetch failed");
  }
}

export type VideoSource = {
  url?: string;
  directUrl?: string;
  label?: string;
  quality?: string;
  type?: string;
  subtitles?: { label: string; src: string; kind?: string; language?: string }[];
  server?: string;
  qualityRank?: number;
  referer?: string;
};

export type RemoteConfig = {
  sources: Record<string, boolean>;
  announcements: { id: string; message: string; type: "info" | "warning" | "success"; link?: string }[];
  features: Record<string, boolean>;
  maintenanceMode?: boolean;
  maintenanceMessage?: string;
  version?: string;
};

export const DEFAULT_CONFIG: RemoteConfig = {
  sources: {
    // مصادر يابانية مترجمة (HI → DU → اولوية عالية)
    kawaii: true, animewitcher: true, hianime: true, dulo_anim: true,
    // مصادر سريعة (ياباني / إنجليزي)
    vidlink_anim: true, anineko: true, anikoto: true,
    vidfast: true, anikototv: true, animekai: true,
    // مصادر عربية
    shahiid: true, animelek: true, animedar: true,
    okanime: true, ristoanime: true, animeify: true,
    animeday: true, arabseed: true, anime4up2: true,
    mycima: true, topcinemaa: true, animephoenix: true,
    faselhd_db: true, animetime: true, stardima: true,
  },
  announcements: [],
  features: {
    comments: true,
    watchHistory: true,
    subscriptions: true,
    downloads: false,
  },
};

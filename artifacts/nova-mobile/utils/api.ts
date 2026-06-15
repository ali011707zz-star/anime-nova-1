import { secureFetch } from "./secureApi";
import { getBaseUrl } from "./baseUrl";
export { getBaseUrl };

export async function fetchRemoteConfig() {
  try {
    const res = await secureFetch(`${getBaseUrl()}/api/config`, {
      headers: { Accept: "application/json" },
    });
    if (!res.ok) throw new Error("config fetch failed");
    return await res.json();
  } catch {
    return null;
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
    shahiid: true,
    animelek: true,
    animedar: true,
    anikoto: true,
    anineko: true,
    videasy: true,
    vidlink: true,
    vyla: true,
    starcima: true,
  },
  announcements: [],
  features: {
    comments: true,
    watchHistory: true,
    subscriptions: true,
    downloads: false,
  },
};

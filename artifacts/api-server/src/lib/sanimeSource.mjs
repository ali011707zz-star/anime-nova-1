export const SANIME_API_PREFIX = "https://app.sanime.net/function/h10.php?page=";
export const SANIME_USER_AGENT = "IBRAHIMSEVEN";
export const SANIME_CDN_BASES = Object.freeze([
  "https://server.sanime.net/Video3",
]);

export function sanimeEpisodeVariants(id, episode) {
  const safeId = encodeURIComponent(String(id ?? "").trim());
  const ep = Number(episode);
  if (!safeId || !Number.isSafeInteger(ep) || ep < 1) return [];

  return SANIME_CDN_BASES.map(base => ({
    family: "Video3",
    hdUrl: `${base}/${safeId}/${ep}.mp4`,
    sdUrl: `${base}/${safeId}/${ep}SD.mp4`,
  }));
}

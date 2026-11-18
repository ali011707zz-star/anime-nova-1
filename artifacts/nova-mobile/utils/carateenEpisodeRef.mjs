export function parseCarateenEpisodeUrl(value) {
  if (typeof value !== "string") return null;
  const trimmed = value.trim();
  const slugIdMatch = /^carateen:\/\/(sd2|az)\/([a-z0-9_-]+)\/([a-z0-9_-]+)\/?$/i.exec(trimmed);
  if (slugIdMatch) {
    return {
      provider: slugIdMatch[1].toLowerCase(),
      showId: slugIdMatch[2],
      episodeId: slugIdMatch[3],
    };
  }
  const match = /^carateen:\/\/(sp|carateen)\/(\d+)\/(\d+)\/?$/i.exec(trimmed);
  if (!match) return null;
  return {
    provider: match[1].toLowerCase(),
    showId: match[2],
    episodeId: match[3],
  };
}

export function inferDubbedSourceFromKey(contentKey, episodeUrl = "") {
  const key = typeof contentKey === "string" ? contentKey.trim() : "";
  const parsedRef = parseCarateenEpisodeUrl(episodeUrl || "");
  if (key.startsWith("az:") || parsedRef?.provider === "az") {
    return {
      provider: "az",
      showId: key.startsWith("az:") ? key.slice(3) : parsedRef.showId,
      episodeId: parsedRef?.episodeId || "",
    };
  }
  if (key.startsWith("sd2:") || parsedRef?.provider === "sd2") {
    return {
      provider: "sd2",
      showId: key.startsWith("sd2:") ? key.slice(4) : parsedRef.showId,
      episodeId: parsedRef?.episodeId || "",
    };
  }
  if (key.startsWith("carateen:sp:") || key.startsWith("sp:") || parsedRef?.provider === "sp") {
    const showId = key.startsWith("carateen:sp:")
      ? key.slice("carateen:sp:".length)
      : key.startsWith("sp:")
        ? key.slice(3)
        : (parsedRef?.showId || "");
    return {
      provider: "sp",
      showId,
      episodeId: parsedRef?.episodeId || "",
    };
  }
  if (key.startsWith("carateen:carateen:") || key.startsWith("carateen:") || parsedRef?.provider === "carateen") {
    const showId = key.startsWith("carateen:carateen:")
      ? key.slice("carateen:carateen:".length)
      : key.startsWith("carateen:")
        ? key.slice("carateen:".length)
        : (parsedRef?.showId || "");
    return {
      provider: "carateen",
      showId,
      episodeId: parsedRef?.episodeId || "",
    };
  }
  return null;
}

export function resolveDubbedHistoryParams(item) {
  const episodeUrl = typeof item?.episodeUrl === "string" ? item.episodeUrl : "";
  const contentKey = typeof item?.contentKey === "string" ? item.contentKey : "";
  const inferred = inferDubbedSourceFromKey(contentKey, episodeUrl);
  const episodeId = (typeof item?.catalogEpisodeId === "string" && item.catalogEpisodeId) || inferred?.episodeId || "";
  const base = {
    epUrl: episodeUrl,
    series: contentKey || (inferred ? `${inferred.provider}:${inferred.showId}` : ""),
    title: item?.title || "",
    ep: String(item?.ep || 1),
    season: item?.seasonLabel || "الموسم 1",
    poster: item?.thumbnail || "",
    ...(item?.totalEps ? { totalEps: String(item.totalEps) } : {}),
  };
  if (!inferred) return base;
  if (inferred.provider === "az") {
    return {
      ...base,
      provider: "az",
      showId: inferred.showId,
      ...(episodeId ? { episodeId } : {}),
      ...(episodeUrl && /^https?:/i.test(episodeUrl) ? { watchUrl: episodeUrl } : {}),
    };
  }
  if (inferred.provider === "sd2") {
    return {
      ...base,
      provider: "sd2",
      showId: inferred.showId,
      slug: inferred.showId,
      ...(episodeId ? { episodeId } : {}),
      isMovie: (item?.catalogMediaType === "movie" || item?.seasonLabel === "الفيلم" || /\/movie-/i.test(episodeUrl)) ? "1" : "0",
    };
  }
  return {
    ...base,
    provider: inferred.provider,
    showId: inferred.showId,
    ...(episodeId ? { episodeId } : {}),
  };
}

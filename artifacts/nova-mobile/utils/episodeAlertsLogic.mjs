export const ALLOWED_ALERT_KINDS = new Set([
  "anime",
  "dubbed-anime",
  "dubbed",
  "aw-dubbed",
  "stardima",
]);

export function normalizeAlertKind(kind) {
  const k = String(kind || "").trim().toLowerCase();
  return ALLOWED_ALERT_KINDS.has(k) ? k : "anime";
}

export function normalizeAlertContentKey(contentKind, contentKey) {
  const kind = normalizeAlertKind(contentKind);
  const raw = String(contentKey || "").trim();
  if (!raw) return "";
  if (kind === "anime") {
    const digits = raw.replace(/[^0-9]/g, "");
    return digits || raw.toLowerCase();
  }
  return raw.toLowerCase();
}

export function makeAlertKey(contentKind, contentKey) {
  const kind = normalizeAlertKind(contentKind);
  const key = normalizeAlertContentKey(kind, contentKey);
  if (!key) return "";
  return `${kind}::${key}`;
}

export function normalizeAlertTitle(raw) {
  if (typeof raw !== "string") return "";
  return raw
    .normalize("NFKC")
    .replace(/[\u064B-\u065F\u0670\u0640]/g, "")
    .replace(/[أإآٱ]/g, "ا")
    .replace(/ة/g, "ه")
    .replace(/ى/g, "ي")
    .toLowerCase()
    .replace(/[^a-z0-9\u0621-\u064A]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function stripSd2Prefix(value) {
  return String(value || "").trim().toLowerCase().replace(/^sd2[:_-]+/, "");
}

export function matchesAlertRecord(alert, event) {
  if (!alert || !event) return false;
  const alertKind = normalizeAlertKind(alert.content_kind ?? alert.contentKind);
  const eventKind = normalizeAlertKind(event.contentKind);

  const alertAnimeId = Number(alert.anime_id ?? alert.animeId ?? 0);
  const eventAnimeId = Number(event.animeId ?? 0);
  if (alertKind === "anime" && eventKind === "anime" && alertAnimeId > 0 && eventAnimeId > 0) {
    if (alertAnimeId === eventAnimeId) return true;
  }

  const alertKey = normalizeAlertContentKey(alertKind, alert.content_key ?? alert.contentKey);
  const eventKey = normalizeAlertContentKey(eventKind, event.contentKey);
  if (alertKind === eventKind && alertKey && eventKey && alertKey === eventKey) {
    return true;
  }

  // Handle sd2 slug matching across "sd2:slug" and bare "slug"
  if (
    (alertKind === "dubbed" || alertKind === "stardima") &&
    (eventKind === "dubbed" || eventKind === "stardima")
  ) {
    const aSlug = stripSd2Prefix(alertKey);
    const eSlug = stripSd2Prefix(eventKey);
    if (aSlug && eSlug && aSlug === eSlug) return true;
  }

  // Title fallback (same family: anime vs dubbed/cartoon)
  const sameFamily = (alertKind === "anime") === (eventKind === "anime");
  if (!sameFamily) return false;

  const alertNormTitles = new Set(
    [
      alert.normalized_title ?? alert.normalizedTitle,
      normalizeAlertTitle(alert.title_ar ?? alert.titleAr ?? ""),
      normalizeAlertTitle(alert.title ?? ""),
    ].filter((t) => typeof t === "string" && t.length >= 4),
  );
  if (!alertNormTitles.size) return false;

  const eventCandidates = Array.isArray(event.titles)
    ? event.titles
    : [event.title, event.titleAr, event.english];
  for (const candidate of eventCandidates) {
    const norm = normalizeAlertTitle(String(candidate || ""));
    if (norm.length >= 4 && alertNormTitles.has(norm)) {
      return true;
    }
  }
  return false;
}

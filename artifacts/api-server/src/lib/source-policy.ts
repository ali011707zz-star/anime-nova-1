type SourceMetadata = Record<string, unknown>;

const DUB_WORDS = /\b(?:dub|dubbed|dual[\s._-]*audio|english[\s._-]*audio|hindi[\s._-]*audio|spanish[\s._-]*audio)\b/i;
const HARD_SUB_WORDS = /\b(?:hard[\s._-]*sub(?:bed)?|hardsub|hardcoded|burned[\s._-]*in|burned[\s._-]*sub)\b/i;
const LANGUAGE_TAG = "(?:ita|italian|eng|english|spa|spanish|por|portuguese|ger|german|fra|french|hin|hindi|ara|arabic)";

/**
 * Reject only evidence that the media itself is not original Japanese or has
 * subtitles burned into the picture. A plain `sub` route is allowed because
 * providers commonly use it for original audio with an external subtitle
 * track, which Nova does not bake into the video.
 */
export function isNonOriginalVideo(metadata: SourceMetadata, url: string): boolean {
  const boolFlags = [
    "isDub",
    "dub",
    "isDubb",
    "hardsub",
    "hardSub",
    "burnedSub",
    "burnedIn",
    "hardcodedSub",
  ];
  if (boolFlags.some(key => metadata[key] === true)) return true;

  const audioText = [
    metadata.audio,
    metadata.language,
    metadata.lang,
    metadata.audioLanguage,
  ]
    .filter(value => typeof value === "string")
    .join(" ");
  if (DUB_WORDS.test(audioText)) return true;

  const descriptiveText = [
    metadata.type,
    metadata.server,
    metadata.quality,
    metadata.name,
    metadata.label,
  ]
    .filter(value => typeof value === "string")
    .join(" ");
  if (DUB_WORDS.test(descriptiveText) || HARD_SUB_WORDS.test(descriptiveText)) return true;

  const lowerUrl = url.toLowerCase();
  if (DUB_WORDS.test(lowerUrl) || HARD_SUB_WORDS.test(lowerUrl)) return true;

  // Handles filenames such as OnePieceSUBITA.mp4 and SUB_ITA paths without
  // rejecting the normal `/sub/` provider route.
  const subtitleLanguage = new RegExp(
    `(?:sub(?:bed|titled)?|hard.?sub)[._-]?${LANGUAGE_TAG}(?=$|[._/?#&=-])`,
    "i",
  );
  const languageSubtitle = new RegExp(
    `${LANGUAGE_TAG}[._-]?(?:sub|subbed|subtitled)(?=$|[._/?#&=-])`,
    "i",
  );
  return subtitleLanguage.test(lowerUrl) || languageSubtitle.test(lowerUrl);
}

export function isDubbedSearchVariant(value: string): boolean {
  const text = value.toLowerCase();
  if (DUB_WORDS.test(text)) return true;
  const subtitleLanguage = new RegExp(
    `(?:sub(?:bed|titled)?|hard.?sub)[._ -]?${LANGUAGE_TAG}`,
    "i",
  );
  return subtitleLanguage.test(text);
}
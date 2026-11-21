function isAudioMediaLine(line) {
  return /^#EXT-X-MEDIA:/i.test(line) && /TYPE=AUDIO/i.test(line);
}

export function isEnglishAudioTrackLine(line) {
  if (!isAudioMediaLine(line)) return false;
  const langMatch = /LANGUAGE="([^"]+)"/i.exec(line);
  const nameMatch = /NAME="([^"]+)"/i.exec(line);
  const lang = (langMatch?.[1] || "").trim().toLowerCase();
  const name = (nameMatch?.[1] || "").trim().toLowerCase();
  if (lang === "en" || lang === "eng" || lang.startsWith("en-")) return true;
  if (/\b(english|eng|dub|dubbed)\b/i.test(name)) return true;
  return false;
}

export function hasEnglishHlsAudio(manifest) {
  if (typeof manifest !== "string" || !manifest.includes("#EXT-X-MEDIA:")) return false;
  return manifest.split(/\r?\n/).some((line) => isEnglishAudioTrackLine(line.trim()));
}

function setMediaAttr(line, attr, value) {
  const re = new RegExp(`(\\b${attr}=)(YES|NO)`, "i");
  if (re.test(line)) {
    return line.replace(re, `$1${value}`);
  }
  const uriIdx = line.indexOf(",URI=");
  if (uriIdx !== -1) {
    return `${line.slice(0, uriIdx)},${attr}=${value}${line.slice(uriIdx)}`;
  }
  return `${line},${attr}=${value}`;
}

/**
 * Rewrites a multi-audio HLS master playlist so players (ExoPlayer, AVPlayer,
 * Android TV, browsers) default immediately to the requested English dub track.
 */
export function selectHlsPreferredAudio(manifest, preferredAudio) {
  const pref = String(preferredAudio || "").trim().toLowerCase();
  if (!pref || (pref !== "eng" && pref !== "en" && pref !== "dub")) {
    return manifest;
  }
  if (typeof manifest !== "string" || !manifest.includes("#EXT-X-MEDIA:")) {
    return manifest;
  }

  const lines = manifest.split("\n");
  const audioIndices = [];
  let hasEnglish = false;

  for (let i = 0; i < lines.length; i++) {
    const trimmed = lines[i].trim();
    if (isAudioMediaLine(trimmed)) {
      audioIndices.push(i);
      if (isEnglishAudioTrackLine(trimmed)) hasEnglish = true;
    }
  }

  if (!hasEnglish || audioIndices.length === 0) {
    return manifest;
  }

  const englishLines = [];
  const otherAudioLines = [];
  let firstEnglishAssigned = false;

  for (const idx of audioIndices) {
    const raw = lines[idx];
    const trimmed = raw.trim();
    const isEng = isEnglishAudioTrackLine(trimmed);
    if (isEng) {
      let updated = setMediaAttr(raw, "DEFAULT", firstEnglishAssigned ? "NO" : "YES");
      updated = setMediaAttr(updated, "AUTOSELECT", "YES");
      firstEnglishAssigned = true;
      englishLines.push(updated);
    } else {
      let updated = setMediaAttr(raw, "DEFAULT", "NO");
      updated = setMediaAttr(updated, "AUTOSELECT", "NO");
      otherAudioLines.push(updated);
    }
  }

  const reorderedAudio = [...englishLines, ...otherAudioLines];
  const out = [...lines];
  for (let k = 0; k < audioIndices.length; k++) {
    out[audioIndices[k]] = reorderedAudio[k];
  }
  return out.join("\n");
}

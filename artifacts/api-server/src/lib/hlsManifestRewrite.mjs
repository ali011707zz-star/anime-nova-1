function absoluteUrl(raw, baseUrl) {
  try { return new URL(raw).href; } catch {}
  try { return new URL(raw, baseUrl).href; } catch { return raw; }
}

export function rewriteHlsManifest(manifest, baseUrl, {
  rewriteSegment,
  rewritePlaylist,
}) {
  const lines = String(manifest).split("\n");
  const output = [];
  let nextIsPlaylist = false;

  for (const line of lines) {
    const trimmed = line.trim();
    if (!trimmed) {
      output.push(line);
      nextIsPlaylist = false;
      continue;
    }

    if (trimmed.startsWith("#EXT-X-STREAM-INF") || trimmed.startsWith("#EXT-X-I-FRAME-STREAM-INF")) {
      nextIsPlaylist = true;
      output.push(line);
      continue;
    }

    if (
      (trimmed.startsWith("#EXT-X-KEY") ||
        trimmed.startsWith("#EXT-X-MEDIA") ||
        trimmed.startsWith("#EXT-X-MAP")) &&
      trimmed.includes('URI="')
    ) {
      output.push(trimmed.replace(/URI="([^"]+)"/g, (_match, uri) => {
        const absolute = absoluteUrl(uri, baseUrl);
        const playlist = trimmed.startsWith("#EXT-X-MEDIA") && /\.m3u8(?:[?#]|$)/i.test(uri);
        return `URI="${playlist ? rewritePlaylist(absolute) : rewriteSegment(absolute)}"`;
      }));
      continue;
    }

    if (trimmed.startsWith("#")) {
      output.push(line);
      continue;
    }

    const absolute = absoluteUrl(trimmed, baseUrl);
    if (nextIsPlaylist || /\.m3u8(?:[?#]|$)/i.test(trimmed)) {
      output.push(rewritePlaylist(absolute));
    } else {
      output.push(rewriteSegment(absolute));
    }
    nextIsPlaylist = false;
  }

  return output.join("\n");
}

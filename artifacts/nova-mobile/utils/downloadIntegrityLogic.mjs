export const MIN_VALID_VIDEO_BYTES = 128 * 1024; // 128 KB

function asciiSlice(bytes, start, end) {
  let out = "";
  const lim = Math.min(bytes.length, end);
  for (let i = start; i < lim; i += 1) {
    out += String.fromCharCode(bytes[i]);
  }
  return out;
}

export function looksLikeErrorTextPayload(bytes) {
  if (!bytes || bytes.length < 4) return false;
  const head = asciiSlice(bytes, 0, 96).trimStart().toLowerCase();
  if (!head) return false;
  return (
    head.startsWith("<!doctype") ||
    head.startsWith("<html") ||
    head.startsWith("<head") ||
    head.startsWith("<body") ||
    head.startsWith("<?xml") ||
    head.startsWith('{"error"') ||
    head.startsWith('{"message"') ||
    head.startsWith("403 forbidden") ||
    head.startsWith("404 not found") ||
    head.startsWith("access denied") ||
    head.startsWith("#extm3u")
  );
}

export function isIsoBmffMp4Header(bytes) {
  if (!bytes || bytes.length < 12) return false;
  const box = asciiSlice(bytes, 4, 8);
  return (
    box === "ftyp" ||
    box === "styp" ||
    box === "moov" ||
    box === "mdat" ||
    box === "wide" ||
    box === "free" ||
    box === "moof"
  );
}

export function isMpegTsBuffer(bytes) {
  if (!bytes || bytes.length < 188) return false;
  if (bytes[0] !== 0x47) return false;
  if (bytes.length >= 189 && bytes[188] !== 0x47) return false;
  return true;
}

export function isMatroskaHeader(bytes) {
  return Boolean(
    bytes &&
      bytes.length >= 4 &&
      bytes[0] === 0x1a &&
      bytes[1] === 0x45 &&
      bytes[2] === 0xdf &&
      bytes[3] === 0xa3,
  );
}

/**
 * Many anime/dubbed HLS CDNs disguise MPEG-TS segments by prepending a fake PNG,
 * GIF, or JPEG header before the first 0x47 sync byte. Strip that prefix when a
 * valid 188-byte MPEG-TS packet pair (0x47 at i and i+188) is found within the
 * first 512 bytes so ExoPlayer/Media3 can decode the concatenated file cleanly.
 */
export function stripFakeImagePrefixFromTsSegment(bytes) {
  if (!bytes || bytes.length < 376) return bytes;
  if (bytes[0] === 0x47 && bytes[188] === 0x47) return bytes;
  if (isIsoBmffMp4Header(bytes)) return bytes;

  const limit = Math.min(512, bytes.length - 189);
  for (let i = 1; i <= limit; i += 1) {
    if (bytes[i] === 0x47 && bytes[i + 188] === 0x47) {
      if (i + 376 >= bytes.length || bytes[i + 376] === 0x47) {
        return bytes.subarray(i);
      }
    }
  }
  return bytes;
}

export function detectHlsContainerExtension(firstBytes, hasInitSegment = false) {
  if (hasInitSegment) return ".mp4";
  if (firstBytes && isIsoBmffMp4Header(firstBytes)) return ".mp4";
  return ".ts";
}

export function replaceVideoExtension(filePath, targetExt) {
  const cleanExt = targetExt.startsWith(".") ? targetExt : `.${targetExt}`;
  if (/\.(?:mp4|ts|m4v|mkv|webm)$/i.test(filePath)) {
    return filePath.replace(/\.(?:mp4|ts|m4v|mkv|webm)$/i, cleanExt);
  }
  return `${filePath}${cleanExt}`;
}

/**
 * Validates that a downloaded media file on disk is a real, non-truncated video
 * before marking it 100% completed in "تنزيلاتي".
 */
export function validateCompletedMediaFile({
  fileSize,
  expectedTotalBytes = 0,
  headBytes = null,
}) {
  if (!Number.isFinite(fileSize) || fileSize < MIN_VALID_VIDEO_BYTES) {
    return {
      ok: false,
      reason: "too_small",
      messageAr: "تعذر حفظ الحلقة: الملف المحمّل فارغ أو غير مكتمل.",
    };
  }
  if (expectedTotalBytes > 0 && fileSize < Math.floor(expectedTotalBytes * 0.90)) {
    return {
      ok: false,
      reason: "truncated",
      messageAr: "انقطع التنزيل قبل اكتمال حجم الحلقة الفعلي.",
    };
  }
  if (headBytes && headBytes.length >= 12) {
    if (looksLikeErrorTextPayload(headBytes)) {
      return {
        ok: false,
        reason: "invalid_text_payload",
        messageAr: "أعاد السيرفر صفحة خطأ بدلاً من ملف الفيديو. جرّب سيرفراً آخر.",
      };
    }
    const knownVideo =
      isIsoBmffMp4Header(headBytes) ||
      isMpegTsBuffer(headBytes) ||
      isMatroskaHeader(headBytes) ||
      // ID3 tag sometimes precedes MPEG-TS audio/video packets
      asciiSlice(headBytes, 0, 3) === "ID3";
    if (!knownVideo) {
      return {
        ok: false,
        reason: "unknown_container",
        messageAr: "صيغة الملف المحمّل غير صالحة للتشغيل. جرّب سيرفراً آخر.",
      };
    }
  }
  return { ok: true, reason: "ok", messageAr: "" };
}

/**
 * Reconciles per-server download button states WITHOUT ever blindly promoting
 * a disappearing "downloading" entry to "done". Only items verified in
 * `completedKeys` may transition to "done".
 */
export function reconcileDownloadButtonStates({
  prevStates,
  activeStatusByKey,
  completedKeys,
  allKeys,
}) {
  const next = { ...(prevStates || {}) };
  const keySet = new Set([
    ...Object.keys(next),
    ...(Array.isArray(allKeys) ? allKeys : []),
    ...Object.keys(activeStatusByKey || {}),
    ...(completedKeys ? Array.from(completedKeys) : []),
  ]);

  for (const key of keySet) {
    const activeStatus = activeStatusByKey?.[key];
    if (activeStatus) {
      next[key] = activeStatus === "error" ? "error" : "downloading";
    } else if (completedKeys && completedKeys.has(key)) {
      next[key] = "done";
    } else if (next[key] === "downloading" || next[key] === "done") {
      next[key] = "idle";
    }
  }
  return next;
}

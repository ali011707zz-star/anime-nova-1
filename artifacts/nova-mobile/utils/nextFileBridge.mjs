import { File } from "expo-file-system/next";

export function openSequentialPartWriter(partUri) {
  if (!File) return null;
  const outFile = new File(partUri);
  if (outFile.exists) outFile.delete();
  outFile.create();
  const handle = outFile.open();
  return {
    writeBytes: (bytes) => handle.writeBytes(bytes),
    close: () => handle.close(),
  };
}

export function readFileHeadBytes(fileUri, maxBytes = 512) {
  if (!File || !fileUri) return null;
  let handle = null;
  try {
    const file = new File(fileUri);
    if (!file.exists) return null;
    handle = file.open();
    if (typeof handle.readBytes === "function") {
      return handle.readBytes(maxBytes);
    }
    return null;
  } catch {
    return null;
  } finally {
    if (handle) {
      try { handle.close(); } catch {}
    }
  }
}

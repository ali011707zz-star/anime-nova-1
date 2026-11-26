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

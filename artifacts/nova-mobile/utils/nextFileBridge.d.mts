export interface SequentialPartWriter {
  writeBytes(bytes: Uint8Array): void;
  close(): void;
}

export function openSequentialPartWriter(partUri: string): SequentialPartWriter | null;

export interface SequentialPartWriter {
  writeBytes(bytes: Uint8Array): void;
  close(): void;
}

export declare function openSequentialPartWriter(partUri: string): SequentialPartWriter | null;
export declare function readFileHeadBytes(fileUri: string, maxBytes?: number): Uint8Array | null;

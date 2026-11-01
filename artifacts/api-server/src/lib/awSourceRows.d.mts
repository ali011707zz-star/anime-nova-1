export type AwSourceRow = {
  server: string;
  quality: string;
  link: string;
};

export function mergeAwSourceRows(
  ...groups: Array<readonly AwSourceRow[]>
): AwSourceRow[];

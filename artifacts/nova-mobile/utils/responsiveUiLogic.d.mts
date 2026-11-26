export type DeviceClass = "phone" | "tablet" | "tv";

export interface PrimaryCtaMetrics {
  device: DeviceClass;
  minHeight: number;
  paddingVertical: number;
  paddingHorizontal: number;
  borderRadius: number;
  iconBoxSize: number;
  iconBoxRadius: number;
  iconSize: number;
  titleSize: number;
  titleLineHeight: number;
  subSize: number;
  subLineHeight: number;
  pillPadH: number;
  pillPadV: number;
  pillRadius: number;
  pillTextSize: number;
  gap: number;
  maxWidth: number | undefined;
}

export function getDeviceClass(opts?: { width?: number; tvMode?: boolean }): DeviceClass;
export function getPrimaryCtaMetrics(opts?: { width?: number; tvMode?: boolean }): PrimaryCtaMetrics;

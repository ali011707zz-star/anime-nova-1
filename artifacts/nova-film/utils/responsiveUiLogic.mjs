/**
 * Responsive sizing helpers for primary CTA and action buttons across
 * Phone (<768px), Tablet/iPad (>=768px), and TV (tvMode).
 */

export function getDeviceClass({ width = 390, tvMode = false } = {}) {
  if (tvMode) return "tv";
  if (Number(width) >= 768) return "tablet";
  return "phone";
}

export function getPrimaryCtaMetrics({ width = 390, tvMode = false } = {}) {
  const device = getDeviceClass({ width, tvMode });
  if (device === "tv") {
    return {
      device,
      minHeight: 62,
      paddingVertical: 12,
      paddingHorizontal: 20,
      borderRadius: 16,
      iconBoxSize: 42,
      iconBoxRadius: 12,
      iconSize: 20,
      titleSize: 18,
      titleLineHeight: 24,
      subSize: 12.5,
      subLineHeight: 18,
      pillPadH: 14,
      pillPadV: 7,
      pillRadius: 12,
      pillTextSize: 13,
      gap: 14,
      maxWidth: undefined,
    };
  }
  if (device === "tablet") {
    return {
      device,
      minHeight: 50,
      paddingVertical: 8,
      paddingHorizontal: 14,
      borderRadius: 14,
      iconBoxSize: 34,
      iconBoxRadius: 10,
      iconSize: 16,
      titleSize: 14.5,
      titleLineHeight: 20,
      subSize: 10.5,
      subLineHeight: 15,
      pillPadH: 11,
      pillPadV: 5,
      pillRadius: 10,
      pillTextSize: 11,
      gap: 10,
      maxWidth: 440,
    };
  }
  // Phone: sleek, compact, proportional to mobile viewports
  return {
    device,
    minHeight: 46,
    paddingVertical: 7,
    paddingHorizontal: 12,
    borderRadius: 13,
    iconBoxSize: 30,
    iconBoxRadius: 9,
    iconSize: 15,
    titleSize: 13.5,
    titleLineHeight: 19,
    subSize: 10,
    subLineHeight: 14,
    pillPadH: 9,
    pillPadV: 4,
    pillRadius: 9,
    pillTextSize: 10,
    gap: 9,
    maxWidth: undefined,
  };
}

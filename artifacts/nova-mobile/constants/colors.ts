// ── Palette type ──────────────────────────────────────────────────────────────
type Palette = {
  text: string;
  tint: string;
  background: string;
  foreground: string;
  card: string;
  cardForeground: string;
  primary: string;
  primaryForeground: string;
  secondary: string;
  secondaryForeground: string;
  muted: string;
  mutedForeground: string;
  accent: string;
  accentForeground: string;
  destructive: string;
  destructiveForeground: string;
  border: string;
  input: string;
  violet: string;
  violetDark: string;
  violetDeep: string;
  surface: string;
};

// ── الثيمات ───────────────────────────────────────────────────────────────────

/** dark — الثيم الافتراضي (بنفسجي داكن) */
const dark: Palette = {
  text:                "#E8E8F0",
  tint:                "#8B5CF6",
  background:          "#09090B",
  foreground:          "#E8E8F0",
  card:                "#111116",
  cardForeground:      "#E8E8F0",
  primary:             "#8B5CF6",
  primaryForeground:   "#ffffff",
  secondary:           "#1C1C22",
  secondaryForeground: "#E8E8F0",
  muted:               "#1C1C22",
  mutedForeground:     "#71717A",
  accent:              "#8B5CF6",
  accentForeground:    "#ffffff",
  destructive:         "#ef4444",
  destructiveForeground: "#ffffff",
  border:              "rgba(255,255,255,0.07)",
  input:               "rgba(255,255,255,0.08)",
  violet:              "#8B5CF6",
  violetDark:          "#6D28D9",
  violetDeep:          "#4C1D95",
  surface:             "#0E0E14",
};

/** amoled — أسود نقي لتوفير البطارية */
const amoled: Palette = {
  text:                "#E8E8F0",
  tint:                "#8B5CF6",
  background:          "#000000",
  foreground:          "#E8E8F0",
  card:                "#080808",
  cardForeground:      "#E8E8F0",
  primary:             "#8B5CF6",
  primaryForeground:   "#ffffff",
  secondary:           "#101010",
  secondaryForeground: "#E8E8F0",
  muted:               "#101010",
  mutedForeground:     "#71717A",
  accent:              "#8B5CF6",
  accentForeground:    "#ffffff",
  destructive:         "#ef4444",
  destructiveForeground: "#ffffff",
  border:              "rgba(255,255,255,0.06)",
  input:               "rgba(255,255,255,0.07)",
  violet:              "#8B5CF6",
  violetDark:          "#6D28D9",
  violetDeep:          "#4C1D95",
  surface:             "#050505",
};

/** violet — توهّج بنفسجي */
const violet: Palette = {
  text:                "#EDE9FF",
  tint:                "#A78BFA",
  background:          "#0A0614",
  foreground:          "#EDE9FF",
  card:                "#120D20",
  cardForeground:      "#EDE9FF",
  primary:             "#A78BFA",
  primaryForeground:   "#ffffff",
  secondary:           "#1A1030",
  secondaryForeground: "#EDE9FF",
  muted:               "#1A1030",
  mutedForeground:     "#7C6FA0",
  accent:              "#A78BFA",
  accentForeground:    "#ffffff",
  destructive:         "#ef4444",
  destructiveForeground: "#ffffff",
  border:              "rgba(167,139,250,0.12)",
  input:               "rgba(167,139,250,0.10)",
  violet:              "#A78BFA",
  violetDark:          "#7C3AED",
  violetDeep:          "#4C1D95",
  surface:             "#0D0918",
};

/** blue — توهّج أزرق */
const blue: Palette = {
  text:                "#E0EEFF",
  tint:                "#3B82F6",
  background:          "#030712",
  foreground:          "#E0EEFF",
  card:                "#0A1020",
  cardForeground:      "#E0EEFF",
  primary:             "#3B82F6",
  primaryForeground:   "#ffffff",
  secondary:           "#0F172A",
  secondaryForeground: "#E0EEFF",
  muted:               "#0F172A",
  mutedForeground:     "#64748B",
  accent:              "#3B82F6",
  accentForeground:    "#ffffff",
  destructive:         "#ef4444",
  destructiveForeground: "#ffffff",
  border:              "rgba(59,130,246,0.12)",
  input:               "rgba(59,130,246,0.10)",
  violet:              "#3B82F6",
  violetDark:          "#1D4ED8",
  violetDeep:          "#1E3A8A",
  surface:             "#060D1C",
};

/** pink — توهّج وردي */
const pink: Palette = {
  text:                "#FFEDF6",
  tint:                "#EC4899",
  background:          "#120614",
  foreground:          "#FFEDF6",
  card:                "#1C0A20",
  cardForeground:      "#FFEDF6",
  primary:             "#EC4899",
  primaryForeground:   "#ffffff",
  secondary:           "#280A30",
  secondaryForeground: "#FFEDF6",
  muted:               "#280A30",
  mutedForeground:     "#9D4E7A",
  accent:              "#EC4899",
  accentForeground:    "#ffffff",
  destructive:         "#ef4444",
  destructiveForeground: "#ffffff",
  border:              "rgba(236,72,153,0.12)",
  input:               "rgba(236,72,153,0.10)",
  violet:              "#EC4899",
  violetDark:          "#BE185D",
  violetDeep:          "#831843",
  surface:             "#0F0414",
};

const colors = {
  light: dark, // backward-compat alias → الثيم الافتراضي
  dark,
  amoled,
  violet,
  blue,
  pink,
  radius: 16,
};

export type ThemePalette = Palette;
export default colors;

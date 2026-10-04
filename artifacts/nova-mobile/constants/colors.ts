export type Theme = "white" | "black";

export type Palette = {
  background: string;
  surface: string;
  surfaceElevated: string;
  card: string;
  textPrimary: string;
  textSecondary: string;
  textMuted: string;
  button: string;
  buttonText: string;
  accent: string;
  border: string;
  input: string;
  destructive: string;
  destructiveForeground: string;
  success: string;
  overlay: string;
  playerControl: string;
  playerControlBorder: string;
  playerControlIcon: string;
  playerText: string;
  playerSecondaryText: string;
  playerTopGradient: [string, string];
  playerBottomGradient: [string, string, string];
  playerTrack: string;
  playerBuffer: string;
  pressFeedback: string;
  accentSurface: string;
  accentBorder: string;
  destructiveSurface: string;
  destructiveBorder: string;

  // Compatibility aliases for screens that are being moved to semantic tokens.
  text: string;
  tint: string;
  foreground: string;
  cardForeground: string;
  primary: string;
  primaryForeground: string;
  secondary: string;
  secondaryForeground: string;
  muted: string;
  mutedForeground: string;
  accentForeground: string;
  violet: string;
  violetDark: string;
  violetDeep: string;
}

const white: Palette = {
  background: "#EEECE6",
  surface: "#F5F3ED",
  surfaceElevated: "#E8E5DD",
  card: "#F7F5F0",
  textPrimary: "#202127",
  textSecondary: "#4D535E",
  textMuted: "#666E79",
  button: "#6047B4",
  buttonText: "#FFFFFF",
  accent: "#674DB7",
  border: "#ABA79D",
  input: "#E8E6E0",
  destructive: "#C62828",
  destructiveForeground: "#FFFFFF",
  success: "#18794E",
  overlay: "rgba(17,19,23,0.45)",
  playerControl: "rgba(255,255,255,0.92)",
  playerControlBorder: "rgba(20,22,26,0.16)",
  playerControlIcon: "#17191F",
  // Player chrome sits over changing video frames, so its text stays white in
  // both app themes rather than inheriting the light page's dark text color.
  playerText: "#FFFFFF",
  playerSecondaryText: "rgba(255,255,255,0.90)",
  // Keep any edge shading neutral and identical across themes. Theme changes
  // must not recolor or brighten the video itself.
  playerTopGradient: ["rgba(0,0,0,0.24)", "rgba(0,0,0,0)"],
  playerBottomGradient: ["rgba(0,0,0,0)", "rgba(0,0,0,0.28)", "rgba(0,0,0,0.48)"],
  playerTrack: "rgba(255,255,255,0.42)",
  playerBuffer: "rgba(255,255,255,0.70)",
  pressFeedback: "rgba(42,35,62,0.08)",
  accentSurface: "#ECE7F5",
  accentBorder: "#A895D0",
  destructiveSurface: "#F8E9E7",
  destructiveBorder: "#EBCBC6",

  text: "#17191F",
  tint: "#343943",
  foreground: "#17191F",
  cardForeground: "#17191F",
  primary: "#6047B4",
  primaryForeground: "#FFFFFF",
  secondary: "#E8E6E0",
  secondaryForeground: "#17191F",
  muted: "#E8E6E0",
  mutedForeground: "#666E79",
  accentForeground: "#FFFFFF",
  violet: "#674DB7",
  violetDark: "#52399E",
  violetDeep: "#38266F",
};

const black: Palette = {
  background: "#090A0C",
  surface: "#111317",
  surfaceElevated: "#1A1D23",
  card: "#14171C",
  textPrimary: "#F3F4F6",
  textSecondary: "#B8BDC7",
  textMuted: "#9299A5",
  button: "#7654C8",
  buttonText: "#FFFFFF",
  accent: "#A78BFA",
  border: "rgba(255,255,255,0.12)",
  input: "rgba(255,255,255,0.07)",
  destructive: "#EF5350",
  destructiveForeground: "#FFFFFF",
  success: "#4ADE80",
  overlay: "rgba(0,0,0,0.58)",
  playerControl: "rgba(25,27,31,0.88)",
  playerControlBorder: "rgba(255,255,255,0.18)",
  playerControlIcon: "#F3F4F6",
  playerText: "#F3F4F6",
  playerSecondaryText: "rgba(255,255,255,0.70)",
  playerTopGradient: ["rgba(0,0,0,0.24)", "rgba(0,0,0,0)"],
  playerBottomGradient: ["rgba(0,0,0,0)", "rgba(0,0,0,0.28)", "rgba(0,0,0,0.48)"],
  playerTrack: "rgba(255,255,255,0.42)",
  playerBuffer: "rgba(255,255,255,0.70)",
  pressFeedback: "rgba(255,255,255,0.08)",
  accentSurface: "rgba(139,92,246,0.14)",
  accentBorder: "rgba(167,139,250,0.28)",
  destructiveSurface: "rgba(239,83,80,0.12)",
  destructiveBorder: "rgba(239,83,80,0.28)",

  text: "#F3F4F6",
  tint: "#D5D8DE",
  foreground: "#F3F4F6",
  cardForeground: "#F3F4F6",
  primary: "#7654C8",
  primaryForeground: "#FFFFFF",
  secondary: "#1A1D23",
  secondaryForeground: "#F3F4F6",
  muted: "#1A1D23",
  mutedForeground: "#9299A5",
  accentForeground: "#21183B",
  violet: "#A78BFA",
  violetDark: "#8B6FE0",
  violetDeep: "#6047A8",
};

const colors = { white, black, radius: 16 };

export type ThemePalette = Palette;
export default colors;
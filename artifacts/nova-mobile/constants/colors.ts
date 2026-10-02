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
  background: "#F3F2EE",
  surface: "#FAF9F6",
  surfaceElevated: "#EFEEE9",
  card: "#FCFBF8",
  textPrimary: "#202127",
  textSecondary: "#454A54",
  textMuted: "#626A76",
  button: "#202329",
  buttonText: "#FFFFFF",
  accent: "#7654C8",
  border: "#DFDDD7",
  input: "#F0EFEA",
  destructive: "#C62828",
  destructiveForeground: "#FFFFFF",
  success: "#18794E",
  overlay: "rgba(17,19,23,0.45)",
  playerControl: "rgba(255,255,255,0.92)",
  playerControlBorder: "rgba(20,22,26,0.16)",
  playerControlIcon: "#17191F",
  playerText: "#17191F",
  playerSecondaryText: "#4D535E",
  playerTopGradient: ["rgba(255,255,255,0.94)", "rgba(255,255,255,0)"],
  playerBottomGradient: ["rgba(255,255,255,0)", "rgba(255,255,255,0.66)", "rgba(255,255,255,0.94)"],
  playerTrack: "rgba(20,22,26,0.22)",
  playerBuffer: "rgba(20,22,26,0.48)",

  text: "#17191F",
  tint: "#343943",
  foreground: "#17191F",
  cardForeground: "#17191F",
  primary: "#202329",
  primaryForeground: "#FFFFFF",
  secondary: "#F7F8FA",
  secondaryForeground: "#17191F",
  muted: "#F0F2F5",
  mutedForeground: "#747B87",
  accentForeground: "#FFFFFF",
  violet: "#7654C8",
  violetDark: "#5E40AC",
  violetDeep: "#3D2A78",
};

const black: Palette = {
  background: "#090A0C",
  surface: "#111317",
  surfaceElevated: "#191C21",
  card: "#14171B",
  textPrimary: "#F3F4F6",
  textSecondary: "#B7BBC4",
  textMuted: "#858B96",
  button: "#F0F1F3",
  buttonText: "#17191F",
  accent: "#D5D8DE",
  border: "rgba(255,255,255,0.10)",
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
  playerTopGradient: ["rgba(0,0,0,0.82)", "rgba(0,0,0,0)"],
  playerBottomGradient: ["rgba(0,0,0,0)", "rgba(0,0,0,0.60)", "rgba(0,0,0,0.96)"],
  playerTrack: "rgba(255,255,255,0.24)",
  playerBuffer: "rgba(255,255,255,0.54)",

  text: "#F3F4F6",
  tint: "#D5D8DE",
  foreground: "#F3F4F6",
  cardForeground: "#F3F4F6",
  primary: "#F0F1F3",
  primaryForeground: "#17191F",
  secondary: "#191C21",
  secondaryForeground: "#F3F4F6",
  muted: "#191C21",
  mutedForeground: "#858B96",
  accentForeground: "#17191F",
  violet: "#D5D8DE",
  violetDark: "#AEB3BC",
  violetDeep: "#777D87",
};

const colors = { white, black, radius: 16 };

export type ThemePalette = Palette;
export default colors;
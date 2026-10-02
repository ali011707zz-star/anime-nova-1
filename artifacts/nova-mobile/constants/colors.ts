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
  background: "#F3F4F6",
  surface: "#FFFFFF",
  surfaceElevated: "#F7F8FA",
  card: "#FFFFFF",
  textPrimary: "#17191F",
  textSecondary: "#4D535E",
  textMuted: "#747B87",
  button: "#202329",
  buttonText: "#FFFFFF",
  accent: "#343943",
  border: "#DDE1E7",
  input: "#F0F2F5",
  destructive: "#C62828",
  destructiveForeground: "#FFFFFF",
  success: "#18794E",
  overlay: "rgba(17,19,23,0.45)",
  playerControl: "rgba(255,255,255,0.92)",
  playerControlBorder: "rgba(20,22,26,0.16)",
  playerControlIcon: "#17191F",
  playerTrack: "rgba(255,255,255,0.42)",
  playerBuffer: "rgba(255,255,255,0.72)",

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
  violet: "#343943",
  violetDark: "#252930",
  violetDeep: "#17191F",
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
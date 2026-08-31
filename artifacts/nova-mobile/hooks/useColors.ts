import { useApp } from "@/context/AppContext";
import colors, { type ThemePalette } from "@/constants/colors";

/**
 * Returns the design-token palette for the user's selected theme.
 *
 * Theme is driven by AppContext ("light" | "dark" | "amoled" | "violet" | "blue" | "pink").
 * Falls back to the light palette when the selected theme key is not found.
 */
export function useColors(): ThemePalette & { radius: number } {
  const { theme } = useApp();
  const palette = (colors as Record<string, ThemePalette | number>)[theme] as ThemePalette | undefined;
  if (palette && typeof palette === "object" && "text" in palette) {
    return { ...palette, radius: colors.radius };
  }
  return { ...colors.light, radius: colors.radius };
}

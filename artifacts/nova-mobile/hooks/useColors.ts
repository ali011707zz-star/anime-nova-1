import { useApp } from "@/context/AppContext";
import colors, { type ThemePalette } from "@/constants/colors";
import { useMemo } from "react";

/**
 * Returns the design-token palette for the user's selected theme.
 *
 * Theme is driven by AppContext and stays referentially stable until it changes.
 */
export function useColors(): ThemePalette & { radius: number } {
  const { theme } = useApp();
  return useMemo(() => ({
    ...(theme === "white" ? colors.white : colors.black),
    radius: colors.radius,
  }), [theme]);
}

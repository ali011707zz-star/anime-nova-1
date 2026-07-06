---
name: Nova Mobile Themes Fix
description: Themes were broken — useColors() ignored AppContext theme; fixed by wiring useApp().theme
---

## Fix applied
- constants/colors.ts: added dark/amoled/violet/blue/pink palettes + kept light as backward-compat alias
- hooks/useColors.ts: reads useApp().theme instead of useColorScheme()
- settings.tsx: server URL hidden (shows status text, not actual domain)

## Theme accent colors
- dark: bg #09090B, tint #8B5CF6
- amoled: bg #000000, tint #8B5CF6
- violet: bg #0A0614, tint #A78BFA
- blue: bg #030712, tint #3B82F6
- pink: bg #120614, tint #EC4899

**Why:** useColorScheme() only reads system dark/light; AppContext.theme stores user pick.

## Requires EAS Build to update installed APK.

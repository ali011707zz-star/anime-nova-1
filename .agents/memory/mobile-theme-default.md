---
name: Mobile theme default
description: User's standing product requirement for the default Nova Mobile appearance.
---

The app's default theme must always be white.

**Why:** the user explicitly requested it.

**How to apply:** Use white when there is no saved theme preference; keep the supported themes limited to white and black.

When adapting a screen from a reference, preserve both existing themes and their palette; translate layout, shapes, and icon details using the active theme tokens.

**Why:** the user explicitly asked not to change the themes while transferring the reference design.

**How to apply:** Keep white/black theme selection and colors intact during UI restyling; make structural updates theme-aware through `useColors()`.
---
name: Source short-tag detection breaks when backend sends localized labels
description: getAnimTag()-style 2-letter tag pickers match on English site-name prefixes; if the backend switches a source's label to Arabic, the picker silently falls through to a generic fallback and shows garbled letters.
---

## The bug pattern

`AnimationWatch.tsx` (and similarly-shaped functions elsewhere) derive a 2-letter source badge by
checking `label.toLowerCase().startsWith("<english-site-name>")` for a big if-chain, then falling back
to `label.replace(/[^a-zA-Zأ-ي]/g, "").slice(0, 2)` if nothing matched.

If a backend route changes a source's display name to a **localized Arabic string** (e.g. Moviz-Time's
label became `"وقت الأفلام · سيرفر 1"` instead of an English "moviz..." prefix), none of the
`startsWith("moviz")`-style checks match, and the fallback grabs the first two Arabic letters of the
label — producing a nonsensical badge (e.g. "وق") instead of the intended "MV".

**Why this matters:** the failure is silent — no error, just a wrong-looking badge — so it's easy to
miss in review and only surfaces as a user-reported "the label looks broken" bug.

**How to apply:** whenever a source's backend-generated display label changes language/format, check
the frontend tag-detection function for that source and add an explicit match on the new label form
(e.g. `l.includes("وقت الأفلام")`) rather than relying only on the English-prefix branches.

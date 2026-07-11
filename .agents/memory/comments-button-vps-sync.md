---
name: Comments-button VPS sync lesson
description: Root-cause pattern for a bug that appeared fixed locally but persisted in production because the fix never reached the VPS-deployed files.
---

**Rule:** When a page is deployed on a separate server (not Replit) via manual sync, a local repo fix is not live until that exact file is copied to the server and rebuilt. Never assume a fix is deployed just because it exists locally or because `git status` on the server shows the file as "modified" — modified could mean an unrelated local change, not the fix in question.

**Why:** A prior session fixed a comments-button bug (navigating to the episode player instead of opening an inline comments sheet) in the local repo across several pages, but only some of those files were actually copied to the VPS. The untouched pages kept the old broken behavior indefinitely, and the bug appeared "not really fixed" despite confident prior claims.

**How to apply:** Before declaring a VPS-deployed bug fixed, diff the exact file's content (not just git status) between local and VPS. After confirming and copying, rebuild on the VPS and grep the built output bundle for the old buggy pattern (should be absent) and the new pattern (should be present) before telling the user it's live.

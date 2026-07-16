---
name: Fresh Replit import diverges from VPS working copy
description: After a repo re-import, local git history can be far behind/ahead of the VPS's real deployed state — check divergence before assuming local matches production.
---

On 2026-07-14, a fresh GitHub import of Anime NOVA showed local `git log` diverged
from the VPS checkout by "5 and 81 different commits each" (`git status` after
`git remote update`) — the VPS has many commits/uncommitted edits never pushed to
GitHub, and the fresh import is missing them.

**Why:** the user only pushes to GitHub sporadically; the VPS is the real running
source of truth (see `vps-only-deployment-policy.md`). A fresh Replit import off
GitHub is NOT guaranteed to reflect what's actually running.

**How to apply:** after any repo re-import/clone, before editing files that affect
runtime behavior, SSH to the VPS and run `git status`/`git log` in `/opt/anime-nova`
to check divergence — don't assume the imported copy is current. Diff specific files
against the VPS before overwriting them (same lesson as `vps-manual-deploy-2026-07.md`).

---
name: GitHub APK build numbering
description: How Nova Mobile APK labels such as v232 map to GitHub Actions runs
---

Nova Mobile APK labels such as `AnimeNova-v232` are GitHub Actions workflow run numbers, not Git tags or Expo version codes. To restore one, find the successful Android workflow run with that number, use its `head_sha`, and restore `artifacts/nova-mobile` plus the matching Android build workflow and lockfile.

**Why:** The repository has no `v232` tag, while the APK artifact and workflow run use the number independently of `app.json`.

**How to apply:** Query the repository Actions runs/artifacts first; do not guess a branch or replace the whole repository when only the mobile artifact needs restoration.
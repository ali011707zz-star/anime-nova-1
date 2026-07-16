---
name: Fresh-import environment setup fixes
description: Recurring fixes needed after re-importing/forking this repl before workflows will run.
---

- Root Python deps (flask, flask-sqlalchemy, curl_cffi) are often missing after import even though pyproject.toml lists them — the `uv add` path used by `installLanguagePackages` can fail with `Permission denied` writing into the /nix/store python (broken venv linkage). Workaround: `python3 -m pip install --break-system-packages <pkg>` writes correctly into `.pythonlibs` and works reliably.
- After `pnpm install`, always `rm -rf artifacts/anime-scraper/node_modules/.vite` before first boot — a stale Vite dep-cache from a different React copy causes `TypeError: jsxDEV is not a function` on load. Clearing the cache and restarting fixes it.
- The standalone `artifacts/api-server: API Server` workflow is redundant/conflicting: `Start application` (scripts/replit-dev-start.sh) already builds and starts the API server itself on the same port. Leave the standalone one stopped — starting it causes `EADDRINUSE`.
</content>

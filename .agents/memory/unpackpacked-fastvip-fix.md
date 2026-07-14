---
name: unpackPacked() Dean-Edwards decoder rewrite
description: Why unpackPacked() in anime.ts is a manual text-parser, not a regex or eval, and what broke before.
---

`unpackPacked()` (used by `parseStreamwish`, which many embeds route through — including
fastvip.space/StreamHG) decodes `eval(function(p,a,c,k,e,d){...}(...))` packed JS.

**Old bug:** the original implementation used a regex anchored on `.split('|')))`. Real-world
packed payloads (e.g. fastvip.space) often have extra trailing packer args like `,0,{}` before
the closing parens, so the regex silently failed to match — the source looked "dead" when it
wasn't.

**First fix attempt used `new Function` to eval the extracted call** — code review correctly
flagged this as RCE risk (executing untrusted scraped third-party HTML in the server process).
Final version parses the packer's own arguments with balanced-paren/brace scanning +
string-literal unquoting, then does the same deterministic token-substitution the format has
always required — no `eval`/`Function`/dynamic execution anywhere in this path.

**Why:** any future "unpack packed JS" need in this codebase must NOT reach for `eval`/`new
Function` on scraped content, even when it seems like the only fast option — the packed-JS format
is simple enough to fully decode via balanced-delimiter parsing instead.

**How to apply:** if a new source uses Dean-Edwards packed JS and `unpackPacked()`/`parseStreamwish`
still fails to extract it, first check whether the packed call has an unusual arg shape (test with
a real fetched sample) before assuming the site is dead.

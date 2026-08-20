from pathlib import Path
import re

p = Path("/opt/anime-nova/artifacts/api-server/src/routes/anime.ts")
s = p.read_text()
s, stream = re.subn(
    r'^[ \t]*scrapeCached\("moviebox".*\n',
    "",
    s,
    flags=re.M,
)
s, fetch = re.subn(
    r'^[ \t]*case "moviebox":.*\n',
    "",
    s,
    flags=re.M,
)
if stream + fetch == 0:
    print("MovieBox was already inactive")
elif (stream, fetch) == (1, 1):
    p.write_text(s)
    print("MovieBox active calls removed")
else:
    raise SystemExit(f"unexpected MovieBox removals: {stream},{fetch}")
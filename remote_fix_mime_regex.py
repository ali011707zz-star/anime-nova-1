from pathlib import Path

p = Path("/opt/anime-nova/artifacts/api-server/src/routes/anime.ts")
s = p.read_text()
old = "text\\\\/plain|text\\\\/javascript|application\\\\/javascript|application\\\\/json|application\\\\/octet-stream|binary\\\\/octet-stream"
new = r"text\/plain|text\/javascript|application\/javascript|application\/json|application\/octet-stream|binary\/octet-stream"
if s.count(old) != 1:
    raise SystemExit(f"broken MIME regex expected 1, got {s.count(old)}")
p.write_text(s.replace(old, new, 1))
print("MIME regex repaired")
from pathlib import Path
import re

server = Path("/opt/anime-nova/artifacts/api-server/src/routes/anime.ts")
s = server.read_text()
s, n1 = re.subn(r'^[ \t]*scrapeCached\("animeday".*\n', "", s, flags=re.M)
s, n2 = re.subn(r'^[ \t]*case "animeday":.*\n', "", s, flags=re.M)
if (n1, n2) not in ((1, 1), (0, 0)):
    raise SystemExit(f"AnimeDay removals={n1},{n2}")

sa_start = s.index("async function getSAnimeSourcesUncached(")
sa_end = s.index("\nasync function getSAnimeSources(", sa_start)
sa = s[sa_start:sa_end]
availability_start = sa.find("    if (availabilityOnly) {")
probe_start = sa.find("    // 5. Direct CDN URLs", availability_start)
if availability_start < 0 or probe_start < 0:
    raise SystemExit("SAnime availability branch not found")
sa = (
    sa[:availability_start]
    + "    // Availability and playback both continue to the live CDN probe below.\n"
      "    // Catalog metadata alone is not evidence that the MP4 still exists.\n\n"
    + sa[probe_start:]
)

old = """    const cdnCandidates = [
      { base: SANIME_CDN, tag: "" },
      { base: "https://server.sanime.net/Video2", tag: " · fallback" },
    ];"""
if old not in s:
    raise SystemExit("Video2 block missing")
sa = sa.replace(
    old,
    """    const cdnCandidates = [
      { base: SANIME_CDN, tag: "" },
    ];""",
    1,
)
s = s[:sa_start] + sa + s[sa_end:]

movie_start = s.index("async function getMovieBoxAnimeSources(")
movie_sources = s.index("    const sources: UnifiedSource[] = [];", movie_start)
movie_return = s.index("    return sources;", movie_sources) + len("    return sources;")
movie_replacement = """    const candidates = downloads
      .slice(0, 3)
      .filter((dl: any) => dl?.url && Number(dl.resolution) > 0);
    const checked = await Promise.all(candidates.map(async (dl: any) => {
      try {
        const probe = await fetch(String(dl.url), {
          headers: {
            ...BASE_HDRS,
            Referer: MBX_REF,
            Range: "bytes=0-1",
          },
          signal: AbortSignal.timeout(7000),
          redirect: "follow",
        });
        return probe.status === 200 || probe.status === 206 ? dl : null;
      } catch {
        return null;
      }
    }));
    const sources: UnifiedSource[] = [];
    for (const dl of checked.filter(Boolean) as any[]) {
      const res = Number(dl.resolution) || 0;
      const rawUrl = String(dl.url);
      const proxiedUrl =
        `/api/anime/video-proxy?url=${encodeURIComponent(rawUrl)}` +
        `&ref=${encodeURIComponent(MBX_REF)}`;
      const qualityRank = res >= 1080 ? 14 : res >= 720 ? 13 : 11;
      const qualityLabel = res >= 1080 ? "FHD" : res >= 720 ? "HD" : "SD";
      sources.push({
        name: `MovieBox · ${res}p · صوت خام`,
        url: rawUrl,
        quality: qualityLabel,
        qualityRank,
        site: "moviebox",
        directUrl: proxiedUrl,
        directType: "mp4",
        headers: { Referer: MBX_REF },
      });
    }
    return sources;"""
s = s[:movie_sources] + movie_replacement + s[movie_return:]
# Keep MovieBox as an isolated test adapter only; do not expose it in the
# active source stream or on-demand picker until the provider is verified.
s, movie_stream = re.subn(
    r'^[ \t]*scrapeCached\("moviebox".*\n',
    "",
    s,
    flags=re.M,
)
s, movie_fetch = re.subn(
    r'^[ \t]*case "moviebox":.*\n',
    "",
    s,
    flags=re.M,
)
if (movie_stream, movie_fetch) != (1, 1):
    raise SystemExit(f"MovieBox active calls={movie_stream},{movie_fetch}")
server.write_text(s)
print("anime.ts updated")

frontend = Path("/opt/anime-nova/artifacts/anime-scraper/src/pages/Watch.tsx")
s = frontend.read_text()
old = """  const q = getSrcQualityTier(src);
  const qs = QUALITY_STYLE[q];"""
new = """  const q = getSrcQualityTier(src);
  const srcText =
    `${src.quality || ""} ${src.name || ""} ${src.url || ""} ${src.directUrl || ""}`.toLowerCase();
  const anineko480 =
    src.site === "anineko" && /(?:480)\\s*p?/.test(srcText);
  const qs = QUALITY_STYLE[q];"""
if old not in s:
    raise SystemExit("Watch quality block missing")
s = s.replace(old, new, 1)
if "            {Q_SHORT[q]}" not in s:
    raise SystemExit("Watch badge missing")
s = s.replace(
    "            {Q_SHORT[q]}",
    '            {anineko480 ? "480p" : Q_SHORT[q]}',
    1,
)
frontend.write_text(s)
print("Watch.tsx updated")
from pathlib import Path

p = Path("/opt/anime-nova/artifacts/api-server/src/routes/anime.ts")
s = p.read_text()

seg_marker = 'router.get("/anime/seg-proxy", async (req, res) => {'
seg_start = s.index(seg_marker)
seg_tail = s[seg_start:]
old = """  const hdrs: Record<string, string> = { ...BASE_HDRS, Accept: "*/*" };
  if (ref) { hdrs.Referer = ref; try { hdrs.Origin = new URL(ref).origin; } catch {} }"""
new = """  const segmentStartedAt = Date.now();
  const hdrs: Record<string, string> = { ...BASE_HDRS, Accept: "*/*" };
  if (ref) { hdrs.Referer = ref; try { hdrs.Origin = new URL(ref).origin; } catch {} }"""
if seg_tail.count(old) != 1:
    raise SystemExit(f"segment timer expected 1 in seg-proxy, got {seg_tail.count(old)}")
s = s[:seg_start] + seg_tail.replace(old, new, 1)

old = """    // Content-Type طبيعي — بثّ نفس response الذي جُلب للتو.
    // إعادة استدعاء serveMediaVPS هنا كانت تجلب كل segment مرتين، ما يسبب
    // تأخيراً/توقفاً متقطعاً عندما يقترب المشغل من نهاية الـ buffer.
    res.setHeader("Content-Type", r.headers.get("content-type") || "video/MP2T");"""
new = """    /* Some CDNs (notably MegaPlay) label real MPEG-TS segments as
       text/plain or application/javascript. ExoPlayer trusts that header and
       fails precisely when a seek requests a later segment. Sniff and repair
       the complete small segment before forwarding it. */
    if (/^(?:text\\\\/plain|text\\\\/javascript|application\\\\/javascript|application\\\\/json|application\\\\/octet-stream|binary\\\\/octet-stream)/.test(ct)) {
      const raw = Buffer.from(await r.arrayBuffer());
      const magic = mediaMagic(raw);
      if (magic === "ts" || magic === "mp4") {
        const correctedCt = magic === "ts" ? "video/MP2T" : "video/mp4";
        res.setHeader("Content-Type", correctedCt);
        res.setHeader("Content-Length", String(raw.length));
        res.setHeader("Accept-Ranges", r.headers.get("accept-ranges") || "bytes");
        res.setHeader("Cache-Control", "public, max-age=60");
        if (r.status === 206) {
          const cr = r.headers.get("content-range");
          if (cr) res.setHeader("Content-Range", cr);
          res.status(206);
        } else {
          res.status(200);
        }
        console.info(`[hls-segment] corrected host=${safeHost(url)} status=${r.status} from=${ct} to=${correctedCt} bytes=${raw.length} ms=${Date.now() - segmentStartedAt}`);
        res.end(raw);
        return true;
      }
      if (isHtmlOrJsonBody(raw)) return false;
    }

    // Content-Type طبيعي — بثّ نفس response الذي جُلب للتو.
    // إعادة استدعاء serveMediaVPS هنا كانت تجلب كل segment مرتين، ما يسبب
    // تأخيراً/توقفاً متقطعاً عندما يقترب المشغل من نهاية الـ buffer.
    res.setHeader("Content-Type", r.headers.get("content-type") || "video/MP2T");"""
if s.count(old) != 1:
    raise SystemExit(f"segment sniff insertion expected 1, got {s.count(old)}")
s = s.replace(old, new, 1)

p.write_text(s)
print("MegaPlay segment MIME patch applied")
from pathlib import Path

mobile = Path("/opt/anime-nova/artifacts/nova-mobile/components/RiftPlayer.tsx")
anime = Path("/opt/anime-nova/artifacts/api-server/src/routes/anime.ts")

def replace_once(text: str, old: str, new: str, label: str) -> str:
    count = text.count(old)
    if count != 1:
        raise SystemExit(f"{label}: expected 1 match, got {count}")
    return text.replace(old, new, 1)

s = mobile.read_text()

s = replace_once(
    s,
    "  const switchPosRef = useRef(0);\n",
    "  const switchPosRef = useRef(0);\n"
    "  /* A failed seek can move to the next provider without losing the target. */\n"
    "  const forcedSwitchPosRef = useRef<number | null>(null);\n",
    "forced switch ref",
)

s = replace_once(
    s,
    """  const scheduleSeekRecovery = useCallback((target: number, wasPlaying: boolean) => {
    if (seekRecoveryTimerRef.current) clearTimeout(seekRecoveryTimerRef.current);
    seekRecoveryTimerRef.current = setTimeout(() => {
      seekRecoveryTimerRef.current = null;
      const pendingSeek = seekInFlightRef.current;
      if (!pendingSeek || !aliveRef.current) return;
      const nativePos = Number(player.currentTime);
      if (Number.isFinite(nativePos) && Math.abs(nativePos - target) <= 2) {
        seekInFlightRef.current = null;
        setBuffering(false);
        return;
      }
      if (pendingSeek.retryCount >= 2) {
        /* The same source failed to reach the requested position after two
           recovery attempts. This is now a genuine source failure and may
           enter the normal fallback path. */
        seekInFlightRef.current = null;
        setBuffering(false);
        setError(true);
        return;
      }
      pendingSeek.retryCount += 1;
      try {
        player.currentTime = target;
        if (wasPlaying) player.play();
      } catch {}
      scheduleSeekRecoveryRef.current(target, wasPlaying);
    }, 12000);
  }, [player]);""",
    """  const scheduleSeekRecovery = useCallback((target: number, wasPlaying: boolean) => {
    if (seekRecoveryTimerRef.current) clearTimeout(seekRecoveryTimerRef.current);
    seekRecoveryTimerRef.current = setTimeout(() => {
      seekRecoveryTimerRef.current = null;
      const pendingSeek = seekInFlightRef.current;
      if (!pendingSeek || !aliveRef.current) return;
      const nativePos = Number(player.currentTime);
      const elapsed = Math.max(0, Date.now() - pendingSeek.startedAt);
      console.info(`[watch-timing] seek:recovery-check target=${target.toFixed(2)} native=${Number.isFinite(nativePos) ? nativePos.toFixed(2) : "nan"} retry=${pendingSeek.retryCount} elapsed=${elapsed}ms source=${srcIdx}`);
      if (Number.isFinite(nativePos) && Math.abs(nativePos - target) <= 2) {
        seekInFlightRef.current = null;
        setBuffering(false);
        console.info(`[watch-timing] seek:ready target=${target.toFixed(2)} elapsed=${elapsed}ms source=${srcIdx}`);
        return;
      }
      if (pendingSeek.retryCount >= 2) {
        /* A repeated seek failure is a provider/range failure, not a reason
           to leave the user at the old position. Preserve the target while
           the normal source cycler moves to the next playable provider. */
        const nextIdx = srcIdx + 1;
        forcedSwitchPosRef.current = target;
        seekInFlightRef.current = null;
        setBuffering(false);
        setError(true);
        console.warn(`[watch-timing] seek:source-fallback target=${target.toFixed(2)} next=${nextIdx < playableSources.length ? nextIdx : "none"} elapsed=${elapsed}ms source=${srcIdx}`);
        return;
      }
      pendingSeek.retryCount += 1;
      console.info(`[watch-timing] seek:retry target=${target.toFixed(2)} retry=${pendingSeek.retryCount} source=${srcIdx}`);
      try {
        player.currentTime = target;
        if (wasPlaying) player.play();
      } catch {}
      scheduleSeekRecoveryRef.current(target, wasPlaying);
    }, 12000);
  }, [player, srcIdx, playableSources.length]);""",
    "seek recovery",
)

s = replace_once(
    s,
    """    seekInFlightRef.current = { target, startedAt: Date.now(), retryCount: 0, wasPlaying };
    stallRef.current = { lastPos: target, lastAt: Date.now() };""",
    """    const seekStartedAt = Date.now();
    console.info(`[watch-timing] seek:start target=${target.toFixed(2)} from=${Number.isFinite(Number(player.currentTime)) ? Number(player.currentTime).toFixed(2) : "nan"} playing=${wasPlaying} source=${srcIdx}`);
    seekInFlightRef.current = { target, startedAt: seekStartedAt, retryCount: 0, wasPlaying };
    stallRef.current = { lastPos: target, lastAt: seekStartedAt };""",
    "seek start timing",
)

s = replace_once(
    s,
    """          if (seekFailure) {
            /* Do not hand a transient seek error to the source-cycler. Retry
               the exact target on the same URL first; only a repeated failure
               after those retries is a real source failure. */
            if (seekFailure.retryCount < 2 && !seekRetryTimerRef.current) {""",
    """          if (seekInFlightRef.current) {
            console.warn(`[watch-timing] seek:status-error target=${seekFailure.target.toFixed(2)} native=${Number.isFinite(Number(player.currentTime)) ? Number(player.currentTime).toFixed(2) : "nan"} retry=${seekFailure.retryCount} elapsed=${Math.max(0, Date.now() - seekFailure.startedAt)}ms source=${srcIdx}`);
            /* Do not hand a transient seek error to the source-cycler. Retry
               the exact target on the same URL first; only a repeated failure
               after those retries is a real source failure. */
            if (seekFailure.retryCount < 2 && !seekRetryTimerRef.current) {""",
    "seek error timing",
)

s = replace_once(
    s,
    """            } else if (seekFailure.retryCount >= 2) {
              /* Seeking can fail transiently when the CDN rejects one byte
                 range. It must never be treated as a dead provider: doing so
                 sends the user to “searching for alternative sources” even
                 though the original stream is still healthy. Keep the current
                 source, restore the last confirmed position, and continue. */
              const fallbackPos = Math.max(0, positionRef.current);
              const resume = seekFailure.wasPlaying;
              seekInFlightRef.current = null;
              if (seekRecoveryTimerRef.current) { clearTimeout(seekRecoveryTimerRef.current); seekRecoveryTimerRef.current = null; }
              if (seekRetryTimerRef.current) { clearTimeout(seekRetryTimerRef.current); seekRetryTimerRef.current = null; }
              setError(false);
              setBuffering(false);
              try {
                player.currentTime = fallbackPos;
                if (resume) player.play();
              } catch {}
              console.warn(`[RiftPlayer] seek recovery kept current source at ${fallbackPos.toFixed(1)}s`);
            }""",
    """            } else if (seekFailure.retryCount >= 2) {
              /* Keep the transaction alive until the recovery timer decides
                 whether the target is reachable. Clearing it here used to
                 restore the old position and strand playback after a seek. */
              setError(false);
              setBuffering(true);
              scheduleSeekRecoveryRef.current(seekFailure.target, seekFailure.wasPlaying);
              console.warn(`[watch-timing] seek:awaiting-fallback target=${seekFailure.target.toFixed(2)} elapsed=${Math.max(0, Date.now() - seekFailure.startedAt)}ms source=${srcIdx}`);
            }""",
    "seek repeated error handling",
)

s = replace_once(
    s,
    """    /* ── Save current position before replacing source ── */
    const savedPos = player.currentTime || 0;
    if (savedPos > 5) switchPosRef.current = savedPos;""",
    """    /* ── Save current position before replacing source ── */
    const forcedPos = forcedSwitchPosRef.current;
    forcedSwitchPosRef.current = null;
    const savedPos = forcedPos ?? (player.currentTime || 0);
    if (savedPos > 5) switchPosRef.current = savedPos;""",
    "forced switch position",
)

mobile.write_text(s)

a = anime.read_text()

helper = r'''
/** Validate a Streamtape extraction before exposing it to the mobile player.
 * Streamtape can return an HTML landing/error page with HTTP 200; accepting
 * that URL creates a source that only fails later, commonly on seek. */
async function awStreamtapeLooksPlayable(url: string): Promise<boolean> {
  try {
    const r = await fetch(url, {
      headers: { ...BASE_HDRS, Accept: "video/mp4,video/*;q=0.9,*/*;q=0.1", Range: "bytes=0-2047" },
      signal: AbortSignal.timeout(7000),
      redirect: "follow",
    });
    const ct = (r.headers.get("content-type") || "").toLowerCase();
    const ok = (r.status === 200 || r.status === 206)
      && !/text\/html|application\/json|text\/plain/.test(ct);
    try { await r.body?.cancel(); } catch {}
    if (!ok) console.warn(`[AW] rejected Streamtape media host=${safeHost(url)} status=${r.status} type=${ct || "-"}`);
    return ok;
  } catch (e: any) {
    console.warn(`[AW] Streamtape probe failed host=${safeHost(url)}: ${e?.message || e}`);
    return false;
  }
}

'''
marker = "async function awBuildSourcesFromDb(rows: AwLinkRow[]): Promise<UnifiedSource[]> {"
if a.count(marker) != 1:
    raise SystemExit("AW helper marker missing")
a = a.replace(marker, helper + marker, 1)

a = replace_once(
    a,
    """        const stResult = parseStreamtape(stHtml);
        if (stResult) {
          add(stResult.url, {""",
    """        const stResult = parseStreamtape(stHtml);
        if (stResult && await awStreamtapeLooksPlayable(stResult.url)) {
          add(stResult.url, {""",
    "AW Streamtape validation",
)

# Log only range responses: these correspond to MP4 resume/seek requests.
a = replace_once(
    a,
    """    const cl = r.headers.get("content-length");
    if (cl) res.setHeader("Content-Length", cl);
    if (r.status === 206) {""",
    """    const cl = r.headers.get("content-length");
    if (cl) res.setHeader("Content-Length", cl);
    if (range) {
      console.info(`[media-range] host=${safeHost(url)} status=${r.status} range=${String(range).slice(0, 80)} type=${ct} len=${cl || "-"} ms=${Date.now() - mediaStartedAt}`);
    }
    if (r.status === 206) {""",
    "media range log",
)

a = replace_once(
    a,
    """  mediaMetrics.activeMedia++;
  mediaMetrics.mediaRequests++;
  sampleMediaCpu();
  // Keep media responses byte-for-byte""",
    """  mediaMetrics.activeMedia++;
  mediaMetrics.mediaRequests++;
  sampleMediaCpu();
  const mediaStartedAt = Date.now();
  // Keep media responses byte-for-byte""",
    "media timer",
)

anime.write_text(a)
print("remote seek/AW patch applied")
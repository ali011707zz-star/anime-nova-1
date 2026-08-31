package expo.modules.novamedia3

import android.app.PictureInPictureParams
import android.content.Context
import android.graphics.Color
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Rational
import android.view.ViewGroup
import androidx.media3.common.C
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.DefaultRenderersFactory
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import expo.modules.kotlin.AppContext
import expo.modules.kotlin.viewevent.EventDispatcher
import expo.modules.kotlin.views.ExpoView

@UnstableApi
class NovaMedia3View(
  context: Context,
  appContext: AppContext
) : ExpoView(context, appContext) {
  private val mainHandler = Handler(Looper.getMainLooper())
  private val playerView = PlayerView(context)
  private var exoPlayer: ExoPlayer? = null
  private var currentUrl: String? = null
  private var headersJson = "{}"
  private var initialPositionSeconds = 0.0
  private var lastCommandSequence = 0L
  private var attached = false
  private var shouldAutoPlay = true
  /*
   * Expo can deliver sourceUrl and sourceHeaders as two prop updates during
   * one React render. Rebuilding ExoPlayer synchronously in both setters
   * creates a short-lived player with stale headers and can race a second
   * release/prepare on Android. Coalesce the pair into one main-thread turn.
   */
  private val prepareRunnable = Runnable {
    if (attached) prepareCurrentSource()
  }

  private val onPlaybackState by EventDispatcher()
  private val onProgress by EventDispatcher()
  private val onPlayerError by EventDispatcher()

  private val progressRunnable = object : Runnable {
    override fun run() {
      val player = exoPlayer
      if (attached && player != null) {
        emitProgress(player)
        mainHandler.postDelayed(this, 500L)
      }
    }
  }

  init {
    playerView.layoutParams = LayoutParams(
      ViewGroup.LayoutParams.MATCH_PARENT,
      ViewGroup.LayoutParams.MATCH_PARENT
    )
    playerView.useController = false
    playerView.setShowBuffering(PlayerView.SHOW_BUFFERING_NEVER)
    /*
     * Never leave the previous decoded frame visible while a new surface or
     * source is being attached. On affected TV GPUs that stale buffer can
     * remain composited over only one half of the view.
     */
    playerView.setKeepContentOnPlayerReset(false)
    playerView.setShutterBackgroundColor(Color.BLACK)
    playerView.resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FIT
    addView(playerView)
    clipChildren = false
  }

  fun setSourceUrl(value: String?) {
    val next = value?.trim().takeUnless { it.isNullOrEmpty() }
    if (next == currentUrl) return
    currentUrl = next
    schedulePrepare()
  }

  fun setSourceHeaders(value: String?) {
    val next = value?.takeUnless { it.isBlank() } ?: "{}"
    if (next == headersJson) return
    headersJson = next
    schedulePrepare()
  }

  fun setInitialPosition(value: Double) {
    if (value.isFinite() && value >= 0) initialPositionSeconds = value
  }

  fun setContentFit(value: String?) {
    playerView.resizeMode = when (value?.lowercase()) {
      "cover" -> AspectRatioFrameLayout.RESIZE_MODE_ZOOM
      "fill" -> AspectRatioFrameLayout.RESIZE_MODE_FILL
      else -> AspectRatioFrameLayout.RESIZE_MODE_FIT
    }
  }

  fun applyCommand(raw: String?) {
    if (raw.isNullOrBlank()) return
    val parts = raw.split(':', limit = 3)
    if (parts.size < 2) return
    val sequence = parts[0].toLongOrNull() ?: return
    if (sequence <= lastCommandSequence) return
    lastCommandSequence = sequence
    when (parts[1]) {
      "play" -> {
        shouldAutoPlay = true
        exoPlayer?.play()
      }
      "pause" -> {
        shouldAutoPlay = false
        exoPlayer?.pause()
      }
      "seek" -> parts.getOrNull(2)?.toDoubleOrNull()?.let { exoPlayer?.seekTo((it * 1000).toLong()) }
      "speed" -> parts.getOrNull(2)?.toFloatOrNull()?.takeIf { it > 0f }?.let {
        exoPlayer?.setPlaybackSpeed(it)
      }
      "volume" -> parts.getOrNull(2)?.toFloatOrNull()?.coerceIn(0f, 1f)?.let {
        exoPlayer?.volume = it
      }
      "pip" -> enterPictureInPicture()
    }
  }

  override fun onAttachedToWindow() {
    super.onAttachedToWindow()
    attached = true
    schedulePrepare()
    mainHandler.removeCallbacks(progressRunnable)
    mainHandler.post(progressRunnable)
  }

  override fun onDetachedFromWindow() {
    attached = false
    mainHandler.removeCallbacks(prepareRunnable)
    mainHandler.removeCallbacks(progressRunnable)
    releasePlayer()
    super.onDetachedFromWindow()
  }

  private fun schedulePrepare() {
    if (!attached) return
    mainHandler.removeCallbacks(prepareRunnable)
    mainHandler.post(prepareRunnable)
  }

  private fun prepareCurrentSource() {
    val url = currentUrl ?: run {
      releasePlayer()
      emitState("idle", false)
      return
    }

    releasePlayer()
    /*
     * The default Media3 load control is tuned for short, reliable streams.
     * Our sources can take several seconds to deliver a segment, especially
     * when the CDN is reached through a redirect/proxy. Keep a real safety
     * buffer instead of starting playback again after roughly one segment.
     */
    val loadControl = DefaultLoadControl.Builder()
      .setBufferDurationsMs(
        15_000, // minBufferMs
        60_000, // maxBufferMs
        2_500,  // bufferForPlaybackMs
        5_000,  // bufferForPlaybackAfterRebufferMs
      )
      .setBackBuffer(15_000, false)
      .build()
    /*
     * Use Media3 directly for TV instead of expo-video's renderer wrapper.
     * Decoder fallback lets Media3 retry with a compatible codec when the
     * hardware decoder reports a bad surface/color configuration.
     */
    val renderersFactory = DefaultRenderersFactory(context)
      .setEnableDecoderFallback(true)
    val player = ExoPlayer.Builder(context, renderersFactory)
      .setLoadControl(loadControl)
      .build()
    exoPlayer = player
    playerView.player = player
    player.videoScalingMode = C.VIDEO_SCALING_MODE_SCALE_TO_FIT
    player.addListener(object : Player.Listener {
      override fun onPlaybackStateChanged(state: Int) {
        when (state) {
          Player.STATE_BUFFERING -> emitState("loading", player.isPlaying)
          Player.STATE_READY -> {
            if (initialPositionSeconds > 0) {
              player.seekTo((initialPositionSeconds * 1000).toLong())
              initialPositionSeconds = 0.0
            }
            if (shouldAutoPlay) player.play()
            emitState("readyToPlay", player.isPlaying)
          }
          Player.STATE_ENDED -> emitState("ended", false)
          Player.STATE_IDLE -> emitState("idle", false)
        }
      }

      override fun onIsPlayingChanged(isPlaying: Boolean) {
        emitState(if (player.playbackState == Player.STATE_BUFFERING) "loading" else "readyToPlay", isPlaying)
      }

      override fun onPlayerError(error: PlaybackException) {
        emitError(error)
      }
    })

    try {
      player.setMediaSource(NovaMediaSourceFactory.buildMediaSource(context, url, headersJson))
      player.prepare()
    } catch (error: Throwable) {
      emitError(error)
    }
  }

  private fun emitState(state: String, isPlaying: Boolean) {
    val player = exoPlayer
    onPlaybackState(
      mapOf(
        "state" to state,
        "isPlaying" to isPlaying,
        "currentTime" to (player?.currentPosition ?: 0L) / 1000.0,
        "duration" to durationSeconds(player)
      )
    )
  }

  private fun emitProgress(player: ExoPlayer) {
    onProgress(
      mapOf(
        "state" to if (player.playbackState == Player.STATE_BUFFERING) "loading" else "readyToPlay",
        "isPlaying" to player.isPlaying,
        "currentTime" to player.currentPosition.coerceAtLeast(0L) / 1000.0,
        "duration" to durationSeconds(player)
      )
    )
  }

  private fun emitError(error: Throwable) {
    onPlayerError(
      mapOf(
        "state" to "error",
        "message" to (error.message ?: error.javaClass.simpleName),
        "isPlaying" to false,
        "currentTime" to (exoPlayer?.currentPosition ?: 0L) / 1000.0,
        "duration" to durationSeconds(exoPlayer)
      )
    )
  }

  private fun durationSeconds(player: ExoPlayer?): Double {
    val duration = player?.duration ?: C.TIME_UNSET
    return if (duration == C.TIME_UNSET || duration < 0) 0.0 else duration / 1000.0
  }

  private fun releasePlayer() {
    playerView.player = null
    exoPlayer?.release()
    exoPlayer = null
  }

  private fun enterPictureInPicture() {
    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
    val activity = appContext.currentActivity ?: return
    if (activity.isFinishing || activity.isDestroyed) return
    val params = PictureInPictureParams.Builder()
      .setAspectRatio(Rational(16, 9))
      .build()
    activity.enterPictureInPictureMode(params)
  }
}
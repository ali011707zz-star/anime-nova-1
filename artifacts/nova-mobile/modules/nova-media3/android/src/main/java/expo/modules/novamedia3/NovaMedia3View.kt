package expo.modules.novamedia3

import android.app.PictureInPictureParams
import android.content.Context
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Rational
import android.view.ViewGroup
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.datasource.DefaultDataSource
import androidx.media3.datasource.okhttp.OkHttpDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.hls.HlsMediaSource
import androidx.media3.exoplayer.source.MediaSource
import androidx.media3.exoplayer.source.ProgressiveMediaSource
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import expo.modules.kotlin.AppContext
import expo.modules.kotlin.viewevent.EventDispatcher
import expo.modules.kotlin.views.ExpoView
import org.json.JSONObject

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
    playerView.resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FIT
    addView(playerView)
    clipChildren = false
  }

  fun setSourceUrl(value: String?) {
    val next = value?.trim().takeUnless { it.isNullOrEmpty() }
    if (next == currentUrl) return
    currentUrl = next
    if (attached) prepareCurrentSource()
  }

  fun setSourceHeaders(value: String?) {
    val next = value?.takeUnless { it.isBlank() } ?: "{}"
    if (next == headersJson) return
    headersJson = next
    if (attached && currentUrl != null) prepareCurrentSource()
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
    prepareCurrentSource()
    mainHandler.removeCallbacks(progressRunnable)
    mainHandler.post(progressRunnable)
  }

  override fun onDetachedFromWindow() {
    attached = false
    mainHandler.removeCallbacks(progressRunnable)
    releasePlayer()
    super.onDetachedFromWindow()
  }

  private fun prepareCurrentSource() {
    val url = currentUrl ?: run {
      releasePlayer()
      emitState("idle", false)
      return
    }

    releasePlayer()
    val player = ExoPlayer.Builder(context).build()
    exoPlayer = player
    playerView.player = player
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
      player.setMediaSource(buildMediaSource(url))
      player.prepare()
    } catch (error: Throwable) {
      emitError(error)
    }
  }

  private fun buildMediaSource(url: String): MediaSource {
    val requestProperties = mutableMapOf<String, String>()
    try {
      val json = JSONObject(headersJson)
      json.keys().forEach { key ->
        json.optString(key).takeIf { it.isNotBlank() }?.let { requestProperties[key] = it }
      }
    } catch (_: Throwable) {
      // Invalid optional headers must not prevent a valid URL from playing.
    }

    val httpFactory = OkHttpDataSource.Factory()
      .setUserAgent("NOVA/1.0")
      .setDefaultRequestProperties(requestProperties)
    val dataSourceFactory = DefaultDataSource.Factory(context, httpFactory)
    val item = MediaItem.fromUri(url)
    // Proxied manifests often hide the real extension in an encoded `url=`
    // query parameter, so checking only the outer pathname would select the
    // progressive extractor and fail before the first frame.
    return if (url.contains("m3u8", ignoreCase = true)) {
      HlsMediaSource.Factory(dataSourceFactory).createMediaSource(item)
    } else {
      ProgressiveMediaSource.Factory(dataSourceFactory).createMediaSource(item)
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
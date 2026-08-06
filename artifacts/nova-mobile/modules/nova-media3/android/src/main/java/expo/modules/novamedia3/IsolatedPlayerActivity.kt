package expo.modules.novamedia3

import android.app.Activity
import android.content.Intent
import android.graphics.Color
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import android.widget.Button
import android.widget.FrameLayout
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.MediaSource
import androidx.media3.exoplayer.source.MergingMediaSource
import androidx.media3.exoplayer.source.SingleSampleMediaSource
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import org.json.JSONObject
import java.io.File

/**
 * Runs video playback in its own Android process (`:player`, see
 * AndroidManifest.xml). If ExoPlayer/media3 hits a native crash anywhere in
 * this activity, only this process dies — the caller's process (the main
 * Nova app) survives untouched. See
 * artifacts/nova-mobile/docs/NOVA_PLAYER_FULL_ISOLATION_PLAN.md for why this
 * exists and lib/isolatedPlayer.ts for the TypeScript side.
 *
 * UI is intentionally built on Media3's own PlayerView (Apache-2.0, ships
 * free with ExoPlayer) rather than a hand-rolled or third-party GPL player
 * UI — see the plan doc's "توفير وقت البناء عبر مكتبات جاهزة" section for
 * the licensing rationale. NOVA-specific behavior (intro/outro skip, sleep
 * timer, resume) is added on top as thin overlays.
 */
@UnstableApi
class IsolatedPlayerActivity : Activity() {
  private var exoPlayer: ExoPlayer? = null
  private var playerView: PlayerView? = null
  private val mainHandler = Handler(Looper.getMainLooper())

  private var introStartSeconds = -1.0
  private var introEndSeconds = -1.0
  private var outroStartSeconds = -1.0
  private var outroEndSeconds = -1.0
  private var durationSeconds = 0.0
  private var ended = false

  private lateinit var skipIntroButton: Button
  private lateinit var skipOutroButton: Button

  private val positionFile: File by lazy { File(cacheDir, POSITION_FILE_NAME) }

  /** Poll loop: drives skip-button visibility, sleep timer, and crash-recovery persistence. */
  private val tickRunnable = object : Runnable {
    override fun run() {
      val player = exoPlayer
      if (player != null) {
        val posSeconds = player.currentPosition.coerceAtLeast(0L) / 1000.0
        updateSkipButtons(posSeconds)
        persistPosition(posSeconds)
        mainHandler.postDelayed(this, 1000L)
      }
    }
  }

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
    @Suppress("DEPRECATION")
    window.decorView.systemUiVisibility = (
      View.SYSTEM_UI_FLAG_LAYOUT_STABLE
        or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
        or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
        or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
        or View.SYSTEM_UI_FLAG_FULLSCREEN
        or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
      )

    val sourceUrl = intent.getStringExtra(EXTRA_SOURCE_URL)
    if (sourceUrl.isNullOrBlank()) {
      finishWithResult(0.0, 0.0, ended = false)
      return
    }

    introStartSeconds = intent.getDoubleExtra(EXTRA_INTRO_START, -1.0)
    introEndSeconds = intent.getDoubleExtra(EXTRA_INTRO_END, -1.0)
    outroStartSeconds = intent.getDoubleExtra(EXTRA_OUTRO_START, -1.0)
    outroEndSeconds = intent.getDoubleExtra(EXTRA_OUTRO_END, -1.0)
    val sleepTimerMinutes = intent.getDoubleExtra(EXTRA_SLEEP_TIMER_MINUTES, -1.0)
    val initialPositionSeconds = intent.getDoubleExtra(EXTRA_INITIAL_POSITION, 0.0)
    val headersJson = intent.getStringExtra(EXTRA_SOURCE_HEADERS) ?: "{}"
    val subtitleUrl = intent.getStringExtra(EXTRA_SUBTITLE_URL)
    val subtitleLanguage = intent.getStringExtra(EXTRA_SUBTITLE_LANGUAGE) ?: "ar"

    buildUi(sourceUrl, headersJson, subtitleUrl, subtitleLanguage, initialPositionSeconds)

    if (sleepTimerMinutes > 0) {
      mainHandler.postDelayed({ exoPlayer?.pause() }, (sleepTimerMinutes * 60_000).toLong())
    }
  }

  private fun buildUi(
    sourceUrl: String,
    headersJson: String,
    subtitleUrl: String?,
    subtitleLanguage: String,
    initialPositionSeconds: Double
  ) {
    val root = FrameLayout(this)
    root.setBackgroundColor(Color.BLACK)

    val view = PlayerView(this)
    view.layoutParams = FrameLayout.LayoutParams(
      FrameLayout.LayoutParams.MATCH_PARENT,
      FrameLayout.LayoutParams.MATCH_PARENT
    )
    view.useController = true
    view.controllerAutoShow = true
    view.resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FIT
    root.addView(view)
    playerView = view

    skipIntroButton = Button(this).apply {
      text = "تخطي المقدمة"
      visibility = View.GONE
      setOnClickListener { introEndSeconds.takeIf { it > 0 }?.let { exoPlayer?.seekTo((it * 1000).toLong()) } }
    }
    skipOutroButton = Button(this).apply {
      text = "تخطي الخاتمة"
      visibility = View.GONE
      setOnClickListener { outroEndSeconds.takeIf { it > 0 }?.let { exoPlayer?.seekTo((it * 1000).toLong()) } }
    }
    val buttonParams = FrameLayout.LayoutParams(
      FrameLayout.LayoutParams.WRAP_CONTENT,
      FrameLayout.LayoutParams.WRAP_CONTENT
    ).apply {
      gravity = Gravity.BOTTOM or Gravity.END
      setMargins(24, 24, 48, 120)
    }
    root.addView(skipIntroButton, buttonParams)
    root.addView(skipOutroButton, buttonParams)

    setContentView(root)

    val player = ExoPlayer.Builder(this).build()
    exoPlayer = player
    view.player = player

    player.addListener(object : Player.Listener {
      override fun onPlaybackStateChanged(state: Int) {
        if (state == Player.STATE_READY) {
          durationSeconds = player.duration.takeIf { it != C.TIME_UNSET } ?.let { it / 1000.0 } ?: 0.0
        }
        if (state == Player.STATE_ENDED) {
          ended = true
          finishWithResult(durationSeconds, durationSeconds, ended = true)
        }
      }

      override fun onPlayerError(error: PlaybackException) {
        // A recoverable ExoPlayer error (network/decoder) — close the isolated
        // player and report back with the last known position rather than
        // letting this process crash outright.
        finishWithResult(currentPositionSeconds(), durationSeconds, ended = false)
      }
    })

    try {
      val videoSource = NovaMediaSourceFactory.buildMediaSource(this, sourceUrl, headersJson)
      val mediaSource: MediaSource = if (!subtitleUrl.isNullOrBlank()) {
        val subtitleConfig = MediaItem.SubtitleConfiguration.Builder(android.net.Uri.parse(subtitleUrl))
          .setMimeType(if (subtitleUrl.lowercase().endsWith(".srt")) "application/x-subrip" else "text/vtt")
          .setLanguage(subtitleLanguage)
          .build()
        val subtitleSource = SingleSampleMediaSource.Factory(NovaMediaSourceFactory.dataSourceFactory())
          .createMediaSource(subtitleConfig, C.TIME_UNSET)
        MergingMediaSource(videoSource, subtitleSource)
      } else {
        videoSource
      }
      player.setMediaSource(mediaSource)
      if (initialPositionSeconds > 0) player.seekTo((initialPositionSeconds * 1000).toLong())
      player.prepare()
      player.playWhenReady = true
    } catch (error: Throwable) {
      finishWithResult(initialPositionSeconds, 0.0, ended = false)
      return
    }

    mainHandler.post(tickRunnable)
  }

  private fun updateSkipButtons(posSeconds: Double) {
    skipIntroButton.visibility =
      if (introStartSeconds >= 0 && introEndSeconds > introStartSeconds && posSeconds in introStartSeconds..introEndSeconds)
        View.VISIBLE else View.GONE
    skipOutroButton.visibility =
      if (outroStartSeconds >= 0 && outroEndSeconds > outroStartSeconds && posSeconds in outroStartSeconds..outroEndSeconds)
        View.VISIBLE else View.GONE
  }

  private fun currentPositionSeconds(): Double =
    exoPlayer?.currentPosition?.coerceAtLeast(0L)?.div(1000.0) ?: 0.0

  /** Written every second so a genuine native crash still lets the caller recover the watch position. */
  private fun persistPosition(posSeconds: Double) {
    try {
      positionFile.writeText(JSONObject().put("position", posSeconds).put("duration", durationSeconds).toString())
    } catch (_: Throwable) {
      // Best-effort only — losing this write just means crash recovery falls back to 0.
    }
  }

  override fun onBackPressed() {
    finishWithResult(currentPositionSeconds(), durationSeconds, ended)
  }

  private fun finishWithResult(positionSeconds: Double, durationSeconds: Double, ended: Boolean) {
    val data = Intent().apply {
      putExtra(RESULT_POSITION, positionSeconds)
      putExtra(RESULT_DURATION, durationSeconds)
      putExtra(RESULT_ENDED, ended)
    }
    setResult(RESULT_OK, data)
    try { positionFile.delete() } catch (_: Throwable) {}
    finish()
  }

  override fun onDestroy() {
    mainHandler.removeCallbacksAndMessages(null)
    playerView?.player = null
    exoPlayer?.release()
    exoPlayer = null
    super.onDestroy()
  }

  companion object {
    const val EXTRA_SOURCE_URL = "sourceUrl"
    const val EXTRA_SOURCE_HEADERS = "sourceHeaders"
    const val EXTRA_SUBTITLE_URL = "subtitleUrl"
    const val EXTRA_SUBTITLE_LANGUAGE = "subtitleLanguage"
    const val EXTRA_INITIAL_POSITION = "initialPositionSeconds"
    const val EXTRA_INTRO_START = "introStartSeconds"
    const val EXTRA_INTRO_END = "introEndSeconds"
    const val EXTRA_OUTRO_START = "outroStartSeconds"
    const val EXTRA_OUTRO_END = "outroEndSeconds"
    const val EXTRA_SLEEP_TIMER_MINUTES = "sleepTimerMinutes"

    const val RESULT_POSITION = "positionSeconds"
    const val RESULT_DURATION = "durationSeconds"
    const val RESULT_ENDED = "ended"

    private const val POSITION_FILE_NAME = "nova_isolated_player_position.json"

    /**
     * Reads back the last persisted position for a caller that got no normal
     * activity result (RESULT_CANCELED / null data) — the signature of the
     * `:player` process having actually crashed rather than closed cleanly.
     * Returns null if nothing was ever persisted (e.g. crash before first tick).
     */
    fun readCrashRecoveryPosition(cacheDir: File): Pair<Double, Double>? {
      val file = File(cacheDir, POSITION_FILE_NAME)
      if (!file.exists()) return null
      return try {
        val obj = JSONObject(file.readText())
        val pos = obj.optDouble("position", 0.0)
        val dur = obj.optDouble("duration", 0.0)
        file.delete()
        pos to dur
      } catch (_: Throwable) {
        null
      } finally {
        try { file.delete() } catch (_: Throwable) {}
      }
    }
  }
}

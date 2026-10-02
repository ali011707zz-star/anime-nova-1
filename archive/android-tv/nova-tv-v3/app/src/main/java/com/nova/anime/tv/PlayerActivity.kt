package com.nova.anime.tv

import android.graphics.Color
import android.os.Bundle
import android.view.View
import android.view.Window
import android.widget.FrameLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.datasource.okhttp.OkHttpDataSource
import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import androidx.media3.ui.AspectRatioFrameLayout
import androidx.media3.ui.PlayerView
import okhttp3.OkHttpClient
import org.json.JSONObject
import java.util.concurrent.TimeUnit

@UnstableApi
class PlayerActivity : ComponentActivity() {
    companion object {
        const val EXTRA_SOURCE_URL = "source_url"
        const val EXTRA_SOURCE_HEADERS = "source_headers"
        const val EXTRA_SUBTITLE_URL = "subtitle_url"
        const val EXTRA_TITLE = "title"
    }

    private var player: ExoPlayer? = null
    private var playerView: PlayerView? = null
    private var errorView: TextView? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ApiClient.setUserToken(NovaSession.userToken(this))
        window.requestFeature(Window.FEATURE_NO_TITLE)
        window.addFlags(android.view.WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        hideSystemUi()

        val sourceUrl = intent.getStringExtra(EXTRA_SOURCE_URL).orEmpty()
        if (sourceUrl.isBlank()) {
            finish()
            return
        }

        val root = FrameLayout(this).apply { setBackgroundColor(Color.BLACK) }
        val view = PlayerView(this).apply {
            useController = true
            controllerAutoShow = true
            resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FIT
            keepScreenOn = true
        }
        root.addView(view, FrameLayout.LayoutParams(-1, -1))
        errorView = tvText(this, "", 20f, Color.WHITE).apply {
            gravity = android.view.Gravity.CENTER
            visibility = View.GONE
            setBackgroundColor(Color.argb(220, 9, 9, 11))
            setPadding(dp(30), dp(20), dp(30), dp(20))
        }
        root.addView(errorView, FrameLayout.LayoutParams(-1, dp(140), android.view.Gravity.CENTER))
        setContentView(root)
        playerView = view

        play(sourceUrl)
    }

    private fun play(sourceUrl: String) {
        val headers = parseHeaders(intent.getStringExtra(EXTRA_SOURCE_HEADERS).orEmpty())
        val httpClient = OkHttpClient.Builder()
            .connectTimeout(15, TimeUnit.SECONDS)
            .readTimeout(45, TimeUnit.SECONDS)
            .followRedirects(true)
            .followSslRedirects(true)
            .build()
        val dataSource = OkHttpDataSource.Factory(httpClient)
            .setDefaultRequestProperties(headers)
        val mediaSourceFactory = DefaultMediaSourceFactory(dataSource)
        val mediaItemBuilder = MediaItem.Builder().setUri(sourceUrl)
        val subtitle = intent.getStringExtra(EXTRA_SUBTITLE_URL)
            ?.takeIf { it.isNotBlank() }
            ?.let { if (it.startsWith("/")) BuildConfig.NOVA_API_URL.trimEnd('/') + it else it }
        if (subtitle != null) {
            val mime = if (subtitle.substringBefore("?").lowercase().endsWith(".srt")) {
                "application/x-subrip"
            } else {
                "text/vtt"
            }
            mediaItemBuilder.setSubtitleConfigurations(
                listOf(
                    MediaItem.SubtitleConfiguration.Builder(android.net.Uri.parse(subtitle))
                        .setMimeType(mime)
                        .setLanguage("ar")
                        .setSelectionFlags(C.SELECTION_FLAG_DEFAULT)
                        .build(),
                ),
            )
        }
        val loadControl = DefaultLoadControl.Builder()
            .setBufferDurationsMs(
                15_000,
                50_000,
                1_500,
                3_000,
            )
            .build()
        player = ExoPlayer.Builder(this)
            .setMediaSourceFactory(mediaSourceFactory)
            .setLoadControl(loadControl)
            .build()
            .also { exo ->
                playerView?.player = exo
                exo.addListener(object : Player.Listener {
                    override fun onPlayerError(error: PlaybackException) {
                        errorView?.apply {
                            text = "تعذر تشغيل هذا المصدر\nاضغط رجوع واختر مصدرًا آخر"
                            visibility = View.VISIBLE
                        }
                        Toast.makeText(this@PlayerActivity, "خطأ في مصدر الفيديو", Toast.LENGTH_LONG).show()
                    }
                })
                exo.setMediaItem(mediaItemBuilder.build())
                exo.prepare()
                exo.playWhenReady = getSharedPreferences("nova_tv_settings", MODE_PRIVATE)
                    .getBoolean("autoplay", true)
            }
    }

    private fun parseHeaders(raw: String): Map<String, String> {
        val result = linkedMapOf<String, String>()
        runCatching {
            val json = JSONObject(raw.ifBlank { "{}" })
            val keys = json.keys()
            while (keys.hasNext()) {
                val key = keys.next()
                val value = json.optString(key).trim()
                if (key.isNotBlank() && value.isNotBlank()) result[key] = value
            }
        }
        return result
    }

    private fun hideSystemUi() {
        @Suppress("DEPRECATION")
        window.decorView.systemUiVisibility =
            View.SYSTEM_UI_FLAG_FULLSCREEN or
                View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY or
                View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                View.SYSTEM_UI_FLAG_LAYOUT_STABLE
    }

    override fun onBackPressed() {
        finish()
    }

    override fun onDestroy() {
        releasePlayer()
        super.onDestroy()
    }

    private fun releasePlayer() {
        playerView?.player = null
        player?.release()
        player = null
    }
}
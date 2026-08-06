package expo.modules.novamedia3

import android.content.Context
import androidx.media3.common.MediaItem
import androidx.media3.common.util.UnstableApi
import androidx.media3.datasource.okhttp.OkHttpDataSource
import androidx.media3.exoplayer.hls.HlsMediaSource
import androidx.media3.exoplayer.source.MediaSource
import androidx.media3.exoplayer.source.ProgressiveMediaSource
import okhttp3.OkHttpClient
import org.json.JSONObject
import java.util.concurrent.TimeUnit

@UnstableApi
object NovaMediaSourceFactory {

  private val okHttpClient: OkHttpClient by lazy {
    OkHttpClient.Builder()
      .connectTimeout(15, TimeUnit.SECONDS)
      .readTimeout(30, TimeUnit.SECONDS)
      .followRedirects(true)
      .build()
  }

  fun buildMediaSource(context: Context, url: String, headersJson: String): MediaSource {
    val headers = parseHeaders(headersJson)

    val dataSourceFactory = OkHttpDataSource.Factory(okHttpClient).apply {
      if (headers.isNotEmpty()) {
        setDefaultRequestProperties(headers)
      }
    }

    val mediaItem = MediaItem.fromUri(url)

    return if (isHls(url)) {
      HlsMediaSource.Factory(dataSourceFactory).createMediaSource(mediaItem)
    } else {
      ProgressiveMediaSource.Factory(dataSourceFactory).createMediaSource(mediaItem)
    }
  }

  private fun isHls(url: String): Boolean {
    val lower = url.lowercase().substringBefore("?")
    return lower.endsWith(".m3u8") || lower.endsWith(".m3u") || lower.contains("/hls/")
  }

  private fun parseHeaders(headersJson: String): Map<String, String> {
    return try {
      val obj = JSONObject(headersJson.ifBlank { "{}" })
      val map = mutableMapOf<String, String>()
      val keys = obj.keys()
      while (keys.hasNext()) {
        val key = keys.next()
        map[key] = obj.getString(key)
      }
      map
    } catch (_: Exception) {
      emptyMap()
    }
  }
}
# Last build: 2026-08-06T16:54:52Z

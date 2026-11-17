package expo.modules.novamedia3

import android.content.Context
import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
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
      // A slow signed CDN response must not be treated as a dead source
      // while ExoPlayer is building its safety buffer.
      .readTimeout(45, TimeUnit.SECONDS)
      .followRedirects(true)
      .build()
  }

  /** Plain data source factory (no custom headers) — used for subtitle tracks, which don't need Referer/Origin. */
  fun dataSourceFactory(): OkHttpDataSource.Factory = OkHttpDataSource.Factory(okHttpClient)

  fun buildMediaSource(context: Context, url: String, headersJson: String): MediaSource {
    val headers = parseHeaders(headersJson)

    val dataSourceFactory = OkHttpDataSource.Factory(okHttpClient).apply {
      if (headers.isNotEmpty()) {
        setDefaultRequestProperties(headers)
      }
    }

    /*
     * Mobile sources normally arrive through `/api/anime/hls-proxy`. The
     * query contains an encrypted upstream URL, so looking only for a
     * `.m3u8` suffix misclassifies the source as ProgressiveMediaSource.
     * Anizuno's reliable path is explicit HlsMediaSource + Media3; keep that
     * contract even when the upstream URL is hidden behind Nova's proxy.
     */
    val hls = isHls(url)
    val mediaItem = MediaItem.Builder()
      .setUri(url)
      .apply {
        if (hls) setMimeType(MimeTypes.APPLICATION_M3U8)
      }
      .build()

    return if (hls) {
      HlsMediaSource.Factory(dataSourceFactory).createMediaSource(mediaItem)
    } else {
      ProgressiveMediaSource.Factory(dataSourceFactory).createMediaSource(mediaItem)
    }
  }

  private fun isHls(url: String): Boolean {
    val decoded = android.net.Uri.decode(url).lowercase()
    val path = decoded.substringBefore("?")
    return path.endsWith(".m3u8") ||
      path.endsWith(".m3u") ||
      decoded.contains("/api/anime/hls-proxy") ||
      decoded.contains("/proxy/hls") ||
      Regex("/(?:hls|playlist)(?:/|\\?|$)").containsMatchIn(decoded) ||
      decoded.contains("format=m3u8")
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

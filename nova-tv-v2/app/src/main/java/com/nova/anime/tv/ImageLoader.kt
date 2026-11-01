package com.nova.anime.tv

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.util.LruCache
import android.widget.ImageView
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import java.util.concurrent.TimeUnit

object ImageLoader {
    private val cache = object : LruCache<String, Bitmap>(
        (Runtime.getRuntime().maxMemory() / 1024 / 8).toInt().coerceAtLeast(4096),
    ) {
        override fun sizeOf(key: String, value: Bitmap): Int =
            value.byteCount / 1024
    }
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val client = OkHttpClient.Builder()
        .connectTimeout(8, TimeUnit.SECONDS)
        .readTimeout(12, TimeUnit.SECONDS)
        .build()

    fun load(view: ImageView, url: String?) {
        view.tag = url
        view.setImageResource(android.R.drawable.ic_menu_gallery)
        if (url.isNullOrBlank()) return
        cache.get(url)?.let {
            view.setImageBitmap(it)
            return
        }
        scope.launch {
            val bitmap = runCatching {
                val bytes = client.newCall(Request.Builder().url(url).build()).execute().use { response ->
                    if (!response.isSuccessful) return@use null
                    response.body?.bytes()
                } ?: return@runCatching null
                decodeSampled(bytes, view.context.uiProfile().cardWidthDp, view.context.uiProfile().cardHeightDp)
            }.getOrNull()
            withContext(Dispatchers.Main) {
                if (bitmap != null) {
                    cache.put(url, bitmap)
                    if (view.tag == url) view.setImageBitmap(bitmap)
                }
            }
        }
    }

    private fun decodeSampled(bytes: ByteArray, targetWidthDp: Int, targetHeightDp: Int): Bitmap? {
        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
        if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null
        val options = BitmapFactory.Options().apply {
            inSampleSize = calculateSampleSize(bounds, targetWidthDp, targetHeightDp)
            inPreferredConfig = Bitmap.Config.RGB_565
        }
        return BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options)
    }

    private fun calculateSampleSize(
        bounds: BitmapFactory.Options,
        targetWidth: Int,
        targetHeight: Int,
    ): Int {
        var sample = 1
        while (bounds.outWidth / (sample * 2) >= targetWidth &&
            bounds.outHeight / (sample * 2) >= targetHeight
        ) {
            sample *= 2
        }
        return sample
    }
}
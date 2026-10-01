package com.nova.anime.tv

import android.graphics.BitmapFactory
import android.util.LruCache
import android.widget.ImageView
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import java.util.concurrent.TimeUnit

object ImageLoader {
    private val cache = object : LruCache<String, android.graphics.Bitmap>(8 * 1024) {
        override fun sizeOf(key: String, value: android.graphics.Bitmap): Int =
            value.byteCount / 1024
    }
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
        CoroutineScope(Dispatchers.Main).launch {
            val bitmap = withContext(Dispatchers.IO) {
                runCatching {
                    client.newCall(Request.Builder().url(url).build()).execute().use { response ->
                        if (!response.isSuccessful) return@use null
                        response.body?.byteStream()?.use(BitmapFactory::decodeStream)
                    }
                }.getOrNull()
            }
            if (bitmap != null) {
                cache.put(url, bitmap)
                if (view.tag == url) view.setImageBitmap(bitmap)
            }
        }
    }
}
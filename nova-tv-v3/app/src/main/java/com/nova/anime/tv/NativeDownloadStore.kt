package com.nova.anime.tv

import android.app.DownloadManager
import android.content.Context
import android.net.Uri
import android.os.Environment
import org.json.JSONArray
import org.json.JSONObject

data class NativeDownload(
    val requestId: Long,
    val title: String,
    val episode: Int,
    val url: String,
)

/**
 * Metadata for Android's system DownloadManager. The actual bytes stay under
 * the app's Movies/Nova 3 directory and are never copied into Nova's database.
 */
object NativeDownloadStore {
    private const val PREFS = "nova_tv_downloads"
    private const val ITEMS = "items"

    fun enqueue(
        context: Context,
        url: String,
        title: String,
        episode: Int,
        headers: Map<String, String>,
        allowMetered: Boolean = true,
    ): Long {
        require(url.startsWith("http://") || url.startsWith("https://")) { "invalid download URL" }
        val request = DownloadManager.Request(Uri.parse(url))
            .setTitle("$title · الحلقة $episode")
            .setDescription("Nova 3")
            .setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED)
            .setAllowedOverMetered(allowMetered)
            .setAllowedOverRoaming(false)
            .setDestinationInExternalFilesDir(
                context,
                Environment.DIRECTORY_MOVIES,
                "Nova3/${safeFileName(title)}-ep$episode-${url.hashCode().toString().replace("-", "n")}.mp4",
            )
        headers.forEach { (key, value) ->
            if (key.isNotBlank() && value.isNotBlank()) request.addRequestHeader(key, value)
        }
        val manager = context.getSystemService(Context.DOWNLOAD_SERVICE) as DownloadManager
        val requestId = manager.enqueue(request)
        val current = items(context).toMutableList()
        current.removeAll { it.requestId == requestId }
        current.add(0, NativeDownload(requestId, title, episode, url))
        write(context, current)
        return requestId
    }

    fun items(context: Context): List<NativeDownload> {
        val raw = context.applicationContext
            .getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getString(ITEMS, null) ?: return emptyList()
        val array = runCatching { JSONArray(raw) }.getOrNull() ?: return emptyList()
        return (0 until array.length()).mapNotNull { index ->
            val obj = array.optJSONObject(index) ?: return@mapNotNull null
            val requestId = obj.optLong("requestId", -1)
            if (requestId < 0) return@mapNotNull null
            NativeDownload(
                requestId = requestId,
                title = obj.optString("title").ifBlank { "حلقة" },
                episode = obj.optInt("episode"),
                url = obj.optString("url"),
            )
        }
    }

    fun remove(context: Context, requestId: Long) {
        val manager = context.getSystemService(Context.DOWNLOAD_SERVICE) as DownloadManager
        manager.remove(requestId)
        write(context, items(context).filterNot { it.requestId == requestId })
    }

    private fun write(context: Context, values: List<NativeDownload>) {
        val array = JSONArray()
        values.forEach {
            array.put(JSONObject().apply {
                put("requestId", it.requestId)
                put("title", it.title)
                put("episode", it.episode)
                put("url", it.url)
            })
        }
        context.applicationContext
            .getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .putString(ITEMS, array.toString())
            .apply()
    }

    private fun safeFileName(value: String): String =
        value.replace(Regex("[^\\p{L}\\p{N}_ -]"), "")
            .trim()
            .replace(Regex("\\s+"), "-")
            .take(70)
            .ifBlank { "anime" }
}
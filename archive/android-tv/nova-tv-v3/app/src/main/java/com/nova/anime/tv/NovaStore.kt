package com.nova.anime.tv

import android.content.Context
import org.json.JSONArray
import org.json.JSONObject

/**
 * Small, dependency-free local store for the features Anime Slayer users
 * expect between sessions: favourites and continue watching.
 *
 * It intentionally stores only catalog metadata. Playback URLs and tokens
 * are never persisted because they are short-lived and may be user-specific.
 */
object NovaStore {
    private const val PREFS = "nova_tv_library"
    private const val FAVORITES = "favorites"
    private const val RECENT = "recent"
    private const val MAX_RECENT = 30

    private fun prefs(context: Context) =
        context.applicationContext.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    fun isFavorite(context: Context, id: Int): Boolean =
        favorites(context).any { it.id == id }

    fun toggleFavorite(context: Context, item: AnimeItem): Boolean {
        val current = favorites(context).toMutableList()
        val index = current.indexOfFirst { it.id == item.id }
        val added = index < 0
        if (added) {
            current.add(0, item)
        } else {
            current.removeAt(index)
        }
        writeItems(context, FAVORITES, current)
        return added
    }

    fun favorites(context: Context): List<AnimeItem> =
        readItems(context, FAVORITES)

    fun saveRecent(context: Context, item: AnimeItem) {
        val current = recent(context).toMutableList()
        current.removeAll { it.id == item.id }
        current.add(0, item)
        writeItems(context, RECENT, current.take(MAX_RECENT))
    }

    fun recent(context: Context): List<AnimeItem> =
        readItems(context, RECENT)

    fun clear(context: Context) {
        prefs(context).edit().clear().apply()
    }

    private fun readItems(context: Context, key: String): List<AnimeItem> {
        val raw = prefs(context).getString(key, null) ?: return emptyList()
        val array = runCatching { JSONArray(raw) }.getOrNull() ?: return emptyList()
        return (0 until array.length()).mapNotNull { index ->
            parse(array.optJSONObject(index))
        }
    }

    private fun writeItems(context: Context, key: String, items: List<AnimeItem>) {
        val array = JSONArray()
        items.forEach { item ->
            array.put(JSONObject().apply {
                put("id", item.id)
                item.malId?.let { put("malId", it) }
                put("title", item.title)
                item.englishTitle?.let { put("englishTitle", it) }
                item.nativeTitle?.let { put("nativeTitle", it) }
                item.coverUrl?.let { put("coverUrl", it) }
                item.bannerUrl?.let { put("bannerUrl", it) }
                item.description?.let { put("description", it) }
                item.episodes?.let { put("episodes", it) }
                item.score?.let { put("score", it) }
                item.status?.let { put("status", it) }
                item.format?.let { put("format", it) }
                put("genres", JSONArray(item.genres))
                item.season?.let { put("season", it) }
                item.seasonYear?.let { put("seasonYear", it) }
            })
        }
        prefs(context).edit().putString(key, array.toString()).apply()
    }

    private fun parse(obj: JSONObject?): AnimeItem? {
        if (obj == null || obj.optInt("id") <= 0) return null
        val genresArray = obj.optJSONArray("genres") ?: JSONArray()
        val genres = (0 until genresArray.length())
            .map { genresArray.optString(it) }
            .filter { it.isNotBlank() }
        return AnimeItem(
            id = obj.optInt("id"),
            malId = obj.optInt("malId").takeIf { it > 0 },
            title = obj.optString("title").ifBlank { "بدون عنوان" },
            englishTitle = obj.optString("englishTitle").takeIf { it.isNotBlank() },
            nativeTitle = obj.optString("nativeTitle").takeIf { it.isNotBlank() },
            coverUrl = obj.optString("coverUrl").takeIf { it.isNotBlank() },
            bannerUrl = obj.optString("bannerUrl").takeIf { it.isNotBlank() },
            description = obj.optString("description").takeIf { it.isNotBlank() },
            episodes = obj.optInt("episodes").takeIf { it > 0 },
            score = obj.optInt("score").takeIf { it > 0 },
            status = obj.optString("status").takeIf { it.isNotBlank() },
            format = obj.optString("format").takeIf { it.isNotBlank() },
            genres = genres,
            season = obj.optString("season").takeIf { it.isNotBlank() },
            seasonYear = obj.optInt("seasonYear").takeIf { it > 0 },
        )
    }
}

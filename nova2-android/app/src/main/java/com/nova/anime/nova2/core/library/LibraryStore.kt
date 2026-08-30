package com.nova.anime.nova2.core.library

import android.content.Context
import com.nova.anime.nova2.core.catalog.AnimeCard
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.serialization.builtins.ListSerializer
import kotlinx.serialization.json.Json

class LibraryStore(context: Context) {
    private val preferences = context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)
    private val json = Json {
        ignoreUnknownKeys = true
        explicitNulls = false
    }

    private val _favorites = MutableStateFlow(readList(FAVORITES_KEY, ListSerializer(SavedAnime.serializer())))
    val favorites: StateFlow<List<SavedAnime>> = _favorites.asStateFlow()

    private val _history = MutableStateFlow(readList(HISTORY_KEY, ListSerializer(HistoryEntry.serializer())))
    val history: StateFlow<List<HistoryEntry>> = _history.asStateFlow()

    private val _downloads = MutableStateFlow(readList(DOWNLOADS_KEY, ListSerializer(DownloadRecord.serializer())))
    val downloads: StateFlow<List<DownloadRecord>> = _downloads.asStateFlow()

    @Synchronized
    fun toggleFavorite(anime: AnimeCard): Boolean {
        val current = _favorites.value
        val exists = current.any { it.id == anime.id }
        val next = if (exists) {
            current.filterNot { it.id == anime.id }
        } else {
            listOf(
                SavedAnime(
                    id = anime.id,
                    title = anime.title,
                    englishTitle = anime.englishTitle,
                    coverUrl = anime.coverUrl,
                    episodes = anime.episodes,
                    savedAt = now(),
                ),
            ) + current
        }
        setFavorites(next)
        return !exists
    }

    fun isFavorite(animeId: Int): Boolean = _favorites.value.any { it.id == animeId }

    @Synchronized
    fun recordHistory(
        animeId: Int,
        title: String,
        coverUrl: String?,
        episode: Int,
        positionMs: Long = 0L,
        durationMs: Long = 0L,
    ) {
        val next = listOf(
            HistoryEntry(
                animeId = animeId,
                title = title,
                coverUrl = coverUrl,
                episode = episode,
                positionMs = positionMs.coerceAtLeast(0L),
                durationMs = durationMs.coerceAtLeast(0L),
                updatedAt = now(),
            ),
        ) + _history.value.filterNot { it.animeId == animeId && it.episode == episode }
        setHistory(next.take(MAX_HISTORY_ITEMS))
    }

    @Synchronized
    fun removeHistory(entry: HistoryEntry) {
        setHistory(_history.value.filterNot {
            it.animeId == entry.animeId && it.episode == entry.episode
        })
    }

    @Synchronized
    fun addDownload(record: DownloadRecord) {
        setDownloads(listOf(record) + _downloads.value.filterNot { it.downloadId == record.downloadId })
    }

    @Synchronized
    fun updateDownload(record: DownloadRecord) {
        setDownloads(_downloads.value.map {
            if (it.downloadId == record.downloadId) record else it
        })
    }

    @Synchronized
    fun removeDownload(downloadId: Long) {
        setDownloads(_downloads.value.filterNot { it.downloadId == downloadId })
    }

    @Synchronized
    fun clearHistory() = setHistory(emptyList())

    @Synchronized
    fun clearFavorites() = setFavorites(emptyList())

    @Synchronized
    fun clearDownloads() = setDownloads(emptyList())

    private fun setFavorites(value: List<SavedAnime>) {
        _favorites.value = value
        writeList(FAVORITES_KEY, value, ListSerializer(SavedAnime.serializer()))
    }

    private fun setHistory(value: List<HistoryEntry>) {
        _history.value = value
        writeList(HISTORY_KEY, value, ListSerializer(HistoryEntry.serializer()))
    }

    private fun setDownloads(value: List<DownloadRecord>) {
        _downloads.value = value
        writeList(DOWNLOADS_KEY, value, ListSerializer(DownloadRecord.serializer()))
    }

    private fun <T> readList(key: String, serializer: kotlinx.serialization.KSerializer<List<T>>): List<T> {
        val value = preferences.getString(key, null) ?: return emptyList()
        return runCatching { json.decodeFromString(serializer, value) }.getOrDefault(emptyList())
    }

    private fun <T> writeList(
        key: String,
        value: List<T>,
        serializer: kotlinx.serialization.KSerializer<List<T>>,
    ) {
        preferences.edit().putString(key, json.encodeToString(serializer, value)).apply()
    }

    private fun now(): Long = System.currentTimeMillis()

    private companion object {
        const val PREFERENCES_NAME = "nova2_library"
        const val FAVORITES_KEY = "favorites"
        const val HISTORY_KEY = "history"
        const val DOWNLOADS_KEY = "downloads"
        const val MAX_HISTORY_ITEMS = 100
    }
}
package com.nova.anime.nova2.core.library

import kotlinx.serialization.Serializable

@Serializable
data class SavedAnime(
    val id: Int,
    val title: String,
    val englishTitle: String? = null,
    val coverUrl: String? = null,
    val episodes: Int? = null,
    val savedAt: Long = 0L,
)

@Serializable
data class HistoryEntry(
    val animeId: Int,
    val title: String,
    val coverUrl: String? = null,
    val episode: Int,
    val positionMs: Long = 0L,
    val durationMs: Long = 0L,
    val updatedAt: Long = 0L,
)

@Serializable
data class DownloadRecord(
    val downloadId: Long,
    val animeId: Int,
    val title: String,
    val episode: Int,
    val quality: String,
    val mimeType: String = "video/mp4",
    val localUri: String? = null,
    val state: DownloadState = DownloadState.QUEUED,
    val createdAt: Long = 0L,
)

@Serializable
enum class DownloadState {
    QUEUED,
    RUNNING,
    PAUSED,
    COMPLETE,
    FAILED,
    REMOVED,
}
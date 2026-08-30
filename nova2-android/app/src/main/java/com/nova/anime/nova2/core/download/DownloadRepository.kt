package com.nova.anime.nova2.core.download

import android.app.DownloadManager
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Environment
import com.nova.anime.nova2.core.catalog.AnimeDetails
import com.nova.anime.nova2.core.catalog.EpisodeItem
import com.nova.anime.nova2.core.library.DownloadRecord
import com.nova.anime.nova2.core.library.DownloadState
import com.nova.anime.nova2.core.library.LibraryStore
import com.nova.anime.nova2.core.network.NovaApiClient
import com.nova.anime.nova2.core.playback.PlaybackSource
import java.util.Locale

class DownloadRepository(
    context: Context,
    private val libraryStore: LibraryStore,
    private val apiClient: NovaApiClient,
) {
    private val appContext = context.applicationContext
    private val downloadManager =
        appContext.getSystemService(DownloadManager::class.java)

    fun enqueue(
        details: AnimeDetails,
        episode: EpisodeItem,
        source: PlaybackSource,
    ): DownloadRecord? {
        val downloadUrl = apiClient.buildDownloadUrl(source.site, source.url) ?: return null

        val safeTitle = sourceName(details.card.title)
        val safeQuality = sourceName(source.quality)
        val request = DownloadManager.Request(Uri.parse(downloadUrl))
            .setTitle("${details.card.title} · الحلقة ${episode.number}")
            .setDescription("Anime NOVA 2")
            .setMimeType("video/mp4")
            .setNotificationVisibility(
                DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED,
            )
            .setDestinationInExternalFilesDir(
                appContext,
                Environment.DIRECTORY_MOVIES,
                "Nova2/$safeTitle/episode-${episode.number}-$safeQuality.mp4",
            )
        apiClient.mediaRequestHeaders().forEach { (name, value) ->
            if (name.isNotBlank() && value.isNotBlank()) request.addRequestHeader(name, value)
        }
        val id = downloadManager.enqueue(request)
        return DownloadRecord(
            downloadId = id,
            animeId = details.card.id,
            title = details.card.title,
            episode = episode.number,
            quality = source.quality,
            createdAt = System.currentTimeMillis(),
        ).also(libraryStore::addDownload)
    }

    fun refresh(): List<DownloadRecord> {
        val refreshed = libraryStore.downloads.value.map(::queryRecord)
        refreshed.forEach { record ->
            if (record.state == DownloadState.REMOVED) {
                libraryStore.removeDownload(record.downloadId)
            } else {
                libraryStore.updateDownload(record)
            }
        }
        return libraryStore.downloads.value
    }

    fun cancel(record: DownloadRecord) {
        downloadManager.remove(record.downloadId)
        libraryStore.removeDownload(record.downloadId)
    }

    fun openIntent(record: DownloadRecord): Intent? {
        val uri = record.localUri?.let(Uri::parse) ?: queryUri(record.downloadId) ?: return null
        return Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(uri, record.mimeType)
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
        }
    }

    private fun queryRecord(record: DownloadRecord): DownloadRecord {
        val cursor = runCatching {
            downloadManager.query(DownloadManager.Query().setFilterById(record.downloadId))
        }.getOrNull() ?: return record
        cursor.use {
            if (!it.moveToFirst()) return record.copy(state = DownloadState.REMOVED)
            val status = it.getInt(it.getColumnIndexOrThrow(DownloadManager.COLUMN_STATUS))
            val state = when (status) {
                DownloadManager.STATUS_PENDING -> DownloadState.QUEUED
                DownloadManager.STATUS_RUNNING -> DownloadState.RUNNING
                DownloadManager.STATUS_PAUSED -> DownloadState.PAUSED
                DownloadManager.STATUS_SUCCESSFUL -> DownloadState.COMPLETE
                DownloadManager.STATUS_FAILED -> DownloadState.FAILED
                else -> record.state
            }
            val uri = it.getString(
                it.getColumnIndexOrThrow(DownloadManager.COLUMN_LOCAL_URI),
            )
            return record.copy(state = state, localUri = uri ?: record.localUri)
        }
    }

    private fun queryUri(downloadId: Long): Uri? {
        val cursor = runCatching {
            downloadManager.query(DownloadManager.Query().setFilterById(downloadId))
        }.getOrNull() ?: return null
        cursor.use {
            if (!it.moveToFirst()) return null
            val uri = it.getString(it.getColumnIndexOrThrow(DownloadManager.COLUMN_LOCAL_URI))
            return uri?.let(Uri::parse)
        }
    }

    private fun sourceName(value: String): String =
        value.lowercase(Locale.ROOT)
            .replace(Regex("[^a-z0-9\\u0600-\\u06ff]+"), "-")
            .trim('-')
            .take(60)
            .ifBlank { "anime" }
}
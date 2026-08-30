package com.nova.anime.nova2.ui

import android.content.Context
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.FilterChip
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.MediaItem.SubtitleConfiguration
import androidx.media3.common.MimeTypes
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.datasource.DefaultDataSource
import androidx.media3.datasource.okhttp.OkHttpDataSource
import androidx.media3.ui.PlayerView
import com.nova.anime.nova2.core.catalog.AnilistRepository
import com.nova.anime.nova2.core.catalog.AnimeDetails
import com.nova.anime.nova2.core.catalog.EpisodeItem
import com.nova.anime.nova2.core.download.DownloadRepository
import com.nova.anime.nova2.core.library.LibraryStore
import com.nova.anime.nova2.core.network.NovaApiClient
import com.nova.anime.nova2.core.playback.PlaybackRepository
import com.nova.anime.nova2.core.playback.PlaybackSource
import com.nova.anime.nova2.core.playback.PlaybackType
import com.nova.anime.nova2.core.playback.SubtitleTrack
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.CancellationException

@Composable
fun WatchScreen(
    repository: AnilistRepository,
    playbackRepository: PlaybackRepository,
    libraryStore: LibraryStore,
    downloadRepository: DownloadRepository,
    id: Int,
    episodeNumber: Int,
    onBack: () -> Unit,
) {
    var details by remember { mutableStateOf<AnimeDetails?>(null) }
    var sources by remember { mutableStateOf<List<PlaybackSource>>(emptyList()) }
    var subtitles by remember { mutableStateOf<List<SubtitleTrack>>(emptyList()) }
    var selectedSource by remember { mutableStateOf<PlaybackSource?>(null) }
    var selectedSubtitle by remember { mutableStateOf<SubtitleTrack?>(null) }
    var loading by remember { mutableStateOf(true) }
    var error by remember { mutableStateOf<String?>(null) }
    var downloadMessage by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(id, episodeNumber) {
        loading = true
        error = null
        try {
            val loaded = repository.details(id)
            val episode = EpisodeItem(episodeNumber)
            coroutineScope {
                val sourceJob = async {
                    val found = mutableListOf<PlaybackSource>()
                    playbackRepository.streamSources(loaded, episode) { source ->
                        found += source
                        sources = found.sortedWith(
                            compareByDescending<PlaybackSource> { it.qualityRank }
                                .thenBy { it.site },
                        )
                        val embedded = found.flatMap { it.embeddedSubtitles }
                        if (embedded.isNotEmpty()) {
                            subtitles = (subtitles + embedded).distinctBy { it.url }
                            if (selectedSubtitle == null) selectedSubtitle = embedded.first()
                        }
                        if (selectedSource == null) selectedSource = source
                    }
                    found
                }
                val subtitleJob = async {
                    playbackRepository.loadSubtitles(loaded, episode)
                }
                sourceJob.await()
                val tracks = subtitleJob.await()
                subtitles = (subtitles + tracks).distinctBy { it.url }
                if (selectedSubtitle == null) selectedSubtitle = subtitles.firstOrNull()
            }
            details = loaded
            libraryStore.recordHistory(
                animeId = loaded.card.id,
                title = loaded.card.title,
                coverUrl = loaded.card.coverUrl,
                episode = episodeNumber,
            )
            loading = false
            if (sources.isEmpty()) error = "لم يتم العثور على مصدر تشغيل لهذه الحلقة"
        } catch (cancelled: CancellationException) {
            throw cancelled
        } catch (failure: Exception) {
            loading = false
            error = failure.message ?: "تعذر تجهيز الحلقة للمشاهدة"
        }
    }

    val title = details?.card?.title ?: "المشاهدة"
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(vertical = 16.dp),
    ) {
        item {
            Row(
                modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Button(onClick = onBack) { Text("رجوع") }
                Text(
                    "$title · الحلقة $episodeNumber",
                    style = MaterialTheme.typography.titleLarge,
                    modifier = Modifier.padding(start = 12.dp),
                )
            }
        }
        if (selectedSource != null) {
            item {
                PlayerSurface(
                    source = selectedSource!!,
                    subtitle = selectedSubtitle,
                    apiClient = playbackRepository.apiClient,
                    onProgress = { positionMs, durationMs ->
                        details?.let { current ->
                            libraryStore.recordHistory(
                                animeId = current.card.id,
                                title = current.card.title,
                                coverUrl = current.card.coverUrl,
                                episode = episodeNumber,
                                positionMs = positionMs,
                                durationMs = durationMs,
                            )
                        }
                    },
                )
            }
        } else if (loading) {
            item {
                Column(
                    modifier = Modifier.fillMaxWidth().height(260.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center,
                ) {
                    CircularProgressIndicator()
                    Text("جاري تجهيز مصادر المشاهدة…", modifier = Modifier.padding(top = 12.dp))
                }
            }
        }
        error?.let { message ->
            item { Text(message, modifier = Modifier.padding(16.dp), color = MaterialTheme.colorScheme.error) }
        }
        if (sources.isNotEmpty()) {
            item {
                Text(
                    "المصادر",
                    style = MaterialTheme.typography.titleLarge,
                    modifier = Modifier.padding(start = 16.dp, top = 18.dp, end = 16.dp),
                )
            }
            item {
                LazyRow(
                    modifier = Modifier.fillMaxWidth().padding(16.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    items(sources, key = { it.key }) { source ->
                        FilterChip(
                            selected = source.key == selectedSource?.key,
                            onClick = { selectedSource = source },
                            label = { Text("${source.site} · ${source.quality}") },
                        )
                    }
                }
            }
            item {
                Column(modifier = Modifier.padding(horizontal = 16.dp)) {
                    Button(
                        enabled = details != null &&
                            selectedSource?.let {
                                playbackRepository.apiClient.buildDownloadUrl(it.site, it.url) != null
                            } == true,
                        onClick = {
                            val currentDetails = details
                            val currentSource = selectedSource
                            val record = if (currentDetails != null && currentSource != null) {
                                runCatching {
                                    downloadRepository.enqueue(
                                        currentDetails,
                                        EpisodeItem(episodeNumber),
                                        currentSource,
                                    )
                                }.getOrNull()
                            } else {
                                null
                            }
                            downloadMessage = if (record != null) {
                                "تمت إضافة الحلقة إلى التنزيلات"
                            } else {
                                "التنزيل متاح للمصادر المسموح بها عبر خادم Nova فقط"
                            }
                        },
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Text("تنزيل الحلقة كـ MP4")
                    }
                    downloadMessage?.let {
                        Text(
                            it,
                            modifier = Modifier.padding(top = 4.dp),
                            color = MaterialTheme.colorScheme.secondary,
                        )
                    }
                }
            }
            }
        }
        if (subtitles.isNotEmpty()) {
            item {
                Text(
                    "الترجمة",
                    style = MaterialTheme.typography.titleLarge,
                    modifier = Modifier.padding(start = 16.dp, top = 8.dp, end = 16.dp),
                )
            }
            item {
                LazyRow(
                    modifier = Modifier.fillMaxWidth().padding(16.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    item {
                        FilterChip(
                            selected = selectedSubtitle == null,
                            onClick = { selectedSubtitle = null },
                            label = { Text("بدون ترجمة") },
                        )
                    }
                    items(subtitles, key = { it.key }) { track ->
                        FilterChip(
                            selected = track.key == selectedSubtitle?.key,
                            onClick = { selectedSubtitle = track },
                            label = { Text(track.label) },
                        )
                    }
                }
            }
        }
        if (!loading && sources.isEmpty() && error == null) {
            item { Text("لا توجد مصادر تشغيل متاحة", modifier = Modifier.padding(16.dp)) }
        }
    }
}

@Composable
private fun PlayerSurface(
    source: PlaybackSource,
    subtitle: SubtitleTrack?,
    apiClient: NovaApiClient,
    onProgress: (positionMs: Long, durationMs: Long) -> Unit,
) {
    val context = LocalContext.current
    var playbackError by remember(source.key, subtitle?.key) { mutableStateOf<String?>(null) }
    val player = remember(source.key, subtitle?.key) {
        createPlayer(context, source, subtitle, apiClient) {
            playbackError = "تعذر تشغيل هذا المصدر. جرّب مصدرًا آخر."
        }
    }

    DisposableEffect(player) {
        onDispose { player.release() }
    }

    LaunchedEffect(player) {
        while (true) {
            kotlinx.coroutines.delay(10_000)
            val position = player.currentPosition
            val duration = player.duration
            if (position >= 0L && duration > 0L) {
                onProgress(position, duration)
            }
        }
    }

    Column {
        AndroidView(
            factory = {
                PlayerView(it).apply {
                    this.player = player
                    useController = true
                    keepScreenOn = true
                }
            },
            modifier = Modifier.fillMaxWidth().height(240.dp),
            update = { it.player = player },
        )
        playbackError?.let {
            Text(it, color = MaterialTheme.colorScheme.error, modifier = Modifier.padding(horizontal = 16.dp, vertical = 8.dp))
        }
    }
}

private fun createPlayer(
    context: Context,
    source: PlaybackSource,
    subtitle: SubtitleTrack?,
    apiClient: NovaApiClient,
    onError: () -> Unit,
): ExoPlayer {
    val headers = apiClient.mediaRequestHeaders() + source.headers
    val httpFactory = OkHttpDataSource.Factory(okhttp3.OkHttpClient.Builder().build())
        .setDefaultRequestProperties(headers)
    val dataSourceFactory = DefaultDataSource.Factory(context, httpFactory)
    val mediaItemBuilder = MediaItem.Builder()
        .setUri(source.url)
        .setMimeType(
            if (source.type == PlaybackType.HLS) MimeTypes.APPLICATION_M3U8
            else MimeTypes.VIDEO_MP4,
        )
    subtitle?.let {
        mediaItemBuilder.setSubtitleConfigurations(
            listOf(
                SubtitleConfiguration.Builder(android.net.Uri.parse(it.url))
                    .setMimeType(subtitleMimeType(it.url))
                    .setLanguage(it.language)
                    .setLabel(it.label)
                    .setSelectionFlags(C.SELECTION_FLAG_DEFAULT)
                    .build(),
            ),
        )
    }
    val player = ExoPlayer.Builder(context)
        .setMediaSourceFactory(androidx.media3.exoplayer.source.DefaultMediaSourceFactory(dataSourceFactory))
        .build()
    player.addListener(object : Player.Listener {
        override fun onPlayerError(error: PlaybackException) {
            onError()
        }
    })
    player.setMediaItem(mediaItemBuilder.build())
    player.prepare()
    player.playWhenReady = true
    return player
}

private fun subtitleMimeType(url: String): String =
    if (url.substringBefore('?').lowercase().endsWith(".srt")) MimeTypes.APPLICATION_SUBRIP
    else MimeTypes.TEXT_VTT
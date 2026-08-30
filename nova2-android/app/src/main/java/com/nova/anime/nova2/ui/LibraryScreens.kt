package com.nova.anime.nova2.ui

import android.content.ActivityNotFoundException
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil.compose.AsyncImage
import com.nova.anime.nova2.core.download.DownloadRepository
import com.nova.anime.nova2.core.library.DownloadRecord
import com.nova.anime.nova2.core.library.DownloadState
import com.nova.anime.nova2.core.library.HistoryEntry
import com.nova.anime.nova2.core.library.LibraryStore
import com.nova.anime.nova2.core.library.SavedAnime

@Composable
fun LibraryScreen(
    libraryStore: LibraryStore,
    downloadRepository: DownloadRepository,
    onOpenDetails: (Int) -> Unit,
    onOpenWatch: (Int, Int) -> Unit,
    onBack: () -> Unit,
) {
    val favorites by libraryStore.favorites.collectAsStateWithLifecycle()
    val history by libraryStore.history.collectAsStateWithLifecycle()
    val downloads by libraryStore.downloads.collectAsStateWithLifecycle()
    var selectedTab by rememberSaveable { mutableIntStateOf(0) }

    LaunchedEffect(Unit) {
        downloadRepository.refresh()
    }

    CatalogScaffold(title = "مكتبتي", onBack = onBack) {
        item {
            TabRow(selectedTabIndex = selectedTab) {
                listOf("المفضلة", "السجل", "التنزيلات").forEachIndexed { index, label ->
                    Tab(
                        selected = selectedTab == index,
                        onClick = { selectedTab = index },
                        text = { Text(label) },
                    )
                }
            }
        }
        item {
            when (selectedTab) {
                0 -> FavoritesContent(favorites, onOpenDetails, libraryStore)
                1 -> HistoryContent(history, onOpenWatch, libraryStore)
                else -> DownloadsContent(downloads, downloadRepository)
            }
        }
    }
}

@Composable
private fun FavoritesContent(
    favorites: List<SavedAnime>,
    onOpenDetails: (Int) -> Unit,
    libraryStore: LibraryStore,
) {
    if (favorites.isEmpty()) {
        EmptyLibraryMessage("لم تضف أي عمل إلى المفضلة بعد")
        return
    }
    Column {
        favorites.forEach { anime ->
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .clickable { onOpenDetails(anime.id) }
                    .padding(horizontal = 16.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                AsyncImage(
                    model = anime.coverUrl,
                    contentDescription = anime.title,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.size(64.dp, 88.dp),
                )
                Column(
                    modifier = Modifier.weight(1f).padding(horizontal = 12.dp),
                ) {
                    Text(anime.title, style = MaterialTheme.typography.titleMedium)
                    anime.englishTitle?.let { Text(it, style = MaterialTheme.typography.bodySmall) }
                }
                Button(onClick = { libraryStore.toggleFavorite(anime.toAnimeCard()) }) {
                    Text("حذف")
                }
            }
        }
    }
}

@Composable
private fun HistoryContent(
    history: List<HistoryEntry>,
    onOpenWatch: (Int, Int) -> Unit,
    libraryStore: LibraryStore,
) {
    if (history.isEmpty()) {
        EmptyLibraryMessage("سيظهر هنا ما شاهدته")
        return
    }
    Column {
        history.forEach { entry ->
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .clickable { onOpenWatch(entry.animeId, entry.episode) }
                    .padding(horizontal = 16.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                AsyncImage(
                    model = entry.coverUrl,
                    contentDescription = entry.title,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.size(64.dp, 88.dp),
                )
                Column(
                    modifier = Modifier.weight(1f).padding(horizontal = 12.dp),
                ) {
                    Text(entry.title, style = MaterialTheme.typography.titleMedium)
                    Text("الحلقة ${entry.episode}", style = MaterialTheme.typography.bodyMedium)
                    if (entry.durationMs > 0L) {
                        Text(
                            "التقدم ${progressPercent(entry.positionMs, entry.durationMs)}٪",
                            style = MaterialTheme.typography.bodySmall,
                        )
                    }
                }
                Button(onClick = { libraryStore.removeHistory(entry) }) {
                    Text("حذف")
                }
            }
        }
    }
}

@Composable
private fun DownloadsContent(
    downloads: List<DownloadRecord>,
    downloadRepository: DownloadRepository,
) {
    val context = LocalContext.current
    if (downloads.isEmpty()) {
        EmptyLibraryMessage("لا توجد تنزيلات")
        return
    }
    Column {
        downloads.forEach { record ->
            Row(
                modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(record.title, style = MaterialTheme.typography.titleMedium)
                    Text(
                        "الحلقة ${record.episode} · ${record.quality}",
                        style = MaterialTheme.typography.bodyMedium,
                    )
                    Text(downloadStateLabel(record.state), style = MaterialTheme.typography.bodySmall)
                }
                if (record.state == DownloadState.COMPLETE) {
                    Button(onClick = {
                        try {
                            downloadRepository.openIntent(record)?.let(context::startActivity)
                        } catch (_: ActivityNotFoundException) {
                            // The file remains available in the app's Movies folder.
                        }
                    }) {
                        Text("فتح")
                    }
                } else {
                    Button(onClick = { downloadRepository.cancel(record) }) {
                        Text("إلغاء")
                    }
                }
            }
        }
    }
}

@Composable
private fun EmptyLibraryMessage(message: String) {
    Text(
        text = message,
        modifier = Modifier.fillMaxWidth().padding(32.dp),
        color = MaterialTheme.colorScheme.onSurfaceVariant,
    )
}

@Composable
fun SettingsScreen(
    libraryStore: LibraryStore,
    onSignOut: () -> Unit,
    onBack: () -> Unit,
) {
    var confirmation by remember { mutableStateOf<SettingsAction?>(null) }
    CatalogScaffold(title = "الإعدادات", onBack = onBack) {
        item {
            Column(modifier = Modifier.padding(16.dp)) {
                Text("التخزين المحلي", style = MaterialTheme.typography.titleLarge)
                Text(
                    "المفضلة والسجل محفوظان على هذا الجهاز فقط.",
                    modifier = Modifier.padding(top = 6.dp),
                )
                Button(
                    onClick = { confirmation = SettingsAction.CLEAR_HISTORY },
                    modifier = Modifier.fillMaxWidth().padding(top = 14.dp),
                ) {
                    Text("مسح سجل المشاهدة")
                }
                Button(
                    onClick = { confirmation = SettingsAction.CLEAR_FAVORITES },
                    modifier = Modifier.fillMaxWidth().padding(top = 8.dp),
                ) {
                    Text("مسح المفضلة")
                }
                Text("الحساب", style = MaterialTheme.typography.titleLarge, modifier = Modifier.padding(top = 26.dp))
                Button(
                    onClick = onSignOut,
                    modifier = Modifier.fillMaxWidth().padding(top = 8.dp),
                ) {
                    Text("تسجيل الخروج")
                }
            }
        }
    }

    confirmation?.let { action ->
        AlertDialog(
            onDismissRequest = { confirmation = null },
            title = { Text("تأكيد العملية") },
            text = { Text(action.confirmation) },
            confirmButton = {
                Button(onClick = {
                    when (action) {
                        SettingsAction.CLEAR_HISTORY -> libraryStore.clearHistory()
                        SettingsAction.CLEAR_FAVORITES -> libraryStore.clearFavorites()
                    }
                    confirmation = null
                }) {
                    Text("مسح")
                }
            },
            dismissButton = {
                Button(onClick = { confirmation = null }) { Text("إلغاء") }
            },
        )
    }
}

private enum class SettingsAction(val confirmation: String) {
    CLEAR_HISTORY("سيتم حذف سجل المشاهدة من هذا الجهاز."),
    CLEAR_FAVORITES("سيتم حذف جميع الأعمال من المفضلة على هذا الجهاز."),
}

private fun progressPercent(positionMs: Long, durationMs: Long): Int =
    ((positionMs.toDouble() / durationMs.toDouble()) * 100.0)
        .toInt()
        .coerceIn(0, 100)

private fun SavedAnime.toAnimeCard() = com.nova.anime.nova2.core.catalog.AnimeCard(
    id = id,
    title = title,
    englishTitle = englishTitle,
    coverUrl = coverUrl,
    episodes = episodes,
)
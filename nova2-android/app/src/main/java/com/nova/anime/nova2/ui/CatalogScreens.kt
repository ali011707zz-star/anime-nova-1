package com.nova.anime.nova2.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.FilterChip
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import com.nova.anime.nova2.core.catalog.AnimeCard
import com.nova.anime.nova2.core.catalog.AnimeDetails
import com.nova.anime.nova2.core.catalog.AnilistRepository
import com.nova.anime.nova2.core.catalog.BrowseFilters
import com.nova.anime.nova2.core.catalog.EpisodeItem
import kotlinx.coroutines.launch

@Composable
fun HomeScreen(
    repository: AnilistRepository,
    onOpenDetails: (Int) -> Unit,
    onOpenBrowse: () -> Unit,
    onOpenSearch: () -> Unit,
) {
    var catalog by remember { mutableStateOf<com.nova.anime.nova2.core.catalog.HomeCatalog?>(null) }
    var error by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(Unit) {
        runCatching { repository.loadHome() }
            .onSuccess { catalog = it; error = null }
            .onFailure { error = it.message ?: "تعذر تحميل الصفحة الرئيسية" }
    }

    CatalogScaffold(title = "الرئيسية") {
        item {
            Row(
                modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                Button(onClick = onOpenSearch, modifier = Modifier.weight(1f)) {
                    Text("بحث")
                }
                Button(onClick = onOpenBrowse, modifier = Modifier.weight(1f)) {
                    Text("تصفح")
                }
            }
        }
        when {
            error != null -> item { ErrorBlock(error!!) }
            catalog == null -> item { LoadingBlock() }
            else -> {
                item { CatalogSection("الأكثر رواجًا", catalog!!.trending, onOpenDetails) }
                item { CatalogSection("الأكثر شعبية", catalog!!.popular, onOpenDetails) }
                item { CatalogSection("يُعرض حاليًا", catalog!!.airing, onOpenDetails) }
                item { CatalogSection("الموسم الحالي", catalog!!.seasonal, onOpenDetails) }
                item { CatalogSection("الأعلى تقييمًا", catalog!!.topRated, onOpenDetails) }
                item { CatalogSection("أفلام الأنمي", catalog!!.movies, onOpenDetails) }
            }
        }
    }
}

@Composable
fun BrowseScreen(
    repository: AnilistRepository,
    onOpenDetails: (Int) -> Unit,
    onBack: () -> Unit,
) {
    var filters by remember { mutableStateOf(BrowseFilters()) }
    var results by remember { mutableStateOf<List<AnimeCard>>(emptyList()) }
    var loading by remember { mutableStateOf(false) }
    var error by remember { mutableStateOf<String?>(null) }
    var page by remember { mutableStateOf(1) }
    val scope = rememberCoroutineScope()

    LaunchedEffect(filters) {
        loading = true
        error = null
        page = 1
        runCatching { repository.browse(filters, 1) }
            .onSuccess { results = it }
            .onFailure { error = it.message ?: "تعذر تحميل النتائج" }
        loading = false
    }

    CatalogScaffold(title = "تصفح", onBack = onBack) {
        item {
            FilterRail(
                filters = filters,
                onChange = { filters = it },
            )
        }
        if (loading && results.isEmpty()) item { LoadingBlock() }
        error?.let { item { ErrorBlock(it) } }
        items(results, key = { it.id }) { anime ->
            AnimeListRow(anime = anime, onClick = { onOpenDetails(anime.id) })
        }
        if (!loading && results.size >= 30) {
            item {
                Button(
                    onClick = {
                        scope.launch {
                            loading = true
                            val nextPage = page + 1
                            runCatching { repository.browse(filters, nextPage) }
                                .onSuccess {
                                    results = (results + it).distinctBy(AnimeCard::id)
                                    page = nextPage
                                }
                                .onFailure { error = it.message ?: "تعذر تحميل المزيد" }
                            loading = false
                        }
                    },
                    modifier = Modifier.fillMaxWidth().padding(16.dp),
                ) {
                    Text("تحميل المزيد")
                }
            }
        }
        if (loading && results.isNotEmpty()) item { LoadingBlock() }
    }
}

@Composable
fun SearchScreen(
    repository: AnilistRepository,
    onOpenDetails: (Int) -> Unit,
    onBack: () -> Unit,
) {
    var query by remember { mutableStateOf("") }
    var submittedQuery by remember { mutableStateOf<String?>(null) }
    var results by remember { mutableStateOf<List<AnimeCard>>(emptyList()) }
    var loading by remember { mutableStateOf(false) }
    var error by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(submittedQuery) {
        val search = submittedQuery?.trim().orEmpty()
        if (search.isEmpty()) {
            results = emptyList()
            return@LaunchedEffect
        }
        loading = true
        error = null
        runCatching { repository.search(search) }
            .onSuccess { results = it }
            .onFailure { error = it.message ?: "تعذر تنفيذ البحث" }
        loading = false
    }

    CatalogScaffold(title = "بحث", onBack = onBack) {
        item {
            Row(
                modifier = Modifier.fillMaxWidth().padding(16.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                OutlinedTextField(
                    value = query,
                    onValueChange = { query = it },
                    label = { Text("ابحث عن أنمي") },
                    singleLine = true,
                    modifier = Modifier.weight(1f),
                )
                Spacer(Modifier.width(8.dp))
                Button(onClick = { submittedQuery = query }) {
                    Text("بحث")
                }
            }
        }
        if (loading) item { LoadingBlock() }
        error?.let { item { ErrorBlock(it) } }
        items(results, key = { it.id }) { anime ->
            AnimeListRow(anime = anime, onClick = { onOpenDetails(anime.id) })
        }
        if (!loading && submittedQuery != null && results.isEmpty() && error == null) {
            item { Text("لا توجد نتائج", modifier = Modifier.fillMaxWidth().padding(32.dp)) }
        }
    }
}

@Composable
fun DetailsScreen(
    repository: AnilistRepository,
    id: Int,
    onOpenEpisodes: (Int) -> Unit,
    onBack: () -> Unit,
) {
    var details by remember { mutableStateOf<AnimeDetails?>(null) }
    var error by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(id) {
        runCatching { repository.details(id) }
            .onSuccess { details = it }
            .onFailure { error = it.message ?: "تعذر تحميل التفاصيل" }
    }

    CatalogScaffold(title = "التفاصيل", onBack = onBack) {
        when {
            error != null -> item { ErrorBlock(error!!) }
            details == null -> item { LoadingBlock() }
            else -> item {
                DetailContent(details!!, onOpenEpisodes)
            }
        }
    }
}

@Composable
fun EpisodesScreen(
    repository: AnilistRepository,
    id: Int,
    onOpenWatch: (Int, Int) -> Unit,
    onBack: () -> Unit,
) {
    var details by remember { mutableStateOf<AnimeDetails?>(null) }
    var episodes by remember { mutableStateOf<List<EpisodeItem>>(emptyList()) }
    var error by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(id) {
        runCatching {
            val loaded = repository.details(id)
            loaded to repository.episodes(loaded.malId, loaded.card.id, loaded.card.episodes)
        }.onSuccess {
            details = it.first
            episodes = it.second
        }.onFailure { error = it.message ?: "تعذر تحميل الحلقات" }
    }

    CatalogScaffold(title = "الحلقات", onBack = onBack) {
        when {
            error != null -> item { ErrorBlock(error!!) }
            details == null -> item { LoadingBlock() }
            else -> {
                item {
                    Text(
                        text = details!!.card.title,
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier.padding(16.dp),
                    )
                }
                itemsIndexed(episodes, key = { _, episode -> episode.number }) { _, episode ->
                    EpisodeRow(episode, onClick = { onOpenWatch(id, episode.number) })
                }
                if (episodes.isEmpty()) {
                    item { Text("لا توجد حلقات متاحة", modifier = Modifier.padding(16.dp)) }
                }
            }
        }
    }
}

@Composable
private fun CatalogScaffold(
    title: String,
    onBack: (() -> Unit)? = null,
    content: androidx.compose.foundation.lazy.LazyListScope.() -> Unit,
) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(vertical = 16.dp),
    ) {
        item {
            Row(
                modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                onBack?.let {
                    Button(onClick = it) { Text("رجوع") }
                    Spacer(Modifier.width(12.dp))
                }
                Text(title, style = MaterialTheme.typography.headlineMedium)
            }
        }
        content()
    }
}

@Composable
private fun CatalogSection(title: String, items: List<AnimeCard>, onOpenDetails: (Int) -> Unit) {
    if (items.isEmpty()) return
    Column(modifier = Modifier.padding(top = 22.dp)) {
        Text(
            text = title,
            style = MaterialTheme.typography.titleLarge,
            modifier = Modifier.padding(horizontal = 16.dp),
        )
        LazyRow(
            contentPadding = PaddingValues(horizontal = 16.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            items(items.take(12), key = { it.id }) { anime ->
                AnimeCardTile(anime, onClick = { onOpenDetails(anime.id) })
            }
        }
    }
}

@Composable
private fun AnimeCardTile(anime: AnimeCard, onClick: () -> Unit) {
    Column(
        modifier = Modifier.width(132.dp).clickable(onClick = onClick),
    ) {
        AsyncImage(
            model = anime.coverUrl,
            contentDescription = anime.title,
            contentScale = ContentScale.Crop,
            modifier = Modifier.size(width = 132.dp, height = 184.dp)
                .clip(MaterialTheme.shapes.medium),
        )
        Text(
            text = anime.title,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis,
            style = MaterialTheme.typography.bodyMedium,
            modifier = Modifier.padding(top = 6.dp),
        )
        anime.score?.let {
            Text("التقييم ${(it / 10f).let { score -> "%.1f".format(score) }}", style = MaterialTheme.typography.labelSmall)
        }
    }
}

@Composable
private fun AnimeListRow(anime: AnimeCard, onClick: () -> Unit) {
    Row(
        modifier = Modifier.fillMaxWidth().clickable(onClick = onClick).padding(horizontal = 16.dp, vertical = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        AsyncImage(
            model = anime.coverUrl,
            contentDescription = anime.title,
            contentScale = ContentScale.Crop,
            modifier = Modifier.size(width = 76.dp, height = 108.dp).clip(MaterialTheme.shapes.small),
        )
        Column(modifier = Modifier.padding(start = 12.dp)) {
            Text(anime.title, style = MaterialTheme.typography.titleMedium)
            anime.englishTitle?.takeIf { it != anime.title }?.let {
                Text(it, style = MaterialTheme.typography.bodySmall, maxLines = 1, overflow = TextOverflow.Ellipsis)
            }
            Text(
                listOfNotNull(anime.format, anime.status, anime.year?.toString()).joinToString(" • "),
                style = MaterialTheme.typography.bodySmall,
                modifier = Modifier.padding(top = 4.dp),
            )
            anime.score?.let { Text("التقييم ${it / 10f}", style = MaterialTheme.typography.labelSmall) }
        }
    }
}

@Composable
private fun FilterRail(filters: BrowseFilters, onChange: (BrowseFilters) -> Unit) {
    Column(modifier = Modifier.padding(horizontal = 16.dp, vertical = 10.dp)) {
        Text("الترتيب", style = MaterialTheme.typography.titleMedium)
        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.padding(top = 8.dp)) {
            items(listOf("POPULARITY_DESC" to "الأشهر", "SCORE_DESC" to "الأعلى تقييمًا", "TRENDING_DESC" to "الرائج")) { (value, label) ->
                FilterChip(
                    selected = filters.sort == value,
                    onClick = { onChange(filters.copy(sort = value)) },
                    label = { Text(label) },
                )
            }
        }
        Text("النوع", style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(top = 12.dp))
        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.padding(top = 8.dp)) {
            items(listOf(null to "الكل", "TV" to "مسلسل", "MOVIE" to "فيلم", "OVA" to "OVA")) { (value, label) ->
                FilterChip(
                    selected = filters.format == value,
                    onClick = { onChange(filters.copy(format = value)) },
                    label = { Text(label) },
                )
            }
        }
        Text("التصنيف", style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(top = 12.dp))
        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.padding(top = 8.dp)) {
            items(listOf(null to "الكل", "Action" to "أكشن", "Adventure" to "مغامرة", "Comedy" to "كوميدي", "Drama" to "دراما", "Fantasy" to "خيال", "Romance" to "رومانسي", "Sci-Fi" to "خيال علمي")) { (value, label) ->
                FilterChip(
                    selected = filters.genre == value,
                    onClick = { onChange(filters.copy(genre = value)) },
                    label = { Text(label) },
                )
            }
        }
        Text("الحالة", style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(top = 12.dp))
        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.padding(top = 8.dp)) {
            items(listOf(null to "الكل", "RELEASING" to "يُعرض حاليًا", "FINISHED" to "مكتمل", "NOT_YET_RELEASED" to "قريبًا")) { (value, label) ->
                FilterChip(
                    selected = filters.status == value,
                    onClick = { onChange(filters.copy(status = value)) },
                    label = { Text(label) },
                )
            }
        }
        Text("الموسم", style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(top = 12.dp))
        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.padding(top = 8.dp)) {
            items(listOf(null to "الكل", "WINTER" to "شتاء", "SPRING" to "ربيع", "SUMMER" to "صيف", "FALL" to "خريف")) { (value, label) ->
                FilterChip(
                    selected = filters.season == value,
                    onClick = { onChange(filters.copy(season = value)) },
                    label = { Text(label) },
                )
            }
        }
    }
}

@Composable
private fun DetailContent(details: AnimeDetails, onOpenEpisodes: (Int) -> Unit) {
    val card = details.card
    Column(modifier = Modifier.padding(16.dp)) {
        Row(verticalAlignment = Alignment.Top) {
            AsyncImage(
                model = card.coverUrl,
                contentDescription = card.title,
                contentScale = ContentScale.Crop,
                modifier = Modifier.size(width = 128.dp, height = 180.dp).clip(MaterialTheme.shapes.medium),
            )
            Column(modifier = Modifier.padding(start = 14.dp)) {
                Text(card.title, style = MaterialTheme.typography.headlineSmall)
                card.englishTitle?.let { Text(it, style = MaterialTheme.typography.bodyMedium) }
                Text(
                    listOfNotNull(card.format, card.status, card.year?.toString()).joinToString(" • "),
                    style = MaterialTheme.typography.bodySmall,
                    modifier = Modifier.padding(top = 8.dp),
                )
                card.score?.let { Text("التقييم ${it / 10f}", modifier = Modifier.padding(top = 6.dp)) }
            }
        }
        Spacer(Modifier.height(16.dp))
        Button(onClick = { onOpenEpisodes(card.id) }, modifier = Modifier.fillMaxWidth()) {
            Text("عرض الحلقات")
        }
        if (details.description.isNotBlank()) {
            Text("القصة", style = MaterialTheme.typography.titleLarge, modifier = Modifier.padding(top = 20.dp))
            Text(details.description, modifier = Modifier.padding(top = 8.dp))
        }
        if (card.genres.isNotEmpty()) {
            Text("التصنيفات: ${card.genres.joinToString("، ")}", modifier = Modifier.padding(top = 14.dp))
        }
        if (details.studios.isNotEmpty()) {
            Text("الاستوديو: ${details.studios.joinToString("، ")}", modifier = Modifier.padding(top = 8.dp))
        }
        details.durationMinutes?.let {
            Text("المدة: $it دقيقة", modifier = Modifier.padding(top = 8.dp))
        }
        details.nextEpisode?.let {
            Text("الحلقة القادمة: $it", modifier = Modifier.padding(top = 8.dp))
        }
    }
}

@Composable
private fun EpisodeRow(episode: EpisodeItem, onClick: () -> Unit) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(horizontal = 16.dp, vertical = 7.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        AsyncImage(
            model = episode.imageUrl,
            contentDescription = episode.title ?: "الحلقة ${episode.number}",
            contentScale = ContentScale.Crop,
            modifier = Modifier.size(width = 76.dp, height = 48.dp).clip(MaterialTheme.shapes.small),
        )
        Column(modifier = Modifier.padding(start = 12.dp)) {
            Text("الحلقة ${episode.number}", style = MaterialTheme.typography.titleMedium)
            episode.title?.let {
                Text(it, maxLines = 1, overflow = TextOverflow.Ellipsis, style = MaterialTheme.typography.bodySmall)
            }
        }
        Spacer(Modifier.weight(1f))
        Button(onClick = onClick) { Text("مشاهدة") }
    }
}

@Composable
private fun LoadingBlock() {
    Column(
        modifier = Modifier.fillMaxWidth().padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        CircularProgressIndicator()
    }
}

@Composable
private fun ErrorBlock(message: String) {
    Text(
        text = message,
        color = MaterialTheme.colorScheme.error,
        modifier = Modifier.fillMaxWidth().padding(24.dp),
    )
}
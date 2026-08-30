package com.nova.anime.nova2.ui

import android.content.res.Configuration
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Star
import androidx.compose.material.icons.outlined.Download
import androidx.compose.material.icons.outlined.Info
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalDrawerSheet
import androidx.compose.material3.NavigationDrawerItem
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.windowsizeclass.WindowWidthSizeClass
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import com.nova.anime.nova2.core.catalog.AnimeCard

val LocalNovaWidthClass = staticCompositionLocalOf { WindowWidthSizeClass.Compact }

data class NovaLayout(
    val widthDp: Int,
    val isTv: Boolean,
    val columns: Int,
    val horizontalPadding: androidx.compose.ui.unit.Dp,
    val cardWidth: androidx.compose.ui.unit.Dp,
    val heroHeight: androidx.compose.ui.unit.Dp,
)

@Composable
fun rememberNovaLayout(): NovaLayout {
    val configuration = LocalConfiguration.current
    val widthClass = LocalNovaWidthClass.current
    val width = configuration.screenWidthDp.coerceAtLeast(320)
    val height = configuration.screenHeightDp.coerceAtLeast(320)
    val isTv = (configuration.uiMode and Configuration.UI_MODE_TYPE_MASK) ==
        Configuration.UI_MODE_TYPE_TELEVISION || (width >= 1000 && height >= 500)
    val columns = when {
        isTv -> 6
        widthClass == WindowWidthSizeClass.Expanded -> 5
        widthClass == WindowWidthSizeClass.Medium -> 4
        else -> 3
    }
    val padding = when {
        isTv -> 64.dp
        width >= 600 -> 28.dp
        else -> 16.dp
    }
    val available = (width.dp - padding * 2 - 10.dp * (columns - 1)).coerceAtLeast(280.dp)
    return NovaLayout(
        widthDp = width,
        isTv = isTv,
        columns = columns,
        horizontalPadding = padding,
        cardWidth = (available / columns).coerceIn(if (isTv) 150.dp else 96.dp, if (isTv) 230.dp else 190.dp),
        heroHeight = if (isTv) 430.dp else if (width >= 600) 350.dp else 290.dp,
    )
}

@Composable
fun NovaHeader(
    title: String? = null,
    onMenu: (() -> Unit)? = null,
    onBack: (() -> Unit)? = null,
) {
    val layout = rememberNovaLayout()
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = layout.horizontalPadding, vertical = if (layout.isTv) 22.dp else 12.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            onBack?.let {
                NovaIconButton(Icons.Default.ArrowBack, "رجوع", onClick = it)
                Spacer(Modifier.width(8.dp))
            }
            Column {
                Text(
                    text = title ?: "Anime NOVA",
                    style = if (title == null) MaterialTheme.typography.titleLarge else MaterialTheme.typography.headlineMedium,
                    color = MaterialTheme.colorScheme.onBackground,
                )
                if (title == null) {
                    Text(
                        "منصة الأنمي العربية",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }
        }
        onMenu?.let { NovaIconButton(Icons.Default.Menu, "القائمة", it) }
    }
}

@Composable
fun NovaDrawerContent(
    selected: String,
    onSelect: (String) -> Unit,
) {
    val destinations = listOf(
        NovaNavItem("الرئيسية", Icons.Default.Home),
        NovaNavItem("تصفح", Icons.Default.GridView),
        NovaNavItem("بحث", Icons.Default.Search),
        NovaNavItem("مكتبتي", Icons.Default.Bookmark),
        NovaNavItem("الإعدادات", Icons.Outlined.Settings),
    )
    ModalDrawerSheet(
        drawerContainerColor = MaterialTheme.colorScheme.surface,
        drawerShape = RoundedCornerShape(topStart = 24.dp, bottomStart = 24.dp),
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 28.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            Text(
                "Anime NOVA",
                style = MaterialTheme.typography.headlineSmall,
                color = MaterialTheme.colorScheme.primary,
                modifier = Modifier.padding(horizontal = 16.dp, vertical = 12.dp),
            )
            Text(
                "منصة الأنمي العربية",
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(horizontal = 16.dp),
            )
            Spacer(Modifier.height(16.dp))
            destinations.forEach { item ->
                NavigationDrawerItem(
                    label = { Text(item.label) },
                    icon = { Icon(item.icon, contentDescription = item.label) },
                    selected = item.label == selected,
                    onClick = { onSelect(item.label) },
                    shape = RoundedCornerShape(14.dp),
                )
            }
        }
    }
}

@Composable
fun NovaIconButton(icon: ImageVector, description: String, onClick: () -> Unit) {
    var focused by remember { mutableStateOf(false) }
    IconButton(
        onClick = onClick,
        modifier = Modifier
            .size(if (rememberNovaLayout().isTv) 64.dp else 44.dp)
            .onFocusChanged { focused = it.isFocused }
            .focusable(),
    ) {
        Surface(
            shape = RoundedCornerShape(14.dp),
            color = if (focused) MaterialTheme.colorScheme.primary.copy(alpha = .28f) else Color.Transparent,
        ) {
            Icon(icon, description, tint = MaterialTheme.colorScheme.onBackground, modifier = Modifier.padding(9.dp))
        }
    }
}

data class NovaNavItem(val label: String, val icon: ImageVector)

@Composable
fun NovaBottomNavigation(
    selected: String,
    onSelect: (String) -> Unit,
) {
    val layout = rememberNovaLayout()
    val items = listOf(
        NovaNavItem("الرئيسية", Icons.Default.Home),
        NovaNavItem("بحث", Icons.Default.Search),
        NovaNavItem("تصفح", Icons.Default.GridView),
        NovaNavItem("تنزيلاتي", Icons.Outlined.Download),
        NovaNavItem("مكتبتي", Icons.Default.Bookmark),
    )
    Surface(
        color = MaterialTheme.colorScheme.surface.copy(alpha = .98f),
        tonalElevation = 8.dp,
        modifier = Modifier.fillMaxWidth(),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = layout.horizontalPadding / 2, vertical = if (layout.isTv) 10.dp else 6.dp),
            horizontalArrangement = Arrangement.SpaceEvenly,
        ) {
            items.forEach { item ->
                val active = item.label == selected
                NovaNavButton(item, active, layout.isTv) { onSelect(item.label) }
            }
        }
    }
}

@Composable
private fun NovaNavButton(item: NovaNavItem, active: Boolean, tv: Boolean, onClick: () -> Unit) {
    var focused by remember { mutableStateOf(false) }
    Column(
        modifier = Modifier
            .clip(RoundedCornerShape(14.dp))
            .background(
                if (active || focused) MaterialTheme.colorScheme.primary.copy(alpha = if (active) .20f else .30f)
                else Color.Transparent,
            )
            .onFocusChanged { focused = it.isFocused }
            .focusable()
            .clickable(onClick = onClick)
            .padding(horizontal = if (tv) 20.dp else 10.dp, vertical = if (tv) 10.dp else 5.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(2.dp),
    ) {
        Icon(
            item.icon,
            contentDescription = item.label,
            tint = if (active) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.size(if (tv) 28.dp else 20.dp),
        )
        Text(
            item.label,
            color = if (active) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurfaceVariant,
            style = MaterialTheme.typography.labelSmall,
            fontSize = if (tv) 16.sp else 10.sp,
            maxLines = 1,
        )
    }
}

@Composable
fun NovaSection(
    title: String,
    items: List<AnimeCard>,
    onOpenDetails: (Int) -> Unit,
    accent: Color = MaterialTheme.colorScheme.primary,
) {
    if (items.isEmpty()) return
    val layout = rememberNovaLayout()
    Column(modifier = Modifier.padding(top = if (layout.isTv) 34.dp else 24.dp)) {
        Row(
            modifier = Modifier.fillMaxWidth().padding(horizontal = layout.horizontalPadding),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Box(Modifier.size(if (layout.isTv) 10.dp else 7.dp).clip(RoundedCornerShape(50)).background(accent))
            Text(title, style = MaterialTheme.typography.titleLarge, color = MaterialTheme.colorScheme.onBackground)
        }
        LazyRow(
            contentPadding = PaddingValues(horizontal = layout.horizontalPadding, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(if (layout.isTv) 16.dp else 10.dp),
        ) {
            items(items.take(if (layout.isTv) 12 else 14), key = { it.id }) { anime ->
                NovaAnimeCard(anime, layout.cardWidth) { onOpenDetails(anime.id) }
            }
        }
    }
}

@Composable
fun NovaAnimeCard(anime: AnimeCard, width: androidx.compose.ui.unit.Dp, onClick: () -> Unit) {
    val layout = rememberNovaLayout()
    var focused by remember { mutableStateOf(false) }
    val height = width * 1.4f
    Column(
        modifier = Modifier
            .width(width)
            .onFocusChanged { focused = it.isFocused }
            .focusable()
            .clickable(onClick = onClick)
            .then(if (focused && layout.isTv) Modifier.shadow(12.dp, RoundedCornerShape(14.dp)) else Modifier),
        verticalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(height)
                .clip(RoundedCornerShape(14.dp))
                .background(MaterialTheme.colorScheme.surfaceVariant),
        ) {
            AsyncImage(
                model = anime.coverUrl,
                contentDescription = anime.title,
                contentScale = ContentScale.Crop,
                modifier = Modifier.matchParentSize(),
            )
            anime.score?.let {
                Surface(
                    color = Color.Black.copy(alpha = .72f),
                    shape = RoundedCornerShape(6.dp),
                    modifier = Modifier.align(Alignment.BottomStart).padding(6.dp),
                ) {
                    Row(Modifier.padding(horizontal = 5.dp, vertical = 3.dp), verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.Star, "التقييم", tint = Color(0xFFFFD700), modifier = Modifier.size(11.dp))
                        Text("%.1f".format(it / 10f), color = Color(0xFFFFD700), fontSize = 10.sp)
                    }
                }
            }
            if (anime.status == "RELEASING") {
                Surface(
                    color = MaterialTheme.colorScheme.primary,
                    shape = RoundedCornerShape(5.dp),
                    modifier = Modifier.align(Alignment.TopEnd).padding(6.dp),
                ) {
                    Text("جديد", color = Color.White, fontSize = 10.sp, modifier = Modifier.padding(horizontal = 6.dp, vertical = 3.dp))
                }
            }
            if (focused && layout.isTv) {
                Box(Modifier.matchParentSize().border(BorderStroke(3.dp, Color(0xFFC4B5FD)), RoundedCornerShape(14.dp)))
            }
        }
        Text(
            anime.englishTitle ?: anime.title,
            color = MaterialTheme.colorScheme.onBackground,
            style = MaterialTheme.typography.bodyMedium,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis,
        )
        anime.episodes?.let {
            Text("$it حلقة", color = MaterialTheme.colorScheme.onSurfaceVariant, style = MaterialTheme.typography.labelSmall)
        }
    }
}

@Composable
fun NovaAnimeGrid(
    items: List<AnimeCard>,
    onOpenDetails: (Int) -> Unit,
) {
    val layout = rememberNovaLayout()
    Column(
        modifier = Modifier.fillMaxWidth().padding(horizontal = layout.horizontalPadding),
        verticalArrangement = Arrangement.spacedBy(if (layout.isTv) 26.dp else 20.dp),
    ) {
        items.chunked(layout.columns).forEach { rowItems ->
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(if (layout.isTv) 16.dp else 10.dp),
            ) {
                rowItems.forEach { anime ->
                    NovaAnimeCard(anime, layout.cardWidth) { onOpenDetails(anime.id) }
                }
                repeat((layout.columns - rowItems.size).coerceAtLeast(0)) {
                    Spacer(Modifier.width(layout.cardWidth))
                }
            }
        }
    }
}

@Composable
fun NovaHero(
    anime: AnimeCard,
    onDetails: () -> Unit,
    onEpisodes: () -> Unit,
) {
    val layout = rememberNovaLayout()
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .height(layout.heroHeight)
            .clip(RoundedCornerShape(bottomStart = 22.dp, bottomEnd = 22.dp)),
    ) {
        AsyncImage(
            model = anime.bannerUrl ?: anime.coverUrl,
            contentDescription = anime.title,
            contentScale = ContentScale.Crop,
            modifier = Modifier.matchParentSize(),
        )
        Box(
            Modifier.matchParentSize().background(
                Brush.verticalGradient(listOf(Color.Transparent, Color(0xB309090B), Color(0xFF09090B))),
            ),
        )
        Column(
            modifier = Modifier.align(Alignment.BottomStart).padding(
                horizontal = if (layout.isTv) 64.dp else 20.dp,
                vertical = if (layout.isTv) 40.dp else 20.dp,
            ),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Row(horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                anime.genres.take(3).forEach { genre ->
                    AssistChip(onClick = {}, label = { Text(genre, fontSize = if (layout.isTv) 14.sp else 10.sp) })
                }
            }
            Text(
                anime.englishTitle ?: anime.title,
                color = Color.White,
                style = if (layout.isTv) MaterialTheme.typography.displayLarge else MaterialTheme.typography.headlineMedium,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            Text(
                listOfNotNull(anime.format, anime.episodes?.let { "$it حلقة" }, anime.score?.let { "★ %.1f".format(it / 10f) }).joinToString("  •  "),
                color = Color.White.copy(alpha = .75f),
                style = MaterialTheme.typography.bodyMedium,
            )
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(
                    onClick = onEpisodes,
                    colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary),
                ) {
                    Icon(Icons.Default.PlayArrow, "مشاهدة", modifier = Modifier.size(18.dp))
                    Spacer(Modifier.width(5.dp))
                    Text("مشاهدة")
                }
                OutlinedButton(onClick = onDetails, border = BorderStroke(1.dp, Color.White.copy(alpha = .7f))) {
                    Icon(Icons.Outlined.Info, "تفاصيل", modifier = Modifier.size(18.dp))
                    Spacer(Modifier.width(5.dp))
                    Text("تفاصيل")
                }
            }
        }
    }
}
package com.nova.anime.nova2.ui

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val NovaDarkColors = darkColorScheme(
    primary = Color(0xFF8B5CF6),
    secondary = Color(0xFF22C55E),
    background = Color(0xFF09090B),
    surface = Color(0xFF111116),
)

@Composable
fun NovaTheme(content: @Composable () -> Unit) {
    MaterialTheme(
        colorScheme = NovaDarkColors,
        content = content,
    )
}
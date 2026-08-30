package com.nova.anime.nova2.core.playback

data class PlaybackSource(
    val key: String,
    val site: String,
    val name: String,
    val quality: String,
    val qualityRank: Int,
    val url: String,
    val type: PlaybackType,
    val headers: Map<String, String> = emptyMap(),
    val embeddedSubtitles: List<SubtitleTrack> = emptyList(),
)

enum class PlaybackType {
    HLS,
    MP4,
}

data class SubtitleTrack(
    val key: String,
    val language: String,
    val label: String,
    val url: String,
)
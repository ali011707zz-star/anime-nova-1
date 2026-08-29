package com.nova.anime.tv

data class AnimeItem(
    val id: Int,
    val malId: Int?,
    val title: String,
    val englishTitle: String?,
    val nativeTitle: String?,
    val coverUrl: String?,
    val bannerUrl: String?,
    val description: String?,
    val episodes: Int?,
    val score: Int?,
    val status: String?,
    val format: String?,
    val genres: List<String> = emptyList(),
    val season: String? = null,
    val seasonYear: Int? = null,
) {
    val displayTitle: String
        get() = englishTitle?.takeIf { it.isNotBlank() } ?: title
}

data class VideoSource(
    val site: String,
    val name: String,
    val url: String,
    val subtitleUrl: String?,
    val quality: String?,
    val headersJson: String,
    val isEmbed: Boolean,
) {
    val label: String
        get() = listOfNotNull(
            name.takeIf { it.isNotBlank() },
            quality?.takeIf { it.isNotBlank() },
        ).joinToString(" · ").ifBlank { site }
}

data class HomeRows(
    val latest: List<AnimeItem>,
    val popular: List<AnimeItem>,
    val topRated: List<AnimeItem>,
)

data class NovaContentCard(
    val id: String,
    val title: String,
    val subtitle: String? = null,
    val imageUrl: String? = null,
    val type: String = "content",
    val description: String? = null,
)
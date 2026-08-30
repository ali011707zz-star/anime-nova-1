package com.nova.anime.nova2.core.catalog

data class AnimeCard(
    val id: Int,
    val title: String,
    val englishTitle: String? = null,
    val nativeTitle: String? = null,
    val coverUrl: String? = null,
    val bannerUrl: String? = null,
    val score: Int? = null,
    val episodes: Int? = null,
    val format: String? = null,
    val status: String? = null,
    val year: Int? = null,
    val genres: List<String> = emptyList(),
)

data class AnimeDetails(
    val card: AnimeCard,
    val malId: Int? = null,
    val description: String = "",
    val durationMinutes: Int? = null,
    val studios: List<String> = emptyList(),
    val nextEpisode: Int? = null,
)

data class EpisodeItem(
    val number: Int,
    val title: String? = null,
    val imageUrl: String? = null,
)

data class HomeCatalog(
    val trending: List<AnimeCard> = emptyList(),
    val popular: List<AnimeCard> = emptyList(),
    val airing: List<AnimeCard> = emptyList(),
    val seasonal: List<AnimeCard> = emptyList(),
    val topRated: List<AnimeCard> = emptyList(),
    val movies: List<AnimeCard> = emptyList(),
)

data class BrowseFilters(
    val search: String? = null,
    val sort: String = "POPULARITY_DESC",
    val format: String? = null,
    val status: String? = null,
    val genre: String? = null,
    val season: String? = null,
    val year: Int? = null,
)

class CatalogException(message: String) : Exception(message)
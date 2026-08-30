package com.nova.anime.nova2.core.catalog

import com.nova.anime.nova2.core.network.NovaApiClient
import kotlinx.serialization.json.JsonArray
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject
import kotlinx.serialization.json.contentOrNull
import kotlinx.serialization.json.doubleOrNull
import kotlinx.serialization.json.intOrNull
import kotlinx.serialization.json.jsonArray
import kotlinx.serialization.json.jsonObject
import kotlinx.serialization.json.jsonPrimitive
import kotlinx.serialization.json.longOrNull
import kotlinx.serialization.json.buildJsonArray
import kotlinx.serialization.json.buildJsonObject
import kotlinx.serialization.json.put
import kotlinx.serialization.json.JsonPrimitive

class AnilistRepository(
    private val apiClient: NovaApiClient,
) {
    suspend fun loadHome(): HomeCatalog {
        val response = apiClient.queryAniList(
            query = HOME_QUERY,
            variables = buildJsonObject {
                put("season", currentSeason())
                put("year", currentYear())
            },
        )
        val data = response.dataOrThrow()
        return HomeCatalog(
            trending = mediaList(data["trending"]),
            popular = mediaList(data["popular"]),
            airing = mediaList(data["airing"]),
            seasonal = mediaList(data["seasonal"]),
            topRated = mediaList(data["topRated"]),
            movies = mediaList(data["movies"]),
        )
    }

    suspend fun browse(filters: BrowseFilters, page: Int = 1): List<AnimeCard> {
        val response = apiClient.queryAniList(
            query = BROWSE_QUERY,
            variables = filtersToVariables(filters, page),
        )
        return mediaList(response.dataOrThrow()["Page"])
    }

    suspend fun search(query: String, filters: BrowseFilters = BrowseFilters()): List<AnimeCard> {
        val cleanQuery = query.trim()
        val translated = if (cleanQuery.any { it in '\u0600'..'\u06FF' }) {
            runCatching {
                apiClient.translateSearchText(cleanQuery)
                    .string("translated")
                    ?.takeIf { it.isNotBlank() }
            }.getOrNull() ?: cleanQuery
        } else {
            cleanQuery
        }
        return browse(filters.copy(search = translated.takeIf { it.isNotEmpty() }))
    }

    suspend fun details(id: Int): AnimeDetails {
        val response = apiClient.queryAniList(
            query = DETAIL_QUERY,
            variables = buildJsonObject { put("id", id) },
        )
        val media = response.dataOrThrow()["Media"]?.jsonObject
            ?: throw CatalogException("لم يتم العثور على تفاصيل هذا الأنمي")
        return detailsFrom(media)
    }

    suspend fun episodes(
        malId: Int?,
        anilistId: Int,
        totalEpisodes: Int?,
    ): List<EpisodeItem> {
        if (malId == null) {
            return (1..(totalEpisodes ?: 0)).map { EpisodeItem(it) }
        }
        val response = apiClient.fetchEpisodeTitles(malId, anilistId)
        val source = response["episodes"]?.jsonArray ?: JsonArray(emptyList())
        val catalogEpisodes = source.mapNotNull { it.asEpisode() }
        if (catalogEpisodes.isNotEmpty()) return catalogEpisodes
        return (1..(response.int("total") ?: totalEpisodes ?: 0)).map { EpisodeItem(it) }
    }

    private fun filtersToVariables(filters: BrowseFilters, page: Int): JsonObject =
        buildJsonObject {
            put("page", page)
            put("perPage", 30)
            filters.search?.let { put("search", it) }
            filters.genre?.let { put("genre", it) }
            filters.format?.let { put("format", it) }
            filters.status?.let { put("status", it) }
            filters.season?.let { put("season", it) }
            filters.year?.let { put("year", it) }
            put("sort", buildJsonArray { add(JsonPrimitive(filters.sort)) })
        }

    private fun mediaList(page: JsonElement?): List<AnimeCard> =
        page?.jsonObject?.get("media")?.jsonArray
            ?.mapNotNull { it.asAnimeCard() }
            ?.filter { it.genres.none { genre -> genre.equals("Hentai", true) || genre.equals("Ecchi", true) } }
            ?: emptyList()

    private fun JsonElement.asAnimeCard(): AnimeCard? {
        val item = jsonObject
        val id = item.int("id") ?: return null
        val titleObject = item["title"]?.jsonObject
        val romaji = titleObject?.string("romaji")
        val english = titleObject?.string("english")
        val native = titleObject?.string("native")
        val title = romaji ?: english ?: native ?: return null
        val cover = item["coverImage"]?.jsonObject
        val startDate = item["startDate"]?.jsonObject
        return AnimeCard(
            id = id,
            title = title,
            englishTitle = english,
            nativeTitle = native,
            coverUrl = cover?.string("large") ?: cover?.string("extraLarge"),
            bannerUrl = item.string("bannerImage"),
            score = item.double("averageScore")?.toInt(),
            episodes = item.int("episodes"),
            format = item.string("format"),
            status = item.string("status"),
            year = startDate?.int("year") ?: item.int("seasonYear"),
            genres = item["genres"]?.jsonArray?.mapNotNull { it.jsonPrimitive.contentOrNull } ?: emptyList(),
        )
    }

    private fun detailsFrom(item: JsonObject): AnimeDetails {
        val card = item.asAnimeCard() ?: throw CatalogException("بيانات العمل غير صالحة")
        return AnimeDetails(
            card = card,
            malId = item.int("idMal"),
            description = stripHtml(item.string("description")),
            durationMinutes = item.int("duration"),
            studios = item["studios"]?.jsonObject?.get("nodes")?.jsonArray
                ?.mapNotNull { it.jsonObject.string("name") } ?: emptyList(),
            nextEpisode = item["nextAiringEpisode"]?.jsonObject?.int("episode"),
        )
    }

    private fun JsonElement.asEpisode(): EpisodeItem? {
        val item = jsonObject
        val number = item.int("mal_id") ?: item.int("episode_id") ?: return null
        val image = item["images"]?.jsonObject
            ?.get("jpg")?.jsonObject?.string("image_url")
        return EpisodeItem(
            number = number,
            title = item.string("title") ?: item.string("title_romanji"),
            imageUrl = image,
        )
    }

    private fun JsonObject.dataOrThrow(): JsonObject {
        val errors = this["errors"]?.jsonArray
        if (errors != null && errors.isNotEmpty()) {
            val message = errors.firstOrNull()?.jsonObject?.string("message")
                ?: "فشل استعلام الكتالوج"
            throw CatalogException(message)
        }
        return this["data"]?.jsonObject ?: throw CatalogException("استجابة الكتالوج غير صالحة")
    }

    private fun JsonObject.string(key: String): String? =
        this[key]?.jsonPrimitive?.contentOrNull?.takeIf { it.isNotBlank() }

    private fun JsonObject.int(key: String): Int? =
        this[key]?.jsonPrimitive?.intOrNull

    private fun JsonObject.double(key: String): Double? =
        this[key]?.jsonPrimitive?.doubleOrNull

    private fun JsonObject.long(key: String): Long? =
        this[key]?.jsonPrimitive?.longOrNull

    private fun stripHtml(value: String?): String =
        value.orEmpty()
            .replace(Regex("<br\\s*/?>", RegexOption.IGNORE_CASE), "\n")
            .replace(Regex("<[^>]+>"), "")
            .replace("&amp;", "&")
            .replace("&quot;", "\"")
            .replace("&#039;", "'")
            .trim()

    private fun currentSeason(): String {
        val month = currentMonth()
        return when (month) {
            in 4..6 -> "SPRING"
            in 7..9 -> "SUMMER"
            in 10..12 -> "FALL"
            else -> "WINTER"
        }
    }

    private fun currentYear(): Int =
        java.util.Calendar.getInstance().get(java.util.Calendar.YEAR)

    private fun currentMonth(): Int =
        java.util.Calendar.getInstance().get(java.util.Calendar.MONTH) + 1

    private companion object {
        const val MEDIA_FIELDS = """
            id title { romaji english native } coverImage { large extraLarge }
            bannerImage averageScore episodes format status
            startDate { year } genres
        """

        const val HOME_QUERY = """
            query Home(${ '$' }season: MediaSeason!, ${ '$' }year: Int!) {
              trending: Page(page: 1, perPage: 20) {
                media(sort: TRENDING_DESC, type: ANIME, countryOfOrigin: "JP", isAdult: false, genre_not_in: ["Hentai"]) {
                  $MEDIA_FIELDS
                }
              }
              popular: Page(page: 1, perPage: 20) {
                media(sort: POPULARITY_DESC, type: ANIME, countryOfOrigin: "JP", isAdult: false, genre_not_in: ["Hentai"]) {
                  $MEDIA_FIELDS
                }
              }
              airing: Page(page: 1, perPage: 20) {
                media(status: RELEASING, sort: POPULARITY_DESC, type: ANIME, countryOfOrigin: "JP", isAdult: false, genre_not_in: ["Hentai"]) {
                  $MEDIA_FIELDS
                }
              }
              seasonal: Page(page: 1, perPage: 20) {
                media(season: ${ '$' }season, seasonYear: ${ '$' }year, type: ANIME, sort: POPULARITY_DESC, isAdult: false, genre_not_in: ["Hentai"]) {
                  $MEDIA_FIELDS
                }
              }
              topRated: Page(page: 1, perPage: 20) {
                media(sort: SCORE_DESC, type: ANIME, format_in: [TV, MOVIE], countryOfOrigin: "JP", isAdult: false, genre_not_in: ["Hentai"], averageScore_greater: 75) {
                  $MEDIA_FIELDS
                }
              }
              movies: Page(page: 1, perPage: 20) {
                media(format: MOVIE, type: ANIME, sort: POPULARITY_DESC, isAdult: false, genre_not_in: ["Hentai"]) {
                  $MEDIA_FIELDS
                }
              }
            }
        """

        const val BROWSE_QUERY = """
            query Browse(${ '$' }page: Int!, ${ '$' }perPage: Int!, ${ '$' }search: String, ${ '$' }genre: String, ${ '$' }format: MediaFormat, ${ '$' }status: MediaStatus, ${ '$' }season: MediaSeason, ${ '$' }year: Int, ${ '$' }sort: [MediaSort]) {
              Page(page: ${ '$' }page, perPage: ${ '$' }perPage) {
                media(search: ${ '$' }search, type: ANIME, countryOfOrigin: "JP", isAdult: false, genre_not_in: ["Hentai", "Ecchi"], genre: ${ '$' }genre, format: ${ '$' }format, status: ${ '$' }status, season: ${ '$' }season, seasonYear: ${ '$' }year, sort: ${ '$' }sort) {
                  $MEDIA_FIELDS
                }
              }
            }
        """

        const val DETAIL_QUERY = """
            query Detail(${ '$' }id: Int!) {
              Media(id: ${ '$' }id, type: ANIME) {
                id idMal isAdult
                title { romaji english native }
                coverImage { large extraLarge }
                bannerImage description
                episodes duration status format source
                startDate { year month day }
                averageScore popularity favourites genres
                nextAiringEpisode { episode airingAt }
                studios { nodes { name } }
              }
            }
        """
    }
}
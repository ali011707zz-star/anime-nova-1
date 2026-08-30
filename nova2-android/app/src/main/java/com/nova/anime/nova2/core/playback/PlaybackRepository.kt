package com.nova.anime.nova2.core.playback

import com.nova.anime.nova2.core.catalog.AnimeDetails
import com.nova.anime.nova2.core.catalog.EpisodeItem
import com.nova.anime.nova2.core.model.SourceRequest
import com.nova.anime.nova2.core.network.NovaApiClient
import kotlinx.serialization.json.JsonArray
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject
import kotlinx.serialization.json.contentOrNull
import kotlinx.serialization.json.intOrNull
import kotlinx.serialization.json.jsonArray
import kotlinx.serialization.json.jsonObject
import kotlinx.serialization.json.jsonPrimitive

class PlaybackRepository(
    val apiClient: NovaApiClient,
) {
    suspend fun streamSources(
        details: AnimeDetails,
        episode: EpisodeItem,
        onSource: (PlaybackSource) -> Unit,
    ) {
        val request = SourceRequest(
            site = "all",
            title = details.card.title,
            episode = episode.number,
            malId = details.malId,
            anilistId = details.card.id,
            english = details.card.englishTitle,
            native = details.card.nativeTitle,
            format = details.card.format,
            year = details.card.year,
            episodes = details.card.episodes,
        )
        val seen = LinkedHashSet<String>()
        apiClient.streamAnimeSources(request) { event ->
            val source = event.data?.asPlaybackSource(apiClient) ?: return@streamAnimeSources
            if (source.url.isBlank() || !seen.add(source.key)) return@streamAnimeSources
            onSource(source)
        }
    }

    suspend fun loadSubtitles(
        details: AnimeDetails,
        episode: EpisodeItem,
    ): List<SubtitleTrack> {
        val response = apiClient.fetchSubtitleTracks(
            anilistId = details.card.id,
            episode = episode.number,
            title = details.card.title,
            english = details.card.englishTitle,
            malId = details.malId,
        )
        val tracks = response["tracks"]?.jsonArray.orEmpty()
        return tracks.mapNotNull { it.asSubtitleTrack(apiClient) }
            .distinctBy { it.url }
    }

    private fun JsonElement.asPlaybackSource(api: NovaApiClient): PlaybackSource? {
        val item = jsonObjectOrNull() ?: return null
        if (item.string("isEmbed")?.equals("true", ignoreCase = true) == true) return null
        val rawUrl = item.string("directUrl")
            ?: item.string("url")
            ?: return null
        val url = api.resolveUrl(rawUrl)
        if (!url.startsWith("http://") && !url.startsWith("https://")) return null

        val directType = item.string("directType") ?: item.string("type").orEmpty()
        val isHls = directType.equals("hls", ignoreCase = true) ||
            Regex("""\.m3u8(?:[?#]|$)|/hls(?:/|$)|hls-proxy""", RegexOption.IGNORE_CASE)
                .containsMatchIn(rawUrl)
        val site = item.string("site") ?: "unknown"
        val quality = item.string("quality")
            ?: item.string("label")
            ?: item.string("name")
            ?: "غير محددة"
        val rank = item.int("qualityRank") ?: qualityRank(quality)
        val name = item.string("name") ?: item.string("label") ?: site
        val headers = item["headers"]?.jsonObjectOrNull()
            ?.mapNotNull { (key, value) ->
                value.jsonPrimitive.contentOrNull?.let { key to it }
            }?.toMap().orEmpty()
        val subtitles = (item["subtitles"] ?: item["subtitleTracks"])
            ?.jsonArrayOrNull()
            ?.mapNotNull { it.asSubtitleTrack(api) }
            .orEmpty()
            .let { tracks ->
                val single = item.string("subtitleUrl")?.let { raw ->
                    val url = api.resolveUrl(raw)
                    if (url.startsWith("http://") || url.startsWith("https://")) {
                        SubtitleTrack(
                            key = "source|$url",
                            language = "ar",
                            label = "الترجمة المرفقة بالمصدر",
                            url = url,
                        )
                    } else {
                        null
                    }
                }
                if (single == null) tracks else tracks + single
            }
        val key = "$site|$quality|$url"
        return PlaybackSource(
            key = key,
            site = site,
            name = name,
            quality = quality,
            qualityRank = rank,
            url = url,
            type = if (isHls) PlaybackType.HLS else PlaybackType.MP4,
            headers = headers,
            embeddedSubtitles = subtitles,
        )
    }

    private fun JsonElement.asSubtitleTrack(api: NovaApiClient): SubtitleTrack? {
        val item = jsonObjectOrNull() ?: return null
        val rawUrl = item.string("url") ?: item.string("src") ?: return null
        val url = api.resolveUrl(rawUrl)
        if (!url.startsWith("http://") && !url.startsWith("https://")) return null
        val language = item.string("lang") ?: item.string("language") ?: "und"
        val label = item.string("label") ?: when (language.lowercase()) {
            "ar", "ara", "ar-auto" -> "العربية"
            "en", "eng" -> "English"
            else -> language
        }
        return SubtitleTrack(
            key = item.string("id") ?: "$language|$url",
            language = language,
            label = label,
            url = url,
        )
    }

    private fun JsonElement.jsonObjectOrNull(): JsonObject? =
        runCatching { jsonObject }.getOrNull()

    private fun JsonElement.jsonArrayOrNull(): JsonArray? =
        runCatching { jsonArray }.getOrNull()

    private fun JsonObject.string(key: String): String? =
        this[key]?.jsonPrimitive?.contentOrNull?.takeIf { it.isNotBlank() }

    private fun JsonObject.int(key: String): Int? =
        this[key]?.jsonPrimitive?.intOrNull

    private fun qualityRank(value: String): Int {
        val normalized = value.lowercase()
        return when {
            "2160" in normalized || "1440" in normalized || "1080" in normalized ||
                "fhd" in normalized -> 14
            "720" in normalized || normalized.contains("hd") -> 9
            else -> 5
        }
    }
}
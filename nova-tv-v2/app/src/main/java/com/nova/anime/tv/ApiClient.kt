package com.nova.anime.tv

import android.net.Uri
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.withContext
import okhttp3.HttpUrl.Companion.toHttpUrl
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okio.BufferedSource
import org.json.JSONArray
import org.json.JSONObject
import java.io.IOException
import java.util.concurrent.TimeUnit

object ApiClient {
    private val CLIENT_ID get() = BuildConfig.NOVA_CLIENT_ID
    private val VERSION get() = BuildConfig.NOVA_VERSION
    private val PACKAGE_NAME get() = BuildConfig.NOVA_PACKAGE
    private val USER_AGENT get() = "NovaTV/${BuildConfig.NOVA_VERSION} (Android)"
    private val jsonType = "application/json; charset=utf-8".toMediaType()
    private val client = OkHttpClient.Builder()
        .connectTimeout(12, TimeUnit.SECONDS)
        .readTimeout(45, TimeUnit.SECONDS)
        .callTimeout(60, TimeUnit.SECONDS)
        .build()

    private var anonToken: String? = null
    private var anonTokenExp: Long = 0

    private fun baseUrl(): String = BuildConfig.NOVA_API_URL.trimEnd('/')

    private fun commonBuilder(url: String): Request.Builder =
        Request.Builder()
            .url(url)
            .header("Accept", "application/json")
            .header("X-Nova-Client", CLIENT_ID)
            .header("X-Nova-Version", VERSION)
            .header("X-Nova-Package", PACKAGE_NAME)
            .header("User-Agent", USER_AGENT)

    private suspend fun ensureAnonToken(force: Boolean = false): String? = withContext(Dispatchers.IO) {
        val now = System.currentTimeMillis() / 1000
        if (!force && !anonToken.isNullOrBlank() && now < anonTokenExp - 60) return@withContext anonToken
        val request = commonBuilder("${baseUrl()}/api/auth/anon-token")
            .post("{}".toRequestBody(jsonType))
            .build()
        runCatching {
            client.newCall(request).execute().use { response ->
                if (!response.isSuccessful) return@use null
                val body = response.body?.string() ?: return@use null
                val data = JSONObject(body)
                anonToken = data.optString("token").takeIf { it.isNotBlank() }
                anonTokenExp = data.optLong("exp", 0)
                anonToken
            }
        }.getOrNull()
    }

    private suspend fun request(
        httpRequest: Request,
        retryOnToken: Boolean = true,
    ): JSONObject = withContext(Dispatchers.IO) {
        val response = client.newCall(httpRequest).execute()
        response.use {
            val body = it.body?.string().orEmpty()
            if (it.code == 403 && retryOnToken) {
                val code = runCatching { JSONObject(body).optString("code") }.getOrNull()
                if (code == "INVALID_TOKEN") {
                    ensureAnonToken(force = true)
                    val refreshed = anonToken
                    val retry = httpRequest.newBuilder()
                        .removeHeader("X-App-Token")
                        .apply { if (!refreshed.isNullOrBlank()) header("X-App-Token", refreshed) }
                        .build()
                    return@withContext request(retry, retryOnToken = false)
                }
            }
            if (!it.isSuccessful) throw IOException("HTTP ${it.code}: ${body.take(160)}")
            JSONObject(body)
        }
    }

    private suspend fun authenticatedRequest(
        url: String,
        method: String = "GET",
        body: String? = null,
    ): JSONObject {
        val token = ensureAnonToken()
        val builder = commonBuilder(url)
        if (!token.isNullOrBlank()) builder.header("X-App-Token", token)
        if (method == "POST") {
            builder.post((body ?: "{}").toRequestBody(jsonType))
        } else {
            builder.get()
        }
        return request(builder.build())
    }

    suspend fun home(): HomeRows = coroutineSafeHome()

    private suspend fun coroutineSafeHome(): HomeRows = coroutineScope {
        val queries = listOf(
            "latest" to """
                query { Page(page: 1, perPage: 20) {
                  media(sort: TRENDING_DESC, type: ANIME, isAdult: false,
                    genre_not_in: ["Hentai"]) {
                    id title { romaji english native } coverImage { large extraLarge }
                    bannerImage description episodes averageScore status format
                  }
                }
            """.trimIndent(),
            "popular" to """
                query { Page(page: 1, perPage: 20) {
                  media(sort: POPULARITY_DESC, type: ANIME, isAdult: false,
                    genre_not_in: ["Hentai"]) {
                    id title { romaji english native } coverImage { large extraLarge }
                    bannerImage description episodes averageScore status format
                  }
                }
            """.trimIndent(),
            "topRated" to """
                query { Page(page: 1, perPage: 20) {
                  media(sort: SCORE_DESC, type: ANIME, isAdult: false,
                    format_in: [TV, MOVIE], genre_not_in: ["Hentai"]) {
                    id title { romaji english native } coverImage { large extraLarge }
                    bannerImage description episodes averageScore status format
                  }
                }
            """.trimIndent(),
        )
        ensureAnonToken()
        val results = queries.map { (key, query) ->
            async(Dispatchers.IO) {
                key to runCatching { anilist(query) }.getOrDefault(emptyList())
            }
        }.awaitAll().toMap()
        return HomeRows(
            latest = results["latest"].orEmpty(),
            popular = results["popular"].orEmpty(),
            topRated = results["topRated"].orEmpty(),
        )
    }

    suspend fun search(term: String): List<AnimeItem> {
        if (term.trim().length < 2) return emptyList()
        val query = """
            query Search(${"$"}search: String!) {
              Page(page: 1, perPage: 30) {
                media(search: ${"$"}search, type: ANIME, isAdult: false,
                  genre_not_in: ["Hentai"]) {
                  id title { romaji english native } coverImage { large extraLarge }
                  bannerImage description episodes averageScore status format
                }
              }
            }
        """.trimIndent()
        return anilist(query, JSONObject().put("search", term.trim()))
    }

    suspend fun detail(id: Int): AnimeItem? {
        val query = """
            query Detail(${"$"}id: Int!) {
              Media(id: ${"$"}id, type: ANIME) {
                id idMal title { romaji english native }
                coverImage { large extraLarge } bannerImage description episodes
                averageScore status format
              }
            }
        """.trimIndent()
        val data = authenticatedRequest(
            "${baseUrl()}/api/anilist",
            method = "POST",
            body = JSONObject()
                .put("query", query)
                .put("variables", JSONObject().put("id", id))
                .toString(),
        )
        return data.optJSONObject("data")?.optJSONObject("Media")?.let(::parseMedia)
    }

    suspend fun sources(anime: AnimeItem, episode: Int): List<VideoSource> =
        withContext(Dispatchers.IO) {
            val url = baseUrl().toHttpUrl().newBuilder()
                .addPathSegments("api/anime/sources-stream")
                .addQueryParameter("anime", anime.id.toString())
                .addQueryParameter("ep", episode.toString())
                .addQueryParameter("title", anime.title)
                .addQueryParameter("english", anime.englishTitle.orEmpty())
                .addQueryParameter("format", anime.format.orEmpty())
                .addQueryParameter("episodes", anime.episodes?.toString().orEmpty())
                .build()
            val token = ensureAnonToken()
            val builder = commonBuilder(url.toString())
            if (!token.isNullOrBlank()) builder.header("X-App-Token", token)
            builder.header("Accept", "text/event-stream")
            val response = client.newCall(builder.get().build()).execute()
            response.use {
                if (!it.isSuccessful) throw IOException("HTTP ${it.code}")
                val source = it.body?.source() ?: throw IOException("empty source stream")
                parseSse(source)
            }
        }

    private fun parseSse(source: BufferedSource): List<VideoSource> {
        val result = linkedMapOf<String, VideoSource>()
        while (!source.exhausted()) {
            val line = source.readUtf8Line() ?: break
            if (!line.startsWith("data:")) continue
            val payload = line.removePrefix("data:").trim()
            if (payload.isBlank() || payload == "[DONE]") continue
            val obj = runCatching { JSONObject(payload) }.getOrNull() ?: continue
            val direct = obj.optString("directUrl").takeIf { it.isNotBlank() }
            val fallback = obj.optString("url").takeIf { it.isNotBlank() }
            val selected = direct ?: fallback ?: continue
            if (obj.optBoolean("isEmbed", false) && direct.isNullOrBlank()) continue
            val absolute = if (selected.startsWith("/")) baseUrl() + selected else selected
            val sourceItem = VideoSource(
                site = obj.optString("site", "source"),
                name = obj.optString("name").ifBlank { obj.optString("label") },
                url = absolute,
                subtitleUrl = obj.optString("subtitleUrl").takeIf { it.isNotBlank() },
                quality = obj.optString("quality").takeIf { it.isNotBlank() },
                headersJson = obj.optJSONObject("headers")?.toString() ?: "{}",
                isEmbed = obj.optBoolean("isEmbed", false),
            )
            result["${sourceItem.site}|${sourceItem.quality}|${sourceItem.url}"] = sourceItem
        }
        return result.values.sortedWith(
            compareByDescending<VideoSource> { it.quality?.contains("1080") == true }
                .thenByDescending { it.quality?.contains("720") == true }
        )
    }

    private suspend fun anilist(query: String, variables: JSONObject = JSONObject()): List<AnimeItem> {
        val payload = JSONObject().put("query", query).put("variables", variables).toString()
        val data = authenticatedRequest("${baseUrl()}/api/anilist", method = "POST", body = payload)
        val media = data.optJSONObject("data")?.optJSONObject("Page")?.optJSONArray("media")
            ?: JSONArray()
        return (0 until media.length()).mapNotNull { parseMedia(media.optJSONObject(it)) }
    }

    private fun parseMedia(obj: JSONObject?): AnimeItem? {
        if (obj == null || !obj.has("id")) return null
        val title = obj.optJSONObject("title")
        val cover = obj.optJSONObject("coverImage")
        return AnimeItem(
            id = obj.optInt("id"),
            malId = obj.optInt("idMal").takeIf { it > 0 },
            title = title?.optString("romaji").orEmpty().ifBlank { "بدون عنوان" },
            englishTitle = title?.optString("english")?.takeIf { it.isNotBlank() },
            nativeTitle = title?.optString("native")?.takeIf { it.isNotBlank() },
            coverUrl = cover?.optString("extraLarge")?.takeIf { it.isNotBlank() }
                ?: cover?.optString("large")?.takeIf { it.isNotBlank() },
            bannerUrl = obj.optString("bannerImage").takeIf { it.isNotBlank() },
            description = obj.optString("description").takeIf { it.isNotBlank() },
            episodes = obj.optInt("episodes").takeIf { it > 0 },
            score = obj.optInt("averageScore").takeIf { it > 0 },
            status = obj.optString("status").takeIf { it.isNotBlank() },
            format = obj.optString("format").takeIf { it.isNotBlank() },
        )
    }
}
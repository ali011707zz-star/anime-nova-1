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
    private var userToken: String? = null

    fun setUserToken(token: String?) {
        userToken = token?.takeIf { it.isNotBlank() }
    }

    private fun baseUrl(): String = BuildConfig.NOVA_API_URL.trimEnd('/')

    private fun commonBuilder(url: String): Request.Builder =
        Request.Builder()
            .url(url)
            .header("Accept", "application/json")
            .header("X-Nova-Client", CLIENT_ID)
            .header("X-Nova-Version", VERSION)
            .header("X-Nova-Package", PACKAGE_NAME)
            .header("User-Agent", USER_AGENT)
            .apply { userToken?.let { header("X-User-Token", it) } }

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
        when (method.uppercase()) {
            "POST" -> builder.post((body ?: "{}").toRequestBody(jsonType))
            "PATCH" -> builder.patch((body ?: "{}").toRequestBody(jsonType))
            else -> builder.get()
        }
        return request(builder.build())
    }

    suspend fun mediaHeaders(rawHeaders: String = ""): Map<String, String> =
        withContext(Dispatchers.IO) {
            val headers = linkedMapOf<String, String>()
            runCatching {
                val json = JSONObject(rawHeaders.ifBlank { "{}" })
                val keys = json.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    val value = json.optString(key).trim()
                    if (key.isNotBlank() && value.isNotBlank()) headers[key] = value
                }
            }
            headers["X-Nova-Client"] = CLIENT_ID
            headers["X-Nova-Version"] = VERSION
            headers["X-Nova-Package"] = PACKAGE_NAME
            userToken?.let { headers["X-User-Token"] = it }
            ensureAnonToken()?.let { headers["X-App-Token"] = it }
            headers
        }

    suspend fun home(): HomeRows = coroutineSafeHome()

    private suspend fun coroutineSafeHome(): HomeRows = coroutineScope {
        val queries = listOf(
            "latest" to """
                query { Page(page: 1, perPage: 20) {
                  media(sort: TRENDING_DESC, type: ANIME, isAdult: false,
                    genre_not_in: ["Hentai"]) {
                    id title { romaji english native } coverImage { large extraLarge }
                   bannerImage description episodes averageScore status format genres season seasonYear
                  }
                }
            """.trimIndent(),
            "popular" to """
                query { Page(page: 1, perPage: 20) {
                  media(sort: POPULARITY_DESC, type: ANIME, isAdult: false,
                    genre_not_in: ["Hentai"]) {
                    id title { romaji english native } coverImage { large extraLarge }
                   bannerImage description episodes averageScore status format genres season seasonYear
                  }
                }
            """.trimIndent(),
            "topRated" to """
                query { Page(page: 1, perPage: 20) {
                  media(sort: SCORE_DESC, type: ANIME, isAdult: false,
                    format_in: [TV, MOVIE], genre_not_in: ["Hentai"]) {
                    id title { romaji english native } coverImage { large extraLarge }
                   bannerImage description episodes averageScore status format genres season seasonYear
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
        HomeRows(
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
                  bannerImage description episodes averageScore status format genres season seasonYear
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
                averageScore status format genres season seasonYear
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

    suspend fun animationDetail(type: String, id: String): JSONObject =
        authenticatedRequest(
            baseUrl().toHttpUrl().newBuilder()
                .addPathSegments("api/animation/detail")
                .addQueryParameter("type", type)
                .addQueryParameter("id", id)
                .build()
                .toString(),
        )

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

    suspend fun animationSources(
        title: String,
        type: String,
        tmdbId: String,
        season: Int,
        episode: Int,
    ): List<VideoSource> = withContext(Dispatchers.IO) {
        val url = baseUrl().toHttpUrl().newBuilder()
            .addPathSegments("api/animation/sources-stream")
            .addQueryParameter("title", title)
            .addQueryParameter("type", type)
            .addQueryParameter("id", tmdbId)
            .addQueryParameter("season", season.toString())
            .addQueryParameter("ep", episode.toString())
            .build()
        val token = ensureAnonToken()
        val builder = commonBuilder(url.toString())
            .header("Accept", "text/event-stream")
        if (!token.isNullOrBlank()) builder.header("X-App-Token", token)
        val response = client.newCall(builder.get().build()).execute()
        response.use {
            if (!it.isSuccessful) throw IOException("HTTP ${it.code}")
            val source = it.body?.source() ?: throw IOException("empty source stream")
            parseSse(source)
        }
    }

    suspend fun authMe(): JSONObject =
        authenticatedRequest("${baseUrl()}/api/auth/me")

    suspend fun signIn(email: String, password: String): JSONObject =
        authenticatedRequest(
            "${baseUrl()}/api/auth/signin",
            method = "POST",
            body = JSONObject()
                .put("email", email.trim())
                .put("password", password)
                .toString(),
        )

    suspend fun signUp(email: String, password: String, displayName: String): JSONObject =
        authenticatedRequest(
            "${baseUrl()}/api/auth/signup",
            method = "POST",
            body = JSONObject()
                .put("email", email.trim())
                .put("password", password)
                .put("displayName", displayName.trim())
                .toString(),
        )

    suspend fun updateProfile(displayName: String): JSONObject =
        authenticatedRequest(
            "${baseUrl()}/api/auth/profile",
            method = "PATCH",
            body = JSONObject().put("displayName", displayName.trim()).toString(),
        )

    suspend fun signOut(): JSONObject =
        authenticatedRequest("${baseUrl()}/api/auth/signout", method = "POST")

    suspend fun comments(
        animeId: Int? = null,
        tmdbId: String? = null,
        episode: Int? = null,
    ): List<NovaComment> = withContext(Dispatchers.IO) {
        val builder = baseUrl().toHttpUrl().newBuilder().addPathSegments("api/comments")
        animeId?.let { builder.addQueryParameter("animeId", it.toString()) }
        tmdbId?.let { builder.addQueryParameter("tmdbId", it) }
        episode?.let { builder.addQueryParameter("ep", it.toString()) }
        val array = authenticatedRequest(builder.build().toString()).optJSONArray("comments")
            ?: JSONArray()
        (0 until array.length()).mapNotNull { parseComment(array.optJSONObject(it)) }
    }

    suspend fun postComment(
        text: String,
        animeId: Int? = null,
        tmdbId: String? = null,
        episode: Int? = null,
    ): NovaComment? {
        val body = JSONObject()
            .put("text", text.trim())
            .put("username", "مستخدم")
            .put("animeType", if (tmdbId != null) "animation" else "anime")
        animeId?.let { body.put("animeId", it) }
        tmdbId?.let { body.put("tmdbId", it) }
        episode?.let { body.put("episodeNumber", it) }
        return authenticatedRequest(
            "${baseUrl()}/api/comments",
            method = "POST",
            body = body.toString(),
        ).optJSONObject("comment")?.let(::parseComment)
    }

    suspend fun toggleCommentLike(id: String): Pair<Boolean, Int> {
        val data = authenticatedRequest(
            "${baseUrl()}/api/comments/${Uri.encode(id)}/like",
            method = "POST",
        )
        return data.optBoolean("liked") to data.optInt("likes")
    }

    suspend fun animationBrowse(type: String = "movie"): List<NovaContentCard> =
        getContent(
            "/api/animation/browse",
            mapOf(
                "type" to type,
                "genre" to "16",
                "sort" to "popularity.desc",
                "year" to "",
                "page" to "1",
            ),
            "animation",
        )

    suspend fun dubbedCatalog(animation: Boolean = false): List<NovaContentCard> =
        getContent(
            if (animation) "/api/aw-dubbed/catalog" else "/api/dubbed/catalog",
            mapOf("page" to "1"),
            if (animation) "aw-dubbed" else "dubbed",
        )

    suspend fun news(): List<NovaContentCard> =
        getContent("/api/news", mapOf("page" to "1", "limit" to "20"), "news")

    suspend fun schedule(): List<NovaContentCard> = withContext(Dispatchers.IO) {
        val now = java.util.Calendar.getInstance()
        val dayStart = (now.clone() as java.util.Calendar).apply {
            set(java.util.Calendar.HOUR_OF_DAY, 0)
            set(java.util.Calendar.MINUTE, 0)
            set(java.util.Calendar.SECOND, 0)
            set(java.util.Calendar.MILLISECOND, 0)
        }
        val dayEnd = (dayStart.clone() as java.util.Calendar).apply {
            add(java.util.Calendar.DAY_OF_YEAR, 1)
            add(java.util.MILLISECOND, -1)
        }
        val query = """
            query Schedule(${"$"}from: Int!, ${"$"}to: Int!) {
              Page(page: 1, perPage: 50) {
                airingSchedules(airingAt_greater: ${"$"}from, airingAt_lesser: ${"$"}to) {
                  id airingAt episode
                  media { id title { romaji english } coverImage { large } }
                }
              }
            }
        """.trimIndent()
        val data = authenticatedRequest(
            "${baseUrl()}/api/anilist",
            method = "POST",
            body = JSONObject()
                .put("query", query)
                .put(
                    "variables",
                    JSONObject()
                        .put("from", dayStart.timeInMillis / 1000)
                        .put("to", dayEnd.timeInMillis / 1000),
                )
                .toString(),
        )
        val schedules = data.optJSONObject("data")?.optJSONObject("Page")
            ?.optJSONArray("airingSchedules") ?: JSONArray()
        (0 until schedules.length()).mapNotNull { index ->
            val schedule = schedules.optJSONObject(index) ?: return@mapNotNull null
            val media = schedule.optJSONObject("media") ?: return@mapNotNull null
            val title = media.optJSONObject("title")
            val cover = media.optJSONObject("coverImage")
            NovaContentCard(
                id = media.optInt("id").toString(),
                title = title?.optString("english").orEmpty()
                    .ifBlank { title?.optString("romaji").orEmpty() }
                    .ifBlank { "بدون عنوان" },
                subtitle = "الحلقة ${schedule.optInt("episode")}",
                imageUrl = cover?.optString("large")?.takeIf { it.isNotBlank() },
                type = "schedule",
            )
        }
    }

    private suspend fun getContent(
        path: String,
        parameters: Map<String, String>,
        type: String,
    ): List<NovaContentCard> = withContext(Dispatchers.IO) {
        val builder = baseUrl().toHttpUrl().newBuilder().addPathSegments(path.removePrefix("/"))
        parameters.forEach { (key, value) ->
            if (value.isNotBlank()) builder.addQueryParameter(key, value)
        }
        val data = authenticatedRequest(builder.build().toString())
        val array = sequenceOf("results", "items", "series", "articles")
            .mapNotNull { data.optJSONArray(it) }
            .firstOrNull() ?: JSONArray()
        (0 until array.length()).mapNotNull { index ->
            val item = array.optJSONObject(index) ?: return@mapNotNull null
            val rawId = item.opt("id")?.toString()
                ?: item.optString("key").takeIf { it.isNotBlank() }
                ?: item.optString("slug").takeIf { it.isNotBlank() }
                ?: index.toString()
            val title = item.optString("title").ifBlank {
                item.optString("name")
            }.ifBlank {
                item.optString("titleAr")
            }.ifBlank {
                "بدون عنوان"
            }
            val posterPath = item.optString("poster_path")
            val image = item.optString("poster").ifBlank {
                item.optString("image")
            }.ifBlank {
                item.optString("cover")
            }.ifBlank {
                item.optString("thumbnail")
            }.ifBlank {
                if (posterPath.isNotBlank()) "https://image.tmdb.org/t/p/w500$posterPath" else ""
            }
            val subtitle = item.optString("release_date").ifBlank {
                item.optString("year")
            }.ifBlank {
                item.optString("type")
            }.takeIf { it.isNotBlank() }
            NovaContentCard(
                id = rawId,
                title = title,
                subtitle = subtitle,
                imageUrl = image.takeIf { it.isNotBlank() },
                type = type,
                description = item.optString("overview").ifBlank {
                    item.optString("description")
                }.takeIf { it.isNotBlank() },
            )
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
            val direct = listOf("directUrl", "direct_url", "rawUrl", "raw_url", "streamUrl", "stream_url")
                .asSequence()
                .mapNotNull { obj.optString(it).takeIf(String::isNotBlank) }
                .firstOrNull()
            val fallback = obj.optString("url").takeIf { it.isNotBlank() }
            val selected = direct ?: fallback ?: continue
            val embed = obj.optBoolean("isEmbed", obj.optBoolean("is_embed", false))
            if (embed && direct.isNullOrBlank()) continue
            val absolute = if (selected.startsWith("/")) baseUrl() + selected else selected
            val headersValue = obj.opt("headers")
            val headers = when (headersValue) {
                is JSONObject -> headersValue.toString()
                is String -> headersValue
                else -> "{}"
            }
            val sourceItem = VideoSource(
                site = obj.optString("site").ifBlank { obj.optString("provider", "source") },
                name = obj.optString("name")
                    .ifBlank { obj.optString("label") }
                    .ifBlank { obj.optString("providerName") },
                url = absolute,
                subtitleUrl = obj.optString("subtitleUrl")
                    .ifBlank { obj.optString("subtitle_url") }
                    .takeIf { it.isNotBlank() },
                quality = obj.optString("quality")
                    .ifBlank { obj.optString("resolution") }
                    .takeIf { it.isNotBlank() },
                headersJson = headers,
                isEmbed = embed,
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
        val genresArray = obj.optJSONArray("genres") ?: JSONArray()
        val genres = (0 until genresArray.length())
            .map { genresArray.optString(it) }
            .filter { it.isNotBlank() }
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
            genres = genres,
            season = obj.optString("season").takeIf { it.isNotBlank() },
            seasonYear = obj.optInt("seasonYear").takeIf { it > 0 },
        )
    }

    private fun parseComment(obj: JSONObject?): NovaComment? {
        if (obj == null || obj.optString("id").isBlank()) return null
        return NovaComment(
            id = obj.optString("id"),
            userId = obj.optString("userId"),
            username = obj.optString("username").ifBlank { "مستخدم" },
            displayName = obj.optString("displayName").takeIf { it.isNotBlank() },
            text = obj.optString("text"),
            likes = obj.optInt("likes"),
            liked = obj.optBoolean("liked"),
            createdAt = obj.optString("createdAt").takeIf { it.isNotBlank() },
            parentId = obj.optString("parentId").takeIf { it.isNotBlank() },
            replyToUsername = obj.optString("replyToUsername").takeIf { it.isNotBlank() },
        )
    }
}
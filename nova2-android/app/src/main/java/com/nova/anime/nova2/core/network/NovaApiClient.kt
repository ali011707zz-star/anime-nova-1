package com.nova.anime.nova2.core.network

import com.nova.anime.nova2.core.config.NovaBuildConfig
import com.nova.anime.nova2.core.model.AnonymousTokenResponse
import com.nova.anime.nova2.core.model.ApiErrorDto
import com.nova.anime.nova2.core.model.AuthResponse
import com.nova.anime.nova2.core.model.BasicOkResponse
import com.nova.anime.nova2.core.model.GraphQlRequest
import com.nova.anime.nova2.core.model.RemoteConfigResponse
import com.nova.anime.nova2.core.model.SignInRequest
import com.nova.anime.nova2.core.model.SignUpRequest
import com.nova.anime.nova2.core.model.SourceRequest
import com.nova.anime.nova2.core.model.SourceStreamEvent
import com.nova.anime.nova2.core.model.UserDto
import com.nova.anime.nova2.core.model.VerifyCodeRequest
import com.nova.anime.nova2.core.storage.StoredToken
import com.nova.anime.nova2.core.storage.TokenStore
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject
import kotlinx.serialization.json.jsonObject
import okhttp3.HttpUrl.Companion.toHttpUrl
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okio.BufferedSource
import java.io.IOException
import java.util.concurrent.TimeUnit

class NovaApiClient(
    private val tokenStore: TokenStore,
    private val httpClient: OkHttpClient = defaultHttpClient(),
    private val json: Json = novaJson,
) {
    private val tokenMutex = Mutex()

    suspend fun fetchRemoteConfig(): RemoteConfigResponse =
        getJson("/api/config")

    suspend fun fetchCurrentUser(): UserDto =
        getJson("/api/auth/me")

    suspend fun signIn(email: String, password: String): AuthResponse =
        postPublicJson("/api/auth/signin", SignInRequest(email.trim().lowercase(), password))

    suspend fun sendSignupVerificationCode(email: String): JsonObject =
        postPublicJson(
            "/api/auth/send-verify-code",
            VerifyCodeRequest(email.trim().lowercase()),
        )

    suspend fun signUp(
        email: String,
        password: String,
        displayName: String?,
        verifyCode: String,
    ): AuthResponse =
        postPublicJson(
            "/api/auth/signup",
            SignUpRequest(
                email = email.trim().lowercase(),
                password = password,
                displayName = displayName?.trim()?.takeIf { it.isNotEmpty() },
                verifyCode = verifyCode.trim(),
            ),
        )

    suspend fun signOut(): BasicOkResponse =
        postJson("/api/auth/signout", EmptyJsonRequest())

    suspend fun queryAniList(
        query: String,
        variables: JsonObject = JsonObject(emptyMap()),
    ): JsonObject =
        postPublicJson("/api/anilist", GraphQlRequest(query, variables))

    suspend fun fetchEpisodeTitles(
        malId: Int,
        anilistId: Int,
        page: Int = 1,
    ): JsonObject =
        getJson(
            "/api/anime/episode-titles",
            mapOf(
                "malId" to malId.toString(),
                "anilistId" to anilistId.toString(),
                "page" to page.toString(),
            ),
        )

    suspend fun translateSearchText(text: String): JsonObject =
        getJson(
            "/api/anime/translate",
            mapOf(
                "text" to text,
                "from" to "ar",
                "to" to "en",
                "kind" to "search",
            ),
        )

    suspend fun fetchSubtitleTracks(
        anilistId: Int,
        episode: Int,
        title: String,
        english: String? = null,
        malId: Int? = null,
        season: Int = 1,
    ): JsonObject =
        getJson(
            "/api/anime/subtitle-tracks",
            buildMap {
                put("anilistId", anilistId.toString())
                put("ep", episode.toString())
                put("season", season.toString())
                put("title", title)
                english?.takeIf(String::isNotBlank)?.let { put("english", it) }
                malId?.let { put("malId", it.toString()) }
            },
        )

    suspend fun fetchSingleSource(request: SourceRequest): JsonObject =
        getJson("/api/anime/fetch-source", request.toQuery())

    suspend fun fetchAnimeMetadata(id: String, source: String? = null): JsonObject =
        getJson(
            "/api/anime/meta-by-id",
            buildMap {
                put("id", id)
                if (!source.isNullOrBlank()) put("source", source)
            },
        )

    suspend fun openHlsProxy(url: String, referer: String? = null): String =
        buildMediaUrl("/api/anime/hls-proxy", buildMap {
            put("url", url)
            if (!referer.isNullOrBlank()) put("ref", referer)
        })

    fun resolveUrl(url: String): String =
        if (url.startsWith("/")) NovaBuildConfig.identity.apiUrl.trimEnd('/') + url else url

    fun mediaRequestHeaders(): Map<String, String> = buildMap {
        put("X-Nova-Client", NovaBuildConfig.identity.clientId)
        put("X-Nova-Version", NovaBuildConfig.identity.version)
        put("X-Nova-Package", NovaBuildConfig.identity.packageName)
        put("User-Agent", NovaBuildConfig.identity.userAgent)
        tokenStore.readAnonymousToken()?.value?.let { put("X-App-Token", it) }
        tokenStore.readUserToken()?.let { put("X-User-Token", it) }
    }

    /**
     * Reads the real SSE contract used by Nova Mobile. Each event's data stays
     * as JsonElement until a feature-specific repository maps it.
     */
    suspend fun streamAnimeSources(
        request: SourceRequest,
        onEvent: suspend (SourceStreamEvent) -> Unit,
    ) = withContext(Dispatchers.IO) {
        val response = executeAuthenticated(
            Request.Builder()
                .url(buildUrl("/api/anime/sources-stream", request.toQuery()))
                .header("Accept", "text/event-stream")
                .get()
                .build(),
        )
        if (!response.isSuccessful) {
            response.use { throw parseHttpError(it) }
        }
        response.use {
            val body = it.body ?: throw NovaApiException.EmptyResponse()
            readServerSentEvents(body.source(), onEvent)
        }
    }

    suspend fun fetchAnonymousToken(): StoredToken = withContext(Dispatchers.IO) {
        val request = baseRequest("/api/auth/anon-token")
            .post("{}".toRequestBody(JSON_MEDIA_TYPE))
            .build()
        val response = executePublic(request)
        response.use {
            val payload = parseBody<AnonymousTokenResponse>(it)
            val token = payload.token?.takeIf { it.isNotBlank() }
                ?: throw NovaApiException.EmptyResponse()
            val expiry = payload.exp ?: throw NovaApiException.Parse(
                IllegalStateException("anonymous token expiry missing"),
            )
            StoredToken(token, expiry)
        }
    }

    private suspend inline fun <reified T> getJson(
        path: String,
        query: Map<String, String> = emptyMap(),
    ): T = withContext(Dispatchers.IO) {
        val request = baseRequest(path, query).get().build()
        val response = executeAuthenticated(request)
        response.use { parseBody(it) }
    }

    private suspend inline fun <reified T, reified B> postJson(
        path: String,
        payload: B,
    ): T = withContext(Dispatchers.IO) {
        val request = baseRequest(path)
            .header("Content-Type", "application/json")
            .post(json.encodeToString(payload).toRequestBody(JSON_MEDIA_TYPE))
            .build()
        val response = executeAuthenticated(request)
        response.use { parseBody(it) }
    }

    private suspend inline fun <reified T, reified B> postPublicJson(
        path: String,
        payload: B,
    ): T = withContext(Dispatchers.IO) {
        val request = baseRequest(path)
            .header("Content-Type", "application/json")
            .post(json.encodeToString(payload).toRequestBody(JSON_MEDIA_TYPE))
            .build()
        val response = executePublic(request)
        response.use { parseBody(it) }
    }

    private suspend inline fun <reified T> parseBody(response: okhttp3.Response): T {
        if (!response.isSuccessful) throw parseHttpError(response)
        val body = response.body?.string()?.takeIf(String::isNotBlank)
            ?: throw NovaApiException.EmptyResponse()
        return try {
            json.decodeFromString(body)
        } catch (error: Exception) {
            throw NovaApiException.Parse(error)
        }
    }

    private suspend fun executeAuthenticated(request: Request): okhttp3.Response {
        val token = ensureAnonymousToken()
        val response = executeUnauthenticated(request.withNovaHeaders(token))
        if (response.code != 403) return response

        val invalidToken = response.peekBody(MAX_ERROR_BODY_BYTES).let { body ->
            runCatching { json.decodeFromString<ApiErrorDto>(body.string()) }.getOrNull()
        }?.code == "INVALID_TOKEN"
        if (!invalidToken) return response
        response.close()

        tokenStore.clearAnonymousToken()
        val fresh = ensureAnonymousToken(forceRefresh = true)
        return executeUnauthenticated(request.withNovaHeaders(fresh))
    }

    private suspend fun ensureAnonymousToken(forceRefresh: Boolean = false): String =
        tokenMutex.withLock {
            val now = System.currentTimeMillis() / 1000
            val stored = tokenStore.readAnonymousToken()
            if (!forceRefresh && stored != null && stored.expiresAtEpochSeconds > now + TOKEN_SAFETY_WINDOW) {
                return@withLock stored.value
            }
            val fresh = fetchAnonymousToken()
            tokenStore.writeAnonymousToken(fresh)
            fresh.value
        }

    private suspend fun executeUnauthenticated(request: Request): okhttp3.Response =
        withContext(Dispatchers.IO) {
            try {
                httpClient.newCall(request).execute()
            } catch (error: java.net.SocketTimeoutException) {
                throw NovaApiException.Timeout(error)
            } catch (error: IOException) {
                throw NovaApiException.Network(error)
            }
        }

    private suspend fun executePublic(request: Request): okhttp3.Response =
        executeUnauthenticated(request.withClientHeaders())

    private fun parseHttpError(response: okhttp3.Response): NovaApiException {
        val body = response.peekBody(MAX_ERROR_BODY_BYTES).string()
        val details = runCatching { json.decodeFromString<ApiErrorDto>(body) }.getOrNull()
        if (details?.officialDownloadRequired == true) return NovaApiException.OfficialAppRequired()
        if (response.code >= 500) return NovaApiException.ServerUnavailable(response.code)
        return NovaApiException.Http(
            status = response.code,
            code = details?.code,
            message = details?.message ?: details?.error ?: "HTTP ${response.code}",
        )
    }

    private fun baseRequest(
        path: String,
        query: Map<String, String> = emptyMap(),
    ): Request.Builder =
        Request.Builder().url(buildUrl(path, query)).header("Accept", "application/json")

    private fun Request.withNovaHeaders(anonymousToken: String): Request =
        withClientHeaders()
            .newBuilder()
            .header("X-App-Token", anonymousToken)
            .apply {
                tokenStore.readUserToken()?.let { header("X-User-Token", it) }
            }
            .build()

    private fun Request.withClientHeaders(): Request =
        newBuilder()
            .header("X-Nova-Client", NovaBuildConfig.identity.clientId)
            .header("X-Nova-Version", NovaBuildConfig.identity.version)
            .header("X-Nova-Package", NovaBuildConfig.identity.packageName)
            .header("User-Agent", NovaBuildConfig.identity.userAgent)
            .build()

    private fun buildMediaUrl(path: String, query: Map<String, String>): String =
        buildUrl(path, query).toString()

    private fun buildUrl(path: String, query: Map<String, String> = emptyMap()) =
        NovaBuildConfig.identity.apiUrl
            .toHttpUrl()
            .newBuilder()
            .addPathSegments(path.removePrefix("/"))
            .apply { query.forEach { (key, value) -> addQueryParameter(key, value) } }
            .build()

    private fun SourceRequest.toQuery(): Map<String, String> = buildMap {
        put("site", site)
        put("title", title)
        put("ep", episode.toString())
        animeId?.let { put("id", it) }
        malId?.let { put("malId", it.toString()) }
        anilistId?.let { put("anilistId", it.toString()) }
        season?.let { put("season", it.toString()) }
        english?.let { put("english", it) }
        native?.let { put("native", it) }
        format?.let { put("format", it) }
        year?.let { put("year", it.toString()) }
        episodes?.let { put("episodes", it.toString()) }
        titleAr?.let { put("titleAr", it) }
    }

    private suspend fun readServerSentEvents(
        source: BufferedSource,
        onEvent: suspend (SourceStreamEvent) -> Unit,
    ) {
        var event = "message"
        var data: String? = null
        while (!source.exhausted()) {
            val line = source.readUtf8Line() ?: break
            when {
                line.startsWith("event:") -> event = line.removePrefix("event:").trim()
                line.startsWith("data:") -> data = line.removePrefix("data:").trim()
                line.isBlank() -> {
                    if (data != null) {
                        val element = runCatching { json.parseToJsonElement(data!!) }.getOrNull()
                        onEvent(SourceStreamEvent(event, element))
                    }
                    event = "message"
                    data = null
                }
            }
        }
    }

    private companion object {
        val JSON_MEDIA_TYPE = "application/json".toMediaType()
        val novaJson = Json {
            ignoreUnknownKeys = true
            isLenient = true
            explicitNulls = false
        }
        const val TOKEN_SAFETY_WINDOW = 60L
        const val MAX_ERROR_BODY_BYTES = 16 * 1024L

        fun defaultHttpClient(): OkHttpClient = OkHttpClient.Builder()
            .connectTimeout(12, TimeUnit.SECONDS)
            .readTimeout(45, TimeUnit.SECONDS)
            .writeTimeout(15, TimeUnit.SECONDS)
            .build()
    }
}

@kotlinx.serialization.Serializable
private class EmptyJsonRequest(
    val request: String = "nova2",
)
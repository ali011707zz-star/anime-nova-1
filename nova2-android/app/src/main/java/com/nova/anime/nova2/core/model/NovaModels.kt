package com.nova.anime.nova2.core.model

import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement

@Serializable
data class AnonymousTokenResponse(
    val token: String? = null,
    val exp: Long? = null,
)

@Serializable
data class SignInRequest(
    val email: String,
    val password: String,
)

@Serializable
data class SignUpRequest(
    val email: String,
    val password: String,
    val displayName: String? = null,
    val verifyCode: String? = null,
)

@Serializable
data class VerifyCodeRequest(
    val email: String,
    val type: String = "signup",
)

@Serializable
data class AuthResponse(
    val id: String? = null,
    val email: String? = null,
    val displayName: String? = null,
    val username: String? = null,
    val avatarColor: Int? = null,
    val profileImageUrl: String? = null,
    val authToken: String? = null,
)

@Serializable
data class BasicOkResponse(
    val ok: Boolean = false,
)

@Serializable
data class RemoteConfigResponse(
    val sources: Map<String, Boolean> = emptyMap(),
    val announcements: List<AnnouncementDto> = emptyList(),
    val features: Map<String, Boolean> = emptyMap(),
    val maintenanceMode: Boolean = false,
    val maintenanceMessage: String? = null,
    val version: String? = null,
    val limits: LimitsDto? = null,
    val officialDownloadRequired: Boolean = false,
)

@Serializable
data class AnnouncementDto(
    val id: String,
    val message: String,
    val type: String = "info",
    val link: String? = null,
)

@Serializable
data class LimitsDto(
    val downloadLimit: Int? = null,
    val watchAccessMinutes: Int? = null,
)

@Serializable
data class UserDto(
    val id: String? = null,
    val email: String? = null,
    val displayName: String? = null,
    val display_name: String? = null,
    val username: String? = null,
    val avatarColor: Int? = null,
    val avatar_color: Int? = null,
    val profileImageUrl: String? = null,
    val profile_image_url: String? = null,
)

@Serializable
data class VideoSourceDto(
    val url: String? = null,
    val directUrl: String? = null,
    val label: String? = null,
    val quality: String? = null,
    val type: String? = null,
    val subtitles: List<SubtitleTrackDto> = emptyList(),
    val server: String? = null,
    val qualityRank: Int? = null,
    val referer: String? = null,
)

@Serializable
data class SubtitleTrackDto(
    val label: String? = null,
    val src: String? = null,
    val kind: String? = null,
    val language: String? = null,
)

@Serializable
data class AnimeItemDto(
    val id: Int? = null,
    val title: String? = null,
    val english: String? = null,
    val thumbnail: String? = null,
    val cover: String? = null,
    val banner: String? = null,
    val episodes: Int? = null,
    val score: Double? = null,
    val genres: List<String> = emptyList(),
)

@Serializable
data class ApiErrorDto(
    val code: String? = null,
    val message: String? = null,
    val error: String? = null,
    val officialDownloadRequired: Boolean = false,
)

data class SourceRequest(
    val site: String,
    val title: String,
    val episode: Int,
    val animeId: String? = null,
    val malId: Int? = null,
    val anilistId: Int? = null,
    val season: Int? = null,
)

data class SourceStreamEvent(
    val event: String,
    val data: JsonElement?,
)
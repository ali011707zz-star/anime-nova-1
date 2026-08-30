package com.nova.anime.nova2.core.config

import com.nova.anime.nova2.BuildConfig

data class NovaBuildIdentity(
    val apiUrl: String,
    val clientId: String,
    val version: String,
    val packageName: String,
) {
    val userAgent: String
        get() = "NovaAnime/$version (Android)"
}

object NovaBuildConfig {
    val identity = NovaBuildIdentity(
        apiUrl = BuildConfig.NOVA_API_URL.trimEnd('/'),
        clientId = BuildConfig.NOVA_CLIENT_ID,
        version = BuildConfig.NOVA_VERSION,
        packageName = BuildConfig.NOVA_PACKAGE,
    )
}
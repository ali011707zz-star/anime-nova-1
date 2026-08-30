package com.nova.anime.nova2.core.storage

import android.content.Context
import androidx.security.crypto.EncryptedSharedPreferences
import androidx.security.crypto.MasterKey

interface TokenStore {
    fun readAnonymousToken(): StoredToken?
    fun writeAnonymousToken(token: StoredToken)
    fun clearAnonymousToken()
    fun readUserToken(): String?
    fun writeUserToken(token: String?)
}

data class StoredToken(
    val value: String,
    val expiresAtEpochSeconds: Long,
)

class EncryptedTokenStore(context: Context) : TokenStore {
    private val preferences = EncryptedSharedPreferences.create(
        context,
        "nova2_secure_tokens",
        MasterKey.Builder(context)
            .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
            .build(),
        EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
        EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM,
    )

    override fun readAnonymousToken(): StoredToken? {
        val value = preferences.getString(ANON_TOKEN, null) ?: return null
        val expiry = preferences.getLong(ANON_EXPIRY, 0L)
        if (expiry <= 0L) return null
        return StoredToken(value, expiry)
    }

    override fun writeAnonymousToken(token: StoredToken) {
        preferences.edit()
            .putString(ANON_TOKEN, token.value)
            .putLong(ANON_EXPIRY, token.expiresAtEpochSeconds)
            .apply()
    }

    override fun clearAnonymousToken() {
        preferences.edit().remove(ANON_TOKEN).remove(ANON_EXPIRY).apply()
    }

    override fun readUserToken(): String? = preferences.getString(USER_TOKEN, null)

    override fun writeUserToken(token: String?) {
        preferences.edit().apply {
            if (token.isNullOrBlank()) remove(USER_TOKEN) else putString(USER_TOKEN, token)
        }.apply()
    }

    private companion object {
        const val ANON_TOKEN = "anonymous_token"
        const val ANON_EXPIRY = "anonymous_token_expiry"
        const val USER_TOKEN = "user_token"
    }
}
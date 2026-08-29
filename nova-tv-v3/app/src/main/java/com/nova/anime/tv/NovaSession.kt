package com.nova.anime.tv

import android.content.Context
import org.json.JSONObject

/**
 * The API's mobile user token is deliberately kept separate from the short
 * lived anonymous token managed by ApiClient. It is only written after a
 * successful email sign-in/sign-up response.
 */
object NovaSession {
    private const val PREFS = "nova_tv_session"
    private const val USER_TOKEN = "user_token"
    private const val USER_JSON = "user_json"

    fun userToken(context: Context): String? =
        context.applicationContext
            .getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getString(USER_TOKEN, null)
            ?.takeIf { it.isNotBlank() }

    fun userJson(context: Context): JSONObject? =
        context.applicationContext
            .getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getString(USER_JSON, null)
            ?.let { runCatching { JSONObject(it) }.getOrNull() }

    fun save(context: Context, payload: JSONObject) {
        val token = payload.optString("authToken").takeIf { it.isNotBlank() } ?: return
        context.applicationContext
            .getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .putString(USER_TOKEN, token)
            .putString(USER_JSON, payload.toString())
            .apply()
        ApiClient.setUserToken(token)
    }

    fun clear(context: Context) {
        context.applicationContext
            .getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .clear()
            .apply()
        ApiClient.setUserToken(null)
    }
}
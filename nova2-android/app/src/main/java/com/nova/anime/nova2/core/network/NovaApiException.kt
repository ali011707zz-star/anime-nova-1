package com.nova.anime.nova2.core.network

sealed class NovaApiException(message: String, cause: Throwable? = null) : Exception(message, cause) {
    class Network(cause: Throwable) : NovaApiException("Network error", cause)
    class Timeout(cause: Throwable) : NovaApiException("Request timed out", cause)
    class Http(val status: Int, val code: String?, message: String) : NovaApiException(message)
    class Parse(cause: Throwable) : NovaApiException("Response parsing failed", cause)
    class EmptyResponse : NovaApiException("The server returned an empty response")
    class ServerUnavailable(val status: Int? = null) : NovaApiException("Server unavailable")
    class OfficialAppRequired : NovaApiException("Official app required")
}
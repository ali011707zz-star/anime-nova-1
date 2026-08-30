package com.nova.anime.nova2.core.session

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import com.nova.anime.nova2.core.model.AuthResponse
import com.nova.anime.nova2.core.model.RemoteConfigResponse
import com.nova.anime.nova2.core.model.UserDto
import com.nova.anime.nova2.core.network.NovaApiClient
import com.nova.anime.nova2.core.network.NovaApiException
import com.nova.anime.nova2.core.storage.TokenStore
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

enum class AuthMode {
    LOGIN,
    SIGNUP_EMAIL,
    SIGNUP_VERIFY,
}

sealed interface BootstrapStatus {
    data object Loading : BootstrapStatus
    data object Ready : BootstrapStatus
    data object Maintenance : BootstrapStatus
    data object OfficialAppRequired : BootstrapStatus
    data class Error(val message: String) : BootstrapStatus
}

data class SessionUiState(
    val status: BootstrapStatus = BootstrapStatus.Loading,
    val config: RemoteConfigResponse? = null,
    val user: UserDto? = null,
    val authMode: AuthMode = AuthMode.LOGIN,
    val authLoading: Boolean = false,
    val error: String? = null,
    val notice: String? = null,
)

class SessionViewModel(
    private val apiClient: NovaApiClient,
    private val tokenStore: TokenStore,
) : ViewModel() {
    private val _state = MutableStateFlow(SessionUiState())
    val state: StateFlow<SessionUiState> = _state.asStateFlow()

    init {
        refresh()
    }

    fun refresh() {
        viewModelScope.launch {
            _state.update { it.copy(status = BootstrapStatus.Loading, error = null, notice = null) }
            try {
                val config = apiClient.fetchRemoteConfig()
                if (config.officialDownloadRequired) {
                    _state.value = SessionUiState(
                        status = BootstrapStatus.OfficialAppRequired,
                        config = config,
                    )
                    return@launch
                }
                if (config.maintenanceMode) {
                    _state.value = SessionUiState(
                        status = BootstrapStatus.Maintenance,
                        config = config,
                    )
                    return@launch
                }

                val user = restoreUserOrClearExpiredToken()
                _state.value = SessionUiState(
                    status = BootstrapStatus.Ready,
                    config = config,
                    user = user,
                )
            } catch (error: NovaApiException) {
                if (error is NovaApiException.OfficialAppRequired) {
                    _state.update { it.copy(status = BootstrapStatus.OfficialAppRequired, error = null) }
                } else {
                    _state.update {
                        it.copy(
                            status = BootstrapStatus.Error(error.toArabicMessage()),
                            error = error.toArabicMessage(),
                        )
                    }
                }
            } catch (error: Exception) {
                val message = error.message ?: "تعذر إكمال التهيئة"
                _state.update {
                    it.copy(status = BootstrapStatus.Error(message), error = message)
                }
            }
        }
    }

    fun chooseAuthMode(mode: AuthMode) {
        _state.update { it.copy(authMode = mode, error = null, notice = null) }
    }

    fun signIn(email: String, password: String) {
        val cleanEmail = email.trim().lowercase()
        if (cleanEmail.isBlank() || password.isBlank()) {
            showError("البريد الإلكتروني وكلمة المرور مطلوبان")
            return
        }
        runAuth {
            val response = apiClient.signIn(cleanEmail, password)
            completeAuthentication(response, "تم تسجيل الدخول بنجاح")
        }
    }

    fun sendSignupCode(email: String) {
        val cleanEmail = email.trim().lowercase()
        if (!EMAIL_PATTERN.matches(cleanEmail)) {
            showError("بريد إلكتروني غير صالح")
            return
        }
        runAuth {
            apiClient.sendSignupVerificationCode(cleanEmail)
            _state.update {
                it.copy(
                    authMode = AuthMode.SIGNUP_VERIFY,
                    notice = "تم إرسال رمز التحقق إلى بريدك الإلكتروني",
                    error = null,
                )
            }
        }
    }

    fun signUp(email: String, password: String, displayName: String, verifyCode: String) {
        val cleanEmail = email.trim().lowercase()
        when {
            !EMAIL_PATTERN.matches(cleanEmail) -> showError("بريد إلكتروني غير صالح")
            password.length < 6 -> showError("كلمة المرور يجب أن تكون 6 أحرف على الأقل")
            verifyCode.trim().length < 6 -> showError("أدخل كود التحقق المكوّن من 6 أرقام")
            else -> runAuth {
                val response = apiClient.signUp(cleanEmail, password, displayName, verifyCode)
                completeAuthentication(response, "تم إنشاء الحساب بنجاح")
            }
        }
    }

    fun signOut() {
        viewModelScope.launch {
            runCatching { apiClient.signOut() }
            tokenStore.writeUserToken(null)
            _state.update {
                it.copy(
                    user = null,
                    authMode = AuthMode.LOGIN,
                    authLoading = false,
                    error = null,
                    notice = "تم تسجيل الخروج",
                )
            }
        }
    }

    private fun runAuth(block: suspend () -> Unit) {
        viewModelScope.launch {
            _state.update { it.copy(authLoading = true, error = null, notice = null) }
            try {
                block()
            } catch (error: NovaApiException) {
                showError(error.toArabicMessage())
            } catch (error: Exception) {
                showError(error.message ?: "تعذر الوصول للخادم")
            } finally {
                _state.update { it.copy(authLoading = false) }
            }
        }
    }

    private suspend fun completeAuthentication(response: AuthResponse, message: String) {
        val token = response.authToken?.takeIf { it.isNotBlank() }
            ?: throw NovaApiException.EmptyResponse()
        tokenStore.writeUserToken(token)
        val user = runCatching { apiClient.fetchCurrentUser() }.getOrElse { response.toUserDto() }
        _state.update {
            it.copy(
                status = BootstrapStatus.Ready,
                user = user,
                authMode = AuthMode.LOGIN,
                error = null,
                notice = message,
            )
        }
    }

    private suspend fun restoreUserOrClearExpiredToken(): UserDto? {
        if (tokenStore.readUserToken().isNullOrBlank()) return null
        return try {
            apiClient.fetchCurrentUser()
        } catch (error: NovaApiException.Http) {
            if (error.status == 401 || error.status == 403) {
                tokenStore.writeUserToken(null)
                null
            } else {
                throw error
            }
        }
    }

    private fun showError(message: String) {
        _state.update { it.copy(error = message, notice = null) }
    }

    private fun NovaApiException.toArabicMessage(): String = when (this) {
        is NovaApiException.Network -> "تعذر الوصول إلى الخادم"
        is NovaApiException.Timeout -> "انتهت مهلة الاتصال بالخادم"
        is NovaApiException.Http -> message ?: "خطأ من الخادم"
        is NovaApiException.Parse -> "تعذر فهم استجابة الخادم"
        is NovaApiException.EmptyResponse -> "استجابة الخادم فارغة"
        is NovaApiException.ServerUnavailable -> "الخادم غير متاح حاليًا"
        is NovaApiException.OfficialAppRequired -> "النسخة الرسمية مطلوبة"
    }

    private fun AuthResponse.toUserDto() = UserDto(
        id = id,
        email = email,
        displayName = displayName,
        username = username,
        avatarColor = avatarColor,
        profileImageUrl = profileImageUrl,
    )

    class Factory(
        private val apiClient: NovaApiClient,
        private val tokenStore: TokenStore,
    ) : ViewModelProvider.Factory {
        @Suppress("UNCHECKED_CAST")
        override fun <T : ViewModel> create(modelClass: Class<T>): T {
            require(modelClass.isAssignableFrom(SessionViewModel::class.java))
            return SessionViewModel(apiClient, tokenStore) as T
        }
    }

    private companion object {
        val EMAIL_PATTERN = Regex("^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$")
    }
}
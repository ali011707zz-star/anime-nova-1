package com.nova.anime.nova2

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.nova.anime.nova2.core.config.NovaBuildConfig
import com.nova.anime.nova2.core.network.NovaApiClient
import com.nova.anime.nova2.core.network.NovaApiException
import com.nova.anime.nova2.core.storage.EncryptedTokenStore
import com.nova.anime.nova2.ui.NovaNavGraph
import com.nova.anime.nova2.ui.NovaTheme
import kotlinx.coroutines.launch

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val apiClient = NovaApiClient(EncryptedTokenStore(applicationContext))
        setContent {
            NovaTheme {
                Surface(color = MaterialTheme.colorScheme.background) {
                    NovaNavGraph {
                        BootstrapScreen(apiClient)
                    }
                }
            }
        }
    }
}

@androidx.compose.runtime.Composable
private fun BootstrapScreen(apiClient: NovaApiClient) {
    val scope = rememberCoroutineScope()
    var loading by remember { mutableStateOf(false) }
    var status by remember { mutableStateOf("طبقة Nova 2 المستقلة جاهزة للمراجعة") }

    Column(
        modifier = Modifier.fillMaxSize().padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Text(
            text = "Anime NOVA 2",
            style = MaterialTheme.typography.headlineLarge,
            color = MaterialTheme.colorScheme.primary,
        )
        Text(
            text = "Kotlin · Jetpack Compose · Media3",
            modifier = Modifier.padding(top = 12.dp),
            textAlign = TextAlign.Center,
        )
        Text(
            text = "مشروع مستقل. Nova 1 لم يتم تعديله.",
            modifier = Modifier.padding(top = 8.dp),
            textAlign = TextAlign.Center,
        )
        Text(
            text = status,
            modifier = Modifier.padding(top = 24.dp),
            textAlign = TextAlign.Center,
        )
        if (loading) {
            CircularProgressIndicator(modifier = Modifier.padding(top = 20.dp))
        } else {
            Button(
                onClick = {
                    loading = true
                    scope.launch {
                        status = try {
                            val config = apiClient.fetchRemoteConfig()
                            if (config.officialDownloadRequired) {
                                "الخادم يطلب النسخة الرسمية"
                            } else if (config.maintenanceMode) {
                                config.maintenanceMessage ?: "الخادم تحت الصيانة"
                            } else {
                                "تم الاتصال بـ API الحقيقي وقراءة الإعدادات"
                            }
                        } catch (error: NovaApiException) {
                            "فشل API: ${error.message}"
                        } catch (error: Exception) {
                            "فشل غير متوقع: ${error.message ?: "unknown"}"
                        } finally {
                            loading = false
                        }
                    }
                },
                modifier = Modifier.padding(top = 24.dp),
            ) {
                Text("فحص API الحقيقي")
            }
        }
        Text(
            text = "API: ${NovaBuildConfig.identity.apiUrl}",
            modifier = Modifier.padding(top = 18.dp),
            style = MaterialTheme.typography.labelSmall,
            textAlign = TextAlign.Center,
        )
    }
}
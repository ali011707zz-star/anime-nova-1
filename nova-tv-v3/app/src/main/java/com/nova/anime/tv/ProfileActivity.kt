package com.nova.anime.tv

import android.graphics.Color
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.launch
import org.json.JSONObject

class ProfileActivity : AppCompatActivity() {
    private lateinit var content: LinearLayout
    private lateinit var message: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ApiClient.setUserToken(NovaSession.userToken(this))
        setContentView(buildRoot())
        loadSession()
    }

    private fun buildRoot(): View {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setBackgroundColor(Color.rgb(9, 9, 11))
            setPadding(dp(20), dp(18), dp(20), dp(18))
        }
        root.addView(TextView(this).apply {
            text = "الملف الشخصي"
            textSize = 25f
            setTextColor(Color.WHITE)
            gravity = Gravity.RIGHT
            setTypeface(typeface, android.graphics.Typeface.BOLD)
        }, LinearLayout.LayoutParams(-1, dp(54)))
        message = TextView(this).apply {
            textSize = 14f
            setTextColor(Color.rgb(180, 180, 190))
            gravity = Gravity.RIGHT
        }
        root.addView(message, LinearLayout.LayoutParams(-1, dp(36)))
        content = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        root.addView(ScrollView(this).apply {
            addView(content, ScrollView.LayoutParams(-1, -2))
        }, LinearLayout.LayoutParams(-1, 0, 1f))
        return root
    }

    private fun loadSession() {
        message.text = "جاري التحقق من الحساب..."
        lifecycleScope.launch {
            val data = runCatching { ApiClient.authMe() }.getOrNull()
            if (data != null && data.optString("id").isNotBlank()) {
                showProfile(data)
            } else {
                showAuthForm()
            }
        }
    }

    private fun showAuthForm() {
        content.removeAllViews()
        message.text = "سجّل الدخول لمزامنة التعليقات والملف الشخصي."
        val email = field("البريد الإلكتروني", false)
        val password = field("كلمة المرور", true)
        val displayName = field("الاسم الظاهر (لإنشاء حساب)", false)
        content.addView(email)
        content.addView(password, marginParams())
        content.addView(displayName, marginParams())
        val actions = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
        }
        actions.addView(Button(this).apply {
            text = "دخول"
            setOnClickListener { submitAuth(email, password, displayName, false) }
        }, LinearLayout.LayoutParams(0, dp(54), 1f))
        actions.addView(Button(this).apply {
            text = "إنشاء حساب"
            setOnClickListener { submitAuth(email, password, displayName, true) }
        }, LinearLayout.LayoutParams(0, dp(54), 1f).apply {
            marginStart = dp(8)
        })
        content.addView(actions, marginParams())
    }

    private fun submitAuth(
        email: EditText,
        password: EditText,
        displayName: EditText,
        signup: Boolean,
    ) {
        val emailValue = email.text.toString().trim()
        val passwordValue = password.text.toString()
        if (emailValue.isBlank() || passwordValue.isBlank()) {
            message.text = "أدخل البريد الإلكتروني وكلمة المرور."
            return
        }
        message.text = "جاري الاتصال..."
        lifecycleScope.launch {
            val result = runCatching {
                if (signup) {
                    ApiClient.signUp(emailValue, passwordValue, displayName.text.toString())
                } else {
                    ApiClient.signIn(emailValue, passwordValue)
                }
            }
            result.onSuccess {
                NovaSession.save(this@ProfileActivity, it)
                showProfile(it)
            }.onFailure {
                message.text = "تعذر إتمام العملية: ${it.message?.substringAfter("HTTP") ?: "تحقق من البيانات"}"
            }
        }
    }

    private fun showProfile(data: JSONObject) {
        content.removeAllViews()
        message.text = "الحساب متصل"
        val name = field("الاسم الظاهر", false).apply {
            setText(data.optString("displayName").ifBlank { data.optString("username") })
        }
        content.addView(TextView(this).apply {
            text = data.optString("email")
            textSize = 16f
            setTextColor(Color.rgb(190, 190, 200))
            setPadding(0, 0, 0, dp(20))
        })
        content.addView(name)
        content.addView(Button(this).apply {
            text = "حفظ الاسم"
            setOnClickListener {
                val value = name.text.toString().trim()
                if (value.isBlank()) return@setOnClickListener
                lifecycleScope.launch {
                    runCatching { ApiClient.updateProfile(value) }
                        .onSuccess {
                            val merged = JSONObject(it.toString())
                                .put("authToken", NovaSession.userToken(this@ProfileActivity).orEmpty())
                            NovaSession.save(this@ProfileActivity, merged)
                            message.text = "تم حفظ التغييرات."
                        }
                        .onFailure { message.text = "تعذر حفظ الاسم." }
                }
            }
        }, marginParams())
        content.addView(Button(this).apply {
            text = "تسجيل الخروج"
            setOnClickListener {
                lifecycleScope.launch {
                    runCatching { ApiClient.signOut() }
                    NovaSession.clear(this@ProfileActivity)
                    showAuthForm()
                }
            }
        }, marginParams())
    }

    private fun field(hint: String, password: Boolean): EditText =
        EditText(this).apply {
            this.hint = hint
            hintTextColor = Color.rgb(125, 125, 135)
            setTextColor(Color.WHITE)
            textSize = 16f
            setSingleLine(true)
            setPadding(dp(12), 0, dp(12), 0)
            setBackgroundColor(Color.rgb(28, 28, 34))
            if (password) inputType = android.text.InputType.TYPE_CLASS_TEXT or
                android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
        }

    private fun marginParams(): LinearLayout.LayoutParams =
        LinearLayout.LayoutParams(-1, dp(54)).apply { topMargin = dp(10) }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
}
package com.nova.anime.tv

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.view.View
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.activity.ComponentActivity

class NavigationActivity : ComponentActivity() {
    private lateinit var profile: NovaUiProfile

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ApiClient.setUserToken(NovaSession.userToken(this))
        profile = uiProfile()
        val scroll = ScrollView(this).apply { setBackgroundColor(Color.rgb(9, 9, 11)) }
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(profile.horizontalPaddingDp), dp(if (profile.isTv) 34 else 20), dp(profile.horizontalPaddingDp), dp(30))
        }
        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
        }
        val close = tvButton(this, "رجوع")
        close.setOnClickListener { finish() }
        header.addView(close, LinearLayout.LayoutParams(dp(if (profile.isTv) 140 else 104), dp(if (profile.isTv) 56 else 50)))
        header.addView(tvText(this, "كل أقسام Anime NOVA", if (profile.isTv) 30f else 24f).apply {
            gravity = android.view.Gravity.CENTER
            typeface = android.graphics.Typeface.DEFAULT_BOLD
        }, LinearLayout.LayoutParams(0, dp(56), 1f))
        root.addView(header)
        root.addView(tvText(this, "نفس صفحات وأزرار Anime NOVA الرسمية، مع انتقالات خفيفة.", 15f, Color.rgb(161, 161, 170)).apply {
            setPadding(0, dp(8), 0, dp(18))
        })

        addSection(root, "الرئيسية") { finish() }
        addSection(root, "البحث") { startActivity(Intent(this, SearchActivity::class.java)) }
        addSection(root, "تصفح الأنمي") { openSection(SectionActivity.BROWSE) }
        addSection(root, "أفلام ومسلسلات") { openSection(SectionActivity.ANIMATION) }
        addSection(root, "أنيميشن مدبلج") { openSection(SectionActivity.AW_DUBBED) }
        addSection(root, "كرتون مدبلج") { openSection(SectionActivity.DUBBED) }
        addSection(root, "الأخبار") { openSection(SectionActivity.NEWS) }
        addSection(root, "التنزيلات") { startActivity(Intent(this, DownloadsActivity::class.java)) }
        addSection(root, "المفضلة وسجل المشاهدة") { startActivity(Intent(this, LibraryActivity::class.java)) }
        addSection(root, "جدول البث الأسبوعي") { openSection(SectionActivity.SCHEDULE) }
        addSection(root, "الملف الشخصي") { startActivity(Intent(this, ProfileActivity::class.java)) }
        addSection(root, "الإعدادات") { startActivity(Intent(this, SettingsActivity::class.java)) }
        scroll.addView(root)
        setContentView(scroll)
    }

    private fun addSection(root: LinearLayout, label: String, action: () -> Unit) {
        val button = tvButton(this, label).apply {
            gravity = android.view.Gravity.CENTER_VERTICAL or android.view.Gravity.RIGHT
            setOnClickListener { action() }
        }
        root.addView(button, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 64 else 54)).apply {
            bottomMargin = dp(8)
        })
    }

    private fun openSection(section: String) {
        startActivity(Intent(this, SectionActivity::class.java).putExtra(SectionActivity.EXTRA_SECTION, section))
    }
}
package com.nova.anime.tv

import android.graphics.Color
import android.os.Bundle
import android.view.View
import android.widget.LinearLayout
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView

class LibraryActivity : ComponentActivity() {
    private lateinit var profile: NovaUiProfile
    private lateinit var list: RecyclerView
    private lateinit var status: TextView
    private var showingFavorites = true

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profile = uiProfile()
        buildUi()
        reload()
    }

    override fun onResume() {
        super.onResume()
        if (::list.isInitialized) reload()
    }

    private fun buildUi() {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(Color.rgb(9, 9, 11))
            setPadding(
                dp(profile.horizontalPaddingDp),
                dp(if (profile.isTv) 30 else 18),
                dp(profile.horizontalPaddingDp),
                dp(if (profile.isTv) 34 else 20),
            )
            layoutDirection = View.LAYOUT_DIRECTION_RTL
        }

        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
        }
        val back = tvButton(this, "رجوع")
        back.setOnClickListener { finish() }
        header.addView(
            back,
            LinearLayout.LayoutParams(
                dp(if (profile.isTv) 135 else 100),
                dp(if (profile.isTv) 58 else 52),
            ),
        )
        header.addView(
            tvText(this, "مكتبتي", if (profile.isTv) 28f else 23f).apply {
                typeface = android.graphics.Typeface.DEFAULT_BOLD
                gravity = android.view.Gravity.CENTER
            },
            LinearLayout.LayoutParams(0, dp(if (profile.isTv) 58 else 52), 1f),
        )
        root.addView(header)

        val tabs = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(0, dp(16), 0, dp(10))
        }
        val favorites = tvButton(this, "المفضلة")
        val recent = tvButton(this, "تابع المشاهدة")
        favorites.setOnClickListener {
            showingFavorites = true
            reload()
        }
        recent.setOnClickListener {
            showingFavorites = false
            reload()
        }
        tabs.addView(favorites, LinearLayout.LayoutParams(0, dp(if (profile.isTv) 58 else 52), 1f).apply {
            marginEnd = dp(8)
        })
        tabs.addView(recent, LinearLayout.LayoutParams(0, dp(if (profile.isTv) 58 else 52), 1f))
        root.addView(tabs)

        status = tvText(this, "", 17f, Color.rgb(161, 161, 170))
        root.addView(status, LinearLayout.LayoutParams(-1, dp(42)))

        list = RecyclerView(this).apply {
            layoutManager = GridLayoutManager(this@LibraryActivity, profile.searchColumns)
            overScrollMode = View.OVER_SCROLL_NEVER
            layoutDirection = View.LAYOUT_DIRECTION_LTR
            setHasFixedSize(true)
            setItemViewCacheSize(8)
            itemAnimator = null
        }
        root.addView(list, LinearLayout.LayoutParams(-1, 0, 1f))
        setContentView(root)
    }

    private fun reload() {
        val items = if (showingFavorites) {
            NovaStore.favorites(this)
        } else {
            NovaStore.recent(this)
        }
        status.text = when {
            items.isEmpty() && showingFavorites -> "لم تضف أي أنمي إلى المفضلة بعد"
            items.isEmpty() -> "افتح أنميًا وابدأ مشاهدة حلقة ليظهر هنا"
            showingFavorites -> "${items.size} أنمي في المفضلة"
            else -> "${items.size} أنمي في سجل المشاهدة"
        }
        list.adapter = AnimeCardAdapter(items) { item ->
            startActivity(android.content.Intent(this, DetailActivity::class.java).apply {
                putExtra(DetailActivity.EXTRA_ID, item.id)
            })
        }
    }
}

package com.nova.anime.tv

import android.graphics.Color
import android.os.Bundle
import android.view.View
import android.view.Window
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.ScrollView
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : ComponentActivity() {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private lateinit var rowsContainer: LinearLayout
    private lateinit var progress: ProgressBar
    private lateinit var error: TextView
    private lateinit var profile: NovaUiProfile

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.requestFeature(Window.FEATURE_NO_TITLE)
        window.setNavigationBarColor(Color.rgb(9, 9, 11))
        window.setStatusBarColor(Color.rgb(9, 9, 11))
        profile = uiProfile()
        buildUi()
        loadHome()
    }

    private fun buildUi() {
        val scroll = ScrollView(this).apply {
            setBackgroundColor(Color.rgb(9, 9, 11))
            isFillViewport = true
        }
        val content = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(
                dp(profile.horizontalPaddingDp),
                dp(if (profile.isTv) 34 else 18),
                dp(profile.horizontalPaddingDp),
                dp(if (profile.isTv) 70 else 36),
            )
            layoutDirection = View.LAYOUT_DIRECTION_RTL
        }
        scroll.addView(content)

        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
        }
        val brand = tvText(this, "Nova TV", if (profile.isTv) 31f else 25f).apply {
            setTextColor(Color.rgb(216, 180, 254))
            typeface = android.graphics.Typeface.DEFAULT_BOLD
        }
        header.addView(brand, LinearLayout.LayoutParams(0, dp(if (profile.isTv) 62 else 54), 1f))
        val library = tvButton(this, "مكتبتي")
        library.setOnClickListener {
            startActivity(android.content.Intent(this, LibraryActivity::class.java))
        }
        header.addView(
            library,
            LinearLayout.LayoutParams(
                dp(if (profile.isTv) 150 else 112),
                dp(if (profile.isTv) 62 else 52),
            ).apply { marginEnd = dp(if (profile.isTv) 12 else 8) },
        )
        val search = tvButton(this, "بحث")
        search.setOnClickListener { startActivity(android.content.Intent(this, SearchActivity::class.java)) }
        header.addView(
            search,
            LinearLayout.LayoutParams(
                dp(if (profile.isTv) 150 else 112),
                dp(if (profile.isTv) 62 else 52),
            ),
        )
        content.addView(header)

        val subtitle = tvText(
            this,
            "منصة الأنمي العربية للهاتف والتلفاز",
            if (profile.isTv) 17f else 14f,
            Color.rgb(161, 161, 170),
        )
        subtitle.setPadding(0, dp(2), 0, dp(if (profile.isTv) 20 else 12))
        content.addView(subtitle)

        progress = ProgressBar(this).apply {
            isIndeterminate = true
            indeterminateTintList = android.content.res.ColorStateList.valueOf(Color.rgb(192, 132, 252))
        }
        content.addView(progress, LinearLayout.LayoutParams(dp(if (profile.isTv) 46 else 36), dp(if (profile.isTv) 46 else 36)).apply {
            gravity = android.view.Gravity.CENTER_HORIZONTAL
        })

        error = tvText(this, "", 18f, Color.rgb(248, 113, 113)).apply {
            gravity = android.view.Gravity.CENTER
            visibility = View.GONE
        }
        content.addView(error, LinearLayout.LayoutParams(-1, dp(70)))

        rowsContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        content.addView(rowsContainer, LinearLayout.LayoutParams(-1, -2))
        setContentView(scroll)
    }

    private fun loadHome() {
        progress.visibility = View.VISIBLE
        error.visibility = View.GONE
        scope.launch {
            try {
                val home = withContext(Dispatchers.IO) { ApiClient.home() }
                rowsContainer.removeAllViews()
                addRow("تابع المشاهدة", NovaStore.recent(this@MainActivity).take(profile.rowItemCount))
                addRow("الأكثر رواجًا", home.latest)
                addRow("الأكثر شعبية", home.popular)
                addRow("الأعلى تقييمًا", home.topRated)
                progress.visibility = View.GONE
                if (rowsContainer.childCount == 0) {
                    showError("لم تصل نتائج من الخادم. جرّب إعادة فتح التطبيق.")
                }
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (errorValue: Exception) {
                progress.visibility = View.GONE
                if (NovaStore.recent(this@MainActivity).isEmpty()) {
                    showError("تعذر الاتصال بالخادم. تحقق من الشبكة وحاول مرة أخرى.")
                } else {
                    rowsContainer.removeAllViews()
                    addRow("تابع المشاهدة", NovaStore.recent(this@MainActivity).take(profile.rowItemCount))
                    showError("تعذر تحديث الكتالوج. عُرض سجل المشاهدة المحفوظ.")
                }
            }
        }
    }

    private fun addRow(label: String, items: List<AnimeItem>) {
        if (items.isEmpty()) return
        val title = tvText(this, label, 24f).apply {
            typeface = android.graphics.Typeface.DEFAULT_BOLD
            setTextColor(Color.WHITE)
            setPadding(0, dp(20), 0, dp(12))
        }
        rowsContainer.addView(title, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 64 else 52)))

        val list = RecyclerView(this).apply {
            layoutManager = LinearLayoutManager(this@MainActivity, RecyclerView.HORIZONTAL, false)
             adapter = AnimeCardAdapter(items.take(profile.rowItemCount)) { item ->
                startActivity(android.content.Intent(this@MainActivity, DetailActivity::class.java).apply {
                    putExtra(DetailActivity.EXTRA_ID, item.id)
                })
            }
            itemAnimator = null
            overScrollMode = View.OVER_SCROLL_NEVER
            clipChildren = false
             setPadding(dp(4), dp(8), dp(4), dp(12))
            clipToPadding = false
            layoutDirection = View.LAYOUT_DIRECTION_LTR
        }
        rowsContainer.addView(
            list,
            LinearLayout.LayoutParams(-1, dp(profile.cardHeightDp + if (profile.isTv) 24 else 20)),
        )
        if (rowsContainer.childCount == 2) {
            list.post { list.getChildAt(0)?.requestFocus() }
        }
    }

    private fun showError(message: String) {
        error.text = message
        error.visibility = View.VISIBLE
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }
}
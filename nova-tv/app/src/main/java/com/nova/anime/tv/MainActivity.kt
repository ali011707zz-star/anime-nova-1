package com.nova.anime.tv

import android.os.Bundle
import android.view.Gravity
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
    private lateinit var retry: TextView
    private lateinit var scroll: ScrollView
    private val navItems = mutableListOf<TvNavItemView>()
    private val rowAnchors = mutableMapOf<Int, View>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.requestFeature(Window.FEATURE_NO_TITLE)
        window.setNavigationBarColor(NovaColors.background)
        window.setStatusBarColor(NovaColors.background)
        buildUi()
        loadHome()
    }

    private fun buildUi() {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            layoutDirection = View.LAYOUT_DIRECTION_LTR
            setBackgroundColor(NovaColors.background)
        }

        val drawer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_LTR
            setPadding(dp(18), dp(28), dp(18), dp(28))
            background = roundedBackground(
                this@MainActivity,
                NovaColors.surface,
                NovaColors.divider,
                1,
                0,
            )
        }
        drawer.addView(
            tvText(this, "NOVA TV", 30f, NovaColors.primaryBright).apply {
                typeface = android.graphics.Typeface.DEFAULT_BOLD
                gravity = Gravity.CENTER
            },
            LinearLayout.LayoutParams(-1, dp(58)),
        )
        drawer.addView(
            tvText(this, "منصة الأنمي العربية", 16f, NovaColors.muted).apply {
                gravity = Gravity.CENTER
                setPadding(0, 0, 0, dp(18))
            },
            LinearLayout.LayoutParams(-1, dp(42)),
        )
        drawer.addView(divider(), LinearLayout.LayoutParams(-1, dp(1)).apply {
            bottomMargin = dp(18)
        })

        addNavItem(drawer, "⌂", "آخر التحديثات", 0)
        addNavItem(drawer, "★", "الأكثر شعبية", 1)
        addNavItem(drawer, "▥", "الأعلى تقييمًا", 2)
        addNavItem(drawer, "⌕", "بحث عن أنمي", -1) {
            startActivity(android.content.Intent(this, SearchActivity::class.java))
        }

        drawer.addView(
            tvText(this, "تجربة التلفاز", 15f, NovaColors.muted).apply {
                setPadding(dp(20), dp(24), dp(20), dp(10))
            },
            LinearLayout.LayoutParams(-1, dp(58)),
        )
        addNavItem(drawer, "⚙", "الإعدادات", -1)
        drawer.addView(View(this), LinearLayout.LayoutParams(-1, 0, 1f))
        drawer.addView(
            tvText(this, "تنقّل بالأسهم • اختر بالزر الأوسط", 13f, NovaColors.muted).apply {
                gravity = Gravity.CENTER
                textAlignment = View.TEXT_ALIGNMENT_CENTER
            },
            LinearLayout.LayoutParams(-1, dp(42)),
        )
        root.addView(drawer, LinearLayout.LayoutParams(dp(306), -1))

        val contentColumn = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setBackgroundColor(NovaColors.background)
        }
        val topBar = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(34), dp(18), dp(38), dp(12))
        }
        topBar.addView(
            tvText(this, "آخر التحديثات", 29f, NovaColors.text).apply {
                typeface = android.graphics.Typeface.DEFAULT_BOLD
            },
            LinearLayout.LayoutParams(0, dp(70), 1f),
        )
        val search = tvButton(this, "بحث").apply {
            textSize = 20f
            setOnClickListener {
                startActivity(android.content.Intent(this@MainActivity, SearchActivity::class.java))
            }
        }
        topBar.addView(search, LinearLayout.LayoutParams(dp(144), dp(62)))
        contentColumn.addView(topBar, LinearLayout.LayoutParams(-1, dp(89)))
        contentColumn.addView(divider(), LinearLayout.LayoutParams(-1, dp(1)).apply {
            marginStart = dp(34)
            marginEnd = dp(38)
        })

        scroll = ScrollView(this).apply {
            setBackgroundColor(NovaColors.background)
            isFillViewport = true
            isSmoothScrollingEnabled = true
        }
        val scrollContent = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(34), dp(18), dp(38), dp(54))
        }
        scroll.addView(scrollContent)

        progress = ProgressBar(this).apply {
            isIndeterminate = true
            indeterminateTintList =
                android.content.res.ColorStateList.valueOf(NovaColors.primary)
        }
        scrollContent.addView(progress, LinearLayout.LayoutParams(dp(48), dp(48)).apply {
            gravity = Gravity.CENTER_HORIZONTAL
            topMargin = dp(50)
        })

        error = tvText(this, "", 20f, NovaColors.danger).apply {
            gravity = Gravity.CENTER
            visibility = View.GONE
            setPadding(dp(24), 0, dp(24), 0)
        }
        scrollContent.addView(error, LinearLayout.LayoutParams(-1, dp(82)))
        retry = tvButton(this, "إعادة المحاولة").apply {
            visibility = View.GONE
            setOnClickListener { loadHome() }
        }
        scrollContent.addView(retry, LinearLayout.LayoutParams(dp(210), dp(60)).apply {
            gravity = Gravity.CENTER_HORIZONTAL
            bottomMargin = dp(20)
        })

        rowsContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        scrollContent.addView(rowsContainer, LinearLayout.LayoutParams(-1, -2))
        contentColumn.addView(scroll, LinearLayout.LayoutParams(-1, 0, 1f))
        root.addView(contentColumn, LinearLayout.LayoutParams(0, -1, 1f))
        setContentView(root)
    }

    private fun loadHome() {
        progress.visibility = View.VISIBLE
        error.visibility = View.GONE
        retry.visibility = View.GONE
        rowsContainer.removeAllViews()
        rowAnchors.clear()
        scope.launch {
            try {
                val home = withContext(Dispatchers.IO) { ApiClient.home() }
                addRow(0, "الأكثر رواجًا", home.latest)
                addRow(1, "الأكثر شعبية", home.popular)
                addRow(2, "الأعلى تقييمًا", home.topRated)
                progress.visibility = View.GONE
                if (rowsContainer.childCount == 0) {
                    showError("لم تصل نتائج من الخادم. تحقق من الاتصال وحاول مرة أخرى.")
                }
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                progress.visibility = View.GONE
                showError("تعذر الاتصال بالخادم. تحقق من الشبكة وحاول مرة أخرى.")
            }
        }
    }

    private fun addRow(index: Int, label: String, items: List<AnimeItem>) {
        if (items.isEmpty()) return
        val anchor = View(this)
        rowAnchors[index] = anchor
        rowsContainer.addView(anchor, LinearLayout.LayoutParams(-1, 1))

        rowsContainer.addView(
            tvText(this, label, 24f, NovaColors.text).apply {
                typeface = android.graphics.Typeface.DEFAULT_BOLD
                setPadding(0, dp(24), 0, dp(12))
            },
            LinearLayout.LayoutParams(-1, dp(72)),
        )

        val list = RecyclerView(this).apply {
            layoutManager = LinearLayoutManager(this@MainActivity, RecyclerView.HORIZONTAL, false)
            adapter = AnimeCardAdapter(items.take(12)) { item ->
                startActivity(android.content.Intent(this@MainActivity, DetailActivity::class.java).apply {
                    putExtra(DetailActivity.EXTRA_ID, item.id)
                })
            }
            itemAnimator = null
            overScrollMode = View.OVER_SCROLL_NEVER
            clipChildren = false
            setPadding(0, dp(12), 0, dp(18))
            clipToPadding = false
            layoutDirection = View.LAYOUT_DIRECTION_LTR
        }
        rowsContainer.addView(list, LinearLayout.LayoutParams(-1, dp(382)))
    }

    private fun showError(message: String) {
        error.text = message
        error.visibility = View.VISIBLE
        retry.visibility = View.VISIBLE
    }

    private fun divider(): View =
        View(this).apply { setBackgroundColor(NovaColors.divider) }

    private fun addNavItem(
        drawer: LinearLayout,
        icon: String,
        label: String,
        rowIndex: Int,
        onClick: (() -> Unit)? = null,
    ) {
        val item = TvNavItemView(this, icon, label)
        item.setOnClickListener {
            if (rowIndex >= 0) {
                navItems.forEachIndexed { index, nav -> nav.setActive(index == rowIndex) }
                rowAnchors[rowIndex]?.let { anchor ->
                    scroll.smoothScrollTo(0, anchor.top)
                }
            }
            onClick?.invoke()
        }
        if (rowIndex == 0) item.setActive(true)
        navItems.add(item)
        drawer.addView(item, LinearLayout.LayoutParams(-1, dp(64)).apply {
            bottomMargin = dp(6)
        })
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }
}
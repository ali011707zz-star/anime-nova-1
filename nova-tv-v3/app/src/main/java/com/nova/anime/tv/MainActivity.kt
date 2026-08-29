package com.nova.anime.tv

import android.graphics.Color
import android.graphics.Typeface
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.view.Window
import android.widget.FrameLayout
import android.widget.ImageView
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
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : ComponentActivity() {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private lateinit var profile: NovaUiProfile
    private lateinit var rootFrame: FrameLayout
    private lateinit var rowsContainer: LinearLayout
    private lateinit var progress: ProgressBar
    private lateinit var error: TextView
    private lateinit var drawer: View
    private lateinit var drawerScrim: View

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ApiClient.setUserToken(NovaSession.userToken(this))
        window.requestFeature(Window.FEATURE_NO_TITLE)
        window.setNavigationBarColor(Color.rgb(9, 9, 11))
        window.setStatusBarColor(Color.rgb(9, 9, 11))
        profile = uiProfile()
        buildUi()
        loadHome()
    }

    private fun buildUi() {
        rootFrame = FrameLayout(this).apply {
            setBackgroundColor(NOVA_BACKGROUND)
            layoutDirection = View.LAYOUT_DIRECTION_RTL
        }
        val scroll = ScrollView(this).apply {
            isFillViewport = true
            overScrollMode = View.OVER_SCROLL_NEVER
        }
        val content = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(
                dp(if (profile.isTv) 46 else 16),
                dp(if (profile.isTv) 22 else 8),
                dp(if (profile.isTv) 46 else 16),
                dp(if (profile.isTv) 92 else 78),
            )
        }
        scroll.addView(content)
        rootFrame.addView(scroll, FrameLayout.LayoutParams(-1, -1))

        content.addView(buildHeader(), LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 58 else 48)))
        if (!profile.isTv) content.addView(buildAnnouncement(), LinearLayout.LayoutParams(-1, dp(42)).apply {
            topMargin = dp(6)
        })

        progress = ProgressBar(this).apply {
            isIndeterminate = true
            indeterminateTintList = android.content.res.ColorStateList.valueOf(NOVA_PRIMARY)
        }
        content.addView(progress, LinearLayout.LayoutParams(dp(36), dp(36)).apply {
            gravity = Gravity.CENTER_HORIZONTAL
            topMargin = dp(20)
        })
        error = tvText(this, "", 15f, Color.rgb(248, 113, 113)).apply {
            gravity = Gravity.CENTER
            visibility = View.GONE
        }
        content.addView(error, LinearLayout.LayoutParams(-1, dp(56)))
        rowsContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
        }
        content.addView(rowsContainer, LinearLayout.LayoutParams(-1, -2))

        buildBottomNavigation()
        buildDrawer()
        setContentView(rootFrame)
    }

    private fun buildHeader(): View {
        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_LTR
        }
        val brandRow = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_LTR
        }
        val badge = tvText(this, "▶", if (profile.isTv) 13f else 10f).apply {
            gravity = Gravity.CENTER
            setTextColor(Color.WHITE)
            background = GradientDrawable().apply {
                cornerRadius = dp(6).toFloat()
                setColor(NOVA_PRIMARY)
            }
        }
        brandRow.addView(badge, LinearLayout.LayoutParams(dp(if (profile.isTv) 30 else 24), dp(if (profile.isTv) 30 else 24)))
        brandRow.addView(tvText(this, "Anime ", if (profile.isTv) 25f else 18f).apply {
            typeface = Typeface.DEFAULT_BOLD
            setTextColor(NOVA_TEXT)
            setPadding(dp(8), 0, 0, 0)
        })
        brandRow.addView(tvText(this, "NOVA", if (profile.isTv) 25f else 18f, NOVA_PRIMARY).apply {
            typeface = Typeface.DEFAULT_BOLD
        })
        header.addView(brandRow, LinearLayout.LayoutParams(0, -1, 1f))
        val menu = tvText(this, "☰", if (profile.isTv) 30f else 25f).apply {
            gravity = Gravity.CENTER
            setTextColor(NOVA_TEXT)
            isFocusable = true
            isClickable = true
            contentDescription = "فتح القائمة"
            setOnClickListener { setDrawerVisible(true) }
            setOnFocusChangeListener { view, focused ->
                view.setTextColor(if (focused) NOVA_PRIMARY_LIGHT else NOVA_TEXT)
            }
        }
        header.addView(menu, LinearLayout.LayoutParams(dp(if (profile.isTv) 58 else 44), -1))
        return header
    }

    private fun buildAnnouncement(): View =
        tvText(this, "استمتع بأحدث حلقات الأنمي المترجمة والمدبلجة", 11f, NOVA_MUTED).apply {
            gravity = Gravity.CENTER
            background = GradientDrawable().apply {
                cornerRadius = dp(10).toFloat()
                setColor(NOVA_CARD)
                setStroke(dp(1), NOVA_BORDER)
            }
        }

    private fun loadHome() {
        progress.visibility = View.VISIBLE
        error.visibility = View.GONE
        scope.launch {
            try {
                val results = withContext(Dispatchers.IO) {
                    listOf(
                        async { ApiClient.home() },
                        async { runCatching { ApiClient.dubbedCatalog(animation = true) }.getOrDefault(emptyList()) },
                        async { runCatching { ApiClient.dubbedCatalog(animation = false) }.getOrDefault(emptyList()) },
                    ).awaitAll()
                }
                val home = results[0] as HomeRows
                val awDubbed = results[1] as List<*>
                val dubbed = results[2] as List<*>
                rowsContainer.removeAllViews()
                addHero(home.popular.ifEmpty { home.trending })
                addRow("متابعة المشاهدة", NovaStore.recent(this@MainActivity).take(profile.rowItemCount), "#22C55E")
                addRow("📺 أحدث الحلقات", home.airing, "#F43F5E")
                addContentRow("✨ أنيميشن مدبلج", awDubbed.filterIsInstance<NovaContentCard>(), "#06B6D4", SectionActivity.AW_DUBBED)
                addContentRow("🎬 كرتون مدبلج عربي", dubbed.filterIsInstance<NovaContentCard>(), "#F59E0B", SectionActivity.DUBBED)
                addRow("رائج الآن", home.trending, "#8B5CF6")
                addRow("أنمي الموسم", home.seasonal, "#A78BFA")
                addRow("يُعرض حالياً", home.airing, "#22C55E")
                addRow("الأعلى تقييماً على الإطلاق", home.topRated, "#FBBF24")
                addRow("الأكثر شعبية", home.popular, "#EC4899")
                addRow("أفلام الأنمي", home.movies, "#3B82F6")
                addRow("إيسيكاي", home.isekai, "#06B6D4")
                progress.visibility = View.GONE
                if (rowsContainer.childCount == 0) showError("لم تصل نتائج من الخادم. جرّب إعادة فتح التطبيق.")
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                progress.visibility = View.GONE
                val recent = NovaStore.recent(this@MainActivity)
                if (recent.isEmpty()) {
                    showError("تعذر الاتصال بالخادم. تحقق من الشبكة وحاول مرة أخرى.")
                } else {
                    rowsContainer.removeAllViews()
                    addRow("متابعة المشاهدة", recent.take(profile.rowItemCount), "#22C55E")
                    showError("تعذر تحديث الكتالوج. عُرض سجل المشاهدة المحفوظ.")
                }
            }
        }
    }

    private fun addHero(items: List<AnimeItem>) {
        val item = items.firstOrNull { !it.bannerUrl.isNullOrBlank() } ?: items.firstOrNull() ?: return
        val hero = FrameLayout(this).apply {
            background = GradientDrawable().apply {
                cornerRadius = dp(16).toFloat()
                setColor(NOVA_CARD)
                setStroke(dp(1), NOVA_BORDER)
            }
            clipChildren = true
            isFocusable = true
            setOnClickListener {
                startActivity(android.content.Intent(this@MainActivity, DetailActivity::class.java)
                    .putExtra(DetailActivity.EXTRA_ID, item.id))
            }
        }
        val image = ImageView(this).apply {
            scaleType = ImageView.ScaleType.CENTER_CROP
            alpha = 0.8f
        }
        ImageLoader.load(image, item.bannerUrl ?: item.coverUrl)
        hero.addView(image, FrameLayout.LayoutParams(-1, -1))
        hero.addView(View(this).apply {
            background = GradientDrawable(
                GradientDrawable.Orientation.TOP_BOTTOM,
                intArrayOf(Color.TRANSPARENT, Color.argb(245, 9, 9, 11)),
            )
        }, FrameLayout.LayoutParams(-1, -1))
        val copy = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.BOTTOM
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(18), dp(18), dp(18), dp(16))
        }
        copy.addView(tvText(this, item.displayTitle, if (profile.isTv) 27f else 20f).apply {
            typeface = Typeface.DEFAULT_BOLD
            maxLines = 2
            ellipsize = android.text.TextUtils.TruncateAt.END
        })
        copy.addView(tvText(
            this,
            listOfNotNull(
                item.score?.let { "★ ${it / 10.0}" },
                item.episodes?.let { "$it حلقة" },
                "أنمي",
            ).joinToString("  ·  "),
            if (profile.isTv) 15f else 12f,
            NOVA_MUTED,
        ))
        val actions = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(0, dp(10), 0, 0)
        }
        val watch = tvButton(this, "شاهد الآن").apply {
            textSize = if (profile.isTv) 17f else 13f
            setOnClickListener { hero.performClick() }
        }
        actions.addView(watch, LinearLayout.LayoutParams(dp(if (profile.isTv) 150 else 112), dp(if (profile.isTv) 46 else 38)))
        copy.addView(actions)
        hero.addView(copy, FrameLayout.LayoutParams(-1, -1))
        rowsContainer.addView(hero, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 360 else 265)).apply {
            bottomMargin = dp(12)
        })
    }

    private fun addRow(label: String, items: List<AnimeItem>, colorHex: String = "#8B5CF6") {
        if (items.isEmpty()) return
        addSectionHeader(label, colorHex)
        val list = RecyclerView(this).apply {
            layoutManager = LinearLayoutManager(this@MainActivity, RecyclerView.HORIZONTAL, false)
            adapter = AnimeCardAdapter(items.take(profile.rowItemCount)) { item ->
                startActivity(android.content.Intent(this@MainActivity, DetailActivity::class.java)
                    .putExtra(DetailActivity.EXTRA_ID, item.id))
            }
            setHasFixedSize(true)
            setItemViewCacheSize(6)
            itemAnimator = null
            overScrollMode = View.OVER_SCROLL_NEVER
            clipChildren = false
            setPadding(dp(4), dp(2), dp(4), dp(10))
            clipToPadding = false
            layoutDirection = View.LAYOUT_DIRECTION_LTR
        }
        rowsContainer.addView(list, LinearLayout.LayoutParams(-1, dp(profile.cardHeightDp + if (profile.isTv) 22 else 18)))
    }

    private fun addContentRow(
        label: String,
        items: List<NovaContentCard>,
        colorHex: String,
        section: String,
    ) {
        if (items.isEmpty()) return
        addSectionHeader(label, colorHex)
        val list = RecyclerView(this).apply {
            layoutManager = LinearLayoutManager(this@MainActivity, RecyclerView.HORIZONTAL, false)
            adapter = ContentCardAdapter(items.take(profile.rowItemCount)) {
                startActivity(android.content.Intent(this@MainActivity, SectionActivity::class.java)
                    .putExtra(SectionActivity.EXTRA_SECTION, section))
            }
            setHasFixedSize(true)
            itemAnimator = null
            overScrollMode = View.OVER_SCROLL_NEVER
            layoutDirection = View.LAYOUT_DIRECTION_LTR
            setPadding(dp(4), dp(2), dp(4), dp(10))
            clipToPadding = false
        }
        rowsContainer.addView(list, LinearLayout.LayoutParams(-1, dp(profile.cardHeightDp + 88)))
    }

    private fun addSectionHeader(label: String, colorHex: String) {
        val color = Color.parseColor(colorHex)
        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(0, dp(15), 0, dp(7))
        }
        val dot = View(this).apply {
            background = GradientDrawable().apply {
                cornerRadius = dp(4).toFloat()
                setColor(color)
            }
        }
        header.addView(dot, LinearLayout.LayoutParams(dp(8), dp(8)).apply { marginStart = dp(7) })
        header.addView(tvText(this, label, if (profile.isTv) 21f else 16f).apply {
            typeface = Typeface.DEFAULT_BOLD
        }, LinearLayout.LayoutParams(0, -1, 1f))
        header.addView(tvText(this, "عرض الكل  ‹", if (profile.isTv) 15f else 11f, NOVA_PRIMARY).apply {
            gravity = Gravity.CENTER
            isFocusable = true
            setOnClickListener { startActivity(android.content.Intent(this@MainActivity, NavigationActivity::class.java)) }
        }, LinearLayout.LayoutParams(dp(if (profile.isTv) 110 else 78), -1))
        rowsContainer.addView(header, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 58 else 44)))
    }

    private fun buildBottomNavigation() {
        val nav = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            layoutDirection = View.LAYOUT_DIRECTION_LTR
            setBackgroundColor(Color.rgb(14, 14, 20))
            setPadding(dp(8), dp(5), dp(8), dp(5))
            elevation = dp(10).toFloat()
        }
        val entries = listOf(
            "الرئيسية" to "⌂",
            "البحث" to "⌕",
            "تصفح" to "▦",
            "المدبلج" to "▣",
            "مكتبتي" to "♡",
        )
        entries.forEachIndexed { index, (label, icon) ->
            val tab = LinearLayout(this).apply {
                orientation = LinearLayout.VERTICAL
                gravity = Gravity.CENTER
                isFocusable = true
                isClickable = true
                setOnFocusChangeListener { view, focused ->
                    view.alpha = if (focused || index == 0) 1f else 0.65f
                }
                setOnClickListener {
                    when (index) {
                        0 -> Unit
                        1 -> startActivity(android.content.Intent(this@MainActivity, SearchActivity::class.java))
                        2 -> openSection(SectionActivity.BROWSE)
                        3 -> openSection(SectionActivity.DUBBED)
                        4 -> startActivity(android.content.Intent(this@MainActivity, LibraryActivity::class.java))
                    }
                }
            }
            tab.addView(tvText(this, icon, if (profile.isTv) 22f else 18f, if (index == 0) NOVA_PRIMARY else NOVA_MUTED).apply {
                gravity = Gravity.CENTER
            }, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 28 else 23)))
            tab.addView(tvText(this, label, if (profile.isTv) 13f else 10f, if (index == 0) NOVA_PRIMARY else NOVA_MUTED).apply {
                gravity = Gravity.CENTER
            }, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 26 else 20)))
            nav.addView(tab, LinearLayout.LayoutParams(0, -1, 1f))
        }
        rootFrame.addView(nav, FrameLayout.LayoutParams(-1, dp(if (profile.isTv) 70 else 62), Gravity.BOTTOM))
    }

    private fun buildDrawer() {
        drawerScrim = View(this).apply {
            setBackgroundColor(Color.argb(175, 0, 0, 0))
            visibility = View.GONE
            setOnClickListener { setDrawerVisible(false) }
        }
        rootFrame.addView(drawerScrim, FrameLayout.LayoutParams(-1, -1))
        drawer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setBackgroundColor(Color.rgb(14, 14, 20))
            setPadding(dp(20), dp(if (profile.isTv) 34 else 24), dp(20), dp(20))
            elevation = dp(18).toFloat()
        }
        val drawerWidth = if (profile.isTv) 390 else 310
        val drawerRoot = drawer as LinearLayout
        drawerRoot.addView(tvText(this, "Anime NOVA", if (profile.isTv) 26f else 21f, NOVA_PRIMARY).apply {
            typeface = Typeface.DEFAULT_BOLD
        }, LinearLayout.LayoutParams(-1, dp(44)))
        drawerRoot.addView(tvText(this, "كل ما تحبه من الأنمي في مكان واحد", 12f, NOVA_MUTED).apply {
            setPadding(0, 0, 0, dp(16))
        }, LinearLayout.LayoutParams(-1, dp(34)))
        val items = listOf(
            "الرئيسية" to { setDrawerVisible(false) },
            "البحث" to { setDrawerVisible(false); startActivity(android.content.Intent(this, SearchActivity::class.java)) },
            "تصفح الأنمي" to { setDrawerVisible(false); openSection(SectionActivity.BROWSE) },
            "أنيميشن مدبلج" to { setDrawerVisible(false); openSection(SectionActivity.AW_DUBBED) },
            "كرتون مدبلج عربي" to { setDrawerVisible(false); openSection(SectionActivity.DUBBED) },
            "جدول البث" to { setDrawerVisible(false); openSection(SectionActivity.SCHEDULE) },
            "الأخبار" to { setDrawerVisible(false); openSection(SectionActivity.NEWS) },
            "مكتبتي" to { setDrawerVisible(false); startActivity(android.content.Intent(this, LibraryActivity::class.java)) },
            "التنزيلات" to { setDrawerVisible(false); startActivity(android.content.Intent(this, DownloadsActivity::class.java)) },
            "الملف الشخصي" to { setDrawerVisible(false); startActivity(android.content.Intent(this, ProfileActivity::class.java)) },
            "الإعدادات" to { setDrawerVisible(false); startActivity(android.content.Intent(this, SettingsActivity::class.java)) },
        )
        items.forEach { (label, action) ->
            drawerRoot.addView(tvButton(this, label).apply {
                gravity = Gravity.CENTER_VERTICAL or Gravity.RIGHT
                setOnClickListener { action() }
            }, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 56 else 48)).apply {
                bottomMargin = dp(7)
            })
        }
        drawer.visibility = View.GONE
        rootFrame.addView(drawer, FrameLayout.LayoutParams(dp(drawerWidth), -1, Gravity.END))
    }

    private fun setDrawerVisible(visible: Boolean) {
        drawer.visibility = if (visible) View.VISIBLE else View.GONE
        drawerScrim.visibility = if (visible) View.VISIBLE else View.GONE
        if (visible) drawer.requestFocus()
    }

    private fun openSection(section: String) {
        startActivity(android.content.Intent(this, SectionActivity::class.java)
            .putExtra(SectionActivity.EXTRA_SECTION, section))
    }

    private fun showError(message: String) {
        error.text = message
        error.visibility = View.VISIBLE
    }

    override fun onBackPressed() {
        if (::drawer.isInitialized && drawer.visibility == View.VISIBLE) {
            setDrawerVisible(false)
        } else {
            super.onBackPressed()
        }
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }

    private companion object {
        const val NOVA_BACKGROUND = 0xFF09090B.toInt()
        const val NOVA_CARD = 0xFF111116.toInt()
        const val NOVA_TEXT = 0xFFE8E8F0.toInt()
        const val NOVA_MUTED = 0xFF71717A.toInt()
        const val NOVA_PRIMARY = 0xFF8B5CF6.toInt()
        const val NOVA_PRIMARY_LIGHT = 0xFFC4B5FD.toInt()
        const val NOVA_BORDER = 0x1AFFFFFF
    }
}
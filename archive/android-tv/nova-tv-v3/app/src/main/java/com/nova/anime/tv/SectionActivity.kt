package com.nova.anime.tv

import android.app.AlertDialog
import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.view.View
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class SectionActivity : ComponentActivity() {
    companion object {
        const val EXTRA_SECTION = "section"
        const val BROWSE = "browse"
        const val ANIMATION = "animation"
        const val AW_DUBBED = "aw-dubbed"
        const val DUBBED = "dubbed"
        const val NEWS = "news"
        const val SCHEDULE = "schedule"
    }

    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private lateinit var profile: NovaUiProfile
    private lateinit var title: TextView
    private lateinit var status: TextView
    private lateinit var progress: ProgressBar
    private lateinit var list: RecyclerView

    private val section: String
        get() = intent.getStringExtra(EXTRA_SECTION).orEmpty()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ApiClient.setUserToken(NovaSession.userToken(this))
        profile = uiProfile()
        buildUi()
        load()
    }

    private fun buildUi() {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(Color.rgb(9, 9, 11))
            setPadding(
                dp(profile.horizontalPaddingDp),
                dp(if (profile.isTv) 30 else 18),
                dp(profile.horizontalPaddingDp),
                dp(if (profile.isTv) 24 else 14),
            )
            layoutDirection = View.LAYOUT_DIRECTION_RTL
        }
        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
        }
        val back = tvButton(this, "رجوع")
        back.setOnClickListener { finish() }
        header.addView(back, LinearLayout.LayoutParams(dp(if (profile.isTv) 135 else 100), dp(if (profile.isTv) 56 else 50)))
        title = tvText(this, sectionTitle(), if (profile.isTv) 28f else 23f).apply {
            typeface = android.graphics.Typeface.DEFAULT_BOLD
            gravity = android.view.Gravity.CENTER
        }
        header.addView(title, LinearLayout.LayoutParams(0, dp(56), 1f))
        val menu = tvButton(this, "القائمة")
        menu.setOnClickListener { startActivity(Intent(this, NavigationActivity::class.java)) }
        header.addView(menu, LinearLayout.LayoutParams(dp(if (profile.isTv) 135 else 100), dp(if (profile.isTv) 56 else 50)))
        root.addView(header)

        status = tvText(this, "", 15f, Color.rgb(161, 161, 170))
        status.setPadding(0, dp(12), 0, dp(8))
        root.addView(status, LinearLayout.LayoutParams(-1, dp(42)))
        progress = ProgressBar(this).apply {
            indeterminateTintList = android.content.res.ColorStateList.valueOf(Color.rgb(192, 132, 252))
            visibility = View.GONE
        }
        root.addView(progress, LinearLayout.LayoutParams(dp(38), dp(38)).apply {
            gravity = android.view.Gravity.CENTER_HORIZONTAL
        })
        list = RecyclerView(this).apply {
            layoutManager = GridLayoutManager(this@SectionActivity, profile.searchColumns)
            layoutDirection = View.LAYOUT_DIRECTION_LTR
            itemAnimator = null
            setHasFixedSize(true)
            setItemViewCacheSize(8)
            overScrollMode = View.OVER_SCROLL_NEVER
        }
        root.addView(list, LinearLayout.LayoutParams(-1, 0, 1f))
        setContentView(root)
    }

    private fun load() {
        progress.visibility = View.VISIBLE
        status.text = "جاري تحميل ${sectionTitle()}..."
        scope.launch {
            try {
                val cards = withContext(Dispatchers.IO) {
                    when (section) {
                        BROWSE -> ApiClient.home().popular.map { it.asContentCard() }
                        ANIMATION -> ApiClient.animationBrowse("movie")
                        AW_DUBBED -> ApiClient.dubbedCatalog(animation = true)
                        DUBBED -> ApiClient.dubbedCatalog(animation = false)
                        NEWS -> ApiClient.news()
                        SCHEDULE -> ApiClient.schedule()
                        else -> emptyList()
                    }
                }
                list.adapter = ContentCardAdapter(cards) { openCard(it) }
                progress.visibility = View.GONE
                status.text = if (cards.isEmpty()) "لا توجد نتائج متاحة حالياً" else "${cards.size} عنصر"
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                progress.visibility = View.GONE
                status.text = "تعذر تحميل هذا القسم. حاول مرة أخرى."
            }
        }
    }

    private fun openCard(card: NovaContentCard) {
        when (card.type) {
            "animation" -> startActivity(Intent(this, AnimationDetailActivity::class.java).apply {
                putExtra(AnimationDetailActivity.EXTRA_ID, card.id)
                putExtra(AnimationDetailActivity.EXTRA_TYPE, "movie")
                putExtra(AnimationDetailActivity.EXTRA_TITLE, card.title)
                putExtra(AnimationDetailActivity.EXTRA_IMAGE, card.imageUrl)
            })
            "schedule", "content" -> card.id.toIntOrNull()?.let {
                startActivity(Intent(this, DetailActivity::class.java).putExtra(DetailActivity.EXTRA_ID, it))
            } ?: showCardInfo(card)
            else -> showCardInfo(card)
        }
    }

    private fun showCardInfo(card: NovaContentCard) {
        AlertDialog.Builder(this)
            .setTitle(card.title)
            .setMessage(card.description ?: card.subtitle ?: "سيتم فتح تفاصيل هذا القسم في الشاشة التالية.")
            .setPositiveButton("حسنًا", null)
            .show()
    }

    private fun sectionTitle(): String = when (section) {
        BROWSE -> "تصفح الأنمي"
        ANIMATION -> "أفلام ومسلسلات"
        AW_DUBBED -> "أنيميشن مدبلج"
        DUBBED -> "كرتون مدبلج"
        NEWS -> "الأخبار"
        SCHEDULE -> "جدول البث"
        else -> "Anime NOVA"
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }
}

private fun AnimeItem.asContentCard(): NovaContentCard =
    NovaContentCard(
        id = id.toString(),
        title = displayTitle,
        subtitle = listOfNotNull(episodes?.let { "$it حلقة" }, score?.let { "★ ${it / 10.0}" }).joinToString(" · "),
        imageUrl = coverUrl,
        type = "content",
        description = description,
    )
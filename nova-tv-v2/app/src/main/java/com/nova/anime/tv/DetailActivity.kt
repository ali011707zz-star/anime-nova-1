package com.nova.anime.tv

import android.app.AlertDialog
import android.graphics.Color
import android.os.Bundle
import android.view.View
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.ScrollView
import android.widget.TextView
import androidx.activity.ComponentActivity
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.json.JSONObject

class DetailActivity : ComponentActivity() {
    companion object {
        const val EXTRA_ID = "anime_id"
    }

    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private lateinit var body: LinearLayout
    private lateinit var progress: ProgressBar
    private lateinit var error: TextView
    private lateinit var profile: NovaUiProfile
    private var anime: AnimeItem? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        profile = uiProfile()
        buildUi()
        loadDetail(intent.getIntExtra(EXTRA_ID, 0))
    }

    private fun buildUi() {
        val scroll = ScrollView(this).apply {
            setBackgroundColor(Color.rgb(9, 9, 11))
        }
        body = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(
                dp(profile.horizontalPaddingDp),
                dp(if (profile.isTv) 30 else 18),
                dp(profile.horizontalPaddingDp),
                dp(if (profile.isTv) 54 else 28),
            )
        }
        scroll.addView(body)

        val back = tvButton(this, "رجوع")
        back.setOnClickListener { finish() }
        body.addView(
            back,
            LinearLayout.LayoutParams(
                dp(if (profile.isTv) 140 else 110),
                dp(if (profile.isTv) 58 else 52),
            ),
        )

        progress = ProgressBar(this).apply {
            indeterminateTintList = android.content.res.ColorStateList.valueOf(Color.rgb(192, 132, 252))
        }
        body.addView(progress, LinearLayout.LayoutParams(dp(44), dp(44)).apply {
            gravity = android.view.Gravity.CENTER_HORIZONTAL
            topMargin = dp(28)
        })
        error = tvText(this, "", 19f, Color.rgb(248, 113, 113)).apply {
            gravity = android.view.Gravity.CENTER
            visibility = View.GONE
        }
        body.addView(error, LinearLayout.LayoutParams(-1, dp(70)))
        setContentView(scroll)
    }

    private fun loadDetail(id: Int) {
        if (id <= 0) {
            showError("معرّف الأنمي غير صالح.")
            return
        }
        scope.launch {
            try {
                anime = withContext(Dispatchers.IO) { ApiClient.detail(id) }
                progress.visibility = View.GONE
                val current = anime
                if (current == null) {
                    showError("لم يُعثر على تفاصيل هذا الأنمي.")
                } else {
                    NovaStore.saveRecent(this@DetailActivity, current)
                    renderDetail(current)
                }
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                progress.visibility = View.GONE
                showError("تعذر تحميل التفاصيل من الخادم.")
            }
        }
    }

    private fun renderDetail(item: AnimeItem) {
        body.removeViews(1, body.childCount - 1)
        val wideLayout = profile.isTv || profile.widthDp >= 700
        val header = LinearLayout(this).apply {
            orientation = if (wideLayout) LinearLayout.HORIZONTAL else LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            gravity = android.view.Gravity.TOP
            setPadding(0, dp(28), 0, dp(20))
        }
        val cover = ImageView(this).apply {
            scaleType = ImageView.ScaleType.CENTER_CROP
        }
        ImageLoader.load(cover, item.coverUrl)
        header.addView(
            cover,
            LinearLayout.LayoutParams(
                dp(profile.detailCoverWidthDp),
                dp(profile.detailCoverHeightDp),
            ).apply {
                gravity = if (wideLayout) android.view.Gravity.TOP else android.view.Gravity.CENTER_HORIZONTAL
            },
        )

        val info = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(28), 0, 0, 0)
        }
        val title = tvText(this, item.title, 28f).apply {
            typeface = android.graphics.Typeface.DEFAULT_BOLD
        }
        info.addView(title, LinearLayout.LayoutParams(-1, dp(64)))
        item.englishTitle?.let {
            info.addView(tvText(this, it, 18f, Color.rgb(161, 161, 170)), LinearLayout.LayoutParams(-1, dp(38)))
        }
        val meta = listOfNotNull(
            item.episodes?.let { "$it حلقة" },
            item.score?.let { "★ ${it / 10.0}" },
            item.format,
            item.status,
            item.seasonYear?.toString(),
        ).joinToString("  •  ")
        info.addView(tvText(this, meta, 17f, Color.rgb(216, 180, 254)), LinearLayout.LayoutParams(-1, dp(42)))
        if (item.genres.isNotEmpty()) {
            info.addView(
                tvText(this, item.genres.joinToString("  •  "), 15f, Color.rgb(161, 161, 170)),
                LinearLayout.LayoutParams(-1, dp(34)),
            )
        }
        val description = stripHtml(item.description).ifBlank { "لا يوجد وصف متاح." }
        val descriptionView = tvText(this, description, 17f, Color.rgb(212, 212, 216)).apply {
            maxLines = 8
            ellipsize = android.text.TextUtils.TruncateAt.END
            gravity = android.view.Gravity.TOP
        }
        info.addView(
            descriptionView,
            if (wideLayout) {
                LinearLayout.LayoutParams(0, dp(180), 1f)
            } else {
                LinearLayout.LayoutParams(-1, dp(180))
            },
        )
        header.addView(
            info,
            if (wideLayout) {
                LinearLayout.LayoutParams(0, dp(profile.detailCoverHeightDp), 1f)
            } else {
                LinearLayout.LayoutParams(-1, -2).apply { topMargin = dp(16) }
            },
        )
        body.addView(header)

        val favorite = tvButton(
            this,
            if (NovaStore.isFavorite(this, item.id)) "إزالة من المفضلة" else "إضافة إلى المفضلة",
        )
        favorite.setOnClickListener {
            val added = NovaStore.toggleFavorite(this, item)
            favorite.text = if (added) "إزالة من المفضلة" else "إضافة إلى المفضلة"
        }
        body.addView(favorite, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 60 else 52)).apply {
            bottomMargin = dp(12)
        })

        body.addView(tvText(this, "الحلقات", 24f).apply {
            typeface = android.graphics.Typeface.DEFAULT_BOLD
            setPadding(0, dp(8), 0, dp(12))
        }, LinearLayout.LayoutParams(-1, dp(58)))

        val episodeCount = (item.episodes ?: 1).coerceIn(1, 200)
        for (episode in 1..episodeCount) {
            val button = tvButton(this, "الحلقة $episode")
            button.textSize = if (profile.isTv) 18f else 16f
            button.gravity = android.view.Gravity.CENTER_VERTICAL or android.view.Gravity.RIGHT
            body.addView(button, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 64 else 54)).apply {
                bottomMargin = dp(if (profile.isTv) 8 else 6)
            })
            button.setOnClickListener { loadSources(item, episode) }
        }
    }

    private fun loadSources(item: AnimeItem, episode: Int) {
        val dialog = AlertDialog.Builder(this)
            .setTitle("جاري البحث عن مصادر الحلقة $episode")
            .setMessage("قد يستغرق الفحص عدة ثوانٍ...")
            .setNegativeButton("إلغاء", null)
            .create()
        dialog.show()
        scope.launch {
            try {
                val sources = withContext(Dispatchers.IO) { ApiClient.sources(item, episode) }
                    .filter { it.url.isNotBlank() && !it.isEmbed }
                if (dialog.isShowing) dialog.dismiss()
                if (sources.isEmpty()) {
                    showError("لم يتم العثور على مصدر صالح لهذه الحلقة.")
                    return@launch
                }
                val labels = sources.map { it.label }.toTypedArray()
                AlertDialog.Builder(this@DetailActivity)
                    .setTitle("اختر مصدر التشغيل")
                    .setItems(labels) { _, which -> startPlayer(sources[which], item, episode) }
                    .setNegativeButton("إلغاء", null)
                    .show()
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                if (dialog.isShowing) dialog.dismiss()
                showError("تعذر استخراج مصادر هذه الحلقة. جرّب مصدرًا آخر لاحقًا.")
            }
        }
    }

    private fun startPlayer(source: VideoSource, item: AnimeItem, episode: Int) {
        NovaStore.saveRecent(this, item)
        startActivity(android.content.Intent(this, PlayerActivity::class.java).apply {
            putExtra(PlayerActivity.EXTRA_SOURCE_URL, source.url)
            putExtra(PlayerActivity.EXTRA_SOURCE_HEADERS, source.headersJson)
            putExtra(PlayerActivity.EXTRA_SUBTITLE_URL, source.subtitleUrl)
            putExtra(PlayerActivity.EXTRA_TITLE, "${item.title} · الحلقة $episode")
        })
    }

    private fun stripHtml(value: String?): String =
        value.orEmpty()
            .replace(Regex("<br\\s*/?>", RegexOption.IGNORE_CASE), "\n")
            .replace(Regex("<[^>]+>"), "")
            .replace("&amp;", "&")
            .replace("&quot;", "\"")
            .replace("&#039;", "'")
            .trim()

    private fun showError(message: String) {
        error.text = message
        error.visibility = View.VISIBLE
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }
}
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
    private var anime: AnimeItem? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        buildUi()
        loadDetail(intent.getIntExtra(EXTRA_ID, 0))
    }

    private fun buildUi() {
        val scroll = ScrollView(this).apply {
            setBackgroundColor(NovaColors.background)
        }
        body = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(46), dp(28), dp(46), dp(54))
        }
        scroll.addView(body)

        val back = tvButton(this, "رجوع").apply {
            textSize = 20f
        }
        back.setOnClickListener { finish() }
        body.addView(back, LinearLayout.LayoutParams(dp(150), dp(62)))

        progress = ProgressBar(this).apply {
            indeterminateTintList = android.content.res.ColorStateList.valueOf(NovaColors.primary)
        }
        body.addView(progress, LinearLayout.LayoutParams(dp(44), dp(44)).apply {
            gravity = android.view.Gravity.CENTER_HORIZONTAL
            topMargin = dp(28)
        })
        error = tvText(this, "", 20f, NovaColors.danger).apply {
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
        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            gravity = android.view.Gravity.TOP
            setPadding(0, dp(26), 0, dp(26))
        }
        val cover = ImageView(this).apply {
            scaleType = ImageView.ScaleType.CENTER_CROP
        }
        ImageLoader.load(cover, item.coverUrl)
        cover.background = roundedBackground(this, NovaColors.surfaceRaised, NovaColors.divider, 1, 10)
        cover.clipToOutline = true
        header.addView(cover, LinearLayout.LayoutParams(dp(260), dp(360)))

        val info = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(34), 0, 0, 0)
        }
        val title = tvText(this, item.title, 36f, NovaColors.text).apply {
            typeface = android.graphics.Typeface.DEFAULT_BOLD
            maxLines = 2
            ellipsize = android.text.TextUtils.TruncateAt.END
        }
        info.addView(title, LinearLayout.LayoutParams(-1, dp(86)))
        item.englishTitle?.let {
            info.addView(tvText(this, it, 20f, NovaColors.muted), LinearLayout.LayoutParams(-1, dp(42)))
        }
        val meta = listOfNotNull(
            item.episodes?.let { "$it حلقة" },
            item.score?.let { "★ ${it / 10.0}" },
            item.format,
        ).joinToString("  •  ")
        info.addView(tvText(this, meta, 19f, NovaColors.primaryBright), LinearLayout.LayoutParams(-1, dp(48)))
        val description = stripHtml(item.description).ifBlank { "لا يوجد وصف متاح." }
        info.addView(tvText(this, description, 19f, Color.rgb(215, 224, 228)).apply {
            maxLines = 8
            ellipsize = android.text.TextUtils.TruncateAt.END
            gravity = android.view.Gravity.TOP
        }, LinearLayout.LayoutParams(0, dp(220), 1f))
        header.addView(info, LinearLayout.LayoutParams(0, dp(360), 1f))
        body.addView(header)

        body.addView(tvText(this, "الحلقات", 28f, NovaColors.text).apply {
            typeface = android.graphics.Typeface.DEFAULT_BOLD
            setPadding(0, dp(14), 0, dp(14))
        }, LinearLayout.LayoutParams(-1, dp(72)))

        val episodeCount = (item.episodes ?: 1).coerceIn(1, 200)
        var episode = 1
        while (episode <= episodeCount) {
            val row = LinearLayout(this).apply {
                orientation = LinearLayout.HORIZONTAL
                layoutDirection = View.LAYOUT_DIRECTION_LTR
            }
            repeat(4) {
                if (episode <= episodeCount) {
                    val currentEpisode = episode
                    val button = tvButton(this, "الحلقة $currentEpisode").apply {
                        textSize = 19f
                        gravity = android.view.Gravity.CENTER
                    }
                    row.addView(button, LinearLayout.LayoutParams(0, dp(70), 1f).apply {
                        marginStart = dp(6)
                        marginEnd = dp(6)
                        bottomMargin = dp(12)
                    })
                    button.setOnClickListener { loadSources(item, currentEpisode) }
                    episode++
                } else {
                    row.addView(View(this), LinearLayout.LayoutParams(0, dp(70), 1f))
                }
            }
            body.addView(row, LinearLayout.LayoutParams(-1, dp(82)))
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
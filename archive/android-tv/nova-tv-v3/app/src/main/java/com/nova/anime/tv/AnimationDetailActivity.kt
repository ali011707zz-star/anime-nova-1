package com.nova.anime.tv

import android.app.AlertDialog
import android.content.Intent
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

class AnimationDetailActivity : ComponentActivity() {
    companion object {
        const val EXTRA_ID = "animation_id"
        const val EXTRA_TYPE = "animation_type"
        const val EXTRA_TITLE = "animation_title"
        const val EXTRA_IMAGE = "animation_image"
    }

    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private lateinit var body: LinearLayout
    private lateinit var progress: ProgressBar
    private lateinit var error: TextView
    private lateinit var profile: NovaUiProfile

    private val mediaId get() = intent.getStringExtra(EXTRA_ID).orEmpty()
    private val mediaType get() = intent.getStringExtra(EXTRA_TYPE).orEmpty().ifBlank { "movie" }
    private val fallbackTitle get() = intent.getStringExtra(EXTRA_TITLE).orEmpty()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ApiClient.setUserToken(NovaSession.userToken(this))
        profile = uiProfile()
        buildUi()
        load()
    }

    private fun buildUi() {
        val scroll = ScrollView(this).apply { setBackgroundColor(Color.rgb(9, 9, 11)) }
        body = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(profile.horizontalPaddingDp), dp(if (profile.isTv) 30 else 18), dp(profile.horizontalPaddingDp), dp(30))
        }
        val back = tvButton(this, "رجوع")
        back.setOnClickListener { finish() }
        body.addView(back, LinearLayout.LayoutParams(dp(if (profile.isTv) 135 else 100), dp(if (profile.isTv) 54 else 50)))
        progress = ProgressBar(this).apply {
            indeterminateTintList = android.content.res.ColorStateList.valueOf(Color.rgb(192, 132, 252))
        }
        body.addView(progress, LinearLayout.LayoutParams(dp(38), dp(38)).apply {
            gravity = android.view.Gravity.CENTER_HORIZONTAL
            topMargin = dp(22)
        })
        error = tvText(this, "", 17f, Color.rgb(248, 113, 113)).apply {
            visibility = View.GONE
            gravity = android.view.Gravity.CENTER
        }
        body.addView(error, LinearLayout.LayoutParams(-1, dp(66)))
        scroll.addView(body)
        setContentView(scroll)
    }

    private fun load() {
        if (mediaId.isBlank()) {
            showError("معرّف المحتوى غير صالح.")
            return
        }
        scope.launch {
            try {
                val data = withContext(Dispatchers.IO) { ApiClient.animationDetail(mediaType, mediaId) }
                progress.visibility = View.GONE
                render(data)
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                progress.visibility = View.GONE
                renderFallback()
            }
        }
    }

    private fun render(data: JSONObject) {
        val item = data.optJSONObject("result") ?: data.optJSONObject("details") ?: data
        val title = item.optString("title").ifBlank { item.optString("name") }.ifBlank { fallbackTitle }
        val overview = item.optString("overview").ifBlank { item.optString("description") }
        val posterPath = item.optString("poster_path")
        val image = intent.getStringExtra(EXTRA_IMAGE).orEmpty().ifBlank {
            if (posterPath.isNotBlank()) "https://image.tmdb.org/t/p/w500$posterPath" else null
        }
        val cover = ImageView(this).apply { scaleType = ImageView.ScaleType.CENTER_CROP }
        ImageLoader.load(cover, image)
        body.addView(cover, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 350 else 260)).apply {
            topMargin = dp(18)
        })
        body.addView(tvText(this, title, if (profile.isTv) 30f else 25f).apply {
            typeface = android.graphics.Typeface.DEFAULT_BOLD
            setPadding(0, dp(14), 0, dp(6))
        }, LinearLayout.LayoutParams(-1, dp(60)))
        if (overview.isNotBlank()) {
            body.addView(tvText(this, overview, 16f, Color.rgb(212, 212, 216)).apply {
                maxLines = 8
                ellipsize = android.text.TextUtils.TruncateAt.END
            }, LinearLayout.LayoutParams(-1, dp(150)))
        }
        val play = tvButton(this, if (mediaType == "movie") "تشغيل الفيلم" else "فتح الحلقات")
        play.setOnClickListener { loadSources(title, 1, 1) }
        body.addView(play, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 62 else 54)).apply {
            topMargin = dp(14)
        })
        val comments = tvButton(this, "التعليقات")
        comments.setOnClickListener {
            startActivity(Intent(this, CommentsActivity::class.java).apply {
                putExtra(CommentsActivity.EXTRA_TITLE, title)
                putExtra(CommentsActivity.EXTRA_CONTENT_ID, mediaId)
            })
        }
        body.addView(comments, LinearLayout.LayoutParams(-1, dp(if (profile.isTv) 62 else 54)).apply {
            topMargin = dp(10)
        })
    }

    private fun renderFallback() {
        progress.visibility = View.GONE
        body.addView(tvText(this, fallbackTitle.ifBlank { "المحتوى" }, 24f).apply {
            typeface = android.graphics.Typeface.DEFAULT_BOLD
            setPadding(0, dp(28), 0, dp(16))
        })
        body.addView(tvText(this, "تعذر تحميل التفاصيل حالياً، لكن يمكنك المحاولة من جديد.", 16f, Color.rgb(161, 161, 170)))
        val retry = tvButton(this, "إعادة المحاولة")
        retry.setOnClickListener {
            body.removeViews(1, (body.childCount - 1).coerceAtLeast(0))
            buildUi()
            load()
        }
        body.addView(retry, LinearLayout.LayoutParams(-1, dp(54)).apply { topMargin = dp(20) })
    }

    private fun loadSources(title: String, season: Int, episode: Int) {
        val dialog = AlertDialog.Builder(this)
            .setTitle("جاري فحص مصادر التشغيل")
            .setMessage("قد يستغرق الفحص عدة ثوانٍ...")
            .setNegativeButton("إلغاء", null)
            .create()
        dialog.show()
        scope.launch {
            try {
                val sources = withContext(Dispatchers.IO) {
                    ApiClient.animationSources(title, mediaType, mediaId, season, episode)
                }.filter { it.url.isNotBlank() && !it.isEmbed }
                if (dialog.isShowing) dialog.dismiss()
                if (sources.isEmpty()) {
                    showError("لم يتم العثور على مصدر صالح حالياً.")
                    return@launch
                }
                AlertDialog.Builder(this@AnimationDetailActivity)
                    .setTitle("اختر مصدر التشغيل")
                    .setItems(sources.map { it.label }.toTypedArray()) { _, which ->
                        chooseSource(sources[which], title)
                    }
                    .setNegativeButton("إلغاء", null)
                    .show()
            } catch (_: Exception) {
                if (dialog.isShowing) dialog.dismiss()
                showError("تعذر استخراج مصادر التشغيل.")
            }
        }
    }

    private fun chooseSource(source: VideoSource, title: String) {
        AlertDialog.Builder(this)
            .setTitle(source.label)
            .setItems(arrayOf("تشغيل الآن", "تنزيل MP4")) { _, which ->
                if (which == 0) {
                    startActivity(Intent(this@AnimationDetailActivity, PlayerActivity::class.java).apply {
                        putExtra(PlayerActivity.EXTRA_SOURCE_URL, source.url)
                        putExtra(PlayerActivity.EXTRA_SOURCE_HEADERS, source.headersJson)
                        putExtra(PlayerActivity.EXTRA_SUBTITLE_URL, source.subtitleUrl)
                        putExtra(PlayerActivity.EXTRA_TITLE, title)
                    })
                } else {
                    startDownload(source, title)
                }
            }
            .setNegativeButton("إلغاء", null)
            .show()
    }

    private fun startDownload(source: VideoSource, title: String) {
        val lowered = source.url.lowercase()
        if (lowered.contains(".m3u8") || lowered.contains("hls-proxy") || lowered.contains("/hls")) {
            showError("التنزيل متاح لمصادر MP4 المباشرة فقط.")
            return
        }
        scope.launch {
            try {
                val headers = withContext(Dispatchers.IO) { ApiClient.mediaHeaders(source.headersJson) }
                NativeDownloadStore.enqueue(
                    context = this@AnimationDetailActivity,
                    url = source.url,
                    title = title,
                    episode = 1,
                    headers = headers,
                    allowMetered = getSharedPreferences("nova_tv_settings", MODE_PRIVATE)
                        .getBoolean("metered_downloads", true),
                )
                android.widget.Toast.makeText(
                    this@AnimationDetailActivity,
                    "بدأ تنزيل المحتوى",
                    android.widget.Toast.LENGTH_LONG,
                ).show()
            } catch (_: Exception) {
                showError("تعذر بدء التنزيل لهذا المصدر.")
            }
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
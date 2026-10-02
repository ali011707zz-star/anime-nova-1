package com.nova.anime.tv

import android.graphics.Color
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.view.inputmethod.InputMethodManager
import android.content.Context
import android.widget.Button
import android.widget.EditText
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.launch

class CommentsActivity : AppCompatActivity() {
    companion object {
        const val EXTRA_ANIME_ID = "anime_id"
        const val EXTRA_CONTENT_ID = "content_id"
        const val EXTRA_EPISODE = "episode"
        const val EXTRA_TITLE = "title"
    }

    private lateinit var list: LinearLayout
    private lateinit var status: TextView
    private lateinit var input: EditText
    private var comments = emptyList<NovaComment>()

    private val animeId: Int?
        get() = intent.getIntExtra(EXTRA_ANIME_ID, -1).takeIf { it > 0 }
    private val contentId: String?
        get() = intent.getStringExtra(EXTRA_CONTENT_ID)?.takeIf { it.isNotBlank() }
    private val episode: Int?
        get() = intent.getIntExtra(EXTRA_EPISODE, -1).takeIf { it > 0 }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ApiClient.setUserToken(NovaSession.userToken(this))
        setContentView(buildUi())
        loadComments()
    }

    private fun buildUi(): View {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(Color.rgb(9, 9, 11))
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setPadding(dp(20), dp(18), dp(20), dp(16))
        }
        root.addView(TextView(this).apply {
            text = "التعليقات"
            textSize = 25f
            setTextColor(Color.WHITE)
            gravity = Gravity.RIGHT
            setTypeface(typeface, android.graphics.Typeface.BOLD)
        }, LinearLayout.LayoutParams(-1, dp(48)))

        status = TextView(this).apply {
            setTextColor(Color.rgb(180, 180, 190))
            textSize = 14f
            gravity = Gravity.RIGHT
            setPadding(0, 0, 0, dp(10))
        }
        root.addView(status, LinearLayout.LayoutParams(-1, dp(36)))

        list = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        root.addView(ScrollView(this).apply {
            isFillViewport = true
            addView(list, FrameLayout.LayoutParams(-1, -2))
        }, LinearLayout.LayoutParams(-1, 0, 1f))

        val composer = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(0, dp(12), 0, 0)
        }
        input = EditText(this).apply {
            hint = "اكتب تعليقك..."
            setHintTextColor(Color.rgb(125, 125, 135))
            setTextColor(Color.WHITE)
            setTextSize(15f)
            setSingleLine(false)
            maxLines = 3
            setPadding(dp(12), dp(4), dp(12), dp(4))
            setBackgroundColor(Color.rgb(28, 28, 34))
        }
        composer.addView(input, LinearLayout.LayoutParams(0, dp(52), 1f))
        composer.addView(Button(this).apply {
            text = "إرسال"
            setOnClickListener { postComment() }
        }, LinearLayout.LayoutParams(dp(92), dp(52)).apply {
            marginStart = dp(8)
        })
        root.addView(composer)
        return root
    }

    private fun loadComments() {
        status.text = "جاري تحميل التعليقات..."
        lifecycleScope.launch {
            try {
                comments = ApiClient.comments(animeId, contentId, episode)
                renderComments()
            } catch (_: Exception) {
                status.text = "تعذر تحميل التعليقات. حاول مرة أخرى."
            }
        }
    }

    private fun renderComments() {
        list.removeAllViews()
        status.text = if (comments.isEmpty()) "لا توجد تعليقات بعد. كن أول من يكتب تعليقًا." else {
            "${comments.size} تعليق"
        }
        comments.forEach { comment ->
            val card = LinearLayout(this).apply {
                orientation = LinearLayout.VERTICAL
                setBackgroundColor(Color.rgb(24, 24, 30))
                setPadding(dp(14), dp(12), dp(14), dp(12))
                if (comment.parentId != null) {
                    setPadding(dp(28), dp(12), dp(14), dp(12))
                }
            }
            val heading = TextView(this).apply {
                text = comment.displayName ?: comment.username
                textSize = 15f
                setTextColor(Color.rgb(210, 195, 255))
                setTypeface(typeface, android.graphics.Typeface.BOLD)
            }
            val body = TextView(this).apply {
                text = comment.text
                textSize = 15f
                setTextColor(Color.WHITE)
                setPadding(0, dp(8), 0, dp(6))
            }
            val footer = TextView(this).apply {
                text = "إعجاب ${comment.likes}  ·  ${comment.createdAt.orEmpty()}"
                textSize = 12f
                setTextColor(Color.rgb(145, 145, 155))
                setOnClickListener { likeComment(comment) }
            }
            card.addView(heading)
            card.addView(body)
            card.addView(footer)
            list.addView(card, LinearLayout.LayoutParams(-1, -2).apply {
                bottomMargin = dp(10)
            })
        }
    }

    private fun postComment() {
        val text = input.text.toString().trim()
        if (text.isBlank()) {
            input.error = "اكتب تعليقًا أولاً"
            return
        }
        input.isEnabled = false
        lifecycleScope.launch {
            try {
                val created = ApiClient.postComment(text, animeId, contentId, episode)
                if (created == null) throw IllegalStateException("empty comment")
                input.text.clear()
                (getSystemService(Context.INPUT_METHOD_SERVICE) as? InputMethodManager)
                    ?.hideSoftInputFromWindow(input.windowToken, 0)
                loadComments()
            } catch (error: Exception) {
                AlertDialog.Builder(this@CommentsActivity)
                    .setTitle("تسجيل الدخول مطلوب")
                    .setMessage("يجب تسجيل الدخول لإضافة تعليق أو إعجاب.")
                    .setPositiveButton("حسنًا", null)
                    .show()
            } finally {
                input.isEnabled = true
            }
        }
    }

    private fun likeComment(comment: NovaComment) {
        lifecycleScope.launch {
            runCatching { ApiClient.toggleCommentLike(comment.id) }
                .onSuccess { loadComments() }
                .onFailure {
                    AlertDialog.Builder(this@CommentsActivity)
                        .setMessage("يجب تسجيل الدخول للإعجاب بالتعليقات.")
                        .setPositiveButton("حسنًا", null)
                        .show()
                }
        }
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
}
package com.nova.anime.tv

import android.graphics.Color
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.EditText
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

class SearchActivity : ComponentActivity() {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private lateinit var input: EditText
    private lateinit var resultText: TextView
    private lateinit var progress: ProgressBar
    private lateinit var list: RecyclerView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        buildUi()
        input.requestFocus()
    }

    private fun buildUi() {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(NovaColors.background)
            setPadding(dp(46), dp(28), dp(46), dp(36))
            layoutDirection = View.LAYOUT_DIRECTION_RTL
        }
        val top = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = android.view.Gravity.CENTER_VERTICAL
        }
        val back = tvButton(this, "رجوع").apply { textSize = 20f }
        back.setOnClickListener { finish() }
        top.addView(back, LinearLayout.LayoutParams(dp(135), dp(58)))
        input = EditText(this).apply {
            hint = "اكتب اسم الأنمي ثم اضغط بحث"
            setHintTextColor(NovaColors.muted)
            setTextColor(NovaColors.text)
            textSize = 22f
            setSingleLine(true)
            imeOptions = EditorInfo.IME_ACTION_SEARCH
            inputType = android.text.InputType.TYPE_CLASS_TEXT
            setPadding(dp(18), 0, dp(18), 0)
            background = android.graphics.drawable.GradientDrawable().apply {
                cornerRadius = dp(10).toFloat()
                setColor(NovaColors.surface)
                setStroke(dp(2), NovaColors.divider)
            }
            setOnEditorActionListener { _, action, event ->
                if (action == EditorInfo.IME_ACTION_SEARCH ||
                    event?.keyCode == KeyEvent.KEYCODE_ENTER
                ) {
                    runSearch()
                    true
                } else false
            }
        }
        top.addView(input, LinearLayout.LayoutParams(0, dp(58), 1f).apply {
            marginStart = dp(18)
        })
        val search = tvButton(this, "بحث").apply { textSize = 20f }
        search.setOnClickListener { runSearch() }
        top.addView(search, LinearLayout.LayoutParams(dp(135), dp(58)).apply {
            marginStart = dp(18)
        })
        root.addView(top)

        resultText = tvText(this, "ابحث عن أنمي", 22f, NovaColors.muted)
        resultText.setPadding(0, dp(22), 0, dp(8))
        root.addView(resultText)
        progress = ProgressBar(this).apply {
            visibility = View.GONE
            indeterminateTintList = android.content.res.ColorStateList.valueOf(NovaColors.primary)
        }
        root.addView(progress, LinearLayout.LayoutParams(dp(40), dp(40)))

        list = RecyclerView(this).apply {
            layoutManager = GridLayoutManager(this@SearchActivity, 5)
            overScrollMode = View.OVER_SCROLL_NEVER
            layoutDirection = View.LAYOUT_DIRECTION_LTR
            itemAnimator = null
        }
        root.addView(list, LinearLayout.LayoutParams(-1, 0, 1f))
        setContentView(root)
    }

    private fun runSearch() {
        val term = input.text.toString().trim()
        if (term.length < 2) {
            resultText.text = "اكتب حرفين على الأقل"
            return
        }
        progress.visibility = View.VISIBLE
        resultText.text = "جاري البحث..."
        scope.launch {
            try {
                val results = withContext(Dispatchers.IO) { ApiClient.search(term) }
                list.adapter = AnimeCardAdapter(results) { item ->
                    startActivity(android.content.Intent(this@SearchActivity, DetailActivity::class.java).apply {
                        putExtra(DetailActivity.EXTRA_ID, item.id)
                    })
                }
                resultText.text = if (results.isEmpty()) "لا توجد نتائج" else "${results.size} نتيجة"
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                resultText.text = "تعذر تنفيذ البحث. حاول مرة أخرى."
            } finally {
                progress.visibility = View.GONE
            }
        }
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }
}
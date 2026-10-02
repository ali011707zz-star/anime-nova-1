package com.nova.anime.tv

import android.app.DownloadManager
import android.graphics.Color
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.widget.Button
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class DownloadsActivity : AppCompatActivity() {
    private lateinit var list: LinearLayout
    private val manager by lazy { getSystemService(DOWNLOAD_SERVICE) as DownloadManager }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(buildUi())
    }

    override fun onResume() {
        super.onResume()
        if (::list.isInitialized) render()
    }

    private fun buildUi(): View {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setBackgroundColor(Color.rgb(9, 9, 11))
            setPadding(dp(20), dp(18), dp(20), dp(18))
        }
        root.addView(TextView(this).apply {
            text = "التنزيلات"
            textSize = 25f
            setTextColor(Color.WHITE)
            gravity = Gravity.RIGHT
            setTypeface(typeface, android.graphics.Typeface.BOLD)
        }, LinearLayout.LayoutParams(-1, dp(54)))
        list = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
        root.addView(ScrollView(this).apply {
            addView(list, FrameLayout.LayoutParams(-1, -2))
        }, LinearLayout.LayoutParams(-1, 0, 1f))
        return root
    }

    private fun render() {
        list.removeAllViews()
        val items = NativeDownloadStore.items(this)
        if (items.isEmpty()) {
            list.addView(TextView(this).apply {
                text = "لا توجد تنزيلات بعد.\nمن صفحة الحلقة اختر مصدر MP4 ثم اضغط «تنزيل MP4»."
                textSize = 16f
                setTextColor(Color.rgb(180, 180, 190))
                gravity = Gravity.CENTER
                setPadding(0, dp(60), 0, 0)
            }, LinearLayout.LayoutParams(-1, dp(150)))
            return
        }
        items.forEach { item ->
            val card = LinearLayout(this).apply {
                orientation = LinearLayout.VERTICAL
                setBackgroundColor(Color.rgb(24, 24, 30))
                setPadding(dp(14), dp(12), dp(14), dp(12))
            }
            card.addView(TextView(this).apply {
                text = "${item.title} · الحلقة ${item.episode}"
                textSize = 16f
                setTextColor(Color.WHITE)
            })
            card.addView(TextView(this).apply {
                text = status(item.requestId)
                textSize = 13f
                setTextColor(Color.rgb(170, 170, 180))
                setPadding(0, dp(6), 0, dp(8))
            })
            card.addView(Button(this).apply {
                text = "حذف"
                setOnClickListener {
                    NativeDownloadStore.remove(this@DownloadsActivity, item.requestId)
                    render()
                }
            }, LinearLayout.LayoutParams(-1, dp(48)))
            list.addView(card, LinearLayout.LayoutParams(-1, -2).apply {
                bottomMargin = dp(10)
            })
        }
    }

    private fun status(id: Long): String {
        val query = DownloadManager.Query().setFilterById(id)
        manager.query(query).use { cursor ->
            if (!cursor.moveToFirst()) return "تمت إزالة المهمة من النظام"
            return when (cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_STATUS))) {
                DownloadManager.STATUS_PENDING -> "في الانتظار"
                DownloadManager.STATUS_RUNNING -> "جاري التنزيل"
                DownloadManager.STATUS_PAUSED -> "متوقف مؤقتًا"
                DownloadManager.STATUS_SUCCESSFUL -> "اكتمل التنزيل"
                DownloadManager.STATUS_FAILED -> "فشل التنزيل"
                else -> "الحالة غير معروفة"
            }
        }
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
}
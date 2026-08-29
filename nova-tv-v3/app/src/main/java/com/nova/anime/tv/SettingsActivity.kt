package com.nova.anime.tv

import android.content.DialogInterface
import android.graphics.Color
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.widget.Button
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.Switch
import android.widget.TextView
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity

class SettingsActivity : AppCompatActivity() {
    private val prefs by lazy { getSharedPreferences("nova_tv_settings", MODE_PRIVATE) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(buildUi())
    }

    private fun buildUi(): View {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            setBackgroundColor(Color.rgb(9, 9, 11))
            setPadding(dp(20), dp(18), dp(20), dp(18))
        }
        root.addView(TextView(this).apply {
            text = "الإعدادات"
            textSize = 25f
            setTextColor(Color.WHITE)
            gravity = Gravity.RIGHT
            setTypeface(typeface, android.graphics.Typeface.BOLD)
        }, LinearLayout.LayoutParams(-1, dp(54)))
        val body = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
        body.addView(settingSwitch(
            "التشغيل التلقائي",
            "ابدأ تشغيل المصدر فور فتح المشغل.",
            "autoplay",
            true,
        ))
        body.addView(settingSwitch(
            "السماح بالبيانات الخلوية",
            "يمكن لمدير التنزيلات استخدام اتصال الهاتف.",
            "metered_downloads",
            true,
        ))
        body.addView(TextView(this).apply {
            text = "البيانات المحلية"
            textSize = 20f
            setTextColor(Color.WHITE)
            setTypeface(typeface, android.graphics.Typeface.BOLD)
            setPadding(0, dp(28), 0, dp(8))
        })
        body.addView(Button(this).apply {
            text = "حذف المفضلة وسجل المشاهدة"
            setOnClickListener { confirmClearLibrary() }
        }, LinearLayout.LayoutParams(-1, dp(54)))
        body.addView(TextView(this).apply {
            text = "Nova 3 · ${BuildConfig.NOVA_VERSION}\nالحزمة: ${BuildConfig.NOVA_PACKAGE}"
            textSize = 14f
            setTextColor(Color.rgb(150, 150, 160))
            setPadding(0, dp(26), 0, 0)
        })
        root.addView(ScrollView(this).apply {
            addView(body, FrameLayout.LayoutParams(-1, -2))
        }, LinearLayout.LayoutParams(-1, 0, 1f))
        return root
    }

    private fun settingSwitch(
        title: String,
        description: String,
        key: String,
        defaultValue: Boolean,
    ): View {
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(0, dp(8), 0, dp(8))
        }
        val line = LinearLayout(this).apply {
            gravity = Gravity.CENTER_VERTICAL
        }
        line.addView(TextView(this).apply {
            text = title
            textSize = 17f
            setTextColor(Color.WHITE)
        }, LinearLayout.LayoutParams(0, dp(48), 1f))
        line.addView(Switch(this).apply {
            isChecked = prefs.getBoolean(key, defaultValue)
            setOnCheckedChangeListener { _, checked -> prefs.edit().putBoolean(key, checked).apply() }
        }, LinearLayout.LayoutParams(dp(60), dp(48)))
        row.addView(line)
        row.addView(TextView(this).apply {
            text = description
            textSize = 13f
            setTextColor(Color.rgb(145, 145, 155))
        })
        return row
    }

    private fun confirmClearLibrary() {
        AlertDialog.Builder(this)
            .setTitle("حذف البيانات المحلية؟")
            .setMessage("سيتم حذف المفضلة وسجل المشاهدة من هذا الجهاز فقط.")
            .setNegativeButton("إلغاء", null)
            .setPositiveButton("حذف") { _: DialogInterface, _: Int ->
                NovaStore.clear(this)
                android.widget.Toast.makeText(this, "تم حذف البيانات المحلية", android.widget.Toast.LENGTH_SHORT).show()
            }
            .show()
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
}
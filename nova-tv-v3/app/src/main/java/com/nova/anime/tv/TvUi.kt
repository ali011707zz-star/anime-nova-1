package com.nova.anime.tv

import android.content.Context
import android.content.pm.PackageManager
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import kotlin.math.roundToInt

data class NovaUiProfile(
    val isTv: Boolean,
    val isTablet: Boolean,
    val widthDp: Int,
    val horizontalPaddingDp: Int,
    val cardWidthDp: Int,
    val cardHeightDp: Int,
    val cardTitleSp: Float,
    val cardMetaSp: Float,
    val cardFooterDp: Int,
    val rowItemCount: Int,
    val searchColumns: Int,
    val detailCoverWidthDp: Int,
    val detailCoverHeightDp: Int,
) {
    companion object {
        fun from(context: Context): NovaUiProfile {
            val metrics = context.resources.displayMetrics
            val widthDp = (metrics.widthPixels / metrics.density).roundToInt()
            val heightDp = (metrics.heightPixels / metrics.density).roundToInt()
            val hasLeanback = context.packageManager.hasSystemFeature(
                PackageManager.FEATURE_LEANBACK,
            )
            val isTablet = context.resources.configuration.smallestScreenWidthDp >= 600 ||
                widthDp >= 600
            val isTv = hasLeanback ||
                (widthDp >= 960 && heightDp >= 540)
            val cardWidth = when {
                isTv && widthDp >= 1500 -> 230
                isTv && widthDp >= 1100 -> 210
                isTv -> 190
                isTablet -> 182
                else -> 150
            }
            val cardHeight = (cardWidth * 1.42f).roundToInt()
            return NovaUiProfile(
                isTv = isTv,
                isTablet = isTablet,
                widthDp = widthDp,
                horizontalPaddingDp = when {
                    isTv -> 54
                    isTablet -> 28
                    else -> 16
                },
                cardWidthDp = cardWidth,
                cardHeightDp = cardHeight,
                cardTitleSp = if (isTv) 18f else 15f,
                cardMetaSp = if (isTv) 13f else 11f,
                cardFooterDp = if (isTv) 84 else 70,
                rowItemCount = if (isTv) 10 else 8,
                searchColumns = when {
                    isTv && widthDp >= 1500 -> 6
                    isTv -> 5
                    isTablet && widthDp >= 900 -> 5
                    isTablet -> 4
                    else -> 2
                },
                detailCoverWidthDp = when {
                    isTv -> 220
                    isTablet -> 190
                    else -> 150
                },
                detailCoverHeightDp = when {
                    isTv -> 310
                    isTablet -> 270
                    else -> 212
                },
            )
        }
    }
}

fun Context.uiProfile(): NovaUiProfile = NovaUiProfile.from(this)

fun Context.dp(value: Int): Int =
    (value * resources.displayMetrics.density + 0.5f).toInt()

fun tvText(context: Context, text: String, size: Float, color: Int = Color.WHITE): TextView =
    TextView(context).apply {
        this.text = text
        setTextColor(color)
        setTextSize(TypedValue.COMPLEX_UNIT_SP, size)
        gravity = Gravity.CENTER_VERTICAL
        includeFontPadding = true
    }

fun tvButton(context: Context, text: String): TextView =
    tvText(context, text, if (context.uiProfile().isTv) 18f else 16f).apply {
        isFocusable = true
        isFocusableInTouchMode = true
        gravity = Gravity.CENTER
        val horizontal = if (context.uiProfile().isTv) 26 else 18
        setPadding(context.dp(horizontal), context.dp(10), context.dp(horizontal), context.dp(10))
        background = GradientDrawable().apply {
            cornerRadius = context.dp(12).toFloat()
            setColor(Color.rgb(38, 26, 55))
            setStroke(context.dp(1), Color.rgb(110, 78, 145))
        }
        setOnFocusChangeListener { view, focused ->
            // A small instant focus cue is enough for a remote without adding
            // animated layout work or visual noise.
            val scale = if (context.uiProfile().isTv) 1.035f else 1.015f
            view.scaleX = if (focused) scale else 1f
            view.scaleY = if (focused) scale else 1f
            (view.background as? GradientDrawable)?.setStroke(
                context.dp(if (focused) 3 else 1),
                if (focused) Color.rgb(216, 180, 254) else Color.rgb(110, 78, 145),
            )
        }
    }

class AnimeCardView(context: Context) : FrameLayout(context) {
    private val profile = context.uiProfile()
    private val image = ImageView(context)
    private val title = tvText(context, "", profile.cardTitleSp)
    private val meta = tvText(context, "", profile.cardMetaSp, Color.rgb(216, 180, 254))
    private val scoreBadge = tvText(context, "", 10f, Color.WHITE)
    private val formatBadge = tvText(context, "", 10f, Color.WHITE)

    init {
        isFocusable = true
        isFocusableInTouchMode = true
        descendantFocusability = FOCUS_BLOCK_DESCENDANTS
        clipChildren = false
        setPadding(0, 0, 0, context.dp(if (profile.isTv) 5 else 3))

        image.scaleType = ImageView.ScaleType.CENTER_CROP
        image.setBackgroundColor(Color.rgb(17, 17, 22))
        addView(image, LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT))

        addView(View(context).apply {
            background = GradientDrawable(
                GradientDrawable.Orientation.TOP_BOTTOM,
                intArrayOf(Color.TRANSPARENT, Color.argb(235, 9, 9, 11)),
            )
        }, LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT))

        val footer = FrameLayout(context).apply {
            val pad = if (profile.isTv) 12 else 8
            setPadding(context.dp(pad), context.dp(5), context.dp(pad), context.dp(5))
        }
        val footerParams = LayoutParams(
            LayoutParams.MATCH_PARENT,
            context.dp(if (profile.isTv) 78 else 66),
            Gravity.BOTTOM,
        )
        addView(footer, footerParams)

        title.maxLines = 2
        title.ellipsize = android.text.TextUtils.TruncateAt.END
        footer.addView(title, LayoutParams(LayoutParams.MATCH_PARENT, context.dp(48), Gravity.TOP))
        footer.addView(
            meta,
            LayoutParams(LayoutParams.MATCH_PARENT, context.dp(22), Gravity.BOTTOM),
        )

        listOf(scoreBadge, formatBadge).forEach { badge ->
            badge.gravity = Gravity.CENTER
            badge.setPadding(context.dp(6), 0, context.dp(6), 0)
            badge.background = GradientDrawable().apply {
                cornerRadius = context.dp(5).toFloat()
            }
            addView(badge, LayoutParams(LayoutParams.WRAP_CONTENT, context.dp(24), Gravity.TOP or Gravity.END).apply {
                topMargin = context.dp(8)
                marginEnd = context.dp(8)
            })
        }
        scoreBadge.background = GradientDrawable().apply {
            cornerRadius = context.dp(5).toFloat()
            setColor(Color.argb(210, 17, 17, 22))
        }
        formatBadge.background = GradientDrawable().apply {
            cornerRadius = context.dp(5).toFloat()
            setColor(Color.argb(220, 109, 40, 217))
        }
        formatBadge.layoutParams = (formatBadge.layoutParams as LayoutParams).apply {
            gravity = Gravity.TOP or Gravity.START
            marginEnd = 0
            marginStart = context.dp(8)
        }

        setOnFocusChangeListener { view, focused ->
            val scale = if (profile.isTv) 1.045f else 1.02f
            view.scaleX = if (focused) scale else 1f
            view.scaleY = if (focused) scale else 1f
            view.elevation = if (focused && profile.isTv) context.dp(14).toFloat() else 0f
            background = GradientDrawable().apply {
                cornerRadius = context.dp(10).toFloat()
                setColor(Color.TRANSPARENT)
                setStroke(
                    context.dp(if (focused) 4 else 1),
                    if (focused) Color.rgb(216, 180, 254) else Color.rgb(55, 42, 70),
                )
            }
        }
    }

    fun bind(item: AnimeItem) {
        ImageLoader.load(image, item.coverUrl)
        title.text = item.displayTitle
        meta.text = listOfNotNull(
            item.episodes?.let { "$it حلقة" },
            item.score?.let { "★ ${it / 10.0}" },
        ).joinToString("  ")
        scoreBadge.text = item.score?.let { "★ ${"%.1f".format(java.util.Locale.US, it / 10.0)}" }.orEmpty()
        scoreBadge.visibility = if (item.score != null) View.VISIBLE else View.GONE
        formatBadge.text = when (item.format) {
            "MOVIE" -> "فيلم"
            "TV" -> "مسلسل"
            "OVA" -> "OVA"
            "ONA" -> "ONA"
            "SPECIAL" -> "خاص"
            else -> ""
        }
        formatBadge.visibility = if (formatBadge.text.isNotBlank()) View.VISIBLE else View.GONE
    }
}

class AnimeCardAdapter(
    private val items: List<AnimeItem>,
    private val onClick: (AnimeItem) -> Unit,
) : RecyclerView.Adapter<AnimeCardAdapter.Holder>() {
    class Holder(val card: AnimeCardView) : RecyclerView.ViewHolder(card)

    override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): Holder =
        Holder(AnimeCardView(parent.context).apply {
            val profile = parent.context.uiProfile()
            layoutParams = RecyclerView.LayoutParams(
                parent.context.dp(profile.cardWidthDp),
                parent.context.dp(profile.cardHeightDp),
            ).apply {
                marginStart = parent.context.dp(6)
                marginEnd = parent.context.dp(6)
            }
        })

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.card.bind(item)
        holder.card.setOnClickListener { onClick(item) }
    }

    override fun getItemCount(): Int = items.size
}
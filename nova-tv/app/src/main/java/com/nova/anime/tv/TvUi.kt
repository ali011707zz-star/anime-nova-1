package com.nova.anime.tv

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

object NovaColors {
    val background = Color.rgb(13, 22, 29)
    val surface = Color.rgb(24, 35, 43)
    val surfaceRaised = Color.rgb(30, 45, 55)
    val surfaceSelected = Color.rgb(16, 67, 91)
    val primary = Color.rgb(39, 177, 234)
    val primaryBright = Color.rgb(90, 205, 249)
    val text = Color.rgb(245, 248, 250)
    val muted = Color.rgb(166, 182, 191)
    val divider = Color.rgb(52, 70, 80)
    val danger = Color.rgb(255, 112, 116)
}

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

fun roundedBackground(
    context: Context,
    fill: Int,
    stroke: Int = Color.TRANSPARENT,
    strokeWidth: Int = 0,
    radius: Int = 12,
): GradientDrawable =
    GradientDrawable().apply {
        cornerRadius = context.dp(radius).toFloat()
        setColor(fill)
        if (strokeWidth > 0) setStroke(context.dp(strokeWidth), stroke)
    }

fun tvButton(context: Context, text: String): TextView =
    tvText(context, text, 18f).apply {
        isFocusable = true
        isFocusableInTouchMode = true
        gravity = Gravity.CENTER
        setPadding(context.dp(26), context.dp(12), context.dp(26), context.dp(12))
        background = roundedBackground(
            context,
            NovaColors.surfaceRaised,
            NovaColors.divider,
            1,
            12,
        )
        setOnFocusChangeListener { view, focused ->
            view.scaleX = if (focused) 1.04f else 1f
            view.scaleY = if (focused) 1.04f else 1f
            (view.background as? GradientDrawable)?.setStroke(
                context.dp(if (focused) 3 else 1),
                if (focused) NovaColors.primaryBright else NovaColors.divider,
            )
        }
    }

class TvNavItemView(
    context: Context,
    icon: String,
    label: String,
) : LinearLayout(context) {
    private val iconView = tvText(context, icon, 25f, NovaColors.muted)
    private val labelView = tvText(context, label, 21f, NovaColors.text)

    init {
        orientation = HORIZONTAL
        gravity = Gravity.CENTER_VERTICAL
        layoutDirection = View.LAYOUT_DIRECTION_LTR
        isFocusable = true
        isFocusableInTouchMode = true
        isClickable = true
        setPadding(context.dp(18), 0, context.dp(20), 0)
        background = roundedBackground(context, Color.TRANSPARENT, Color.TRANSPARENT, 0, 10)

        iconView.gravity = Gravity.CENTER
        addView(iconView, LayoutParams(context.dp(48), LayoutParams.MATCH_PARENT))

        labelView.gravity = Gravity.CENTER_VERTICAL or Gravity.RIGHT
        labelView.textDirection = View.TEXT_DIRECTION_RTL
        addView(labelView, LayoutParams(0, LayoutParams.MATCH_PARENT, 1f))

        setOnFocusChangeListener { view, focused ->
            view.scaleX = if (focused) 1.03f else 1f
            view.scaleY = if (focused) 1.03f else 1f
            updateState(focused, isSelected)
        }
    }

    fun setActive(active: Boolean) {
        isSelected = active
        updateState(hasFocus(), active)
    }

    private fun updateState(focused: Boolean, active: Boolean) {
        val fill = when {
            focused -> NovaColors.surfaceSelected
            active -> Color.rgb(18, 51, 67)
            else -> Color.TRANSPARENT
        }
        background = roundedBackground(
            context,
            fill,
            if (focused) NovaColors.primaryBright else Color.TRANSPARENT,
            if (focused) 2 else 0,
            10,
        )
        iconView.setTextColor(if (focused || active) NovaColors.primaryBright else NovaColors.muted)
        labelView.setTextColor(if (focused) Color.WHITE else NovaColors.text)
    }
}

class AnimeCardView(context: Context) : LinearLayout(context) {
    private val image = ImageView(context)
    private val title = tvText(context, "", 17f)
    private val meta = tvText(context, "", 14f, NovaColors.muted)

    init {
        orientation = VERTICAL
        gravity = Gravity.CENTER_HORIZONTAL
        isFocusable = true
        isFocusableInTouchMode = true
        descendantFocusability = FOCUS_BLOCK_DESCENDANTS
        clipChildren = false
        setPadding(context.dp(2), context.dp(2), context.dp(2), context.dp(6))
        background = roundedBackground(context, NovaColors.surface, NovaColors.divider, 1, 10)

        image.scaleType = ImageView.ScaleType.CENTER_CROP
        image.clipToOutline = true
        image.background = roundedBackground(context, NovaColors.surfaceRaised, Color.TRANSPARENT, 0, 8)
        addView(image, LayoutParams(LayoutParams.MATCH_PARENT, context.dp(248)))

        title.maxLines = 2
        title.ellipsize = android.text.TextUtils.TruncateAt.END
        title.gravity = Gravity.CENTER_VERTICAL or Gravity.RIGHT
        title.textDirection = View.TEXT_DIRECTION_LTR
        title.setPadding(context.dp(8), 0, context.dp(8), 0)
        addView(title, LayoutParams(LayoutParams.MATCH_PARENT, context.dp(48)))

        meta.gravity = Gravity.CENTER_VERTICAL or Gravity.RIGHT
        meta.setPadding(context.dp(8), 0, context.dp(8), 0)
        addView(meta, LayoutParams(LayoutParams.MATCH_PARENT, context.dp(28)))

        setOnFocusChangeListener { view, focused ->
            view.scaleX = if (focused) 1.08f else 1f
            view.scaleY = if (focused) 1.08f else 1f
            view.elevation = if (focused) context.dp(18).toFloat() else 0f
            background = roundedBackground(
                context,
                if (focused) NovaColors.surfaceRaised else NovaColors.surface,
                if (focused) NovaColors.primaryBright else NovaColors.divider,
                if (focused) 3 else 1,
                10,
            )
        }
    }

    fun bind(item: AnimeItem) {
        ImageLoader.load(image, item.coverUrl)
        title.text = item.displayTitle
        meta.text = listOfNotNull(
            item.episodes?.let { "$it حلقة" },
            item.score?.let { "★ ${it / 10.0}" },
        ).joinToString("  ")
    }
}

class AnimeCardAdapter(
    private val items: List<AnimeItem>,
    private val onClick: (AnimeItem) -> Unit,
) : RecyclerView.Adapter<AnimeCardAdapter.Holder>() {
    class Holder(val card: AnimeCardView) : RecyclerView.ViewHolder(card)

    override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): Holder =
        Holder(AnimeCardView(parent.context).apply {
            layoutParams = RecyclerView.LayoutParams(parent.context.dp(214), parent.context.dp(338)).apply {
                marginStart = parent.context.dp(8)
                marginEnd = parent.context.dp(8)
            }
        })

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.card.bind(item)
        holder.card.setOnClickListener { onClick(item) }
    }

    override fun getItemCount(): Int = items.size
}
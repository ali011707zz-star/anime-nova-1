package com.nova.anime.tv

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

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
    tvText(context, text, 18f).apply {
        isFocusable = true
        isFocusableInTouchMode = true
        gravity = Gravity.CENTER
        setPadding(context.dp(26), context.dp(12), context.dp(26), context.dp(12))
        background = GradientDrawable().apply {
            cornerRadius = context.dp(12).toFloat()
            setColor(Color.rgb(38, 26, 55))
            setStroke(context.dp(1), Color.rgb(110, 78, 145))
        }
        setOnFocusChangeListener { view, focused ->
            view.scaleX = if (focused) 1.04f else 1f
            view.scaleY = if (focused) 1.04f else 1f
            (view.background as? GradientDrawable)?.setStroke(
                context.dp(if (focused) 3 else 1),
                if (focused) Color.rgb(216, 180, 254) else Color.rgb(110, 78, 145),
            )
        }
    }

class AnimeCardView(context: Context) : FrameLayout(context) {
    private val image = ImageView(context)
    private val title = tvText(context, "", 15f)
    private val meta = tvText(context, "", 12f, Color.rgb(216, 180, 254))

    init {
        isFocusable = true
        isFocusableInTouchMode = true
        descendantFocusability = FOCUS_BLOCK_DESCENDANTS
        clipChildren = false
        setPadding(0, 0, 0, context.dp(4))

        image.scaleType = ImageView.ScaleType.CENTER_CROP
        addView(image, LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT))

        val footer = FrameLayout(context).apply {
            setBackgroundColor(Color.argb(225, 17, 13, 31))
            setPadding(context.dp(12), context.dp(6), context.dp(12), context.dp(6))
        }
        val footerParams = LayoutParams(LayoutParams.MATCH_PARENT, context.dp(76), Gravity.BOTTOM)
        addView(footer, footerParams)

        title.maxLines = 2
        title.ellipsize = android.text.TextUtils.TruncateAt.END
        footer.addView(title, LayoutParams(LayoutParams.MATCH_PARENT, context.dp(48), Gravity.TOP))
        footer.addView(
            meta,
            LayoutParams(LayoutParams.MATCH_PARENT, context.dp(22), Gravity.BOTTOM),
        )

        setOnFocusChangeListener { view, focused ->
            view.scaleX = if (focused) 1.08f else 1f
            view.scaleY = if (focused) 1.08f else 1f
            view.elevation = if (focused) context.dp(18).toFloat() else 0f
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
    }
}

class AnimeCardAdapter(
    private val items: List<AnimeItem>,
    private val onClick: (AnimeItem) -> Unit,
) : RecyclerView.Adapter<AnimeCardAdapter.Holder>() {
    class Holder(val card: AnimeCardView) : RecyclerView.ViewHolder(card)

    override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): Holder =
        Holder(AnimeCardView(parent.context).apply {
            layoutParams = RecyclerView.LayoutParams(parent.context.dp(190), parent.context.dp(270))
        })

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.card.bind(item)
        holder.card.setOnClickListener { onClick(item) }
    }

    override fun getItemCount(): Int = items.size
}
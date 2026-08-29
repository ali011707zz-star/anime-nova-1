package com.nova.anime.tv

import android.graphics.Color
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class ContentCardAdapter(
    private var items: List<NovaContentCard>,
    private val onClick: (NovaContentCard) -> Unit,
) : RecyclerView.Adapter<ContentCardAdapter.ContentViewHolder>() {

    fun replaceItems(next: List<NovaContentCard>) {
        items = next
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ContentViewHolder {
        val context = parent.context
        val profile = context.uiProfile()
        val root = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            layoutDirection = View.LAYOUT_DIRECTION_RTL
            isFocusable = true
            isClickable = true
            setPadding(context.dp(4), context.dp(4), context.dp(4), context.dp(8))
            background = android.graphics.drawable.GradientDrawable().apply {
                cornerRadius = context.dp(10).toFloat()
                setColor(Color.rgb(20, 17, 27))
                setStroke(context.dp(1), Color.rgb(55, 44, 70))
            }
            setOnFocusChangeListener { view, focused ->
                view.scaleX = if (focused) 1.025f else 1f
                view.scaleY = if (focused) 1.025f else 1f
                (view.background as? android.graphics.drawable.GradientDrawable)?.setStroke(
                    context.dp(if (focused) 2 else 1),
                    if (focused) Color.rgb(192, 132, 252) else Color.rgb(55, 44, 70),
                )
            }
        }
        val image = ImageView(context).apply {
            scaleType = ImageView.ScaleType.CENTER_CROP
        }
        root.addView(
            image,
            LinearLayout.LayoutParams(-1, context.dp(profile.cardHeightDp)),
        )
        val title = tvText(context, "", profile.cardTitleSp).apply {
            maxLines = 2
            ellipsize = android.text.TextUtils.TruncateAt.END
            setPadding(context.dp(5), context.dp(7), context.dp(5), 0)
        }
        root.addView(title, LinearLayout.LayoutParams(-1, context.dp(44)))
        val subtitle = tvText(context, "", profile.cardMetaSp, Color.rgb(161, 161, 170)).apply {
            maxLines = 1
            ellipsize = android.text.TextUtils.TruncateAt.END
            setPadding(context.dp(5), 0, context.dp(5), 0)
        }
        root.addView(subtitle, LinearLayout.LayoutParams(-1, context.dp(25)))
        return ContentViewHolder(root, image, title, subtitle)
    }

    override fun onBindViewHolder(holder: ContentViewHolder, position: Int) {
        val item = items[position]
        holder.title.text = item.title
        holder.subtitle.text = item.subtitle.orEmpty()
        ImageLoader.load(holder.image, item.imageUrl)
        holder.root.setOnClickListener { onClick(item) }
        holder.root.contentDescription = item.title
    }

    override fun getItemCount(): Int = items.size

    class ContentViewHolder(
        val root: View,
        val image: ImageView,
        val title: TextView,
        val subtitle: TextView,
    ) : RecyclerView.ViewHolder(root)
}
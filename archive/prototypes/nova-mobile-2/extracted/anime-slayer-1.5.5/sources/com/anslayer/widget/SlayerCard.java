package com.anslayer.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.cardview.widget.CardView;
import com.anslayer.R;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.view.CustomView;
import jc.l;

/* compiled from: SlayerCard.kt */
/* loaded from: classes.dex */
public final class SlayerCard extends CardView implements CustomView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlayerCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        onInit();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        onViewRecycled();
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException unused) {
        }
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
        setClickable(true);
        setFocusable(true);
        setUseCompatPadding(false);
        setPreventCornerOverlap(false);
        setRadius(getResources().getDimensionPixelSize(R.dimen.md_margin));
        setCardElevation(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        Context context = getContext();
        l.e(context, "context");
        setCardBackgroundColor(SupportExtentionKt.getColorFromAttr(context, R.attr.colorSurface));
        Context context2 = getContext();
        l.e(context2, "context");
        setForeground(SupportExtentionKt.getDrawableFromAttr(context2, R.attr.selectableItemBackground));
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
    }
}

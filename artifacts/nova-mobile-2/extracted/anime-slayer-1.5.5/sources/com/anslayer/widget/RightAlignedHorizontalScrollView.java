package com.anslayer.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
import jc.l;

/* compiled from: RightAlignedHorizontalScrollView.kt */
/* loaded from: classes.dex */
public final class RightAlignedHorizontalScrollView extends HorizontalScrollView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RightAlignedHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        scrollTo(getChildAt(0).getMeasuredWidth(), 0);
    }
}

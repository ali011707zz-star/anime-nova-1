package com.anslayer.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ViewFlipper;
import jc.l;

/* compiled from: ContentViewFlipper.kt */
/* loaded from: classes.dex */
public final class ContentViewFlipper extends ViewFlipper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentViewFlipper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
    }

    @Override // android.widget.ViewFlipper, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Exception unused) {
        }
    }
}

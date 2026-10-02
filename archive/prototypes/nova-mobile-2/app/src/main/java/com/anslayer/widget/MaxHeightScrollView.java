package com.anslayer.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
import jc.l;
import org.apache.http.HttpStatus;
import x3.f;

/* compiled from: MaxHeightScrollView.kt */
/* loaded from: classes.dex */
public final class MaxHeightScrollView extends ScrollView {

    /* renamed from: f, reason: collision with root package name */
    public final AttributeSet f4385f;

    /* renamed from: g, reason: collision with root package name */
    public int f4386g;

    /* renamed from: h, reason: collision with root package name */
    public final int f4387h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxHeightScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        this.f4385f = attributeSet;
        this.f4387h = HttpStatus.SC_OK;
        if (isInEditMode() || attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.Y0);
        l.e(obtainStyledAttributes, "context.obtainStyledAttr…able.MaxHeightScrollView)");
        this.f4386g = obtainStyledAttributes.getDimensionPixelSize(0, HttpStatus.SC_OK);
        obtainStyledAttributes.recycle();
    }

    public final AttributeSet getAttr() {
        return this.f4385f;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(this.f4386g, Integer.MIN_VALUE));
    }
}

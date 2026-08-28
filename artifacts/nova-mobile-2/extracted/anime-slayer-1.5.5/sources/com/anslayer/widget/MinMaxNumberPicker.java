package com.anslayer.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.NumberPicker;
import jc.l;
import x3.f;

/* compiled from: MinMaxNumberPicker.kt */
/* loaded from: classes.dex */
public final class MinMaxNumberPicker extends NumberPicker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MinMaxNumberPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.f15868c1, 0, 0);
            l.e(obtainStyledAttributes, "context.obtainStyledAttr…MinMaxNumberPicker, 0, 0)");
            try {
                setMinValue(obtainStyledAttributes.getInt(1, 0));
                setMaxValue(obtainStyledAttributes.getInt(0, 0));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }
}

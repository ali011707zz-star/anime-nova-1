package com.google.android.material.shadow;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public interface ShadowViewDelegate {
    float getRadius();

    boolean isCompatPaddingEnabled();

    void setBackgroundDrawable(Drawable drawable);

    void setShadowPadding(int i10, int i11, int i12, int i13);
}

package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.v0;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class TabItem extends View {
    public final int customLayout;
    public final Drawable icon;
    public final CharSequence text;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        v0 u10 = v0.u(context, attributeSet, R.styleable.TabItem);
        this.text = u10.p(R.styleable.TabItem_android_text);
        this.icon = u10.g(R.styleable.TabItem_android_icon);
        this.customLayout = u10.n(R.styleable.TabItem_android_layout, 0);
        u10.w();
    }
}

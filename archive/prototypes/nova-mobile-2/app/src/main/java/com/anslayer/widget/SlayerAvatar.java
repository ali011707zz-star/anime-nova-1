package com.anslayer.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.bumptech.glide.c;
import io.wax911.support.base.view.CustomView;
import jc.l;

/* compiled from: SlayerAvatar.kt */
/* loaded from: classes.dex */
public final class SlayerAvatar extends AppCompatImageView implements CustomView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlayerAvatar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        onInit();
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
        c.t(getContext()).m(this);
    }
}

package io.wax911.support.custom.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.tabs.TabLayout;
import io.wax911.support.R;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.view.CustomView;
import jc.g;
import jc.l;

/* compiled from: SupportTab.kt */
/* loaded from: classes.dex */
public final class SupportTab extends TabLayout implements CustomView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SupportTab(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        l.f(context, "context");
    }

    public /* synthetic */ SupportTab(Context context, AttributeSet attributeSet, int i10, g gVar) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    @Override // com.google.android.material.tabs.TabLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        onViewRecycled();
        super.onDetachedFromWindow();
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
        Context context = getContext();
        l.e(context, "context");
        setBackgroundColor(SupportExtentionKt.getColorFromAttr(context, R.attr.colorPrimary));
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportTab(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        onInit();
    }
}

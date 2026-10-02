package io.wax911.support.custom.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import io.wax911.support.base.view.CustomView;
import jc.g;
import jc.l;

/* compiled from: SingleLineTextView.kt */
/* loaded from: classes.dex */
public final class SingleLineTextView extends AppCompatTextView implements CustomView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SingleLineTextView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        l.f(context, "context");
    }

    public /* synthetic */ SingleLineTextView(Context context, AttributeSet attributeSet, int i10, g gVar) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        onViewRecycled();
        super.onDetachedFromWindow();
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
        setSingleLine(true);
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleLineTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        onInit();
    }
}

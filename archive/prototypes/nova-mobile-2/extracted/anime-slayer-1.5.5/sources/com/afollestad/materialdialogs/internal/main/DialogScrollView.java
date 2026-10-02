package com.afollestad.materialdialogs.internal.main;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
import d3.e;
import ic.l;
import jc.m;
import vb.p;

/* compiled from: DialogScrollView.kt */
/* loaded from: classes.dex */
public final class DialogScrollView extends ScrollView {

    /* renamed from: f, reason: collision with root package name */
    public DialogLayout f4000f;

    /* compiled from: DialogScrollView.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements l<DialogScrollView, p> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f4001f = new a();

        public a() {
            super(1);
        }

        public final void a(DialogScrollView dialogScrollView) {
            jc.l.g(dialogScrollView, "$receiver");
            dialogScrollView.b();
            dialogScrollView.c();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(DialogScrollView dialogScrollView) {
            a(dialogScrollView);
            return p.f15031a;
        }
    }

    public DialogScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void b() {
        if (getChildCount() != 0 && getMeasuredHeight() != 0 && d()) {
            View childAt = getChildAt(getChildCount() - 1);
            jc.l.b(childAt, "view");
            int bottom = childAt.getBottom() - (getMeasuredHeight() + getScrollY());
            DialogLayout dialogLayout = this.f4000f;
            if (dialogLayout != null) {
                dialogLayout.e(getScrollY() > 0, bottom > 0);
                return;
            }
            return;
        }
        DialogLayout dialogLayout2 = this.f4000f;
        if (dialogLayout2 != null) {
            dialogLayout2.e(false, false);
        }
    }

    public final void c() {
        setOverScrollMode((getChildCount() == 0 || getMeasuredHeight() == 0 || !d()) ? 2 : 1);
    }

    public final boolean d() {
        View childAt = getChildAt(0);
        jc.l.b(childAt, "getChildAt(0)");
        return childAt.getMeasuredHeight() > getHeight();
    }

    @Override // android.view.View
    public final DialogLayout getRootView() {
        return this.f4000f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        e.f5611a.y(this, a.f4001f);
    }

    @Override // android.view.View
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        b();
    }

    public final void setRootView(DialogLayout dialogLayout) {
        this.f4000f = dialogLayout;
    }
}

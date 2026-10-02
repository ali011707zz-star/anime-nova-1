package com.afollestad.materialdialogs.internal.message;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.afollestad.materialdialogs.internal.list.DialogRecyclerView;
import com.afollestad.materialdialogs.internal.main.DialogLayout;
import com.afollestad.materialdialogs.internal.main.DialogScrollView;
import jc.l;
import jc.m;
import jc.s;
import jc.y;
import kotlin.TypeCastException;
import oc.g;
import org.apache.http.impl.auth.NTLMEngineImpl;
import s2.c;
import s2.h;
import s2.j;
import vb.e;
import vb.f;
import vb.p;

/* compiled from: DialogContentLayout.kt */
/* loaded from: classes.dex */
public final class DialogContentLayout extends FrameLayout {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ g[] f4009m = {y.f(new s(y.b(DialogContentLayout.class), "frameHorizontalMargin", "getFrameHorizontalMargin()I"))};

    /* renamed from: f, reason: collision with root package name */
    public ViewGroup f4010f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f4011g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4012h;

    /* renamed from: i, reason: collision with root package name */
    public final e f4013i;

    /* renamed from: j, reason: collision with root package name */
    public DialogScrollView f4014j;

    /* renamed from: k, reason: collision with root package name */
    public DialogRecyclerView f4015k;

    /* renamed from: l, reason: collision with root package name */
    public View f4016l;

    /* compiled from: DialogContentLayout.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<Integer> {
        public a() {
            super(0);
        }

        public final int a() {
            return DialogContentLayout.this.getResources().getDimensionPixelSize(h.f13684g);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ Integer invoke() {
            return Integer.valueOf(a());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.g(context, "context");
        this.f4013i = f.a(new a());
    }

    public static /* synthetic */ void f(DialogContentLayout dialogContentLayout, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = -1;
        }
        if ((i12 & 2) != 0) {
            i11 = -1;
        }
        dialogContentLayout.e(i10, i11);
    }

    private final int getFrameHorizontalMargin() {
        e eVar = this.f4013i;
        g gVar = f4009m[0];
        return ((Number) eVar.getValue()).intValue();
    }

    private final DialogLayout getRootLayout() {
        ViewParent parent = getParent();
        if (parent != null) {
            return (DialogLayout) parent;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.afollestad.materialdialogs.internal.main.DialogLayout");
    }

    public static /* synthetic */ void h(DialogContentLayout dialogContentLayout, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = -1;
        }
        if ((i12 & 2) != 0) {
            i11 = -1;
        }
        dialogContentLayout.g(i10, i11);
    }

    public final void a() {
        if (this.f4014j == null) {
            DialogScrollView dialogScrollView = (DialogScrollView) d3.f.b(this, j.f13708d, null, 2, null);
            dialogScrollView.setRootView(getRootLayout());
            View childAt = dialogScrollView.getChildAt(0);
            if (childAt != null) {
                this.f4010f = (ViewGroup) childAt;
                this.f4014j = dialogScrollView;
                addView(dialogScrollView);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
        }
    }

    public final View b(Integer num, View view, boolean z10, boolean z11) {
        if (this.f4016l == null) {
            View view2 = null;
            if (view != null && view.getParent() != null) {
                ViewParent parent = view.getParent();
                if (!(parent instanceof ViewGroup)) {
                    parent = null;
                }
                ViewGroup viewGroup = (ViewGroup) parent;
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
            }
            if (z10) {
                this.f4012h = false;
                a();
                if (view == null) {
                    if (num == null) {
                        l.p();
                    }
                    view = (View) d3.f.a(this, num.intValue(), this.f4010f);
                }
                this.f4016l = view;
                ViewGroup viewGroup2 = this.f4010f;
                if (viewGroup2 == null) {
                    l.p();
                }
                View view3 = this.f4016l;
                if (view3 != null) {
                    if (z11) {
                        d3.e.x(d3.e.f5611a, view3, getFrameHorizontalMargin(), 0, getFrameHorizontalMargin(), 0, 10, null);
                    }
                    view2 = view3;
                }
                viewGroup2.addView(view2);
            } else {
                this.f4012h = z11;
                if (view == null) {
                    if (num == null) {
                        l.p();
                    }
                    view = (View) d3.f.b(this, num.intValue(), null, 2, null);
                }
                this.f4016l = view;
                addView(view);
            }
            View view4 = this.f4016l;
            if (view4 == null) {
                l.p();
            }
            return view4;
        }
        throw new IllegalStateException("Custom view already set.".toString());
    }

    public final void c(c cVar, RecyclerView.h<?> hVar, RecyclerView.p pVar) {
        l.g(cVar, "dialog");
        l.g(hVar, "adapter");
        if (this.f4015k == null) {
            DialogRecyclerView dialogRecyclerView = (DialogRecyclerView) d3.f.b(this, j.f13707c, null, 2, null);
            dialogRecyclerView.b(cVar);
            if (pVar == null) {
                pVar = new LinearLayoutManager(cVar.i());
            }
            dialogRecyclerView.setLayoutManager(pVar);
            this.f4015k = dialogRecyclerView;
            addView(dialogRecyclerView);
        }
        DialogRecyclerView dialogRecyclerView2 = this.f4015k;
        if (dialogRecyclerView2 != null) {
            dialogRecyclerView2.setAdapter(hVar);
        }
    }

    public final boolean d() {
        return getChildCount() > 1;
    }

    public final void e(int i10, int i11) {
        if (i10 != -1) {
            d3.e.x(d3.e.f5611a, getChildAt(0), 0, i10, 0, 0, 13, null);
        }
        if (i11 != -1) {
            d3.e.x(d3.e.f5611a, getChildAt(getChildCount() - 1), 0, 0, 0, i11, 7, null);
        }
    }

    public final void g(int i10, int i11) {
        View view = this.f4014j;
        if (view == null) {
            view = this.f4015k;
        }
        if (i10 != -1) {
            d3.e.x(d3.e.f5611a, view, 0, i10, 0, 0, 13, null);
        }
        if (i11 != -1) {
            d3.e.x(d3.e.f5611a, view, 0, 0, 0, i11, 7, null);
        }
    }

    public final View getCustomView() {
        return this.f4016l;
    }

    public final DialogRecyclerView getRecyclerView() {
        return this.f4015k;
    }

    public final DialogScrollView getScrollView() {
        return this.f4014j;
    }

    public final void i(c cVar, Integer num, CharSequence charSequence, Typeface typeface, ic.l<? super c3.a, p> lVar) {
        l.g(cVar, "dialog");
        a();
        if (this.f4011g == null) {
            int i10 = j.f13706b;
            ViewGroup viewGroup = this.f4010f;
            if (viewGroup == null) {
                l.p();
            }
            TextView textView = (TextView) d3.f.a(this, i10, viewGroup);
            ViewGroup viewGroup2 = this.f4010f;
            if (viewGroup2 == null) {
                l.p();
            }
            viewGroup2.addView(textView);
            this.f4011g = textView;
        }
        TextView textView2 = this.f4011g;
        if (textView2 == null) {
            l.p();
        }
        c3.a aVar = new c3.a(cVar, textView2);
        if (lVar != null) {
            lVar.invoke(aVar);
        }
        TextView textView3 = this.f4011g;
        if (textView3 != null) {
            if (typeface != null) {
                textView3.setTypeface(typeface);
            }
            d3.e.j(d3.e.f5611a, textView3, cVar.i(), Integer.valueOf(s2.f.f13665i), null, 4, null);
            aVar.b(num, charSequence);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredWidth;
        int i14;
        int childCount = getChildCount();
        int i15 = 0;
        int i16 = 0;
        while (i15 < childCount) {
            View childAt = getChildAt(i15);
            l.b(childAt, "currentChild");
            int measuredHeight = childAt.getMeasuredHeight() + i16;
            if (l.a(childAt, this.f4016l) && this.f4012h) {
                i14 = getFrameHorizontalMargin();
                measuredWidth = getMeasuredWidth() - getFrameHorizontalMargin();
            } else {
                measuredWidth = getMeasuredWidth();
                i14 = 0;
            }
            childAt.layout(i14, i16, measuredWidth, measuredHeight);
            i15++;
            i16 = measuredHeight;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int makeMeasureSpec;
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        DialogScrollView dialogScrollView = this.f4014j;
        if (dialogScrollView != null) {
            dialogScrollView.measure(View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
        }
        DialogScrollView dialogScrollView2 = this.f4014j;
        int measuredHeight = dialogScrollView2 != null ? dialogScrollView2.getMeasuredHeight() : 0;
        int i12 = size2 - measuredHeight;
        int childCount = this.f4014j != null ? getChildCount() - 1 : getChildCount();
        if (childCount == 0) {
            setMeasuredDimension(size, measuredHeight);
            return;
        }
        int i13 = i12 / childCount;
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            View childAt = getChildAt(i14);
            l.b(childAt, "currentChild");
            int id2 = childAt.getId();
            DialogScrollView dialogScrollView3 = this.f4014j;
            if (dialogScrollView3 == null || id2 != dialogScrollView3.getId()) {
                if (l.a(childAt, this.f4016l) && this.f4012h) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - (getFrameHorizontalMargin() * 2), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                }
                childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i13, Integer.MIN_VALUE));
                measuredHeight += childAt.getMeasuredHeight();
            }
        }
        setMeasuredDimension(size, measuredHeight);
    }

    public final void setCustomView(View view) {
        this.f4016l = view;
    }

    public final void setRecyclerView(DialogRecyclerView dialogRecyclerView) {
        this.f4015k = dialogRecyclerView;
    }

    public final void setScrollView(DialogScrollView dialogScrollView) {
        this.f4014j = dialogScrollView;
    }
}

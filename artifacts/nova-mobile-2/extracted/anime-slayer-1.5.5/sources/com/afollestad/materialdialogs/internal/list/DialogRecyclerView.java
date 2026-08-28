package com.afollestad.materialdialogs.internal.list;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import d3.e;
import ic.l;
import ic.p;
import jc.i;
import jc.m;
import jc.y;

/* compiled from: DialogRecyclerView.kt */
/* loaded from: classes.dex */
public final class DialogRecyclerView extends RecyclerView {

    /* renamed from: f, reason: collision with root package name */
    public p<? super Boolean, ? super Boolean, vb.p> f3984f;

    /* renamed from: g, reason: collision with root package name */
    public final c f3985g;

    /* compiled from: DialogRecyclerView.kt */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class a extends i implements p<Boolean, Boolean, vb.p> {
        public a(s2.c cVar) {
            super(2, cVar);
        }

        @Override // jc.c
        public final String e() {
            return "invalidateDividers";
        }

        @Override // jc.c
        public final oc.c f() {
            return y.d(d3.b.class, "com.afollestad.material-dialogs.core");
        }

        @Override // jc.c
        public final String h() {
            return "invalidateDividers(Lcom/afollestad/materialdialogs/MaterialDialog;ZZ)V";
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ vb.p invoke(Boolean bool, Boolean bool2) {
            k(bool.booleanValue(), bool2.booleanValue());
            return vb.p.f15031a;
        }

        public final void k(boolean z10, boolean z11) {
            d3.b.b((s2.c) this.f9173g, z10, z11);
        }
    }

    /* compiled from: DialogRecyclerView.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements l<DialogRecyclerView, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f3986f = new b();

        public b() {
            super(1);
        }

        public final void a(DialogRecyclerView dialogRecyclerView) {
            jc.l.g(dialogRecyclerView, "$receiver");
            dialogRecyclerView.c();
            dialogRecyclerView.d();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(DialogRecyclerView dialogRecyclerView) {
            a(dialogRecyclerView);
            return vb.p.f15031a;
        }
    }

    /* compiled from: DialogRecyclerView.kt */
    /* loaded from: classes.dex */
    public static final class c extends RecyclerView.u {
        public c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            jc.l.g(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i10, i11);
            DialogRecyclerView.this.c();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        jc.l.g(context, "context");
        this.f3985g = new c();
    }

    public final void b(s2.c cVar) {
        jc.l.g(cVar, "dialog");
        this.f3984f = new a(cVar);
    }

    public final void c() {
        p<? super Boolean, ? super Boolean, vb.p> pVar;
        if (getChildCount() == 0 || getMeasuredHeight() == 0 || (pVar = this.f3984f) == null) {
            return;
        }
        pVar.invoke(Boolean.valueOf(!f()), Boolean.valueOf(!e()));
    }

    public final void d() {
        int i10 = 2;
        if (getChildCount() != 0 && getMeasuredHeight() != 0 && !g()) {
            i10 = 1;
        }
        setOverScrollMode(i10);
    }

    public final boolean e() {
        RecyclerView.h adapter = getAdapter();
        if (adapter == null) {
            jc.l.p();
        }
        jc.l.b(adapter, "adapter!!");
        int itemCount = adapter.getItemCount() - 1;
        RecyclerView.p layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            if (((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition() == itemCount) {
                return true;
            }
        } else if ((layoutManager instanceof GridLayoutManager) && ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition() == itemCount) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        RecyclerView.p layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            if (((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition() == 0) {
                return true;
            }
        } else if ((layoutManager instanceof GridLayoutManager) && ((GridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition() == 0) {
            return true;
        }
        return false;
    }

    public final boolean g() {
        return e() && f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        e.f5611a.y(this, b.f3986f);
        addOnScrollListener(this.f3985g);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeOnScrollListener(this.f3985g);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        c();
    }
}

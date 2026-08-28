package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SimpleItemAnimator.java */
/* loaded from: classes.dex */
public abstract class w extends RecyclerView.m {

    /* renamed from: g, reason: collision with root package name */
    public boolean f3085g = true;

    public final void A(RecyclerView.e0 e0Var) {
        I(e0Var);
        h(e0Var);
    }

    public final void B(RecyclerView.e0 e0Var) {
        J(e0Var);
    }

    public final void C(RecyclerView.e0 e0Var, boolean z10) {
        K(e0Var, z10);
        h(e0Var);
    }

    public final void D(RecyclerView.e0 e0Var, boolean z10) {
        L(e0Var, z10);
    }

    public final void E(RecyclerView.e0 e0Var) {
        M(e0Var);
        h(e0Var);
    }

    public final void F(RecyclerView.e0 e0Var) {
        N(e0Var);
    }

    public final void G(RecyclerView.e0 e0Var) {
        O(e0Var);
        h(e0Var);
    }

    public final void H(RecyclerView.e0 e0Var) {
        P(e0Var);
    }

    public void I(RecyclerView.e0 e0Var) {
    }

    public void J(RecyclerView.e0 e0Var) {
    }

    public void K(RecyclerView.e0 e0Var, boolean z10) {
    }

    public void L(RecyclerView.e0 e0Var, boolean z10) {
    }

    public void M(RecyclerView.e0 e0Var) {
    }

    public void N(RecyclerView.e0 e0Var) {
    }

    public void O(RecyclerView.e0 e0Var) {
    }

    public void P(RecyclerView.e0 e0Var) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean a(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2) {
        int i10;
        int i11;
        if (cVar != null && ((i10 = cVar.f2766a) != (i11 = cVar2.f2766a) || cVar.f2767b != cVar2.f2767b)) {
            return y(e0Var, i10, cVar.f2767b, i11, cVar2.f2767b);
        }
        return w(e0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean b(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2, RecyclerView.m.c cVar, RecyclerView.m.c cVar2) {
        int i10;
        int i11;
        int i12 = cVar.f2766a;
        int i13 = cVar.f2767b;
        if (e0Var2.shouldIgnore()) {
            int i14 = cVar.f2766a;
            i11 = cVar.f2767b;
            i10 = i14;
        } else {
            i10 = cVar2.f2766a;
            i11 = cVar2.f2767b;
        }
        return x(e0Var, e0Var2, i12, i13, i10, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean c(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2) {
        int i10 = cVar.f2766a;
        int i11 = cVar.f2767b;
        View view = e0Var.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.f2766a;
        int top = cVar2 == null ? view.getTop() : cVar2.f2767b;
        if (!e0Var.isRemoved() && (i10 != left || i11 != top)) {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            return y(e0Var, i10, i11, left, top);
        }
        return z(e0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean d(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2) {
        int i10 = cVar.f2766a;
        int i11 = cVar2.f2766a;
        if (i10 == i11 && cVar.f2767b == cVar2.f2767b) {
            E(e0Var);
            return false;
        }
        return y(e0Var, i10, cVar.f2767b, i11, cVar2.f2767b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean f(RecyclerView.e0 e0Var) {
        return !this.f3085g || e0Var.isInvalid();
    }

    public abstract boolean w(RecyclerView.e0 e0Var);

    public abstract boolean x(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2, int i10, int i11, int i12, int i13);

    public abstract boolean y(RecyclerView.e0 e0Var, int i10, int i11, int i12, int i13);

    public abstract boolean z(RecyclerView.e0 e0Var);
}

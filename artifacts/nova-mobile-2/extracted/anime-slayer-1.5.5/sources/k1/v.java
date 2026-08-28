package k1;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.e0;
import k1.u;

/* compiled from: LoadStateAdapter.kt */
/* loaded from: classes.dex */
public abstract class v<VH extends RecyclerView.e0> extends RecyclerView.h<VH> {

    /* renamed from: a, reason: collision with root package name */
    public u f9820a = new u.c(false);

    public boolean e(u uVar) {
        jc.l.f(uVar, "loadState");
        return (uVar instanceof u.b) || (uVar instanceof u.a);
    }

    public int f(u uVar) {
        jc.l.f(uVar, "loadState");
        return 0;
    }

    public abstract void g(VH vh, u uVar);

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final int getItemCount() {
        return e(this.f9820a) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final int getItemViewType(int i10) {
        return f(this.f9820a);
    }

    public abstract VH h(ViewGroup viewGroup, u uVar);

    public final void i(u uVar) {
        jc.l.f(uVar, "loadState");
        if (!jc.l.a(this.f9820a, uVar)) {
            boolean e10 = e(this.f9820a);
            boolean e11 = e(uVar);
            if (e10 && !e11) {
                notifyItemRemoved(0);
            } else if (e11 && !e10) {
                notifyItemInserted(0);
            } else if (e10 && e11) {
                notifyItemChanged(0);
            }
            this.f9820a = uVar;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void onBindViewHolder(VH vh, int i10) {
        jc.l.f(vh, "holder");
        g(vh, this.f9820a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final VH onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        return h(viewGroup, this.f9820a);
    }
}

package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: AdapterListUpdateCallback.java */
/* loaded from: classes.dex */
public final class b implements p {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView.h f2871a;

    public b(RecyclerView.h hVar) {
        this.f2871a = hVar;
    }

    @Override // androidx.recyclerview.widget.p
    public void a(int i10, int i11) {
        this.f2871a.notifyItemRangeRemoved(i10, i11);
    }

    @Override // androidx.recyclerview.widget.p
    public void b(int i10, int i11) {
        this.f2871a.notifyItemRangeInserted(i10, i11);
    }

    @Override // androidx.recyclerview.widget.p
    public void c(int i10, int i11) {
        this.f2871a.notifyItemMoved(i10, i11);
    }

    @Override // androidx.recyclerview.widget.p
    public void d(int i10, int i11, Object obj) {
        this.f2871a.notifyItemRangeChanged(i10, i11, obj);
    }
}

package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.e0;
import androidx.recyclerview.widget.c;
import androidx.recyclerview.widget.d;
import androidx.recyclerview.widget.j;
import java.util.List;

/* compiled from: ListAdapter.java */
/* loaded from: classes.dex */
public abstract class o<T, VH extends RecyclerView.e0> extends RecyclerView.h<VH> {

    /* renamed from: a, reason: collision with root package name */
    public final d<T> f3068a;

    /* renamed from: b, reason: collision with root package name */
    public final d.b<T> f3069b;

    /* compiled from: ListAdapter.java */
    /* loaded from: classes.dex */
    public class a implements d.b<T> {
        public a() {
        }

        @Override // androidx.recyclerview.widget.d.b
        public void a(List<T> list, List<T> list2) {
            o.this.g(list, list2);
        }
    }

    public o(j.f<T> fVar) {
        a aVar = new a();
        this.f3069b = aVar;
        d<T> dVar = new d<>(new b(this), new c.a(fVar).a());
        this.f3068a = dVar;
        dVar.a(aVar);
    }

    public List<T> e() {
        return this.f3068a.b();
    }

    public T f(int i10) {
        return this.f3068a.b().get(i10);
    }

    public void g(List<T> list, List<T> list2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f3068a.b().size();
    }

    public void h(List<T> list) {
        this.f3068a.e(list);
    }
}

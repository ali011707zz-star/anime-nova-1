package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.b0;
import androidx.recyclerview.widget.y;

/* compiled from: NestedAdapterWrapper.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public final b0.c f3071a;

    /* renamed from: b, reason: collision with root package name */
    public final y.d f3072b;

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView.h<RecyclerView.e0> f3073c;

    /* renamed from: d, reason: collision with root package name */
    public final b f3074d;

    /* renamed from: e, reason: collision with root package name */
    public int f3075e;

    /* renamed from: f, reason: collision with root package name */
    public RecyclerView.j f3076f = new a();

    /* compiled from: NestedAdapterWrapper.java */
    /* loaded from: classes.dex */
    public class a extends RecyclerView.j {
        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onChanged() {
            q qVar = q.this;
            qVar.f3075e = qVar.f3073c.getItemCount();
            q qVar2 = q.this;
            qVar2.f3074d.e(qVar2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeChanged(int i10, int i11) {
            q qVar = q.this;
            qVar.f3074d.d(qVar, i10, i11, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeInserted(int i10, int i11) {
            q qVar = q.this;
            qVar.f3075e += i11;
            qVar.f3074d.b(qVar, i10, i11);
            q qVar2 = q.this;
            if (qVar2.f3075e <= 0 || qVar2.f3073c.getStateRestorationPolicy() != RecyclerView.h.a.PREVENT_WHEN_EMPTY) {
                return;
            }
            q qVar3 = q.this;
            qVar3.f3074d.a(qVar3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeMoved(int i10, int i11, int i12) {
            p0.i.b(i12 == 1, "moving more than 1 item is not supported in RecyclerView");
            q qVar = q.this;
            qVar.f3074d.c(qVar, i10, i11);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeRemoved(int i10, int i11) {
            q qVar = q.this;
            qVar.f3075e -= i11;
            qVar.f3074d.f(qVar, i10, i11);
            q qVar2 = q.this;
            if (qVar2.f3075e >= 1 || qVar2.f3073c.getStateRestorationPolicy() != RecyclerView.h.a.PREVENT_WHEN_EMPTY) {
                return;
            }
            q qVar3 = q.this;
            qVar3.f3074d.a(qVar3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onStateRestorationPolicyChanged() {
            q qVar = q.this;
            qVar.f3074d.a(qVar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            q qVar = q.this;
            qVar.f3074d.d(qVar, i10, i11, obj);
        }
    }

    /* compiled from: NestedAdapterWrapper.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(q qVar);

        void b(q qVar, int i10, int i11);

        void c(q qVar, int i10, int i11);

        void d(q qVar, int i10, int i11, Object obj);

        void e(q qVar);

        void f(q qVar, int i10, int i11);
    }

    public q(RecyclerView.h<RecyclerView.e0> hVar, b bVar, b0 b0Var, y.d dVar) {
        this.f3073c = hVar;
        this.f3074d = bVar;
        this.f3071a = b0Var.a(this);
        this.f3072b = dVar;
        this.f3075e = hVar.getItemCount();
        hVar.registerAdapterDataObserver(this.f3076f);
    }

    public int a() {
        return this.f3075e;
    }

    public long b(int i10) {
        return this.f3072b.a(this.f3073c.getItemId(i10));
    }

    public int c(int i10) {
        return this.f3071a.b(this.f3073c.getItemViewType(i10));
    }

    public void d(RecyclerView.e0 e0Var, int i10) {
        this.f3073c.bindViewHolder(e0Var, i10);
    }

    public RecyclerView.e0 e(ViewGroup viewGroup, int i10) {
        return this.f3073c.onCreateViewHolder(viewGroup, this.f3071a.a(i10));
    }
}

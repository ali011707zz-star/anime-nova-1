package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: ConcatAdapter.java */
/* loaded from: classes.dex */
public final class g extends RecyclerView.h<RecyclerView.e0> {

    /* renamed from: a, reason: collision with root package name */
    public final h f2916a;

    /* compiled from: ConcatAdapter.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c, reason: collision with root package name */
        public static final a f2917c = new a(true, b.NO_STABLE_IDS);

        /* renamed from: a, reason: collision with root package name */
        public final boolean f2918a;

        /* renamed from: b, reason: collision with root package name */
        public final b f2919b;

        /* compiled from: ConcatAdapter.java */
        /* renamed from: androidx.recyclerview.widget.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0048a {

            /* renamed from: a, reason: collision with root package name */
            public boolean f2920a;

            /* renamed from: b, reason: collision with root package name */
            public b f2921b;

            public C0048a() {
                a aVar = a.f2917c;
                this.f2920a = aVar.f2918a;
                this.f2921b = aVar.f2919b;
            }

            public a a() {
                return new a(this.f2920a, this.f2921b);
            }

            public C0048a b(b bVar) {
                this.f2921b = bVar;
                return this;
            }
        }

        /* compiled from: ConcatAdapter.java */
        /* loaded from: classes.dex */
        public enum b {
            NO_STABLE_IDS,
            ISOLATED_STABLE_IDS,
            SHARED_STABLE_IDS
        }

        public a(boolean z10, b bVar) {
            this.f2918a = z10;
            this.f2919b = bVar;
        }
    }

    @SafeVarargs
    public g(RecyclerView.h<? extends RecyclerView.e0>... hVarArr) {
        this(a.f2917c, hVarArr);
    }

    public boolean e(RecyclerView.h<? extends RecyclerView.e0> hVar) {
        return this.f2916a.h(hVar);
    }

    public void f(RecyclerView.h.a aVar) {
        super.setStateRestorationPolicy(aVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int findRelativeAdapterPositionIn(RecyclerView.h<? extends RecyclerView.e0> hVar, RecyclerView.e0 e0Var, int i10) {
        return this.f2916a.p(hVar, e0Var, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f2916a.q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        return this.f2916a.n(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        return this.f2916a.o(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.f2916a.v(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onBindViewHolder(RecyclerView.e0 e0Var, int i10) {
        this.f2916a.w(e0Var, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public RecyclerView.e0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return this.f2916a.x(viewGroup, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.f2916a.y(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public boolean onFailedToRecycleView(RecyclerView.e0 e0Var) {
        return this.f2916a.z(e0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onViewAttachedToWindow(RecyclerView.e0 e0Var) {
        this.f2916a.A(e0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onViewDetachedFromWindow(RecyclerView.e0 e0Var) {
        this.f2916a.B(e0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onViewRecycled(RecyclerView.e0 e0Var) {
        this.f2916a.C(e0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void setHasStableIds(boolean z10) {
        throw new UnsupportedOperationException("Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void setStateRestorationPolicy(RecyclerView.h.a aVar) {
        throw new UnsupportedOperationException("Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters");
    }

    @SafeVarargs
    public g(a aVar, RecyclerView.h<? extends RecyclerView.e0>... hVarArr) {
        this(aVar, (List<? extends RecyclerView.h<? extends RecyclerView.e0>>) Arrays.asList(hVarArr));
    }

    public g(a aVar, List<? extends RecyclerView.h<? extends RecyclerView.e0>> list) {
        this.f2916a = new h(this, aVar);
        Iterator<? extends RecyclerView.h<? extends RecyclerView.e0>> it2 = list.iterator();
        while (it2.hasNext()) {
            e(it2.next());
        }
        super.setHasStableIds(this.f2916a.s());
    }
}

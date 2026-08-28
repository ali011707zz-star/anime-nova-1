package k1;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.e0;
import androidx.recyclerview.widget.j;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import k1.u;

/* compiled from: PagingDataAdapter.kt */
/* loaded from: classes.dex */
public abstract class r0<T, VH extends RecyclerView.e0> extends RecyclerView.h<VH> {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9754a;

    /* renamed from: b, reason: collision with root package name */
    public final k1.b<T> f9755b;

    /* renamed from: c, reason: collision with root package name */
    public final uc.f<g> f9756c;

    /* compiled from: PagingDataAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<vb.p> {
        public a() {
            super(0);
        }

        public final void a() {
            if (r0.this.getStateRestorationPolicy() != RecyclerView.h.a.PREVENT || r0.this.f9754a) {
                return;
            }
            r0.this.setStateRestorationPolicy(RecyclerView.h.a.ALLOW);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: PagingDataAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends RecyclerView.j {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ a f9759b;

        public b(a aVar) {
            this.f9759b = aVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeInserted(int i10, int i11) {
            this.f9759b.a();
            r0.this.unregisterAdapterDataObserver(this);
            super.onItemRangeInserted(i10, i11);
        }
    }

    /* compiled from: PagingDataAdapter.kt */
    /* loaded from: classes.dex */
    public static final class c implements ic.l<g, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public boolean f9760f = true;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ a f9762h;

        public c(a aVar) {
            this.f9762h = aVar;
        }

        public void a(g gVar) {
            jc.l.f(gVar, "loadStates");
            if (this.f9760f) {
                this.f9760f = false;
            } else if (gVar.f().g() instanceof u.c) {
                this.f9762h.a();
                r0.this.i(this);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(g gVar) {
            a(gVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: PagingDataAdapter.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.l<g, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ v f9763f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(v vVar) {
            super(1);
            this.f9763f = vVar;
        }

        public final void a(g gVar) {
            jc.l.f(gVar, "loadStates");
            this.f9763f.i(gVar.b());
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(g gVar) {
            a(gVar);
            return vb.p.f15031a;
        }
    }

    public /* synthetic */ r0(j.f fVar, rc.l0 l0Var, rc.l0 l0Var2, int i10, jc.g gVar) {
        this(fVar, (i10 & 2) != 0 ? rc.g1.c() : l0Var, (i10 & 4) != 0 ? rc.g1.a() : l0Var2);
    }

    public final void f(ic.l<? super g, vb.p> lVar) {
        jc.l.f(lVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f9755b.d(lVar);
    }

    public final T g(int i10) {
        return this.f9755b.g(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f9755b.h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final long getItemId(int i10) {
        return super.getItemId(i10);
    }

    public final void h() {
        this.f9755b.j();
    }

    public final void i(ic.l<? super g, vb.p> lVar) {
        jc.l.f(lVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f9755b.k(lVar);
    }

    public final void j() {
        this.f9755b.l();
    }

    public final Object k(q0<T> q0Var, ac.d<? super vb.p> dVar) {
        Object m10 = this.f9755b.m(q0Var, dVar);
        return m10 == bc.c.d() ? m10 : vb.p.f15031a;
    }

    public final androidx.recyclerview.widget.g l(v<?> vVar) {
        jc.l.f(vVar, "footer");
        f(new d(vVar));
        return new androidx.recyclerview.widget.g(this, vVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void setHasStableIds(boolean z10) {
        throw new UnsupportedOperationException("Stable ids are unsupported on PagingDataAdapter.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void setStateRestorationPolicy(RecyclerView.h.a aVar) {
        jc.l.f(aVar, "strategy");
        this.f9754a = true;
        super.setStateRestorationPolicy(aVar);
    }

    public r0(j.f<T> fVar, rc.l0 l0Var, rc.l0 l0Var2) {
        jc.l.f(fVar, "diffCallback");
        jc.l.f(l0Var, "mainDispatcher");
        jc.l.f(l0Var2, "workerDispatcher");
        k1.b<T> bVar = new k1.b<>(fVar, new androidx.recyclerview.widget.b(this), l0Var, l0Var2);
        this.f9755b = bVar;
        super.setStateRestorationPolicy(RecyclerView.h.a.PREVENT);
        a aVar = new a();
        registerAdapterDataObserver(new b(aVar));
        f(new c(aVar));
        this.f9756c = bVar.i();
    }
}

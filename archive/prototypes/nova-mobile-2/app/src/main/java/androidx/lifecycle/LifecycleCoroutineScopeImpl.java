package androidx.lifecycle;

import androidx.lifecycle.k;
import rc.g1;
import rc.h2;
import rc.q0;

/* compiled from: Lifecycle.kt */
/* loaded from: classes.dex */
public final class LifecycleCoroutineScopeImpl extends l implements n {

    /* renamed from: f, reason: collision with root package name */
    public final k f2395f;

    /* renamed from: g, reason: collision with root package name */
    public final ac.g f2396g;

    /* compiled from: Lifecycle.kt */
    @cc.f(c = "androidx.lifecycle.LifecycleCoroutineScopeImpl$register$1", f = "Lifecycle.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f2397f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f2398g;

        public a(ac.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            a aVar = new a(dVar);
            aVar.f2398g = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f2397f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            q0 q0Var = (q0) this.f2398g;
            if (LifecycleCoroutineScopeImpl.this.a().b().compareTo(k.c.INITIALIZED) < 0) {
                h2.d(q0Var.getCoroutineContext(), null, 1, null);
            } else {
                LifecycleCoroutineScopeImpl.this.a().a(LifecycleCoroutineScopeImpl.this);
            }
            return vb.p.f15031a;
        }
    }

    public LifecycleCoroutineScopeImpl(k kVar, ac.g gVar) {
        jc.l.f(kVar, "lifecycle");
        jc.l.f(gVar, "coroutineContext");
        this.f2395f = kVar;
        this.f2396g = gVar;
        if (a().b() == k.c.DESTROYED) {
            h2.d(getCoroutineContext(), null, 1, null);
        }
    }

    @Override // androidx.lifecycle.l
    public k a() {
        return this.f2395f;
    }

    @Override // androidx.lifecycle.n
    public void e(q qVar, k.b bVar) {
        jc.l.f(qVar, "source");
        jc.l.f(bVar, "event");
        if (a().b().compareTo(k.c.DESTROYED) <= 0) {
            a().c(this);
            h2.d(getCoroutineContext(), null, 1, null);
        }
    }

    @Override // rc.q0
    public ac.g getCoroutineContext() {
        return this.f2396g;
    }

    public final void j() {
        rc.i.d(this, g1.c().K0(), null, new a(null), 2, null);
    }
}

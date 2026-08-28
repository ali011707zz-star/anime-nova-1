package androidx.lifecycle;

import androidx.lifecycle.k;
import rc.c2;
import rc.q0;
import rc.r0;
import vb.j;

/* compiled from: RepeatOnLifecycle.kt */
/* loaded from: classes.dex */
final class RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1 implements n {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ k.b f2422f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ jc.x<c2> f2423g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ q0 f2424h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ k.b f2425i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ rc.o<vb.p> f2426j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ ad.b f2427k;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ ic.p<q0, ac.d<? super vb.p>, Object> f2428l;

    /* compiled from: RepeatOnLifecycle.kt */
    @cc.f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {171, 110}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f2429f;

        /* renamed from: g, reason: collision with root package name */
        public Object f2430g;

        /* renamed from: h, reason: collision with root package name */
        public int f2431h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ad.b f2432i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ic.p<q0, ac.d<? super vb.p>, Object> f2433j;

        /* compiled from: RepeatOnLifecycle.kt */
        @cc.f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {111}, m = "invokeSuspend")
        /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0039a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f2434f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f2435g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ ic.p<q0, ac.d<? super vb.p>, Object> f2436h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0039a(ic.p<? super q0, ? super ac.d<? super vb.p>, ? extends Object> pVar, ac.d<? super C0039a> dVar) {
                super(2, dVar);
                this.f2436h = pVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                C0039a c0039a = new C0039a(this.f2436h, dVar);
                c0039a.f2435g = obj;
                return c0039a;
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0039a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f2434f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    q0 q0Var = (q0) this.f2435g;
                    ic.p<q0, ac.d<? super vb.p>, Object> pVar = this.f2436h;
                    this.f2434f = 1;
                    if (pVar.invoke(q0Var, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(ad.b bVar, ic.p<? super q0, ? super ac.d<? super vb.p>, ? extends Object> pVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f2432i = bVar;
            this.f2433j = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f2432i, this.f2433j, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            ad.b bVar;
            ic.p<q0, ac.d<? super vb.p>, Object> pVar;
            ad.b bVar2;
            Throwable th;
            Object d10 = bc.c.d();
            int i10 = this.f2431h;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    bVar = this.f2432i;
                    pVar = this.f2433j;
                    this.f2429f = bVar;
                    this.f2430g = pVar;
                    this.f2431h = 1;
                    if (bVar.b(null, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        bVar2 = (ad.b) this.f2429f;
                        try {
                            vb.k.b(obj);
                            vb.p pVar2 = vb.p.f15031a;
                            bVar2.a(null);
                            return pVar2;
                        } catch (Throwable th2) {
                            th = th2;
                            bVar2.a(null);
                            throw th;
                        }
                    }
                    pVar = (ic.p) this.f2430g;
                    ad.b bVar3 = (ad.b) this.f2429f;
                    vb.k.b(obj);
                    bVar = bVar3;
                }
                C0039a c0039a = new C0039a(pVar, null);
                this.f2429f = bVar;
                this.f2430g = null;
                this.f2431h = 2;
                if (r0.e(c0039a, this) == d10) {
                    return d10;
                }
                bVar2 = bVar;
                vb.p pVar22 = vb.p.f15031a;
                bVar2.a(null);
                return pVar22;
            } catch (Throwable th3) {
                bVar2 = bVar;
                th = th3;
                bVar2.a(null);
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r9v4, types: [T, rc.c2] */
    @Override // androidx.lifecycle.n
    public final void e(q qVar, k.b bVar) {
        ?? d10;
        jc.l.f(qVar, "$noName_0");
        jc.l.f(bVar, "event");
        if (bVar == this.f2422f) {
            jc.x<c2> xVar = this.f2423g;
            d10 = rc.k.d(this.f2424h, null, null, new a(this.f2427k, this.f2428l, null), 3, null);
            xVar.f9194f = d10;
            return;
        }
        if (bVar == this.f2425i) {
            c2 c2Var = this.f2423g.f9194f;
            if (c2Var != null) {
                c2.a.a(c2Var, null, 1, null);
            }
            this.f2423g.f9194f = null;
        }
        if (bVar == k.b.ON_DESTROY) {
            rc.o<vb.p> oVar = this.f2426j;
            vb.p pVar = vb.p.f15031a;
            j.a aVar = vb.j.f15020f;
            oVar.resumeWith(vb.j.a(pVar));
        }
    }
}

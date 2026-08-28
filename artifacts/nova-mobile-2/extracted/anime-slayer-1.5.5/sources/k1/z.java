package k1;

import k1.a;

/* compiled from: CachedPagingData.kt */
/* loaded from: classes.dex */
public final class z<T> {

    /* renamed from: a, reason: collision with root package name */
    public final c<T> f9839a;

    /* renamed from: b, reason: collision with root package name */
    public final rc.q0 f9840b;

    /* renamed from: c, reason: collision with root package name */
    public final q0<T> f9841c;

    /* renamed from: d, reason: collision with root package name */
    public final k1.a f9842d;

    /* compiled from: CachedPagingData.kt */
    @cc.f(c = "androidx.paging.MulticastedPagingData$accumulated$1", f = "CachedPagingData.kt", l = {38}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<uc.g<? super f0<T>>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9843f;

        public a(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new a(dVar);
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((a) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9843f;
            if (i10 == 0) {
                vb.k.b(obj);
                k1.a c10 = z.this.c();
                if (c10 != null) {
                    a.EnumC0169a enumC0169a = a.EnumC0169a.PAGE_EVENT_FLOW;
                    this.f9843f = 1;
                    if (c10.b(enumC0169a, this) == d10) {
                        return d10;
                    }
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

    /* compiled from: CachedPagingData.kt */
    @cc.f(c = "androidx.paging.MulticastedPagingData$accumulated$2", f = "CachedPagingData.kt", l = {40}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.q<uc.g<? super f0<T>>, Throwable, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9845f;

        public b(ac.d dVar) {
            super(3, dVar);
        }

        public final ac.d<vb.p> f(uc.g<? super f0<T>> gVar, Throwable th, ac.d<? super vb.p> dVar) {
            jc.l.f(gVar, "$this$create");
            jc.l.f(dVar, "continuation");
            return new b(dVar);
        }

        @Override // ic.q
        public final Object i(Object obj, Throwable th, ac.d<? super vb.p> dVar) {
            return ((b) f((uc.g) obj, th, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9845f;
            if (i10 == 0) {
                vb.k.b(obj);
                k1.a c10 = z.this.c();
                if (c10 != null) {
                    a.EnumC0169a enumC0169a = a.EnumC0169a.PAGE_EVENT_FLOW;
                    this.f9845f = 1;
                    if (c10.a(enumC0169a, this) == d10) {
                        return d10;
                    }
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

    public z(rc.q0 q0Var, q0<T> q0Var2, k1.a aVar) {
        jc.l.f(q0Var, "scope");
        jc.l.f(q0Var2, "parent");
        this.f9840b = q0Var;
        this.f9841c = q0Var2;
        this.f9842d = aVar;
        this.f9839a = new c<>(uc.h.v(uc.h.x(q0Var2.a(), new a(null)), new b(null)), q0Var);
    }

    public final q0<T> a() {
        return new q0<>(this.f9839a.e(), this.f9841c.b());
    }

    public final Object b(ac.d<? super vb.p> dVar) {
        Object d10 = this.f9839a.d(dVar);
        return d10 == bc.c.d() ? d10 : vb.p.f15031a;
    }

    public final k1.a c() {
        return this.f9842d;
    }

    public /* synthetic */ z(rc.q0 q0Var, q0 q0Var2, k1.a aVar, int i10, jc.g gVar) {
        this(q0Var, q0Var2, (i10 & 4) != 0 ? null : aVar);
    }
}

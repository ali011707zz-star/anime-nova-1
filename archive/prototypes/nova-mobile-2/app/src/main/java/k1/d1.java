package k1;

/* compiled from: SuspendingPagingSourceFactory.kt */
/* loaded from: classes.dex */
public final class d1<Key, Value> implements ic.a<t0<Key, Value>> {

    /* renamed from: f, reason: collision with root package name */
    public final rc.l0 f9369f;

    /* renamed from: g, reason: collision with root package name */
    public final ic.a<t0<Key, Value>> f9370g;

    /* compiled from: SuspendingPagingSourceFactory.kt */
    @cc.f(c = "androidx.paging.SuspendingPagingSourceFactory$create$2", f = "SuspendingPagingSourceFactory.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<rc.q0, ac.d<? super t0<Key, Value>>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9371f;

        public a(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new a(dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, Object obj) {
            return ((a) create(q0Var, (ac.d) obj)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f9371f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            return d1.this.f9370g.invoke();
        }
    }

    public final Object b(ac.d<? super t0<Key, Value>> dVar) {
        return rc.i.g(this.f9369f, new a(null), dVar);
    }

    @Override // ic.a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public t0<Key, Value> invoke() {
        return this.f9370g.invoke();
    }
}

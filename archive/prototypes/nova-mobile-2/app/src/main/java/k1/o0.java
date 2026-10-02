package k1;

/* compiled from: Pager.kt */
/* loaded from: classes.dex */
public final class o0<Key, Value> {

    /* renamed from: a, reason: collision with root package name */
    public final uc.f<q0<Value>> f9701a;

    /* compiled from: Pager.kt */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class a extends jc.j implements ic.l<ac.d<? super t0<Key, Value>>, Object> {
        public a(ic.a aVar) {
            super(1, aVar, d1.class, "create", "create(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final Object invoke(ac.d<? super t0<Key, Value>> dVar) {
            return ((d1) ((ic.a) this.f9173g)).b(dVar);
        }
    }

    /* compiled from: Pager.kt */
    @cc.f(c = "androidx.paging.Pager$flow$2", f = "Pager.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.l<ac.d<? super t0<Key, Value>>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9702f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ic.a f9703g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ic.a aVar, ac.d dVar) {
            super(1, dVar);
            this.f9703g = aVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new b(this.f9703g, dVar);
        }

        @Override // ic.l
        public final Object invoke(Object obj) {
            return ((b) create((ac.d) obj)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f9702f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            return this.f9703g.invoke();
        }
    }

    public o0(p0 p0Var, Key key, w0<Key, Value> w0Var, ic.a<? extends t0<Key, Value>> aVar) {
        ic.l bVar;
        jc.l.f(p0Var, "config");
        jc.l.f(aVar, "pagingSourceFactory");
        if (aVar instanceof d1) {
            bVar = new a(aVar);
        } else {
            bVar = new b(aVar, null);
        }
        this.f9701a = new g0(bVar, key, p0Var, w0Var).i();
    }

    public final uc.f<q0<Value>> a() {
        return this.f9701a;
    }

    public /* synthetic */ o0(p0 p0Var, Object obj, ic.a aVar, int i10, jc.g gVar) {
        this(p0Var, (i10 & 2) != 0 ? null : obj, aVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o0(p0 p0Var, Key key, ic.a<? extends t0<Key, Value>> aVar) {
        this(p0Var, key, null, aVar);
        jc.l.f(p0Var, "config");
        jc.l.f(aVar, "pagingSourceFactory");
    }
}

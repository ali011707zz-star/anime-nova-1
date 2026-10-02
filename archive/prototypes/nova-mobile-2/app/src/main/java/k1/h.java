package k1;

/* compiled from: ConflatedEventBus.kt */
/* loaded from: classes.dex */
public final class h<T> {

    /* renamed from: a, reason: collision with root package name */
    public final uc.u<vb.i<Integer, T>> f9482a;

    /* renamed from: b, reason: collision with root package name */
    public final uc.f<T> f9483b;

    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes.dex */
    public static final class a implements uc.f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ uc.f f9484f;

        /* compiled from: Collect.kt */
        /* renamed from: k1.h$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0187a implements uc.g<vb.i<? extends Integer, ? extends T>> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.g f9485f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ a f9486g;

            @cc.f(c = "androidx.paging.ConflatedEventBus$$special$$inlined$mapNotNull$1$2", f = "ConflatedEventBus.kt", l = {136}, m = "emit")
            /* renamed from: k1.h$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0188a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f9487f;

                /* renamed from: g, reason: collision with root package name */
                public int f9488g;

                public C0188a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f9487f = obj;
                    this.f9488g |= Integer.MIN_VALUE;
                    return C0187a.this.a(null, this);
                }
            }

            public C0187a(uc.g gVar, a aVar) {
                this.f9485f = gVar;
                this.f9486g = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0188a c0188a;
                int i10;
                if (dVar instanceof C0188a) {
                    c0188a = (C0188a) dVar;
                    int i11 = c0188a.f9488g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0188a.f9488g = i11 - Integer.MIN_VALUE;
                        Object obj2 = c0188a.f9487f;
                        Object d10 = bc.c.d();
                        i10 = c0188a.f9488g;
                        if (i10 != 0) {
                            vb.k.b(obj2);
                            uc.g gVar = this.f9485f;
                            Object d11 = ((vb.i) obj).d();
                            if (d11 != null) {
                                c0188a.f9488g = 1;
                                if (gVar.a(d11, c0188a) == d10) {
                                    return d10;
                                }
                            } else {
                                return vb.p.f15031a;
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            vb.k.b(obj2);
                        }
                        return vb.p.f15031a;
                    }
                }
                c0188a = new C0188a(dVar);
                Object obj22 = c0188a.f9487f;
                Object d102 = bc.c.d();
                i10 = c0188a.f9488g;
                if (i10 != 0) {
                }
                return vb.p.f15031a;
            }
        }

        public a(uc.f fVar) {
            this.f9484f = fVar;
        }

        @Override // uc.f
        public Object b(uc.g gVar, ac.d dVar) {
            Object b10 = this.f9484f.b(new C0187a(gVar, this), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    public h(T t10) {
        uc.u<vb.i<Integer, T>> a10 = uc.c0.a(new vb.i(Integer.MIN_VALUE, t10));
        this.f9482a = a10;
        this.f9483b = new a(a10);
    }

    public final uc.f<T> a() {
        return this.f9483b;
    }

    public final void b(T t10) {
        jc.l.f(t10, "data");
        uc.u<vb.i<Integer, T>> uVar = this.f9482a;
        uVar.setValue(new vb.i<>(Integer.valueOf(uVar.getValue().c().intValue() + 1), t10));
    }

    public /* synthetic */ h(Object obj, int i10, jc.g gVar) {
        this((i10 & 1) != 0 ? null : obj);
    }
}

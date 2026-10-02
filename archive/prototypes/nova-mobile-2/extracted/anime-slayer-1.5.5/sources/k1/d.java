package k1;

import k1.a;

/* compiled from: CachedPagingData.kt */
/* loaded from: classes.dex */
public final class d {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes.dex */
    public static final class a<T> implements uc.f<z<T>> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ uc.f f9343f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ rc.q0 f9344g;

        /* compiled from: Collect.kt */
        /* renamed from: k1.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0179a implements uc.g<q0<T>> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.g f9345f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ a f9346g;

            @cc.f(c = "androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2", f = "CachedPagingData.kt", l = {135}, m = "emit")
            /* renamed from: k1.d$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0180a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f9347f;

                /* renamed from: g, reason: collision with root package name */
                public int f9348g;

                public C0180a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f9347f = obj;
                    this.f9348g |= Integer.MIN_VALUE;
                    return C0179a.this.a(null, this);
                }
            }

            public C0179a(uc.g gVar, a aVar) {
                this.f9345f = gVar;
                this.f9346g = aVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0180a c0180a;
                int i10;
                if (dVar instanceof C0180a) {
                    c0180a = (C0180a) dVar;
                    int i11 = c0180a.f9348g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0180a.f9348g = i11 - Integer.MIN_VALUE;
                        Object obj2 = c0180a.f9347f;
                        Object d10 = bc.c.d();
                        i10 = c0180a.f9348g;
                        if (i10 != 0) {
                            vb.k.b(obj2);
                            uc.g gVar = this.f9345f;
                            z zVar = new z(this.f9346g.f9344g, (q0) obj, null, 4, null);
                            c0180a.f9348g = 1;
                            if (gVar.a(zVar, c0180a) == d10) {
                                return d10;
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
                c0180a = new C0180a(dVar);
                Object obj22 = c0180a.f9347f;
                Object d102 = bc.c.d();
                i10 = c0180a.f9348g;
                if (i10 != 0) {
                }
                return vb.p.f15031a;
            }
        }

        public a(uc.f fVar, rc.q0 q0Var) {
            this.f9343f = fVar;
            this.f9344g = q0Var;
        }

        @Override // uc.f
        public Object b(uc.g gVar, ac.d dVar) {
            Object b10 = this.f9343f.b(new C0179a(gVar, this), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes.dex */
    public static final class b<T> implements uc.f<q0<T>> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ uc.f f9350f;

        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class a implements uc.g<z<T>> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.g f9351f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ b f9352g;

            @cc.f(c = "androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$2$2", f = "CachedPagingData.kt", l = {135}, m = "emit")
            /* renamed from: k1.d$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0181a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f9353f;

                /* renamed from: g, reason: collision with root package name */
                public int f9354g;

                public C0181a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f9353f = obj;
                    this.f9354g |= Integer.MIN_VALUE;
                    return a.this.a(null, this);
                }
            }

            public a(uc.g gVar, b bVar) {
                this.f9351f = gVar;
                this.f9352g = bVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0181a c0181a;
                int i10;
                if (dVar instanceof C0181a) {
                    c0181a = (C0181a) dVar;
                    int i11 = c0181a.f9354g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0181a.f9354g = i11 - Integer.MIN_VALUE;
                        Object obj2 = c0181a.f9353f;
                        Object d10 = bc.c.d();
                        i10 = c0181a.f9354g;
                        if (i10 != 0) {
                            vb.k.b(obj2);
                            uc.g gVar = this.f9351f;
                            q0<T> a10 = ((z) obj).a();
                            c0181a.f9354g = 1;
                            if (gVar.a(a10, c0181a) == d10) {
                                return d10;
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
                c0181a = new C0181a(dVar);
                Object obj22 = c0181a.f9353f;
                Object d102 = bc.c.d();
                i10 = c0181a.f9354g;
                if (i10 != 0) {
                }
                return vb.p.f15031a;
            }
        }

        public b(uc.f fVar) {
            this.f9350f = fVar;
        }

        @Override // uc.f
        public Object b(uc.g gVar, ac.d dVar) {
            Object b10 = this.f9350f.b(new a(gVar, this), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: CachedPagingData.kt */
    @cc.f(c = "androidx.paging.CachedPagingDataKt$cachedIn$1", f = "CachedPagingData.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c<T> extends cc.k implements ic.p<q0<T>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9356f;

        public c(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((c) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f9356f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            return vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: CachedPagingData.kt */
    @cc.f(c = "androidx.paging.CachedPagingDataKt$cachedIn$multicastedFlow$2", f = "CachedPagingData.kt", l = {93}, m = "invokeSuspend")
    /* renamed from: k1.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0182d<T> extends cc.k implements ic.q<z<T>, z<T>, ac.d<? super z<T>>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9357f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f9358g;

        /* renamed from: h, reason: collision with root package name */
        public int f9359h;

        public C0182d(ac.d dVar) {
            super(3, dVar);
        }

        public final ac.d<vb.p> f(z<T> zVar, z<T> zVar2, ac.d<? super z<T>> dVar) {
            jc.l.f(zVar, "prev");
            jc.l.f(zVar2, "next");
            jc.l.f(dVar, "continuation");
            C0182d c0182d = new C0182d(dVar);
            c0182d.f9357f = zVar;
            c0182d.f9358g = zVar2;
            return c0182d;
        }

        @Override // ic.q
        public final Object i(Object obj, Object obj2, Object obj3) {
            return ((C0182d) f((z) obj, (z) obj2, (ac.d) obj3)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9359h;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z zVar = (z) this.f9357f;
                vb.k.b(obj);
                return zVar;
            }
            vb.k.b(obj);
            z zVar2 = (z) this.f9357f;
            z zVar3 = (z) this.f9358g;
            this.f9357f = zVar3;
            this.f9359h = 1;
            return zVar2.b(this) == d10 ? d10 : zVar3;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: CachedPagingData.kt */
    @cc.f(c = "androidx.paging.CachedPagingDataKt$cachedIn$multicastedFlow$4", f = "CachedPagingData.kt", l = {98}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e<T> extends cc.k implements ic.p<uc.g<? super q0<T>>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9360f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ k1.a f9361g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(k1.a aVar, ac.d dVar) {
            super(2, dVar);
            this.f9361g = aVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new e(this.f9361g, dVar);
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((e) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9360f;
            if (i10 == 0) {
                vb.k.b(obj);
                k1.a aVar = this.f9361g;
                if (aVar != null) {
                    a.EnumC0169a enumC0169a = a.EnumC0169a.PAGED_DATA_FLOW;
                    this.f9360f = 1;
                    if (aVar.b(enumC0169a, this) == d10) {
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

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: CachedPagingData.kt */
    @cc.f(c = "androidx.paging.CachedPagingDataKt$cachedIn$multicastedFlow$5", f = "CachedPagingData.kt", l = {100}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class f<T> extends cc.k implements ic.q<uc.g<? super q0<T>>, Throwable, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9362f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ k1.a f9363g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(k1.a aVar, ac.d dVar) {
            super(3, dVar);
            this.f9363g = aVar;
        }

        public final ac.d<vb.p> f(uc.g<? super q0<T>> gVar, Throwable th, ac.d<? super vb.p> dVar) {
            jc.l.f(gVar, "$this$create");
            jc.l.f(dVar, "continuation");
            return new f(this.f9363g, dVar);
        }

        @Override // ic.q
        public final Object i(Object obj, Throwable th, ac.d<? super vb.p> dVar) {
            return ((f) f((uc.g) obj, th, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9362f;
            if (i10 == 0) {
                vb.k.b(obj);
                k1.a aVar = this.f9363g;
                if (aVar != null) {
                    a.EnumC0169a enumC0169a = a.EnumC0169a.PAGED_DATA_FLOW;
                    this.f9362f = 1;
                    if (aVar.a(enumC0169a, this) == d10) {
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

    public static final <T> uc.f<q0<T>> a(uc.f<q0<T>> fVar, rc.q0 q0Var) {
        jc.l.f(fVar, "$this$cachedIn");
        jc.l.f(q0Var, "scope");
        return b(fVar, q0Var, null);
    }

    public static final <T> uc.f<q0<T>> b(uc.f<q0<T>> fVar, rc.q0 q0Var, k1.a aVar) {
        jc.l.f(fVar, "$this$cachedIn");
        jc.l.f(q0Var, "scope");
        return new l1.e(q0Var, 1, uc.h.v(uc.h.x(new b(p.b(new a(fVar, q0Var), new C0182d(null))), new e(aVar, null)), new f(aVar, null)), false, new c(null), true, 8, null).i();
    }
}

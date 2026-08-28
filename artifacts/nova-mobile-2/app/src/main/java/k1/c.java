package k1;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import rc.c2;

/* compiled from: CachedPageEventFlow.kt */
/* loaded from: classes.dex */
public final class c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final m<T> f9281a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f9282b;

    /* renamed from: c, reason: collision with root package name */
    public final l1.e<wb.y<f0<T>>> f9283c;

    /* renamed from: d, reason: collision with root package name */
    public final uc.f<f0<T>> f9284d;

    /* compiled from: CachedPageEventFlow.kt */
    @cc.f(c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1", f = "CachedPageEventFlow.kt", l = {83, 117}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<a1<f0<T>>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9285f;

        /* renamed from: g, reason: collision with root package name */
        public int f9286g;

        /* compiled from: CachedPageEventFlow.kt */
        @cc.f(c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1$activeStreamCollection$1", f = "CachedPageEventFlow.kt", l = {292}, m = "invokeSuspend")
        /* renamed from: k1.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0173a extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9288f;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ a1 f9290h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ e1 f9291i;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ c2 f9292j;

            /* renamed from: k, reason: collision with root package name */
            public final /* synthetic */ jc.v f9293k;

            /* compiled from: CachedPageEventFlow.kt */
            @cc.f(c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1$activeStreamCollection$1$1", f = "CachedPageEventFlow.kt", l = {}, m = "invokeSuspend")
            /* renamed from: k1.c$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0174a extends cc.k implements ic.q<uc.g<? super wb.y<? extends f0<T>>>, Throwable, ac.d<? super vb.p>, Object> {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f9294f;

                /* renamed from: g, reason: collision with root package name */
                public int f9295g;

                public C0174a(ac.d dVar) {
                    super(3, dVar);
                }

                public final ac.d<vb.p> f(uc.g<? super wb.y<? extends f0<T>>> gVar, Throwable th, ac.d<? super vb.p> dVar) {
                    jc.l.f(gVar, "$this$create");
                    jc.l.f(th, "throwable");
                    jc.l.f(dVar, "continuation");
                    C0174a c0174a = new C0174a(dVar);
                    c0174a.f9294f = th;
                    return c0174a;
                }

                @Override // ic.q
                public final Object i(Object obj, Throwable th, ac.d<? super vb.p> dVar) {
                    return ((C0174a) f((uc.g) obj, th, dVar)).invokeSuspend(vb.p.f15031a);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    bc.c.d();
                    if (this.f9295g == 0) {
                        vb.k.b(obj);
                        Throwable th = (Throwable) this.f9294f;
                        if (th instanceof ClosedSendChannelException) {
                            return vb.p.f15031a;
                        }
                        throw th;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* compiled from: CachedPageEventFlow.kt */
            @cc.f(c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1$activeStreamCollection$1$2", f = "CachedPageEventFlow.kt", l = {}, m = "invokeSuspend")
            /* renamed from: k1.c$a$a$b */
            /* loaded from: classes.dex */
            public static final class b extends cc.k implements ic.q<uc.g<? super wb.y<? extends f0<T>>>, Throwable, ac.d<? super vb.p>, Object> {

                /* renamed from: f, reason: collision with root package name */
                public int f9296f;

                public b(ac.d dVar) {
                    super(3, dVar);
                }

                public final ac.d<vb.p> f(uc.g<? super wb.y<? extends f0<T>>> gVar, Throwable th, ac.d<? super vb.p> dVar) {
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
                    bc.c.d();
                    if (this.f9296f != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    C0173a.this.f9291i.a();
                    return vb.p.f15031a;
                }
            }

            /* compiled from: Collect.kt */
            /* renamed from: k1.c$a$a$c, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0175c implements uc.g<wb.y<? extends f0<T>>> {

                @cc.f(c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1$activeStreamCollection$1$invokeSuspend$$inlined$collect$1", f = "CachedPageEventFlow.kt", l = {135, 138}, m = "emit")
                /* renamed from: k1.c$a$a$c$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0176a extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f9299f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f9300g;

                    /* renamed from: i, reason: collision with root package name */
                    public Object f9302i;

                    /* renamed from: j, reason: collision with root package name */
                    public Object f9303j;

                    public C0176a(ac.d dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f9299f = obj;
                        this.f9300g |= Integer.MIN_VALUE;
                        return C0175c.this.a(null, this);
                    }
                }

                public C0175c() {
                }

                /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                @Override // uc.g
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Object a(Object obj, ac.d dVar) {
                    C0176a c0176a;
                    int i10;
                    wb.y yVar;
                    C0175c c0175c;
                    int a10;
                    C0173a c0173a;
                    if (dVar instanceof C0176a) {
                        c0176a = (C0176a) dVar;
                        int i11 = c0176a.f9300g;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c0176a.f9300g = i11 - Integer.MIN_VALUE;
                            Object obj2 = c0176a.f9299f;
                            Object d10 = bc.c.d();
                            i10 = c0176a.f9300g;
                            if (i10 != 0) {
                                vb.k.b(obj2);
                                yVar = (wb.y) obj;
                                C0173a.this.f9291i.a();
                                c2 c2Var = C0173a.this.f9292j;
                                c0176a.f9302i = this;
                                c0176a.f9303j = yVar;
                                c0176a.f9300g = 1;
                                if (c2Var.U(c0176a) == d10) {
                                    return d10;
                                }
                                c0175c = this;
                            } else {
                                if (i10 != 1) {
                                    if (i10 != 2) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    vb.k.b(obj2);
                                    return vb.p.f15031a;
                                }
                                yVar = (wb.y) c0176a.f9303j;
                                c0175c = (C0175c) c0176a.f9302i;
                                vb.k.b(obj2);
                            }
                            a10 = yVar.a();
                            c0173a = C0173a.this;
                            if (a10 > c0173a.f9293k.f9192f) {
                                a1 a1Var = c0173a.f9290h;
                                Object b10 = yVar.b();
                                c0176a.f9302i = null;
                                c0176a.f9303j = null;
                                c0176a.f9300g = 2;
                                if (a1Var.p(b10, c0176a) == d10) {
                                    return d10;
                                }
                            }
                            return vb.p.f15031a;
                        }
                    }
                    c0176a = new C0176a(dVar);
                    Object obj22 = c0176a.f9299f;
                    Object d102 = bc.c.d();
                    i10 = c0176a.f9300g;
                    if (i10 != 0) {
                    }
                    a10 = yVar.a();
                    c0173a = C0173a.this;
                    if (a10 > c0173a.f9293k.f9192f) {
                    }
                    return vb.p.f15031a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0173a(a1 a1Var, e1 e1Var, c2 c2Var, jc.v vVar, ac.d dVar) {
                super(2, dVar);
                this.f9290h = a1Var;
                this.f9291i = e1Var;
                this.f9292j = c2Var;
                this.f9293k = vVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                return new C0173a(this.f9290h, this.f9291i, this.f9292j, this.f9293k, dVar);
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0173a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9288f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    uc.f v10 = uc.h.v(uc.h.d(c.this.f9283c.i(), new C0174a(null)), new b(null));
                    C0175c c0175c = new C0175c();
                    this.f9288f = 1;
                    if (v10.b(c0175c, this) == d10) {
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

        /* compiled from: CachedPageEventFlow.kt */
        @cc.f(c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1$historyCollection$1", f = "CachedPageEventFlow.kt", l = {292}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class b extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9304f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ a1 f9305g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ e1 f9306h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ jc.v f9307i;

            /* compiled from: Collect.kt */
            /* renamed from: k1.c$a$b$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0177a implements uc.g<wb.y<? extends f0<T>>> {
                public C0177a() {
                }

                @Override // uc.g
                public Object a(Object obj, ac.d dVar) {
                    wb.y yVar = (wb.y) obj;
                    b.this.f9307i.f9192f = yVar.a();
                    Object p10 = b.this.f9305g.p(yVar.b(), dVar);
                    return p10 == bc.c.d() ? p10 : vb.p.f15031a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(a1 a1Var, e1 e1Var, jc.v vVar, ac.d dVar) {
                super(2, dVar);
                this.f9305g = a1Var;
                this.f9306h = e1Var;
                this.f9307i = vVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                return new b(this.f9305g, this.f9306h, this.f9307i, dVar);
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9304f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    uc.f<wb.y<f0<T>>> b10 = this.f9306h.b();
                    C0177a c0177a = new C0177a();
                    this.f9304f = 1;
                    if (b10.b(c0177a, this) == d10) {
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

        public a(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            a aVar = new a(dVar);
            aVar.f9285f = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((a) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            a1 a1Var;
            Object a10;
            c2 d10;
            c2 d11;
            Object d12 = bc.c.d();
            int i10 = this.f9286g;
            if (i10 == 0) {
                vb.k.b(obj);
                a1Var = (a1) this.f9285f;
                m mVar = c.this.f9281a;
                this.f9285f = a1Var;
                this.f9286g = 1;
                a10 = mVar.a(this);
                if (a10 == d12) {
                    return d12;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                a1Var = (a1) this.f9285f;
                vb.k.b(obj);
                a10 = obj;
            }
            a1 a1Var2 = a1Var;
            e1 e1Var = (e1) a10;
            jc.v vVar = new jc.v();
            vVar.f9192f = Integer.MIN_VALUE;
            d10 = rc.k.d(a1Var2, null, null, new b(a1Var2, e1Var, vVar, null), 3, null);
            d11 = rc.k.d(a1Var2, null, null, new C0173a(a1Var2, e1Var, d10, vVar, null), 3, null);
            c2[] c2VarArr = {d11, d10};
            this.f9285f = null;
            this.f9286g = 2;
            if (rc.e.a(c2VarArr, this) == d12) {
                return d12;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: CachedPageEventFlow.kt */
    @cc.f(c = "androidx.paging.CachedPageEventFlow$multicastedSrc$1", f = "CachedPageEventFlow.kt", l = {292}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.p<uc.g<? super wb.y<? extends f0<T>>>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9309f;

        /* renamed from: g, reason: collision with root package name */
        public int f9310g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ uc.f f9312i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(uc.f fVar, ac.d dVar) {
            super(2, dVar);
            this.f9312i = fVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            b bVar = new b(this.f9312i, dVar);
            bVar.f9309f = obj;
            return bVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((b) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9310g;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.g<? super T> gVar = (uc.g) this.f9309f;
                if (c.this.f9282b.compareAndSet(false, true)) {
                    uc.f z10 = uc.h.z(this.f9312i);
                    this.f9310g = 1;
                    if (z10.b(gVar, this) == d10) {
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

    /* compiled from: CachedPageEventFlow.kt */
    /* renamed from: k1.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class C0178c extends jc.j implements ic.p<wb.y<? extends f0<T>>, ac.d<? super vb.p>, Object> {
        public C0178c(m mVar) {
            super(2, mVar, m.class, "record", "record(Lkotlin/collections/IndexedValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // ic.p
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final Object invoke(wb.y<? extends f0<T>> yVar, ac.d<? super vb.p> dVar) {
            return ((m) this.f9173g).b(yVar, dVar);
        }
    }

    public c(uc.f<? extends f0<T>> fVar, rc.q0 q0Var) {
        jc.l.f(fVar, "src");
        jc.l.f(q0Var, "scope");
        m<T> mVar = new m<>();
        this.f9281a = mVar;
        this.f9282b = new AtomicBoolean(false);
        this.f9283c = new l1.e<>(q0Var, 0, uc.h.q(new b(fVar, null)), false, new C0178c(mVar), true, 8, null);
        this.f9284d = z0.a(new a(null));
    }

    public final Object d(ac.d<? super vb.p> dVar) {
        Object g10 = this.f9283c.g(dVar);
        return g10 == bc.c.d() ? g10 : vb.p.f15031a;
    }

    public final uc.f<f0<T>> e() {
        return this.f9284d;
    }
}

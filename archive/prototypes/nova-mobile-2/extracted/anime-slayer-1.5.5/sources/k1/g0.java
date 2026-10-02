package k1;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.internal.TwitterApiConstants;
import java.util.List;
import k1.f0;
import k1.t0;
import k1.u;
import k1.w0;

/* compiled from: PageFetcher.kt */
/* loaded from: classes.dex */
public final class g0<Key, Value> {

    /* renamed from: a, reason: collision with root package name */
    public final h<Boolean> f9421a;

    /* renamed from: b, reason: collision with root package name */
    public final h<vb.p> f9422b;

    /* renamed from: c, reason: collision with root package name */
    public final uc.f<q0<Value>> f9423c;

    /* renamed from: d, reason: collision with root package name */
    public final ic.l<ac.d<? super t0<Key, Value>>, Object> f9424d;

    /* renamed from: e, reason: collision with root package name */
    public final Key f9425e;

    /* renamed from: f, reason: collision with root package name */
    public final p0 f9426f;

    /* renamed from: g, reason: collision with root package name */
    public final w0<Key, Value> f9427g;

    /* compiled from: PageFetcher.kt */
    /* loaded from: classes.dex */
    public static final class a<Key, Value> {

        /* renamed from: a, reason: collision with root package name */
        public final i0<Key, Value> f9428a;

        /* renamed from: b, reason: collision with root package name */
        public final v0<Key, Value> f9429b;

        public a(i0<Key, Value> i0Var, v0<Key, Value> v0Var) {
            jc.l.f(i0Var, "snapshot");
            this.f9428a = i0Var;
            this.f9429b = v0Var;
        }

        public final i0<Key, Value> a() {
            return this.f9428a;
        }

        public final v0<Key, Value> b() {
            return this.f9429b;
        }
    }

    /* compiled from: PageFetcher.kt */
    /* loaded from: classes.dex */
    public final class b<Key, Value> implements g1 {

        /* renamed from: a, reason: collision with root package name */
        public final i0<Key, Value> f9430a;

        /* renamed from: b, reason: collision with root package name */
        public final h<vb.p> f9431b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ g0 f9432c;

        public b(g0 g0Var, i0<Key, Value> i0Var, h<vb.p> hVar) {
            jc.l.f(i0Var, "pageFetcherSnapshot");
            jc.l.f(hVar, "retryEventBus");
            this.f9432c = g0Var;
            this.f9430a = i0Var;
            this.f9431b = hVar;
        }

        @Override // k1.g1
        public void a() {
            this.f9431b.b(vb.p.f15031a);
        }

        @Override // k1.g1
        public void b(h1 h1Var) {
            jc.l.f(h1Var, "viewportHint");
            this.f9430a.l(h1Var);
        }

        @Override // k1.g1
        public void c() {
            this.f9432c.l();
        }
    }

    /* compiled from: PageFetcher.kt */
    @cc.f(c = "androidx.paging.PageFetcher$flow$1", f = "PageFetcher.kt", l = {254}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<a1<q0<Value>>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9433f;

        /* renamed from: g, reason: collision with root package name */
        public int f9434g;

        /* compiled from: PageFetcher.kt */
        @cc.f(c = "androidx.paging.PageFetcher$flow$1$1", f = "PageFetcher.kt", l = {58, 58}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<uc.g<? super Boolean>, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9436f;

            /* renamed from: g, reason: collision with root package name */
            public int f9437g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ x0 f9438h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(x0 x0Var, ac.d dVar) {
                super(2, dVar);
                this.f9438h = x0Var;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                a aVar = new a(this.f9438h, dVar);
                aVar.f9436f = obj;
                return aVar;
            }

            @Override // ic.p
            public final Object invoke(uc.g<? super Boolean> gVar, ac.d<? super vb.p> dVar) {
                return ((a) create(gVar, dVar)).invokeSuspend(vb.p.f15031a);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x0052 A[RETURN] */
            @Override // cc.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                uc.g gVar;
                w0.a aVar;
                Boolean a10;
                Object d10 = bc.c.d();
                int i10 = this.f9437g;
                if (i10 == 0) {
                    vb.k.b(obj);
                    gVar = (uc.g) this.f9436f;
                    x0 x0Var = this.f9438h;
                    if (x0Var == null) {
                        aVar = null;
                        a10 = cc.b.a(aVar == w0.a.LAUNCH_INITIAL_REFRESH);
                        this.f9436f = null;
                        this.f9437g = 2;
                        if (gVar.a(a10, this) == d10) {
                            return d10;
                        }
                        return vb.p.f15031a;
                    }
                    this.f9436f = gVar;
                    this.f9437g = 1;
                    obj = x0Var.b(this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                        return vb.p.f15031a;
                    }
                    gVar = (uc.g) this.f9436f;
                    vb.k.b(obj);
                }
                aVar = (w0.a) obj;
                a10 = cc.b.a(aVar == w0.a.LAUNCH_INITIAL_REFRESH);
                this.f9436f = null;
                this.f9437g = 2;
                if (gVar.a(a10, this) == d10) {
                }
                return vb.p.f15031a;
            }
        }

        /* compiled from: PageFetcher.kt */
        @cc.f(c = "androidx.paging.PageFetcher$flow$1$2", f = "PageFetcher.kt", l = {63, 66, 69}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class b extends cc.k implements ic.q<a<Key, Value>, Boolean, ac.d<? super a<Key, Value>>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9439f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ boolean f9440g;

            /* renamed from: h, reason: collision with root package name */
            public Object f9441h;

            /* renamed from: i, reason: collision with root package name */
            public Object f9442i;

            /* renamed from: j, reason: collision with root package name */
            public int f9443j;

            /* renamed from: l, reason: collision with root package name */
            public final /* synthetic */ x0 f9445l;

            /* compiled from: PageFetcher.kt */
            /* loaded from: classes.dex */
            public static final /* synthetic */ class a extends jc.j implements ic.a<vb.p> {
                public a(g0 g0Var) {
                    super(0, g0Var, g0.class, "refresh", "refresh()V", 0);
                }

                @Override // ic.a
                public /* bridge */ /* synthetic */ vb.p invoke() {
                    k();
                    return vb.p.f15031a;
                }

                public final void k() {
                    ((g0) this.f9173g).l();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(x0 x0Var, ac.d dVar) {
                super(3, dVar);
                this.f9445l = x0Var;
            }

            public final ac.d<vb.p> f(a<Key, Value> aVar, boolean z10, ac.d<? super a<Key, Value>> dVar) {
                jc.l.f(dVar, "continuation");
                b bVar = new b(this.f9445l, dVar);
                bVar.f9439f = aVar;
                bVar.f9440g = z10;
                return bVar;
            }

            @Override // ic.q
            public final Object i(Object obj, Boolean bool, Object obj2) {
                return ((b) f((a) obj, bool.booleanValue(), (ac.d) obj2)).invokeSuspend(vb.p.f15031a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:11:0x00fc  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0108 A[ADDED_TO_REGION] */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0123  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x012b  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x013f  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x0155  */
            /* JADX WARN: Removed duplicated region for block: B:44:0x0128  */
            /* JADX WARN: Removed duplicated region for block: B:46:0x00f9  */
            /* JADX WARN: Removed duplicated region for block: B:53:0x00aa  */
            /* JADX WARN: Removed duplicated region for block: B:57:0x00cf  */
            /* JADX WARN: Removed duplicated region for block: B:9:0x00f4  */
            /* JADX WARN: Type inference failed for: r8v12, types: [T, k1.t0] */
            /* JADX WARN: Type inference failed for: r8v4, types: [T, k1.t0] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00c3 -> B:50:0x00c7). Please report as a decompilation issue!!! */
            @Override // cc.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                boolean z10;
                jc.x xVar;
                Object h10;
                a aVar;
                jc.x xVar2;
                i0<Key, Value> a10;
                b bVar;
                Object obj2;
                boolean z11;
                boolean z12;
                v0<Key, Value> v0Var;
                i0<Key, Value> a11;
                Object o10;
                jc.x xVar3;
                List<t0.b.C0202b<Key, Value>> b10;
                i0<Key, Value> a12;
                v0<Key, Value> b11;
                v0<Key, Value> b12;
                List<t0.b.C0202b<Key, Value>> b13;
                Object d10 = bc.c.d();
                int i10 = this.f9443j;
                Integer num = null;
                if (i10 == 0) {
                    vb.k.b(obj);
                    a aVar2 = (a) this.f9439f;
                    z10 = this.f9440g;
                    xVar = new jc.x();
                    g0 g0Var = g0.this;
                    t0<Key, Value> s10 = (aVar2 == null || (a10 = aVar2.a()) == null) ? null : a10.s();
                    this.f9439f = aVar2;
                    this.f9441h = xVar;
                    this.f9442i = xVar;
                    this.f9440g = z10;
                    this.f9443j = 1;
                    h10 = g0Var.h(s10, this);
                    if (h10 == d10) {
                        return d10;
                    }
                    aVar = aVar2;
                    xVar2 = xVar;
                } else if (i10 == 1) {
                    z10 = this.f9440g;
                    xVar = (jc.x) this.f9442i;
                    jc.x xVar4 = (jc.x) this.f9441h;
                    a aVar3 = (a) this.f9439f;
                    vb.k.b(obj);
                    aVar = aVar3;
                    xVar2 = xVar4;
                    h10 = obj;
                } else {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z11 = this.f9440g;
                        xVar3 = (jc.x) this.f9441h;
                        a aVar4 = (a) this.f9439f;
                        vb.k.b(obj);
                        bVar = this;
                        aVar = aVar4;
                        o10 = obj;
                        v0Var = (v0) o10;
                        z12 = z11;
                        xVar2 = xVar3;
                        b10 = v0Var != null ? v0Var.b() : null;
                        if ((b10 != null || b10.isEmpty()) && aVar != null && (b12 = aVar.b()) != null && (b13 = b12.b()) != null && (!b13.isEmpty())) {
                            v0Var = aVar.b();
                        }
                        if ((v0Var != null ? v0Var.a() : null) == null) {
                            if (aVar != null && (b11 = aVar.b()) != null) {
                                num = b11.a();
                            }
                            if (num != null) {
                                v0Var = aVar.b();
                            }
                        }
                        if (v0Var != null || (r1 = ((t0) xVar2.f9194f).d(v0Var)) == null) {
                            Object obj3 = g0.this.f9425e;
                        }
                        Object obj4 = obj3;
                        if (aVar != null && (a12 = aVar.a()) != null) {
                            a12.m();
                        }
                        return new a(new i0(obj4, (t0) xVar2.f9194f, g0.this.f9426f, g0.this.f9422b.a(), z12, bVar.f9445l, v0Var, new a(g0.this)), v0Var);
                    }
                    boolean z13 = this.f9440g;
                    jc.x xVar5 = (jc.x) this.f9442i;
                    jc.x xVar6 = (jc.x) this.f9441h;
                    a aVar5 = (a) this.f9439f;
                    vb.k.b(obj);
                    jc.x xVar7 = xVar6;
                    a aVar6 = aVar5;
                    Object h11 = obj;
                    b bVar2 = this;
                    obj2 = d10;
                    z11 = z13;
                    xVar5.f9194f = (t0) h11;
                    bVar = bVar2;
                    xVar2 = xVar7;
                    aVar = aVar6;
                    if (((t0) xVar2.f9194f).a()) {
                        g0 g0Var2 = g0.this;
                        t0<Key, Value> t0Var = (t0) xVar2.f9194f;
                        bVar.f9439f = aVar;
                        bVar.f9441h = xVar2;
                        bVar.f9442i = xVar2;
                        bVar.f9440g = z11;
                        bVar.f9443j = 2;
                        h11 = g0Var2.h(t0Var, bVar);
                        if (h11 == obj2) {
                            return obj2;
                        }
                        aVar6 = aVar;
                        xVar7 = xVar2;
                        bVar2 = bVar;
                        xVar5 = xVar7;
                        xVar5.f9194f = (t0) h11;
                        bVar = bVar2;
                        xVar2 = xVar7;
                        aVar = aVar6;
                        if (((t0) xVar2.f9194f).a()) {
                            if (aVar == null || (a11 = aVar.a()) == null) {
                                z12 = z11;
                                v0Var = null;
                                if (v0Var != null) {
                                }
                                if (b10 != null || b10.isEmpty()) {
                                    v0Var = aVar.b();
                                }
                                if ((v0Var != null ? v0Var.a() : null) == null) {
                                }
                                if (v0Var != null) {
                                }
                                Object obj32 = g0.this.f9425e;
                                Object obj42 = obj32;
                                if (aVar != null) {
                                    a12.m();
                                }
                                return new a(new i0(obj42, (t0) xVar2.f9194f, g0.this.f9426f, g0.this.f9422b.a(), z12, bVar.f9445l, v0Var, new a(g0.this)), v0Var);
                            }
                            bVar.f9439f = aVar;
                            bVar.f9441h = xVar2;
                            bVar.f9442i = null;
                            bVar.f9440g = z11;
                            bVar.f9443j = 3;
                            o10 = a11.o(bVar);
                            if (o10 == obj2) {
                                return obj2;
                            }
                            xVar3 = xVar2;
                            v0Var = (v0) o10;
                            z12 = z11;
                            xVar2 = xVar3;
                            if (v0Var != null) {
                            }
                            if (b10 != null || b10.isEmpty()) {
                            }
                            if ((v0Var != null ? v0Var.a() : null) == null) {
                            }
                            if (v0Var != null) {
                            }
                            Object obj322 = g0.this.f9425e;
                            Object obj422 = obj322;
                            if (aVar != null) {
                            }
                            return new a(new i0(obj422, (t0) xVar2.f9194f, g0.this.f9426f, g0.this.f9422b.a(), z12, bVar.f9445l, v0Var, new a(g0.this)), v0Var);
                        }
                    }
                }
                xVar.f9194f = (t0) h10;
                bVar = this;
                boolean z14 = z10;
                obj2 = d10;
                z11 = z14;
                if (((t0) xVar2.f9194f).a()) {
                }
            }
        }

        /* compiled from: Collect.kt */
        /* renamed from: k1.g0$c$c, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0185c implements uc.g<q0<Value>> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ a1 f9446f;

            public C0185c(a1 a1Var) {
                this.f9446f = a1Var;
            }

            @Override // uc.g
            public Object a(Object obj, ac.d dVar) {
                Object p10 = this.f9446f.p((q0) obj, dVar);
                return p10 == bc.c.d() ? p10 : vb.p.f15031a;
            }
        }

        /* compiled from: FlowExt.kt */
        @cc.f(c = "androidx.paging.PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1", f = "PageFetcher.kt", l = {105}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class d extends cc.k implements ic.q<uc.g<? super q0<Value>>, a<Key, Value>, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9447f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f9448g;

            /* renamed from: h, reason: collision with root package name */
            public int f9449h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ c f9450i;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ x0 f9451j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(ac.d dVar, c cVar, x0 x0Var) {
                super(3, dVar);
                this.f9450i = cVar;
                this.f9451j = x0Var;
            }

            public final ac.d<vb.p> f(uc.g<? super q0<Value>> gVar, a<Key, Value> aVar, ac.d<? super vb.p> dVar) {
                jc.l.f(gVar, "$this$create");
                jc.l.f(dVar, "continuation");
                d dVar2 = new d(dVar, this.f9450i, this.f9451j);
                dVar2.f9447f = gVar;
                dVar2.f9448g = aVar;
                return dVar2;
            }

            @Override // ic.q
            public final Object i(Object obj, Object obj2, ac.d<? super vb.p> dVar) {
                return ((d) f((uc.g) obj, obj2, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9449h;
                if (i10 == 0) {
                    vb.k.b(obj);
                    uc.g gVar = (uc.g) this.f9447f;
                    a aVar = (a) this.f9448g;
                    q0 q0Var = new q0(g0.this.j(aVar.a(), this.f9451j), new b(g0.this, aVar.a(), g0.this.f9422b));
                    this.f9449h = 1;
                    if (gVar.a(q0Var, this) == d10) {
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

        public c(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            c cVar = new c(dVar);
            cVar.f9433f = obj;
            return cVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((c) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9434g;
            if (i10 == 0) {
                vb.k.b(obj);
                a1 a1Var = (a1) this.f9433f;
                w0 unused = g0.this.f9427g;
                uc.f d11 = p.d(uc.h.p(p.c(uc.h.x(g0.this.f9421a.a(), new a(null, null)), null, new b(null, null))), new d(null, this, null));
                C0185c c0185c = new C0185c(a1Var);
                this.f9434g = 1;
                if (d11.b(c0185c, this) == d10) {
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

    /* compiled from: PageFetcher.kt */
    @cc.f(c = "androidx.paging.PageFetcher", f = "PageFetcher.kt", l = {211}, m = "generateNewPagingSource")
    /* loaded from: classes.dex */
    public static final class d extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9452f;

        /* renamed from: g, reason: collision with root package name */
        public int f9453g;

        /* renamed from: i, reason: collision with root package name */
        public Object f9455i;

        /* renamed from: j, reason: collision with root package name */
        public Object f9456j;

        public d(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9452f = obj;
            this.f9453g |= Integer.MIN_VALUE;
            return g0.this.h(null, this);
        }
    }

    /* compiled from: PageFetcher.kt */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class e extends jc.j implements ic.a<vb.p> {
        public e(g0 g0Var) {
            super(0, g0Var, g0.class, "invalidate", "invalidate()V", 0);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            k();
            return vb.p.f15031a;
        }

        public final void k() {
            ((g0) this.f9173g).k();
        }
    }

    /* compiled from: PageFetcher.kt */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class f extends jc.j implements ic.a<vb.p> {
        public f(g0 g0Var) {
            super(0, g0Var, g0.class, "invalidate", "invalidate()V", 0);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            k();
            return vb.p.f15031a;
        }

        public final void k() {
            ((g0) this.f9173g).k();
        }
    }

    /* compiled from: PageFetcher.kt */
    @cc.f(c = "androidx.paging.PageFetcher$injectRemoteEvents$1", f = "PageFetcher.kt", l = {253}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends cc.k implements ic.p<a1<f0<Value>>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9457f;

        /* renamed from: g, reason: collision with root package name */
        public int f9458g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ i0 f9459h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ x0 f9460i;

        /* compiled from: PageFetcher.kt */
        @cc.f(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$1", f = "PageFetcher.kt", l = {TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.q<y, u, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9461f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f9462g;

            /* renamed from: h, reason: collision with root package name */
            public int f9463h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ a1 f9464i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(a1 a1Var, ac.d dVar) {
                super(3, dVar);
                this.f9464i = a1Var;
            }

            public final ac.d<vb.p> f(y yVar, u uVar, ac.d<? super vb.p> dVar) {
                jc.l.f(yVar, "type");
                jc.l.f(uVar, "state");
                jc.l.f(dVar, "continuation");
                a aVar = new a(this.f9464i, dVar);
                aVar.f9461f = yVar;
                aVar.f9462g = uVar;
                return aVar;
            }

            @Override // ic.q
            /* renamed from: g, reason: merged with bridge method [inline-methods] */
            public final Object i(y yVar, u uVar, ac.d<? super vb.p> dVar) {
                return ((a) f(yVar, uVar, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9463h;
                if (i10 == 0) {
                    vb.k.b(obj);
                    y yVar = (y) this.f9461f;
                    u uVar = (u) this.f9462g;
                    if (f0.c.f9404d.a(uVar, true)) {
                        a1 a1Var = this.f9464i;
                        f0.c cVar = new f0.c(yVar, true, uVar);
                        this.f9461f = null;
                        this.f9463h = 1;
                        if (a1Var.p(cVar, this) == d10) {
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

        /* compiled from: PageFetcher.kt */
        @cc.f(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$2", f = "PageFetcher.kt", l = {253}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class b extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9465f;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ a0 f9467h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ a f9468i;

            /* compiled from: Collect.kt */
            /* loaded from: classes.dex */
            public static final class a implements uc.g<w> {

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ jc.x f9470g;

                @cc.f(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1", f = "PageFetcher.kt", l = {135, TwitterApiConstants.Errors.ALREADY_FAVORITED, 143}, m = "emit")
                /* renamed from: k1.g0$g$b$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0186a extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f9471f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f9472g;

                    /* renamed from: i, reason: collision with root package name */
                    public Object f9474i;

                    /* renamed from: j, reason: collision with root package name */
                    public Object f9475j;

                    public C0186a(ac.d dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f9471f = obj;
                        this.f9472g |= Integer.MIN_VALUE;
                        return a.this.a(null, this);
                    }
                }

                public a(jc.x xVar) {
                    this.f9470g = xVar;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:21:0x00e2  */
                /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
                /* JADX WARN: Removed duplicated region for block: B:31:0x0059  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                @Override // uc.g
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Object a(w wVar, ac.d dVar) {
                    C0186a c0186a;
                    int i10;
                    a aVar;
                    w wVar2;
                    boolean z10;
                    w wVar3;
                    boolean z11;
                    a aVar2;
                    T t10;
                    w wVar4;
                    if (dVar instanceof C0186a) {
                        c0186a = (C0186a) dVar;
                        int i11 = c0186a.f9472g;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c0186a.f9472g = i11 - Integer.MIN_VALUE;
                            Object obj = c0186a.f9471f;
                            Object d10 = bc.c.d();
                            i10 = c0186a.f9472g;
                            if (i10 != 0) {
                                vb.k.b(obj);
                                w wVar5 = wVar;
                                if (!jc.l.a(((w) this.f9470g.f9194f).g(), wVar5.g())) {
                                    a0 a0Var = b.this.f9467h;
                                    y yVar = y.REFRESH;
                                    a0Var.g(yVar, true, wVar5.g());
                                    a aVar3 = b.this.f9468i;
                                    u g10 = wVar5.g();
                                    c0186a.f9474i = this;
                                    c0186a.f9475j = wVar5;
                                    c0186a.f9472g = 1;
                                    if (aVar3.i(yVar, g10, c0186a) == d10) {
                                        return d10;
                                    }
                                }
                                aVar = this;
                                wVar2 = wVar5;
                            } else {
                                if (i10 != 1) {
                                    if (i10 != 2) {
                                        if (i10 != 3) {
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                        w wVar6 = (w) c0186a.f9475j;
                                        aVar2 = (a) c0186a.f9474i;
                                        vb.k.b(obj);
                                        wVar4 = wVar6;
                                        aVar = aVar2;
                                        t10 = wVar4;
                                        aVar.f9470g.f9194f = t10;
                                        return vb.p.f15031a;
                                    }
                                    w wVar7 = (w) c0186a.f9475j;
                                    aVar = (a) c0186a.f9474i;
                                    vb.k.b(obj);
                                    wVar3 = wVar7;
                                    z11 = !jc.l.a(((w) aVar.f9470g.f9194f).e(), wVar3.e());
                                    t10 = wVar3;
                                    if (z11) {
                                        a0 a0Var2 = b.this.f9467h;
                                        y yVar2 = y.APPEND;
                                        a0Var2.g(yVar2, true, wVar3.e());
                                        a aVar4 = b.this.f9468i;
                                        u e10 = wVar3.e();
                                        c0186a.f9474i = aVar;
                                        c0186a.f9475j = wVar3;
                                        c0186a.f9472g = 3;
                                        if (aVar4.i(yVar2, e10, c0186a) == d10) {
                                            return d10;
                                        }
                                        aVar2 = aVar;
                                        wVar4 = wVar3;
                                        aVar = aVar2;
                                        t10 = wVar4;
                                    }
                                    aVar.f9470g.f9194f = t10;
                                    return vb.p.f15031a;
                                }
                                w wVar8 = (w) c0186a.f9475j;
                                aVar = (a) c0186a.f9474i;
                                vb.k.b(obj);
                                wVar2 = wVar8;
                            }
                            z10 = !jc.l.a(((w) aVar.f9470g.f9194f).f(), wVar2.f());
                            wVar3 = wVar2;
                            if (z10) {
                                a0 a0Var3 = b.this.f9467h;
                                y yVar3 = y.PREPEND;
                                a0Var3.g(yVar3, true, wVar2.f());
                                a aVar5 = b.this.f9468i;
                                u f10 = wVar2.f();
                                c0186a.f9474i = aVar;
                                c0186a.f9475j = wVar2;
                                c0186a.f9472g = 2;
                                wVar3 = wVar2;
                                if (aVar5.i(yVar3, f10, c0186a) == d10) {
                                    return d10;
                                }
                            }
                            z11 = !jc.l.a(((w) aVar.f9470g.f9194f).e(), wVar3.e());
                            t10 = wVar3;
                            if (z11) {
                            }
                            aVar.f9470g.f9194f = t10;
                            return vb.p.f15031a;
                        }
                    }
                    c0186a = new C0186a(dVar);
                    Object obj2 = c0186a.f9471f;
                    Object d102 = bc.c.d();
                    i10 = c0186a.f9472g;
                    if (i10 != 0) {
                    }
                    z10 = !jc.l.a(((w) aVar.f9470g.f9194f).f(), wVar2.f());
                    wVar3 = wVar2;
                    if (z10) {
                    }
                    z11 = !jc.l.a(((w) aVar.f9470g.f9194f).e(), wVar3.e());
                    t10 = wVar3;
                    if (z11) {
                    }
                    aVar.f9470g.f9194f = t10;
                    return vb.p.f15031a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(a0 a0Var, a aVar, ac.d dVar) {
                super(2, dVar);
                this.f9467h = a0Var;
                this.f9468i = aVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                return new b(this.f9467h, this.f9468i, dVar);
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            /* JADX WARN: Type inference failed for: r1v2, types: [T, k1.w] */
            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9465f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    jc.x xVar = new jc.x();
                    xVar.f9194f = w.f9826e.a();
                    uc.a0<w> state = g.this.f9460i.getState();
                    a aVar = new a(xVar);
                    this.f9465f = 1;
                    if (state.b(aVar, this) == d10) {
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

        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class c implements uc.g<f0<Value>> {

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ a1 f9477g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ a0 f9478h;

            @cc.f(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$collect$1", f = "PageFetcher.kt", l = {TwitterApiConstants.Errors.ALREADY_FAVORITED, 147, 155}, m = "emit")
            /* loaded from: classes.dex */
            public static final class a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f9479f;

                /* renamed from: g, reason: collision with root package name */
                public int f9480g;

                public a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f9479f = obj;
                    this.f9480g |= Integer.MIN_VALUE;
                    return c.this.a(null, this);
                }
            }

            public c(a1 a1Var, a0 a0Var) {
                this.f9477g = a1Var;
                this.f9478h = a0Var;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                a aVar;
                int i10;
                if (dVar instanceof a) {
                    aVar = (a) dVar;
                    int i11 = aVar.f9480g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        aVar.f9480g = i11 - Integer.MIN_VALUE;
                        Object obj2 = aVar.f9479f;
                        Object d10 = bc.c.d();
                        i10 = aVar.f9480g;
                        if (i10 != 0) {
                            vb.k.b(obj2);
                            f0 f0Var = (f0) obj;
                            if (f0Var instanceof f0.b) {
                                f0.b bVar = (f0.b) f0Var;
                                this.f9478h.f(bVar.d().f(), g.this.f9460i.getState().getValue());
                                a1 a1Var = this.f9477g;
                                f0.b c10 = f0.b.c(bVar, null, null, 0, 0, this.f9478h.h(), 15, null);
                                aVar.f9480g = 1;
                                if (a1Var.p(c10, aVar) == d10) {
                                    return d10;
                                }
                            } else if (f0Var instanceof f0.a) {
                                this.f9478h.g(((f0.a) f0Var).a(), false, u.c.f9818d.b());
                                a1 a1Var2 = this.f9477g;
                                aVar.f9480g = 2;
                                if (a1Var2.p(f0Var, aVar) == d10) {
                                    return d10;
                                }
                            } else if (f0Var instanceof f0.c) {
                                f0.c cVar = (f0.c) f0Var;
                                this.f9478h.g(cVar.c(), cVar.a(), cVar.b());
                                a1 a1Var3 = this.f9477g;
                                aVar.f9480g = 3;
                                if (a1Var3.p(f0Var, aVar) == d10) {
                                    return d10;
                                }
                            }
                        } else {
                            if (i10 != 1 && i10 != 2 && i10 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            vb.k.b(obj2);
                        }
                        return vb.p.f15031a;
                    }
                }
                aVar = new a(dVar);
                Object obj22 = aVar.f9479f;
                Object d102 = bc.c.d();
                i10 = aVar.f9480g;
                if (i10 != 0) {
                }
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(i0 i0Var, x0 x0Var, ac.d dVar) {
            super(2, dVar);
            this.f9459h = i0Var;
            this.f9460i = x0Var;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            g gVar = new g(this.f9459h, this.f9460i, dVar);
            gVar.f9457f = obj;
            return gVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((g) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9458g;
            if (i10 == 0) {
                vb.k.b(obj);
                a1 a1Var = (a1) this.f9457f;
                a0 a0Var = new a0();
                rc.k.d(a1Var, null, null, new b(a0Var, new a(a1Var, null), null), 3, null);
                uc.f<f0<Value>> r10 = this.f9459h.r();
                c cVar = new c(a1Var, a0Var);
                this.f9458g = 1;
                if (r10.b(cVar, this) == d10) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public g0(ic.l<? super ac.d<? super t0<Key, Value>>, ? extends Object> lVar, Key key, p0 p0Var, w0<Key, Value> w0Var) {
        jc.l.f(lVar, "pagingSourceFactory");
        jc.l.f(p0Var, "config");
        this.f9424d = lVar;
        this.f9425e = key;
        this.f9426f = p0Var;
        this.f9421a = new h<>(null, 1, null);
        this.f9422b = new h<>(null, 1, null);
        this.f9423c = z0.a(new c(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ Object h(t0<Key, Value> t0Var, ac.d<? super t0<Key, Value>> dVar) {
        d dVar2;
        int i10;
        g0<Key, Value> g0Var;
        t0<Key, Value> t0Var2;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i11 = dVar2.f9453g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dVar2.f9453g = i11 - Integer.MIN_VALUE;
                Object obj = dVar2.f9452f;
                Object d10 = bc.c.d();
                i10 = dVar2.f9453g;
                if (i10 != 0) {
                    vb.k.b(obj);
                    ic.l<ac.d<? super t0<Key, Value>>, Object> lVar = this.f9424d;
                    dVar2.f9455i = this;
                    dVar2.f9456j = t0Var;
                    dVar2.f9453g = 1;
                    obj = lVar.invoke(dVar2);
                    if (obj == d10) {
                        return d10;
                    }
                    g0Var = this;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    t0Var = (t0) dVar2.f9456j;
                    g0Var = (g0) dVar2.f9455i;
                    vb.k.b(obj);
                }
                t0Var2 = (t0) obj;
                if (t0Var2 instanceof s) {
                    ((s) t0Var2).k(g0Var.f9426f.f9740a);
                }
                if (!(t0Var2 != t0Var)) {
                    t0Var2.g(new e(g0Var));
                    if (t0Var != null) {
                        t0Var.h(new f(g0Var));
                    }
                    if (t0Var != null) {
                        t0Var.e();
                    }
                    return t0Var2;
                }
                throw new IllegalStateException("An instance of PagingSource was re-used when Pager expected to create a new\ninstance. Ensure that the pagingSourceFactory passed to Pager always returns a\nnew instance of PagingSource.".toString());
            }
        }
        dVar2 = new d(dVar);
        Object obj2 = dVar2.f9452f;
        Object d102 = bc.c.d();
        i10 = dVar2.f9453g;
        if (i10 != 0) {
        }
        t0Var2 = (t0) obj2;
        if (t0Var2 instanceof s) {
        }
        if (!(t0Var2 != t0Var)) {
        }
    }

    public final uc.f<q0<Value>> i() {
        return this.f9423c;
    }

    public final uc.f<f0<Value>> j(i0<Key, Value> i0Var, x0<Key, Value> x0Var) {
        if (x0Var == null) {
            return i0Var.r();
        }
        return z0.a(new g(i0Var, x0Var, null));
    }

    public final void k() {
        this.f9421a.b(Boolean.FALSE);
    }

    public final void l() {
        this.f9421a.b(Boolean.TRUE);
    }
}

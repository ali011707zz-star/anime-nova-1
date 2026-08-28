package k1;

import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import io.wax911.support.util.SupportStateUtil;
import java.util.concurrent.atomic.AtomicBoolean;
import k1.f0;
import k1.h1;
import k1.k0;
import k1.t0;
import k1.u;
import org.apache.http.HttpStatus;
import rc.c2;
import rc.h2;

/* compiled from: PageFetcherSnapshot.kt */
/* loaded from: classes.dex */
public final class i0<Key, Value> {

    /* renamed from: a, reason: collision with root package name */
    public final uc.t<h1> f9512a;

    /* renamed from: b, reason: collision with root package name */
    public h1.a f9513b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f9514c;

    /* renamed from: d, reason: collision with root package name */
    public final tc.f<f0<Value>> f9515d;

    /* renamed from: e, reason: collision with root package name */
    public final k0.a<Key, Value> f9516e;

    /* renamed from: f, reason: collision with root package name */
    public final rc.d0 f9517f;

    /* renamed from: g, reason: collision with root package name */
    public final uc.f<f0<Value>> f9518g;

    /* renamed from: h, reason: collision with root package name */
    public final Key f9519h;

    /* renamed from: i, reason: collision with root package name */
    public final t0<Key, Value> f9520i;

    /* renamed from: j, reason: collision with root package name */
    public final p0 f9521j;

    /* renamed from: k, reason: collision with root package name */
    public final uc.f<vb.p> f9522k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f9523l;

    /* renamed from: m, reason: collision with root package name */
    public final y0<Key, Value> f9524m;

    /* renamed from: n, reason: collision with root package name */
    public final v0<Key, Value> f9525n;

    /* renamed from: o, reason: collision with root package name */
    public final ic.a<vb.p> f9526o;

    /* compiled from: Collect.kt */
    /* loaded from: classes.dex */
    public static final class a implements uc.g<r> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ y f9528g;

        public a(y yVar) {
            this.f9528g = yVar;
        }

        @Override // uc.g
        public Object a(r rVar, ac.d dVar) {
            Object q10 = i0.this.q(this.f9528g, rVar, dVar);
            return q10 == bc.c.d() ? q10 : vb.p.f15031a;
        }
    }

    /* compiled from: FlowExt.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1", f = "PageFetcherSnapshot.kt", l = {109, 130}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.q<uc.g<? super r>, Integer, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9529f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f9530g;

        /* renamed from: h, reason: collision with root package name */
        public int f9531h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ i0 f9532i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ y f9533j;

        /* renamed from: k, reason: collision with root package name */
        public Object f9534k;

        /* renamed from: l, reason: collision with root package name */
        public int f9535l;

        /* compiled from: SafeCollector.common.kt */
        /* loaded from: classes.dex */
        public static final class a implements uc.f<r> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.f f9536f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ int f9537g;

            /* compiled from: Collect.kt */
            /* renamed from: k1.i0$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0190a implements uc.g<h1> {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ uc.g f9538f;

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ a f9539g;

                /* renamed from: k1.i0$b$a$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0191a extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f9540f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f9541g;

                    public C0191a(ac.d dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f9540f = obj;
                        this.f9541g |= Integer.MIN_VALUE;
                        return C0190a.this.a(null, this);
                    }
                }

                public C0190a(uc.g gVar, a aVar) {
                    this.f9538f = gVar;
                    this.f9539g = aVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override // uc.g
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Object a(h1 h1Var, ac.d dVar) {
                    C0191a c0191a;
                    int i10;
                    if (dVar instanceof C0191a) {
                        c0191a = (C0191a) dVar;
                        int i11 = c0191a.f9541g;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c0191a.f9541g = i11 - Integer.MIN_VALUE;
                            Object obj = c0191a.f9540f;
                            Object d10 = bc.c.d();
                            i10 = c0191a.f9541g;
                            if (i10 != 0) {
                                vb.k.b(obj);
                                uc.g gVar = this.f9538f;
                                r rVar = new r(this.f9539g.f9537g, h1Var);
                                c0191a.f9541g = 1;
                                if (gVar.a(rVar, c0191a) == d10) {
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
                    c0191a = new C0191a(dVar);
                    Object obj2 = c0191a.f9540f;
                    Object d102 = bc.c.d();
                    i10 = c0191a.f9541g;
                    if (i10 != 0) {
                    }
                    return vb.p.f15031a;
                }
            }

            public a(uc.f fVar, int i10) {
                this.f9536f = fVar;
                this.f9537g = i10;
            }

            @Override // uc.f
            public Object b(uc.g<? super r> gVar, ac.d dVar) {
                Object b10 = this.f9536f.b(new C0190a(gVar, this), dVar);
                return b10 == bc.c.d() ? b10 : vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ac.d dVar, i0 i0Var, y yVar) {
            super(3, dVar);
            this.f9532i = i0Var;
            this.f9533j = yVar;
        }

        public final ac.d<vb.p> f(uc.g<? super r> gVar, Integer num, ac.d<? super vb.p> dVar) {
            jc.l.f(gVar, "$this$create");
            jc.l.f(dVar, "continuation");
            b bVar = new b(dVar, this.f9532i, this.f9533j);
            bVar.f9529f = gVar;
            bVar.f9530g = num;
            return bVar;
        }

        @Override // ic.q
        public final Object i(uc.g<? super r> gVar, Integer num, ac.d<? super vb.p> dVar) {
            return ((b) f(gVar, num, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            uc.g gVar;
            int intValue;
            k0.a aVar;
            ad.b a10;
            uc.f aVar2;
            Object d10 = bc.c.d();
            int i10 = this.f9531h;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    gVar = (uc.g) this.f9529f;
                    intValue = ((Number) this.f9530g).intValue();
                    aVar = this.f9532i.f9516e;
                    a10 = k0.a.a(aVar);
                    this.f9529f = gVar;
                    this.f9530g = aVar;
                    this.f9534k = a10;
                    this.f9535l = intValue;
                    this.f9531h = 1;
                    if (a10.b(null, this) == d10) {
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
                    intValue = this.f9535l;
                    a10 = (ad.b) this.f9534k;
                    aVar = (k0.a) this.f9530g;
                    gVar = (uc.g) this.f9529f;
                    vb.k.b(obj);
                }
                k0 b10 = k0.a.b(aVar);
                u d11 = b10.p().d(this.f9533j);
                u.c.a aVar3 = u.c.f9818d;
                if (jc.l.a(d11, aVar3.a())) {
                    aVar2 = uc.h.s(new r[0]);
                } else {
                    if (!(b10.p().d(this.f9533j) instanceof u.a)) {
                        b10.u(this.f9533j, aVar3.b());
                    }
                    vb.p pVar = vb.p.f15031a;
                    a10.a(null);
                    aVar2 = new a(uc.h.m(this.f9532i.f9512a, intValue == 0 ? 0 : 1), intValue);
                }
                this.f9529f = null;
                this.f9530g = null;
                this.f9534k = null;
                this.f9531h = 2;
                if (aVar2.b(gVar, this) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            } finally {
                a10.a(null);
            }
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$3", f = "PageFetcherSnapshot.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.q<r, r, ac.d<? super r>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9543f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f9544g;

        /* renamed from: h, reason: collision with root package name */
        public int f9545h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ y f9546i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(y yVar, ac.d dVar) {
            super(3, dVar);
            this.f9546i = yVar;
        }

        public final ac.d<vb.p> f(r rVar, r rVar2, ac.d<? super r> dVar) {
            jc.l.f(rVar, "previous");
            jc.l.f(rVar2, "next");
            jc.l.f(dVar, "continuation");
            c cVar = new c(this.f9546i, dVar);
            cVar.f9543f = rVar;
            cVar.f9544g = rVar2;
            return cVar;
        }

        @Override // ic.q
        public final Object i(r rVar, r rVar2, ac.d<? super r> dVar) {
            return ((c) f(rVar, rVar2, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f9545h != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            r rVar = (r) this.f9543f;
            r rVar2 = (r) this.f9544g;
            return j0.a(rVar2, rVar, this.f9546i) ? rVar2 : rVar;
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {595}, m = "currentPagingState")
    /* loaded from: classes.dex */
    public static final class d extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9547f;

        /* renamed from: g, reason: collision with root package name */
        public int f9548g;

        /* renamed from: i, reason: collision with root package name */
        public Object f9550i;

        /* renamed from: j, reason: collision with root package name */
        public Object f9551j;

        /* renamed from: k, reason: collision with root package name */
        public Object f9552k;

        public d(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9547f = obj;
            this.f9548g |= Integer.MIN_VALUE;
            return i0.this.o(this);
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {611, SupportStateUtil.RECYCLER_TYPE_ERROR, 275, 623, 635, 647, HttpStatus.SC_NOT_MODIFIED, 659, 671, 329}, m = "doInitialLoad")
    /* loaded from: classes.dex */
    public static final class e extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9553f;

        /* renamed from: g, reason: collision with root package name */
        public int f9554g;

        /* renamed from: i, reason: collision with root package name */
        public Object f9556i;

        /* renamed from: j, reason: collision with root package name */
        public Object f9557j;

        /* renamed from: k, reason: collision with root package name */
        public Object f9558k;

        /* renamed from: l, reason: collision with root package name */
        public Object f9559l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f9560m;

        public e(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9553f = obj;
            this.f9554g |= Integer.MIN_VALUE;
            return i0.this.p(this);
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {684, 696, 386, 394, 708, 720, 437, 732, 456, 482, 744}, m = "doLoad")
    /* loaded from: classes.dex */
    public static final class f extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9561f;

        /* renamed from: g, reason: collision with root package name */
        public int f9562g;

        /* renamed from: i, reason: collision with root package name */
        public Object f9564i;

        /* renamed from: j, reason: collision with root package name */
        public Object f9565j;

        /* renamed from: k, reason: collision with root package name */
        public Object f9566k;

        /* renamed from: l, reason: collision with root package name */
        public Object f9567l;

        /* renamed from: m, reason: collision with root package name */
        public Object f9568m;

        /* renamed from: n, reason: collision with root package name */
        public Object f9569n;

        /* renamed from: o, reason: collision with root package name */
        public Object f9570o;

        /* renamed from: p, reason: collision with root package name */
        public Object f9571p;

        /* renamed from: q, reason: collision with root package name */
        public Object f9572q;

        /* renamed from: r, reason: collision with root package name */
        public Object f9573r;

        /* renamed from: s, reason: collision with root package name */
        public Object f9574s;

        /* renamed from: t, reason: collision with root package name */
        public int f9575t;

        /* renamed from: u, reason: collision with root package name */
        public int f9576u;

        public f(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9561f = obj;
            this.f9562g |= Integer.MIN_VALUE;
            return i0.this.q(null, null, this);
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1", f = "PageFetcherSnapshot.kt", l = {595, 160, 607}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends cc.k implements ic.p<a1<f0<Value>>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9577f;

        /* renamed from: g, reason: collision with root package name */
        public Object f9578g;

        /* renamed from: h, reason: collision with root package name */
        public Object f9579h;

        /* renamed from: i, reason: collision with root package name */
        public Object f9580i;

        /* renamed from: j, reason: collision with root package name */
        public int f9581j;

        /* compiled from: PageFetcherSnapshot.kt */
        @cc.f(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2", f = "PageFetcherSnapshot.kt", l = {589}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9583f;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ a1 f9585h;

            /* compiled from: Collect.kt */
            /* renamed from: k1.i0$g$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0192a implements uc.g<f0<Value>> {

                @cc.f(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2$invokeSuspend$$inlined$collect$1", f = "PageFetcherSnapshot.kt", l = {134}, m = "emit")
                /* renamed from: k1.i0$g$a$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0193a extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f9587f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f9588g;

                    public C0193a(ac.d dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f9587f = obj;
                        this.f9588g |= Integer.MIN_VALUE;
                        return C0192a.this.a(null, this);
                    }
                }

                public C0192a() {
                }

                /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|23|6|7|(0)(0)|11|12|13) */
                /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
                @Override // uc.g
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Object a(Object obj, ac.d dVar) {
                    C0193a c0193a;
                    int i10;
                    if (dVar instanceof C0193a) {
                        c0193a = (C0193a) dVar;
                        int i11 = c0193a.f9588g;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c0193a.f9588g = i11 - Integer.MIN_VALUE;
                            Object obj2 = c0193a.f9587f;
                            Object d10 = bc.c.d();
                            i10 = c0193a.f9588g;
                            if (i10 != 0) {
                                vb.k.b(obj2);
                                f0 f0Var = (f0) obj;
                                a1 a1Var = a.this.f9585h;
                                c0193a.f9588g = 1;
                                if (a1Var.p(f0Var, c0193a) == d10) {
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
                    c0193a = new C0193a(dVar);
                    Object obj22 = c0193a.f9587f;
                    Object d102 = bc.c.d();
                    i10 = c0193a.f9588g;
                    if (i10 != 0) {
                    }
                    return vb.p.f15031a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(a1 a1Var, ac.d dVar) {
                super(2, dVar);
                this.f9585h = a1Var;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                return new a(this.f9585h, dVar);
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9583f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    uc.f i11 = uc.h.i(i0.this.f9515d);
                    C0192a c0192a = new C0192a();
                    this.f9583f = 1;
                    if (i11.b(c0192a, this) == d10) {
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

        /* compiled from: PageFetcherSnapshot.kt */
        @cc.f(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$3", f = "PageFetcherSnapshot.kt", l = {589}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class b extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9590f;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ tc.f f9592h;

            /* compiled from: Collect.kt */
            /* loaded from: classes.dex */
            public static final class a implements uc.g<vb.p> {
                public a() {
                }

                @Override // uc.g
                public Object a(vb.p pVar, ac.d dVar) {
                    b.this.f9592h.f(pVar);
                    return vb.p.f15031a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(tc.f fVar, ac.d dVar) {
                super(2, dVar);
                this.f9592h = fVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                return new b(this.f9592h, dVar);
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9590f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    uc.f fVar = i0.this.f9522k;
                    a aVar = new a();
                    this.f9590f = 1;
                    if (fVar.b(aVar, this) == d10) {
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

        /* compiled from: PageFetcherSnapshot.kt */
        @cc.f(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4", f = "PageFetcherSnapshot.kt", l = {589}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class c extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9594f;

            /* renamed from: g, reason: collision with root package name */
            public int f9595g;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ tc.f f9597i;

            /* compiled from: Collect.kt */
            /* loaded from: classes.dex */
            public static final class a implements uc.g<vb.p> {

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ rc.q0 f9599g;

                @cc.f(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$invokeSuspend$$inlined$collect$1", f = "PageFetcherSnapshot.kt", l = {TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 162, 155, BaseTransientBottomBar.ANIMATION_FADE_DURATION, 170, 195, 214, 155, 226, 170, 238, 251, 155, 263, 170, 275}, m = "emit")
                /* renamed from: k1.i0$g$c$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0194a extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f9600f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f9601g;

                    /* renamed from: i, reason: collision with root package name */
                    public Object f9603i;

                    /* renamed from: j, reason: collision with root package name */
                    public Object f9604j;

                    /* renamed from: k, reason: collision with root package name */
                    public Object f9605k;

                    /* renamed from: l, reason: collision with root package name */
                    public Object f9606l;

                    /* renamed from: m, reason: collision with root package name */
                    public Object f9607m;

                    /* renamed from: n, reason: collision with root package name */
                    public Object f9608n;

                    /* renamed from: o, reason: collision with root package name */
                    public Object f9609o;

                    public C0194a(ac.d dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f9600f = obj;
                        this.f9601g |= Integer.MIN_VALUE;
                        return a.this.a(null, this);
                    }
                }

                public a(rc.q0 q0Var) {
                    this.f9599g = q0Var;
                }

                /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0022. Please report as an issue. */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:103:0x035c  */
                /* JADX WARN: Removed duplicated region for block: B:107:0x039e  */
                /* JADX WARN: Removed duplicated region for block: B:109:0x00f3  */
                /* JADX WARN: Removed duplicated region for block: B:112:0x033b A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:113:0x033c  */
                /* JADX WARN: Removed duplicated region for block: B:114:0x010e  */
                /* JADX WARN: Removed duplicated region for block: B:119:0x02d5  */
                /* JADX WARN: Removed duplicated region for block: B:123:0x02f3  */
                /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
                /* JADX WARN: Removed duplicated region for block: B:134:0x0123  */
                /* JADX WARN: Removed duplicated region for block: B:137:0x02a0  */
                /* JADX WARN: Removed duplicated region for block: B:140:0x0135  */
                /* JADX WARN: Removed duplicated region for block: B:146:0x0299 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:147:0x029a  */
                /* JADX WARN: Removed duplicated region for block: B:152:0x0156  */
                /* JADX WARN: Removed duplicated region for block: B:159:0x023e  */
                /* JADX WARN: Removed duplicated region for block: B:163:0x027f  */
                /* JADX WARN: Removed duplicated region for block: B:165:0x016c  */
                /* JADX WARN: Removed duplicated region for block: B:170:0x01b1  */
                /* JADX WARN: Removed duplicated region for block: B:175:0x0219  */
                /* JADX WARN: Removed duplicated region for block: B:178:0x022a  */
                /* JADX WARN: Removed duplicated region for block: B:17:0x050b  */
                /* JADX WARN: Removed duplicated region for block: B:183:0x01c1  */
                /* JADX WARN: Removed duplicated region for block: B:24:0x003e  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x04d4  */
                /* JADX WARN: Removed duplicated region for block: B:31:0x004b  */
                /* JADX WARN: Removed duplicated region for block: B:37:0x04ce A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:38:0x04cf  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x0068  */
                /* JADX WARN: Removed duplicated region for block: B:49:0x0473  */
                /* JADX WARN: Removed duplicated region for block: B:53:0x04b4  */
                /* JADX WARN: Removed duplicated region for block: B:55:0x007c  */
                /* JADX WARN: Removed duplicated region for block: B:58:0x0455 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:59:0x0456  */
                /* JADX WARN: Removed duplicated region for block: B:60:0x0093  */
                /* JADX WARN: Removed duplicated region for block: B:65:0x03f6  */
                /* JADX WARN: Removed duplicated region for block: B:69:0x0414  */
                /* JADX WARN: Removed duplicated region for block: B:79:0x00a8  */
                /* JADX WARN: Removed duplicated region for block: B:82:0x03c0  */
                /* JADX WARN: Removed duplicated region for block: B:85:0x00ba  */
                /* JADX WARN: Removed duplicated region for block: B:91:0x03b9 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:92:0x03ba  */
                /* JADX WARN: Removed duplicated region for block: B:97:0x00db  */
                /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
                /* JADX WARN: Type inference failed for: r12v0, types: [vb.p] */
                /* JADX WARN: Type inference failed for: r12v105 */
                /* JADX WARN: Type inference failed for: r12v106 */
                /* JADX WARN: Type inference failed for: r12v2, types: [ad.b] */
                /* JADX WARN: Type inference failed for: r12v79, types: [ad.b] */
                /* JADX WARN: Type inference failed for: r2v0, types: [int] */
                /* JADX WARN: Type inference failed for: r2v1, types: [ad.b] */
                /* JADX WARN: Type inference failed for: r2v18, types: [ad.b] */
                /* JADX WARN: Type inference failed for: r2v2, types: [ad.b] */
                /* JADX WARN: Type inference failed for: r2v48, types: [ad.b] */
                /* JADX WARN: Type inference failed for: r2v87 */
                /* JADX WARN: Type inference failed for: r2v88 */
                /* JADX WARN: Type inference failed for: r2v90 */
                /* JADX WARN: Type inference failed for: r2v91 */
                @Override // uc.g
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Object a(vb.p pVar, ac.d dVar) {
                    C0194a c0194a;
                    Object r22;
                    k0.a aVar;
                    ad.b a10;
                    a aVar2;
                    w wVar;
                    y0<Key, Value> t10;
                    y yVar;
                    a aVar3;
                    y yVar2;
                    a aVar4;
                    w wVar2;
                    i0 i0Var;
                    h1 h1Var;
                    w wVar3;
                    y yVar3;
                    k0.a aVar5;
                    ad.b a11;
                    y yVar4;
                    a aVar6;
                    k0.a aVar7;
                    ad.b a12;
                    y yVar5;
                    y yVar6;
                    a aVar8;
                    k0.a aVar9;
                    ad.b bVar;
                    a aVar10;
                    u d10;
                    k0<Key, Value> b10;
                    i0 i0Var2;
                    y yVar7;
                    w wVar4;
                    i0 i0Var3;
                    h1 h1Var2;
                    w wVar5;
                    y yVar8;
                    k0.a aVar11;
                    ad.b a13;
                    y yVar9;
                    a aVar12;
                    k0.a aVar13;
                    ad.b a14;
                    y yVar10;
                    y yVar11;
                    k0.a aVar14;
                    u d11;
                    ad.b bVar2;
                    k0<Key, Value> b11;
                    i0 i0Var4;
                    a aVar15;
                    i0 i0Var5;
                    i0 i0Var6;
                    y yVar12;
                    y yVar13;
                    h1 h1Var3;
                    k0.a aVar16;
                    ad.b a15;
                    y yVar14;
                    a aVar17;
                    k0.a aVar18;
                    ad.b bVar3;
                    a aVar19;
                    u d12;
                    try {
                        try {
                            try {
                                if (dVar instanceof C0194a) {
                                    c0194a = (C0194a) dVar;
                                    int i10 = c0194a.f9601g;
                                    if ((i10 & Integer.MIN_VALUE) != 0) {
                                        c0194a.f9601g = i10 - Integer.MIN_VALUE;
                                        Object obj = c0194a.f9600f;
                                        Object d13 = bc.c.d();
                                        r22 = c0194a.f9601g;
                                        switch (r22) {
                                            case 0:
                                                vb.k.b(obj);
                                                aVar = i0.this.f9516e;
                                                a10 = k0.a.a(aVar);
                                                c0194a.f9603i = this;
                                                c0194a.f9604j = aVar;
                                                c0194a.f9605k = a10;
                                                c0194a.f9601g = 1;
                                                if (a10.b(null, c0194a) == d13) {
                                                    return d13;
                                                }
                                                aVar2 = this;
                                                try {
                                                    k0 b12 = k0.a.b(aVar);
                                                    vb.i a16 = vb.n.a(b12.p(), b12.g(i0.this.f9513b));
                                                    a10.a(null);
                                                    wVar = (w) a16.a();
                                                    v0<Key, Value> v0Var = (v0) a16.b();
                                                    t10 = i0.this.t();
                                                    if (t10 != null) {
                                                        t10.c(v0Var);
                                                        vb.p pVar2 = vb.p.f15031a;
                                                    }
                                                    y yVar15 = y.REFRESH;
                                                    if (wVar.g() instanceof u.a) {
                                                        yVar = yVar15;
                                                        aVar3 = aVar2;
                                                        wVar2 = wVar;
                                                        i0Var = i0.this;
                                                        if (h0.f9490a[yVar.ordinal()] != 1) {
                                                            aVar5 = i0.this.f9516e;
                                                            a11 = k0.a.a(aVar5);
                                                            c0194a.f9603i = aVar3;
                                                            c0194a.f9604j = yVar;
                                                            c0194a.f9605k = aVar5;
                                                            c0194a.f9606l = a11;
                                                            c0194a.f9607m = wVar2;
                                                            c0194a.f9608n = yVar;
                                                            c0194a.f9609o = i0Var;
                                                            c0194a.f9601g = 4;
                                                            if (a11.b(null, c0194a) == d13) {
                                                                return d13;
                                                            }
                                                            yVar4 = yVar;
                                                            try {
                                                                h1Var = k0.a.b(aVar5).k().get(yVar4);
                                                                a11.a(null);
                                                                wVar3 = wVar2;
                                                                yVar3 = yVar;
                                                                yVar = yVar4;
                                                                c0194a.f9603i = aVar3;
                                                                c0194a.f9604j = yVar;
                                                                c0194a.f9605k = wVar3;
                                                                c0194a.f9606l = null;
                                                                c0194a.f9607m = null;
                                                                c0194a.f9608n = null;
                                                                c0194a.f9609o = null;
                                                                c0194a.f9601g = 5;
                                                                if (i0Var.w(yVar3, h1Var, c0194a) == d13) {
                                                                    return d13;
                                                                }
                                                                wVar = wVar3;
                                                                aVar6 = aVar3;
                                                                if (yVar == y.REFRESH) {
                                                                    aVar7 = i0.this.f9516e;
                                                                    a12 = k0.a.a(aVar7);
                                                                    c0194a.f9603i = aVar6;
                                                                    c0194a.f9604j = aVar7;
                                                                    c0194a.f9605k = a12;
                                                                    c0194a.f9606l = wVar;
                                                                    c0194a.f9601g = 6;
                                                                    if (a12.b(null, c0194a) == d13) {
                                                                        return d13;
                                                                    }
                                                                    try {
                                                                        d10 = k0.a.b(aVar7).p().d(y.REFRESH);
                                                                        a12.a(null);
                                                                        if (!(d10 instanceof u.a)) {
                                                                            i0.this.y(aVar6.f9599g);
                                                                        }
                                                                    } finally {
                                                                    }
                                                                }
                                                                aVar2 = aVar6;
                                                            } finally {
                                                            }
                                                        } else {
                                                            h1Var = null;
                                                            wVar3 = wVar2;
                                                            yVar3 = yVar;
                                                            c0194a.f9603i = aVar3;
                                                            c0194a.f9604j = yVar;
                                                            c0194a.f9605k = wVar3;
                                                            c0194a.f9606l = null;
                                                            c0194a.f9607m = null;
                                                            c0194a.f9608n = null;
                                                            c0194a.f9609o = null;
                                                            c0194a.f9601g = 5;
                                                            if (i0Var.w(yVar3, h1Var, c0194a) == d13) {
                                                            }
                                                        }
                                                    }
                                                    yVar5 = y.PREPEND;
                                                    if (wVar.f() instanceof u.a) {
                                                        if (yVar5 != y.REFRESH) {
                                                            k0.a aVar20 = i0.this.f9516e;
                                                            ad.b a17 = k0.a.a(aVar20);
                                                            c0194a.f9603i = aVar2;
                                                            c0194a.f9604j = yVar5;
                                                            c0194a.f9605k = aVar20;
                                                            c0194a.f9606l = a17;
                                                            c0194a.f9607m = wVar;
                                                            c0194a.f9601g = 7;
                                                            if (a17.b(null, c0194a) == d13) {
                                                                return d13;
                                                            }
                                                            a aVar21 = aVar2;
                                                            aVar9 = aVar20;
                                                            bVar = a17;
                                                            aVar10 = aVar21;
                                                            b10 = k0.a.b(aVar9);
                                                            i0Var2 = i0.this;
                                                            c0194a.f9603i = aVar10;
                                                            c0194a.f9604j = yVar5;
                                                            c0194a.f9605k = bVar;
                                                            c0194a.f9606l = wVar;
                                                            c0194a.f9607m = null;
                                                            c0194a.f9601g = 8;
                                                            if (i0Var2.x(b10, yVar5, c0194a) != d13) {
                                                                return d13;
                                                            }
                                                            yVar7 = yVar5;
                                                            r22 = bVar;
                                                            vb.p pVar3 = vb.p.f15031a;
                                                            r22.a(null);
                                                            yVar6 = yVar7;
                                                            aVar8 = aVar10;
                                                            wVar4 = wVar;
                                                            i0Var3 = i0.this;
                                                            if (h0.f9490a[yVar6.ordinal()] != 1) {
                                                                aVar11 = i0.this.f9516e;
                                                                a13 = k0.a.a(aVar11);
                                                                c0194a.f9603i = aVar8;
                                                                c0194a.f9604j = yVar6;
                                                                c0194a.f9605k = aVar11;
                                                                c0194a.f9606l = a13;
                                                                c0194a.f9607m = wVar4;
                                                                c0194a.f9608n = yVar6;
                                                                c0194a.f9609o = i0Var3;
                                                                c0194a.f9601g = 9;
                                                                if (a13.b(null, c0194a) == d13) {
                                                                    return d13;
                                                                }
                                                                yVar9 = yVar6;
                                                                try {
                                                                    h1Var2 = k0.a.b(aVar11).k().get(yVar9);
                                                                    a13.a(null);
                                                                    wVar5 = wVar4;
                                                                    yVar8 = yVar6;
                                                                    yVar6 = yVar9;
                                                                    c0194a.f9603i = aVar8;
                                                                    c0194a.f9604j = yVar6;
                                                                    c0194a.f9605k = wVar5;
                                                                    c0194a.f9606l = null;
                                                                    c0194a.f9607m = null;
                                                                    c0194a.f9608n = null;
                                                                    c0194a.f9609o = null;
                                                                    c0194a.f9601g = 10;
                                                                    if (i0Var3.w(yVar8, h1Var2, c0194a) == d13) {
                                                                        return d13;
                                                                    }
                                                                    wVar = wVar5;
                                                                    aVar12 = aVar8;
                                                                    if (yVar6 == y.REFRESH) {
                                                                        aVar13 = i0.this.f9516e;
                                                                        a14 = k0.a.a(aVar13);
                                                                        c0194a.f9603i = aVar12;
                                                                        c0194a.f9604j = aVar13;
                                                                        c0194a.f9605k = a14;
                                                                        c0194a.f9606l = wVar;
                                                                        c0194a.f9601g = 11;
                                                                        if (a14.b(null, c0194a) == d13) {
                                                                            return d13;
                                                                        }
                                                                        try {
                                                                            d11 = k0.a.b(aVar13).p().d(y.REFRESH);
                                                                            a14.a(null);
                                                                            if (!(d11 instanceof u.a)) {
                                                                                i0.this.y(aVar12.f9599g);
                                                                            }
                                                                        } finally {
                                                                        }
                                                                    }
                                                                    aVar2 = aVar12;
                                                                } finally {
                                                                }
                                                            } else {
                                                                h1Var2 = null;
                                                                wVar5 = wVar4;
                                                                yVar8 = yVar6;
                                                                c0194a.f9603i = aVar8;
                                                                c0194a.f9604j = yVar6;
                                                                c0194a.f9605k = wVar5;
                                                                c0194a.f9606l = null;
                                                                c0194a.f9607m = null;
                                                                c0194a.f9608n = null;
                                                                c0194a.f9609o = null;
                                                                c0194a.f9601g = 10;
                                                                if (i0Var3.w(yVar8, h1Var2, c0194a) == d13) {
                                                                }
                                                            }
                                                        } else {
                                                            yVar6 = yVar5;
                                                            aVar8 = aVar2;
                                                            wVar4 = wVar;
                                                            i0Var3 = i0.this;
                                                            if (h0.f9490a[yVar6.ordinal()] != 1) {
                                                            }
                                                        }
                                                    }
                                                    yVar10 = y.APPEND;
                                                    if (wVar.e() instanceof u.a) {
                                                        if (yVar10 != y.REFRESH) {
                                                            aVar14 = i0.this.f9516e;
                                                            ad.b a18 = k0.a.a(aVar14);
                                                            c0194a.f9603i = aVar2;
                                                            c0194a.f9604j = yVar10;
                                                            c0194a.f9605k = aVar14;
                                                            c0194a.f9606l = a18;
                                                            c0194a.f9601g = 12;
                                                            Object b13 = a18.b(null, c0194a);
                                                            bVar2 = a18;
                                                            if (b13 == d13) {
                                                                return d13;
                                                            }
                                                            b11 = k0.a.b(aVar14);
                                                            i0Var4 = i0.this;
                                                            c0194a.f9603i = aVar2;
                                                            c0194a.f9604j = yVar10;
                                                            c0194a.f9605k = bVar2;
                                                            c0194a.f9606l = null;
                                                            c0194a.f9601g = 13;
                                                            if (i0Var4.x(b11, yVar10, c0194a) != d13) {
                                                                return d13;
                                                            }
                                                            yVar11 = yVar10;
                                                            pVar = bVar2;
                                                            vb.p pVar4 = vb.p.f15031a;
                                                            aVar15 = aVar2;
                                                            i0Var5 = i0.this;
                                                            if (h0.f9490a[yVar11.ordinal()] != 1) {
                                                                aVar16 = i0.this.f9516e;
                                                                a15 = k0.a.a(aVar16);
                                                                c0194a.f9603i = aVar15;
                                                                c0194a.f9604j = yVar11;
                                                                c0194a.f9605k = aVar16;
                                                                c0194a.f9606l = a15;
                                                                c0194a.f9607m = yVar11;
                                                                c0194a.f9608n = i0Var5;
                                                                c0194a.f9601g = 14;
                                                                if (a15.b(null, c0194a) == d13) {
                                                                    return d13;
                                                                }
                                                                yVar14 = yVar11;
                                                                try {
                                                                    h1 h1Var4 = k0.a.b(aVar16).k().get(yVar14);
                                                                    a15.a(null);
                                                                    yVar13 = yVar11;
                                                                    h1Var3 = h1Var4;
                                                                    i0Var6 = i0Var5;
                                                                    yVar12 = yVar14;
                                                                    c0194a.f9603i = aVar15;
                                                                    c0194a.f9604j = yVar12;
                                                                    c0194a.f9605k = null;
                                                                    c0194a.f9606l = null;
                                                                    c0194a.f9607m = null;
                                                                    c0194a.f9608n = null;
                                                                    c0194a.f9601g = 15;
                                                                    if (i0Var6.w(yVar13, h1Var3, c0194a) == d13) {
                                                                        return d13;
                                                                    }
                                                                    aVar17 = aVar15;
                                                                    if (yVar12 == y.REFRESH) {
                                                                        k0.a aVar22 = i0.this.f9516e;
                                                                        ad.b a19 = k0.a.a(aVar22);
                                                                        c0194a.f9603i = aVar17;
                                                                        c0194a.f9604j = aVar22;
                                                                        c0194a.f9605k = a19;
                                                                        c0194a.f9601g = 16;
                                                                        if (a19.b(null, c0194a) == d13) {
                                                                            return d13;
                                                                        }
                                                                        aVar18 = aVar22;
                                                                        bVar3 = a19;
                                                                        aVar19 = aVar17;
                                                                        try {
                                                                            d12 = k0.a.b(aVar18).p().d(y.REFRESH);
                                                                            bVar3.a(null);
                                                                            if (!(d12 instanceof u.a)) {
                                                                                i0.this.y(aVar19.f9599g);
                                                                            }
                                                                        } finally {
                                                                        }
                                                                    }
                                                                } finally {
                                                                }
                                                            } else {
                                                                i0Var6 = i0Var5;
                                                                yVar12 = yVar11;
                                                                yVar13 = yVar12;
                                                                h1Var3 = null;
                                                                c0194a.f9603i = aVar15;
                                                                c0194a.f9604j = yVar12;
                                                                c0194a.f9605k = null;
                                                                c0194a.f9606l = null;
                                                                c0194a.f9607m = null;
                                                                c0194a.f9608n = null;
                                                                c0194a.f9601g = 15;
                                                                if (i0Var6.w(yVar13, h1Var3, c0194a) == d13) {
                                                                }
                                                            }
                                                        } else {
                                                            yVar11 = yVar10;
                                                            aVar15 = aVar2;
                                                            i0Var5 = i0.this;
                                                            if (h0.f9490a[yVar11.ordinal()] != 1) {
                                                            }
                                                        }
                                                    }
                                                    return vb.p.f15031a;
                                                } finally {
                                                }
                                            case 1:
                                                a10 = (ad.b) c0194a.f9605k;
                                                aVar = (k0.a) c0194a.f9604j;
                                                aVar2 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                k0 b122 = k0.a.b(aVar);
                                                vb.i a162 = vb.n.a(b122.p(), b122.g(i0.this.f9513b));
                                                a10.a(null);
                                                wVar = (w) a162.a();
                                                v0<Key, Value> v0Var2 = (v0) a162.b();
                                                t10 = i0.this.t();
                                                if (t10 != null) {
                                                }
                                                y yVar152 = y.REFRESH;
                                                if (wVar.g() instanceof u.a) {
                                                }
                                                yVar5 = y.PREPEND;
                                                if (wVar.f() instanceof u.a) {
                                                }
                                                yVar10 = y.APPEND;
                                                if (wVar.e() instanceof u.a) {
                                                }
                                                return vb.p.f15031a;
                                            case 2:
                                                wVar = (w) c0194a.f9607m;
                                                ad.b bVar4 = (ad.b) c0194a.f9606l;
                                                k0.a aVar23 = (k0.a) c0194a.f9605k;
                                                y yVar16 = (y) c0194a.f9604j;
                                                a aVar24 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                k0<Key, Value> b14 = k0.a.b(aVar23);
                                                i0 i0Var7 = i0.this;
                                                c0194a.f9603i = aVar24;
                                                c0194a.f9604j = yVar16;
                                                c0194a.f9605k = bVar4;
                                                c0194a.f9606l = wVar;
                                                c0194a.f9607m = null;
                                                c0194a.f9601g = 3;
                                                if (i0Var7.x(b14, yVar16, c0194a) == d13) {
                                                    return d13;
                                                }
                                                yVar2 = yVar16;
                                                aVar4 = aVar24;
                                                r22 = bVar4;
                                                vb.p pVar5 = vb.p.f15031a;
                                                r22.a(null);
                                                yVar = yVar2;
                                                aVar3 = aVar4;
                                                wVar2 = wVar;
                                                i0Var = i0.this;
                                                if (h0.f9490a[yVar.ordinal()] != 1) {
                                                }
                                                break;
                                            case 3:
                                                wVar = (w) c0194a.f9606l;
                                                ad.b bVar5 = (ad.b) c0194a.f9605k;
                                                yVar2 = (y) c0194a.f9604j;
                                                aVar4 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                r22 = bVar5;
                                                vb.p pVar52 = vb.p.f15031a;
                                                r22.a(null);
                                                yVar = yVar2;
                                                aVar3 = aVar4;
                                                wVar2 = wVar;
                                                i0Var = i0.this;
                                                if (h0.f9490a[yVar.ordinal()] != 1) {
                                                }
                                                break;
                                            case 4:
                                                i0Var = (i0) c0194a.f9609o;
                                                yVar = (y) c0194a.f9608n;
                                                wVar2 = (w) c0194a.f9607m;
                                                a11 = (ad.b) c0194a.f9606l;
                                                aVar5 = (k0.a) c0194a.f9605k;
                                                yVar4 = (y) c0194a.f9604j;
                                                aVar3 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                h1Var = k0.a.b(aVar5).k().get(yVar4);
                                                a11.a(null);
                                                wVar3 = wVar2;
                                                yVar3 = yVar;
                                                yVar = yVar4;
                                                c0194a.f9603i = aVar3;
                                                c0194a.f9604j = yVar;
                                                c0194a.f9605k = wVar3;
                                                c0194a.f9606l = null;
                                                c0194a.f9607m = null;
                                                c0194a.f9608n = null;
                                                c0194a.f9609o = null;
                                                c0194a.f9601g = 5;
                                                if (i0Var.w(yVar3, h1Var, c0194a) == d13) {
                                                }
                                                break;
                                            case 5:
                                                wVar = (w) c0194a.f9605k;
                                                yVar = (y) c0194a.f9604j;
                                                a aVar25 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                aVar6 = aVar25;
                                                if (yVar == y.REFRESH) {
                                                }
                                                aVar2 = aVar6;
                                                yVar5 = y.PREPEND;
                                                if (wVar.f() instanceof u.a) {
                                                }
                                                yVar10 = y.APPEND;
                                                if (wVar.e() instanceof u.a) {
                                                }
                                                return vb.p.f15031a;
                                            case 6:
                                                wVar = (w) c0194a.f9606l;
                                                a12 = (ad.b) c0194a.f9605k;
                                                aVar7 = (k0.a) c0194a.f9604j;
                                                aVar6 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                d10 = k0.a.b(aVar7).p().d(y.REFRESH);
                                                a12.a(null);
                                                if (!(d10 instanceof u.a)) {
                                                }
                                                aVar2 = aVar6;
                                                yVar5 = y.PREPEND;
                                                if (wVar.f() instanceof u.a) {
                                                }
                                                yVar10 = y.APPEND;
                                                if (wVar.e() instanceof u.a) {
                                                }
                                                return vb.p.f15031a;
                                            case 7:
                                                wVar = (w) c0194a.f9607m;
                                                ad.b bVar6 = (ad.b) c0194a.f9606l;
                                                aVar9 = (k0.a) c0194a.f9605k;
                                                y yVar17 = (y) c0194a.f9604j;
                                                a aVar26 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                yVar5 = yVar17;
                                                aVar10 = aVar26;
                                                bVar = bVar6;
                                                b10 = k0.a.b(aVar9);
                                                i0Var2 = i0.this;
                                                c0194a.f9603i = aVar10;
                                                c0194a.f9604j = yVar5;
                                                c0194a.f9605k = bVar;
                                                c0194a.f9606l = wVar;
                                                c0194a.f9607m = null;
                                                c0194a.f9601g = 8;
                                                if (i0Var2.x(b10, yVar5, c0194a) != d13) {
                                                }
                                                break;
                                            case 8:
                                                wVar = (w) c0194a.f9606l;
                                                ad.b bVar7 = (ad.b) c0194a.f9605k;
                                                yVar7 = (y) c0194a.f9604j;
                                                aVar10 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                r22 = bVar7;
                                                vb.p pVar32 = vb.p.f15031a;
                                                r22.a(null);
                                                yVar6 = yVar7;
                                                aVar8 = aVar10;
                                                wVar4 = wVar;
                                                i0Var3 = i0.this;
                                                if (h0.f9490a[yVar6.ordinal()] != 1) {
                                                }
                                                break;
                                            case 9:
                                                i0Var3 = (i0) c0194a.f9609o;
                                                yVar6 = (y) c0194a.f9608n;
                                                wVar4 = (w) c0194a.f9607m;
                                                a13 = (ad.b) c0194a.f9606l;
                                                aVar11 = (k0.a) c0194a.f9605k;
                                                yVar9 = (y) c0194a.f9604j;
                                                aVar8 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                h1Var2 = k0.a.b(aVar11).k().get(yVar9);
                                                a13.a(null);
                                                wVar5 = wVar4;
                                                yVar8 = yVar6;
                                                yVar6 = yVar9;
                                                c0194a.f9603i = aVar8;
                                                c0194a.f9604j = yVar6;
                                                c0194a.f9605k = wVar5;
                                                c0194a.f9606l = null;
                                                c0194a.f9607m = null;
                                                c0194a.f9608n = null;
                                                c0194a.f9609o = null;
                                                c0194a.f9601g = 10;
                                                if (i0Var3.w(yVar8, h1Var2, c0194a) == d13) {
                                                }
                                                break;
                                            case 10:
                                                wVar = (w) c0194a.f9605k;
                                                yVar6 = (y) c0194a.f9604j;
                                                a aVar27 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                aVar12 = aVar27;
                                                if (yVar6 == y.REFRESH) {
                                                }
                                                aVar2 = aVar12;
                                                yVar10 = y.APPEND;
                                                if (wVar.e() instanceof u.a) {
                                                }
                                                return vb.p.f15031a;
                                            case 11:
                                                wVar = (w) c0194a.f9606l;
                                                a14 = (ad.b) c0194a.f9605k;
                                                aVar13 = (k0.a) c0194a.f9604j;
                                                aVar12 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                d11 = k0.a.b(aVar13).p().d(y.REFRESH);
                                                a14.a(null);
                                                if (!(d11 instanceof u.a)) {
                                                }
                                                aVar2 = aVar12;
                                                yVar10 = y.APPEND;
                                                if (wVar.e() instanceof u.a) {
                                                }
                                                return vb.p.f15031a;
                                            case 12:
                                                ad.b bVar8 = (ad.b) c0194a.f9606l;
                                                aVar14 = (k0.a) c0194a.f9605k;
                                                y yVar18 = (y) c0194a.f9604j;
                                                a aVar28 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                yVar10 = yVar18;
                                                aVar2 = aVar28;
                                                bVar2 = bVar8;
                                                b11 = k0.a.b(aVar14);
                                                i0Var4 = i0.this;
                                                c0194a.f9603i = aVar2;
                                                c0194a.f9604j = yVar10;
                                                c0194a.f9605k = bVar2;
                                                c0194a.f9606l = null;
                                                c0194a.f9601g = 13;
                                                if (i0Var4.x(b11, yVar10, c0194a) != d13) {
                                                }
                                                break;
                                            case 13:
                                                ad.b bVar9 = (ad.b) c0194a.f9605k;
                                                yVar11 = (y) c0194a.f9604j;
                                                aVar2 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                pVar = bVar9;
                                                vb.p pVar42 = vb.p.f15031a;
                                                aVar15 = aVar2;
                                                i0Var5 = i0.this;
                                                if (h0.f9490a[yVar11.ordinal()] != 1) {
                                                }
                                                break;
                                            case 14:
                                                i0Var5 = (i0) c0194a.f9608n;
                                                yVar11 = (y) c0194a.f9607m;
                                                a15 = (ad.b) c0194a.f9606l;
                                                aVar16 = (k0.a) c0194a.f9605k;
                                                yVar14 = (y) c0194a.f9604j;
                                                aVar15 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                h1 h1Var42 = k0.a.b(aVar16).k().get(yVar14);
                                                a15.a(null);
                                                yVar13 = yVar11;
                                                h1Var3 = h1Var42;
                                                i0Var6 = i0Var5;
                                                yVar12 = yVar14;
                                                c0194a.f9603i = aVar15;
                                                c0194a.f9604j = yVar12;
                                                c0194a.f9605k = null;
                                                c0194a.f9606l = null;
                                                c0194a.f9607m = null;
                                                c0194a.f9608n = null;
                                                c0194a.f9601g = 15;
                                                if (i0Var6.w(yVar13, h1Var3, c0194a) == d13) {
                                                }
                                                break;
                                            case 15:
                                                yVar12 = (y) c0194a.f9604j;
                                                aVar17 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                if (yVar12 == y.REFRESH) {
                                                }
                                                return vb.p.f15031a;
                                            case 16:
                                                bVar3 = (ad.b) c0194a.f9605k;
                                                aVar18 = (k0.a) c0194a.f9604j;
                                                aVar19 = (a) c0194a.f9603i;
                                                vb.k.b(obj);
                                                d12 = k0.a.b(aVar18).p().d(y.REFRESH);
                                                bVar3.a(null);
                                                if (!(d12 instanceof u.a)) {
                                                }
                                                return vb.p.f15031a;
                                            default:
                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                    }
                                }
                                switch (r22) {
                                }
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                    c0194a = new C0194a(dVar);
                    Object obj2 = c0194a.f9600f;
                    Object d132 = bc.c.d();
                    r22 = c0194a.f9601g;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(tc.f fVar, ac.d dVar) {
                super(2, dVar);
                this.f9597i = fVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                c cVar = new c(this.f9597i, dVar);
                cVar.f9594f = obj;
                return cVar;
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9595g;
                if (i10 == 0) {
                    vb.k.b(obj);
                    rc.q0 q0Var = (rc.q0) this.f9594f;
                    uc.f i11 = uc.h.i(this.f9597i);
                    a aVar = new a(q0Var);
                    this.f9595g = 1;
                    if (i11.b(aVar, this) == d10) {
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

        public g(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            g gVar = new g(dVar);
            gVar.f9577f = obj;
            return gVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((g) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0111  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00f9 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00fa  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00e0 A[RETURN] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            a1 a1Var;
            y0<Key, Value> t10;
            v0<Key, Value> v0Var;
            k0.a aVar;
            ad.b bVar;
            a1 a1Var2;
            i0 i0Var;
            k0.a aVar2;
            ad.b a10;
            a1 a1Var3;
            ad.b bVar2;
            u d10;
            Object d11 = bc.c.d();
            int i10 = this.f9581j;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    a1Var = (a1) this.f9577f;
                    if (i0.this.f9514c.compareAndSet(false, true)) {
                        rc.k.d(a1Var, null, null, new a(a1Var, null), 3, null);
                        tc.f b10 = tc.i.b(0, null, null, 6, null);
                        rc.k.d(a1Var, null, null, new b(b10, null), 3, null);
                        rc.k.d(a1Var, null, null, new c(b10, null), 3, null);
                        if (i0.this.f9523l && (t10 = i0.this.t()) != null) {
                            v0Var = i0.this.f9525n;
                            if (v0Var == null) {
                                k0.a aVar3 = i0.this.f9516e;
                                ad.b a11 = k0.a.a(aVar3);
                                this.f9577f = a1Var;
                                this.f9578g = t10;
                                this.f9579h = aVar3;
                                this.f9580i = a11;
                                this.f9581j = 1;
                                if (a11.b(null, this) == d11) {
                                    return d11;
                                }
                                aVar = aVar3;
                                bVar = a11;
                                a1Var2 = a1Var;
                            }
                            t10.a(y.REFRESH, v0Var);
                        }
                        i0Var = i0.this;
                        this.f9577f = a1Var;
                        this.f9578g = null;
                        this.f9579h = null;
                        this.f9580i = null;
                        this.f9581j = 2;
                        if (i0Var.p(this) == d11) {
                            return d11;
                        }
                        aVar2 = i0.this.f9516e;
                        a10 = k0.a.a(aVar2);
                        this.f9577f = a1Var;
                        this.f9578g = aVar2;
                        this.f9579h = a10;
                        this.f9581j = 3;
                        if (a10.b(null, this) == d11) {
                        }
                    } else {
                        throw new IllegalStateException("Attempt to collect twice from pageEventFlow, which is an illegal operation. Did you forget to call Flow<PagingData<*>>.cachedIn(coroutineScope)?".toString());
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            bVar2 = (ad.b) this.f9579h;
                            aVar2 = (k0.a) this.f9578g;
                            a1Var3 = (a1) this.f9577f;
                            vb.k.b(obj);
                            try {
                                d10 = k0.a.b(aVar2).p().d(y.REFRESH);
                                bVar.a(null);
                                if (!(d10 instanceof u.a)) {
                                    i0.this.y(a1Var3);
                                }
                                return vb.p.f15031a;
                            } finally {
                            }
                        }
                        a1 a1Var4 = (a1) this.f9577f;
                        vb.k.b(obj);
                        a1Var = a1Var4;
                        aVar2 = i0.this.f9516e;
                        a10 = k0.a.a(aVar2);
                        this.f9577f = a1Var;
                        this.f9578g = aVar2;
                        this.f9579h = a10;
                        this.f9581j = 3;
                        if (a10.b(null, this) == d11) {
                            return d11;
                        }
                        a1Var3 = a1Var;
                        bVar2 = a10;
                        d10 = k0.a.b(aVar2).p().d(y.REFRESH);
                        bVar.a(null);
                        if (!(d10 instanceof u.a)) {
                        }
                        return vb.p.f15031a;
                    }
                    bVar = (ad.b) this.f9580i;
                    aVar = (k0.a) this.f9579h;
                    t10 = (y0) this.f9578g;
                    a1Var2 = (a1) this.f9577f;
                    vb.k.b(obj);
                }
                v0<Key, Value> g10 = k0.a.b(aVar).g(null);
                bVar.a(null);
                v0Var = g10;
                a1Var = a1Var2;
                t10.a(y.REFRESH, v0Var);
                i0Var = i0.this;
                this.f9577f = a1Var;
                this.f9578g = null;
                this.f9579h = null;
                this.f9580i = null;
                this.f9581j = 2;
                if (i0Var.p(this) == d11) {
                }
                aVar2 = i0.this.f9516e;
                a10 = k0.a.a(aVar2);
                this.f9577f = a1Var;
                this.f9578g = aVar2;
                this.f9579h = a10;
                this.f9581j = 3;
                if (a10.b(null, this) == d11) {
                }
            } finally {
            }
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {506}, m = "setLoading")
    /* loaded from: classes.dex */
    public static final class h extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9610f;

        /* renamed from: g, reason: collision with root package name */
        public int f9611g;

        public h(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9610f = obj;
            this.f9611g |= Integer.MIN_VALUE;
            return i0.this.x(null, null, this);
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$1", f = "PageFetcherSnapshot.kt", l = {212}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class i extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9613f;

        /* compiled from: PageFetcherSnapshot.kt */
        @cc.f(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$1$2", f = "PageFetcherSnapshot.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<h1, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f9615f;

            public a(ac.d dVar) {
                super(2, dVar);
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                return new a(dVar);
            }

            @Override // ic.p
            public final Object invoke(h1 h1Var, ac.d<? super vb.p> dVar) {
                return ((a) create(h1Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f9615f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                i0.this.f9526o.invoke();
                return vb.p.f15031a;
            }
        }

        /* compiled from: SafeCollector.common.kt */
        /* loaded from: classes.dex */
        public static final class b implements uc.f<h1> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.f f9617f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ i f9618g;

            /* compiled from: Collect.kt */
            /* loaded from: classes.dex */
            public static final class a implements uc.g<h1> {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ uc.g f9619f;

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ b f9620g;

                @cc.f(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$1$invokeSuspend$$inlined$filter$1$2", f = "PageFetcherSnapshot.kt", l = {136}, m = "emit")
                /* renamed from: k1.i0$i$b$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0195a extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f9621f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f9622g;

                    public C0195a(ac.d dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f9621f = obj;
                        this.f9622g |= Integer.MIN_VALUE;
                        return a.this.a(null, this);
                    }
                }

                public a(uc.g gVar, b bVar) {
                    this.f9619f = gVar;
                    this.f9620g = bVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override // uc.g
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Object a(h1 h1Var, ac.d dVar) {
                    C0195a c0195a;
                    int i10;
                    if (dVar instanceof C0195a) {
                        c0195a = (C0195a) dVar;
                        int i11 = c0195a.f9622g;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c0195a.f9622g = i11 - Integer.MIN_VALUE;
                            Object obj = c0195a.f9621f;
                            Object d10 = bc.c.d();
                            i10 = c0195a.f9622g;
                            if (i10 != 0) {
                                vb.k.b(obj);
                                uc.g gVar = this.f9619f;
                                h1 h1Var2 = h1Var;
                                if (!cc.b.a(h1Var2.d() * (-1) > i0.this.f9521j.f9745f || h1Var2.c() * (-1) > i0.this.f9521j.f9745f).booleanValue()) {
                                    return vb.p.f15031a;
                                }
                                c0195a.f9622g = 1;
                                if (gVar.a(h1Var, c0195a) == d10) {
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
                    c0195a = new C0195a(dVar);
                    Object obj2 = c0195a.f9621f;
                    Object d102 = bc.c.d();
                    i10 = c0195a.f9622g;
                    if (i10 != 0) {
                    }
                    return vb.p.f15031a;
                }
            }

            public b(uc.f fVar, i iVar) {
                this.f9617f = fVar;
                this.f9618g = iVar;
            }

            @Override // uc.f
            public Object b(uc.g<? super h1> gVar, ac.d dVar) {
                Object b10 = this.f9617f.b(new a(gVar, this), dVar);
                return b10 == bc.c.d() ? b10 : vb.p.f15031a;
            }
        }

        public i(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new i(dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((i) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9613f;
            if (i10 == 0) {
                vb.k.b(obj);
                b bVar = new b(i0.this.f9512a, this);
                a aVar = new a(null);
                this.f9613f = 1;
                if (uc.h.g(bVar, aVar, this) == d10) {
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

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$2", f = "PageFetcherSnapshot.kt", l = {595, 218}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class j extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f9624f;

        /* renamed from: g, reason: collision with root package name */
        public Object f9625g;

        /* renamed from: h, reason: collision with root package name */
        public Object f9626h;

        /* renamed from: i, reason: collision with root package name */
        public int f9627i;

        public j(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new j(dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((j) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            i0 i0Var;
            k0.a aVar;
            ad.b bVar;
            Object d10 = bc.c.d();
            int i10 = this.f9627i;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    i0Var = i0.this;
                    aVar = i0Var.f9516e;
                    ad.b a10 = k0.a.a(aVar);
                    this.f9624f = aVar;
                    this.f9625g = a10;
                    this.f9626h = i0Var;
                    this.f9627i = 1;
                    if (a10.b(null, this) == d10) {
                        return d10;
                    }
                    bVar = a10;
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                        return vb.p.f15031a;
                    }
                    i0Var = (i0) this.f9626h;
                    bVar = (ad.b) this.f9625g;
                    aVar = (k0.a) this.f9624f;
                    vb.k.b(obj);
                }
                uc.f<Integer> f10 = k0.a.b(aVar).f();
                bVar.a(null);
                y yVar = y.PREPEND;
                this.f9624f = null;
                this.f9625g = null;
                this.f9626h = null;
                this.f9627i = 2;
                if (i0Var.n(f10, yVar, this) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            } catch (Throwable th) {
                bVar.a(null);
                throw th;
            }
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$3", f = "PageFetcherSnapshot.kt", l = {595, 223}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class k extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f9629f;

        /* renamed from: g, reason: collision with root package name */
        public Object f9630g;

        /* renamed from: h, reason: collision with root package name */
        public Object f9631h;

        /* renamed from: i, reason: collision with root package name */
        public int f9632i;

        public k(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new k(dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((k) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            i0 i0Var;
            k0.a aVar;
            ad.b bVar;
            Object d10 = bc.c.d();
            int i10 = this.f9632i;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    i0Var = i0.this;
                    aVar = i0Var.f9516e;
                    ad.b a10 = k0.a.a(aVar);
                    this.f9629f = aVar;
                    this.f9630g = a10;
                    this.f9631h = i0Var;
                    this.f9632i = 1;
                    if (a10.b(null, this) == d10) {
                        return d10;
                    }
                    bVar = a10;
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                        return vb.p.f15031a;
                    }
                    i0Var = (i0) this.f9631h;
                    bVar = (ad.b) this.f9630g;
                    aVar = (k0.a) this.f9629f;
                    vb.k.b(obj);
                }
                uc.f<Integer> e10 = k0.a.b(aVar).e();
                bVar.a(null);
                y yVar = y.APPEND;
                this.f9629f = null;
                this.f9630g = null;
                this.f9631h = null;
                this.f9632i = 2;
                if (i0Var.n(e10, yVar, this) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            } catch (Throwable th) {
                bVar.a(null);
                throw th;
            }
        }
    }

    public i0(Key key, t0<Key, Value> t0Var, p0 p0Var, uc.f<vb.p> fVar, boolean z10, y0<Key, Value> y0Var, v0<Key, Value> v0Var, ic.a<vb.p> aVar) {
        rc.d0 b10;
        jc.l.f(t0Var, "pagingSource");
        jc.l.f(p0Var, "config");
        jc.l.f(fVar, "retryFlow");
        jc.l.f(aVar, "invalidate");
        this.f9519h = key;
        this.f9520i = t0Var;
        this.f9521j = p0Var;
        this.f9522k = fVar;
        this.f9523l = z10;
        this.f9524m = y0Var;
        this.f9525n = v0Var;
        this.f9526o = aVar;
        if (p0Var.f9745f == Integer.MIN_VALUE || t0Var.b()) {
            this.f9512a = uc.y.b(1, 0, null, 6, null);
            this.f9514c = new AtomicBoolean(false);
            this.f9515d = tc.i.b(-2, null, null, 6, null);
            this.f9516e = new k0.a<>(p0Var);
            b10 = h2.b(null, 1, null);
            this.f9517f = b10;
            this.f9518g = k1.e.a(b10, new g(null));
            return;
        }
        throw new IllegalArgumentException("PagingConfig.jumpThreshold was set, but the associated PagingSource has not marked support for jumps by overriding PagingSource.jumpingSupported to true.".toString());
    }

    public final void l(h1 h1Var) {
        jc.l.f(h1Var, "viewportHint");
        if (h1Var instanceof h1.a) {
            this.f9513b = (h1.a) h1Var;
        }
        this.f9512a.e(h1Var);
    }

    public final void m() {
        c2.a.a(this.f9517f, null, 1, null);
    }

    public final /* synthetic */ Object n(uc.f<Integer> fVar, y yVar, ac.d<? super vb.p> dVar) {
        Object b10 = uc.h.h(p.b(p.d(fVar, new b(null, this, yVar)), new c(yVar, null))).b(new a(yVar), dVar);
        return b10 == bc.c.d() ? b10 : vb.p.f15031a;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object o(ac.d<? super v0<Key, Value>> dVar) {
        d dVar2;
        int i10;
        k0.a<Key, Value> aVar;
        i0<Key, Value> i0Var;
        ad.b bVar;
        try {
            if (dVar instanceof d) {
                dVar2 = (d) dVar;
                int i11 = dVar2.f9548g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    dVar2.f9548g = i11 - Integer.MIN_VALUE;
                    Object obj = dVar2.f9547f;
                    Object d10 = bc.c.d();
                    i10 = dVar2.f9548g;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        aVar = this.f9516e;
                        ad.b a10 = k0.a.a(aVar);
                        dVar2.f9550i = this;
                        dVar2.f9551j = aVar;
                        dVar2.f9552k = a10;
                        dVar2.f9548g = 1;
                        if (a10.b(null, dVar2) == d10) {
                            return d10;
                        }
                        i0Var = this;
                        bVar = a10;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        bVar = (ad.b) dVar2.f9552k;
                        aVar = (k0.a) dVar2.f9551j;
                        i0Var = (i0) dVar2.f9550i;
                        vb.k.b(obj);
                    }
                    return k0.a.b(aVar).g(i0Var.f9513b);
                }
            }
            return k0.a.b(aVar).g(i0Var.f9513b);
        } finally {
            bVar.a(null);
        }
        dVar2 = new d(dVar);
        Object obj2 = dVar2.f9547f;
        Object d102 = bc.c.d();
        i10 = dVar2.f9548g;
        if (i10 != 0) {
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0022. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0130 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0112 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x02a2 A[Catch: all -> 0x02c3, TRY_LEAVE, TryCatch #0 {all -> 0x02c3, blocks: (B:25:0x028b, B:27:0x02a2), top: B:24:0x028b }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01f8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019b A[Catch: all -> 0x0264, TryCatch #1 {all -> 0x0264, blocks: (B:69:0x0183, B:71:0x019b, B:72:0x01a4, B:74:0x01ad, B:75:0x01b6), top: B:68:0x0183 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ad A[Catch: all -> 0x0264, TryCatch #1 {all -> 0x0264, blocks: (B:69:0x0183, B:71:0x019b, B:72:0x01a4, B:74:0x01ad, B:75:0x01b6), top: B:68:0x0183 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0182 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [ad.b] */
    /* JADX WARN: Type inference failed for: r2v2, types: [ad.b] */
    /* JADX WARN: Type inference failed for: r2v33, types: [ad.b] */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v50 */
    /* JADX WARN: Type inference failed for: r2v9, types: [ad.b] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ Object p(ac.d<? super vb.p> dVar) {
        e eVar;
        Object r22;
        k0.a<Key, Value> aVar;
        i0 i0Var;
        ad.b bVar;
        k0<Key, Value> b10;
        y yVar;
        i0 i0Var2;
        i0 i0Var3;
        t0.b bVar2;
        k0.a<Key, Value> aVar2;
        ad.b a10;
        k0.a<Key, Value> aVar3;
        ad.b a11;
        boolean booleanValue;
        k0.a<Key, Value> aVar4;
        ad.b a12;
        t0.b bVar3;
        i0 i0Var4;
        k0.a<Key, Value> aVar5;
        ad.b bVar4;
        t0.b bVar5;
        i0 i0Var5;
        tc.f<f0<Value>> fVar;
        f0<Value> v10;
        k0.a<Key, Value> aVar6;
        ad.b bVar6;
        i0 i0Var6;
        t0.b.C0202b c0202b;
        ad.b bVar7;
        Throwable th;
        k0 b11;
        u.a aVar7;
        y yVar2;
        try {
            try {
                if (dVar instanceof e) {
                    eVar = (e) dVar;
                    int i10 = eVar.f9554g;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        eVar.f9554g = i10 - Integer.MIN_VALUE;
                        Object obj = eVar.f9553f;
                        Object d10 = bc.c.d();
                        r22 = eVar.f9554g;
                        switch (r22) {
                            case 0:
                                vb.k.b(obj);
                                aVar = this.f9516e;
                                ad.b a13 = k0.a.a(aVar);
                                eVar.f9556i = this;
                                eVar.f9557j = aVar;
                                eVar.f9558k = a13;
                                eVar.f9554g = 1;
                                if (a13.b(null, eVar) == d10) {
                                    return d10;
                                }
                                i0Var = this;
                                bVar = a13;
                                b10 = k0.a.b(aVar);
                                yVar = y.REFRESH;
                                eVar.f9556i = i0Var;
                                eVar.f9557j = bVar;
                                eVar.f9558k = null;
                                eVar.f9554g = 2;
                                if (i0Var.x(b10, yVar, eVar) != d10) {
                                    return d10;
                                }
                                i0Var2 = i0Var;
                                r22 = bVar;
                                vb.p pVar = vb.p.f15031a;
                                r22.a(null);
                                t0.a<Key> u10 = i0Var2.u(y.REFRESH, i0Var2.f9519h);
                                t0<Key, Value> t0Var = i0Var2.f9520i;
                                eVar.f9556i = i0Var2;
                                eVar.f9557j = null;
                                eVar.f9554g = 3;
                                obj = t0Var.f(u10, eVar);
                                if (obj != d10) {
                                    return d10;
                                }
                                i0Var3 = i0Var2;
                                bVar2 = (t0.b) obj;
                                if (!(bVar2 instanceof t0.b.C0202b)) {
                                    aVar3 = i0Var3.f9516e;
                                    a11 = k0.a.a(aVar3);
                                    eVar.f9556i = i0Var3;
                                    eVar.f9557j = bVar2;
                                    eVar.f9558k = aVar3;
                                    eVar.f9559l = a11;
                                    eVar.f9554g = 4;
                                    if (a11.b(null, eVar) == d10) {
                                        return d10;
                                    }
                                    try {
                                        Boolean a14 = cc.b.a(k0.a.b(aVar3).r(0, y.REFRESH, (t0.b.C0202b) bVar2));
                                        a11.a(null);
                                        booleanValue = a14.booleanValue();
                                        aVar4 = i0Var3.f9516e;
                                        a12 = k0.a.a(aVar4);
                                        eVar.f9556i = i0Var3;
                                        eVar.f9557j = bVar2;
                                        eVar.f9558k = aVar4;
                                        eVar.f9559l = a12;
                                        eVar.f9560m = booleanValue;
                                        eVar.f9554g = 5;
                                        if (a12.b(null, eVar) == d10) {
                                            return d10;
                                        }
                                        try {
                                            k0 b12 = k0.a.b(aVar4);
                                            y yVar3 = y.REFRESH;
                                            u.c.a aVar8 = u.c.f9818d;
                                            b12.u(yVar3, aVar8.b());
                                            if (((t0.b.C0202b) bVar2).e() == null) {
                                                b12.u(y.PREPEND, aVar8.a());
                                            }
                                            if (((t0.b.C0202b) bVar2).d() == null) {
                                                b12.u(y.APPEND, aVar8.a());
                                            }
                                            vb.p pVar2 = vb.p.f15031a;
                                            if (booleanValue) {
                                                aVar5 = i0Var3.f9516e;
                                                ad.b a15 = k0.a.a(aVar5);
                                                eVar.f9556i = i0Var3;
                                                eVar.f9557j = bVar2;
                                                eVar.f9558k = aVar5;
                                                eVar.f9559l = a15;
                                                eVar.f9554g = 6;
                                                if (a15.b(null, eVar) == d10) {
                                                    return d10;
                                                }
                                                bVar4 = a15;
                                                bVar5 = bVar2;
                                                i0Var5 = i0Var3;
                                                k0 b13 = k0.a.b(aVar5);
                                                fVar = i0Var5.f9515d;
                                                v10 = b13.v((t0.b.C0202b) bVar5, y.REFRESH);
                                                eVar.f9556i = i0Var5;
                                                eVar.f9557j = bVar5;
                                                eVar.f9558k = bVar4;
                                                eVar.f9559l = null;
                                                eVar.f9554g = 7;
                                                if (fVar.p(v10, eVar) != d10) {
                                                    return d10;
                                                }
                                                bVar3 = bVar5;
                                                i0Var4 = i0Var5;
                                                r22 = bVar4;
                                                vb.p pVar3 = vb.p.f15031a;
                                                if (i0Var4.f9524m != null) {
                                                    t0.b.C0202b c0202b2 = (t0.b.C0202b) bVar3;
                                                    if (c0202b2.e() == null || c0202b2.d() == null) {
                                                        aVar6 = i0Var4.f9516e;
                                                        ad.b a16 = k0.a.a(aVar6);
                                                        eVar.f9556i = i0Var4;
                                                        eVar.f9557j = bVar3;
                                                        eVar.f9558k = aVar6;
                                                        eVar.f9559l = a16;
                                                        eVar.f9554g = 8;
                                                        if (a16.b(null, eVar) == d10) {
                                                            return d10;
                                                        }
                                                        bVar6 = a16;
                                                        i0Var6 = i0Var4;
                                                        try {
                                                            v0<Key, Value> g10 = k0.a.b(aVar6).g(i0Var6.f9513b);
                                                            bVar6.a(null);
                                                            c0202b = (t0.b.C0202b) bVar3;
                                                            if (c0202b.e() == null) {
                                                                i0Var6.f9524m.a(y.PREPEND, g10);
                                                            }
                                                            if (c0202b.d() == null) {
                                                                i0Var6.f9524m.a(y.APPEND, g10);
                                                            }
                                                        } finally {
                                                        }
                                                    }
                                                }
                                                return vb.p.f15031a;
                                            }
                                            bVar3 = bVar2;
                                            i0Var4 = i0Var3;
                                            if (i0Var4.f9524m != null) {
                                            }
                                            return vb.p.f15031a;
                                        } finally {
                                        }
                                    } finally {
                                    }
                                }
                                if (bVar2 instanceof t0.b.a) {
                                    aVar2 = i0Var3.f9516e;
                                    a10 = k0.a.a(aVar2);
                                    eVar.f9556i = i0Var3;
                                    eVar.f9557j = bVar2;
                                    eVar.f9558k = aVar2;
                                    eVar.f9559l = a10;
                                    eVar.f9554g = 9;
                                    if (a10.b(null, eVar) == d10) {
                                        return d10;
                                    }
                                    try {
                                        b11 = k0.a.b(aVar2);
                                        aVar7 = new u.a(((t0.b.a) bVar2).a());
                                        yVar2 = y.REFRESH;
                                        if (b11.u(yVar2, aVar7)) {
                                            tc.f<f0<Value>> fVar2 = i0Var3.f9515d;
                                            f0.c cVar = new f0.c(yVar2, false, aVar7);
                                            eVar.f9556i = a10;
                                            eVar.f9557j = null;
                                            eVar.f9558k = null;
                                            eVar.f9559l = null;
                                            eVar.f9554g = 10;
                                            if (fVar2.p(cVar, eVar) == d10) {
                                                return d10;
                                            }
                                        }
                                        bVar7 = a10;
                                        vb.p pVar4 = vb.p.f15031a;
                                    } catch (Throwable th2) {
                                        bVar7 = a10;
                                        th = th2;
                                        throw th;
                                    }
                                }
                                return vb.p.f15031a;
                            case 1:
                                ad.b bVar8 = (ad.b) eVar.f9558k;
                                aVar = (k0.a) eVar.f9557j;
                                i0Var = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                bVar = bVar8;
                                b10 = k0.a.b(aVar);
                                yVar = y.REFRESH;
                                eVar.f9556i = i0Var;
                                eVar.f9557j = bVar;
                                eVar.f9558k = null;
                                eVar.f9554g = 2;
                                if (i0Var.x(b10, yVar, eVar) != d10) {
                                }
                                break;
                            case 2:
                                ad.b bVar9 = (ad.b) eVar.f9557j;
                                i0Var2 = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                r22 = bVar9;
                                vb.p pVar5 = vb.p.f15031a;
                                r22.a(null);
                                t0.a<Key> u102 = i0Var2.u(y.REFRESH, i0Var2.f9519h);
                                t0<Key, Value> t0Var2 = i0Var2.f9520i;
                                eVar.f9556i = i0Var2;
                                eVar.f9557j = null;
                                eVar.f9554g = 3;
                                obj = t0Var2.f(u102, eVar);
                                if (obj != d10) {
                                }
                                break;
                            case 3:
                                i0 i0Var7 = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                i0Var3 = i0Var7;
                                bVar2 = (t0.b) obj;
                                if (!(bVar2 instanceof t0.b.C0202b)) {
                                }
                                break;
                            case 4:
                                a11 = (ad.b) eVar.f9559l;
                                aVar3 = (k0.a) eVar.f9558k;
                                bVar2 = (t0.b) eVar.f9557j;
                                i0Var3 = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                Boolean a142 = cc.b.a(k0.a.b(aVar3).r(0, y.REFRESH, (t0.b.C0202b) bVar2));
                                a11.a(null);
                                booleanValue = a142.booleanValue();
                                aVar4 = i0Var3.f9516e;
                                a12 = k0.a.a(aVar4);
                                eVar.f9556i = i0Var3;
                                eVar.f9557j = bVar2;
                                eVar.f9558k = aVar4;
                                eVar.f9559l = a12;
                                eVar.f9560m = booleanValue;
                                eVar.f9554g = 5;
                                if (a12.b(null, eVar) == d10) {
                                }
                                k0 b122 = k0.a.b(aVar4);
                                y yVar32 = y.REFRESH;
                                u.c.a aVar82 = u.c.f9818d;
                                b122.u(yVar32, aVar82.b());
                                if (((t0.b.C0202b) bVar2).e() == null) {
                                }
                                if (((t0.b.C0202b) bVar2).d() == null) {
                                }
                                vb.p pVar22 = vb.p.f15031a;
                                if (booleanValue) {
                                }
                                break;
                            case 5:
                                booleanValue = eVar.f9560m;
                                a12 = (ad.b) eVar.f9559l;
                                aVar4 = (k0.a) eVar.f9558k;
                                bVar2 = (t0.b) eVar.f9557j;
                                i0Var3 = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                k0 b1222 = k0.a.b(aVar4);
                                y yVar322 = y.REFRESH;
                                u.c.a aVar822 = u.c.f9818d;
                                b1222.u(yVar322, aVar822.b());
                                if (((t0.b.C0202b) bVar2).e() == null) {
                                }
                                if (((t0.b.C0202b) bVar2).d() == null) {
                                }
                                vb.p pVar222 = vb.p.f15031a;
                                if (booleanValue) {
                                }
                                break;
                            case 6:
                                ad.b bVar10 = (ad.b) eVar.f9559l;
                                aVar5 = (k0.a) eVar.f9558k;
                                bVar5 = (t0.b) eVar.f9557j;
                                i0Var5 = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                bVar4 = bVar10;
                                k0 b132 = k0.a.b(aVar5);
                                fVar = i0Var5.f9515d;
                                v10 = b132.v((t0.b.C0202b) bVar5, y.REFRESH);
                                eVar.f9556i = i0Var5;
                                eVar.f9557j = bVar5;
                                eVar.f9558k = bVar4;
                                eVar.f9559l = null;
                                eVar.f9554g = 7;
                                if (fVar.p(v10, eVar) != d10) {
                                }
                                break;
                            case 7:
                                ad.b bVar11 = (ad.b) eVar.f9558k;
                                bVar3 = (t0.b) eVar.f9557j;
                                i0Var4 = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                r22 = bVar11;
                                vb.p pVar32 = vb.p.f15031a;
                                if (i0Var4.f9524m != null) {
                                }
                                return vb.p.f15031a;
                            case 8:
                                bVar6 = (ad.b) eVar.f9559l;
                                aVar6 = (k0.a) eVar.f9558k;
                                bVar3 = (t0.b) eVar.f9557j;
                                i0Var6 = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                v0<Key, Value> g102 = k0.a.b(aVar6).g(i0Var6.f9513b);
                                bVar6.a(null);
                                c0202b = (t0.b.C0202b) bVar3;
                                if (c0202b.e() == null) {
                                }
                                if (c0202b.d() == null) {
                                }
                                return vb.p.f15031a;
                            case 9:
                                ad.b bVar12 = (ad.b) eVar.f9559l;
                                aVar2 = (k0.a) eVar.f9558k;
                                bVar2 = (t0.b) eVar.f9557j;
                                i0Var3 = (i0) eVar.f9556i;
                                vb.k.b(obj);
                                a10 = bVar12;
                                b11 = k0.a.b(aVar2);
                                aVar7 = new u.a(((t0.b.a) bVar2).a());
                                yVar2 = y.REFRESH;
                                if (b11.u(yVar2, aVar7)) {
                                }
                                bVar7 = a10;
                                vb.p pVar42 = vb.p.f15031a;
                                return vb.p.f15031a;
                            case 10:
                                bVar7 = (ad.b) eVar.f9556i;
                                try {
                                    vb.k.b(obj);
                                    vb.p pVar422 = vb.p.f15031a;
                                    return vb.p.f15031a;
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            default:
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }
                }
                switch (r22) {
                }
            } finally {
            }
        } finally {
        }
        eVar = new e(dVar);
        Object obj2 = eVar.f9553f;
        Object d102 = bc.c.d();
        r22 = eVar.f9554g;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0029. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x05f0  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x064f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x04c1 A[Catch: all -> 0x0108, TRY_LEAVE, TryCatch #5 {all -> 0x0108, blocks: (B:154:0x04ac, B:156:0x04c1, B:161:0x04d7, B:171:0x04e8, B:189:0x0103), top: B:7:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0669  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x032b A[Catch: all -> 0x068e, TRY_LEAVE, TryCatch #9 {all -> 0x068e, blocks: (B:206:0x0316, B:208:0x032b), top: B:205:0x0316 }] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x030b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x028c A[Catch: all -> 0x0696, TryCatch #3 {all -> 0x0696, blocks: (B:218:0x022c, B:224:0x02e0, B:229:0x0242, B:230:0x0247, B:231:0x0248, B:233:0x0259, B:234:0x0266, B:236:0x0270, B:238:0x0289, B:240:0x028c, B:242:0x02a5, B:245:0x02c4, B:247:0x02dd), top: B:217:0x022c }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x050a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0538 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0552 A[Catch: all -> 0x0683, TRY_LEAVE, TryCatch #1 {all -> 0x0683, blocks: (B:71:0x0544, B:73:0x0552, B:78:0x0570), top: B:70:0x0544 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x05a5 A[Catch: all -> 0x00bd, TryCatch #8 {all -> 0x00bd, blocks: (B:82:0x0582, B:83:0x0592, B:85:0x05a5, B:87:0x05b1, B:89:0x05b5, B:90:0x05c2, B:91:0x05bc, B:92:0x05c5, B:97:0x05e7, B:101:0x05fb, B:183:0x0082, B:186:0x00b8), top: B:7:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x05b5 A[Catch: all -> 0x00bd, TryCatch #8 {all -> 0x00bd, blocks: (B:82:0x0582, B:83:0x0592, B:85:0x05a5, B:87:0x05b1, B:89:0x05b5, B:90:0x05c2, B:91:0x05bc, B:92:0x05c5, B:97:0x05e7, B:101:0x05fb, B:183:0x0082, B:186:0x00b8), top: B:7:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x05bc A[Catch: all -> 0x00bd, TryCatch #8 {all -> 0x00bd, blocks: (B:82:0x0582, B:83:0x0592, B:85:0x05a5, B:87:0x05b1, B:89:0x05b5, B:90:0x05c2, B:91:0x05bc, B:92:0x05c5, B:97:0x05e7, B:101:0x05fb, B:183:0x0082, B:186:0x00b8), top: B:7:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x05ef A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /* JADX WARN: Type inference failed for: r12v54, types: [k1.i0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v56 */
    /* JADX WARN: Type inference failed for: r12v60 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v16, types: [T] */
    /* JADX WARN: Type inference failed for: r13v46 */
    /* JADX WARN: Type inference failed for: r1v16, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v6, types: [ad.b] */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v44, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v50 */
    /* JADX WARN: Type inference failed for: r5v75 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0622 -> B:20:0x0670). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x0626 -> B:20:0x0670). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x064d -> B:13:0x0650). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ Object q(y yVar, r rVar, ac.d<? super vb.p> dVar) {
        f fVar;
        Object d10;
        Object r52;
        Object obj;
        ad.b bVar;
        Object obj2;
        ad.b bVar2;
        jc.v vVar;
        k0.a<Key, Value> aVar;
        ad.b a10;
        r rVar2;
        i0<Key, Value> i0Var;
        int i10;
        jc.x xVar;
        ad.b a11;
        i0 i0Var2;
        y yVar2;
        jc.x xVar2;
        k0.a<Key, Value> aVar2;
        ad.b bVar3;
        r rVar3;
        jc.v vVar2;
        ad.b bVar4;
        Object v10;
        Object obj3;
        Object r13;
        jc.x xVar3;
        i0 i0Var3;
        jc.u uVar;
        Object obj4;
        i0 i0Var4;
        r rVar4;
        y yVar3;
        i0 i0Var5;
        jc.x xVar4;
        jc.v vVar3;
        t0.a<Key> aVar3;
        k0.a<Key, Value> aVar4;
        Object obj5;
        jc.u uVar2;
        i0 i0Var6;
        ad.b bVar5;
        k0.a<Key, Value> aVar5;
        Object obj6;
        ad.b bVar6;
        f fVar2;
        y yVar4;
        k0 k0Var;
        r rVar5;
        k0.a<Key, Value> aVar6;
        y yVar5;
        Object obj7;
        t0.a<Key> aVar7;
        jc.u uVar3;
        jc.x xVar5;
        jc.v vVar4;
        r rVar6;
        y yVar6;
        ad.b bVar7;
        k0<Key, Value> k0Var2;
        Object obj8;
        t0.a<Key> aVar8;
        jc.u uVar4;
        jc.x xVar6;
        jc.v vVar5;
        r rVar7;
        y yVar7;
        i0 i0Var7;
        Object obj9;
        t0.a<Key> aVar9;
        jc.v vVar6;
        jc.u uVar5;
        r rVar8;
        jc.x xVar7;
        i0 i0Var8;
        k0 k0Var3;
        ad.b bVar8;
        u.a aVar10;
        ad.b bVar9;
        int i11;
        int i12;
        k0.a<Key, Value> aVar11;
        ad.b a12;
        Object v11;
        f0<Value> v12;
        tc.f<f0<Value>> fVar3;
        ad.b bVar10;
        f0.a<Value> i13;
        y yVar8;
        ad.b a13;
        i0 i0Var9;
        Boolean a14;
        Object e10;
        i0 r12;
        Object obj10;
        y yVar9 = yVar;
        try {
            try {
                if (dVar instanceof f) {
                    fVar = (f) dVar;
                    int i14 = fVar.f9562g;
                    if ((i14 & Integer.MIN_VALUE) != 0) {
                        fVar.f9562g = i14 - Integer.MIN_VALUE;
                        Object obj11 = fVar.f9561f;
                        d10 = bc.c.d();
                        r52 = fVar.f9562g;
                        switch (r52) {
                            case 0:
                                vb.k.b(obj11);
                                if (yVar9 != y.REFRESH) {
                                    vVar = new jc.v();
                                    vVar.f9192f = 0;
                                    aVar = this.f9516e;
                                    a10 = k0.a.a(aVar);
                                    fVar.f9564i = this;
                                    fVar.f9565j = yVar9;
                                    rVar2 = rVar;
                                    fVar.f9566k = rVar2;
                                    fVar.f9567l = vVar;
                                    fVar.f9568m = aVar;
                                    fVar.f9569n = a10;
                                    fVar.f9562g = 1;
                                    if (a10.b(null, fVar) == d10) {
                                        return d10;
                                    }
                                    i0Var = this;
                                    try {
                                        k0 b10 = k0.a.b(aVar);
                                        i10 = h0.f9492c[yVar9.ordinal()];
                                        if (i10 != 1) {
                                            int l10 = (b10.l() + rVar2.b().a()) - 1;
                                            if (l10 > wb.l.k(b10.m())) {
                                                vVar.f9192f += i0Var.f9521j.f9740a * (l10 - wb.l.k(b10.m()));
                                                l10 = wb.l.k(b10.m());
                                            }
                                            if (l10 >= 0) {
                                                int i15 = 0;
                                                while (true) {
                                                    vVar.f9192f += b10.m().get(i15).a().size();
                                                    if (i15 != l10) {
                                                        i15++;
                                                    }
                                                }
                                            }
                                        } else if (i10 == 2) {
                                            int l11 = b10.l() + rVar2.b().b() + 1;
                                            if (l11 < 0) {
                                                vVar.f9192f += i0Var.f9521j.f9740a * (-l11);
                                                l11 = 0;
                                            }
                                            int k10 = wb.l.k(b10.m());
                                            if (l11 <= k10) {
                                                while (true) {
                                                    vVar.f9192f += b10.m().get(l11).a().size();
                                                    if (l11 != k10) {
                                                        l11++;
                                                    }
                                                }
                                            }
                                        } else if (i10 == 3) {
                                            throw new IllegalStateException("Use doInitialLoad for LoadType == REFRESH");
                                        }
                                        vb.p pVar = vb.p.f15031a;
                                        a10.a(null);
                                        xVar = new jc.x();
                                        k0.a<Key, Value> aVar12 = i0Var.f9516e;
                                        a11 = k0.a.a(aVar12);
                                        fVar.f9564i = i0Var;
                                        fVar.f9565j = yVar9;
                                        fVar.f9566k = rVar2;
                                        fVar.f9567l = vVar;
                                        fVar.f9568m = xVar;
                                        fVar.f9569n = aVar12;
                                        fVar.f9570o = a11;
                                        fVar.f9571p = xVar;
                                        fVar.f9562g = 2;
                                        if (a11.b(null, fVar) != d10) {
                                            return d10;
                                        }
                                        i0Var2 = i0Var;
                                        yVar2 = yVar9;
                                        xVar2 = xVar;
                                        jc.v vVar7 = vVar;
                                        aVar2 = aVar12;
                                        bVar3 = a11;
                                        rVar3 = rVar2;
                                        vVar2 = vVar7;
                                        try {
                                            k0<Key, Value> b11 = k0.a.b(aVar2);
                                            v10 = i0Var2.v(b11, yVar2, rVar3.a(), rVar3.c(yVar2) + vVar2.f9192f);
                                            if (v10 == null) {
                                                fVar.f9564i = i0Var2;
                                                fVar.f9565j = yVar2;
                                                fVar.f9566k = rVar3;
                                                fVar.f9567l = vVar2;
                                                fVar.f9568m = xVar;
                                                fVar.f9569n = bVar3;
                                                fVar.f9570o = v10;
                                                fVar.f9571p = xVar2;
                                                fVar.f9562g = 3;
                                                if (i0Var2.x(b11, yVar2, fVar) == d10) {
                                                    return d10;
                                                }
                                                xVar3 = xVar;
                                                bVar4 = bVar3;
                                                i0Var4 = i0Var2;
                                                obj4 = v10;
                                                bVar3 = bVar4;
                                                xVar = xVar3;
                                                obj3 = null;
                                                i0Var3 = i0Var4;
                                                r13 = obj4;
                                                bVar3.a(obj3);
                                                xVar2.f9194f = r13;
                                                uVar = new jc.u();
                                                uVar.f9191f = false;
                                                r12 = i0Var3;
                                                obj10 = xVar.f9194f;
                                                if (obj10 != null) {
                                                    t0.a<Key> u10 = r12.u(yVar2, obj10);
                                                    t0<Key, Value> t0Var = r12.f9520i;
                                                    fVar.f9564i = r12;
                                                    fVar.f9565j = yVar2;
                                                    fVar.f9566k = rVar3;
                                                    fVar.f9567l = vVar2;
                                                    fVar.f9568m = xVar;
                                                    fVar.f9569n = uVar;
                                                    fVar.f9570o = u10;
                                                    fVar.f9571p = null;
                                                    fVar.f9572q = null;
                                                    fVar.f9562g = 4;
                                                    Object f10 = t0Var.f(u10, fVar);
                                                    if (f10 == d10) {
                                                        return d10;
                                                    }
                                                    aVar3 = u10;
                                                    yVar3 = yVar2;
                                                    vVar3 = vVar2;
                                                    i0Var5 = r12;
                                                    rVar4 = rVar3;
                                                    xVar4 = xVar;
                                                    obj11 = f10;
                                                    obj5 = (t0.b) obj11;
                                                    if (obj5 instanceof t0.b.C0202b) {
                                                        int i16 = h0.f9493d[yVar3.ordinal()];
                                                        if (i16 == 1) {
                                                            e10 = ((t0.b.C0202b) obj5).e();
                                                        } else if (i16 == 2) {
                                                            e10 = ((t0.b.C0202b) obj5).d();
                                                        } else {
                                                            throw new IllegalArgumentException("Use doInitialLoad for LoadType == REFRESH");
                                                        }
                                                        if (!(i0Var5.f9520i.c() || (jc.l.a(e10, xVar4.f9194f) ^ true))) {
                                                            throw new IllegalStateException(qc.m.h("The same value, " + xVar4.f9194f + ", was passed as the " + (yVar3 == y.PREPEND ? "prevKey" : "nextKey") + " in two\n                            | sequential Pages loaded from a PagingSource. Re-using load keys in\n                            | PagingSource is often an error, and must be explicitly enabled by\n                            | overriding PagingSource.keyReuseSupported.\n                            ", null, 1, null).toString());
                                                        }
                                                        k0.a<Key, Value> aVar13 = i0Var5.f9516e;
                                                        bVar5 = k0.a.a(aVar13);
                                                        fVar.f9564i = i0Var5;
                                                        fVar.f9565j = yVar3;
                                                        fVar.f9566k = rVar4;
                                                        fVar.f9567l = vVar3;
                                                        fVar.f9568m = xVar4;
                                                        fVar.f9569n = uVar;
                                                        fVar.f9570o = aVar3;
                                                        fVar.f9571p = obj5;
                                                        fVar.f9572q = aVar13;
                                                        fVar.f9573r = bVar5;
                                                        fVar.f9562g = 5;
                                                        if (bVar5.b(null, fVar) == d10) {
                                                            return d10;
                                                        }
                                                        try {
                                                            aVar4 = aVar13;
                                                            i0Var6 = i0Var5;
                                                            uVar2 = uVar;
                                                            a14 = cc.b.a(k0.a.b(aVar4).r(rVar4.a(), yVar3, (t0.b.C0202b) obj5));
                                                            bVar5.a(null);
                                                            if (a14.booleanValue()) {
                                                                t0.b.C0202b c0202b = (t0.b.C0202b) obj5;
                                                                vVar3.f9192f += c0202b.a().size();
                                                                if ((yVar3 == y.PREPEND && c0202b.e() == null) || (yVar3 == y.APPEND && c0202b.d() == null)) {
                                                                    uVar2.f9191f = true;
                                                                }
                                                                jc.u uVar6 = uVar2;
                                                                i0Var5 = i0Var9;
                                                                uVar = uVar6;
                                                                if (h0.f9494e[yVar3.ordinal()] == 1) {
                                                                }
                                                                k0.a<Key, Value> aVar14 = i0Var5.f9516e;
                                                                a13 = k0.a.a(aVar14);
                                                                fVar.f9564i = i0Var5;
                                                                fVar.f9565j = yVar3;
                                                                fVar.f9566k = rVar4;
                                                                fVar.f9567l = vVar3;
                                                                fVar.f9568m = xVar4;
                                                                fVar.f9569n = uVar;
                                                                fVar.f9570o = aVar3;
                                                                fVar.f9571p = obj5;
                                                                fVar.f9572q = yVar8;
                                                                fVar.f9573r = aVar14;
                                                                fVar.f9574s = a13;
                                                                fVar.f9562g = 8;
                                                                jc.u uVar7 = uVar;
                                                                if (a13.b(null, fVar) != d10) {
                                                                }
                                                            }
                                                        } finally {
                                                        }
                                                        i0Var9 = i0Var6;
                                                    } else {
                                                        if (obj5 instanceof t0.b.a) {
                                                            aVar5 = i0Var5.f9516e;
                                                            ad.b a15 = k0.a.a(aVar5);
                                                            fVar.f9564i = i0Var5;
                                                            fVar.f9565j = yVar3;
                                                            fVar.f9566k = rVar4;
                                                            fVar.f9567l = obj5;
                                                            fVar.f9568m = aVar5;
                                                            fVar.f9569n = a15;
                                                            fVar.f9570o = null;
                                                            fVar.f9562g = 6;
                                                            if (a15.b(null, fVar) == d10) {
                                                                return d10;
                                                            }
                                                            obj6 = d10;
                                                            bVar6 = a15;
                                                            fVar2 = fVar;
                                                            yVar4 = yVar3;
                                                            k0Var3 = k0.a.b(aVar5);
                                                            aVar10 = new u.a(((t0.b.a) obj5).a());
                                                            d10 = bVar6;
                                                            if (k0Var3.u(yVar4, aVar10)) {
                                                                tc.f<f0<Value>> fVar4 = i0Var5.f9515d;
                                                                f0.c cVar = new f0.c(yVar4, false, aVar10);
                                                                fVar2.f9564i = yVar4;
                                                                fVar2.f9565j = rVar4;
                                                                fVar2.f9566k = bVar6;
                                                                fVar2.f9567l = k0Var3;
                                                                try {
                                                                    fVar2.f9568m = null;
                                                                    fVar2.f9569n = null;
                                                                    fVar2.f9562g = 7;
                                                                    if (fVar4.p(cVar, fVar2) == obj6) {
                                                                        return obj6;
                                                                    }
                                                                    k0Var = k0Var3;
                                                                    rVar5 = rVar4;
                                                                    bVar8 = bVar6;
                                                                    rVar4 = rVar5;
                                                                    k0Var3 = k0Var;
                                                                    d10 = bVar8;
                                                                } catch (Throwable th) {
                                                                    th = th;
                                                                    obj = null;
                                                                    bVar = bVar6;
                                                                    bVar.a(obj);
                                                                    throw th;
                                                                }
                                                            }
                                                            k0Var3.k().put(yVar4, rVar4.b());
                                                            return vb.p.f15031a;
                                                        }
                                                        if (h0.f9494e[yVar3.ordinal()] == 1) {
                                                            yVar8 = y.PREPEND;
                                                        } else {
                                                            yVar8 = y.APPEND;
                                                        }
                                                        k0.a<Key, Value> aVar142 = i0Var5.f9516e;
                                                        a13 = k0.a.a(aVar142);
                                                        fVar.f9564i = i0Var5;
                                                        fVar.f9565j = yVar3;
                                                        fVar.f9566k = rVar4;
                                                        fVar.f9567l = vVar3;
                                                        fVar.f9568m = xVar4;
                                                        fVar.f9569n = uVar;
                                                        fVar.f9570o = aVar3;
                                                        fVar.f9571p = obj5;
                                                        fVar.f9572q = yVar8;
                                                        fVar.f9573r = aVar142;
                                                        fVar.f9574s = a13;
                                                        fVar.f9562g = 8;
                                                        jc.u uVar72 = uVar;
                                                        if (a13.b(null, fVar) != d10) {
                                                            return d10;
                                                        }
                                                        rVar6 = rVar4;
                                                        xVar5 = xVar4;
                                                        aVar7 = aVar3;
                                                        obj7 = obj5;
                                                        yVar5 = yVar8;
                                                        bVar7 = a13;
                                                        aVar6 = aVar142;
                                                        yVar6 = yVar3;
                                                        vVar4 = vVar3;
                                                        uVar3 = uVar72;
                                                        try {
                                                            k0Var2 = k0.a.b(aVar6);
                                                            i13 = k0Var2.i(yVar5, rVar6.b());
                                                            if (i13 == null) {
                                                                try {
                                                                    k0Var2.h(i13);
                                                                    tc.f<f0<Value>> fVar5 = i0Var5.f9515d;
                                                                    fVar.f9564i = i0Var5;
                                                                    fVar.f9565j = yVar6;
                                                                    fVar.f9566k = rVar6;
                                                                    fVar.f9567l = vVar4;
                                                                    fVar.f9568m = xVar5;
                                                                    fVar.f9569n = uVar3;
                                                                    fVar.f9570o = aVar7;
                                                                    fVar.f9571p = obj7;
                                                                    fVar.f9572q = bVar7;
                                                                    fVar.f9573r = k0Var2;
                                                                    fVar.f9574s = null;
                                                                    fVar.f9562g = 9;
                                                                    if (fVar5.p(i13, fVar) == d10) {
                                                                        return d10;
                                                                    }
                                                                    try {
                                                                        bVar10 = bVar7;
                                                                        obj8 = obj7;
                                                                        aVar8 = aVar7;
                                                                        uVar4 = uVar3;
                                                                        xVar6 = xVar5;
                                                                        vVar5 = vVar4;
                                                                        rVar7 = rVar6;
                                                                        yVar7 = yVar6;
                                                                        i0Var7 = i0Var5;
                                                                        vb.p pVar2 = vb.p.f15031a;
                                                                        i0Var5 = i0Var7;
                                                                        yVar6 = yVar7;
                                                                        rVar6 = rVar7;
                                                                        vVar4 = vVar5;
                                                                        xVar5 = xVar6;
                                                                        uVar3 = uVar4;
                                                                        r52 = bVar10;
                                                                        v11 = i0Var5.v(k0Var2, yVar6, rVar6.a(), rVar6.c(yVar6) + vVar4.f9192f);
                                                                        xVar5.f9194f = v11;
                                                                        if (v11 == 0 && !(k0Var2.p().d(yVar6) instanceof u.a)) {
                                                                            k0Var2.u(yVar6, !uVar3.f9191f ? u.c.f9818d.a() : u.c.f9818d.b());
                                                                        }
                                                                        v12 = k0Var2.v((t0.b.C0202b) obj8, yVar6);
                                                                        fVar3 = i0Var5.f9515d;
                                                                        fVar.f9564i = i0Var5;
                                                                        fVar.f9565j = yVar6;
                                                                        fVar.f9566k = rVar6;
                                                                        fVar.f9567l = vVar4;
                                                                        fVar.f9568m = xVar5;
                                                                        fVar.f9569n = uVar3;
                                                                        fVar.f9570o = aVar8;
                                                                        fVar.f9571p = obj8;
                                                                        fVar.f9572q = r52;
                                                                        fVar.f9573r = null;
                                                                        fVar.f9574s = null;
                                                                        fVar.f9562g = 10;
                                                                        if (fVar3.p(v12, fVar) == d10) {
                                                                            return d10;
                                                                        }
                                                                        obj9 = obj8;
                                                                        aVar9 = aVar8;
                                                                        i0Var8 = i0Var5;
                                                                        rVar8 = rVar6;
                                                                        xVar7 = xVar5;
                                                                        jc.v vVar8 = vVar4;
                                                                        uVar5 = uVar3;
                                                                        yVar2 = yVar6;
                                                                        vVar6 = vVar8;
                                                                        bVar9 = r52;
                                                                        vb.p pVar3 = vb.p.f15031a;
                                                                        bVar9.a(null);
                                                                        i11 = ((aVar9 instanceof t0.a.c) || ((t0.b.C0202b) obj9).e() != null) ? 0 : 1;
                                                                        i12 = ((aVar9 instanceof t0.a.C0201a) || ((t0.b.C0202b) obj9).d() != null) ? 0 : 1;
                                                                        if (i0Var8.f9524m != null && (i11 != 0 || i12 != 0)) {
                                                                            try {
                                                                                aVar11 = i0Var8.f9516e;
                                                                                a12 = k0.a.a(aVar11);
                                                                                fVar.f9564i = i0Var8;
                                                                                fVar.f9565j = yVar2;
                                                                                fVar.f9566k = rVar8;
                                                                                fVar.f9567l = vVar6;
                                                                                fVar.f9568m = xVar7;
                                                                                fVar.f9569n = uVar5;
                                                                                fVar.f9570o = aVar11;
                                                                                fVar.f9571p = a12;
                                                                                fVar.f9572q = null;
                                                                                fVar.f9575t = i11;
                                                                                fVar.f9576u = i12;
                                                                                fVar.f9562g = 11;
                                                                                if (a12.b(null, fVar) == d10) {
                                                                                    return d10;
                                                                                }
                                                                                v0<Key, Value> g10 = k0.a.b(aVar11).g(i0Var8.f9513b);
                                                                                if (i11 != 0) {
                                                                                    i0Var8.f9524m.a(y.PREPEND, g10);
                                                                                }
                                                                                if (i12 != 0) {
                                                                                    i0Var8.f9524m.a(y.APPEND, g10);
                                                                                }
                                                                            } finally {
                                                                            }
                                                                        }
                                                                        r12 = i0Var8;
                                                                        uVar = uVar5;
                                                                        xVar = xVar7;
                                                                        vVar2 = vVar6;
                                                                        rVar3 = rVar8;
                                                                        obj10 = xVar.f9194f;
                                                                        if (obj10 != null) {
                                                                        }
                                                                    } catch (Throwable th2) {
                                                                        th = th2;
                                                                        obj2 = null;
                                                                        bVar2 = r52;
                                                                        bVar2.a(obj2);
                                                                        throw th;
                                                                    }
                                                                } catch (Throwable th3) {
                                                                    th = th3;
                                                                    bVar2 = bVar7;
                                                                    bVar2.a(obj2);
                                                                    throw th;
                                                                }
                                                                obj2 = null;
                                                            } else {
                                                                r52 = bVar7;
                                                                obj8 = obj7;
                                                                aVar8 = aVar7;
                                                                v11 = i0Var5.v(k0Var2, yVar6, rVar6.a(), rVar6.c(yVar6) + vVar4.f9192f);
                                                                xVar5.f9194f = v11;
                                                                if (v11 == 0) {
                                                                    k0Var2.u(yVar6, !uVar3.f9191f ? u.c.f9818d.a() : u.c.f9818d.b());
                                                                }
                                                                v12 = k0Var2.v((t0.b.C0202b) obj8, yVar6);
                                                                fVar3 = i0Var5.f9515d;
                                                                fVar.f9564i = i0Var5;
                                                                fVar.f9565j = yVar6;
                                                                fVar.f9566k = rVar6;
                                                                fVar.f9567l = vVar4;
                                                                fVar.f9568m = xVar5;
                                                                fVar.f9569n = uVar3;
                                                                fVar.f9570o = aVar8;
                                                                fVar.f9571p = obj8;
                                                                fVar.f9572q = r52;
                                                                fVar.f9573r = null;
                                                                fVar.f9574s = null;
                                                                fVar.f9562g = 10;
                                                                if (fVar3.p(v12, fVar) == d10) {
                                                                }
                                                            }
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                            r52 = bVar7;
                                                            obj2 = null;
                                                            bVar2 = r52;
                                                            bVar2.a(obj2);
                                                            throw th;
                                                        }
                                                    }
                                                }
                                                return vb.p.f15031a;
                                            }
                                            obj3 = null;
                                            r13 = 0;
                                            i0Var3 = i0Var2;
                                            bVar3.a(obj3);
                                            xVar2.f9194f = r13;
                                            uVar = new jc.u();
                                            uVar.f9191f = false;
                                            r12 = i0Var3;
                                            obj10 = xVar.f9194f;
                                            if (obj10 != null) {
                                            }
                                            return vb.p.f15031a;
                                        } catch (Throwable th5) {
                                            th = th5;
                                            bVar4 = bVar3;
                                            bVar4.a(null);
                                            throw th;
                                        }
                                    } finally {
                                    }
                                }
                                throw new IllegalArgumentException("Use doInitialLoad for LoadType == REFRESH".toString());
                            case 1:
                                ad.b bVar11 = (ad.b) fVar.f9569n;
                                aVar = (k0.a) fVar.f9568m;
                                vVar = (jc.v) fVar.f9567l;
                                rVar2 = (r) fVar.f9566k;
                                y yVar10 = (y) fVar.f9565j;
                                i0Var = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                a10 = bVar11;
                                yVar9 = yVar10;
                                k0 b102 = k0.a.b(aVar);
                                i10 = h0.f9492c[yVar9.ordinal()];
                                if (i10 != 1) {
                                }
                                vb.p pVar4 = vb.p.f15031a;
                                a10.a(null);
                                xVar = new jc.x();
                                k0.a<Key, Value> aVar122 = i0Var.f9516e;
                                a11 = k0.a.a(aVar122);
                                fVar.f9564i = i0Var;
                                fVar.f9565j = yVar9;
                                fVar.f9566k = rVar2;
                                fVar.f9567l = vVar;
                                fVar.f9568m = xVar;
                                fVar.f9569n = aVar122;
                                fVar.f9570o = a11;
                                fVar.f9571p = xVar;
                                fVar.f9562g = 2;
                                if (a11.b(null, fVar) != d10) {
                                }
                                break;
                            case 2:
                                xVar2 = (jc.x) fVar.f9571p;
                                bVar3 = (ad.b) fVar.f9570o;
                                aVar2 = (k0.a) fVar.f9569n;
                                jc.x xVar8 = (jc.x) fVar.f9568m;
                                jc.v vVar9 = (jc.v) fVar.f9567l;
                                r rVar9 = (r) fVar.f9566k;
                                y yVar11 = (y) fVar.f9565j;
                                i0 i0Var10 = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                xVar = xVar8;
                                vVar2 = vVar9;
                                rVar3 = rVar9;
                                yVar2 = yVar11;
                                i0Var2 = i0Var10;
                                k0<Key, Value> b112 = k0.a.b(aVar2);
                                v10 = i0Var2.v(b112, yVar2, rVar3.a(), rVar3.c(yVar2) + vVar2.f9192f);
                                if (v10 == null) {
                                }
                                break;
                            case 3:
                                xVar2 = (jc.x) fVar.f9571p;
                                Object obj12 = fVar.f9570o;
                                bVar4 = (ad.b) fVar.f9569n;
                                xVar3 = (jc.x) fVar.f9568m;
                                vVar2 = (jc.v) fVar.f9567l;
                                rVar3 = (r) fVar.f9566k;
                                yVar2 = (y) fVar.f9565j;
                                i0 i0Var11 = (i0) fVar.f9564i;
                                try {
                                    vb.k.b(obj11);
                                    obj4 = obj12;
                                    i0Var4 = i0Var11;
                                    bVar3 = bVar4;
                                    xVar = xVar3;
                                    obj3 = null;
                                    i0Var3 = i0Var4;
                                    r13 = obj4;
                                    bVar3.a(obj3);
                                    xVar2.f9194f = r13;
                                    uVar = new jc.u();
                                    uVar.f9191f = false;
                                    r12 = i0Var3;
                                    obj10 = xVar.f9194f;
                                    if (obj10 != null) {
                                    }
                                    return vb.p.f15031a;
                                } catch (Throwable th6) {
                                    th = th6;
                                    bVar4.a(null);
                                    throw th;
                                }
                            case 4:
                                t0.a<Key> aVar15 = (t0.a) fVar.f9570o;
                                jc.u uVar8 = (jc.u) fVar.f9569n;
                                jc.x xVar9 = (jc.x) fVar.f9568m;
                                jc.v vVar10 = (jc.v) fVar.f9567l;
                                r rVar10 = (r) fVar.f9566k;
                                y yVar12 = (y) fVar.f9565j;
                                i0 i0Var12 = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                rVar4 = rVar10;
                                yVar3 = yVar12;
                                i0Var5 = i0Var12;
                                xVar4 = xVar9;
                                vVar3 = vVar10;
                                aVar3 = aVar15;
                                uVar = uVar8;
                                obj5 = (t0.b) obj11;
                                if (obj5 instanceof t0.b.C0202b) {
                                }
                                break;
                            case 5:
                                ad.b bVar12 = (ad.b) fVar.f9573r;
                                aVar4 = (k0.a) fVar.f9572q;
                                obj5 = (t0.b) fVar.f9571p;
                                aVar3 = (t0.a) fVar.f9570o;
                                uVar2 = (jc.u) fVar.f9569n;
                                xVar4 = (jc.x) fVar.f9568m;
                                vVar3 = (jc.v) fVar.f9567l;
                                rVar4 = (r) fVar.f9566k;
                                yVar3 = (y) fVar.f9565j;
                                i0 i0Var13 = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                i0Var6 = i0Var13;
                                bVar5 = bVar12;
                                i0Var9 = i0Var6;
                                a14 = cc.b.a(k0.a.b(aVar4).r(rVar4.a(), yVar3, (t0.b.C0202b) obj5));
                                bVar5.a(null);
                                if (a14.booleanValue()) {
                                }
                                return vb.p.f15031a;
                            case 6:
                                ad.b bVar13 = (ad.b) fVar.f9569n;
                                aVar5 = (k0.a) fVar.f9568m;
                                obj5 = (t0.b) fVar.f9567l;
                                r rVar11 = (r) fVar.f9566k;
                                y yVar13 = (y) fVar.f9565j;
                                i0Var5 = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                obj6 = d10;
                                rVar4 = rVar11;
                                bVar6 = bVar13;
                                fVar2 = fVar;
                                yVar4 = yVar13;
                                k0Var3 = k0.a.b(aVar5);
                                aVar10 = new u.a(((t0.b.a) obj5).a());
                                d10 = bVar6;
                                if (k0Var3.u(yVar4, aVar10)) {
                                }
                                k0Var3.k().put(yVar4, rVar4.b());
                                return vb.p.f15031a;
                            case 7:
                                k0Var = (k0) fVar.f9567l;
                                ad.b bVar14 = (ad.b) fVar.f9566k;
                                rVar5 = (r) fVar.f9565j;
                                yVar4 = (y) fVar.f9564i;
                                vb.k.b(obj11);
                                bVar8 = bVar14;
                                rVar4 = rVar5;
                                k0Var3 = k0Var;
                                d10 = bVar8;
                                k0Var3.k().put(yVar4, rVar4.b());
                                return vb.p.f15031a;
                            case 8:
                                ad.b bVar15 = (ad.b) fVar.f9574s;
                                aVar6 = (k0.a) fVar.f9573r;
                                yVar5 = (y) fVar.f9572q;
                                obj7 = (t0.b) fVar.f9571p;
                                aVar7 = (t0.a) fVar.f9570o;
                                uVar3 = (jc.u) fVar.f9569n;
                                xVar5 = (jc.x) fVar.f9568m;
                                vVar4 = (jc.v) fVar.f9567l;
                                rVar6 = (r) fVar.f9566k;
                                yVar6 = (y) fVar.f9565j;
                                i0Var5 = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                bVar7 = bVar15;
                                k0Var2 = k0.a.b(aVar6);
                                i13 = k0Var2.i(yVar5, rVar6.b());
                                if (i13 == null) {
                                }
                                break;
                            case 9:
                                k0Var2 = (k0) fVar.f9573r;
                                ad.b bVar16 = (ad.b) fVar.f9572q;
                                obj8 = (t0.b) fVar.f9571p;
                                aVar8 = (t0.a) fVar.f9570o;
                                uVar4 = (jc.u) fVar.f9569n;
                                xVar6 = (jc.x) fVar.f9568m;
                                vVar5 = (jc.v) fVar.f9567l;
                                rVar7 = (r) fVar.f9566k;
                                yVar7 = (y) fVar.f9565j;
                                i0Var7 = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                bVar10 = bVar16;
                                vb.p pVar22 = vb.p.f15031a;
                                i0Var5 = i0Var7;
                                yVar6 = yVar7;
                                rVar6 = rVar7;
                                vVar4 = vVar5;
                                xVar5 = xVar6;
                                uVar3 = uVar4;
                                r52 = bVar10;
                                v11 = i0Var5.v(k0Var2, yVar6, rVar6.a(), rVar6.c(yVar6) + vVar4.f9192f);
                                xVar5.f9194f = v11;
                                if (v11 == 0) {
                                }
                                v12 = k0Var2.v((t0.b.C0202b) obj8, yVar6);
                                fVar3 = i0Var5.f9515d;
                                fVar.f9564i = i0Var5;
                                fVar.f9565j = yVar6;
                                fVar.f9566k = rVar6;
                                fVar.f9567l = vVar4;
                                fVar.f9568m = xVar5;
                                fVar.f9569n = uVar3;
                                fVar.f9570o = aVar8;
                                fVar.f9571p = obj8;
                                fVar.f9572q = r52;
                                fVar.f9573r = null;
                                fVar.f9574s = null;
                                fVar.f9562g = 10;
                                if (fVar3.p(v12, fVar) == d10) {
                                }
                                break;
                            case 10:
                                ad.b bVar17 = (ad.b) fVar.f9572q;
                                obj9 = (t0.b) fVar.f9571p;
                                aVar9 = (t0.a) fVar.f9570o;
                                jc.u uVar9 = (jc.u) fVar.f9569n;
                                jc.x xVar10 = (jc.x) fVar.f9568m;
                                jc.v vVar11 = (jc.v) fVar.f9567l;
                                r rVar12 = (r) fVar.f9566k;
                                y yVar14 = (y) fVar.f9565j;
                                i0 i0Var14 = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                vVar6 = vVar11;
                                yVar2 = yVar14;
                                uVar5 = uVar9;
                                rVar8 = rVar12;
                                xVar7 = xVar10;
                                i0Var8 = i0Var14;
                                bVar9 = bVar17;
                                vb.p pVar32 = vb.p.f15031a;
                                bVar9.a(null);
                                if (aVar9 instanceof t0.a.c) {
                                    break;
                                }
                                if (aVar9 instanceof t0.a.C0201a) {
                                    break;
                                }
                                if (i0Var8.f9524m != null) {
                                    aVar11 = i0Var8.f9516e;
                                    a12 = k0.a.a(aVar11);
                                    fVar.f9564i = i0Var8;
                                    fVar.f9565j = yVar2;
                                    fVar.f9566k = rVar8;
                                    fVar.f9567l = vVar6;
                                    fVar.f9568m = xVar7;
                                    fVar.f9569n = uVar5;
                                    fVar.f9570o = aVar11;
                                    fVar.f9571p = a12;
                                    fVar.f9572q = null;
                                    fVar.f9575t = i11;
                                    fVar.f9576u = i12;
                                    fVar.f9562g = 11;
                                    if (a12.b(null, fVar) == d10) {
                                    }
                                    v0<Key, Value> g102 = k0.a.b(aVar11).g(i0Var8.f9513b);
                                    if (i11 != 0) {
                                    }
                                    if (i12 != 0) {
                                    }
                                }
                                r12 = i0Var8;
                                uVar = uVar5;
                                xVar = xVar7;
                                vVar2 = vVar6;
                                rVar3 = rVar8;
                                obj10 = xVar.f9194f;
                                if (obj10 != null) {
                                }
                                return vb.p.f15031a;
                            case 11:
                                i12 = fVar.f9576u;
                                i11 = fVar.f9575t;
                                a12 = (ad.b) fVar.f9571p;
                                aVar11 = (k0.a) fVar.f9570o;
                                uVar5 = (jc.u) fVar.f9569n;
                                xVar7 = (jc.x) fVar.f9568m;
                                vVar6 = (jc.v) fVar.f9567l;
                                rVar8 = (r) fVar.f9566k;
                                yVar2 = (y) fVar.f9565j;
                                i0Var8 = (i0) fVar.f9564i;
                                vb.k.b(obj11);
                                v0<Key, Value> g1022 = k0.a.b(aVar11).g(i0Var8.f9513b);
                                if (i11 != 0) {
                                }
                                if (i12 != 0) {
                                }
                                r12 = i0Var8;
                                uVar = uVar5;
                                xVar = xVar7;
                                vVar2 = vVar6;
                                rVar3 = rVar8;
                                obj10 = xVar.f9194f;
                                if (obj10 != null) {
                                }
                                return vb.p.f15031a;
                            default:
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }
                }
                switch (r52) {
                }
            } catch (Throwable th7) {
                th = th7;
                obj = null;
                bVar = d10;
            }
        } catch (Throwable th8) {
            th = th8;
        }
        fVar = new f(dVar);
        Object obj112 = fVar.f9561f;
        d10 = bc.c.d();
        r52 = fVar.f9562g;
    }

    public final uc.f<f0<Value>> r() {
        return this.f9518g;
    }

    public final t0<Key, Value> s() {
        return this.f9520i;
    }

    public final y0<Key, Value> t() {
        return this.f9524m;
    }

    public final t0.a<Key> u(y yVar, Key key) {
        return t0.a.f9799c.a(yVar, key, yVar == y.REFRESH ? this.f9521j.f9743d : this.f9521j.f9740a, this.f9521j.f9742c);
    }

    public final Key v(k0<Key, Value> k0Var, y yVar, int i10, int i11) {
        if (i10 != k0Var.j(yVar) || (k0Var.p().d(yVar) instanceof u.a) || i11 >= this.f9521j.f9741b) {
            return null;
        }
        if (yVar == y.PREPEND) {
            return (Key) ((t0.b.C0202b) wb.t.A(k0Var.m())).e();
        }
        return (Key) ((t0.b.C0202b) wb.t.H(k0Var.m())).d();
    }

    public final /* synthetic */ Object w(y yVar, h1 h1Var, ac.d<? super vb.p> dVar) {
        if (h0.f9491b[yVar.ordinal()] != 1) {
            if (h1Var != null) {
                this.f9512a.e(h1Var);
            } else {
                throw new IllegalStateException("Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint".toString());
            }
        } else {
            Object p10 = p(dVar);
            if (p10 == bc.c.d()) {
                return p10;
            }
        }
        return vb.p.f15031a;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ Object x(k0<Key, Value> k0Var, y yVar, ac.d<? super vb.p> dVar) {
        h hVar;
        int i10;
        if (dVar instanceof h) {
            hVar = (h) dVar;
            int i11 = hVar.f9611g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                hVar.f9611g = i11 - Integer.MIN_VALUE;
                Object obj = hVar.f9610f;
                Object d10 = bc.c.d();
                i10 = hVar.f9611g;
                if (i10 != 0) {
                    vb.k.b(obj);
                    u.b bVar = u.b.f9815b;
                    if (k0Var.u(yVar, bVar)) {
                        tc.f<f0<Value>> fVar = this.f9515d;
                        f0.c cVar = new f0.c(yVar, false, bVar);
                        hVar.f9611g = 1;
                        if (fVar.p(cVar, hVar) == d10) {
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
        hVar = new h(dVar);
        Object obj2 = hVar.f9610f;
        Object d102 = bc.c.d();
        i10 = hVar.f9611g;
        if (i10 != 0) {
        }
        return vb.p.f15031a;
    }

    public final void y(rc.q0 q0Var) {
        if (this.f9521j.f9745f != Integer.MIN_VALUE) {
            rc.k.d(q0Var, null, null, new i(null), 3, null);
        }
        rc.k.d(q0Var, null, null, new j(null), 3, null);
        rc.k.d(q0Var, null, null, new k(null), 3, null);
    }
}

package l1;

import cc.k;
import com.google.android.gms.common.api.Api;
import ic.p;
import ic.q;
import jc.l;
import jc.m;
import l1.c;
import rc.a0;
import rc.q0;
import tc.i;

/* compiled from: Multicaster.kt */
/* loaded from: classes.dex */
public final class e<T> {

    /* renamed from: a, reason: collision with root package name */
    public final vb.e f10231a;

    /* renamed from: b, reason: collision with root package name */
    public final uc.f<T> f10232b;

    /* renamed from: c, reason: collision with root package name */
    public final q0 f10233c;

    /* renamed from: d, reason: collision with root package name */
    public final uc.f<T> f10234d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10235e;

    /* renamed from: f, reason: collision with root package name */
    public final p<T, ac.d<? super vb.p>, Object> f10236f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f10237g;

    /* compiled from: Multicaster.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<c<T>> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f10239g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i10) {
            super(0);
            this.f10239g = i10;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final c<T> invoke() {
            return new c<>(e.this.f10233c, this.f10239g, e.this.f10235e, e.this.f10236f, e.this.f10237g, e.this.f10234d);
        }
    }

    /* compiled from: Multicaster.kt */
    @cc.f(c = "androidx.paging.multicast.Multicaster$flow$1", f = "Multicaster.kt", l = {100}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<uc.g<? super T>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f10240f;

        /* renamed from: g, reason: collision with root package name */
        public int f10241g;

        /* compiled from: Emitters.kt */
        @cc.f(c = "androidx.paging.multicast.Multicaster$flow$1$invokeSuspend$$inlined$transform$1", f = "Multicaster.kt", l = {215}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements p<uc.g<? super T>, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f10243f;

            /* renamed from: g, reason: collision with root package name */
            public int f10244g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ uc.f f10245h;

            /* compiled from: Collect.kt */
            /* renamed from: l1.e$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0226a implements uc.g<c.AbstractC0222c.b.C0224c<T>> {

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ uc.g f10247g;

                @cc.f(c = "androidx.paging.multicast.Multicaster$flow$1$invokeSuspend$$inlined$transform$1$1", f = "Multicaster.kt", l = {134}, m = "emit")
                /* renamed from: l1.e$b$a$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0227a extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f10248f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f10249g;

                    /* renamed from: i, reason: collision with root package name */
                    public Object f10251i;

                    public C0227a(ac.d dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f10248f = obj;
                        this.f10249g |= Integer.MIN_VALUE;
                        return C0226a.this.a(null, this);
                    }
                }

                public C0226a(uc.g gVar) {
                    this.f10247g = gVar;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override // uc.g
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Object a(Object obj, ac.d dVar) {
                    C0227a c0227a;
                    int i10;
                    c.AbstractC0222c.b.C0224c c0224c;
                    if (dVar instanceof C0227a) {
                        c0227a = (C0227a) dVar;
                        int i11 = c0227a.f10249g;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c0227a.f10249g = i11 - Integer.MIN_VALUE;
                            Object obj2 = c0227a.f10248f;
                            Object d10 = bc.c.d();
                            i10 = c0227a.f10249g;
                            if (i10 != 0) {
                                vb.k.b(obj2);
                                uc.g gVar = this.f10247g;
                                c0224c = (c.AbstractC0222c.b.C0224c) obj;
                                Object b10 = c0224c.b();
                                c0227a.f10251i = c0224c;
                                c0227a.f10249g = 1;
                                if (gVar.a(b10, c0227a) == d10) {
                                    return d10;
                                }
                            } else {
                                if (i10 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                c0224c = (c.AbstractC0222c.b.C0224c) c0227a.f10251i;
                                vb.k.b(obj2);
                            }
                            a0<vb.p> a10 = c0224c.a();
                            vb.p pVar = vb.p.f15031a;
                            a10.N(pVar);
                            return pVar;
                        }
                    }
                    c0227a = new C0227a(dVar);
                    Object obj22 = c0227a.f10248f;
                    Object d102 = bc.c.d();
                    i10 = c0227a.f10249g;
                    if (i10 != 0) {
                    }
                    a0<vb.p> a102 = c0224c.a();
                    vb.p pVar2 = vb.p.f15031a;
                    a102.N(pVar2);
                    return pVar2;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(uc.f fVar, ac.d dVar) {
                super(2, dVar);
                this.f10245h = fVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f10245h, dVar);
                aVar.f10243f = obj;
                return aVar;
            }

            @Override // ic.p
            public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
                return ((a) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f10244g;
                if (i10 == 0) {
                    vb.k.b(obj);
                    uc.g gVar = (uc.g) this.f10243f;
                    uc.f fVar = this.f10245h;
                    C0226a c0226a = new C0226a(gVar);
                    this.f10244g = 1;
                    if (fVar.b(c0226a, this) == d10) {
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

        /* compiled from: Multicaster.kt */
        @cc.f(c = "androidx.paging.multicast.Multicaster$flow$1$subFlow$1", f = "Multicaster.kt", l = {78}, m = "invokeSuspend")
        /* renamed from: l1.e$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0228b extends k implements p<uc.g<? super c.AbstractC0222c.b.C0224c<T>>, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10252f;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ tc.f f10254h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0228b(tc.f fVar, ac.d dVar) {
                super(2, dVar);
                this.f10254h = fVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                l.f(dVar, "completion");
                return new C0228b(this.f10254h, dVar);
            }

            @Override // ic.p
            public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
                return ((C0228b) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f10252f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    l1.c h10 = e.this.h();
                    tc.f fVar = this.f10254h;
                    this.f10252f = 1;
                    if (h10.g(fVar, this) == d10) {
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

        /* compiled from: Multicaster.kt */
        @cc.f(c = "androidx.paging.multicast.Multicaster$flow$1$subFlow$3", f = "Multicaster.kt", l = {84}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class c extends k implements q<uc.g<? super T>, Throwable, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10255f;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ tc.f f10257h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(tc.f fVar, ac.d dVar) {
                super(3, dVar);
                this.f10257h = fVar;
            }

            public final ac.d<vb.p> f(uc.g<? super T> gVar, Throwable th, ac.d<? super vb.p> dVar) {
                l.f(gVar, "$this$create");
                l.f(dVar, "continuation");
                return new c(this.f10257h, dVar);
            }

            @Override // ic.q
            public final Object i(Object obj, Throwable th, ac.d<? super vb.p> dVar) {
                return ((c) f((uc.g) obj, th, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f10255f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    l1.c h10 = e.this.h();
                    tc.f fVar = this.f10257h;
                    this.f10255f = 1;
                    if (h10.i(fVar, this) == d10) {
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

        public b(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            l.f(dVar, "completion");
            b bVar = new b(dVar);
            bVar.f10240f = obj;
            return bVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((b) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10241g;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.g<? super T> gVar = (uc.g) this.f10240f;
                tc.f b10 = i.b(Api.BaseClientBuilder.API_PRIORITY_OTHER, null, null, 6, null);
                uc.f v10 = uc.h.v(uc.h.q(new a(uc.h.x(uc.h.i(b10), new C0228b(b10, null)), null)), new c(b10, null));
                this.f10241g = 1;
                if (v10.b(gVar, this) == d10) {
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
    public e(q0 q0Var, int i10, uc.f<? extends T> fVar, boolean z10, p<? super T, ? super ac.d<? super vb.p>, ? extends Object> pVar, boolean z11) {
        l.f(q0Var, "scope");
        l.f(fVar, "source");
        l.f(pVar, "onEach");
        this.f10233c = q0Var;
        this.f10234d = fVar;
        this.f10235e = z10;
        this.f10236f = pVar;
        this.f10237g = z11;
        this.f10231a = vb.f.b(vb.g.SYNCHRONIZED, new a(i10));
        this.f10232b = uc.h.q(new b(null));
    }

    public final Object g(ac.d<? super vb.p> dVar) {
        Object h10 = h().h(dVar);
        return h10 == bc.c.d() ? h10 : vb.p.f15031a;
    }

    public final c<T> h() {
        return (c) this.f10231a.getValue();
    }

    public final uc.f<T> i() {
        return this.f10232b;
    }

    public /* synthetic */ e(q0 q0Var, int i10, uc.f fVar, boolean z10, p pVar, boolean z11, int i11, jc.g gVar) {
        this(q0Var, (i11 & 2) != 0 ? 0 : i10, fVar, (i11 & 8) != 0 ? false : z10, pVar, (i11 & 32) != 0 ? false : z11);
    }
}

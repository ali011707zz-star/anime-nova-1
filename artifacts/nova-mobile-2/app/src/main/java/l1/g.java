package l1;

import cc.k;
import ic.p;
import ic.q;
import jc.l;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import l1.c;
import rc.a0;
import rc.c0;
import rc.c2;
import rc.f2;
import rc.q0;
import rc.s0;

/* compiled from: SharedFlowProducer.kt */
/* loaded from: classes.dex */
public final class g<T> {

    /* renamed from: a, reason: collision with root package name */
    public final c2 f10258a;

    /* renamed from: b, reason: collision with root package name */
    public final q0 f10259b;

    /* renamed from: c, reason: collision with root package name */
    public final uc.f<T> f10260c;

    /* renamed from: d, reason: collision with root package name */
    public final p<c.AbstractC0222c.b<T>, ac.d<? super vb.p>, Object> f10261d;

    /* compiled from: SharedFlowProducer.kt */
    @cc.f(c = "androidx.paging.multicast.SharedFlowProducer$collectionJob$1", f = "SharedFlowProducer.kt", l = {97}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f10262f;

        /* compiled from: SharedFlowProducer.kt */
        @cc.f(c = "androidx.paging.multicast.SharedFlowProducer$collectionJob$1$1", f = "SharedFlowProducer.kt", l = {50}, m = "invokeSuspend")
        /* renamed from: l1.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0229a extends k implements q<uc.g<? super T>, Throwable, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f10264f;

            /* renamed from: g, reason: collision with root package name */
            public int f10265g;

            public C0229a(ac.d dVar) {
                super(3, dVar);
            }

            public final ac.d<vb.p> f(uc.g<? super T> gVar, Throwable th, ac.d<? super vb.p> dVar) {
                l.f(gVar, "$this$create");
                l.f(th, "it");
                l.f(dVar, "continuation");
                C0229a c0229a = new C0229a(dVar);
                c0229a.f10264f = th;
                return c0229a;
            }

            @Override // ic.q
            public final Object i(Object obj, Throwable th, ac.d<? super vb.p> dVar) {
                return ((C0229a) f((uc.g) obj, th, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f10265g;
                if (i10 == 0) {
                    vb.k.b(obj);
                    Throwable th = (Throwable) this.f10264f;
                    p pVar = g.this.f10261d;
                    c.AbstractC0222c.b.a aVar = new c.AbstractC0222c.b.a(th);
                    this.f10265g = 1;
                    if (pVar.invoke(aVar, this) == d10) {
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
        public static final class b implements uc.g<T> {

            @cc.f(c = "androidx.paging.multicast.SharedFlowProducer$collectionJob$1$invokeSuspend$$inlined$collect$1", f = "SharedFlowProducer.kt", l = {135, 141}, m = "emit")
            /* renamed from: l1.g$a$b$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0230a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f10268f;

                /* renamed from: g, reason: collision with root package name */
                public int f10269g;

                /* renamed from: i, reason: collision with root package name */
                public Object f10271i;

                public C0230a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f10268f = obj;
                    this.f10269g |= Integer.MIN_VALUE;
                    return b.this.a(null, this);
                }
            }

            public b() {
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0067 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0230a c0230a;
                Object d10;
                int i10;
                a0 a0Var;
                if (dVar instanceof C0230a) {
                    c0230a = (C0230a) dVar;
                    int i11 = c0230a.f10269g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0230a.f10269g = i11 - Integer.MIN_VALUE;
                        Object obj2 = c0230a.f10268f;
                        d10 = bc.c.d();
                        i10 = c0230a.f10269g;
                        if (i10 != 0) {
                            vb.k.b(obj2);
                            a0 b10 = c0.b(null, 1, null);
                            p pVar = g.this.f10261d;
                            c.AbstractC0222c.b.C0224c c0224c = new c.AbstractC0222c.b.C0224c(obj, b10);
                            c0230a.f10271i = b10;
                            c0230a.f10269g = 1;
                            if (pVar.invoke(c0224c, c0230a) == d10) {
                                return d10;
                            }
                            a0Var = b10;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                vb.k.b(obj2);
                                return vb.p.f15031a;
                            }
                            a0Var = (a0) c0230a.f10271i;
                            vb.k.b(obj2);
                        }
                        c0230a.f10271i = null;
                        c0230a.f10269g = 2;
                        if (a0Var.k0(c0230a) == d10) {
                            return d10;
                        }
                        return vb.p.f15031a;
                    }
                }
                c0230a = new C0230a(dVar);
                Object obj22 = c0230a.f10268f;
                d10 = bc.c.d();
                i10 = c0230a.f10269g;
                if (i10 != 0) {
                }
                c0230a.f10271i = null;
                c0230a.f10269g = 2;
                if (a0Var.k0(c0230a) == d10) {
                }
                return vb.p.f15031a;
            }
        }

        public a(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            l.f(dVar, "completion");
            return new a(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10262f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    uc.f d11 = uc.h.d(g.this.f10260c, new C0229a(null));
                    b bVar = new b();
                    this.f10262f = 1;
                    if (d11.b(bVar, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
            } catch (ClosedSendChannelException unused) {
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: SharedFlowProducer.kt */
    @cc.f(c = "androidx.paging.multicast.SharedFlowProducer$start$1", f = "SharedFlowProducer.kt", l = {75, 80, 80}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f10272f;

        /* renamed from: g, reason: collision with root package name */
        public int f10273g;

        public b(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            l.f(dVar, "completion");
            return new b(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v2, types: [l1.g] */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10273g;
            int i11 = 3;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    c2 c2Var = g.this.f10258a;
                    this.f10273g = 1;
                    if (c2Var.U(this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            vb.k.b(obj);
                            return vb.p.f15031a;
                        }
                        if (i10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        Throwable th = (Throwable) this.f10272f;
                        try {
                            vb.k.b(obj);
                            throw th;
                        } catch (ClosedSendChannelException unused) {
                            throw th;
                        }
                    }
                    vb.k.b(obj);
                }
                p pVar = g.this.f10261d;
                i11 = g.this;
                c.AbstractC0222c.b.C0223b c0223b = new c.AbstractC0222c.b.C0223b(i11);
                this.f10273g = 2;
                if (pVar.invoke(c0223b, this) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            } catch (Throwable th2) {
                try {
                    p pVar2 = g.this.f10261d;
                    c.AbstractC0222c.b.C0223b c0223b2 = new c.AbstractC0222c.b.C0223b(g.this);
                    this.f10272f = th2;
                    this.f10273g = i11;
                    if (pVar2.invoke(c0223b2, this) == d10) {
                        return d10;
                    }
                } catch (ClosedSendChannelException unused2) {
                }
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(q0 q0Var, uc.f<? extends T> fVar, p<? super c.AbstractC0222c.b<T>, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        c2 d10;
        l.f(q0Var, "scope");
        l.f(fVar, "src");
        l.f(pVar, "sendUpsteamMessage");
        this.f10259b = q0Var;
        this.f10260c = fVar;
        this.f10261d = pVar;
        d10 = rc.k.d(q0Var, null, s0.LAZY, new a(null), 1, null);
        this.f10258a = d10;
    }

    public final void d() {
        c2.a.a(this.f10258a, null, 1, null);
    }

    public final Object e(ac.d<? super vb.p> dVar) {
        Object e10 = f2.e(this.f10258a, dVar);
        return e10 == bc.c.d() ? e10 : vb.p.f15031a;
    }

    public final void f() {
        rc.k.d(this.f10259b, null, null, new b(null), 3, null);
    }
}

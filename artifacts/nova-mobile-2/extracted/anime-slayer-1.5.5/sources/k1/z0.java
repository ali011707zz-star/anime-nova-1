package k1;

import rc.c2;
import tc.x;

/* compiled from: SimpleChannelFlow.kt */
/* loaded from: classes.dex */
public final class z0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SimpleChannelFlow.kt */
    @cc.f(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1", f = "SimpleChannelFlow.kt", l = {46}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a<T> extends cc.k implements ic.p<uc.g<? super T>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9847f;

        /* renamed from: g, reason: collision with root package name */
        public int f9848g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ic.p f9849h;

        /* compiled from: SimpleChannelFlow.kt */
        @cc.f(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1", f = "SimpleChannelFlow.kt", l = {64, 65}, m = "invokeSuspend")
        /* renamed from: k1.z0$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0203a extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9850f;

            /* renamed from: g, reason: collision with root package name */
            public Object f9851g;

            /* renamed from: h, reason: collision with root package name */
            public int f9852h;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ uc.g f9854j;

            /* compiled from: SimpleChannelFlow.kt */
            @cc.f(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1", f = "SimpleChannelFlow.kt", l = {52}, m = "invokeSuspend")
            /* renamed from: k1.z0$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0204a extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

                /* renamed from: f, reason: collision with root package name */
                public int f9855f;

                /* renamed from: h, reason: collision with root package name */
                public final /* synthetic */ tc.f f9857h;

                /* compiled from: SimpleChannelFlow.kt */
                @cc.f(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1$1", f = "SimpleChannelFlow.kt", l = {57}, m = "invokeSuspend")
                /* renamed from: k1.z0$a$a$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0205a extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f9858f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f9859g;

                    public C0205a(ac.d dVar) {
                        super(2, dVar);
                    }

                    @Override // cc.a
                    public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                        jc.l.f(dVar, "completion");
                        C0205a c0205a = new C0205a(dVar);
                        c0205a.f9858f = obj;
                        return c0205a;
                    }

                    @Override // ic.p
                    public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                        return ((C0205a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        Object d10 = bc.c.d();
                        int i10 = this.f9859g;
                        if (i10 == 0) {
                            vb.k.b(obj);
                            b1 b1Var = new b1((rc.q0) this.f9858f, C0204a.this.f9857h);
                            ic.p pVar = a.this.f9849h;
                            this.f9859g = 1;
                            if (pVar.invoke(b1Var, this) == d10) {
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

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0204a(tc.f fVar, ac.d dVar) {
                    super(2, dVar);
                    this.f9857h = fVar;
                }

                @Override // cc.a
                public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                    jc.l.f(dVar, "completion");
                    return new C0204a(this.f9857h, dVar);
                }

                @Override // ic.p
                public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                    return ((C0204a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    Object d10 = bc.c.d();
                    int i10 = this.f9855f;
                    try {
                        if (i10 == 0) {
                            vb.k.b(obj);
                            C0205a c0205a = new C0205a(null);
                            this.f9855f = 1;
                            if (rc.r0.e(c0205a, this) == d10) {
                                return d10;
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            vb.k.b(obj);
                        }
                        x.a.a(this.f9857h, null, 1, null);
                    } catch (Throwable th) {
                        this.f9857h.g(th);
                    }
                    return vb.p.f15031a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0203a(uc.g gVar, ac.d dVar) {
                super(2, dVar);
                this.f9854j = gVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                C0203a c0203a = new C0203a(this.f9854j, dVar);
                c0203a.f9850f = obj;
                return c0203a;
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0203a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:11:0x005f  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x006c  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x0083  */
            /* JADX WARN: Removed duplicated region for block: B:9:0x005e A[RETURN] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007f -> B:7:0x0052). Please report as a decompilation issue!!! */
            @Override // cc.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                c2 d10;
                tc.h it2;
                C0203a c0203a;
                Object a10;
                Object d11 = bc.c.d();
                int i10 = this.f9852h;
                if (i10 == 0) {
                    vb.k.b(obj);
                    rc.q0 q0Var = (rc.q0) this.f9850f;
                    tc.f b10 = tc.i.b(0, null, null, 6, null);
                    d10 = rc.k.d(q0Var, null, null, new C0204a(b10, null), 3, null);
                    it2 = b10.iterator();
                } else if (i10 == 1) {
                    tc.h hVar = (tc.h) this.f9851g;
                    c2 c2Var = (c2) this.f9850f;
                    vb.k.b(obj);
                    C0203a c0203a2 = this;
                    if (!((Boolean) obj).booleanValue()) {
                        Object next = hVar.next();
                        uc.g gVar = c0203a2.f9854j;
                        c0203a2.f9850f = c2Var;
                        c0203a2.f9851g = hVar;
                        c0203a2.f9852h = 2;
                        if (gVar.a(next, c0203a2) == d11) {
                            return d11;
                        }
                        it2 = hVar;
                        d10 = c2Var;
                        c0203a = c0203a2;
                        c0203a.f9850f = d10;
                        c0203a.f9851g = it2;
                        c0203a.f9852h = 1;
                        a10 = it2.a(c0203a);
                        if (a10 != d11) {
                            return d11;
                        }
                        c2 c2Var2 = d10;
                        hVar = it2;
                        obj = a10;
                        c0203a2 = c0203a;
                        c2Var = c2Var2;
                        if (!((Boolean) obj).booleanValue()) {
                            c2.a.a(c2Var, null, 1, null);
                            return vb.p.f15031a;
                        }
                    }
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    tc.h hVar2 = (tc.h) this.f9851g;
                    c2 c2Var3 = (c2) this.f9850f;
                    vb.k.b(obj);
                    it2 = hVar2;
                    d10 = c2Var3;
                }
                c0203a = this;
                c0203a.f9850f = d10;
                c0203a.f9851g = it2;
                c0203a.f9852h = 1;
                a10 = it2.a(c0203a);
                if (a10 != d11) {
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ic.p pVar, ac.d dVar) {
            super(2, dVar);
            this.f9849h = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            a aVar = new a(this.f9849h, dVar);
            aVar.f9847f = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((a) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9848g;
            if (i10 == 0) {
                vb.k.b(obj);
                C0203a c0203a = new C0203a((uc.g) this.f9847f, null);
                this.f9848g = 1;
                if (rc.r0.e(c0203a, this) == d10) {
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

    public static final <T> uc.f<T> a(ic.p<? super a1<T>, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        uc.f<T> b10;
        jc.l.f(pVar, "block");
        b10 = uc.l.b(uc.h.q(new a(pVar, null)), -2, null, 2, null);
        return b10;
    }
}

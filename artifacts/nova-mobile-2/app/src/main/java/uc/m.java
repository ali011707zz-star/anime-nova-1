package uc;

import rc.q0;
import rc.u0;
import tc.j;

/* compiled from: Delay.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class m {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Delay.kt */
    @cc.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", l = {224, 358}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a<T> extends cc.k implements ic.q<q0, g<? super T>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f14570f;

        /* renamed from: g, reason: collision with root package name */
        public Object f14571g;

        /* renamed from: h, reason: collision with root package name */
        public int f14572h;

        /* renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f14573i;

        /* renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f14574j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ ic.l<T, Long> f14575k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ f<T> f14576l;

        /* compiled from: Delay.kt */
        @cc.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1", f = "Delay.kt", l = {235}, m = "invokeSuspend")
        /* renamed from: uc.m$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0374a extends cc.k implements ic.l<ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f14577f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ g<T> f14578g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ jc.x<Object> f14579h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0374a(g<? super T> gVar, jc.x<Object> xVar, ac.d<? super C0374a> dVar) {
                super(1, dVar);
                this.f14578g = gVar;
                this.f14579h = xVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(ac.d<?> dVar) {
                return new C0374a(this.f14578g, this.f14579h, dVar);
            }

            @Override // ic.l
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(ac.d<? super vb.p> dVar) {
                return ((C0374a) create(dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f14577f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    g<T> gVar = this.f14578g;
                    wc.a0 a0Var = vc.o.f15083a;
                    T t10 = this.f14579h.f9194f;
                    if (t10 == a0Var) {
                        t10 = null;
                    }
                    this.f14577f = 1;
                    if (gVar.a(t10, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                this.f14579h.f9194f = null;
                return vb.p.f15031a;
            }
        }

        /* compiled from: Delay.kt */
        @cc.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", l = {245}, m = "invokeSuspend")
        /* loaded from: classes2.dex */
        public static final class b extends cc.k implements ic.p<tc.j<? extends Object>, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public Object f14580f;

            /* renamed from: g, reason: collision with root package name */
            public int f14581g;

            /* renamed from: h, reason: collision with root package name */
            public /* synthetic */ Object f14582h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ jc.x<Object> f14583i;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ g<T> f14584j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public b(jc.x<Object> xVar, g<? super T> gVar, ac.d<? super b> dVar) {
                super(2, dVar);
                this.f14583i = xVar;
                this.f14584j = gVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                b bVar = new b(this.f14583i, this.f14584j, dVar);
                bVar.f14582h = obj;
                return bVar;
            }

            public final Object f(Object obj, ac.d<? super vb.p> dVar) {
                return ((b) create(tc.j.b(obj), dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // ic.p
            public /* bridge */ /* synthetic */ Object invoke(tc.j<? extends Object> jVar, ac.d<? super vb.p> dVar) {
                return f(jVar.k(), dVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                jc.x<Object> xVar;
                jc.x<Object> xVar2;
                Object d10 = bc.c.d();
                int i10 = this.f14581g;
                if (i10 == 0) {
                    vb.k.b(obj);
                    T t10 = (T) ((tc.j) this.f14582h).k();
                    xVar = this.f14583i;
                    boolean z10 = t10 instanceof j.c;
                    if (!z10) {
                        xVar.f9194f = t10;
                    }
                    g<T> gVar = this.f14584j;
                    if (z10) {
                        Throwable e10 = tc.j.e(t10);
                        if (e10 == null) {
                            Object obj2 = xVar.f9194f;
                            if (obj2 != null) {
                                if (obj2 == vc.o.f15083a) {
                                    obj2 = null;
                                }
                                this.f14582h = t10;
                                this.f14580f = xVar;
                                this.f14581g = 1;
                                if (gVar.a(obj2, this) == d10) {
                                    return d10;
                                }
                                xVar2 = xVar;
                            }
                            xVar.f9194f = (T) vc.o.f15085c;
                        } else {
                            throw e10;
                        }
                    }
                    return vb.p.f15031a;
                }
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                xVar2 = (jc.x) this.f14580f;
                vb.k.b(obj);
                xVar = xVar2;
                xVar.f9194f = (T) vc.o.f15085c;
                return vb.p.f15031a;
            }
        }

        /* compiled from: Delay.kt */
        @cc.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1", f = "Delay.kt", l = {352}, m = "invokeSuspend")
        /* loaded from: classes2.dex */
        public static final class c extends cc.k implements ic.p<tc.r<? super Object>, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f14585f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f14586g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ f<T> f14587h;

            /* compiled from: Collect.kt */
            /* renamed from: uc.m$a$c$a, reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0375a implements g<T> {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ tc.r f14588f;

                public C0375a(tc.r rVar) {
                    this.f14588f = rVar;
                }

                @Override // uc.g
                public Object a(T t10, ac.d<? super vb.p> dVar) {
                    tc.r rVar = this.f14588f;
                    if (t10 == null) {
                        t10 = (T) vc.o.f15083a;
                    }
                    Object p10 = rVar.p(t10, dVar);
                    return p10 == bc.c.d() ? p10 : vb.p.f15031a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public c(f<? extends T> fVar, ac.d<? super c> dVar) {
                super(2, dVar);
                this.f14587h = fVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                c cVar = new c(this.f14587h, dVar);
                cVar.f14586g = obj;
                return cVar;
            }

            @Override // ic.p
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(tc.r<Object> rVar, ac.d<? super vb.p> dVar) {
                return ((c) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f14585f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    tc.r rVar = (tc.r) this.f14586g;
                    f<T> fVar = this.f14587h;
                    C0375a c0375a = new C0375a(rVar);
                    this.f14585f = 1;
                    if (fVar.b(c0375a, this) == d10) {
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
        /* JADX WARN: Multi-variable type inference failed */
        public a(ic.l<? super T, Long> lVar, f<? extends T> fVar, ac.d<? super a> dVar) {
            super(3, dVar);
            this.f14575k = lVar;
            this.f14576l = fVar;
        }

        @Override // ic.q
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object i(q0 q0Var, g<? super T> gVar, ac.d<? super vb.p> dVar) {
            a aVar = new a(this.f14575k, this.f14576l, dVar);
            aVar.f14573i = q0Var;
            aVar.f14574j = gVar;
            return aVar.invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(13:61|26|30|31|(3:33|(1:41)(1:37)|(2:39|40))|42|43|44|(1:46)|47|48|(1:50)|(1:52)(1:53)) */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0117, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0118, code lost:
        
            r13.Z(r0);
         */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0100 A[Catch: all -> 0x0117, TryCatch #0 {all -> 0x0117, blocks: (B:44:0x00fc, B:46:0x0100, B:47:0x010a), top: B:43:0x00fc }] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0125  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x012a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x012b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x012b -> B:6:0x0072). Please report as a decompilation issue!!! */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            g gVar;
            a<T> aVar;
            tc.t e10;
            jc.x xVar;
            jc.w wVar;
            Object obj2;
            Object Y;
            Object d10 = bc.c.d();
            int i10 = this.f14572h;
            if (i10 == 0) {
                vb.k.b(obj);
                q0 q0Var = (q0) this.f14573i;
                gVar = (g) this.f14574j;
                aVar = this;
                e10 = tc.p.e(q0Var, null, 0, new c(this.f14576l, null), 3, null);
                xVar = new jc.x();
            } else if (i10 == 1) {
                jc.w wVar2 = (jc.w) this.f14571g;
                xVar = (jc.x) this.f14570f;
                e10 = (tc.t) this.f14574j;
                gVar = (g) this.f14573i;
                vb.k.b(obj);
                wVar = wVar2;
                aVar = this;
                xVar.f9194f = null;
                a<T> aVar2 = aVar;
                obj2 = d10;
                jc.w wVar3 = wVar;
                g gVar2 = gVar;
                tc.t tVar = e10;
                if (u0.a()) {
                    if (!(xVar.f9194f == null || wVar3.f9193f > 0)) {
                        throw new AssertionError();
                    }
                }
                aVar2.f14573i = gVar2;
                aVar2.f14574j = tVar;
                aVar2.f14570f = xVar;
                aVar2.f14571g = wVar3;
                aVar2.f14572h = 2;
                zc.b bVar = new zc.b(aVar2);
                if (xVar.f9194f != null) {
                    bVar.a(wVar3.f9193f, new C0374a(gVar2, xVar, null));
                }
                bVar.g(tVar.j(), new b(xVar, gVar2, null));
                Y = bVar.Y();
                if (Y == bc.c.d()) {
                    cc.h.c(aVar2);
                }
                if (Y != obj2) {
                    return obj2;
                }
                d10 = obj2;
                aVar = aVar2;
                e10 = tVar;
                gVar = gVar2;
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                jc.x xVar2 = (jc.x) this.f14570f;
                tc.t tVar2 = (tc.t) this.f14574j;
                g gVar3 = (g) this.f14573i;
                vb.k.b(obj);
                gVar = gVar3;
                e10 = tVar2;
                xVar = xVar2;
                aVar = this;
            }
            if (xVar.f9194f != vc.o.f15085c) {
                wVar = new jc.w();
                T t10 = xVar.f9194f;
                if (t10 != null) {
                    ic.l<T, Long> lVar = aVar.f14575k;
                    wc.a0 a0Var = vc.o.f15083a;
                    if (t10 == a0Var) {
                        t10 = null;
                    }
                    long longValue = lVar.invoke(t10).longValue();
                    wVar.f9193f = longValue;
                    if (!(longValue >= 0)) {
                        throw new IllegalArgumentException("Debounce timeout should not be negative".toString());
                    }
                    if (longValue == 0) {
                        T t11 = xVar.f9194f;
                        if (t11 == a0Var) {
                            t11 = null;
                        }
                        aVar.f14573i = gVar;
                        aVar.f14574j = e10;
                        aVar.f14570f = xVar;
                        aVar.f14571g = wVar;
                        aVar.f14572h = 1;
                        if (gVar.a(t11, aVar) == d10) {
                            return d10;
                        }
                        xVar.f9194f = null;
                    }
                }
                a<T> aVar22 = aVar;
                obj2 = d10;
                jc.w wVar32 = wVar;
                g gVar22 = gVar;
                tc.t tVar3 = e10;
                if (u0.a()) {
                }
                aVar22.f14573i = gVar22;
                aVar22.f14574j = tVar3;
                aVar22.f14570f = xVar;
                aVar22.f14571g = wVar32;
                aVar22.f14572h = 2;
                zc.b bVar2 = new zc.b(aVar22);
                if (xVar.f9194f != null) {
                }
                bVar2.g(tVar3.j(), new b(xVar, gVar22, null));
                Y = bVar2.Y();
                if (Y == bc.c.d()) {
                }
                if (Y != obj2) {
                }
            } else {
                return vb.p.f15031a;
            }
        }
    }

    public static final <T> f<T> a(f<? extends T> fVar, ic.l<? super T, Long> lVar) {
        return b(fVar, lVar);
    }

    public static final <T> f<T> b(f<? extends T> fVar, ic.l<? super T, Long> lVar) {
        return vc.k.b(new a(lVar, fVar, null));
    }
}

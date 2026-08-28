package uc;

/* compiled from: Emitters.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class o {

    /* compiled from: Emitters.kt */
    @cc.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", f = "Emitters.kt", l = {216}, m = "invokeSafely$FlowKt__EmittersKt")
    /* loaded from: classes2.dex */
    public static final class a<T> extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f14593f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f14594g;

        /* renamed from: h, reason: collision with root package name */
        public int f14595h;

        public a(ac.d<? super a> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14594g = obj;
            this.f14595h |= Integer.MIN_VALUE;
            return o.c(null, null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class b<T> implements f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f f14596f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ic.q f14597g;

        @cc.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {114, 121, 128}, m = "collect")
        /* loaded from: classes2.dex */
        public static final class a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f14598f;

            /* renamed from: g, reason: collision with root package name */
            public int f14599g;

            /* renamed from: i, reason: collision with root package name */
            public Object f14601i;

            /* renamed from: j, reason: collision with root package name */
            public Object f14602j;

            public a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f14598f = obj;
                this.f14599g |= Integer.MIN_VALUE;
                return b.this.b(null, this);
            }
        }

        public b(f fVar, ic.q qVar) {
            this.f14596f = fVar;
            this.f14597g = qVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0086 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ab A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
        @Override // uc.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
            a aVar;
            Object d10;
            int i10;
            b<T> bVar;
            f0 f0Var;
            ic.q qVar;
            vc.p pVar;
            Throwable th;
            vc.p pVar2;
            Object i11;
            try {
                if (dVar instanceof a) {
                    aVar = (a) dVar;
                    int i12 = aVar.f14599g;
                    if ((i12 & Integer.MIN_VALUE) != 0) {
                        aVar.f14599g = i12 - Integer.MIN_VALUE;
                        Object obj = aVar.f14598f;
                        d10 = bc.c.d();
                        i10 = aVar.f14599g;
                        if (i10 != 0) {
                            vb.k.b(obj);
                            try {
                                f fVar = this.f14596f;
                                aVar.f14601i = this;
                                aVar.f14602j = gVar;
                                aVar.f14599g = 1;
                                if (fVar.b(gVar, aVar) == d10) {
                                    return d10;
                                }
                                bVar = this;
                            } catch (Throwable th2) {
                                th = th2;
                                bVar = this;
                                f0Var = new f0(th);
                                qVar = bVar.f14597g;
                                aVar.f14601i = th;
                                aVar.f14602j = null;
                                aVar.f14599g = 2;
                                if (o.c(f0Var, qVar, th, aVar) != d10) {
                                }
                            }
                        } else {
                            if (i10 != 1) {
                                if (i10 == 2) {
                                    Throwable th3 = (Throwable) aVar.f14601i;
                                    vb.k.b(obj);
                                    throw th3;
                                }
                                if (i10 != 3) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                pVar2 = (vc.p) aVar.f14601i;
                                try {
                                    vb.k.b(obj);
                                    pVar2.releaseIntercepted();
                                    return vb.p.f15031a;
                                } catch (Throwable th4) {
                                    th = th4;
                                    pVar2.releaseIntercepted();
                                    throw th;
                                }
                            }
                            gVar = (g) aVar.f14602j;
                            bVar = (b) aVar.f14601i;
                            try {
                                vb.k.b(obj);
                            } catch (Throwable th5) {
                                th = th5;
                                f0Var = new f0(th);
                                qVar = bVar.f14597g;
                                aVar.f14601i = th;
                                aVar.f14602j = null;
                                aVar.f14599g = 2;
                                if (o.c(f0Var, qVar, th, aVar) != d10) {
                                    return d10;
                                }
                                throw th;
                            }
                        }
                        pVar = new vc.p(gVar, aVar.getContext());
                        ic.q qVar2 = bVar.f14597g;
                        aVar.f14601i = pVar;
                        aVar.f14602j = null;
                        aVar.f14599g = 3;
                        jc.k.c(6);
                        i11 = qVar2.i(pVar, null, aVar);
                        jc.k.c(7);
                        if (i11 != d10) {
                            return d10;
                        }
                        pVar2 = pVar;
                        pVar2.releaseIntercepted();
                        return vb.p.f15031a;
                    }
                }
                ic.q qVar22 = bVar.f14597g;
                aVar.f14601i = pVar;
                aVar.f14602j = null;
                aVar.f14599g = 3;
                jc.k.c(6);
                i11 = qVar22.i(pVar, null, aVar);
                jc.k.c(7);
                if (i11 != d10) {
                }
            } catch (Throwable th6) {
                th = th6;
                pVar2 = pVar;
                pVar2.releaseIntercepted();
                throw th;
            }
            aVar = new a(dVar);
            Object obj2 = aVar.f14598f;
            d10 = bc.c.d();
            i10 = aVar.f14599g;
            if (i10 != 0) {
            }
            pVar = new vc.p(gVar, aVar.getContext());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class c<T> implements f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.p f14603f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ f f14604g;

        @cc.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {116, 120}, m = "collect")
        /* loaded from: classes2.dex */
        public static final class a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f14605f;

            /* renamed from: g, reason: collision with root package name */
            public int f14606g;

            /* renamed from: i, reason: collision with root package name */
            public Object f14608i;

            /* renamed from: j, reason: collision with root package name */
            public Object f14609j;

            /* renamed from: k, reason: collision with root package name */
            public Object f14610k;

            public a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f14605f = obj;
                this.f14606g |= Integer.MIN_VALUE;
                return c.this.b(null, this);
            }
        }

        public c(ic.p pVar, f fVar) {
            this.f14603f = pVar;
            this.f14604g = fVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0082 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override // uc.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
            a aVar;
            Object d10;
            int i10;
            Throwable th;
            vc.p pVar;
            c<T> cVar;
            g<? super T> gVar2;
            f fVar;
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i11 = aVar.f14606g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f14606g = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f14605f;
                    d10 = bc.c.d();
                    i10 = aVar.f14606g;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        vc.p pVar2 = new vc.p(gVar, aVar.getContext());
                        try {
                            ic.p pVar3 = this.f14603f;
                            aVar.f14608i = this;
                            aVar.f14609j = gVar;
                            aVar.f14610k = pVar2;
                            aVar.f14606g = 1;
                            jc.k.c(6);
                            Object invoke = pVar3.invoke(pVar2, aVar);
                            jc.k.c(7);
                            if (invoke == d10) {
                                return d10;
                            }
                            cVar = this;
                            gVar2 = gVar;
                            pVar = pVar2;
                        } catch (Throwable th2) {
                            th = th2;
                            pVar = pVar2;
                            pVar.releaseIntercepted();
                            throw th;
                        }
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            vb.k.b(obj);
                            return vb.p.f15031a;
                        }
                        pVar = (vc.p) aVar.f14610k;
                        gVar2 = (g) aVar.f14609j;
                        cVar = (c) aVar.f14608i;
                        try {
                            vb.k.b(obj);
                        } catch (Throwable th3) {
                            th = th3;
                            pVar.releaseIntercepted();
                            throw th;
                        }
                    }
                    pVar.releaseIntercepted();
                    fVar = cVar.f14604g;
                    aVar.f14608i = null;
                    aVar.f14609j = null;
                    aVar.f14610k = null;
                    aVar.f14606g = 2;
                    if (fVar.b(gVar2, aVar) == d10) {
                        return d10;
                    }
                    return vb.p.f15031a;
                }
            }
            aVar = new a(dVar);
            Object obj2 = aVar.f14605f;
            d10 = bc.c.d();
            i10 = aVar.f14606g;
            if (i10 != 0) {
            }
            pVar.releaseIntercepted();
            fVar = cVar.f14604g;
            aVar.f14608i = null;
            aVar.f14609j = null;
            aVar.f14610k = null;
            aVar.f14606g = 2;
            if (fVar.b(gVar2, aVar) == d10) {
            }
            return vb.p.f15031a;
        }
    }

    public static final void b(g<?> gVar) {
        if (gVar instanceof f0) {
            throw ((f0) gVar).f14553f;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object c(g<? super T> gVar, ic.q<? super g<? super T>, ? super Throwable, ? super ac.d<? super vb.p>, ? extends Object> qVar, Throwable th, ac.d<? super vb.p> dVar) {
        a aVar;
        int i10;
        try {
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i11 = aVar.f14595h;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f14595h = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f14594g;
                    Object d10 = bc.c.d();
                    i10 = aVar.f14595h;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        aVar.f14593f = th;
                        aVar.f14595h = 1;
                        if (qVar.i(gVar, th, aVar) == d10) {
                            return d10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        th = (Throwable) aVar.f14593f;
                        vb.k.b(obj);
                    }
                    return vb.p.f15031a;
                }
            }
            if (i10 != 0) {
            }
            return vb.p.f15031a;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                vb.a.a(th2, th);
            }
            throw th2;
        }
        aVar = new a(dVar);
        Object obj2 = aVar.f14594g;
        Object d102 = bc.c.d();
        i10 = aVar.f14595h;
    }

    public static final <T> f<T> d(f<? extends T> fVar, ic.q<? super g<? super T>, ? super Throwable, ? super ac.d<? super vb.p>, ? extends Object> qVar) {
        return new b(fVar, qVar);
    }

    public static final <T> f<T> e(f<? extends T> fVar, ic.p<? super g<? super T>, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        return new c(pVar, fVar);
    }
}

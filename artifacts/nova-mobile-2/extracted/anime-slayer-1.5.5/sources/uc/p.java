package uc;

import rc.c2;
import rc.u0;

/* compiled from: Errors.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class p {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class a<T> implements f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f f14611f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ic.q f14612g;

        @cc.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {113, 114}, m = "collect")
        /* renamed from: uc.p$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0376a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f14613f;

            /* renamed from: g, reason: collision with root package name */
            public int f14614g;

            /* renamed from: i, reason: collision with root package name */
            public Object f14616i;

            /* renamed from: j, reason: collision with root package name */
            public Object f14617j;

            public C0376a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f14613f = obj;
                this.f14614g |= Integer.MIN_VALUE;
                return a.this.b(null, this);
            }
        }

        public a(f fVar, ic.q qVar) {
            this.f14611f = fVar;
            this.f14612g = qVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override // uc.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
            C0376a c0376a;
            int i10;
            a<T> aVar;
            Throwable th;
            if (dVar instanceof C0376a) {
                c0376a = (C0376a) dVar;
                int i11 = c0376a.f14614g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c0376a.f14614g = i11 - Integer.MIN_VALUE;
                    Object obj = c0376a.f14613f;
                    Object d10 = bc.c.d();
                    i10 = c0376a.f14614g;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        f fVar = this.f14611f;
                        c0376a.f14616i = this;
                        c0376a.f14617j = gVar;
                        c0376a.f14614g = 1;
                        obj = h.e(fVar, gVar, c0376a);
                        if (obj == d10) {
                            return d10;
                        }
                        aVar = this;
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            vb.k.b(obj);
                            return vb.p.f15031a;
                        }
                        gVar = (g) c0376a.f14617j;
                        aVar = (a) c0376a.f14616i;
                        vb.k.b(obj);
                    }
                    th = (Throwable) obj;
                    if (th != null) {
                        ic.q qVar = aVar.f14612g;
                        c0376a.f14616i = null;
                        c0376a.f14617j = null;
                        c0376a.f14614g = 2;
                        jc.k.c(6);
                        Object i12 = qVar.i(gVar, th, c0376a);
                        jc.k.c(7);
                        if (i12 == d10) {
                            return d10;
                        }
                    }
                    return vb.p.f15031a;
                }
            }
            c0376a = new C0376a(dVar);
            Object obj2 = c0376a.f14613f;
            Object d102 = bc.c.d();
            i10 = c0376a.f14614g;
            if (i10 != 0) {
            }
            th = (Throwable) obj2;
            if (th != null) {
            }
            return vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collect.kt */
    /* loaded from: classes2.dex */
    public static final class b<T> implements g<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ g f14618f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ jc.x f14619g;

        @cc.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$$inlined$collect$1", f = "Errors.kt", l = {136}, m = "emit")
        /* loaded from: classes2.dex */
        public static final class a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f14620f;

            /* renamed from: g, reason: collision with root package name */
            public int f14621g;

            /* renamed from: i, reason: collision with root package name */
            public Object f14623i;

            public a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f14620f = obj;
                this.f14621g |= Integer.MIN_VALUE;
                return b.this.a(null, this);
            }
        }

        public b(g gVar, jc.x xVar) {
            this.f14618f = gVar;
            this.f14619g = xVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // uc.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(T t10, ac.d<? super vb.p> dVar) {
            a aVar;
            int i10;
            b<T> bVar;
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i11 = aVar.f14621g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f14621g = i11 - Integer.MIN_VALUE;
                    Object obj = aVar.f14620f;
                    Object d10 = bc.c.d();
                    i10 = aVar.f14621g;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        try {
                            g gVar = this.f14618f;
                            aVar.f14623i = this;
                            aVar.f14621g = 1;
                            if (gVar.a(t10, aVar) == d10) {
                                return d10;
                            }
                        } catch (Throwable 
                        /*  JADX ERROR: Method code generation error
                            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                            	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:367)
                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:330)
                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                            */
                        /*
                            this = this;
                            boolean r0 = r6 instanceof uc.p.b.a
                            if (r0 == 0) goto L13
                            r0 = r6
                            uc.p$b$a r0 = (uc.p.b.a) r0
                            int r1 = r0.f14621g
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.f14621g = r1
                            goto L18
                        L13:
                            uc.p$b$a r0 = new uc.p$b$a
                            r0.<init>(r6)
                        L18:
                            java.lang.Object r6 = r0.f14620f
                            java.lang.Object r1 = bc.c.d()
                            int r2 = r0.f14621g
                            r3 = 1
                            if (r2 == 0) goto L37
                            if (r2 != r3) goto L2f
                            java.lang.Object r5 = r0.f14623i
                            uc.p$b r5 = (uc.p.b) r5
                            vb.k.b(r6)     // Catch: java.lang.Throwable -> L2d
                            goto L47
                        L2d:
                            r6 = move-exception
                            goto L4c
                        L2f:
                            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                            r5.<init>(r6)
                            throw r5
                        L37:
                            vb.k.b(r6)
                            uc.g r6 = r4.f14618f     // Catch: java.lang.Throwable -> L4a
                            r0.f14623i = r4     // Catch: java.lang.Throwable -> L4a
                            r0.f14621g = r3     // Catch: java.lang.Throwable -> L4a
                            java.lang.Object r5 = r6.a(r5, r0)     // Catch: java.lang.Throwable -> L4a
                            if (r5 != r1) goto L47
                            return r1
                        L47:
                            vb.p r5 = vb.p.f15031a
                            return r5
                        L4a:
                            r6 = move-exception
                            r5 = r4
                        L4c:
                            jc.x r5 = r5.f14619g
                            r5.f9194f = r6
                            throw r6
                        */
                        throw new UnsupportedOperationException("Method not decompiled: uc.p.b.a(java.lang.Object, ac.d):java.lang.Object");
                    }
                }

                /* compiled from: Errors.kt */
                @cc.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", f = "Errors.kt", l = {227}, m = "catchImpl")
                /* loaded from: classes2.dex */
                public static final class c<T> extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public Object f14624f;

                    /* renamed from: g, reason: collision with root package name */
                    public /* synthetic */ Object f14625g;

                    /* renamed from: h, reason: collision with root package name */
                    public int f14626h;

                    public c(ac.d<? super c> dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f14625g = obj;
                        this.f14626h |= Integer.MIN_VALUE;
                        return h.e(null, null, this);
                    }
                }

                public static final <T> f<T> a(f<? extends T> fVar, ic.q<? super g<? super T>, ? super Throwable, ? super ac.d<? super vb.p>, ? extends Object> qVar) {
                    return new a(fVar, qVar);
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x0037  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public static final <T> Object b(f<? extends T> fVar, g<? super T> gVar, ac.d<? super Throwable> dVar) {
                    c cVar;
                    int i10;
                    jc.x xVar;
                    if (dVar instanceof c) {
                        cVar = (c) dVar;
                        int i11 = cVar.f14626h;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            cVar.f14626h = i11 - Integer.MIN_VALUE;
                            Object obj = cVar.f14625g;
                            Object d10 = bc.c.d();
                            i10 = cVar.f14626h;
                            if (i10 != 0) {
                                vb.k.b(obj);
                                jc.x xVar2 = new jc.x();
                                try {
                                    g<? super Object> bVar = new b<>(gVar, xVar2);
                                    cVar.f14624f = xVar2;
                                    cVar.f14626h = 1;
                                    if (fVar.b(bVar, cVar) == d10) {
                                        return d10;
                                    }
                                    return null;
                                } catch (Throwable th) {
                                    th = th;
                                    xVar = xVar2;
                                }
                            } else {
                                if (i10 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                xVar = (jc.x) cVar.f14624f;
                                try {
                                    vb.k.b(obj);
                                    return null;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            if (!d(th, (Throwable) xVar.f9194f) || c(th, cVar.getContext())) {
                                throw th;
                            }
                            return th;
                        }
                    }
                    cVar = new c(dVar);
                    Object obj2 = cVar.f14625g;
                    Object d102 = bc.c.d();
                    i10 = cVar.f14626h;
                    if (i10 != 0) {
                    }
                    if (d(th, (Throwable) xVar.f9194f)) {
                    }
                    throw th;
                }

                public static final boolean c(Throwable th, ac.g gVar) {
                    c2 c2Var = (c2) gVar.get(c2.f13236c);
                    if (c2Var == null || !c2Var.isCancelled()) {
                        return false;
                    }
                    return d(th, c2Var.a0());
                }

                public static final boolean d(Throwable th, Throwable th2) {
                    if (th2 != null) {
                        if (u0.d()) {
                            th2 = wc.z.n(th2);
                        }
                        if (u0.d()) {
                            th = wc.z.n(th);
                        }
                        if (jc.l.a(th2, th)) {
                            return true;
                        }
                    }
                    return false;
                }
            }

package uc;

/* compiled from: Channels.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class j {

    /* compiled from: Channels.kt */
    @cc.f(c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", f = "Channels.kt", l = {51, 62}, m = "emitAllImpl$FlowKt__ChannelsKt")
    /* loaded from: classes2.dex */
    public static final class a<T> extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f14563f;

        /* renamed from: g, reason: collision with root package name */
        public Object f14564g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f14565h;

        /* renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f14566i;

        /* renamed from: j, reason: collision with root package name */
        public int f14567j;

        public a(ac.d<? super a> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14566i = obj;
            this.f14567j |= Integer.MIN_VALUE;
            return j.d(null, null, false, this);
        }
    }

    public static final <T> f<T> b(tc.t<? extends T> tVar) {
        return new c(tVar, true, null, 0, null, 28, null);
    }

    public static final <T> Object c(g<? super T> gVar, tc.t<? extends T> tVar, ac.d<? super vb.p> dVar) {
        Object d10 = d(gVar, tVar, true, dVar);
        return d10 == bc.c.d() ? d10 : vb.p.f15031a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #0 {all -> 0x0055, blocks: (B:12:0x0032, B:21:0x0070, B:23:0x0076, B:29:0x0084, B:31:0x0085, B:47:0x004b), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0085 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #0 {all -> 0x0055, blocks: (B:12:0x0032, B:21:0x0070, B:23:0x0076, B:29:0x0084, B:31:0x0085, B:47:0x004b), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r7v0, types: [uc.g, uc.g<? super T>] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v17, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v3, types: [uc.g, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0095 -> B:13:0x0035). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object d(g<? super T> gVar, tc.t<? extends T> tVar, boolean z10, ac.d<? super vb.p> dVar) {
        a aVar;
        int i10;
        Object obj;
        ?? r92;
        Object obj2;
        try {
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i11 = aVar.f14567j;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f14567j = i11 - Integer.MIN_VALUE;
                    Object obj3 = aVar.f14566i;
                    Object d10 = bc.c.d();
                    i10 = aVar.f14567j;
                    if (i10 != 0) {
                        vb.k.b(obj3);
                        h.o(gVar);
                        obj2 = gVar;
                        aVar.f14563f = obj2;
                        aVar.f14564g = tVar;
                        aVar.f14565h = z10;
                        aVar.f14567j = 1;
                        obj = tVar.i(aVar);
                        if (obj == d10) {
                        }
                    } else if (i10 == 1) {
                        boolean z11 = (g<? super T>) aVar.f14565h;
                        tVar = (tc.t) aVar.f14564g;
                        g gVar2 = (g) aVar.f14563f;
                        vb.k.b(obj3);
                        obj = ((tc.j) obj3).k();
                        gVar = z11;
                        r92 = gVar2;
                        if (!tc.j.h(obj)) {
                        }
                    } else {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        boolean z12 = (g<? super T>) aVar.f14565h;
                        tVar = (tc.t) aVar.f14564g;
                        g gVar3 = (g) aVar.f14563f;
                        vb.k.b(obj3);
                        boolean z13 = z12;
                        g gVar4 = gVar3;
                        g gVar5 = gVar4;
                        z10 = z13;
                        obj2 = (g<? super T>) gVar5;
                        try {
                            aVar.f14563f = obj2;
                            aVar.f14564g = tVar;
                            aVar.f14565h = z10;
                            aVar.f14567j = 1;
                            obj = tVar.i(aVar);
                            if (obj == d10) {
                                return d10;
                            }
                            boolean z14 = z10;
                            r92 = obj2;
                            gVar = (g<? super T>) (z14 ? 1 : 0);
                            if (!tc.j.h(obj)) {
                                Throwable e10 = tc.j.e(obj);
                                if (e10 == null) {
                                    if (gVar != 0) {
                                        tc.k.a(tVar, null);
                                    }
                                    return vb.p.f15031a;
                                }
                                throw e10;
                            }
                            Object f10 = tc.j.f(obj);
                            aVar.f14563f = r92;
                            aVar.f14564g = tVar;
                            aVar.f14565h = (boolean) gVar;
                            aVar.f14567j = 2;
                            Object a10 = r92.a(f10, aVar);
                            z13 = gVar;
                            gVar4 = r92;
                            if (a10 == d10) {
                                return d10;
                            }
                            g gVar52 = gVar4;
                            z10 = z13;
                            obj2 = (g<? super T>) gVar52;
                            aVar.f14563f = obj2;
                            aVar.f14564g = tVar;
                            aVar.f14565h = z10;
                            aVar.f14567j = 1;
                            obj = tVar.i(aVar);
                            if (obj == d10) {
                            }
                        } catch (Throwable th) {
                            boolean z15 = z10;
                            th = th;
                            gVar = z15;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                if (gVar != 0) {
                                    tc.k.a(tVar, th);
                                }
                                throw th2;
                            }
                        }
                    }
                }
            }
            if (i10 != 0) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
        aVar = new a(dVar);
        Object obj32 = aVar.f14566i;
        Object d102 = bc.c.d();
        i10 = aVar.f14567j;
    }
}

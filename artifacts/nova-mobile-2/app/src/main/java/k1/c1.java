package k1;

import ac.g;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.concurrent.CancellationException;
import rc.c2;

/* compiled from: SingleRunner.kt */
/* loaded from: classes.dex */
public final class c1 {

    /* renamed from: b, reason: collision with root package name */
    public static final b f9313b = new b(null);

    /* renamed from: a, reason: collision with root package name */
    public final c f9314a;

    /* compiled from: SingleRunner.kt */
    /* loaded from: classes.dex */
    public static final class a extends CancellationException {

        /* renamed from: f, reason: collision with root package name */
        public final c1 f9315f;

        public a(c1 c1Var) {
            jc.l.f(c1Var, "runner");
            this.f9315f = c1Var;
        }

        public final c1 a() {
            return this.f9315f;
        }
    }

    /* compiled from: SingleRunner.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(jc.g gVar) {
            this();
        }
    }

    /* compiled from: SingleRunner.kt */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final ad.b f9316a;

        /* renamed from: b, reason: collision with root package name */
        public c2 f9317b;

        /* renamed from: c, reason: collision with root package name */
        public int f9318c;

        /* renamed from: d, reason: collision with root package name */
        public final c1 f9319d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f9320e;

        /* compiled from: SingleRunner.kt */
        @cc.f(c = "androidx.paging.SingleRunner$Holder", f = "SingleRunner.kt", l = {TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE}, m = "onFinish")
        /* loaded from: classes.dex */
        public static final class a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9321f;

            /* renamed from: g, reason: collision with root package name */
            public int f9322g;

            /* renamed from: i, reason: collision with root package name */
            public Object f9324i;

            /* renamed from: j, reason: collision with root package name */
            public Object f9325j;

            /* renamed from: k, reason: collision with root package name */
            public Object f9326k;

            public a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f9321f = obj;
                this.f9322g |= Integer.MIN_VALUE;
                return c.this.a(null, this);
            }
        }

        /* compiled from: SingleRunner.kt */
        @cc.f(c = "androidx.paging.SingleRunner$Holder", f = "SingleRunner.kt", l = {129, 100}, m = "tryEnqueue")
        /* loaded from: classes.dex */
        public static final class b extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9327f;

            /* renamed from: g, reason: collision with root package name */
            public int f9328g;

            /* renamed from: i, reason: collision with root package name */
            public Object f9330i;

            /* renamed from: j, reason: collision with root package name */
            public Object f9331j;

            /* renamed from: k, reason: collision with root package name */
            public Object f9332k;

            /* renamed from: l, reason: collision with root package name */
            public int f9333l;

            public b(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f9327f = obj;
                this.f9328g |= Integer.MIN_VALUE;
                return c.this.b(0, null, this);
            }
        }

        public c(c1 c1Var, boolean z10) {
            jc.l.f(c1Var, "singleRunner");
            this.f9319d = c1Var;
            this.f9320e = z10;
            this.f9316a = ad.e.b(false, 1, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0059 A[Catch: all -> 0x0061, TryCatch #0 {all -> 0x0061, blocks: (B:11:0x0055, B:13:0x0059, B:14:0x005b), top: B:10:0x0055 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(c2 c2Var, ac.d<? super vb.p> dVar) {
            a aVar;
            int i10;
            ad.b bVar;
            c cVar;
            try {
                if (dVar instanceof a) {
                    aVar = (a) dVar;
                    int i11 = aVar.f9322g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        aVar.f9322g = i11 - Integer.MIN_VALUE;
                        Object obj = aVar.f9321f;
                        Object d10 = bc.c.d();
                        i10 = aVar.f9322g;
                        if (i10 != 0) {
                            vb.k.b(obj);
                            bVar = this.f9316a;
                            aVar.f9324i = this;
                            aVar.f9325j = c2Var;
                            aVar.f9326k = bVar;
                            aVar.f9322g = 1;
                            if (bVar.b(null, aVar) == d10) {
                                return d10;
                            }
                            cVar = this;
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ad.b bVar2 = (ad.b) aVar.f9326k;
                            c2 c2Var2 = (c2) aVar.f9325j;
                            cVar = (c) aVar.f9324i;
                            vb.k.b(obj);
                            bVar = bVar2;
                            c2Var = c2Var2;
                        }
                        if (c2Var == cVar.f9317b) {
                            cVar.f9317b = null;
                        }
                        return vb.p.f15031a;
                    }
                }
                if (c2Var == cVar.f9317b) {
                }
                return vb.p.f15031a;
            } finally {
                bVar.a(null);
            }
            aVar = new a(dVar);
            Object obj2 = aVar.f9321f;
            Object d102 = bc.c.d();
            i10 = aVar.f9322g;
            if (i10 != 0) {
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x008b, code lost:
        
            r12.d(new k1.c1.a(r6.f9319d));
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0097 A[Catch: all -> 0x003c, TryCatch #0 {all -> 0x003c, blocks: (B:12:0x0037, B:14:0x00ac, B:15:0x00b0, B:23:0x0072, B:25:0x0076, B:27:0x007c, B:30:0x0082, B:35:0x008b, B:37:0x0097), top: B:7:0x0023 }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
        /* JADX WARN: Type inference failed for: r11v0, types: [rc.c2, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v1, types: [ad.b] */
        /* JADX WARN: Type inference failed for: r11v14 */
        /* JADX WARN: Type inference failed for: r11v15 */
        /* JADX WARN: Type inference failed for: r11v4, types: [ad.b] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object b(int i10, c2 c2Var, ac.d<? super Boolean> dVar) {
            b bVar;
            int i11;
            boolean z10;
            c cVar;
            c2 c2Var2;
            ad.b bVar2;
            c2 c2Var3;
            c2 c2Var4;
            c cVar2;
            int i12;
            try {
                if (dVar instanceof b) {
                    bVar = (b) dVar;
                    int i13 = bVar.f9328g;
                    if ((i13 & Integer.MIN_VALUE) != 0) {
                        bVar.f9328g = i13 - Integer.MIN_VALUE;
                        Object obj = bVar.f9327f;
                        Object d10 = bc.c.d();
                        i11 = bVar.f9328g;
                        z10 = true;
                        if (i11 != 0) {
                            vb.k.b(obj);
                            ad.b bVar3 = this.f9316a;
                            bVar.f9330i = this;
                            bVar.f9331j = c2Var;
                            bVar.f9332k = bVar3;
                            bVar.f9333l = i10;
                            bVar.f9328g = 1;
                            if (bVar3.b(null, bVar) == d10) {
                                return d10;
                            }
                            cVar = this;
                            c2Var2 = c2Var;
                            bVar2 = bVar3;
                        } else {
                            if (i11 != 1) {
                                if (i11 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                i10 = bVar.f9333l;
                                ad.b bVar4 = (ad.b) bVar.f9332k;
                                c2Var4 = (c2) bVar.f9331j;
                                cVar2 = (c) bVar.f9330i;
                                vb.k.b(obj);
                                bVar2 = bVar4;
                                cVar = cVar2;
                                c2Var2 = c2Var4;
                                cVar.f9317b = c2Var2;
                                cVar.f9318c = i10;
                                c2Var = bVar2;
                                return cc.b.a(z10);
                            }
                            i10 = bVar.f9333l;
                            ad.b bVar5 = (ad.b) bVar.f9332k;
                            c2Var2 = (c2) bVar.f9331j;
                            cVar = (c) bVar.f9330i;
                            vb.k.b(obj);
                            bVar2 = bVar5;
                        }
                        c2Var3 = cVar.f9317b;
                        if (c2Var3 != null && c2Var3.b() && (i12 = cVar.f9318c) >= i10 && (i12 != i10 || !cVar.f9320e)) {
                            z10 = false;
                            c2Var = bVar2;
                            return cc.b.a(z10);
                        }
                        if (c2Var3 != null) {
                            bVar.f9330i = cVar;
                            bVar.f9331j = c2Var2;
                            bVar.f9332k = bVar2;
                            bVar.f9333l = i10;
                            bVar.f9328g = 2;
                            if (c2Var3.U(bVar) == d10) {
                                return d10;
                            }
                            c2Var4 = c2Var2;
                            cVar2 = cVar;
                            bVar2 = bVar2;
                            cVar = cVar2;
                            c2Var2 = c2Var4;
                        }
                        cVar.f9317b = c2Var2;
                        cVar.f9318c = i10;
                        c2Var = bVar2;
                        return cc.b.a(z10);
                    }
                }
                if (i11 != 0) {
                }
                c2Var3 = cVar.f9317b;
                if (c2Var3 != null) {
                    z10 = false;
                    c2Var = bVar2;
                    return cc.b.a(z10);
                }
                if (c2Var3 != null) {
                }
                cVar.f9317b = c2Var2;
                cVar.f9318c = i10;
                c2Var = bVar2;
                return cc.b.a(z10);
            } finally {
                c2Var.a(null);
            }
            bVar = new b(dVar);
            Object obj2 = bVar.f9327f;
            Object d102 = bc.c.d();
            i11 = bVar.f9328g;
            z10 = true;
        }
    }

    /* compiled from: SingleRunner.kt */
    @cc.f(c = "androidx.paging.SingleRunner", f = "SingleRunner.kt", l = {49}, m = "runInIsolation")
    /* loaded from: classes.dex */
    public static final class d extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9334f;

        /* renamed from: g, reason: collision with root package name */
        public int f9335g;

        /* renamed from: i, reason: collision with root package name */
        public Object f9337i;

        public d(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9334f = obj;
            this.f9335g |= Integer.MIN_VALUE;
            return c1.this.b(0, null, this);
        }
    }

    /* compiled from: SingleRunner.kt */
    @cc.f(c = "androidx.paging.SingleRunner$runInIsolation$2", f = "SingleRunner.kt", l = {55, 59, 61, 61}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9338f;

        /* renamed from: g, reason: collision with root package name */
        public int f9339g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f9341i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ic.l f9342j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(int i10, ic.l lVar, ac.d dVar) {
            super(2, dVar);
            this.f9341i = i10;
            this.f9342j = lVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            e eVar = new e(this.f9341i, this.f9342j, dVar);
            eVar.f9338f = obj;
            return eVar;
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:20:0x008d A[RETURN] */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [rc.c2] */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v9, types: [rc.c2] */
        /* JADX WARN: Type inference failed for: r3v2, types: [k1.c1$c] */
        /* JADX WARN: Type inference failed for: r9v15, types: [k1.c1$c] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            c2 c2Var;
            ?? r92;
            Object d10 = bc.c.d();
            ?? r12 = this.f9339g;
            int i10 = 4;
            try {
                if (r12 == 0) {
                    vb.k.b(obj);
                    g.b bVar = ((rc.q0) this.f9338f).getCoroutineContext().get(c2.f13236c);
                    if (bVar != null) {
                        c2 c2Var2 = (c2) bVar;
                        c cVar = c1.this.f9314a;
                        int i11 = this.f9341i;
                        this.f9338f = c2Var2;
                        this.f9339g = 1;
                        Object b10 = cVar.b(i11, c2Var2, this);
                        if (b10 == d10) {
                            return d10;
                        }
                        c2Var = c2Var2;
                        obj = b10;
                    } else {
                        throw new IllegalStateException("Internal error. coroutineScope should've created a job.".toString());
                    }
                } else {
                    if (r12 != 1) {
                        if (r12 != 2) {
                            if (r12 == 3) {
                                vb.k.b(obj);
                                return vb.p.f15031a;
                            }
                            if (r12 != 4) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            Throwable th = (Throwable) this.f9338f;
                            vb.k.b(obj);
                            throw th;
                        }
                        c2 c2Var3 = (c2) this.f9338f;
                        vb.k.b(obj);
                        r12 = c2Var3;
                        r92 = c1.this.f9314a;
                        i10 = 0;
                        this.f9338f = null;
                        this.f9339g = 3;
                        if (r92.a(r12, this) == d10) {
                            return d10;
                        }
                        return vb.p.f15031a;
                    }
                    c2 c2Var4 = (c2) this.f9338f;
                    vb.k.b(obj);
                    c2Var = c2Var4;
                }
                if (((Boolean) obj).booleanValue()) {
                    ic.l lVar = this.f9342j;
                    this.f9338f = c2Var;
                    this.f9339g = 2;
                    r12 = c2Var;
                    if (lVar.invoke(this) == d10) {
                        return d10;
                    }
                    r92 = c1.this.f9314a;
                    i10 = 0;
                    this.f9338f = null;
                    this.f9339g = 3;
                    if (r92.a(r12, this) == d10) {
                    }
                }
                return vb.p.f15031a;
            } catch (Throwable th2) {
                ?? r32 = c1.this.f9314a;
                this.f9338f = th2;
                this.f9339g = i10;
                if (r32.a(r12, this) == d10) {
                    return d10;
                }
                throw th2;
            }
        }
    }

    public c1() {
        this(false, 1, null);
    }

    public c1(boolean z10) {
        this.f9314a = new c(this, z10);
    }

    public static /* synthetic */ Object c(c1 c1Var, int i10, ic.l lVar, ac.d dVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return c1Var.b(i10, lVar, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(int i10, ic.l<? super ac.d<? super vb.p>, ? extends Object> lVar, ac.d<? super vb.p> dVar) {
        d dVar2;
        int i11;
        c1 c1Var;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i12 = dVar2.f9335g;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                dVar2.f9335g = i12 - Integer.MIN_VALUE;
                Object obj = dVar2.f9334f;
                Object d10 = bc.c.d();
                i11 = dVar2.f9335g;
                if (i11 != 0) {
                    vb.k.b(obj);
                    try {
                        e eVar = new e(i10, lVar, null);
                        dVar2.f9337i = this;
                        dVar2.f9335g = 1;
                        if (rc.r0.e(eVar, dVar2) == d10) {
                            return d10;
                        }
                    } catch (a e10) {
                        e = e10;
                        c1Var = this;
                        if (e.a() != c1Var) {
                        }
                        return vb.p.f15031a;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c1Var = (c1) dVar2.f9337i;
                    try {
                        vb.k.b(obj);
                    } catch (a e11) {
                        e = e11;
                        if (e.a() != c1Var) {
                            throw e;
                        }
                        return vb.p.f15031a;
                    }
                }
                return vb.p.f15031a;
            }
        }
        dVar2 = new d(dVar);
        Object obj2 = dVar2.f9334f;
        Object d102 = bc.c.d();
        i11 = dVar2.f9335g;
        if (i11 != 0) {
        }
        return vb.p.f15031a;
    }

    public /* synthetic */ c1(boolean z10, int i10, jc.g gVar) {
        this((i10 & 1) != 0 ? true : z10);
    }
}

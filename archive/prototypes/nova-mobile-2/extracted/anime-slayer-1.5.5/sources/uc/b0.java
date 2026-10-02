package uc;

import org.apache.http.HttpStatus;
import rc.c2;
import rc.f2;

/* compiled from: StateFlow.kt */
/* loaded from: classes2.dex */
public final class b0<T> extends vc.a<d0> implements u<T>, f, vc.l<T> {
    private volatile /* synthetic */ Object _state;

    /* renamed from: j, reason: collision with root package name */
    public int f14521j;

    /* compiled from: StateFlow.kt */
    @cc.f(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {386, 398, HttpStatus.SC_FORBIDDEN}, m = "collect")
    /* loaded from: classes2.dex */
    public static final class a extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f14522f;

        /* renamed from: g, reason: collision with root package name */
        public Object f14523g;

        /* renamed from: h, reason: collision with root package name */
        public Object f14524h;

        /* renamed from: i, reason: collision with root package name */
        public Object f14525i;

        /* renamed from: j, reason: collision with root package name */
        public Object f14526j;

        /* renamed from: k, reason: collision with root package name */
        public /* synthetic */ Object f14527k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ b0<T> f14528l;

        /* renamed from: m, reason: collision with root package name */
        public int f14529m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b0<T> b0Var, ac.d<? super a> dVar) {
            super(dVar);
            this.f14528l = b0Var;
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14527k = obj;
            this.f14529m |= Integer.MIN_VALUE;
            return this.f14528l.b(null, this);
        }
    }

    public b0(Object obj) {
        this._state = obj;
    }

    @Override // uc.t, uc.g
    public Object a(T t10, ac.d<? super vb.p> dVar) {
        setValue(t10);
        return vb.p.f15031a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b4, code lost:
    
        if (jc.l.a(r11, r12) == false) goto L41;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b0 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:13:0x003e, B:14:0x00a6, B:18:0x00b0, B:20:0x00d1, B:22:0x00d7, B:26:0x00b6, B:29:0x00bd, B:34:0x00ab, B:39:0x005c, B:41:0x006f, B:42:0x0097), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d7 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:13:0x003e, B:14:0x00a6, B:18:0x00b0, B:20:0x00d1, B:22:0x00d7, B:26:0x00b6, B:29:0x00bd, B:34:0x00ab, B:39:0x005c, B:41:0x006f, B:42:0x0097), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:13:0x003e, B:14:0x00a6, B:18:0x00b0, B:20:0x00d1, B:22:0x00d7, B:26:0x00b6, B:29:0x00bd, B:34:0x00ab, B:39:0x005c, B:41:0x006f, B:42:0x0097), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v2, types: [vc.c] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00d5 -> B:14:0x00a6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00e7 -> B:14:0x00a6). Please report as a decompilation issue!!! */
    @Override // uc.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
        a aVar;
        Object d10;
        int i10;
        b0<T> b0Var;
        d0 d0Var;
        g gVar2;
        c2 c2Var;
        Object obj;
        d0 d0Var2;
        boolean g10;
        T t10;
        try {
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i11 = aVar.f14529m;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f14529m = i11 - Integer.MIN_VALUE;
                    Object obj2 = aVar.f14527k;
                    d10 = bc.c.d();
                    i10 = aVar.f14529m;
                    ?? r62 = 1;
                    if (i10 != 0) {
                        vb.k.b(obj2);
                        d0 h10 = h();
                        try {
                            if (gVar instanceof e0) {
                                aVar.f14522f = this;
                                aVar.f14523g = gVar;
                                aVar.f14524h = h10;
                                aVar.f14529m = 1;
                                if (((e0) gVar).b(aVar) == d10) {
                                    return d10;
                                }
                            }
                            b0Var = this;
                            d0Var = h10;
                        } catch (Throwable th) {
                            th = th;
                            b0Var = this;
                            r62 = h10;
                            b0Var.k(r62);
                            throw th;
                        }
                    } else if (i10 == 1) {
                        d0 d0Var3 = (d0) aVar.f14524h;
                        gVar = (g) aVar.f14523g;
                        b0Var = (b0) aVar.f14522f;
                        vb.k.b(obj2);
                        d0Var = d0Var3;
                    } else if (i10 == 2) {
                        obj = aVar.f14526j;
                        c2Var = (c2) aVar.f14525i;
                        d0 d0Var4 = (d0) aVar.f14524h;
                        gVar2 = (g) aVar.f14523g;
                        b0Var = (b0) aVar.f14522f;
                        vb.k.b(obj2);
                        d0Var2 = d0Var4;
                        g10 = d0Var2.g();
                        r62 = d0Var2;
                        if (!g10) {
                        }
                        ?? r12 = b0Var._state;
                        if (c2Var != null) {
                        }
                        if (obj != null) {
                        }
                        if (r12 == vc.o.f15083a) {
                        }
                        aVar.f14522f = b0Var;
                        aVar.f14523g = gVar2;
                        aVar.f14524h = r62;
                        aVar.f14525i = c2Var;
                        aVar.f14526j = r12;
                        aVar.f14529m = 2;
                        if (gVar2.a(t10, aVar) == d10) {
                        }
                    } else {
                        if (i10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        obj = aVar.f14526j;
                        c2Var = (c2) aVar.f14525i;
                        d0 d0Var5 = (d0) aVar.f14524h;
                        gVar2 = (g) aVar.f14523g;
                        b0Var = (b0) aVar.f14522f;
                        vb.k.b(obj2);
                        r62 = d0Var5;
                        ?? r122 = b0Var._state;
                        if (c2Var != null) {
                            f2.i(c2Var);
                        }
                        if (obj != null) {
                            d0Var2 = r62;
                        }
                        t10 = r122 == vc.o.f15083a ? null : r122;
                        aVar.f14522f = b0Var;
                        aVar.f14523g = gVar2;
                        aVar.f14524h = r62;
                        aVar.f14525i = c2Var;
                        aVar.f14526j = r122;
                        aVar.f14529m = 2;
                        if (gVar2.a(t10, aVar) == d10) {
                            return d10;
                        }
                        obj = r122;
                        d0Var2 = r62;
                        g10 = d0Var2.g();
                        r62 = d0Var2;
                        if (!g10) {
                            aVar.f14522f = b0Var;
                            aVar.f14523g = gVar2;
                            aVar.f14524h = d0Var2;
                            aVar.f14525i = c2Var;
                            aVar.f14526j = obj;
                            aVar.f14529m = 3;
                            Object d11 = d0Var2.d(aVar);
                            r62 = d0Var2;
                            if (d11 == d10) {
                                return d10;
                            }
                        }
                        ?? r1222 = b0Var._state;
                        if (c2Var != null) {
                        }
                        if (obj != null) {
                        }
                        if (r1222 == vc.o.f15083a) {
                        }
                        aVar.f14522f = b0Var;
                        aVar.f14523g = gVar2;
                        aVar.f14524h = r62;
                        aVar.f14525i = c2Var;
                        aVar.f14526j = r1222;
                        aVar.f14529m = 2;
                        if (gVar2.a(t10, aVar) == d10) {
                        }
                    }
                    gVar2 = gVar;
                    c2Var = (c2) aVar.getContext().get(c2.f13236c);
                    obj = null;
                    r62 = d0Var;
                    ?? r12222 = b0Var._state;
                    if (c2Var != null) {
                    }
                    if (obj != null) {
                    }
                    if (r12222 == vc.o.f15083a) {
                    }
                    aVar.f14522f = b0Var;
                    aVar.f14523g = gVar2;
                    aVar.f14524h = r62;
                    aVar.f14525i = c2Var;
                    aVar.f14526j = r12222;
                    aVar.f14529m = 2;
                    if (gVar2.a(t10, aVar) == d10) {
                    }
                }
            }
            if (i10 != 0) {
            }
            gVar2 = gVar;
            c2Var = (c2) aVar.getContext().get(c2.f13236c);
            obj = null;
            r62 = d0Var;
            ?? r122222 = b0Var._state;
            if (c2Var != null) {
            }
            if (obj != null) {
            }
            if (r122222 == vc.o.f15083a) {
            }
            aVar.f14522f = b0Var;
            aVar.f14523g = gVar2;
            aVar.f14524h = r62;
            aVar.f14525i = c2Var;
            aVar.f14526j = r122222;
            aVar.f14529m = 2;
            if (gVar2.a(t10, aVar) == d10) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        aVar = new a(this, dVar);
        Object obj22 = aVar.f14527k;
        d10 = bc.c.d();
        i10 = aVar.f14529m;
        ?? r622 = 1;
    }

    @Override // vc.l
    public f<T> c(ac.g gVar, int i10, tc.e eVar) {
        return c0.d(this, gVar, i10, eVar);
    }

    @Override // uc.u
    public boolean d(T t10, T t11) {
        if (t10 == null) {
            t10 = (T) vc.o.f15083a;
        }
        if (t11 == null) {
            t11 = (T) vc.o.f15083a;
        }
        return p(t10, t11);
    }

    @Override // uc.t
    public boolean e(T t10) {
        setValue(t10);
        return true;
    }

    @Override // uc.u, uc.a0
    public T getValue() {
        wc.a0 a0Var = vc.o.f15083a;
        T t10 = (T) this._state;
        if (t10 == a0Var) {
            return null;
        }
        return t10;
    }

    @Override // vc.a
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public d0 i() {
        return new d0();
    }

    @Override // vc.a
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public d0[] j(int i10) {
        return new d0[i10];
    }

    public final boolean p(Object obj, Object obj2) {
        int i10;
        d0[] m10;
        m();
        synchronized (this) {
            Object obj3 = this._state;
            if (obj != null && !jc.l.a(obj3, obj)) {
                return false;
            }
            if (jc.l.a(obj3, obj2)) {
                return true;
            }
            this._state = obj2;
            int i11 = this.f14521j;
            if ((i11 & 1) == 0) {
                int i12 = i11 + 1;
                this.f14521j = i12;
                d0[] m11 = m();
                vb.p pVar = vb.p.f15031a;
                while (true) {
                    d0[] d0VarArr = m11;
                    if (d0VarArr != null) {
                        for (d0 d0Var : d0VarArr) {
                            if (d0Var != null) {
                                d0Var.f();
                            }
                        }
                    }
                    synchronized (this) {
                        i10 = this.f14521j;
                        if (i10 == i12) {
                            this.f14521j = i12 + 1;
                            return true;
                        }
                        m10 = m();
                        vb.p pVar2 = vb.p.f15031a;
                    }
                    m11 = m10;
                    i12 = i10;
                }
            } else {
                this.f14521j = i11 + 2;
                return true;
            }
        }
    }

    @Override // uc.u
    public void setValue(T t10) {
        if (t10 == null) {
            t10 = (T) vc.o.f15083a;
        }
        p(null, t10);
    }
}

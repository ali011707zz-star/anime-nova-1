package uc;

import java.util.Arrays;
import rc.c2;
import rc.f2;
import rc.i1;
import rc.u0;
import vb.j;

/* compiled from: SharedFlow.kt */
/* loaded from: classes2.dex */
public final class x<T> extends vc.a<z> implements t<T>, f, vc.l<T> {

    /* renamed from: j, reason: collision with root package name */
    public final int f14655j;

    /* renamed from: k, reason: collision with root package name */
    public final int f14656k;

    /* renamed from: l, reason: collision with root package name */
    public final tc.e f14657l;

    /* renamed from: m, reason: collision with root package name */
    public Object[] f14658m;

    /* renamed from: n, reason: collision with root package name */
    public long f14659n;

    /* renamed from: o, reason: collision with root package name */
    public long f14660o;

    /* renamed from: p, reason: collision with root package name */
    public int f14661p;

    /* renamed from: q, reason: collision with root package name */
    public int f14662q;

    /* compiled from: SharedFlow.kt */
    /* loaded from: classes2.dex */
    public static final class a implements i1 {

        /* renamed from: f, reason: collision with root package name */
        public final x<?> f14663f;

        /* renamed from: g, reason: collision with root package name */
        public long f14664g;

        /* renamed from: h, reason: collision with root package name */
        public final Object f14665h;

        /* renamed from: i, reason: collision with root package name */
        public final ac.d<vb.p> f14666i;

        /* JADX WARN: Multi-variable type inference failed */
        public a(x<?> xVar, long j10, Object obj, ac.d<? super vb.p> dVar) {
            this.f14663f = xVar;
            this.f14664g = j10;
            this.f14665h = obj;
            this.f14666i = dVar;
        }

        @Override // rc.i1
        public void e() {
            this.f14663f.y(this);
        }
    }

    /* compiled from: SharedFlow.kt */
    /* loaded from: classes2.dex */
    public /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14667a;

        static {
            int[] iArr = new int[tc.e.values().length];
            iArr[tc.e.SUSPEND.ordinal()] = 1;
            iArr[tc.e.DROP_LATEST.ordinal()] = 2;
            iArr[tc.e.DROP_OLDEST.ordinal()] = 3;
            f14667a = iArr;
        }
    }

    /* compiled from: SharedFlow.kt */
    @cc.f(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", l = {341, 348, 351}, m = "collect")
    /* loaded from: classes2.dex */
    public static final class c extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f14668f;

        /* renamed from: g, reason: collision with root package name */
        public Object f14669g;

        /* renamed from: h, reason: collision with root package name */
        public Object f14670h;

        /* renamed from: i, reason: collision with root package name */
        public Object f14671i;

        /* renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f14672j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ x<T> f14673k;

        /* renamed from: l, reason: collision with root package name */
        public int f14674l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(x<T> xVar, ac.d<? super c> dVar) {
            super(dVar);
            this.f14673k = xVar;
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14672j = obj;
            this.f14674l |= Integer.MIN_VALUE;
            return this.f14673k.b(null, this);
        }
    }

    public x(int i10, int i11, tc.e eVar) {
        this.f14655j = i10;
        this.f14656k = i11;
        this.f14657l = eVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0007, code lost:
    
        r0 = r9.f15034f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A(long j10) {
        int i10;
        vc.c[] cVarArr;
        i10 = this.f15035g;
        if (i10 != 0 && cVarArr != null) {
            for (vc.c cVar : cVarArr) {
                if (cVar != null) {
                    z zVar = (z) cVar;
                    long j11 = zVar.f14676a;
                    if (j11 >= 0 && j11 < j10) {
                        zVar.f14676a = j10;
                    }
                }
            }
        }
        this.f14660o = j10;
    }

    @Override // vc.a
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public z i() {
        return new z();
    }

    @Override // vc.a
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public z[] j(int i10) {
        return new z[i10];
    }

    public final void D() {
        Object[] objArr = this.f14658m;
        jc.l.c(objArr);
        y.g(objArr, I(), null);
        this.f14661p--;
        long I = I() + 1;
        if (this.f14659n < I) {
            this.f14659n = I;
        }
        if (this.f14660o < I) {
            A(I);
        }
        if (u0.a()) {
            if (!(I() == I)) {
                throw new AssertionError();
            }
        }
    }

    public final Object E(T t10, ac.d<? super vb.p> dVar) {
        ac.d<vb.p>[] dVarArr;
        a aVar;
        rc.p pVar = new rc.p(bc.b.c(dVar), 1);
        pVar.z();
        ac.d<vb.p>[] dVarArr2 = vc.b.f15038a;
        synchronized (this) {
            if (O(t10)) {
                vb.p pVar2 = vb.p.f15031a;
                j.a aVar2 = vb.j.f15020f;
                pVar.resumeWith(vb.j.a(pVar2));
                dVarArr = G(dVarArr2);
                aVar = null;
            } else {
                a aVar3 = new a(this, M() + I(), t10, pVar);
                F(aVar3);
                this.f14662q++;
                if (this.f14656k == 0) {
                    dVarArr2 = G(dVarArr2);
                }
                dVarArr = dVarArr2;
                aVar = aVar3;
            }
        }
        if (aVar != null) {
            rc.r.a(pVar, aVar);
        }
        int i10 = 0;
        int length = dVarArr.length;
        while (i10 < length) {
            ac.d<vb.p> dVar2 = dVarArr[i10];
            i10++;
            if (dVar2 != null) {
                vb.p pVar3 = vb.p.f15031a;
                j.a aVar4 = vb.j.f15020f;
                dVar2.resumeWith(vb.j.a(pVar3));
            }
        }
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10 == bc.c.d() ? v10 : vb.p.f15031a;
    }

    public final void F(Object obj) {
        int M = M();
        Object[] objArr = this.f14658m;
        if (objArr == null) {
            objArr = N(null, 0, 2);
        } else if (M >= objArr.length) {
            objArr = N(objArr, M, objArr.length * 2);
        }
        y.g(objArr, I() + M, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
    
        r1 = r11.f15034f;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.Object[], java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ac.d<vb.p>[] G(ac.d<vb.p>[] dVarArr) {
        int i10;
        vc.c[] cVarArr;
        z zVar;
        ac.d<? super vb.p> dVar;
        int length = dVarArr.length;
        i10 = this.f15035g;
        if (i10 != 0 && cVarArr != null) {
            int length2 = cVarArr.length;
            int i11 = 0;
            dVarArr = dVarArr;
            while (i11 < length2) {
                vc.c cVar = cVarArr[i11];
                if (cVar != null && (dVar = (zVar = (z) cVar).f14677b) != null && Q(zVar) >= 0) {
                    int length3 = dVarArr.length;
                    dVarArr = dVarArr;
                    if (length >= length3) {
                        var copyOf = Arrays.copyOf(dVarArr, Math.max(2, dVarArr.length * 2));
                        jc.l.e(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                        dVarArr = copyOf;
                    }
                    dVarArr[length] = dVar;
                    zVar.f14677b = null;
                    length++;
                }
                i11++;
                dVarArr = dVarArr;
            }
        }
        return dVarArr;
    }

    public final long H() {
        return I() + this.f14661p;
    }

    public final long I() {
        return Math.min(this.f14660o, this.f14659n);
    }

    public final Object J(long j10) {
        Object f10;
        Object[] objArr = this.f14658m;
        jc.l.c(objArr);
        f10 = y.f(objArr, j10);
        return f10 instanceof a ? ((a) f10).f14665h : f10;
    }

    public final long K() {
        return I() + this.f14661p + this.f14662q;
    }

    public final int L() {
        return (int) ((I() + this.f14661p) - this.f14659n);
    }

    public final int M() {
        return this.f14661p + this.f14662q;
    }

    public final Object[] N(Object[] objArr, int i10, int i11) {
        Object f10;
        int i12 = 0;
        if (i11 > 0) {
            Object[] objArr2 = new Object[i11];
            this.f14658m = objArr2;
            if (objArr == null) {
                return objArr2;
            }
            long I = I();
            if (i10 > 0) {
                while (true) {
                    int i13 = i12 + 1;
                    long j10 = i12 + I;
                    f10 = y.f(objArr, j10);
                    y.g(objArr2, j10, f10);
                    if (i13 >= i10) {
                        break;
                    }
                    i12 = i13;
                }
            }
            return objArr2;
        }
        throw new IllegalStateException("Buffer size overflow".toString());
    }

    public final boolean O(T t10) {
        if (l() == 0) {
            return P(t10);
        }
        if (this.f14661p >= this.f14656k && this.f14660o <= this.f14659n) {
            int i10 = b.f14667a[this.f14657l.ordinal()];
            if (i10 == 1) {
                return false;
            }
            if (i10 == 2) {
                return true;
            }
        }
        F(t10);
        int i11 = this.f14661p + 1;
        this.f14661p = i11;
        if (i11 > this.f14656k) {
            D();
        }
        if (L() > this.f14655j) {
            S(this.f14659n + 1, this.f14660o, H(), K());
        }
        return true;
    }

    public final boolean P(T t10) {
        if (u0.a()) {
            if (!(l() == 0)) {
                throw new AssertionError();
            }
        }
        if (this.f14655j == 0) {
            return true;
        }
        F(t10);
        int i10 = this.f14661p + 1;
        this.f14661p = i10;
        if (i10 > this.f14655j) {
            D();
        }
        this.f14660o = I() + this.f14661p;
        return true;
    }

    public final long Q(z zVar) {
        long j10 = zVar.f14676a;
        if (j10 < H()) {
            return j10;
        }
        if (this.f14656k <= 0 && j10 <= I() && this.f14662q != 0) {
            return j10;
        }
        return -1L;
    }

    public final Object R(z zVar) {
        Object obj;
        ac.d<vb.p>[] dVarArr = vc.b.f15038a;
        synchronized (this) {
            long Q = Q(zVar);
            if (Q < 0) {
                obj = y.f14675a;
            } else {
                long j10 = zVar.f14676a;
                Object J = J(Q);
                zVar.f14676a = Q + 1;
                dVarArr = T(j10);
                obj = J;
            }
        }
        int i10 = 0;
        int length = dVarArr.length;
        while (i10 < length) {
            ac.d<vb.p> dVar = dVarArr[i10];
            i10++;
            if (dVar != null) {
                vb.p pVar = vb.p.f15031a;
                j.a aVar = vb.j.f15020f;
                dVar.resumeWith(vb.j.a(pVar));
            }
        }
        return obj;
    }

    public final void S(long j10, long j11, long j12, long j13) {
        long min = Math.min(j11, j10);
        if (u0.a()) {
            if (!(min >= I())) {
                throw new AssertionError();
            }
        }
        long I = I();
        if (I < min) {
            while (true) {
                long j14 = 1 + I;
                Object[] objArr = this.f14658m;
                jc.l.c(objArr);
                y.g(objArr, I, null);
                if (j14 >= min) {
                    break;
                } else {
                    I = j14;
                }
            }
        }
        this.f14659n = j10;
        this.f14660o = j11;
        this.f14661p = (int) (j12 - min);
        this.f14662q = (int) (j13 - j12);
        if (u0.a()) {
            if (!(this.f14661p >= 0)) {
                throw new AssertionError();
            }
        }
        if (u0.a()) {
            if (!(this.f14662q >= 0)) {
                throw new AssertionError();
            }
        }
        if (u0.a()) {
            if (!(this.f14659n <= I() + ((long) this.f14661p))) {
                throw new AssertionError();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
    
        r4 = r22.f15034f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ac.d<vb.p>[] T(long j10) {
        int i10;
        int i11;
        long j11;
        Object f10;
        Object f11;
        vc.c[] cVarArr;
        if (u0.a()) {
            if (!(j10 >= this.f14660o)) {
                throw new AssertionError();
            }
        }
        if (j10 > this.f14660o) {
            return vc.b.f15038a;
        }
        long I = I();
        long j12 = this.f14661p + I;
        long j13 = 1;
        if (this.f14656k == 0 && this.f14662q > 0) {
            j12++;
        }
        i10 = this.f15035g;
        if (i10 != 0 && cVarArr != null) {
            for (vc.c cVar : cVarArr) {
                if (cVar != null) {
                    long j14 = ((z) cVar).f14676a;
                    if (j14 >= 0 && j14 < j12) {
                        j12 = j14;
                    }
                }
            }
        }
        if (u0.a()) {
            if (!(j12 >= this.f14660o)) {
                throw new AssertionError();
            }
        }
        if (j12 <= this.f14660o) {
            return vc.b.f15038a;
        }
        long H = H();
        if (l() > 0) {
            i11 = Math.min(this.f14662q, this.f14656k - ((int) (H - j12)));
        } else {
            i11 = this.f14662q;
        }
        ac.d<vb.p>[] dVarArr = vc.b.f15038a;
        long j15 = this.f14662q + H;
        if (i11 > 0) {
            dVarArr = new ac.d[i11];
            Object[] objArr = this.f14658m;
            jc.l.c(objArr);
            if (H < j15) {
                long j16 = H;
                int i12 = 0;
                while (true) {
                    long j17 = H + j13;
                    f11 = y.f(objArr, H);
                    wc.a0 a0Var = y.f14675a;
                    if (f11 == a0Var) {
                        j11 = j12;
                    } else if (f11 != null) {
                        a aVar = (a) f11;
                        j11 = j12;
                        int i13 = i12 + 1;
                        dVarArr[i12] = aVar.f14666i;
                        y.g(objArr, H, a0Var);
                        y.g(objArr, j16, aVar.f14665h);
                        H = j16 + 1;
                        if (i13 >= i11) {
                            break;
                        }
                        i12 = i13;
                        j16 = H;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    }
                    if (j17 >= j15) {
                        H = j16;
                        break;
                    }
                    H = j17;
                    j12 = j11;
                    j13 = 1;
                }
            }
        }
        j11 = j12;
        int i14 = (int) (H - I);
        long j18 = l() == 0 ? H : j11;
        long max = Math.max(this.f14659n, H - Math.min(this.f14655j, i14));
        if (this.f14656k == 0 && max < j15) {
            Object[] objArr2 = this.f14658m;
            jc.l.c(objArr2);
            f10 = y.f(objArr2, max);
            if (jc.l.a(f10, y.f14675a)) {
                H++;
                max++;
            }
        }
        S(max, j18, H, j15);
        z();
        return true ^ (dVarArr.length == 0) ? G(dVarArr) : dVarArr;
    }

    public final long U() {
        long j10 = this.f14659n;
        if (j10 < this.f14660o) {
            this.f14660o = j10;
        }
        return j10;
    }

    @Override // uc.t, uc.g
    public Object a(T t10, ac.d<? super vb.p> dVar) {
        Object E;
        return (!e(t10) && (E = E(t10, dVar)) == bc.c.d()) ? E : vb.p.f15031a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00bf A[Catch: all -> 0x006f, TRY_LEAVE, TryCatch #1 {all -> 0x006f, blocks: (B:13:0x003b, B:17:0x00a0, B:28:0x00ae, B:31:0x00ab, B:19:0x00bf, B:36:0x0059, B:38:0x006b, B:39:0x0092), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [vc.c] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, uc.z] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, uc.z] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2, types: [uc.g, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r6v1, types: [vc.a] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object, uc.x] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00bc -> B:14:0x003e). Please report as a decompilation issue!!! */
    @Override // uc.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
        c cVar;
        Object d10;
        z zVar;
        x<T> r62;
        x<T> xVar;
        z zVar2;
        c2 c2Var;
        c2 c2Var2;
        g<? super T> r52;
        Object R;
        x<T> xVar2;
        z zVar3;
        try {
            if (dVar instanceof c) {
                cVar = (c) dVar;
                int i10 = cVar.f14674l;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    cVar.f14674l = i10 - Integer.MIN_VALUE;
                    Object obj = cVar.f14672j;
                    d10 = bc.c.d();
                    zVar = cVar.f14674l;
                    if (zVar != 0) {
                        vb.k.b(obj);
                        zVar = h();
                        try {
                            if (gVar instanceof e0) {
                                cVar.f14668f = this;
                                cVar.f14669g = gVar;
                                cVar.f14670h = zVar;
                                cVar.f14674l = 1;
                                if (((e0) gVar).b(cVar) == d10) {
                                    return d10;
                                }
                            }
                            xVar = this;
                            zVar2 = zVar;
                        } catch (Throwable th) {
                            th = th;
                            r62 = this;
                            r62.k(zVar);
                            throw th;
                        }
                    } else {
                        if (zVar != 1) {
                            if (zVar == 2) {
                                c2Var2 = (c2) cVar.f14671i;
                                z zVar4 = (z) cVar.f14670h;
                                g gVar2 = (g) cVar.f14669g;
                                x xVar3 = (x) cVar.f14668f;
                                vb.k.b(obj);
                                zVar = zVar4;
                                r52 = gVar2;
                                r62 = xVar3;
                                do {
                                    R = r62.R(zVar);
                                    if (R != y.f14675a) {
                                    }
                                } while (r62.x(zVar, cVar) != d10);
                                return d10;
                            }
                            if (zVar != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            c2Var2 = (c2) cVar.f14671i;
                            z zVar5 = (z) cVar.f14670h;
                            g<? super T> gVar3 = (g) cVar.f14669g;
                            x<T> xVar4 = (x) cVar.f14668f;
                            vb.k.b(obj);
                            z zVar6 = zVar5;
                            g<? super T> gVar4 = gVar3;
                            x<T> xVar5 = xVar4;
                            c2Var = c2Var2;
                            gVar = gVar4;
                            zVar3 = zVar6;
                            xVar2 = xVar5;
                            r52 = gVar;
                            c2Var2 = c2Var;
                            zVar = zVar3;
                            r62 = xVar2;
                            do {
                                R = r62.R(zVar);
                                if (R != y.f14675a) {
                                    if (c2Var2 != null) {
                                        f2.i(c2Var2);
                                    }
                                    cVar.f14668f = r62;
                                    cVar.f14669g = r52;
                                    cVar.f14670h = zVar;
                                    cVar.f14671i = c2Var2;
                                    cVar.f14674l = 3;
                                    Object a10 = r52.a(R, cVar);
                                    zVar6 = zVar;
                                    gVar4 = r52;
                                    xVar5 = r62;
                                    if (a10 == d10) {
                                        return d10;
                                    }
                                    c2Var = c2Var2;
                                    gVar = gVar4;
                                    zVar3 = zVar6;
                                    xVar2 = xVar5;
                                    r52 = gVar;
                                    c2Var2 = c2Var;
                                    zVar = zVar3;
                                    r62 = xVar2;
                                    R = r62.R(zVar);
                                    if (R != y.f14675a) {
                                    }
                                } else {
                                    cVar.f14668f = r62;
                                    cVar.f14669g = r52;
                                    cVar.f14670h = zVar;
                                    cVar.f14671i = c2Var2;
                                    cVar.f14674l = 2;
                                }
                            } while (r62.x(zVar, cVar) != d10);
                            return d10;
                        }
                        z zVar7 = (z) cVar.f14670h;
                        gVar = (g) cVar.f14669g;
                        x<T> xVar6 = (x) cVar.f14668f;
                        vb.k.b(obj);
                        zVar2 = zVar7;
                        xVar = xVar6;
                    }
                    c2Var = (c2) cVar.getContext().get(c2.f13236c);
                    zVar3 = zVar2;
                    xVar2 = xVar;
                    r52 = gVar;
                    c2Var2 = c2Var;
                    zVar = zVar3;
                    r62 = xVar2;
                    do {
                        R = r62.R(zVar);
                        if (R != y.f14675a) {
                        }
                    } while (r62.x(zVar, cVar) != d10);
                    return d10;
                }
            }
            if (zVar != 0) {
            }
            c2Var = (c2) cVar.getContext().get(c2.f13236c);
            zVar3 = zVar2;
            xVar2 = xVar;
            r52 = gVar;
            c2Var2 = c2Var;
            zVar = zVar3;
            r62 = xVar2;
            do {
                R = r62.R(zVar);
                if (R != y.f14675a) {
                }
            } while (r62.x(zVar, cVar) != d10);
            return d10;
        } catch (Throwable th2) {
            th = th2;
        }
        cVar = new c(this, dVar);
        Object obj2 = cVar.f14672j;
        d10 = bc.c.d();
        zVar = cVar.f14674l;
    }

    @Override // vc.l
    public f<T> c(ac.g gVar, int i10, tc.e eVar) {
        return y.e(this, gVar, i10, eVar);
    }

    @Override // uc.t
    public boolean e(T t10) {
        int i10;
        boolean z10;
        ac.d<vb.p>[] dVarArr = vc.b.f15038a;
        synchronized (this) {
            i10 = 0;
            if (O(t10)) {
                dVarArr = G(dVarArr);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        int length = dVarArr.length;
        while (i10 < length) {
            ac.d<vb.p> dVar = dVarArr[i10];
            i10++;
            if (dVar != null) {
                vb.p pVar = vb.p.f15031a;
                j.a aVar = vb.j.f15020f;
                dVar.resumeWith(vb.j.a(pVar));
            }
        }
        return z10;
    }

    public final Object x(z zVar, ac.d<? super vb.p> dVar) {
        vb.p pVar;
        rc.p pVar2 = new rc.p(bc.b.c(dVar), 1);
        pVar2.z();
        synchronized (this) {
            if (Q(zVar) < 0) {
                zVar.f14677b = pVar2;
                zVar.f14677b = pVar2;
            } else {
                vb.p pVar3 = vb.p.f15031a;
                j.a aVar = vb.j.f15020f;
                pVar2.resumeWith(vb.j.a(pVar3));
            }
            pVar = vb.p.f15031a;
        }
        Object v10 = pVar2.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10 == bc.c.d() ? v10 : pVar;
    }

    public final void y(a aVar) {
        Object f10;
        synchronized (this) {
            if (aVar.f14664g < I()) {
                return;
            }
            Object[] objArr = this.f14658m;
            jc.l.c(objArr);
            f10 = y.f(objArr, aVar.f14664g);
            if (f10 != aVar) {
                return;
            }
            y.g(objArr, aVar.f14664g, y.f14675a);
            z();
            vb.p pVar = vb.p.f15031a;
        }
    }

    public final void z() {
        Object f10;
        if (this.f14656k != 0 || this.f14662q > 1) {
            Object[] objArr = this.f14658m;
            jc.l.c(objArr);
            while (this.f14662q > 0) {
                f10 = y.f(objArr, (I() + M()) - 1);
                if (f10 != y.f14675a) {
                    return;
                }
                this.f14662q--;
                y.g(objArr, I() + M(), null);
            }
        }
    }
}

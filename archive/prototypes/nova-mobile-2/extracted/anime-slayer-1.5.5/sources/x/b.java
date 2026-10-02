package x;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import w.d;
import w.e;

/* compiled from: BasicMeasure.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<w.e> f15548a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public a f15549b = new a();

    /* renamed from: c, reason: collision with root package name */
    public w.f f15550c;

    /* compiled from: BasicMeasure.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: k, reason: collision with root package name */
        public static int f15551k = 0;

        /* renamed from: l, reason: collision with root package name */
        public static int f15552l = 1;

        /* renamed from: m, reason: collision with root package name */
        public static int f15553m = 2;

        /* renamed from: a, reason: collision with root package name */
        public e.b f15554a;

        /* renamed from: b, reason: collision with root package name */
        public e.b f15555b;

        /* renamed from: c, reason: collision with root package name */
        public int f15556c;

        /* renamed from: d, reason: collision with root package name */
        public int f15557d;

        /* renamed from: e, reason: collision with root package name */
        public int f15558e;

        /* renamed from: f, reason: collision with root package name */
        public int f15559f;

        /* renamed from: g, reason: collision with root package name */
        public int f15560g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f15561h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f15562i;

        /* renamed from: j, reason: collision with root package name */
        public int f15563j;
    }

    /* compiled from: BasicMeasure.java */
    /* renamed from: x.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0402b {
        void a(w.e eVar, a aVar);

        void b();
    }

    public b(w.f fVar) {
        this.f15550c = fVar;
    }

    public final boolean a(InterfaceC0402b interfaceC0402b, w.e eVar, int i10) {
        this.f15549b.f15554a = eVar.y();
        this.f15549b.f15555b = eVar.O();
        this.f15549b.f15556c = eVar.R();
        this.f15549b.f15557d = eVar.v();
        a aVar = this.f15549b;
        aVar.f15562i = false;
        aVar.f15563j = i10;
        e.b bVar = aVar.f15554a;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        boolean z10 = bVar == bVar2;
        boolean z11 = aVar.f15555b == bVar2;
        boolean z12 = z10 && eVar.f15162c0 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        boolean z13 = z11 && eVar.f15162c0 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (z12 && eVar.f15203x[0] == 4) {
            aVar.f15554a = e.b.FIXED;
        }
        if (z13 && eVar.f15203x[1] == 4) {
            aVar.f15555b = e.b.FIXED;
        }
        interfaceC0402b.a(eVar, aVar);
        eVar.b1(this.f15549b.f15558e);
        eVar.C0(this.f15549b.f15559f);
        eVar.B0(this.f15549b.f15561h);
        eVar.r0(this.f15549b.f15560g);
        a aVar2 = this.f15549b;
        aVar2.f15563j = a.f15551k;
        return aVar2.f15562i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x008d, code lost:
    
        if (r8 != r9) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0094, code lost:
    
        if (r5.f15162c0 <= com.google.android.material.internal.StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(w.f fVar) {
        l lVar;
        n nVar;
        int size = fVar.J0.size();
        boolean K1 = fVar.K1(64);
        InterfaceC0402b A1 = fVar.A1();
        for (int i10 = 0; i10 < size; i10++) {
            w.e eVar = fVar.J0.get(i10);
            if (!(eVar instanceof w.g) && !(eVar instanceof w.a) && !eVar.g0() && (!K1 || (lVar = eVar.f15165e) == null || (nVar = eVar.f15167f) == null || !lVar.f15632e.f15584j || !nVar.f15632e.f15584j)) {
                e.b s10 = eVar.s(0);
                boolean z10 = true;
                e.b s11 = eVar.s(1);
                e.b bVar = e.b.MATCH_CONSTRAINT;
                boolean z11 = s10 == bVar && eVar.f15199v != 1 && s11 == bVar && eVar.f15201w != 1;
                if (!z11 && fVar.K1(1) && !(eVar instanceof w.k)) {
                    if (s10 == bVar && eVar.f15199v == 0 && s11 != bVar && !eVar.d0()) {
                        z11 = true;
                    }
                    if (s11 == bVar && eVar.f15201w == 0 && s10 != bVar && !eVar.d0()) {
                        z11 = true;
                    }
                    if (s10 != bVar) {
                    }
                }
                z10 = z11;
                if (!z10) {
                    a(A1, eVar, a.f15551k);
                }
            }
        }
        A1.b();
    }

    public final void c(w.f fVar, String str, int i10, int i11, int i12) {
        int G = fVar.G();
        int F = fVar.F();
        fVar.R0(0);
        fVar.Q0(0);
        fVar.b1(i11);
        fVar.C0(i12);
        fVar.R0(G);
        fVar.Q0(F);
        this.f15550c.O1(i10);
        this.f15550c.j1();
    }

    public long d(w.f fVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        boolean z10;
        int i19;
        w.f fVar2;
        int i20;
        boolean z11;
        int i21;
        int i22;
        boolean z12;
        b bVar = this;
        InterfaceC0402b A1 = fVar.A1();
        int size = fVar.J0.size();
        int R = fVar.R();
        int v10 = fVar.v();
        boolean b10 = w.j.b(i10, 128);
        boolean z13 = b10 || w.j.b(i10, 64);
        if (z13) {
            for (int i23 = 0; i23 < size; i23++) {
                w.e eVar = fVar.J0.get(i23);
                e.b y10 = eVar.y();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                boolean z14 = (y10 == bVar2) && (eVar.O() == bVar2) && eVar.t() > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                if ((eVar.d0() && z14) || ((eVar.f0() && z14) || (eVar instanceof w.k) || eVar.d0() || eVar.f0())) {
                    z13 = false;
                    break;
                }
            }
        }
        if (z13) {
            t.e eVar2 = t.d.f13928x;
        }
        boolean z15 = z13 & ((i13 == 1073741824 && i15 == 1073741824) || b10);
        if (z15) {
            int min = Math.min(fVar.E(), i14);
            int min2 = Math.min(fVar.D(), i16);
            if (i13 == 1073741824 && fVar.R() != min) {
                fVar.b1(min);
                fVar.D1();
            }
            if (i15 == 1073741824 && fVar.v() != min2) {
                fVar.C0(min2);
                fVar.D1();
            }
            if (i13 == 1073741824 && i15 == 1073741824) {
                z10 = fVar.w1(b10);
                i19 = 2;
            } else {
                boolean x12 = fVar.x1(b10);
                if (i13 == 1073741824) {
                    x12 &= fVar.y1(b10, 0);
                    i19 = 1;
                } else {
                    i19 = 0;
                }
                if (i15 == 1073741824) {
                    z10 = fVar.y1(b10, 1) & x12;
                    i19++;
                } else {
                    z10 = x12;
                }
            }
            if (z10) {
                fVar.g1(i13 == 1073741824, i15 == 1073741824);
            }
        } else {
            z10 = false;
            i19 = 0;
        }
        if (z10 && i19 == 2) {
            return 0L;
        }
        int B1 = fVar.B1();
        if (size > 0) {
            b(fVar);
        }
        e(fVar);
        int size2 = bVar.f15548a.size();
        if (size > 0) {
            c(fVar, "First pass", 0, R, v10);
        }
        if (size2 > 0) {
            e.b y11 = fVar.y();
            e.b bVar3 = e.b.WRAP_CONTENT;
            boolean z16 = y11 == bVar3;
            boolean z17 = fVar.O() == bVar3;
            int max = Math.max(fVar.R(), bVar.f15550c.G());
            int max2 = Math.max(fVar.v(), bVar.f15550c.F());
            int i24 = 0;
            boolean z18 = false;
            while (i24 < size2) {
                w.e eVar3 = bVar.f15548a.get(i24);
                if (eVar3 instanceof w.k) {
                    int R2 = eVar3.R();
                    int v11 = eVar3.v();
                    i22 = B1;
                    boolean a10 = bVar.a(A1, eVar3, a.f15552l) | z18;
                    int R3 = eVar3.R();
                    int v12 = eVar3.v();
                    if (R3 != R2) {
                        eVar3.b1(R3);
                        if (z16 && eVar3.K() > max) {
                            max = Math.max(max, eVar3.K() + eVar3.m(d.b.RIGHT).e());
                        }
                        z12 = true;
                    } else {
                        z12 = a10;
                    }
                    if (v12 != v11) {
                        eVar3.C0(v12);
                        if (z17 && eVar3.p() > max2) {
                            max2 = Math.max(max2, eVar3.p() + eVar3.m(d.b.BOTTOM).e());
                        }
                        z12 = true;
                    }
                    z18 = z12 | ((w.k) eVar3).m1();
                } else {
                    i22 = B1;
                }
                i24++;
                B1 = i22;
            }
            int i25 = B1;
            int i26 = 0;
            int i27 = 2;
            while (i26 < i27) {
                int i28 = 0;
                while (i28 < size2) {
                    w.e eVar4 = bVar.f15548a.get(i28);
                    if (((eVar4 instanceof w.h) && !(eVar4 instanceof w.k)) || (eVar4 instanceof w.g) || eVar4.Q() == 8 || ((z15 && eVar4.f15165e.f15632e.f15584j && eVar4.f15167f.f15632e.f15584j) || (eVar4 instanceof w.k))) {
                        z11 = z15;
                        i21 = size2;
                    } else {
                        int R4 = eVar4.R();
                        int v13 = eVar4.v();
                        z11 = z15;
                        int n10 = eVar4.n();
                        int i29 = a.f15552l;
                        i21 = size2;
                        if (i26 == 1) {
                            i29 = a.f15553m;
                        }
                        boolean a11 = bVar.a(A1, eVar4, i29) | z18;
                        int R5 = eVar4.R();
                        int v14 = eVar4.v();
                        if (R5 != R4) {
                            eVar4.b1(R5);
                            if (z16 && eVar4.K() > max) {
                                max = Math.max(max, eVar4.K() + eVar4.m(d.b.RIGHT).e());
                            }
                            a11 = true;
                        }
                        if (v14 != v13) {
                            eVar4.C0(v14);
                            if (z17 && eVar4.p() > max2) {
                                max2 = Math.max(max2, eVar4.p() + eVar4.m(d.b.BOTTOM).e());
                            }
                            a11 = true;
                        }
                        z18 = (!eVar4.U() || n10 == eVar4.n()) ? a11 : true;
                    }
                    i28++;
                    bVar = this;
                    z15 = z11;
                    size2 = i21;
                }
                boolean z19 = z15;
                int i30 = size2;
                if (!z18) {
                    break;
                }
                i26++;
                c(fVar, "intermediate pass", i26, R, v10);
                bVar = this;
                z15 = z19;
                size2 = i30;
                i27 = 2;
                z18 = false;
            }
            fVar2 = fVar;
            i20 = i25;
        } else {
            fVar2 = fVar;
            i20 = B1;
        }
        fVar2.N1(i20);
        return 0L;
    }

    public void e(w.f fVar) {
        this.f15548a.clear();
        int size = fVar.J0.size();
        for (int i10 = 0; i10 < size; i10++) {
            w.e eVar = fVar.J0.get(i10);
            e.b y10 = eVar.y();
            e.b bVar = e.b.MATCH_CONSTRAINT;
            if (y10 == bVar || eVar.O() == bVar) {
                this.f15548a.add(eVar);
            }
        }
        fVar.D1();
    }
}

package w;

import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import w.d;
import x.n;
import x.p;

/* compiled from: ConstraintWidget.java */
/* loaded from: classes.dex */
public class e {
    public static float I0 = 0.5f;
    public boolean A0;
    public float[] B0;
    public e[] C0;
    public e[] D0;
    public e E0;
    public e F0;
    public int G0;
    public int H0;
    public boolean J;
    public d U;
    public d[] V;
    public ArrayList<d> W;
    public boolean[] X;
    public b[] Y;
    public e Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f15158a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f15160b0;

    /* renamed from: c, reason: collision with root package name */
    public x.c f15161c;

    /* renamed from: c0, reason: collision with root package name */
    public float f15162c0;

    /* renamed from: d, reason: collision with root package name */
    public x.c f15163d;

    /* renamed from: d0, reason: collision with root package name */
    public int f15164d0;

    /* renamed from: e0, reason: collision with root package name */
    public int f15166e0;

    /* renamed from: f0, reason: collision with root package name */
    public int f15168f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f15170g0;

    /* renamed from: h0, reason: collision with root package name */
    public int f15172h0;

    /* renamed from: i0, reason: collision with root package name */
    public int f15174i0;

    /* renamed from: j0, reason: collision with root package name */
    public int f15176j0;

    /* renamed from: k0, reason: collision with root package name */
    public int f15178k0;

    /* renamed from: l0, reason: collision with root package name */
    public int f15180l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f15182m0;

    /* renamed from: n0, reason: collision with root package name */
    public float f15184n0;

    /* renamed from: o0, reason: collision with root package name */
    public float f15186o0;

    /* renamed from: p0, reason: collision with root package name */
    public Object f15188p0;

    /* renamed from: q0, reason: collision with root package name */
    public int f15190q0;

    /* renamed from: r0, reason: collision with root package name */
    public int f15192r0;

    /* renamed from: s0, reason: collision with root package name */
    public String f15194s0;

    /* renamed from: t0, reason: collision with root package name */
    public String f15196t0;

    /* renamed from: u0, reason: collision with root package name */
    public boolean f15198u0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f15200v0;

    /* renamed from: w0, reason: collision with root package name */
    public boolean f15202w0;

    /* renamed from: x0, reason: collision with root package name */
    public int f15204x0;

    /* renamed from: y0, reason: collision with root package name */
    public int f15206y0;

    /* renamed from: z0, reason: collision with root package name */
    public boolean f15208z0;

    /* renamed from: a, reason: collision with root package name */
    public boolean f15157a = false;

    /* renamed from: b, reason: collision with root package name */
    public p[] f15159b = new p[2];

    /* renamed from: e, reason: collision with root package name */
    public x.l f15165e = null;

    /* renamed from: f, reason: collision with root package name */
    public n f15167f = null;

    /* renamed from: g, reason: collision with root package name */
    public boolean[] f15169g = {true, true};

    /* renamed from: h, reason: collision with root package name */
    public boolean f15171h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f15173i = true;

    /* renamed from: j, reason: collision with root package name */
    public boolean f15175j = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f15177k = true;

    /* renamed from: l, reason: collision with root package name */
    public int f15179l = -1;

    /* renamed from: m, reason: collision with root package name */
    public int f15181m = -1;

    /* renamed from: n, reason: collision with root package name */
    public v.a f15183n = new v.a(this);

    /* renamed from: o, reason: collision with root package name */
    public boolean f15185o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f15187p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f15189q = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f15191r = false;

    /* renamed from: s, reason: collision with root package name */
    public int f15193s = -1;

    /* renamed from: t, reason: collision with root package name */
    public int f15195t = -1;

    /* renamed from: u, reason: collision with root package name */
    public int f15197u = 0;

    /* renamed from: v, reason: collision with root package name */
    public int f15199v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f15201w = 0;

    /* renamed from: x, reason: collision with root package name */
    public int[] f15203x = new int[2];

    /* renamed from: y, reason: collision with root package name */
    public int f15205y = 0;

    /* renamed from: z, reason: collision with root package name */
    public int f15207z = 0;
    public float A = 1.0f;
    public int B = 0;
    public int C = 0;
    public float D = 1.0f;
    public int E = -1;
    public float F = 1.0f;
    public int[] G = {Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER};
    public float H = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public boolean I = false;
    public boolean K = false;
    public int L = 0;
    public int M = 0;
    public d N = new d(this, d.b.LEFT);
    public d O = new d(this, d.b.TOP);
    public d P = new d(this, d.b.RIGHT);
    public d Q = new d(this, d.b.BOTTOM);
    public d R = new d(this, d.b.BASELINE);
    public d S = new d(this, d.b.CENTER_X);
    public d T = new d(this, d.b.CENTER_Y);

    /* compiled from: ConstraintWidget.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15209a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f15210b;

        static {
            int[] iArr = new int[b.values().length];
            f15210b = iArr;
            try {
                iArr[b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15210b[b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15210b[b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15210b[b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[d.b.values().length];
            f15209a = iArr2;
            try {
                iArr2[d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15209a[d.b.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15209a[d.b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15209a[d.b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15209a[d.b.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15209a[d.b.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15209a[d.b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15209a[d.b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15209a[d.b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* compiled from: ConstraintWidget.java */
    /* loaded from: classes.dex */
    public enum b {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public e() {
        d dVar = new d(this, d.b.CENTER);
        this.U = dVar;
        this.V = new d[]{this.N, this.P, this.O, this.Q, this.R, dVar};
        this.W = new ArrayList<>();
        this.X = new boolean[2];
        b bVar = b.FIXED;
        this.Y = new b[]{bVar, bVar};
        this.Z = null;
        this.f15158a0 = 0;
        this.f15160b0 = 0;
        this.f15162c0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f15164d0 = -1;
        this.f15166e0 = 0;
        this.f15168f0 = 0;
        this.f15170g0 = 0;
        this.f15172h0 = 0;
        this.f15174i0 = 0;
        this.f15176j0 = 0;
        this.f15178k0 = 0;
        float f10 = I0;
        this.f15184n0 = f10;
        this.f15186o0 = f10;
        this.f15190q0 = 0;
        this.f15192r0 = 0;
        this.f15194s0 = null;
        this.f15196t0 = null;
        this.f15202w0 = false;
        this.f15204x0 = 0;
        this.f15206y0 = 0;
        this.B0 = new float[]{-1.0f, -1.0f};
        this.C0 = new e[]{null, null};
        this.D0 = new e[]{null, null};
        this.E0 = null;
        this.F0 = null;
        this.G0 = -1;
        this.H0 = -1;
        d();
    }

    public int A() {
        return this.L;
    }

    public void A0(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i12 - i10;
        int i17 = i13 - i11;
        this.f15166e0 = i10;
        this.f15168f0 = i11;
        if (this.f15192r0 == 8) {
            this.f15158a0 = 0;
            this.f15160b0 = 0;
            return;
        }
        b[] bVarArr = this.Y;
        b bVar = bVarArr[0];
        b bVar2 = b.FIXED;
        if (bVar == bVar2 && i16 < (i15 = this.f15158a0)) {
            i16 = i15;
        }
        if (bVarArr[1] == bVar2 && i17 < (i14 = this.f15160b0)) {
            i17 = i14;
        }
        this.f15158a0 = i16;
        this.f15160b0 = i17;
        int i18 = this.f15182m0;
        if (i17 < i18) {
            this.f15160b0 = i18;
        }
        int i19 = this.f15180l0;
        if (i16 < i19) {
            this.f15158a0 = i19;
        }
        int i20 = this.f15207z;
        if (i20 > 0 && bVarArr[0] == b.MATCH_CONSTRAINT) {
            this.f15158a0 = Math.min(this.f15158a0, i20);
        }
        int i21 = this.C;
        if (i21 > 0 && this.Y[1] == b.MATCH_CONSTRAINT) {
            this.f15160b0 = Math.min(this.f15160b0, i21);
        }
        int i22 = this.f15158a0;
        if (i16 != i22) {
            this.f15179l = i22;
        }
        int i23 = this.f15160b0;
        if (i17 != i23) {
            this.f15181m = i23;
        }
    }

    public int B() {
        return this.M;
    }

    public void B0(boolean z10) {
        this.I = z10;
    }

    public int C(int i10) {
        if (i10 == 0) {
            return R();
        }
        if (i10 == 1) {
            return v();
        }
        return 0;
    }

    public void C0(int i10) {
        this.f15160b0 = i10;
        int i11 = this.f15182m0;
        if (i10 < i11) {
            this.f15160b0 = i11;
        }
    }

    public int D() {
        return this.G[1];
    }

    public void D0(float f10) {
        this.f15184n0 = f10;
    }

    public int E() {
        return this.G[0];
    }

    public void E0(int i10) {
        this.f15204x0 = i10;
    }

    public int F() {
        return this.f15182m0;
    }

    public void F0(int i10, int i11) {
        this.f15166e0 = i10;
        int i12 = i11 - i10;
        this.f15158a0 = i12;
        int i13 = this.f15180l0;
        if (i12 < i13) {
            this.f15158a0 = i13;
        }
    }

    public int G() {
        return this.f15180l0;
    }

    public void G0(b bVar) {
        this.Y[0] = bVar;
    }

    public e H(int i10) {
        d dVar;
        d dVar2;
        if (i10 != 0) {
            if (i10 == 1 && (dVar2 = (dVar = this.Q).f15142f) != null && dVar2.f15142f == dVar) {
                return dVar2.f15140d;
            }
            return null;
        }
        d dVar3 = this.P;
        d dVar4 = dVar3.f15142f;
        if (dVar4 == null || dVar4.f15142f != dVar3) {
            return null;
        }
        return dVar4.f15140d;
    }

    public void H0(int i10, int i11, int i12, float f10) {
        this.f15199v = i10;
        this.f15205y = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.f15207z = i12;
        this.A = f10;
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.f15199v = 2;
    }

    public e I() {
        return this.Z;
    }

    public void I0(float f10) {
        this.B0[0] = f10;
    }

    public e J(int i10) {
        d dVar;
        d dVar2;
        if (i10 != 0) {
            if (i10 == 1 && (dVar2 = (dVar = this.O).f15142f) != null && dVar2.f15142f == dVar) {
                return dVar2.f15140d;
            }
            return null;
        }
        d dVar3 = this.N;
        d dVar4 = dVar3.f15142f;
        if (dVar4 == null || dVar4.f15142f != dVar3) {
            return null;
        }
        return dVar4.f15140d;
    }

    public void J0(int i10, boolean z10) {
        this.X[i10] = z10;
    }

    public int K() {
        return S() + this.f15158a0;
    }

    public void K0(boolean z10) {
        this.J = z10;
    }

    public p L(int i10) {
        if (i10 == 0) {
            return this.f15165e;
        }
        if (i10 == 1) {
            return this.f15167f;
        }
        return null;
    }

    public void L0(boolean z10) {
        this.K = z10;
    }

    public float M() {
        return this.f15186o0;
    }

    public void M0(int i10, int i11) {
        this.L = i10;
        this.M = i11;
        P0(false);
    }

    public int N() {
        return this.f15206y0;
    }

    public void N0(int i10) {
        this.G[1] = i10;
    }

    public b O() {
        return this.Y[1];
    }

    public void O0(int i10) {
        this.G[0] = i10;
    }

    public int P() {
        int i10 = this.N != null ? 0 + this.O.f15143g : 0;
        return this.P != null ? i10 + this.Q.f15143g : i10;
    }

    public void P0(boolean z10) {
        this.f15173i = z10;
    }

    public int Q() {
        return this.f15192r0;
    }

    public void Q0(int i10) {
        if (i10 < 0) {
            this.f15182m0 = 0;
        } else {
            this.f15182m0 = i10;
        }
    }

    public int R() {
        if (this.f15192r0 == 8) {
            return 0;
        }
        return this.f15158a0;
    }

    public void R0(int i10) {
        if (i10 < 0) {
            this.f15180l0 = 0;
        } else {
            this.f15180l0 = i10;
        }
    }

    public int S() {
        e eVar = this.Z;
        if (eVar != null && (eVar instanceof f)) {
            return ((f) eVar).Q0 + this.f15166e0;
        }
        return this.f15166e0;
    }

    public void S0(int i10, int i11) {
        this.f15166e0 = i10;
        this.f15168f0 = i11;
    }

    public int T() {
        e eVar = this.Z;
        if (eVar != null && (eVar instanceof f)) {
            return ((f) eVar).R0 + this.f15168f0;
        }
        return this.f15168f0;
    }

    public void T0(e eVar) {
        this.Z = eVar;
    }

    public boolean U() {
        return this.I;
    }

    public void U0(float f10) {
        this.f15186o0 = f10;
    }

    public boolean V(int i10) {
        if (i10 == 0) {
            return (this.N.f15142f != null ? 1 : 0) + (this.P.f15142f != null ? 1 : 0) < 2;
        }
        return ((this.O.f15142f != null ? 1 : 0) + (this.Q.f15142f != null ? 1 : 0)) + (this.R.f15142f != null ? 1 : 0) < 2;
    }

    public void V0(int i10) {
        this.f15206y0 = i10;
    }

    public boolean W() {
        int size = this.W.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.W.get(i10).l()) {
                return true;
            }
        }
        return false;
    }

    public void W0(int i10, int i11) {
        this.f15168f0 = i10;
        int i12 = i11 - i10;
        this.f15160b0 = i12;
        int i13 = this.f15182m0;
        if (i12 < i13) {
            this.f15160b0 = i13;
        }
    }

    public boolean X() {
        return (this.f15179l == -1 && this.f15181m == -1) ? false : true;
    }

    public void X0(b bVar) {
        this.Y[1] = bVar;
    }

    public boolean Y(int i10, int i11) {
        d dVar;
        d dVar2;
        if (i10 == 0) {
            d dVar3 = this.N.f15142f;
            return dVar3 != null && dVar3.m() && (dVar2 = this.P.f15142f) != null && dVar2.m() && (this.P.f15142f.d() - this.P.e()) - (this.N.f15142f.d() + this.N.e()) >= i11;
        }
        d dVar4 = this.O.f15142f;
        return dVar4 != null && dVar4.m() && (dVar = this.Q.f15142f) != null && dVar.m() && (this.Q.f15142f.d() - this.Q.e()) - (this.O.f15142f.d() + this.O.e()) >= i11;
        return false;
    }

    public void Y0(int i10, int i11, int i12, float f10) {
        this.f15201w = i10;
        this.B = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.C = i12;
        this.D = f10;
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.f15201w = 2;
    }

    public void Z(d.b bVar, e eVar, d.b bVar2, int i10, int i11) {
        m(bVar).a(eVar.m(bVar2), i10, i11, true);
    }

    public void Z0(float f10) {
        this.B0[1] = f10;
    }

    public final boolean a0(int i10) {
        int i11 = i10 * 2;
        d[] dVarArr = this.V;
        if (dVarArr[i11].f15142f != null && dVarArr[i11].f15142f.f15142f != dVarArr[i11]) {
            int i12 = i11 + 1;
            if (dVarArr[i12].f15142f != null && dVarArr[i12].f15142f.f15142f == dVarArr[i12]) {
                return true;
            }
        }
        return false;
    }

    public void a1(int i10) {
        this.f15192r0 = i10;
    }

    public boolean b0() {
        return this.f15189q;
    }

    public void b1(int i10) {
        this.f15158a0 = i10;
        int i11 = this.f15180l0;
        if (i10 < i11) {
            this.f15158a0 = i11;
        }
    }

    public boolean c0(int i10) {
        return this.X[i10];
    }

    public void c1(int i10) {
        if (i10 < 0 || i10 > 3) {
            return;
        }
        this.f15197u = i10;
    }

    public final void d() {
        this.W.add(this.N);
        this.W.add(this.O);
        this.W.add(this.P);
        this.W.add(this.Q);
        this.W.add(this.S);
        this.W.add(this.T);
        this.W.add(this.U);
        this.W.add(this.R);
    }

    public boolean d0() {
        d dVar = this.N;
        d dVar2 = dVar.f15142f;
        if (dVar2 != null && dVar2.f15142f == dVar) {
            return true;
        }
        d dVar3 = this.P;
        d dVar4 = dVar3.f15142f;
        return dVar4 != null && dVar4.f15142f == dVar3;
    }

    public void d1(int i10) {
        this.f15166e0 = i10;
    }

    public void e(f fVar, t.d dVar, HashSet<e> hashSet, int i10, boolean z10) {
        if (z10) {
            if (!hashSet.contains(this)) {
                return;
            }
            j.a(fVar, dVar, this);
            hashSet.remove(this);
            g(dVar, fVar.K1(64));
        }
        if (i10 == 0) {
            HashSet<d> c10 = this.N.c();
            if (c10 != null) {
                Iterator<d> it2 = c10.iterator();
                while (it2.hasNext()) {
                    it2.next().f15140d.e(fVar, dVar, hashSet, i10, true);
                }
            }
            HashSet<d> c11 = this.P.c();
            if (c11 != null) {
                Iterator<d> it3 = c11.iterator();
                while (it3.hasNext()) {
                    it3.next().f15140d.e(fVar, dVar, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet<d> c12 = this.O.c();
        if (c12 != null) {
            Iterator<d> it4 = c12.iterator();
            while (it4.hasNext()) {
                it4.next().f15140d.e(fVar, dVar, hashSet, i10, true);
            }
        }
        HashSet<d> c13 = this.Q.c();
        if (c13 != null) {
            Iterator<d> it5 = c13.iterator();
            while (it5.hasNext()) {
                it5.next().f15140d.e(fVar, dVar, hashSet, i10, true);
            }
        }
        HashSet<d> c14 = this.R.c();
        if (c14 != null) {
            Iterator<d> it6 = c14.iterator();
            while (it6.hasNext()) {
                it6.next().f15140d.e(fVar, dVar, hashSet, i10, true);
            }
        }
    }

    public boolean e0() {
        return this.J;
    }

    public void e1(int i10) {
        this.f15168f0 = i10;
    }

    public boolean f() {
        return (this instanceof k) || (this instanceof g);
    }

    public boolean f0() {
        d dVar = this.O;
        d dVar2 = dVar.f15142f;
        if (dVar2 != null && dVar2.f15142f == dVar) {
            return true;
        }
        d dVar3 = this.Q;
        d dVar4 = dVar3.f15142f;
        return dVar4 != null && dVar4.f15142f == dVar3;
    }

    public void f1(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (this.E == -1) {
            if (z12 && !z13) {
                this.E = 0;
            } else if (!z12 && z13) {
                this.E = 1;
                if (this.f15164d0 == -1) {
                    this.F = 1.0f / this.F;
                }
            }
        }
        if (this.E == 0 && (!this.O.n() || !this.Q.n())) {
            this.E = 1;
        } else if (this.E == 1 && (!this.N.n() || !this.P.n())) {
            this.E = 0;
        }
        if (this.E == -1 && (!this.O.n() || !this.Q.n() || !this.N.n() || !this.P.n())) {
            if (this.O.n() && this.Q.n()) {
                this.E = 0;
            } else if (this.N.n() && this.P.n()) {
                this.F = 1.0f / this.F;
                this.E = 1;
            }
        }
        if (this.E == -1) {
            int i10 = this.f15205y;
            if (i10 > 0 && this.B == 0) {
                this.E = 0;
            } else {
                if (i10 != 0 || this.B <= 0) {
                    return;
                }
                this.F = 1.0f / this.F;
                this.E = 1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x020a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(t.d dVar, boolean z10) {
        boolean z11;
        boolean z12;
        boolean z13;
        e eVar;
        e eVar2;
        boolean z14;
        boolean z15;
        int i10;
        int i11;
        int i12;
        int i13;
        float f10;
        t.i iVar;
        char c10;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z16;
        int i18;
        boolean z17;
        b bVar;
        boolean z18;
        int i19;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        b bVar2;
        b bVar3;
        t.i iVar2;
        t.i iVar3;
        t.i iVar4;
        t.i iVar5;
        t.i iVar6;
        boolean z23;
        int i20;
        int i21;
        char c11;
        e eVar3;
        t.d dVar2;
        t.i iVar7;
        t.i iVar8;
        t.i iVar9;
        boolean z24;
        t.i iVar10;
        t.i iVar11;
        e eVar4;
        boolean z25;
        x.l lVar;
        x.f fVar;
        int i22;
        int i23;
        boolean d02;
        boolean f02;
        x.l lVar2;
        n nVar;
        x.f fVar2;
        boolean[] zArr;
        t.i q10 = dVar.q(this.N);
        t.i q11 = dVar.q(this.P);
        t.i q12 = dVar.q(this.O);
        t.i q13 = dVar.q(this.Q);
        t.i q14 = dVar.q(this.R);
        e eVar5 = this.Z;
        if (eVar5 != null) {
            boolean z26 = eVar5 != null && eVar5.Y[0] == b.WRAP_CONTENT;
            boolean z27 = eVar5 != null && eVar5.Y[1] == b.WRAP_CONTENT;
            int i24 = this.f15197u;
            if (i24 != 1) {
                if (i24 == 2) {
                    z12 = z27;
                    z11 = false;
                } else if (i24 != 3) {
                    z12 = z27;
                    z11 = z26;
                }
                if (this.f15192r0 == 8 && !W()) {
                    zArr = this.X;
                    if (!zArr[0] && !zArr[1]) {
                        return;
                    }
                }
                z13 = this.f15185o;
                if (!z13 || this.f15187p) {
                    if (z13) {
                        dVar.f(q10, this.f15166e0);
                        dVar.f(q11, this.f15166e0 + this.f15158a0);
                        if (z11 && (eVar2 = this.Z) != null) {
                            if (this.f15177k) {
                                f fVar3 = (f) eVar2;
                                fVar3.q1(this.N);
                                fVar3.p1(this.P);
                            } else {
                                dVar.h(dVar.q(eVar2.P), q11, 0, 5);
                            }
                        }
                    }
                    if (this.f15187p) {
                        dVar.f(q12, this.f15168f0);
                        dVar.f(q13, this.f15168f0 + this.f15160b0);
                        if (this.R.l()) {
                            dVar.f(q14, this.f15168f0 + this.f15178k0);
                        }
                        if (z12 && (eVar = this.Z) != null) {
                            if (this.f15177k) {
                                f fVar4 = (f) eVar;
                                fVar4.v1(this.O);
                                fVar4.u1(this.Q);
                            } else {
                                dVar.h(dVar.q(eVar.Q), q13, 0, 5);
                            }
                        }
                    }
                    if (this.f15185o && this.f15187p) {
                        this.f15185o = false;
                        this.f15187p = false;
                        return;
                    }
                }
                t.e eVar6 = t.d.f13928x;
                if (z10 && (lVar2 = this.f15165e) != null && (nVar = this.f15167f) != null) {
                    fVar2 = lVar2.f15635h;
                    if (fVar2.f15584j && lVar2.f15636i.f15584j && nVar.f15635h.f15584j && nVar.f15636i.f15584j) {
                        dVar.f(q10, fVar2.f15581g);
                        dVar.f(q11, this.f15165e.f15636i.f15581g);
                        dVar.f(q12, this.f15167f.f15635h.f15581g);
                        dVar.f(q13, this.f15167f.f15636i.f15581g);
                        dVar.f(q14, this.f15167f.f15610k.f15581g);
                        if (this.Z != null) {
                            if (z11 && this.f15169g[0] && !d0()) {
                                dVar.h(dVar.q(this.Z.P), q11, 0, 8);
                            }
                            if (z12 && this.f15169g[1] && !f0()) {
                                dVar.h(dVar.q(this.Z.Q), q13, 0, 8);
                            }
                        }
                        this.f15185o = false;
                        this.f15187p = false;
                        return;
                    }
                }
                if (this.Z != null) {
                    if (a0(0)) {
                        ((f) this.Z).m1(this, 0);
                        d02 = true;
                    } else {
                        d02 = d0();
                    }
                    if (a0(1)) {
                        ((f) this.Z).m1(this, 1);
                        f02 = true;
                    } else {
                        f02 = f0();
                    }
                    if (!d02 && z11 && this.f15192r0 != 8 && this.N.f15142f == null && this.P.f15142f == null) {
                        dVar.h(dVar.q(this.Z.P), q11, 0, 1);
                    }
                    if (!f02 && z12 && this.f15192r0 != 8 && this.O.f15142f == null && this.Q.f15142f == null && this.R == null) {
                        dVar.h(dVar.q(this.Z.Q), q13, 0, 1);
                    }
                    z15 = d02;
                    z14 = f02;
                } else {
                    z14 = false;
                    z15 = false;
                }
                i10 = this.f15158a0;
                i11 = this.f15180l0;
                if (i10 >= i11) {
                    i11 = i10;
                }
                i12 = this.f15160b0;
                i13 = this.f15182m0;
                if (i12 >= i13) {
                    i13 = i12;
                }
                b[] bVarArr = this.Y;
                b bVar4 = bVarArr[0];
                b bVar5 = b.MATCH_CONSTRAINT;
                int i25 = i11;
                boolean z28 = bVar4 != bVar5;
                int i26 = i13;
                boolean z29 = bVarArr[1] != bVar5;
                int i27 = this.f15164d0;
                this.E = i27;
                f10 = this.f15162c0;
                this.F = f10;
                int i28 = this.f15199v;
                int i29 = this.f15201w;
                if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    iVar = q10;
                    if (this.f15192r0 != 8) {
                        if (bVarArr[0] == bVar5 && i28 == 0) {
                            i28 = 3;
                        }
                        if (bVarArr[1] == bVar5 && i29 == 0) {
                            i29 = 3;
                        }
                        if (bVarArr[0] == bVar5 && bVarArr[1] == bVar5) {
                            i23 = 3;
                            if (i28 == 3 && i29 == 3) {
                                f1(z11, z12, z28, z29);
                                c10 = 0;
                                i14 = i28;
                                i15 = i29;
                                i16 = i25;
                                i17 = i26;
                                z16 = true;
                                int[] iArr = this.f15203x;
                                iArr[c10] = i14;
                                iArr[1] = i15;
                                this.f15171h = z16;
                                if (z16) {
                                    int i30 = this.E;
                                    i18 = -1;
                                    if (i30 == 0 || i30 == -1) {
                                        z17 = true;
                                        boolean z30 = !z16 && ((i22 = this.E) == 1 || i22 == i18);
                                        b bVar6 = this.Y[0];
                                        bVar = b.WRAP_CONTENT;
                                        z18 = bVar6 != bVar && (this instanceof f);
                                        i19 = !z18 ? 0 : i16;
                                        z19 = !this.U.n();
                                        boolean[] zArr2 = this.X;
                                        z20 = zArr2[0];
                                        boolean z31 = zArr2[1];
                                        if (this.f15193s != 2 && !this.f15185o) {
                                            if (z10 && (lVar = this.f15165e) != null) {
                                                fVar = lVar.f15635h;
                                                if (fVar.f15584j && lVar.f15636i.f15584j) {
                                                    if (!z10) {
                                                        t.i iVar12 = iVar;
                                                        dVar.f(iVar12, fVar.f15581g);
                                                        dVar.f(q11, this.f15165e.f15636i.f15581g);
                                                        if (this.Z != null && z11 && this.f15169g[0] && !d0()) {
                                                            dVar.h(dVar.q(this.Z.P), q11, 0, 8);
                                                        }
                                                        z21 = z11;
                                                        z22 = z12;
                                                        bVar2 = bVar5;
                                                        bVar3 = bVar;
                                                        z23 = z16;
                                                        iVar2 = q14;
                                                        iVar3 = q13;
                                                        iVar4 = q12;
                                                        iVar5 = q11;
                                                        iVar6 = iVar12;
                                                        if (z10) {
                                                            eVar3 = this;
                                                            n nVar2 = eVar3.f15167f;
                                                            if (nVar2 != null) {
                                                                x.f fVar5 = nVar2.f15635h;
                                                                if (fVar5.f15584j && nVar2.f15636i.f15584j) {
                                                                    dVar2 = dVar;
                                                                    iVar9 = iVar4;
                                                                    dVar2.f(iVar9, fVar5.f15581g);
                                                                    iVar8 = iVar3;
                                                                    dVar2.f(iVar8, eVar3.f15167f.f15636i.f15581g);
                                                                    iVar7 = iVar2;
                                                                    dVar2.f(iVar7, eVar3.f15167f.f15610k.f15581g);
                                                                    e eVar7 = eVar3.Z;
                                                                    if (eVar7 == null || z14 || !z22) {
                                                                        i20 = 8;
                                                                        i21 = 0;
                                                                        c11 = 1;
                                                                    } else {
                                                                        c11 = 1;
                                                                        if (eVar3.f15169g[1]) {
                                                                            i20 = 8;
                                                                            i21 = 0;
                                                                            dVar2.h(dVar2.q(eVar7.Q), iVar8, 0, 8);
                                                                        } else {
                                                                            i20 = 8;
                                                                            i21 = 0;
                                                                        }
                                                                    }
                                                                    z24 = false;
                                                                    if ((eVar3.f15195t != 2 ? false : z24) || eVar3.f15187p) {
                                                                        iVar10 = iVar8;
                                                                        iVar11 = iVar9;
                                                                    } else {
                                                                        boolean z32 = eVar3.Y[c11] == bVar3 && (eVar3 instanceof f);
                                                                        if (z32) {
                                                                            i17 = 0;
                                                                        }
                                                                        e eVar8 = eVar3.Z;
                                                                        t.i q15 = eVar8 != null ? dVar2.q(eVar8.Q) : null;
                                                                        e eVar9 = eVar3.Z;
                                                                        t.i q16 = eVar9 != null ? dVar2.q(eVar9.O) : null;
                                                                        if (eVar3.f15178k0 > 0 || eVar3.f15192r0 == i20) {
                                                                            d dVar3 = eVar3.R;
                                                                            if (dVar3.f15142f != null) {
                                                                                dVar2.e(iVar7, iVar9, n(), i20);
                                                                                dVar2.e(iVar7, dVar2.q(eVar3.R.f15142f), eVar3.R.e(), i20);
                                                                                if (z22) {
                                                                                    dVar2.h(q15, dVar2.q(eVar3.Q), i21, 5);
                                                                                }
                                                                                z25 = false;
                                                                                boolean z33 = eVar3.f15169g[c11];
                                                                                b[] bVarArr2 = eVar3.Y;
                                                                                iVar10 = iVar8;
                                                                                iVar11 = iVar9;
                                                                                i(dVar, false, z22, z21, z33, q16, q15, bVarArr2[c11], z32, eVar3.O, eVar3.Q, eVar3.f15168f0, i17, eVar3.f15182m0, eVar3.G[c11], eVar3.f15186o0, z30, bVarArr2[0] != bVar2, z14, z15, z31, i15, i14, eVar3.B, eVar3.C, eVar3.D, z25);
                                                                            } else if (eVar3.f15192r0 == i20) {
                                                                                dVar2.e(iVar7, iVar9, dVar3.e(), i20);
                                                                            } else {
                                                                                dVar2.e(iVar7, iVar9, n(), i20);
                                                                            }
                                                                        }
                                                                        z25 = z19;
                                                                        boolean z332 = eVar3.f15169g[c11];
                                                                        b[] bVarArr22 = eVar3.Y;
                                                                        iVar10 = iVar8;
                                                                        iVar11 = iVar9;
                                                                        i(dVar, false, z22, z21, z332, q16, q15, bVarArr22[c11], z32, eVar3.O, eVar3.Q, eVar3.f15168f0, i17, eVar3.f15182m0, eVar3.G[c11], eVar3.f15186o0, z30, bVarArr22[0] != bVar2, z14, z15, z31, i15, i14, eVar3.B, eVar3.C, eVar3.D, z25);
                                                                    }
                                                                    if (z23) {
                                                                        eVar4 = this;
                                                                    } else {
                                                                        eVar4 = this;
                                                                        if (eVar4.E == 1) {
                                                                            dVar.k(iVar10, iVar11, iVar5, iVar6, eVar4.F, 8);
                                                                        } else {
                                                                            dVar.k(iVar5, iVar6, iVar10, iVar11, eVar4.F, 8);
                                                                        }
                                                                    }
                                                                    if (eVar4.U.n()) {
                                                                        dVar.b(eVar4, eVar4.U.i().g(), (float) Math.toRadians(eVar4.H + 90.0f), eVar4.U.e());
                                                                    }
                                                                    eVar4.f15185o = false;
                                                                    eVar4.f15187p = false;
                                                                }
                                                            }
                                                            dVar2 = dVar;
                                                            iVar7 = iVar2;
                                                            iVar8 = iVar3;
                                                            iVar9 = iVar4;
                                                            i20 = 8;
                                                            i21 = 0;
                                                            c11 = 1;
                                                        } else {
                                                            i20 = 8;
                                                            i21 = 0;
                                                            c11 = 1;
                                                            eVar3 = this;
                                                            dVar2 = dVar;
                                                            iVar7 = iVar2;
                                                            iVar8 = iVar3;
                                                            iVar9 = iVar4;
                                                        }
                                                        z24 = true;
                                                        if (eVar3.f15195t != 2 ? false : z24) {
                                                        }
                                                        iVar10 = iVar8;
                                                        iVar11 = iVar9;
                                                        if (z23) {
                                                        }
                                                        if (eVar4.U.n()) {
                                                        }
                                                        eVar4.f15185o = false;
                                                        eVar4.f15187p = false;
                                                    }
                                                }
                                            }
                                            t.i iVar13 = iVar;
                                            e eVar10 = this.Z;
                                            t.i q17 = eVar10 == null ? dVar.q(eVar10.P) : null;
                                            e eVar11 = this.Z;
                                            t.i q18 = eVar11 == null ? dVar.q(eVar11.N) : null;
                                            boolean z34 = this.f15169g[0];
                                            b[] bVarArr3 = this.Y;
                                            z21 = z11;
                                            z22 = z12;
                                            bVar2 = bVar5;
                                            iVar2 = q14;
                                            iVar3 = q13;
                                            iVar4 = q12;
                                            iVar5 = q11;
                                            bVar3 = bVar;
                                            iVar6 = iVar13;
                                            z23 = z16;
                                            i(dVar, true, z11, z12, z34, q18, q17, bVarArr3[0], z18, this.N, this.P, this.f15166e0, i19, this.f15180l0, this.G[0], this.f15184n0, z17, bVarArr3[1] != bVar5, z15, z14, z20, i14, i15, this.f15205y, this.f15207z, this.A, z19);
                                            if (z10) {
                                            }
                                            z24 = true;
                                            if (eVar3.f15195t != 2 ? false : z24) {
                                            }
                                            iVar10 = iVar8;
                                            iVar11 = iVar9;
                                            if (z23) {
                                            }
                                            if (eVar4.U.n()) {
                                            }
                                            eVar4.f15185o = false;
                                            eVar4.f15187p = false;
                                        }
                                        z21 = z11;
                                        z22 = z12;
                                        bVar2 = bVar5;
                                        bVar3 = bVar;
                                        iVar2 = q14;
                                        iVar3 = q13;
                                        iVar4 = q12;
                                        iVar5 = q11;
                                        iVar6 = iVar;
                                        z23 = z16;
                                        if (z10) {
                                        }
                                        z24 = true;
                                        if (eVar3.f15195t != 2 ? false : z24) {
                                        }
                                        iVar10 = iVar8;
                                        iVar11 = iVar9;
                                        if (z23) {
                                        }
                                        if (eVar4.U.n()) {
                                        }
                                        eVar4.f15185o = false;
                                        eVar4.f15187p = false;
                                    }
                                } else {
                                    i18 = -1;
                                }
                                z17 = false;
                                if (z16) {
                                }
                                b bVar62 = this.Y[0];
                                bVar = b.WRAP_CONTENT;
                                if (bVar62 != bVar) {
                                }
                                if (!z18) {
                                }
                                z19 = !this.U.n();
                                boolean[] zArr22 = this.X;
                                z20 = zArr22[0];
                                boolean z312 = zArr22[1];
                                if (this.f15193s != 2) {
                                    if (z10) {
                                        fVar = lVar.f15635h;
                                        if (fVar.f15584j) {
                                            if (!z10) {
                                            }
                                        }
                                    }
                                    t.i iVar132 = iVar;
                                    e eVar102 = this.Z;
                                    if (eVar102 == null) {
                                    }
                                    e eVar112 = this.Z;
                                    if (eVar112 == null) {
                                    }
                                    boolean z342 = this.f15169g[0];
                                    b[] bVarArr32 = this.Y;
                                    z21 = z11;
                                    z22 = z12;
                                    bVar2 = bVar5;
                                    iVar2 = q14;
                                    iVar3 = q13;
                                    iVar4 = q12;
                                    iVar5 = q11;
                                    bVar3 = bVar;
                                    iVar6 = iVar132;
                                    z23 = z16;
                                    i(dVar, true, z11, z12, z342, q18, q17, bVarArr32[0], z18, this.N, this.P, this.f15166e0, i19, this.f15180l0, this.G[0], this.f15184n0, z17, bVarArr32[1] != bVar5, z15, z14, z20, i14, i15, this.f15205y, this.f15207z, this.A, z19);
                                    if (z10) {
                                    }
                                    z24 = true;
                                    if (eVar3.f15195t != 2 ? false : z24) {
                                    }
                                    iVar10 = iVar8;
                                    iVar11 = iVar9;
                                    if (z23) {
                                    }
                                    if (eVar4.U.n()) {
                                    }
                                    eVar4.f15185o = false;
                                    eVar4.f15187p = false;
                                }
                                z21 = z11;
                                z22 = z12;
                                bVar2 = bVar5;
                                bVar3 = bVar;
                                iVar2 = q14;
                                iVar3 = q13;
                                iVar4 = q12;
                                iVar5 = q11;
                                iVar6 = iVar;
                                z23 = z16;
                                if (z10) {
                                }
                                z24 = true;
                                if (eVar3.f15195t != 2 ? false : z24) {
                                }
                                iVar10 = iVar8;
                                iVar11 = iVar9;
                                if (z23) {
                                }
                                if (eVar4.U.n()) {
                                }
                                eVar4.f15185o = false;
                                eVar4.f15187p = false;
                            }
                        } else {
                            i23 = 3;
                        }
                        if (bVarArr[0] == bVar5 && i28 == i23) {
                            this.E = 0;
                            i16 = (int) (f10 * i12);
                            if (bVarArr[1] != bVar5) {
                                i15 = i29;
                                i17 = i26;
                                z16 = false;
                                c10 = 0;
                                i14 = 4;
                            } else {
                                i14 = i28;
                                i15 = i29;
                                i17 = i26;
                                z16 = true;
                                c10 = 0;
                            }
                        } else {
                            if (bVarArr[1] == bVar5 && i29 == 3) {
                                this.E = 1;
                                if (i27 == -1) {
                                    this.F = 1.0f / f10;
                                }
                                c10 = 0;
                                i17 = (int) (this.F * i10);
                                i14 = i28;
                                if (bVarArr[0] != bVar5) {
                                    i16 = i25;
                                    z16 = false;
                                    i15 = 4;
                                } else {
                                    i15 = i29;
                                    i16 = i25;
                                    z16 = true;
                                }
                            }
                            c10 = 0;
                            i14 = i28;
                            i15 = i29;
                            i16 = i25;
                            i17 = i26;
                            z16 = true;
                        }
                        int[] iArr2 = this.f15203x;
                        iArr2[c10] = i14;
                        iArr2[1] = i15;
                        this.f15171h = z16;
                        if (z16) {
                        }
                        z17 = false;
                        if (z16) {
                        }
                        b bVar622 = this.Y[0];
                        bVar = b.WRAP_CONTENT;
                        if (bVar622 != bVar) {
                        }
                        if (!z18) {
                        }
                        z19 = !this.U.n();
                        boolean[] zArr222 = this.X;
                        z20 = zArr222[0];
                        boolean z3122 = zArr222[1];
                        if (this.f15193s != 2) {
                        }
                        z21 = z11;
                        z22 = z12;
                        bVar2 = bVar5;
                        bVar3 = bVar;
                        iVar2 = q14;
                        iVar3 = q13;
                        iVar4 = q12;
                        iVar5 = q11;
                        iVar6 = iVar;
                        z23 = z16;
                        if (z10) {
                        }
                        z24 = true;
                        if (eVar3.f15195t != 2 ? false : z24) {
                        }
                        iVar10 = iVar8;
                        iVar11 = iVar9;
                        if (z23) {
                        }
                        if (eVar4.U.n()) {
                        }
                        eVar4.f15185o = false;
                        eVar4.f15187p = false;
                    }
                } else {
                    iVar = q10;
                }
                c10 = 0;
                i14 = i28;
                i15 = i29;
                i16 = i25;
                i17 = i26;
                z16 = false;
                int[] iArr22 = this.f15203x;
                iArr22[c10] = i14;
                iArr22[1] = i15;
                this.f15171h = z16;
                if (z16) {
                }
                z17 = false;
                if (z16) {
                }
                b bVar6222 = this.Y[0];
                bVar = b.WRAP_CONTENT;
                if (bVar6222 != bVar) {
                }
                if (!z18) {
                }
                z19 = !this.U.n();
                boolean[] zArr2222 = this.X;
                z20 = zArr2222[0];
                boolean z31222 = zArr2222[1];
                if (this.f15193s != 2) {
                }
                z21 = z11;
                z22 = z12;
                bVar2 = bVar5;
                bVar3 = bVar;
                iVar2 = q14;
                iVar3 = q13;
                iVar4 = q12;
                iVar5 = q11;
                iVar6 = iVar;
                z23 = z16;
                if (z10) {
                }
                z24 = true;
                if (eVar3.f15195t != 2 ? false : z24) {
                }
                iVar10 = iVar8;
                iVar11 = iVar9;
                if (z23) {
                }
                if (eVar4.U.n()) {
                }
                eVar4.f15185o = false;
                eVar4.f15187p = false;
            }
            z11 = z26;
            z12 = false;
            if (this.f15192r0 == 8) {
                zArr = this.X;
                if (!zArr[0]) {
                    return;
                }
            }
            z13 = this.f15185o;
            if (!z13) {
            }
            if (z13) {
            }
            if (this.f15187p) {
            }
            if (this.f15185o) {
                this.f15185o = false;
                this.f15187p = false;
                return;
            }
            t.e eVar62 = t.d.f13928x;
            if (z10) {
                fVar2 = lVar2.f15635h;
                if (fVar2.f15584j) {
                    dVar.f(q10, fVar2.f15581g);
                    dVar.f(q11, this.f15165e.f15636i.f15581g);
                    dVar.f(q12, this.f15167f.f15635h.f15581g);
                    dVar.f(q13, this.f15167f.f15636i.f15581g);
                    dVar.f(q14, this.f15167f.f15610k.f15581g);
                    if (this.Z != null) {
                    }
                    this.f15185o = false;
                    this.f15187p = false;
                    return;
                }
            }
            if (this.Z != null) {
            }
            i10 = this.f15158a0;
            i11 = this.f15180l0;
            if (i10 >= i11) {
            }
            i12 = this.f15160b0;
            i13 = this.f15182m0;
            if (i12 >= i13) {
            }
            b[] bVarArr4 = this.Y;
            b bVar42 = bVarArr4[0];
            b bVar52 = b.MATCH_CONSTRAINT;
            int i252 = i11;
            if (bVar42 != bVar52) {
            }
            int i262 = i13;
            if (bVarArr4[1] != bVar52) {
            }
            int i272 = this.f15164d0;
            this.E = i272;
            f10 = this.f15162c0;
            this.F = f10;
            int i282 = this.f15199v;
            int i292 = this.f15201w;
            if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            }
            c10 = 0;
            i14 = i282;
            i15 = i292;
            i16 = i252;
            i17 = i262;
            z16 = false;
            int[] iArr222 = this.f15203x;
            iArr222[c10] = i14;
            iArr222[1] = i15;
            this.f15171h = z16;
            if (z16) {
            }
            z17 = false;
            if (z16) {
            }
            b bVar62222 = this.Y[0];
            bVar = b.WRAP_CONTENT;
            if (bVar62222 != bVar) {
            }
            if (!z18) {
            }
            z19 = !this.U.n();
            boolean[] zArr22222 = this.X;
            z20 = zArr22222[0];
            boolean z312222 = zArr22222[1];
            if (this.f15193s != 2) {
            }
            z21 = z11;
            z22 = z12;
            bVar2 = bVar52;
            bVar3 = bVar;
            iVar2 = q14;
            iVar3 = q13;
            iVar4 = q12;
            iVar5 = q11;
            iVar6 = iVar;
            z23 = z16;
            if (z10) {
            }
            z24 = true;
            if (eVar3.f15195t != 2 ? false : z24) {
            }
            iVar10 = iVar8;
            iVar11 = iVar9;
            if (z23) {
            }
            if (eVar4.U.n()) {
            }
            eVar4.f15185o = false;
            eVar4.f15187p = false;
        }
        z11 = false;
        z12 = false;
        if (this.f15192r0 == 8) {
        }
        z13 = this.f15185o;
        if (!z13) {
        }
        if (z13) {
        }
        if (this.f15187p) {
        }
        if (this.f15185o) {
        }
        t.e eVar622 = t.d.f13928x;
        if (z10) {
        }
        if (this.Z != null) {
        }
        i10 = this.f15158a0;
        i11 = this.f15180l0;
        if (i10 >= i11) {
        }
        i12 = this.f15160b0;
        i13 = this.f15182m0;
        if (i12 >= i13) {
        }
        b[] bVarArr42 = this.Y;
        b bVar422 = bVarArr42[0];
        b bVar522 = b.MATCH_CONSTRAINT;
        int i2522 = i11;
        if (bVar422 != bVar522) {
        }
        int i2622 = i13;
        if (bVarArr42[1] != bVar522) {
        }
        int i2722 = this.f15164d0;
        this.E = i2722;
        f10 = this.f15162c0;
        this.F = f10;
        int i2822 = this.f15199v;
        int i2922 = this.f15201w;
        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
        }
        c10 = 0;
        i14 = i2822;
        i15 = i2922;
        i16 = i2522;
        i17 = i2622;
        z16 = false;
        int[] iArr2222 = this.f15203x;
        iArr2222[c10] = i14;
        iArr2222[1] = i15;
        this.f15171h = z16;
        if (z16) {
        }
        z17 = false;
        if (z16) {
        }
        b bVar622222 = this.Y[0];
        bVar = b.WRAP_CONTENT;
        if (bVar622222 != bVar) {
        }
        if (!z18) {
        }
        z19 = !this.U.n();
        boolean[] zArr222222 = this.X;
        z20 = zArr222222[0];
        boolean z3122222 = zArr222222[1];
        if (this.f15193s != 2) {
        }
        z21 = z11;
        z22 = z12;
        bVar2 = bVar522;
        bVar3 = bVar;
        iVar2 = q14;
        iVar3 = q13;
        iVar4 = q12;
        iVar5 = q11;
        iVar6 = iVar;
        z23 = z16;
        if (z10) {
        }
        z24 = true;
        if (eVar3.f15195t != 2 ? false : z24) {
        }
        iVar10 = iVar8;
        iVar11 = iVar9;
        if (z23) {
        }
        if (eVar4.U.n()) {
        }
        eVar4.f15185o = false;
        eVar4.f15187p = false;
    }

    public boolean g0() {
        return this.K;
    }

    public void g1(boolean z10, boolean z11) {
        int i10;
        int i11;
        boolean k10 = z10 & this.f15165e.k();
        boolean k11 = z11 & this.f15167f.k();
        x.l lVar = this.f15165e;
        int i12 = lVar.f15635h.f15581g;
        n nVar = this.f15167f;
        int i13 = nVar.f15635h.f15581g;
        int i14 = lVar.f15636i.f15581g;
        int i15 = nVar.f15636i.f15581g;
        int i16 = i15 - i13;
        if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
            i14 = 0;
            i12 = 0;
            i15 = 0;
            i13 = 0;
        }
        int i17 = i14 - i12;
        int i18 = i15 - i13;
        if (k10) {
            this.f15166e0 = i12;
        }
        if (k11) {
            this.f15168f0 = i13;
        }
        if (this.f15192r0 == 8) {
            this.f15158a0 = 0;
            this.f15160b0 = 0;
            return;
        }
        if (k10) {
            if (this.Y[0] == b.FIXED && i17 < (i11 = this.f15158a0)) {
                i17 = i11;
            }
            this.f15158a0 = i17;
            int i19 = this.f15180l0;
            if (i17 < i19) {
                this.f15158a0 = i19;
            }
        }
        if (k11) {
            if (this.Y[1] == b.FIXED && i18 < (i10 = this.f15160b0)) {
                i18 = i10;
            }
            this.f15160b0 = i18;
            int i20 = this.f15182m0;
            if (i18 < i20) {
                this.f15160b0 = i20;
            }
        }
    }

    public boolean h() {
        return this.f15192r0 != 8;
    }

    public boolean h0() {
        return this.f15173i && this.f15192r0 != 8;
    }

    public void h1(t.d dVar, boolean z10) {
        n nVar;
        x.l lVar;
        int y10 = dVar.y(this.N);
        int y11 = dVar.y(this.O);
        int y12 = dVar.y(this.P);
        int y13 = dVar.y(this.Q);
        if (z10 && (lVar = this.f15165e) != null) {
            x.f fVar = lVar.f15635h;
            if (fVar.f15584j) {
                x.f fVar2 = lVar.f15636i;
                if (fVar2.f15584j) {
                    y10 = fVar.f15581g;
                    y12 = fVar2.f15581g;
                }
            }
        }
        if (z10 && (nVar = this.f15167f) != null) {
            x.f fVar3 = nVar.f15635h;
            if (fVar3.f15584j) {
                x.f fVar4 = nVar.f15636i;
                if (fVar4.f15584j) {
                    y11 = fVar3.f15581g;
                    y13 = fVar4.f15581g;
                }
            }
        }
        int i10 = y13 - y11;
        if (y12 - y10 < 0 || i10 < 0 || y10 == Integer.MIN_VALUE || y10 == Integer.MAX_VALUE || y11 == Integer.MIN_VALUE || y11 == Integer.MAX_VALUE || y12 == Integer.MIN_VALUE || y12 == Integer.MAX_VALUE || y13 == Integer.MIN_VALUE || y13 == Integer.MAX_VALUE) {
            y13 = 0;
            y10 = 0;
            y11 = 0;
            y12 = 0;
        }
        A0(y10, y11, y12, y13);
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x046d, code lost:
    
        if ((r4 instanceof w.a) != false) goto L273;
     */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x050b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x055e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:323:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:325:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0527 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(t.d dVar, boolean z10, boolean z11, boolean z12, boolean z13, t.i iVar, t.i iVar2, b bVar, boolean z14, d dVar2, d dVar3, int i10, int i11, int i12, int i13, float f10, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i14, int i15, int i16, int i17, float f11, boolean z20) {
        int i18;
        boolean z21;
        int i19;
        int i20;
        int i21;
        t.i iVar3;
        int i22;
        int i23;
        t.i iVar4;
        t.i iVar5;
        t.i iVar6;
        int i24;
        boolean z22;
        boolean z23;
        t.i q10;
        t.i q11;
        d dVar4;
        int i25;
        t.i iVar7;
        int i26;
        t.i iVar8;
        t.i iVar9;
        int i27;
        int i28;
        int i29;
        boolean z24;
        boolean z25;
        int i30;
        boolean z26;
        boolean z27;
        t.i iVar10;
        e eVar;
        e eVar2;
        e eVar3;
        t.i iVar11;
        int i31;
        boolean z28;
        boolean z29;
        e eVar4;
        e eVar5;
        t.i iVar12;
        e eVar6;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        boolean z30;
        int i37;
        int i38;
        int i39;
        int i40;
        boolean z31;
        boolean z32;
        boolean z33;
        e eVar7;
        e eVar8;
        int i41 = i17;
        t.i q12 = dVar.q(dVar2);
        t.i q13 = dVar.q(dVar3);
        t.i q14 = dVar.q(dVar2.i());
        t.i q15 = dVar.q(dVar3.i());
        t.d.x();
        boolean n10 = dVar2.n();
        boolean n11 = dVar3.n();
        boolean n12 = this.U.n();
        int i42 = n11 ? (n10 ? 1 : 0) + 1 : n10 ? 1 : 0;
        if (n12) {
            i42++;
        }
        int i43 = z15 ? 3 : i14;
        int i44 = a.f15210b[bVar.ordinal()];
        if (i44 == 1 || i44 == 2 || i44 == 3 || i44 != 4) {
            i18 = i43;
        } else {
            i18 = i43;
            if (i18 != 4) {
                z21 = true;
                i19 = this.f15179l;
                if (i19 != -1 && z10) {
                    this.f15179l = -1;
                    i11 = i19;
                    z21 = false;
                }
                i20 = this.f15181m;
                if (i20 != -1 || z10) {
                    i20 = i11;
                } else {
                    this.f15181m = -1;
                    z21 = false;
                }
                int i45 = i20;
                if (this.f15192r0 != 8) {
                    i21 = 0;
                    z21 = false;
                } else {
                    i21 = i45;
                }
                if (z20) {
                    if (!n10 && !n11 && !n12) {
                        dVar.f(q12, i10);
                    } else if (n10 && !n11) {
                        iVar3 = q15;
                        dVar.e(q12, q14, dVar2.e(), 8);
                        if (!z21) {
                            if (z14) {
                                dVar.e(q13, q12, 0, 3);
                                if (i12 > 0) {
                                    dVar.h(q13, q12, i12, 8);
                                }
                                if (i13 < Integer.MAX_VALUE) {
                                    dVar.j(q13, q12, i13, 8);
                                }
                            } else {
                                dVar.e(q13, q12, i21, 8);
                            }
                            i23 = i42;
                            iVar4 = q14;
                            iVar5 = q13;
                            z22 = z21;
                            iVar6 = iVar3;
                            z23 = z13;
                        } else if (i42 == 2 || z15 || !(i18 == 1 || i18 == 0)) {
                            int i46 = i16 == -2 ? i21 : i16;
                            int i47 = i41 == -2 ? i21 : i41;
                            if (i21 > 0 && i18 != 1) {
                                i21 = 0;
                            }
                            if (i46 > 0) {
                                dVar.h(q13, q12, i46, 8);
                                i21 = Math.max(i21, i46);
                            }
                            if (i47 > 0) {
                                if ((z11 && i18 == 1) ? false : true) {
                                    i22 = 8;
                                    dVar.j(q13, q12, i47, 8);
                                } else {
                                    i22 = 8;
                                }
                                i21 = Math.min(i21, i47);
                            } else {
                                i22 = 8;
                            }
                            if (i18 == 1) {
                                if (z11) {
                                    dVar.e(q13, q12, i21, i22);
                                } else if (z17) {
                                    dVar.e(q13, q12, i21, 5);
                                    dVar.j(q13, q12, i21, i22);
                                } else {
                                    dVar.e(q13, q12, i21, 5);
                                    dVar.j(q13, q12, i21, i22);
                                }
                                i41 = i47;
                                i23 = i42;
                                iVar5 = q13;
                                z22 = z21;
                                iVar6 = iVar3;
                                z23 = z13;
                                i24 = i46;
                                iVar4 = q14;
                            } else if (i18 == 2) {
                                d.b j10 = dVar2.j();
                                d.b bVar2 = d.b.TOP;
                                if (j10 != bVar2 && dVar2.j() != d.b.BOTTOM) {
                                    q10 = dVar.q(this.Z.m(d.b.LEFT));
                                    q11 = dVar.q(this.Z.m(d.b.RIGHT));
                                } else {
                                    q10 = dVar.q(this.Z.m(bVar2));
                                    q11 = dVar.q(this.Z.m(d.b.BOTTOM));
                                }
                                int i48 = i47;
                                i23 = i42;
                                iVar6 = iVar3;
                                int i49 = i46;
                                iVar4 = q14;
                                iVar5 = q13;
                                dVar.d(dVar.r().k(q13, q12, q11, q10, f11));
                                if (z11) {
                                    z21 = false;
                                }
                                i41 = i48;
                                i24 = i49;
                                z22 = z21;
                                z23 = z13;
                            } else {
                                int i50 = i47;
                                int i51 = i46;
                                i23 = i42;
                                iVar4 = q14;
                                iVar5 = q13;
                                iVar6 = iVar3;
                                i41 = i50;
                                i24 = i51;
                                z22 = z21;
                                z23 = true;
                            }
                            if (z20 || z17) {
                                if (i23 >= 2 && z11 && z23) {
                                    dVar.h(q12, iVar, 0, 8);
                                    boolean z34 = z10 || this.R.f15142f == null;
                                    if (!z10 && (dVar4 = this.R.f15142f) != null) {
                                        e eVar9 = dVar4.f15140d;
                                        if (eVar9.f15162c0 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                            b[] bVarArr = eVar9.Y;
                                            b bVar3 = bVarArr[0];
                                            b bVar4 = b.MATCH_CONSTRAINT;
                                            if (bVar3 == bVar4 && bVarArr[1] == bVar4) {
                                                z34 = true;
                                            }
                                        }
                                        z34 = false;
                                    }
                                    if (z34) {
                                        dVar.h(iVar2, iVar5, 0, 8);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            if (n10 || n11 || n12) {
                                if (!n10 || n11) {
                                    if (n10 || !n11) {
                                        i25 = 0;
                                        if (n10 && n11) {
                                            e eVar10 = dVar2.f15142f.f15140d;
                                            e eVar11 = dVar3.f15142f.f15140d;
                                            e I = I();
                                            if (!z22) {
                                                if (iVar4.f13968l && iVar6.f13968l) {
                                                    dVar.c(q12, iVar4, dVar2.e(), f10, iVar6, iVar5, dVar3.e(), 8);
                                                    if (z11 && z23) {
                                                        if (dVar3.f15142f != null) {
                                                            i27 = dVar3.e();
                                                            iVar9 = iVar2;
                                                        } else {
                                                            iVar9 = iVar2;
                                                            i27 = 0;
                                                        }
                                                        if (iVar6 != iVar9) {
                                                            dVar.h(iVar9, iVar5, i27, 5);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                iVar8 = iVar2;
                                            } else {
                                                if (i18 == 0) {
                                                    if (i41 != 0 || i24 != 0) {
                                                        i39 = 5;
                                                        i40 = 5;
                                                        z31 = true;
                                                        z32 = false;
                                                        z33 = true;
                                                    } else if (iVar4.f13968l && iVar6.f13968l) {
                                                        dVar.e(q12, iVar4, dVar2.e(), 8);
                                                        dVar.e(iVar5, iVar6, -dVar3.e(), 8);
                                                        return;
                                                    } else {
                                                        i39 = 8;
                                                        i40 = 8;
                                                        z31 = false;
                                                        z32 = true;
                                                        z33 = false;
                                                    }
                                                    if ((eVar10 instanceof w.a) || (eVar11 instanceof w.a)) {
                                                        iVar8 = iVar2;
                                                        z24 = z31;
                                                        z26 = z32;
                                                        z25 = z33;
                                                        i28 = 6;
                                                        i29 = 4;
                                                    } else {
                                                        iVar8 = iVar2;
                                                        i29 = i40;
                                                        z24 = z31;
                                                        z26 = z32;
                                                        z25 = z33;
                                                        i28 = 6;
                                                    }
                                                    i30 = i39;
                                                } else if (i18 == 2) {
                                                    if ((eVar10 instanceof w.a) || (eVar11 instanceof w.a)) {
                                                        iVar8 = iVar2;
                                                    } else {
                                                        iVar8 = iVar2;
                                                        i28 = 6;
                                                        i29 = 5;
                                                        i30 = 5;
                                                        z25 = true;
                                                        z24 = true;
                                                        z26 = false;
                                                    }
                                                } else if (i18 == 1) {
                                                    iVar8 = iVar2;
                                                    i28 = 6;
                                                    i29 = 4;
                                                    i30 = 8;
                                                    z25 = true;
                                                    z24 = true;
                                                    z26 = false;
                                                } else if (i18 == 3) {
                                                    if (this.E == -1) {
                                                        if (z18) {
                                                            iVar8 = iVar2;
                                                            i28 = z11 ? 5 : 4;
                                                        } else {
                                                            iVar8 = iVar2;
                                                            i28 = 8;
                                                        }
                                                        i29 = 5;
                                                        i30 = 8;
                                                    } else if (z15) {
                                                        if (i15 != 2 && i15 != 1) {
                                                            z30 = false;
                                                            if (z30) {
                                                                i37 = 8;
                                                                i38 = 5;
                                                            } else {
                                                                i37 = 5;
                                                                i38 = 4;
                                                            }
                                                            i30 = i37;
                                                            i29 = i38;
                                                            i28 = 6;
                                                            z25 = true;
                                                            z24 = true;
                                                            z26 = true;
                                                            iVar8 = iVar2;
                                                        }
                                                        z30 = true;
                                                        if (z30) {
                                                        }
                                                        i30 = i37;
                                                        i29 = i38;
                                                        i28 = 6;
                                                        z25 = true;
                                                        z24 = true;
                                                        z26 = true;
                                                        iVar8 = iVar2;
                                                    } else {
                                                        if (i41 > 0) {
                                                            iVar8 = iVar2;
                                                            i28 = 6;
                                                            i29 = 5;
                                                        } else if (i41 != 0 || i24 != 0) {
                                                            iVar8 = iVar2;
                                                            i28 = 6;
                                                            i29 = 4;
                                                        } else if (z18) {
                                                            iVar8 = iVar2;
                                                            i30 = (eVar10 == I || eVar11 == I) ? 5 : 4;
                                                            i28 = 6;
                                                            i29 = 4;
                                                        } else {
                                                            iVar8 = iVar2;
                                                            i28 = 6;
                                                            i29 = 8;
                                                        }
                                                        i30 = 5;
                                                    }
                                                    z25 = true;
                                                    z24 = true;
                                                    z26 = true;
                                                } else {
                                                    iVar8 = iVar2;
                                                    i28 = 6;
                                                    i29 = 4;
                                                    i30 = 5;
                                                    z25 = false;
                                                    z24 = false;
                                                    z26 = false;
                                                }
                                                if (z25 || iVar4 != iVar6 || eVar10 == I) {
                                                    z27 = true;
                                                } else {
                                                    z25 = false;
                                                    z27 = false;
                                                }
                                                if (z24) {
                                                    iVar10 = iVar4;
                                                    eVar = I;
                                                    eVar2 = eVar11;
                                                    eVar3 = eVar10;
                                                    iVar11 = q12;
                                                    i31 = 8;
                                                    z28 = z11;
                                                } else {
                                                    if (z22 || z16 || z18 || iVar4 != iVar || iVar6 != iVar8) {
                                                        i36 = i28;
                                                        z28 = z11;
                                                    } else {
                                                        z28 = false;
                                                        i30 = 8;
                                                        i36 = 8;
                                                        z27 = false;
                                                    }
                                                    iVar10 = iVar4;
                                                    i31 = 8;
                                                    eVar = I;
                                                    eVar2 = eVar11;
                                                    eVar3 = eVar10;
                                                    iVar11 = q12;
                                                    dVar.c(q12, iVar10, dVar2.e(), f10, iVar6, iVar5, dVar3.e(), i36);
                                                }
                                                z29 = z27;
                                                if (this.f15192r0 != i31 && !dVar3.l()) {
                                                    return;
                                                }
                                                t.i iVar13 = iVar10;
                                                if (z25) {
                                                    eVar4 = eVar2;
                                                    eVar5 = eVar3;
                                                    iVar12 = iVar11;
                                                } else {
                                                    if (!z28 || iVar13 == iVar6 || z22) {
                                                        eVar4 = eVar2;
                                                        eVar5 = eVar3;
                                                    } else {
                                                        eVar5 = eVar3;
                                                        if (eVar5 instanceof w.a) {
                                                            eVar4 = eVar2;
                                                        } else {
                                                            eVar4 = eVar2;
                                                        }
                                                        i35 = 6;
                                                        iVar12 = iVar11;
                                                        dVar.h(iVar12, iVar13, dVar2.e(), i35);
                                                        dVar.j(iVar5, iVar6, -dVar3.e(), i35);
                                                        i30 = i35;
                                                    }
                                                    i35 = i30;
                                                    iVar12 = iVar11;
                                                    dVar.h(iVar12, iVar13, dVar2.e(), i35);
                                                    dVar.j(iVar5, iVar6, -dVar3.e(), i35);
                                                    i30 = i35;
                                                }
                                                if (z28 || !z19 || (eVar5 instanceof w.a) || (eVar4 instanceof w.a)) {
                                                    eVar6 = eVar;
                                                } else {
                                                    eVar6 = eVar;
                                                    if (eVar4 != eVar6) {
                                                        z29 = true;
                                                        i32 = 6;
                                                        i33 = 6;
                                                        if (z29) {
                                                            if (!z26 || (z18 && !z12)) {
                                                                i34 = i32;
                                                            } else {
                                                                int i52 = (eVar5 == eVar6 || eVar4 == eVar6) ? 6 : i32;
                                                                if ((eVar5 instanceof g) || (eVar4 instanceof g)) {
                                                                    i52 = 5;
                                                                }
                                                                if ((eVar5 instanceof w.a) || (eVar4 instanceof w.a)) {
                                                                    i52 = 5;
                                                                }
                                                                if (z18) {
                                                                    i52 = 5;
                                                                }
                                                                i34 = Math.max(i52, i32);
                                                            }
                                                            if (z28) {
                                                                i34 = Math.min(i33, i34);
                                                                if (z15 && !z18 && (eVar5 == eVar6 || eVar4 == eVar6)) {
                                                                    i34 = 4;
                                                                }
                                                            }
                                                            dVar.e(iVar12, iVar13, dVar2.e(), i34);
                                                            dVar.e(iVar5, iVar6, -dVar3.e(), i34);
                                                        }
                                                        if (z28) {
                                                            int e10 = iVar == iVar13 ? dVar2.e() : 0;
                                                            if (iVar13 != iVar) {
                                                                i26 = 5;
                                                                dVar.h(iVar12, iVar, e10, 5);
                                                                if (z28 && z22) {
                                                                    iVar7 = iVar6;
                                                                    if (i12 == 0 && i24 == 0) {
                                                                        if (!z22 && i18 == 3) {
                                                                            i25 = 0;
                                                                            dVar.h(iVar5, iVar12, 0, i31);
                                                                        } else {
                                                                            i25 = 0;
                                                                            dVar.h(iVar5, iVar12, 0, i26);
                                                                        }
                                                                        if (z28 && z23) {
                                                                            if (dVar3.f15142f != null) {
                                                                                i25 = dVar3.e();
                                                                            }
                                                                            if (iVar7 != iVar2) {
                                                                                if (this.f15175j && iVar5.f13968l && (eVar8 = this.Z) != null) {
                                                                                    f fVar = (f) eVar8;
                                                                                    if (z10) {
                                                                                        fVar.p1(dVar3);
                                                                                        return;
                                                                                    } else {
                                                                                        fVar.u1(dVar3);
                                                                                        return;
                                                                                    }
                                                                                }
                                                                                dVar.h(iVar2, iVar5, i25, i26);
                                                                                return;
                                                                            }
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                    i25 = 0;
                                                                    if (z28) {
                                                                        return;
                                                                    } else {
                                                                        return;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        i26 = 5;
                                                        if (z28) {
                                                            iVar7 = iVar6;
                                                            if (i12 == 0) {
                                                                if (!z22) {
                                                                }
                                                                i25 = 0;
                                                                dVar.h(iVar5, iVar12, 0, i26);
                                                                if (z28) {
                                                                }
                                                            }
                                                            i25 = 0;
                                                            if (z28) {
                                                            }
                                                        }
                                                    }
                                                }
                                                i32 = i29;
                                                i33 = i30;
                                                if (z29) {
                                                }
                                                if (z28) {
                                                }
                                                i26 = 5;
                                                if (z28) {
                                                }
                                            }
                                            i28 = 6;
                                            i29 = 4;
                                            i30 = 5;
                                            z25 = true;
                                            z24 = true;
                                            z26 = false;
                                            if (z25) {
                                            }
                                            z27 = true;
                                            if (z24) {
                                            }
                                            z29 = z27;
                                            if (this.f15192r0 != i31) {
                                            }
                                            t.i iVar132 = iVar10;
                                            if (z25) {
                                            }
                                            if (z28) {
                                            }
                                            eVar6 = eVar;
                                            i32 = i29;
                                            i33 = i30;
                                            if (z29) {
                                            }
                                            if (z28) {
                                            }
                                            i26 = 5;
                                            if (z28) {
                                            }
                                        } else {
                                            iVar7 = iVar6;
                                            i26 = 5;
                                        }
                                    } else {
                                        dVar.e(iVar5, iVar6, -dVar3.e(), 8);
                                        if (z11) {
                                            if (this.f15175j && q12.f13968l && (eVar7 = this.Z) != null) {
                                                f fVar2 = (f) eVar7;
                                                if (z10) {
                                                    fVar2.q1(dVar2);
                                                } else {
                                                    fVar2.v1(dVar2);
                                                }
                                            } else {
                                                i26 = 5;
                                                i25 = 0;
                                                dVar.h(q12, iVar, 0, 5);
                                                iVar7 = iVar6;
                                            }
                                        }
                                    }
                                    z28 = z11;
                                    if (z28) {
                                    }
                                } else {
                                    z28 = z11;
                                    i26 = (z11 && (dVar2.f15142f.f15140d instanceof w.a)) ? 8 : 5;
                                }
                                iVar7 = iVar6;
                                i25 = 0;
                                if (z28) {
                                }
                            }
                            iVar7 = iVar6;
                            i26 = 5;
                            i25 = 0;
                            z28 = z11;
                            if (z28) {
                            }
                        } else {
                            int max = Math.max(i16, i21);
                            if (i41 > 0) {
                                max = Math.min(i41, max);
                            }
                            dVar.e(q13, q12, max, 8);
                            z23 = z13;
                            i23 = i42;
                            iVar4 = q14;
                            iVar5 = q13;
                            iVar6 = iVar3;
                            z22 = false;
                        }
                        i24 = i16;
                        if (z20) {
                        }
                        if (i23 >= 2) {
                            return;
                        } else {
                            return;
                        }
                    }
                }
                iVar3 = q15;
                if (!z21) {
                }
                i24 = i16;
                if (z20) {
                }
                if (i23 >= 2) {
                }
            }
        }
        z21 = false;
        i19 = this.f15179l;
        if (i19 != -1) {
            this.f15179l = -1;
            i11 = i19;
            z21 = false;
        }
        i20 = this.f15181m;
        if (i20 != -1) {
        }
        i20 = i11;
        int i452 = i20;
        if (this.f15192r0 != 8) {
        }
        if (z20) {
        }
        iVar3 = q15;
        if (!z21) {
        }
        i24 = i16;
        if (z20) {
        }
        if (i23 >= 2) {
        }
    }

    public boolean i0() {
        return this.f15185o || (this.N.m() && this.P.m());
    }

    public void j(e eVar, float f10, int i10) {
        d.b bVar = d.b.CENTER;
        Z(bVar, eVar, bVar, i10, 0);
        this.H = f10;
    }

    public boolean j0() {
        return this.f15187p || (this.O.m() && this.Q.m());
    }

    public void k(t.d dVar) {
        dVar.q(this.N);
        dVar.q(this.O);
        dVar.q(this.P);
        dVar.q(this.Q);
        if (this.f15178k0 > 0) {
            dVar.q(this.R);
        }
    }

    public boolean k0() {
        return this.f15191r;
    }

    public void l() {
        if (this.f15165e == null) {
            this.f15165e = new x.l(this);
        }
        if (this.f15167f == null) {
            this.f15167f = new n(this);
        }
    }

    public void l0() {
        this.f15189q = true;
    }

    public d m(d.b bVar) {
        switch (a.f15209a[bVar.ordinal()]) {
            case 1:
                return this.N;
            case 2:
                return this.O;
            case 3:
                return this.P;
            case 4:
                return this.Q;
            case 5:
                return this.R;
            case 6:
                return this.U;
            case 7:
                return this.S;
            case 8:
                return this.T;
            case 9:
                return null;
            default:
                throw new AssertionError(bVar.name());
        }
    }

    public void m0() {
        this.f15191r = true;
    }

    public int n() {
        return this.f15178k0;
    }

    public boolean n0() {
        b[] bVarArr = this.Y;
        b bVar = bVarArr[0];
        b bVar2 = b.MATCH_CONSTRAINT;
        return bVar == bVar2 && bVarArr[1] == bVar2;
    }

    public float o(int i10) {
        if (i10 == 0) {
            return this.f15184n0;
        }
        if (i10 == 1) {
            return this.f15186o0;
        }
        return -1.0f;
    }

    public void o0() {
        this.N.p();
        this.O.p();
        this.P.p();
        this.Q.p();
        this.R.p();
        this.S.p();
        this.T.p();
        this.U.p();
        this.Z = null;
        this.H = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f15158a0 = 0;
        this.f15160b0 = 0;
        this.f15162c0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f15164d0 = -1;
        this.f15166e0 = 0;
        this.f15168f0 = 0;
        this.f15174i0 = 0;
        this.f15176j0 = 0;
        this.f15178k0 = 0;
        this.f15180l0 = 0;
        this.f15182m0 = 0;
        float f10 = I0;
        this.f15184n0 = f10;
        this.f15186o0 = f10;
        b[] bVarArr = this.Y;
        b bVar = b.FIXED;
        bVarArr[0] = bVar;
        bVarArr[1] = bVar;
        this.f15188p0 = null;
        this.f15190q0 = 0;
        this.f15192r0 = 0;
        this.f15196t0 = null;
        this.f15198u0 = false;
        this.f15200v0 = false;
        this.f15204x0 = 0;
        this.f15206y0 = 0;
        this.f15208z0 = false;
        this.A0 = false;
        float[] fArr = this.B0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f15193s = -1;
        this.f15195t = -1;
        int[] iArr = this.G;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f15199v = 0;
        this.f15201w = 0;
        this.A = 1.0f;
        this.D = 1.0f;
        this.f15207z = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.C = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f15205y = 0;
        this.B = 0;
        this.f15171h = false;
        this.E = -1;
        this.F = 1.0f;
        this.f15202w0 = false;
        boolean[] zArr = this.f15169g;
        zArr[0] = true;
        zArr[1] = true;
        this.K = false;
        boolean[] zArr2 = this.X;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f15173i = true;
        int[] iArr2 = this.f15203x;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f15179l = -1;
        this.f15181m = -1;
    }

    public int p() {
        return T() + this.f15160b0;
    }

    public void p0() {
        this.f15185o = false;
        this.f15187p = false;
        this.f15189q = false;
        this.f15191r = false;
        int size = this.W.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.W.get(i10).q();
        }
    }

    public Object q() {
        return this.f15188p0;
    }

    public void q0(t.c cVar) {
        this.N.r(cVar);
        this.O.r(cVar);
        this.P.r(cVar);
        this.Q.r(cVar);
        this.R.r(cVar);
        this.U.r(cVar);
        this.S.r(cVar);
        this.T.r(cVar);
    }

    public String r() {
        return this.f15194s0;
    }

    public void r0(int i10) {
        this.f15178k0 = i10;
        this.I = i10 > 0;
    }

    public b s(int i10) {
        if (i10 == 0) {
            return y();
        }
        if (i10 == 1) {
            return O();
        }
        return null;
    }

    public void s0(Object obj) {
        this.f15188p0 = obj;
    }

    public float t() {
        return this.f15162c0;
    }

    public void t0(String str) {
        this.f15194s0 = str;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        String str2 = "";
        if (this.f15196t0 != null) {
            str = "type: " + this.f15196t0 + " ";
        } else {
            str = "";
        }
        sb2.append(str);
        if (this.f15194s0 != null) {
            str2 = "id: " + this.f15194s0 + " ";
        }
        sb2.append(str2);
        sb2.append("(");
        sb2.append(this.f15166e0);
        sb2.append(", ");
        sb2.append(this.f15168f0);
        sb2.append(") - (");
        sb2.append(this.f15158a0);
        sb2.append(" x ");
        sb2.append(this.f15160b0);
        sb2.append(")");
        return sb2.toString();
    }

    public int u() {
        return this.f15164d0;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:31:0x0085). Please report as a decompilation issue!!! */
    public void u0(String str) {
        float f10;
        int i10 = 0;
        if (str != null && str.length() != 0) {
            int i11 = -1;
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i12 = 0;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    i11 = 0;
                } else if (substring.equalsIgnoreCase("H")) {
                    i11 = 1;
                }
                i12 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                String substring2 = str.substring(i12, indexOf2);
                String substring3 = str.substring(indexOf2 + 1);
                if (substring2.length() > 0 && substring3.length() > 0) {
                    float parseFloat = Float.parseFloat(substring2);
                    float parseFloat2 = Float.parseFloat(substring3);
                    if (parseFloat > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && parseFloat2 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        if (i11 == 1) {
                            f10 = Math.abs(parseFloat2 / parseFloat);
                        } else {
                            f10 = Math.abs(parseFloat / parseFloat2);
                        }
                    }
                }
                f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            } else {
                String substring4 = str.substring(i12);
                if (substring4.length() > 0) {
                    f10 = Float.parseFloat(substring4);
                }
                f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            i10 = (f10 > i10 ? 1 : (f10 == i10 ? 0 : -1));
            if (i10 > 0) {
                this.f15162c0 = f10;
                this.f15164d0 = i11;
                return;
            }
            return;
        }
        this.f15162c0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public int v() {
        if (this.f15192r0 == 8) {
            return 0;
        }
        return this.f15160b0;
    }

    public void v0(int i10) {
        if (this.I) {
            int i11 = i10 - this.f15178k0;
            int i12 = this.f15160b0 + i11;
            this.f15168f0 = i11;
            this.O.s(i11);
            this.Q.s(i12);
            this.R.s(i10);
            this.f15187p = true;
        }
    }

    public float w() {
        return this.f15184n0;
    }

    public void w0(int i10, int i11) {
        if (this.f15185o) {
            return;
        }
        this.N.s(i10);
        this.P.s(i11);
        this.f15166e0 = i10;
        this.f15158a0 = i11 - i10;
        this.f15185o = true;
    }

    public int x() {
        return this.f15204x0;
    }

    public void x0(int i10) {
        this.N.s(i10);
        this.f15166e0 = i10;
    }

    public b y() {
        return this.Y[0];
    }

    public void y0(int i10) {
        this.O.s(i10);
        this.f15168f0 = i10;
    }

    public int z() {
        d dVar = this.N;
        int i10 = dVar != null ? 0 + dVar.f15143g : 0;
        d dVar2 = this.P;
        return dVar2 != null ? i10 + dVar2.f15143g : i10;
    }

    public void z0(int i10, int i11) {
        if (this.f15187p) {
            return;
        }
        this.O.s(i10);
        this.Q.s(i11);
        this.f15168f0 = i10;
        this.f15160b0 = i11 - i10;
        if (this.I) {
            this.R.s(i10 + this.f15178k0);
        }
        this.f15187p = true;
    }
}

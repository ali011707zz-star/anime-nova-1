package w;

import w.d;
import w.e;

/* compiled from: Guideline.java */
/* loaded from: classes.dex */
public class g extends e {
    public float J0 = -1.0f;
    public int K0 = -1;
    public int L0 = -1;
    public d M0 = this.O;
    public int N0 = 0;
    public int O0 = 0;
    public boolean P0;

    /* compiled from: Guideline.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15230a;

        static {
            int[] iArr = new int[d.b.values().length];
            f15230a = iArr;
            try {
                iArr[d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15230a[d.b.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15230a[d.b.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15230a[d.b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15230a[d.b.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15230a[d.b.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15230a[d.b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15230a[d.b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15230a[d.b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public g() {
        this.W.clear();
        this.W.add(this.M0);
        int length = this.V.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.V[i10] = this.M0;
        }
    }

    @Override // w.e
    public void g(t.d dVar, boolean z10) {
        f fVar = (f) I();
        if (fVar == null) {
            return;
        }
        d m10 = fVar.m(d.b.LEFT);
        d m11 = fVar.m(d.b.RIGHT);
        e eVar = this.Z;
        boolean z11 = eVar != null && eVar.Y[0] == e.b.WRAP_CONTENT;
        if (this.N0 == 0) {
            m10 = fVar.m(d.b.TOP);
            m11 = fVar.m(d.b.BOTTOM);
            e eVar2 = this.Z;
            z11 = eVar2 != null && eVar2.Y[1] == e.b.WRAP_CONTENT;
        }
        if (this.P0 && this.M0.m()) {
            t.i q10 = dVar.q(this.M0);
            dVar.f(q10, this.M0.d());
            if (this.K0 != -1) {
                if (z11) {
                    dVar.h(dVar.q(m11), q10, 0, 5);
                }
            } else if (this.L0 != -1 && z11) {
                t.i q11 = dVar.q(m11);
                dVar.h(q10, dVar.q(m10), 0, 5);
                dVar.h(q11, q10, 0, 5);
            }
            this.P0 = false;
            return;
        }
        if (this.K0 != -1) {
            t.i q12 = dVar.q(this.M0);
            dVar.e(q12, dVar.q(m10), this.K0, 8);
            if (z11) {
                dVar.h(dVar.q(m11), q12, 0, 5);
                return;
            }
            return;
        }
        if (this.L0 == -1) {
            if (this.J0 != -1.0f) {
                dVar.d(t.d.s(dVar, dVar.q(this.M0), dVar.q(m11), this.J0));
                return;
            }
            return;
        }
        t.i q13 = dVar.q(this.M0);
        t.i q14 = dVar.q(m11);
        dVar.e(q13, q14, -this.L0, 8);
        if (z11) {
            dVar.h(q13, dVar.q(m10), 0, 5);
            dVar.h(q14, q13, 0, 5);
        }
    }

    @Override // w.e
    public boolean h() {
        return true;
    }

    @Override // w.e
    public void h1(t.d dVar, boolean z10) {
        if (I() == null) {
            return;
        }
        int y10 = dVar.y(this.M0);
        if (this.N0 == 1) {
            d1(y10);
            e1(0);
            C0(I().v());
            b1(0);
            return;
        }
        d1(0);
        e1(y10);
        b1(I().R());
        C0(0);
    }

    @Override // w.e
    public boolean i0() {
        return this.P0;
    }

    public d i1() {
        return this.M0;
    }

    @Override // w.e
    public boolean j0() {
        return this.P0;
    }

    public int j1() {
        return this.N0;
    }

    public int k1() {
        return this.K0;
    }

    public int l1() {
        return this.L0;
    }

    @Override // w.e
    public d m(d.b bVar) {
        int i10 = a.f15230a[bVar.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if ((i10 == 3 || i10 == 4) && this.N0 == 0) {
                return this.M0;
            }
            return null;
        }
        if (this.N0 == 1) {
            return this.M0;
        }
        return null;
    }

    public float m1() {
        return this.J0;
    }

    public void n1(int i10) {
        this.M0.s(i10);
        this.P0 = true;
    }

    public void o1(int i10) {
        if (i10 > -1) {
            this.J0 = -1.0f;
            this.K0 = i10;
            this.L0 = -1;
        }
    }

    public void p1(int i10) {
        if (i10 > -1) {
            this.J0 = -1.0f;
            this.K0 = -1;
            this.L0 = i10;
        }
    }

    public void q1(float f10) {
        if (f10 > -1.0f) {
            this.J0 = f10;
            this.K0 = -1;
            this.L0 = -1;
        }
    }

    public void r1(int i10) {
        if (this.N0 == i10) {
            return;
        }
        this.N0 = i10;
        this.W.clear();
        if (this.N0 == 1) {
            this.M0 = this.N;
        } else {
            this.M0 = this.O;
        }
        this.W.add(this.M0);
        int length = this.V.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.V[i11] = this.M0;
        }
    }
}

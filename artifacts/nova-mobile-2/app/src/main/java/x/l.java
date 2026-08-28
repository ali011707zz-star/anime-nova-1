package x;

import w.d;
import w.e;
import x.f;
import x.p;

/* compiled from: HorizontalWidgetRun.java */
/* loaded from: classes.dex */
public class l extends p {

    /* renamed from: k, reason: collision with root package name */
    public static int[] f15600k = new int[2];

    /* compiled from: HorizontalWidgetRun.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15601a;

        static {
            int[] iArr = new int[p.b.values().length];
            f15601a = iArr;
            try {
                iArr[p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15601a[p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15601a[p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public l(w.e eVar) {
        super(eVar);
        this.f15635h.f15579e = f.a.LEFT;
        this.f15636i.f15579e = f.a.RIGHT;
        this.f15633f = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x02bc, code lost:
    
        if (r14 != 1) goto L135;
     */
    @Override // x.p, x.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(d dVar) {
        float f10;
        float t10;
        float f11;
        int i10;
        int i11 = a.f15601a[this.f15637j.ordinal()];
        if (i11 == 1) {
            p(dVar);
        } else if (i11 == 2) {
            o(dVar);
        } else if (i11 == 3) {
            w.e eVar = this.f15629b;
            n(dVar, eVar.N, eVar.P, 0);
            return;
        }
        if (!this.f15632e.f15584j && this.f15631d == e.b.MATCH_CONSTRAINT) {
            w.e eVar2 = this.f15629b;
            int i12 = eVar2.f15199v;
            if (i12 == 2) {
                w.e I = eVar2.I();
                if (I != null) {
                    if (I.f15165e.f15632e.f15584j) {
                        this.f15632e.d((int) ((r0.f15581g * this.f15629b.A) + 0.5f));
                    }
                }
            } else if (i12 == 3) {
                int i13 = eVar2.f15201w;
                if (i13 != 0 && i13 != 3) {
                    int u10 = eVar2.u();
                    if (u10 == -1) {
                        w.e eVar3 = this.f15629b;
                        f10 = eVar3.f15167f.f15632e.f15581g;
                        t10 = eVar3.t();
                    } else if (u10 == 0) {
                        f11 = r0.f15167f.f15632e.f15581g / this.f15629b.t();
                        i10 = (int) (f11 + 0.5f);
                        this.f15632e.d(i10);
                    } else if (u10 == 1) {
                        w.e eVar4 = this.f15629b;
                        f10 = eVar4.f15167f.f15632e.f15581g;
                        t10 = eVar4.t();
                    } else {
                        i10 = 0;
                        this.f15632e.d(i10);
                    }
                    f11 = f10 * t10;
                    i10 = (int) (f11 + 0.5f);
                    this.f15632e.d(i10);
                } else {
                    n nVar = eVar2.f15167f;
                    f fVar = nVar.f15635h;
                    f fVar2 = nVar.f15636i;
                    boolean z10 = eVar2.N.f15142f != null;
                    boolean z11 = eVar2.O.f15142f != null;
                    boolean z12 = eVar2.P.f15142f != null;
                    boolean z13 = eVar2.Q.f15142f != null;
                    int u11 = eVar2.u();
                    if (z10 && z11 && z12 && z13) {
                        float t11 = this.f15629b.t();
                        if (fVar.f15584j && fVar2.f15584j) {
                            f fVar3 = this.f15635h;
                            if (fVar3.f15577c && this.f15636i.f15577c) {
                                q(f15600k, fVar3.f15586l.get(0).f15581g + this.f15635h.f15580f, this.f15636i.f15586l.get(0).f15581g - this.f15636i.f15580f, fVar.f15581g + fVar.f15580f, fVar2.f15581g - fVar2.f15580f, t11, u11);
                                this.f15632e.d(f15600k[0]);
                                this.f15629b.f15167f.f15632e.d(f15600k[1]);
                                return;
                            }
                            return;
                        }
                        f fVar4 = this.f15635h;
                        if (fVar4.f15584j) {
                            f fVar5 = this.f15636i;
                            if (fVar5.f15584j) {
                                if (!fVar.f15577c || !fVar2.f15577c) {
                                    return;
                                }
                                q(f15600k, fVar4.f15581g + fVar4.f15580f, fVar5.f15581g - fVar5.f15580f, fVar.f15586l.get(0).f15581g + fVar.f15580f, fVar2.f15586l.get(0).f15581g - fVar2.f15580f, t11, u11);
                                this.f15632e.d(f15600k[0]);
                                this.f15629b.f15167f.f15632e.d(f15600k[1]);
                            }
                        }
                        f fVar6 = this.f15635h;
                        if (!fVar6.f15577c || !this.f15636i.f15577c || !fVar.f15577c || !fVar2.f15577c) {
                            return;
                        }
                        q(f15600k, fVar6.f15586l.get(0).f15581g + this.f15635h.f15580f, this.f15636i.f15586l.get(0).f15581g - this.f15636i.f15580f, fVar.f15586l.get(0).f15581g + fVar.f15580f, fVar2.f15586l.get(0).f15581g - fVar2.f15580f, t11, u11);
                        this.f15632e.d(f15600k[0]);
                        this.f15629b.f15167f.f15632e.d(f15600k[1]);
                    } else if (z10 && z12) {
                        if (!this.f15635h.f15577c || !this.f15636i.f15577c) {
                            return;
                        }
                        float t12 = this.f15629b.t();
                        int i14 = this.f15635h.f15586l.get(0).f15581g + this.f15635h.f15580f;
                        int i15 = this.f15636i.f15586l.get(0).f15581g - this.f15636i.f15580f;
                        if (u11 == -1 || u11 == 0) {
                            int g10 = g(i15 - i14, 0);
                            int i16 = (int) ((g10 * t12) + 0.5f);
                            int g11 = g(i16, 1);
                            if (i16 != g11) {
                                g10 = (int) ((g11 / t12) + 0.5f);
                            }
                            this.f15632e.d(g10);
                            this.f15629b.f15167f.f15632e.d(g11);
                        } else if (u11 == 1) {
                            int g12 = g(i15 - i14, 0);
                            int i17 = (int) ((g12 / t12) + 0.5f);
                            int g13 = g(i17, 1);
                            if (i17 != g13) {
                                g12 = (int) ((g13 * t12) + 0.5f);
                            }
                            this.f15632e.d(g12);
                            this.f15629b.f15167f.f15632e.d(g13);
                        }
                    } else if (z11 && z13) {
                        if (!fVar.f15577c || !fVar2.f15577c) {
                            return;
                        }
                        float t13 = this.f15629b.t();
                        int i18 = fVar.f15586l.get(0).f15581g + fVar.f15580f;
                        int i19 = fVar2.f15586l.get(0).f15581g - fVar2.f15580f;
                        if (u11 != -1) {
                            if (u11 == 0) {
                                int g14 = g(i19 - i18, 1);
                                int i20 = (int) ((g14 * t13) + 0.5f);
                                int g15 = g(i20, 0);
                                if (i20 != g15) {
                                    g14 = (int) ((g15 / t13) + 0.5f);
                                }
                                this.f15632e.d(g15);
                                this.f15629b.f15167f.f15632e.d(g14);
                            }
                        }
                        int g16 = g(i19 - i18, 1);
                        int i21 = (int) ((g16 / t13) + 0.5f);
                        int g17 = g(i21, 0);
                        if (i21 != g17) {
                            g16 = (int) ((g17 * t13) + 0.5f);
                        }
                        this.f15632e.d(g17);
                        this.f15629b.f15167f.f15632e.d(g16);
                    }
                }
            }
        }
        f fVar7 = this.f15635h;
        if (fVar7.f15577c) {
            f fVar8 = this.f15636i;
            if (fVar8.f15577c) {
                if (fVar7.f15584j && fVar8.f15584j && this.f15632e.f15584j) {
                    return;
                }
                if (!this.f15632e.f15584j && this.f15631d == e.b.MATCH_CONSTRAINT) {
                    w.e eVar5 = this.f15629b;
                    if (eVar5.f15199v == 0 && !eVar5.d0()) {
                        f fVar9 = this.f15635h.f15586l.get(0);
                        f fVar10 = this.f15636i.f15586l.get(0);
                        int i22 = fVar9.f15581g;
                        f fVar11 = this.f15635h;
                        int i23 = i22 + fVar11.f15580f;
                        int i24 = fVar10.f15581g + this.f15636i.f15580f;
                        fVar11.d(i23);
                        this.f15636i.d(i24);
                        this.f15632e.d(i24 - i23);
                        return;
                    }
                }
                if (!this.f15632e.f15584j && this.f15631d == e.b.MATCH_CONSTRAINT && this.f15628a == 1 && this.f15635h.f15586l.size() > 0 && this.f15636i.f15586l.size() > 0) {
                    int min = Math.min((this.f15636i.f15586l.get(0).f15581g + this.f15636i.f15580f) - (this.f15635h.f15586l.get(0).f15581g + this.f15635h.f15580f), this.f15632e.f15596m);
                    w.e eVar6 = this.f15629b;
                    int i25 = eVar6.f15207z;
                    int max = Math.max(eVar6.f15205y, min);
                    if (i25 > 0) {
                        max = Math.min(i25, max);
                    }
                    this.f15632e.d(max);
                }
                if (this.f15632e.f15584j) {
                    f fVar12 = this.f15635h.f15586l.get(0);
                    f fVar13 = this.f15636i.f15586l.get(0);
                    int i26 = fVar12.f15581g + this.f15635h.f15580f;
                    int i27 = fVar13.f15581g + this.f15636i.f15580f;
                    float w10 = this.f15629b.w();
                    if (fVar12 == fVar13) {
                        i26 = fVar12.f15581g;
                        i27 = fVar13.f15581g;
                        w10 = 0.5f;
                    }
                    this.f15635h.d((int) (i26 + 0.5f + (((i27 - i26) - this.f15632e.f15581g) * w10)));
                    this.f15636i.d(this.f15635h.f15581g + this.f15632e.f15581g);
                }
            }
        }
    }

    @Override // x.p
    public void d() {
        w.e I;
        w.e I2;
        w.e eVar = this.f15629b;
        if (eVar.f15157a) {
            this.f15632e.d(eVar.R());
        }
        if (!this.f15632e.f15584j) {
            e.b y10 = this.f15629b.y();
            this.f15631d = y10;
            if (y10 != e.b.MATCH_CONSTRAINT) {
                e.b bVar = e.b.MATCH_PARENT;
                if (y10 == bVar && (I2 = this.f15629b.I()) != null && (I2.y() == e.b.FIXED || I2.y() == bVar)) {
                    int R = (I2.R() - this.f15629b.N.e()) - this.f15629b.P.e();
                    b(this.f15635h, I2.f15165e.f15635h, this.f15629b.N.e());
                    b(this.f15636i, I2.f15165e.f15636i, -this.f15629b.P.e());
                    this.f15632e.d(R);
                    return;
                }
                if (this.f15631d == e.b.FIXED) {
                    this.f15632e.d(this.f15629b.R());
                }
            }
        } else {
            e.b bVar2 = this.f15631d;
            e.b bVar3 = e.b.MATCH_PARENT;
            if (bVar2 == bVar3 && (I = this.f15629b.I()) != null && (I.y() == e.b.FIXED || I.y() == bVar3)) {
                b(this.f15635h, I.f15165e.f15635h, this.f15629b.N.e());
                b(this.f15636i, I.f15165e.f15636i, -this.f15629b.P.e());
                return;
            }
        }
        g gVar = this.f15632e;
        if (gVar.f15584j) {
            w.e eVar2 = this.f15629b;
            if (eVar2.f15157a) {
                w.d[] dVarArr = eVar2.V;
                if (dVarArr[0].f15142f != null && dVarArr[1].f15142f != null) {
                    if (eVar2.d0()) {
                        this.f15635h.f15580f = this.f15629b.V[0].e();
                        this.f15636i.f15580f = -this.f15629b.V[1].e();
                        return;
                    }
                    f h10 = h(this.f15629b.V[0]);
                    if (h10 != null) {
                        b(this.f15635h, h10, this.f15629b.V[0].e());
                    }
                    f h11 = h(this.f15629b.V[1]);
                    if (h11 != null) {
                        b(this.f15636i, h11, -this.f15629b.V[1].e());
                    }
                    this.f15635h.f15576b = true;
                    this.f15636i.f15576b = true;
                    return;
                }
                if (dVarArr[0].f15142f != null) {
                    f h12 = h(dVarArr[0]);
                    if (h12 != null) {
                        b(this.f15635h, h12, this.f15629b.V[0].e());
                        b(this.f15636i, this.f15635h, this.f15632e.f15581g);
                        return;
                    }
                    return;
                }
                if (dVarArr[1].f15142f != null) {
                    f h13 = h(dVarArr[1]);
                    if (h13 != null) {
                        b(this.f15636i, h13, -this.f15629b.V[1].e());
                        b(this.f15635h, this.f15636i, -this.f15632e.f15581g);
                        return;
                    }
                    return;
                }
                if ((eVar2 instanceof w.h) || eVar2.I() == null || this.f15629b.m(d.b.CENTER).f15142f != null) {
                    return;
                }
                b(this.f15635h, this.f15629b.I().f15165e.f15635h, this.f15629b.S());
                b(this.f15636i, this.f15635h, this.f15632e.f15581g);
                return;
            }
        }
        if (this.f15631d == e.b.MATCH_CONSTRAINT) {
            w.e eVar3 = this.f15629b;
            int i10 = eVar3.f15199v;
            if (i10 == 2) {
                w.e I3 = eVar3.I();
                if (I3 != null) {
                    g gVar2 = I3.f15167f.f15632e;
                    this.f15632e.f15586l.add(gVar2);
                    gVar2.f15585k.add(this.f15632e);
                    g gVar3 = this.f15632e;
                    gVar3.f15576b = true;
                    gVar3.f15585k.add(this.f15635h);
                    this.f15632e.f15585k.add(this.f15636i);
                }
            } else if (i10 == 3) {
                if (eVar3.f15201w == 3) {
                    this.f15635h.f15575a = this;
                    this.f15636i.f15575a = this;
                    n nVar = eVar3.f15167f;
                    nVar.f15635h.f15575a = this;
                    nVar.f15636i.f15575a = this;
                    gVar.f15575a = this;
                    if (eVar3.f0()) {
                        this.f15632e.f15586l.add(this.f15629b.f15167f.f15632e);
                        this.f15629b.f15167f.f15632e.f15585k.add(this.f15632e);
                        n nVar2 = this.f15629b.f15167f;
                        nVar2.f15632e.f15575a = this;
                        this.f15632e.f15586l.add(nVar2.f15635h);
                        this.f15632e.f15586l.add(this.f15629b.f15167f.f15636i);
                        this.f15629b.f15167f.f15635h.f15585k.add(this.f15632e);
                        this.f15629b.f15167f.f15636i.f15585k.add(this.f15632e);
                    } else if (this.f15629b.d0()) {
                        this.f15629b.f15167f.f15632e.f15586l.add(this.f15632e);
                        this.f15632e.f15585k.add(this.f15629b.f15167f.f15632e);
                    } else {
                        this.f15629b.f15167f.f15632e.f15586l.add(this.f15632e);
                    }
                } else {
                    g gVar4 = eVar3.f15167f.f15632e;
                    gVar.f15586l.add(gVar4);
                    gVar4.f15585k.add(this.f15632e);
                    this.f15629b.f15167f.f15635h.f15585k.add(this.f15632e);
                    this.f15629b.f15167f.f15636i.f15585k.add(this.f15632e);
                    g gVar5 = this.f15632e;
                    gVar5.f15576b = true;
                    gVar5.f15585k.add(this.f15635h);
                    this.f15632e.f15585k.add(this.f15636i);
                    this.f15635h.f15586l.add(this.f15632e);
                    this.f15636i.f15586l.add(this.f15632e);
                }
            }
        }
        w.e eVar4 = this.f15629b;
        w.d[] dVarArr2 = eVar4.V;
        if (dVarArr2[0].f15142f != null && dVarArr2[1].f15142f != null) {
            if (eVar4.d0()) {
                this.f15635h.f15580f = this.f15629b.V[0].e();
                this.f15636i.f15580f = -this.f15629b.V[1].e();
                return;
            }
            f h14 = h(this.f15629b.V[0]);
            f h15 = h(this.f15629b.V[1]);
            if (h14 != null) {
                h14.b(this);
            }
            if (h15 != null) {
                h15.b(this);
            }
            this.f15637j = p.b.CENTER;
            return;
        }
        if (dVarArr2[0].f15142f != null) {
            f h16 = h(dVarArr2[0]);
            if (h16 != null) {
                b(this.f15635h, h16, this.f15629b.V[0].e());
                c(this.f15636i, this.f15635h, 1, this.f15632e);
                return;
            }
            return;
        }
        if (dVarArr2[1].f15142f != null) {
            f h17 = h(dVarArr2[1]);
            if (h17 != null) {
                b(this.f15636i, h17, -this.f15629b.V[1].e());
                c(this.f15635h, this.f15636i, -1, this.f15632e);
                return;
            }
            return;
        }
        if ((eVar4 instanceof w.h) || eVar4.I() == null) {
            return;
        }
        b(this.f15635h, this.f15629b.I().f15165e.f15635h, this.f15629b.S());
        c(this.f15636i, this.f15635h, 1, this.f15632e);
    }

    @Override // x.p
    public void e() {
        f fVar = this.f15635h;
        if (fVar.f15584j) {
            this.f15629b.d1(fVar.f15581g);
        }
    }

    @Override // x.p
    public void f() {
        this.f15630c = null;
        this.f15635h.c();
        this.f15636i.c();
        this.f15632e.c();
        this.f15634g = false;
    }

    @Override // x.p
    public boolean m() {
        return this.f15631d != e.b.MATCH_CONSTRAINT || this.f15629b.f15199v == 0;
    }

    public final void q(int[] iArr, int i10, int i11, int i12, int i13, float f10, int i14) {
        int i15 = i11 - i10;
        int i16 = i13 - i12;
        if (i14 != -1) {
            if (i14 == 0) {
                iArr[0] = (int) ((i16 * f10) + 0.5f);
                iArr[1] = i16;
                return;
            } else {
                if (i14 != 1) {
                    return;
                }
                iArr[0] = i15;
                iArr[1] = (int) ((i15 * f10) + 0.5f);
                return;
            }
        }
        int i17 = (int) ((i16 * f10) + 0.5f);
        int i18 = (int) ((i15 / f10) + 0.5f);
        if (i17 <= i15) {
            iArr[0] = i17;
            iArr[1] = i16;
        } else if (i18 <= i16) {
            iArr[0] = i15;
            iArr[1] = i18;
        }
    }

    public void r() {
        this.f15634g = false;
        this.f15635h.c();
        this.f15635h.f15584j = false;
        this.f15636i.c();
        this.f15636i.f15584j = false;
        this.f15632e.f15584j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f15629b.r();
    }
}

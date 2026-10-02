package x;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import w.d;
import w.e;
import x.f;
import x.p;

/* compiled from: VerticalWidgetRun.java */
/* loaded from: classes.dex */
public class n extends p {

    /* renamed from: k, reason: collision with root package name */
    public f f15610k;

    /* renamed from: l, reason: collision with root package name */
    public g f15611l;

    /* compiled from: VerticalWidgetRun.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15612a;

        static {
            int[] iArr = new int[p.b.values().length];
            f15612a = iArr;
            try {
                iArr[p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15612a[p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15612a[p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public n(w.e eVar) {
        super(eVar);
        f fVar = new f(this);
        this.f15610k = fVar;
        this.f15611l = null;
        this.f15635h.f15579e = f.a.TOP;
        this.f15636i.f15579e = f.a.BOTTOM;
        fVar.f15579e = f.a.BASELINE;
        this.f15633f = 1;
    }

    @Override // x.p, x.d
    public void a(d dVar) {
        float f10;
        float t10;
        float f11;
        int i10;
        int i11 = a.f15612a[this.f15637j.ordinal()];
        if (i11 == 1) {
            p(dVar);
        } else if (i11 == 2) {
            o(dVar);
        } else if (i11 == 3) {
            w.e eVar = this.f15629b;
            n(dVar, eVar.O, eVar.Q, 1);
            return;
        }
        g gVar = this.f15632e;
        if (gVar.f15577c && !gVar.f15584j && this.f15631d == e.b.MATCH_CONSTRAINT) {
            w.e eVar2 = this.f15629b;
            int i12 = eVar2.f15201w;
            if (i12 != 2) {
                if (i12 == 3 && eVar2.f15165e.f15632e.f15584j) {
                    int u10 = eVar2.u();
                    if (u10 == -1) {
                        w.e eVar3 = this.f15629b;
                        f10 = eVar3.f15165e.f15632e.f15581g;
                        t10 = eVar3.t();
                    } else if (u10 == 0) {
                        f11 = r7.f15165e.f15632e.f15581g * this.f15629b.t();
                        i10 = (int) (f11 + 0.5f);
                        this.f15632e.d(i10);
                    } else if (u10 == 1) {
                        w.e eVar4 = this.f15629b;
                        f10 = eVar4.f15165e.f15632e.f15581g;
                        t10 = eVar4.t();
                    } else {
                        i10 = 0;
                        this.f15632e.d(i10);
                    }
                    f11 = f10 / t10;
                    i10 = (int) (f11 + 0.5f);
                    this.f15632e.d(i10);
                }
            } else {
                w.e I = eVar2.I();
                if (I != null) {
                    if (I.f15167f.f15632e.f15584j) {
                        this.f15632e.d((int) ((r7.f15581g * this.f15629b.D) + 0.5f));
                    }
                }
            }
        }
        f fVar = this.f15635h;
        if (fVar.f15577c) {
            f fVar2 = this.f15636i;
            if (fVar2.f15577c) {
                if (fVar.f15584j && fVar2.f15584j && this.f15632e.f15584j) {
                    return;
                }
                if (!this.f15632e.f15584j && this.f15631d == e.b.MATCH_CONSTRAINT) {
                    w.e eVar5 = this.f15629b;
                    if (eVar5.f15199v == 0 && !eVar5.f0()) {
                        f fVar3 = this.f15635h.f15586l.get(0);
                        f fVar4 = this.f15636i.f15586l.get(0);
                        int i13 = fVar3.f15581g;
                        f fVar5 = this.f15635h;
                        int i14 = i13 + fVar5.f15580f;
                        int i15 = fVar4.f15581g + this.f15636i.f15580f;
                        fVar5.d(i14);
                        this.f15636i.d(i15);
                        this.f15632e.d(i15 - i14);
                        return;
                    }
                }
                if (!this.f15632e.f15584j && this.f15631d == e.b.MATCH_CONSTRAINT && this.f15628a == 1 && this.f15635h.f15586l.size() > 0 && this.f15636i.f15586l.size() > 0) {
                    f fVar6 = this.f15635h.f15586l.get(0);
                    int i16 = (this.f15636i.f15586l.get(0).f15581g + this.f15636i.f15580f) - (fVar6.f15581g + this.f15635h.f15580f);
                    g gVar2 = this.f15632e;
                    int i17 = gVar2.f15596m;
                    if (i16 < i17) {
                        gVar2.d(i16);
                    } else {
                        gVar2.d(i17);
                    }
                }
                if (this.f15632e.f15584j && this.f15635h.f15586l.size() > 0 && this.f15636i.f15586l.size() > 0) {
                    f fVar7 = this.f15635h.f15586l.get(0);
                    f fVar8 = this.f15636i.f15586l.get(0);
                    int i18 = fVar7.f15581g + this.f15635h.f15580f;
                    int i19 = fVar8.f15581g + this.f15636i.f15580f;
                    float M = this.f15629b.M();
                    if (fVar7 == fVar8) {
                        i18 = fVar7.f15581g;
                        i19 = fVar8.f15581g;
                        M = 0.5f;
                    }
                    this.f15635h.d((int) (i18 + 0.5f + (((i19 - i18) - this.f15632e.f15581g) * M)));
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
            this.f15632e.d(eVar.v());
        }
        if (!this.f15632e.f15584j) {
            this.f15631d = this.f15629b.O();
            if (this.f15629b.U()) {
                this.f15611l = new x.a(this);
            }
            e.b bVar = this.f15631d;
            if (bVar != e.b.MATCH_CONSTRAINT) {
                if (bVar == e.b.MATCH_PARENT && (I2 = this.f15629b.I()) != null && I2.O() == e.b.FIXED) {
                    int v10 = (I2.v() - this.f15629b.O.e()) - this.f15629b.Q.e();
                    b(this.f15635h, I2.f15167f.f15635h, this.f15629b.O.e());
                    b(this.f15636i, I2.f15167f.f15636i, -this.f15629b.Q.e());
                    this.f15632e.d(v10);
                    return;
                }
                if (this.f15631d == e.b.FIXED) {
                    this.f15632e.d(this.f15629b.v());
                }
            }
        } else if (this.f15631d == e.b.MATCH_PARENT && (I = this.f15629b.I()) != null && I.O() == e.b.FIXED) {
            b(this.f15635h, I.f15167f.f15635h, this.f15629b.O.e());
            b(this.f15636i, I.f15167f.f15636i, -this.f15629b.Q.e());
            return;
        }
        g gVar = this.f15632e;
        boolean z10 = gVar.f15584j;
        if (z10) {
            w.e eVar2 = this.f15629b;
            if (eVar2.f15157a) {
                w.d[] dVarArr = eVar2.V;
                if (dVarArr[2].f15142f != null && dVarArr[3].f15142f != null) {
                    if (eVar2.f0()) {
                        this.f15635h.f15580f = this.f15629b.V[2].e();
                        this.f15636i.f15580f = -this.f15629b.V[3].e();
                    } else {
                        f h10 = h(this.f15629b.V[2]);
                        if (h10 != null) {
                            b(this.f15635h, h10, this.f15629b.V[2].e());
                        }
                        f h11 = h(this.f15629b.V[3]);
                        if (h11 != null) {
                            b(this.f15636i, h11, -this.f15629b.V[3].e());
                        }
                        this.f15635h.f15576b = true;
                        this.f15636i.f15576b = true;
                    }
                    if (this.f15629b.U()) {
                        b(this.f15610k, this.f15635h, this.f15629b.n());
                        return;
                    }
                    return;
                }
                if (dVarArr[2].f15142f != null) {
                    f h12 = h(dVarArr[2]);
                    if (h12 != null) {
                        b(this.f15635h, h12, this.f15629b.V[2].e());
                        b(this.f15636i, this.f15635h, this.f15632e.f15581g);
                        if (this.f15629b.U()) {
                            b(this.f15610k, this.f15635h, this.f15629b.n());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (dVarArr[3].f15142f != null) {
                    f h13 = h(dVarArr[3]);
                    if (h13 != null) {
                        b(this.f15636i, h13, -this.f15629b.V[3].e());
                        b(this.f15635h, this.f15636i, -this.f15632e.f15581g);
                    }
                    if (this.f15629b.U()) {
                        b(this.f15610k, this.f15635h, this.f15629b.n());
                        return;
                    }
                    return;
                }
                if (dVarArr[4].f15142f != null) {
                    f h14 = h(dVarArr[4]);
                    if (h14 != null) {
                        b(this.f15610k, h14, 0);
                        b(this.f15635h, this.f15610k, -this.f15629b.n());
                        b(this.f15636i, this.f15635h, this.f15632e.f15581g);
                        return;
                    }
                    return;
                }
                if ((eVar2 instanceof w.h) || eVar2.I() == null || this.f15629b.m(d.b.CENTER).f15142f != null) {
                    return;
                }
                b(this.f15635h, this.f15629b.I().f15167f.f15635h, this.f15629b.T());
                b(this.f15636i, this.f15635h, this.f15632e.f15581g);
                if (this.f15629b.U()) {
                    b(this.f15610k, this.f15635h, this.f15629b.n());
                    return;
                }
                return;
            }
        }
        if (!z10 && this.f15631d == e.b.MATCH_CONSTRAINT) {
            w.e eVar3 = this.f15629b;
            int i10 = eVar3.f15201w;
            if (i10 != 2) {
                if (i10 == 3 && !eVar3.f0()) {
                    w.e eVar4 = this.f15629b;
                    if (eVar4.f15199v != 3) {
                        g gVar2 = eVar4.f15165e.f15632e;
                        this.f15632e.f15586l.add(gVar2);
                        gVar2.f15585k.add(this.f15632e);
                        g gVar3 = this.f15632e;
                        gVar3.f15576b = true;
                        gVar3.f15585k.add(this.f15635h);
                        this.f15632e.f15585k.add(this.f15636i);
                    }
                }
            } else {
                w.e I3 = eVar3.I();
                if (I3 != null) {
                    g gVar4 = I3.f15167f.f15632e;
                    this.f15632e.f15586l.add(gVar4);
                    gVar4.f15585k.add(this.f15632e);
                    g gVar5 = this.f15632e;
                    gVar5.f15576b = true;
                    gVar5.f15585k.add(this.f15635h);
                    this.f15632e.f15585k.add(this.f15636i);
                }
            }
        } else {
            gVar.b(this);
        }
        w.e eVar5 = this.f15629b;
        w.d[] dVarArr2 = eVar5.V;
        if (dVarArr2[2].f15142f != null && dVarArr2[3].f15142f != null) {
            if (eVar5.f0()) {
                this.f15635h.f15580f = this.f15629b.V[2].e();
                this.f15636i.f15580f = -this.f15629b.V[3].e();
            } else {
                f h15 = h(this.f15629b.V[2]);
                f h16 = h(this.f15629b.V[3]);
                if (h15 != null) {
                    h15.b(this);
                }
                if (h16 != null) {
                    h16.b(this);
                }
                this.f15637j = p.b.CENTER;
            }
            if (this.f15629b.U()) {
                c(this.f15610k, this.f15635h, 1, this.f15611l);
            }
        } else if (dVarArr2[2].f15142f != null) {
            f h17 = h(dVarArr2[2]);
            if (h17 != null) {
                b(this.f15635h, h17, this.f15629b.V[2].e());
                c(this.f15636i, this.f15635h, 1, this.f15632e);
                if (this.f15629b.U()) {
                    c(this.f15610k, this.f15635h, 1, this.f15611l);
                }
                e.b bVar2 = this.f15631d;
                e.b bVar3 = e.b.MATCH_CONSTRAINT;
                if (bVar2 == bVar3 && this.f15629b.t() > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    l lVar = this.f15629b.f15165e;
                    if (lVar.f15631d == bVar3) {
                        lVar.f15632e.f15585k.add(this.f15632e);
                        this.f15632e.f15586l.add(this.f15629b.f15165e.f15632e);
                        this.f15632e.f15575a = this;
                    }
                }
            }
        } else if (dVarArr2[3].f15142f != null) {
            f h18 = h(dVarArr2[3]);
            if (h18 != null) {
                b(this.f15636i, h18, -this.f15629b.V[3].e());
                c(this.f15635h, this.f15636i, -1, this.f15632e);
                if (this.f15629b.U()) {
                    c(this.f15610k, this.f15635h, 1, this.f15611l);
                }
            }
        } else if (dVarArr2[4].f15142f != null) {
            f h19 = h(dVarArr2[4]);
            if (h19 != null) {
                b(this.f15610k, h19, 0);
                c(this.f15635h, this.f15610k, -1, this.f15611l);
                c(this.f15636i, this.f15635h, 1, this.f15632e);
            }
        } else if (!(eVar5 instanceof w.h) && eVar5.I() != null) {
            b(this.f15635h, this.f15629b.I().f15167f.f15635h, this.f15629b.T());
            c(this.f15636i, this.f15635h, 1, this.f15632e);
            if (this.f15629b.U()) {
                c(this.f15610k, this.f15635h, 1, this.f15611l);
            }
            e.b bVar4 = this.f15631d;
            e.b bVar5 = e.b.MATCH_CONSTRAINT;
            if (bVar4 == bVar5 && this.f15629b.t() > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                l lVar2 = this.f15629b.f15165e;
                if (lVar2.f15631d == bVar5) {
                    lVar2.f15632e.f15585k.add(this.f15632e);
                    this.f15632e.f15586l.add(this.f15629b.f15165e.f15632e);
                    this.f15632e.f15575a = this;
                }
            }
        }
        if (this.f15632e.f15586l.size() == 0) {
            this.f15632e.f15577c = true;
        }
    }

    @Override // x.p
    public void e() {
        f fVar = this.f15635h;
        if (fVar.f15584j) {
            this.f15629b.e1(fVar.f15581g);
        }
    }

    @Override // x.p
    public void f() {
        this.f15630c = null;
        this.f15635h.c();
        this.f15636i.c();
        this.f15610k.c();
        this.f15632e.c();
        this.f15634g = false;
    }

    @Override // x.p
    public boolean m() {
        return this.f15631d != e.b.MATCH_CONSTRAINT || this.f15629b.f15201w == 0;
    }

    public void q() {
        this.f15634g = false;
        this.f15635h.c();
        this.f15635h.f15584j = false;
        this.f15636i.c();
        this.f15636i.f15584j = false;
        this.f15610k.c();
        this.f15610k.f15584j = false;
        this.f15632e.f15584j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f15629b.r();
    }
}

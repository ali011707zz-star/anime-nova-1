package x;

import w.d;
import w.e;

/* compiled from: WidgetRun.java */
/* loaded from: classes.dex */
public abstract class p implements d {

    /* renamed from: a, reason: collision with root package name */
    public int f15628a;

    /* renamed from: b, reason: collision with root package name */
    public w.e f15629b;

    /* renamed from: c, reason: collision with root package name */
    public m f15630c;

    /* renamed from: d, reason: collision with root package name */
    public e.b f15631d;

    /* renamed from: e, reason: collision with root package name */
    public g f15632e = new g(this);

    /* renamed from: f, reason: collision with root package name */
    public int f15633f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f15634g = false;

    /* renamed from: h, reason: collision with root package name */
    public f f15635h = new f(this);

    /* renamed from: i, reason: collision with root package name */
    public f f15636i = new f(this);

    /* renamed from: j, reason: collision with root package name */
    public b f15637j = b.NONE;

    /* compiled from: WidgetRun.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15638a;

        static {
            int[] iArr = new int[d.b.values().length];
            f15638a = iArr;
            try {
                iArr[d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15638a[d.b.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15638a[d.b.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15638a[d.b.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15638a[d.b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: WidgetRun.java */
    /* loaded from: classes.dex */
    public enum b {
        NONE,
        START,
        END,
        CENTER
    }

    public p(w.e eVar) {
        this.f15629b = eVar;
    }

    @Override // x.d
    public void a(d dVar) {
    }

    public final void b(f fVar, f fVar2, int i10) {
        fVar.f15586l.add(fVar2);
        fVar.f15580f = i10;
        fVar2.f15585k.add(fVar);
    }

    public final void c(f fVar, f fVar2, int i10, g gVar) {
        fVar.f15586l.add(fVar2);
        fVar.f15586l.add(this.f15632e);
        fVar.f15582h = i10;
        fVar.f15583i = gVar;
        fVar2.f15585k.add(fVar);
        gVar.f15585k.add(fVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i10, int i11) {
        int max;
        if (i11 == 0) {
            w.e eVar = this.f15629b;
            int i12 = eVar.f15207z;
            max = Math.max(eVar.f15205y, i10);
            if (i12 > 0) {
                max = Math.min(i12, i10);
            }
            if (max == i10) {
                return i10;
            }
        } else {
            w.e eVar2 = this.f15629b;
            int i13 = eVar2.C;
            max = Math.max(eVar2.B, i10);
            if (i13 > 0) {
                max = Math.min(i13, i10);
            }
            if (max == i10) {
                return i10;
            }
        }
        return max;
    }

    public final f h(w.d dVar) {
        w.d dVar2 = dVar.f15142f;
        if (dVar2 == null) {
            return null;
        }
        w.e eVar = dVar2.f15140d;
        int i10 = a.f15638a[dVar2.f15141e.ordinal()];
        if (i10 == 1) {
            return eVar.f15165e.f15635h;
        }
        if (i10 == 2) {
            return eVar.f15165e.f15636i;
        }
        if (i10 == 3) {
            return eVar.f15167f.f15635h;
        }
        if (i10 == 4) {
            return eVar.f15167f.f15610k;
        }
        if (i10 != 5) {
            return null;
        }
        return eVar.f15167f.f15636i;
    }

    public final f i(w.d dVar, int i10) {
        w.d dVar2 = dVar.f15142f;
        if (dVar2 == null) {
            return null;
        }
        w.e eVar = dVar2.f15140d;
        p pVar = i10 == 0 ? eVar.f15165e : eVar.f15167f;
        int i11 = a.f15638a[dVar2.f15141e.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 5) {
                        return null;
                    }
                }
            }
            return pVar.f15636i;
        }
        return pVar.f15635h;
    }

    public long j() {
        if (this.f15632e.f15584j) {
            return r0.f15581g;
        }
        return 0L;
    }

    public boolean k() {
        return this.f15634g;
    }

    public final void l(int i10, int i11) {
        int i12;
        int i13 = this.f15628a;
        if (i13 == 0) {
            this.f15632e.d(g(i11, i10));
            return;
        }
        if (i13 == 1) {
            this.f15632e.d(Math.min(g(this.f15632e.f15596m, i10), i11));
            return;
        }
        if (i13 == 2) {
            w.e I = this.f15629b.I();
            if (I != null) {
                if ((i10 == 0 ? I.f15165e : I.f15167f).f15632e.f15584j) {
                    w.e eVar = this.f15629b;
                    this.f15632e.d(g((int) ((r9.f15581g * (i10 == 0 ? eVar.A : eVar.D)) + 0.5f), i10));
                    return;
                }
                return;
            }
            return;
        }
        if (i13 != 3) {
            return;
        }
        w.e eVar2 = this.f15629b;
        p pVar = eVar2.f15165e;
        e.b bVar = pVar.f15631d;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        if (bVar == bVar2 && pVar.f15628a == 3) {
            n nVar = eVar2.f15167f;
            if (nVar.f15631d == bVar2 && nVar.f15628a == 3) {
                return;
            }
        }
        if (i10 == 0) {
            pVar = eVar2.f15167f;
        }
        if (pVar.f15632e.f15584j) {
            float t10 = eVar2.t();
            if (i10 == 1) {
                i12 = (int) ((pVar.f15632e.f15581g / t10) + 0.5f);
            } else {
                i12 = (int) ((t10 * pVar.f15632e.f15581g) + 0.5f);
            }
            this.f15632e.d(i12);
        }
    }

    public abstract boolean m();

    public void n(d dVar, w.d dVar2, w.d dVar3, int i10) {
        f h10 = h(dVar2);
        f h11 = h(dVar3);
        if (h10.f15584j && h11.f15584j) {
            int e10 = h10.f15581g + dVar2.e();
            int e11 = h11.f15581g - dVar3.e();
            int i11 = e11 - e10;
            if (!this.f15632e.f15584j && this.f15631d == e.b.MATCH_CONSTRAINT) {
                l(i10, i11);
            }
            g gVar = this.f15632e;
            if (gVar.f15584j) {
                if (gVar.f15581g == i11) {
                    this.f15635h.d(e10);
                    this.f15636i.d(e11);
                    return;
                }
                w.e eVar = this.f15629b;
                float w10 = i10 == 0 ? eVar.w() : eVar.M();
                if (h10 == h11) {
                    e10 = h10.f15581g;
                    e11 = h11.f15581g;
                    w10 = 0.5f;
                }
                this.f15635h.d((int) (e10 + 0.5f + (((e11 - e10) - this.f15632e.f15581g) * w10)));
                this.f15636i.d(this.f15635h.f15581g + this.f15632e.f15581g);
            }
        }
    }

    public void o(d dVar) {
    }

    public void p(d dVar) {
    }
}

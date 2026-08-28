package u;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.Arrays;

/* compiled from: ArcCurveFit.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: a, reason: collision with root package name */
    public final double[] f14176a;

    /* renamed from: b, reason: collision with root package name */
    public C0356a[] f14177b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14178c = true;

    /* compiled from: ArcCurveFit.java */
    /* renamed from: u.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0356a {

        /* renamed from: s, reason: collision with root package name */
        public static double[] f14179s = new double[91];

        /* renamed from: a, reason: collision with root package name */
        public double[] f14180a;

        /* renamed from: b, reason: collision with root package name */
        public double f14181b;

        /* renamed from: c, reason: collision with root package name */
        public double f14182c;

        /* renamed from: d, reason: collision with root package name */
        public double f14183d;

        /* renamed from: e, reason: collision with root package name */
        public double f14184e;

        /* renamed from: f, reason: collision with root package name */
        public double f14185f;

        /* renamed from: g, reason: collision with root package name */
        public double f14186g;

        /* renamed from: h, reason: collision with root package name */
        public double f14187h;

        /* renamed from: i, reason: collision with root package name */
        public double f14188i;

        /* renamed from: j, reason: collision with root package name */
        public double f14189j;

        /* renamed from: k, reason: collision with root package name */
        public double f14190k;

        /* renamed from: l, reason: collision with root package name */
        public double f14191l;

        /* renamed from: m, reason: collision with root package name */
        public double f14192m;

        /* renamed from: n, reason: collision with root package name */
        public double f14193n;

        /* renamed from: o, reason: collision with root package name */
        public double f14194o;

        /* renamed from: p, reason: collision with root package name */
        public double f14195p;

        /* renamed from: q, reason: collision with root package name */
        public boolean f14196q;

        /* renamed from: r, reason: collision with root package name */
        public boolean f14197r;

        public C0356a(int i10, double d10, double d11, double d12, double d13, double d14, double d15) {
            this.f14197r = false;
            this.f14196q = i10 == 1;
            this.f14182c = d10;
            this.f14183d = d11;
            this.f14188i = 1.0d / (d11 - d10);
            if (3 == i10) {
                this.f14197r = true;
            }
            double d16 = d14 - d12;
            double d17 = d15 - d13;
            if (!this.f14197r && Math.abs(d16) >= 0.001d && Math.abs(d17) >= 0.001d) {
                this.f14180a = new double[101];
                boolean z10 = this.f14196q;
                double d18 = z10 ? -1 : 1;
                Double.isNaN(d18);
                this.f14189j = d16 * d18;
                double d19 = z10 ? 1 : -1;
                Double.isNaN(d19);
                this.f14190k = d17 * d19;
                this.f14191l = z10 ? d14 : d12;
                this.f14192m = z10 ? d13 : d15;
                a(d12, d13, d14, d15);
                this.f14193n = this.f14181b * this.f14188i;
                return;
            }
            this.f14197r = true;
            this.f14184e = d12;
            this.f14185f = d14;
            this.f14186g = d13;
            this.f14187h = d15;
            double hypot = Math.hypot(d17, d16);
            this.f14181b = hypot;
            this.f14193n = hypot * this.f14188i;
            double d20 = this.f14183d;
            double d21 = this.f14182c;
            this.f14191l = d16 / (d20 - d21);
            this.f14192m = d17 / (d20 - d21);
        }

        public final void a(double d10, double d11, double d12, double d13) {
            double d14;
            double d15 = d12 - d10;
            double d16 = d11 - d13;
            int i10 = 0;
            double d17 = ShadowDrawableWrapper.COS_45;
            double d18 = ShadowDrawableWrapper.COS_45;
            double d19 = ShadowDrawableWrapper.COS_45;
            while (true) {
                if (i10 >= f14179s.length) {
                    break;
                }
                double d20 = i10;
                Double.isNaN(d20);
                double d21 = d17;
                double length = r15.length - 1;
                Double.isNaN(length);
                double radians = Math.toRadians((d20 * 90.0d) / length);
                double sin = Math.sin(radians) * d15;
                double cos = Math.cos(radians) * d16;
                if (i10 > 0) {
                    d14 = Math.hypot(sin - d18, cos - d19) + d21;
                    f14179s[i10] = d14;
                } else {
                    d14 = d21;
                }
                i10++;
                d19 = cos;
                d17 = d14;
                d18 = sin;
            }
            double d22 = d17;
            this.f14181b = d22;
            int i11 = 0;
            while (true) {
                double[] dArr = f14179s;
                if (i11 >= dArr.length) {
                    break;
                }
                dArr[i11] = dArr[i11] / d22;
                i11++;
            }
            int i12 = 0;
            while (true) {
                if (i12 >= this.f14180a.length) {
                    return;
                }
                double d23 = i12;
                double length2 = r1.length - 1;
                Double.isNaN(d23);
                Double.isNaN(length2);
                double d24 = d23 / length2;
                int binarySearch = Arrays.binarySearch(f14179s, d24);
                if (binarySearch >= 0) {
                    double[] dArr2 = this.f14180a;
                    double d25 = binarySearch;
                    double length3 = f14179s.length - 1;
                    Double.isNaN(d25);
                    Double.isNaN(length3);
                    dArr2[i12] = d25 / length3;
                } else if (binarySearch == -1) {
                    this.f14180a[i12] = 0.0d;
                } else {
                    int i13 = -binarySearch;
                    int i14 = i13 - 2;
                    double d26 = i14;
                    double[] dArr3 = f14179s;
                    double d27 = (d24 - dArr3[i14]) / (dArr3[i13 - 1] - dArr3[i14]);
                    Double.isNaN(d26);
                    double length4 = dArr3.length - 1;
                    Double.isNaN(length4);
                    this.f14180a[i12] = (d26 + d27) / length4;
                }
                i12++;
            }
        }

        public double b() {
            double d10 = this.f14189j * this.f14195p;
            double hypot = this.f14193n / Math.hypot(d10, (-this.f14190k) * this.f14194o);
            if (this.f14196q) {
                d10 = -d10;
            }
            return d10 * hypot;
        }

        public double c() {
            double d10 = this.f14189j * this.f14195p;
            double d11 = (-this.f14190k) * this.f14194o;
            double hypot = this.f14193n / Math.hypot(d10, d11);
            return this.f14196q ? (-d11) * hypot : d11 * hypot;
        }

        public double d(double d10) {
            return this.f14191l;
        }

        public double e(double d10) {
            return this.f14192m;
        }

        public double f(double d10) {
            double d11 = (d10 - this.f14182c) * this.f14188i;
            double d12 = this.f14184e;
            return d12 + (d11 * (this.f14185f - d12));
        }

        public double g(double d10) {
            double d11 = (d10 - this.f14182c) * this.f14188i;
            double d12 = this.f14186g;
            return d12 + (d11 * (this.f14187h - d12));
        }

        public double h() {
            return this.f14191l + (this.f14189j * this.f14194o);
        }

        public double i() {
            return this.f14192m + (this.f14190k * this.f14195p);
        }

        public double j(double d10) {
            if (d10 <= ShadowDrawableWrapper.COS_45) {
                return ShadowDrawableWrapper.COS_45;
            }
            if (d10 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f14180a;
            double length = dArr.length - 1;
            Double.isNaN(length);
            double d11 = d10 * length;
            int i10 = (int) d11;
            double d12 = i10;
            Double.isNaN(d12);
            return dArr[i10] + ((d11 - d12) * (dArr[i10 + 1] - dArr[i10]));
        }

        public void k(double d10) {
            double j10 = j((this.f14196q ? this.f14183d - d10 : d10 - this.f14182c) * this.f14188i) * 1.5707963267948966d;
            this.f14194o = Math.sin(j10);
            this.f14195p = Math.cos(j10);
        }
    }

    public a(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f14176a = dArr;
        this.f14177b = new C0356a[dArr.length - 1];
        int i10 = 0;
        int i11 = 1;
        int i12 = 1;
        while (true) {
            C0356a[] c0356aArr = this.f14177b;
            if (i10 >= c0356aArr.length) {
                return;
            }
            int i13 = iArr[i10];
            if (i13 == 0) {
                i12 = 3;
            } else if (i13 == 1) {
                i11 = 1;
                i12 = 1;
            } else if (i13 == 2) {
                i11 = 2;
                i12 = 2;
            } else if (i13 == 3) {
                i11 = i11 == 1 ? 2 : 1;
                i12 = i11;
            }
            int i14 = i10 + 1;
            c0356aArr[i10] = new C0356a(i12, dArr[i10], dArr[i14], dArr2[i10][0], dArr2[i10][1], dArr2[i14][0], dArr2[i14][1]);
            i10 = i14;
        }
    }

    @Override // u.b
    public double c(double d10, int i10) {
        double d11;
        double g10;
        double e10;
        double i11;
        double c10;
        int i12 = 0;
        if (this.f14178c) {
            C0356a[] c0356aArr = this.f14177b;
            if (d10 < c0356aArr[0].f14182c) {
                double d12 = c0356aArr[0].f14182c;
                d11 = d10 - c0356aArr[0].f14182c;
                if (!c0356aArr[0].f14197r) {
                    c0356aArr[0].k(d12);
                    if (i10 == 0) {
                        i11 = this.f14177b[0].h();
                        c10 = this.f14177b[0].b();
                    } else {
                        i11 = this.f14177b[0].i();
                        c10 = this.f14177b[0].c();
                    }
                    return i11 + (d11 * c10);
                }
                if (i10 == 0) {
                    g10 = c0356aArr[0].f(d12);
                    e10 = this.f14177b[0].d(d12);
                } else {
                    g10 = c0356aArr[0].g(d12);
                    e10 = this.f14177b[0].e(d12);
                }
            } else if (d10 > c0356aArr[c0356aArr.length - 1].f14183d) {
                double d13 = c0356aArr[c0356aArr.length - 1].f14183d;
                d11 = d10 - d13;
                int length = c0356aArr.length - 1;
                if (i10 == 0) {
                    g10 = c0356aArr[length].f(d13);
                    e10 = this.f14177b[length].d(d13);
                } else {
                    g10 = c0356aArr[length].g(d13);
                    e10 = this.f14177b[length].e(d13);
                }
            }
            return g10 + (d11 * e10);
        }
        C0356a[] c0356aArr2 = this.f14177b;
        if (d10 < c0356aArr2[0].f14182c) {
            d10 = c0356aArr2[0].f14182c;
        } else if (d10 > c0356aArr2[c0356aArr2.length - 1].f14183d) {
            d10 = c0356aArr2[c0356aArr2.length - 1].f14183d;
        }
        while (true) {
            C0356a[] c0356aArr3 = this.f14177b;
            if (i12 >= c0356aArr3.length) {
                return Double.NaN;
            }
            if (d10 <= c0356aArr3[i12].f14183d) {
                if (c0356aArr3[i12].f14197r) {
                    if (i10 == 0) {
                        return c0356aArr3[i12].f(d10);
                    }
                    return c0356aArr3[i12].g(d10);
                }
                c0356aArr3[i12].k(d10);
                if (i10 == 0) {
                    return this.f14177b[i12].h();
                }
                return this.f14177b[i12].i();
            }
            i12++;
        }
    }

    @Override // u.b
    public void d(double d10, double[] dArr) {
        if (this.f14178c) {
            C0356a[] c0356aArr = this.f14177b;
            if (d10 < c0356aArr[0].f14182c) {
                double d11 = c0356aArr[0].f14182c;
                double d12 = d10 - c0356aArr[0].f14182c;
                if (c0356aArr[0].f14197r) {
                    dArr[0] = c0356aArr[0].f(d11) + (this.f14177b[0].d(d11) * d12);
                    dArr[1] = this.f14177b[0].g(d11) + (d12 * this.f14177b[0].e(d11));
                    return;
                } else {
                    c0356aArr[0].k(d11);
                    dArr[0] = this.f14177b[0].h() + (this.f14177b[0].b() * d12);
                    dArr[1] = this.f14177b[0].i() + (d12 * this.f14177b[0].c());
                    return;
                }
            }
            if (d10 > c0356aArr[c0356aArr.length - 1].f14183d) {
                double d13 = c0356aArr[c0356aArr.length - 1].f14183d;
                double d14 = d10 - d13;
                int length = c0356aArr.length - 1;
                if (c0356aArr[length].f14197r) {
                    dArr[0] = c0356aArr[length].f(d13) + (this.f14177b[length].d(d13) * d14);
                    dArr[1] = this.f14177b[length].g(d13) + (d14 * this.f14177b[length].e(d13));
                    return;
                } else {
                    c0356aArr[length].k(d10);
                    dArr[0] = this.f14177b[length].h() + (this.f14177b[length].b() * d14);
                    dArr[1] = this.f14177b[length].i() + (d14 * this.f14177b[length].c());
                    return;
                }
            }
        } else {
            C0356a[] c0356aArr2 = this.f14177b;
            if (d10 < c0356aArr2[0].f14182c) {
                d10 = c0356aArr2[0].f14182c;
            }
            if (d10 > c0356aArr2[c0356aArr2.length - 1].f14183d) {
                d10 = c0356aArr2[c0356aArr2.length - 1].f14183d;
            }
        }
        int i10 = 0;
        while (true) {
            C0356a[] c0356aArr3 = this.f14177b;
            if (i10 >= c0356aArr3.length) {
                return;
            }
            if (d10 <= c0356aArr3[i10].f14183d) {
                if (c0356aArr3[i10].f14197r) {
                    dArr[0] = c0356aArr3[i10].f(d10);
                    dArr[1] = this.f14177b[i10].g(d10);
                    return;
                } else {
                    c0356aArr3[i10].k(d10);
                    dArr[0] = this.f14177b[i10].h();
                    dArr[1] = this.f14177b[i10].i();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // u.b
    public void e(double d10, float[] fArr) {
        if (this.f14178c) {
            C0356a[] c0356aArr = this.f14177b;
            if (d10 < c0356aArr[0].f14182c) {
                double d11 = c0356aArr[0].f14182c;
                double d12 = d10 - c0356aArr[0].f14182c;
                if (c0356aArr[0].f14197r) {
                    fArr[0] = (float) (c0356aArr[0].f(d11) + (this.f14177b[0].d(d11) * d12));
                    fArr[1] = (float) (this.f14177b[0].g(d11) + (d12 * this.f14177b[0].e(d11)));
                    return;
                } else {
                    c0356aArr[0].k(d11);
                    fArr[0] = (float) (this.f14177b[0].h() + (this.f14177b[0].b() * d12));
                    fArr[1] = (float) (this.f14177b[0].i() + (d12 * this.f14177b[0].c()));
                    return;
                }
            }
            if (d10 > c0356aArr[c0356aArr.length - 1].f14183d) {
                double d13 = c0356aArr[c0356aArr.length - 1].f14183d;
                double d14 = d10 - d13;
                int length = c0356aArr.length - 1;
                if (c0356aArr[length].f14197r) {
                    fArr[0] = (float) (c0356aArr[length].f(d13) + (this.f14177b[length].d(d13) * d14));
                    fArr[1] = (float) (this.f14177b[length].g(d13) + (d14 * this.f14177b[length].e(d13)));
                    return;
                } else {
                    c0356aArr[length].k(d10);
                    fArr[0] = (float) this.f14177b[length].h();
                    fArr[1] = (float) this.f14177b[length].i();
                    return;
                }
            }
        } else {
            C0356a[] c0356aArr2 = this.f14177b;
            if (d10 < c0356aArr2[0].f14182c) {
                d10 = c0356aArr2[0].f14182c;
            } else if (d10 > c0356aArr2[c0356aArr2.length - 1].f14183d) {
                d10 = c0356aArr2[c0356aArr2.length - 1].f14183d;
            }
        }
        int i10 = 0;
        while (true) {
            C0356a[] c0356aArr3 = this.f14177b;
            if (i10 >= c0356aArr3.length) {
                return;
            }
            if (d10 <= c0356aArr3[i10].f14183d) {
                if (c0356aArr3[i10].f14197r) {
                    fArr[0] = (float) c0356aArr3[i10].f(d10);
                    fArr[1] = (float) this.f14177b[i10].g(d10);
                    return;
                } else {
                    c0356aArr3[i10].k(d10);
                    fArr[0] = (float) this.f14177b[i10].h();
                    fArr[1] = (float) this.f14177b[i10].i();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // u.b
    public void f(double d10, double[] dArr) {
        C0356a[] c0356aArr = this.f14177b;
        if (d10 < c0356aArr[0].f14182c) {
            d10 = c0356aArr[0].f14182c;
        } else if (d10 > c0356aArr[c0356aArr.length - 1].f14183d) {
            d10 = c0356aArr[c0356aArr.length - 1].f14183d;
        }
        int i10 = 0;
        while (true) {
            C0356a[] c0356aArr2 = this.f14177b;
            if (i10 >= c0356aArr2.length) {
                return;
            }
            if (d10 <= c0356aArr2[i10].f14183d) {
                if (c0356aArr2[i10].f14197r) {
                    dArr[0] = c0356aArr2[i10].d(d10);
                    dArr[1] = this.f14177b[i10].e(d10);
                    return;
                } else {
                    c0356aArr2[i10].k(d10);
                    dArr[0] = this.f14177b[i10].b();
                    dArr[1] = this.f14177b[i10].c();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // u.b
    public double[] g() {
        return this.f14176a;
    }
}

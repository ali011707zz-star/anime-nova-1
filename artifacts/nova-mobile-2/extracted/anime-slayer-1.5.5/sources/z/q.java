package z;

import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.Arrays;
import java.util.LinkedHashMap;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: MotionPaths.java */
/* loaded from: classes.dex */
public class q implements Comparable<q> {

    /* renamed from: x, reason: collision with root package name */
    public static String[] f17104x = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: f, reason: collision with root package name */
    public u.c f17105f;

    /* renamed from: h, reason: collision with root package name */
    public float f17107h;

    /* renamed from: i, reason: collision with root package name */
    public float f17108i;

    /* renamed from: j, reason: collision with root package name */
    public float f17109j;

    /* renamed from: k, reason: collision with root package name */
    public float f17110k;

    /* renamed from: l, reason: collision with root package name */
    public float f17111l;

    /* renamed from: m, reason: collision with root package name */
    public float f17112m;

    /* renamed from: p, reason: collision with root package name */
    public int f17115p;

    /* renamed from: q, reason: collision with root package name */
    public int f17116q;

    /* renamed from: r, reason: collision with root package name */
    public float f17117r;

    /* renamed from: s, reason: collision with root package name */
    public m f17118s;

    /* renamed from: t, reason: collision with root package name */
    public LinkedHashMap<String, androidx.constraintlayout.widget.a> f17119t;

    /* renamed from: u, reason: collision with root package name */
    public int f17120u;

    /* renamed from: v, reason: collision with root package name */
    public double[] f17121v;

    /* renamed from: w, reason: collision with root package name */
    public double[] f17122w;

    /* renamed from: g, reason: collision with root package name */
    public int f17106g = 0;

    /* renamed from: n, reason: collision with root package name */
    public float f17113n = Float.NaN;

    /* renamed from: o, reason: collision with root package name */
    public float f17114o = Float.NaN;

    public q() {
        int i10 = d.f16863f;
        this.f17115p = i10;
        this.f17116q = i10;
        this.f17117r = Float.NaN;
        this.f17118s = null;
        this.f17119t = new LinkedHashMap<>();
        this.f17120u = 0;
        this.f17121v = new double[18];
        this.f17122w = new double[18];
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(q qVar) {
        return Float.compare(this.f17108i, qVar.f17108i);
    }

    public final boolean b(float f10, float f11) {
        return (Float.isNaN(f10) || Float.isNaN(f11)) ? Float.isNaN(f10) != Float.isNaN(f11) : Math.abs(f10 - f11) > 1.0E-6f;
    }

    public void c(q qVar, boolean[] zArr, String[] strArr, boolean z10) {
        boolean b10 = b(this.f17109j, qVar.f17109j);
        boolean b11 = b(this.f17110k, qVar.f17110k);
        zArr[0] = zArr[0] | b(this.f17108i, qVar.f17108i);
        boolean z11 = b10 | b11 | z10;
        zArr[1] = zArr[1] | z11;
        zArr[2] = z11 | zArr[2];
        zArr[3] = zArr[3] | b(this.f17111l, qVar.f17111l);
        zArr[4] = b(this.f17112m, qVar.f17112m) | zArr[4];
    }

    public void d(double[] dArr, int[] iArr) {
        float[] fArr = {this.f17108i, this.f17109j, this.f17110k, this.f17111l, this.f17112m, this.f17113n};
        int i10 = 0;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (iArr[i11] < 6) {
                dArr[i10] = fArr[iArr[i11]];
                i10++;
            }
        }
    }

    public void e(double d10, int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.f17109j;
        float f11 = this.f17110k;
        float f12 = this.f17111l;
        float f13 = this.f17112m;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f14 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                f10 = f14;
            } else if (i12 == 2) {
                f11 = f14;
            } else if (i12 == 3) {
                f12 = f14;
            } else if (i12 == 4) {
                f13 = f14;
            }
        }
        m mVar = this.f17118s;
        if (mVar != null) {
            float[] fArr2 = new float[2];
            mVar.h(d10, fArr2, new float[2]);
            float f15 = fArr2[0];
            float f16 = fArr2[1];
            double d11 = f15;
            double d12 = f10;
            double d13 = f11;
            double sin = Math.sin(d13);
            Double.isNaN(d12);
            Double.isNaN(d11);
            double d14 = d11 + (sin * d12);
            double d15 = f12 / 2.0f;
            Double.isNaN(d15);
            float f17 = (float) (d14 - d15);
            double d16 = f16;
            double cos = Math.cos(d13);
            Double.isNaN(d12);
            Double.isNaN(d16);
            double d17 = d16 - (d12 * cos);
            double d18 = f13 / 2.0f;
            Double.isNaN(d18);
            f10 = f17;
            f11 = (float) (d17 - d18);
        }
        fArr[i10] = f10 + (f12 / 2.0f) + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        fArr[i10 + 1] = f11 + (f13 / 2.0f) + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public void f(double d10, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f10;
        float f11 = this.f17109j;
        float f12 = this.f17110k;
        float f13 = this.f17111l;
        float f14 = this.f17112m;
        float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f16 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f17 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f18 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f19 = (float) dArr[i10];
            float f20 = (float) dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f11 = f19;
                f15 = f20;
            } else if (i11 == 2) {
                f12 = f19;
                f17 = f20;
            } else if (i11 == 3) {
                f13 = f19;
                f16 = f20;
            } else if (i11 == 4) {
                f14 = f19;
                f18 = f20;
            }
        }
        float f21 = 2.0f;
        float f22 = (f16 / 2.0f) + f15;
        float f23 = (f18 / 2.0f) + f17;
        m mVar = this.f17118s;
        if (mVar != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            mVar.h(d10, fArr3, fArr4);
            float f24 = fArr3[0];
            float f25 = fArr3[1];
            float f26 = fArr4[0];
            float f27 = fArr4[1];
            double d11 = f24;
            double d12 = f11;
            double d13 = f12;
            double sin = Math.sin(d13);
            Double.isNaN(d12);
            Double.isNaN(d11);
            double d14 = d11 + (sin * d12);
            f10 = f13;
            double d15 = f13 / 2.0f;
            Double.isNaN(d15);
            float f28 = (float) (d14 - d15);
            double d16 = f25;
            double cos = Math.cos(d13);
            Double.isNaN(d12);
            Double.isNaN(d16);
            double d17 = d16 - (d12 * cos);
            double d18 = f14 / 2.0f;
            Double.isNaN(d18);
            double d19 = f26;
            double d20 = f15;
            double sin2 = Math.sin(d13);
            Double.isNaN(d20);
            Double.isNaN(d19);
            double d21 = d19 + (sin2 * d20);
            double cos2 = Math.cos(d13);
            double d22 = f17;
            Double.isNaN(d22);
            float f29 = (float) (d21 + (cos2 * d22));
            double d23 = f27;
            double cos3 = Math.cos(d13);
            Double.isNaN(d20);
            Double.isNaN(d23);
            double sin3 = Math.sin(d13);
            Double.isNaN(d22);
            f23 = (float) ((d23 - (d20 * cos3)) + (sin3 * d22));
            f22 = f29;
            f11 = f28;
            f12 = (float) (d17 - d18);
            f21 = 2.0f;
        } else {
            f10 = f13;
        }
        fArr[0] = f11 + (f10 / f21) + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        fArr[1] = f12 + (f14 / f21) + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        fArr2[0] = f22;
        fArr2[1] = f23;
    }

    public int g(String str, double[] dArr, int i10) {
        androidx.constraintlayout.widget.a aVar = this.f17119t.get(str);
        int i11 = 0;
        if (aVar == null) {
            return 0;
        }
        if (aVar.g() == 1) {
            dArr[i10] = aVar.e();
            return 1;
        }
        int g10 = aVar.g();
        aVar.f(new float[g10]);
        while (i11 < g10) {
            dArr[i10] = r2[i11];
            i11++;
            i10++;
        }
        return g10;
    }

    public int h(String str) {
        androidx.constraintlayout.widget.a aVar = this.f17119t.get(str);
        if (aVar == null) {
            return 0;
        }
        return aVar.g();
    }

    public void i(int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.f17109j;
        float f11 = this.f17110k;
        float f12 = this.f17111l;
        float f13 = this.f17112m;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f14 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                f10 = f14;
            } else if (i12 == 2) {
                f11 = f14;
            } else if (i12 == 3) {
                f12 = f14;
            } else if (i12 == 4) {
                f13 = f14;
            }
        }
        m mVar = this.f17118s;
        if (mVar != null) {
            float i13 = mVar.i();
            float j10 = this.f17118s.j();
            double d10 = i13;
            double d11 = f10;
            double d12 = f11;
            double sin = Math.sin(d12);
            Double.isNaN(d11);
            Double.isNaN(d10);
            double d13 = d10 + (sin * d11);
            double d14 = f12 / 2.0f;
            Double.isNaN(d14);
            float f15 = (float) (d13 - d14);
            double d15 = j10;
            double cos = Math.cos(d12);
            Double.isNaN(d11);
            Double.isNaN(d15);
            double d16 = f13 / 2.0f;
            Double.isNaN(d16);
            f11 = (float) ((d15 - (d11 * cos)) - d16);
            f10 = f15;
        }
        float f16 = f12 + f10;
        float f17 = f13 + f11;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        float f18 = f10 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f19 = f11 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f20 = f16 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f21 = f11 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f22 = f16 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f23 = f17 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f24 = f10 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f25 = f17 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i14 = i10 + 1;
        fArr[i10] = f18;
        int i15 = i14 + 1;
        fArr[i14] = f19;
        int i16 = i15 + 1;
        fArr[i15] = f20;
        int i17 = i16 + 1;
        fArr[i16] = f21;
        int i18 = i17 + 1;
        fArr[i17] = f22;
        int i19 = i18 + 1;
        fArr[i18] = f23;
        fArr[i19] = f24;
        fArr[i19 + 1] = f25;
    }

    public boolean j(String str) {
        return this.f17119t.containsKey(str);
    }

    public void k(h hVar, q qVar, q qVar2) {
        float f10 = hVar.f16864a / 100.0f;
        this.f17107h = f10;
        this.f17106g = hVar.f16912j;
        float f11 = Float.isNaN(hVar.f16913k) ? f10 : hVar.f16913k;
        float f12 = Float.isNaN(hVar.f16914l) ? f10 : hVar.f16914l;
        float f13 = qVar2.f17111l;
        float f14 = qVar.f17111l;
        float f15 = qVar2.f17112m;
        float f16 = qVar.f17112m;
        this.f17108i = this.f17107h;
        float f17 = qVar.f17109j;
        float f18 = qVar.f17110k;
        float f19 = (qVar2.f17109j + (f13 / 2.0f)) - ((f14 / 2.0f) + f17);
        float f20 = (qVar2.f17110k + (f15 / 2.0f)) - (f18 + (f16 / 2.0f));
        float f21 = ((f13 - f14) * f11) / 2.0f;
        this.f17109j = (int) ((f17 + (f19 * f10)) - f21);
        float f22 = ((f15 - f16) * f12) / 2.0f;
        this.f17110k = (int) ((f18 + (f20 * f10)) - f22);
        this.f17111l = (int) (f14 + r9);
        this.f17112m = (int) (f16 + r12);
        float f23 = Float.isNaN(hVar.f16915m) ? f10 : hVar.f16915m;
        boolean isNaN = Float.isNaN(hVar.f16918p);
        float f24 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f25 = isNaN ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : hVar.f16918p;
        if (!Float.isNaN(hVar.f16916n)) {
            f10 = hVar.f16916n;
        }
        if (!Float.isNaN(hVar.f16917o)) {
            f24 = hVar.f16917o;
        }
        this.f17120u = 0;
        this.f17109j = (int) (((qVar.f17109j + (f23 * f19)) + (f24 * f20)) - f21);
        this.f17110k = (int) (((qVar.f17110k + (f19 * f25)) + (f20 * f10)) - f22);
        this.f17105f = u.c.c(hVar.f16910h);
        this.f17115p = hVar.f16911i;
    }

    public void l(h hVar, q qVar, q qVar2) {
        float f10 = hVar.f16864a / 100.0f;
        this.f17107h = f10;
        this.f17106g = hVar.f16912j;
        float f11 = Float.isNaN(hVar.f16913k) ? f10 : hVar.f16913k;
        float f12 = Float.isNaN(hVar.f16914l) ? f10 : hVar.f16914l;
        float f13 = qVar2.f17111l - qVar.f17111l;
        float f14 = qVar2.f17112m - qVar.f17112m;
        this.f17108i = this.f17107h;
        if (!Float.isNaN(hVar.f16915m)) {
            f10 = hVar.f16915m;
        }
        float f15 = qVar.f17109j;
        float f16 = qVar.f17111l;
        float f17 = qVar.f17110k;
        float f18 = qVar.f17112m;
        float f19 = (qVar2.f17109j + (qVar2.f17111l / 2.0f)) - ((f16 / 2.0f) + f15);
        float f20 = (qVar2.f17110k + (qVar2.f17112m / 2.0f)) - ((f18 / 2.0f) + f17);
        float f21 = f19 * f10;
        float f22 = (f13 * f11) / 2.0f;
        this.f17109j = (int) ((f15 + f21) - f22);
        float f23 = f10 * f20;
        float f24 = (f14 * f12) / 2.0f;
        this.f17110k = (int) ((f17 + f23) - f24);
        this.f17111l = (int) (f16 + r7);
        this.f17112m = (int) (f18 + r8);
        float f25 = Float.isNaN(hVar.f16916n) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : hVar.f16916n;
        this.f17120u = 1;
        float f26 = (int) ((qVar.f17109j + f21) - f22);
        this.f17109j = f26;
        float f27 = (int) ((qVar.f17110k + f23) - f24);
        this.f17110k = f27;
        this.f17109j = f26 + ((-f20) * f25);
        this.f17110k = f27 + (f19 * f25);
        this.f17116q = this.f17116q;
        this.f17105f = u.c.c(hVar.f16910h);
        this.f17115p = hVar.f16911i;
    }

    public void m(int i10, int i11, h hVar, q qVar, q qVar2) {
        float min;
        float f10;
        float f11 = hVar.f16864a / 100.0f;
        this.f17107h = f11;
        this.f17106g = hVar.f16912j;
        this.f17120u = hVar.f16919q;
        float f12 = Float.isNaN(hVar.f16913k) ? f11 : hVar.f16913k;
        float f13 = Float.isNaN(hVar.f16914l) ? f11 : hVar.f16914l;
        float f14 = qVar2.f17111l;
        float f15 = qVar.f17111l;
        float f16 = qVar2.f17112m;
        float f17 = qVar.f17112m;
        this.f17108i = this.f17107h;
        this.f17111l = (int) (f15 + ((f14 - f15) * f12));
        this.f17112m = (int) (f17 + ((f16 - f17) * f13));
        int i12 = hVar.f16919q;
        if (i12 == 1) {
            float f18 = Float.isNaN(hVar.f16915m) ? f11 : hVar.f16915m;
            float f19 = qVar2.f17109j;
            float f20 = qVar.f17109j;
            this.f17109j = (f18 * (f19 - f20)) + f20;
            if (!Float.isNaN(hVar.f16916n)) {
                f11 = hVar.f16916n;
            }
            float f21 = qVar2.f17110k;
            float f22 = qVar.f17110k;
            this.f17110k = (f11 * (f21 - f22)) + f22;
        } else if (i12 != 2) {
            float f23 = Float.isNaN(hVar.f16915m) ? f11 : hVar.f16915m;
            float f24 = qVar2.f17109j;
            float f25 = qVar.f17109j;
            this.f17109j = (f23 * (f24 - f25)) + f25;
            if (!Float.isNaN(hVar.f16916n)) {
                f11 = hVar.f16916n;
            }
            float f26 = qVar2.f17110k;
            float f27 = qVar.f17110k;
            this.f17110k = (f11 * (f26 - f27)) + f27;
        } else {
            if (Float.isNaN(hVar.f16915m)) {
                float f28 = qVar2.f17109j;
                float f29 = qVar.f17109j;
                min = ((f28 - f29) * f11) + f29;
            } else {
                min = Math.min(f13, f12) * hVar.f16915m;
            }
            this.f17109j = min;
            if (Float.isNaN(hVar.f16916n)) {
                float f30 = qVar2.f17110k;
                float f31 = qVar.f17110k;
                f10 = (f11 * (f30 - f31)) + f31;
            } else {
                f10 = hVar.f16916n;
            }
            this.f17110k = f10;
        }
        this.f17116q = qVar.f17116q;
        this.f17105f = u.c.c(hVar.f16910h);
        this.f17115p = hVar.f16911i;
    }

    public void n(int i10, int i11, h hVar, q qVar, q qVar2) {
        float f10 = hVar.f16864a / 100.0f;
        this.f17107h = f10;
        this.f17106g = hVar.f16912j;
        float f11 = Float.isNaN(hVar.f16913k) ? f10 : hVar.f16913k;
        float f12 = Float.isNaN(hVar.f16914l) ? f10 : hVar.f16914l;
        float f13 = qVar2.f17111l;
        float f14 = qVar.f17111l;
        float f15 = qVar2.f17112m;
        float f16 = qVar.f17112m;
        this.f17108i = this.f17107h;
        float f17 = qVar.f17109j;
        float f18 = qVar.f17110k;
        float f19 = qVar2.f17109j + (f13 / 2.0f);
        float f20 = qVar2.f17110k + (f15 / 2.0f);
        float f21 = (f13 - f14) * f11;
        this.f17109j = (int) ((f17 + ((f19 - ((f14 / 2.0f) + f17)) * f10)) - (f21 / 2.0f));
        float f22 = (f15 - f16) * f12;
        this.f17110k = (int) ((f18 + ((f20 - (f18 + (f16 / 2.0f))) * f10)) - (f22 / 2.0f));
        this.f17111l = (int) (f14 + f21);
        this.f17112m = (int) (f16 + f22);
        this.f17120u = 2;
        if (!Float.isNaN(hVar.f16915m)) {
            this.f17109j = (int) (hVar.f16915m * ((int) (i10 - this.f17111l)));
        }
        if (!Float.isNaN(hVar.f16916n)) {
            this.f17110k = (int) (hVar.f16916n * ((int) (i11 - this.f17112m)));
        }
        this.f17116q = this.f17116q;
        this.f17105f = u.c.c(hVar.f16910h);
        this.f17115p = hVar.f16911i;
    }

    public void o(float f10, float f11, float f12, float f13) {
        this.f17109j = f10;
        this.f17110k = f11;
        this.f17111l = f12;
        this.f17112m = f13;
    }

    public void p(float f10, float f11, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f16 = (float) dArr[i10];
            double d10 = dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f12 = f16;
            } else if (i11 == 2) {
                f14 = f16;
            } else if (i11 == 3) {
                f13 = f16;
            } else if (i11 == 4) {
                f15 = f16;
            }
        }
        float f17 = f12 - ((StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD * f13) / 2.0f);
        float f18 = f14 - ((StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD * f15) / 2.0f);
        fArr[0] = (f17 * (1.0f - f10)) + (((f13 * 1.0f) + f17) * f10) + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        fArr[1] = (f18 * (1.0f - f11)) + (((f15 * 1.0f) + f18) * f11) + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void q(float f10, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f11;
        boolean z10;
        float f12;
        float f13 = this.f17109j;
        float f14 = this.f17110k;
        float f15 = this.f17111l;
        float f16 = this.f17112m;
        if (iArr.length != 0 && this.f17121v.length <= iArr[iArr.length - 1]) {
            int i10 = iArr[iArr.length - 1] + 1;
            this.f17121v = new double[i10];
            this.f17122w = new double[i10];
        }
        Arrays.fill(this.f17121v, Double.NaN);
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.f17121v[iArr[i11]] = dArr[i11];
            this.f17122w[iArr[i11]] = dArr2[i11];
        }
        float f17 = Float.NaN;
        int i12 = 0;
        float f18 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f19 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f20 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f21 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (true) {
            double[] dArr4 = this.f17121v;
            if (i12 >= dArr4.length) {
                break;
            }
            boolean isNaN = Double.isNaN(dArr4[i12]);
            double d10 = ShadowDrawableWrapper.COS_45;
            if (isNaN && (dArr3 == null || dArr3[i12] == ShadowDrawableWrapper.COS_45)) {
                f12 = f17;
            } else {
                if (dArr3 != null) {
                    d10 = dArr3[i12];
                }
                if (!Double.isNaN(this.f17121v[i12])) {
                    d10 = this.f17121v[i12] + d10;
                }
                f12 = f17;
                float f22 = (float) d10;
                float f23 = (float) this.f17122w[i12];
                if (i12 == 1) {
                    f17 = f12;
                    f18 = f23;
                    f13 = f22;
                } else if (i12 == 2) {
                    f17 = f12;
                    f19 = f23;
                    f14 = f22;
                } else if (i12 == 3) {
                    f17 = f12;
                    f20 = f23;
                    f15 = f22;
                } else if (i12 == 4) {
                    f17 = f12;
                    f21 = f23;
                    f16 = f22;
                } else if (i12 == 5) {
                    f17 = f22;
                }
                i12++;
            }
            f17 = f12;
            i12++;
        }
        float f24 = f17;
        m mVar = this.f17118s;
        if (mVar != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            mVar.h(f10, fArr, fArr2);
            float f25 = fArr[0];
            float f26 = fArr[1];
            float f27 = fArr2[0];
            float f28 = fArr2[1];
            double d11 = f25;
            double d12 = f13;
            double d13 = f14;
            double sin = Math.sin(d13);
            Double.isNaN(d12);
            Double.isNaN(d11);
            double d14 = f15 / 2.0f;
            Double.isNaN(d14);
            float f29 = (float) ((d11 + (sin * d12)) - d14);
            double d15 = f26;
            double cos = Math.cos(d13);
            Double.isNaN(d12);
            Double.isNaN(d15);
            double d16 = d15 - (cos * d12);
            f11 = f16;
            double d17 = f16 / 2.0f;
            Double.isNaN(d17);
            float f30 = (float) (d16 - d17);
            double d18 = f27;
            double d19 = f18;
            double sin2 = Math.sin(d13);
            Double.isNaN(d19);
            Double.isNaN(d18);
            double d20 = d18 + (sin2 * d19);
            double cos2 = Math.cos(d13);
            Double.isNaN(d12);
            double d21 = f19;
            Double.isNaN(d21);
            float f31 = (float) (d20 + (cos2 * d12 * d21));
            double d22 = f28;
            double cos3 = Math.cos(d13);
            Double.isNaN(d19);
            Double.isNaN(d22);
            double sin3 = Math.sin(d13);
            Double.isNaN(d12);
            Double.isNaN(d21);
            float f32 = (float) ((d22 - (d19 * cos3)) + (d12 * sin3 * d21));
            if (dArr2.length >= 2) {
                z10 = false;
                dArr2[0] = f31;
                dArr2[1] = f32;
            } else {
                z10 = false;
            }
            if (!Float.isNaN(f24)) {
                double d23 = f24;
                double degrees = Math.toDegrees(Math.atan2(f32, f31));
                Double.isNaN(d23);
                view.setRotation((float) (d23 + degrees));
            }
            f13 = f29;
            f14 = f30;
        } else {
            f11 = f16;
            z10 = false;
            if (!Float.isNaN(f24)) {
                double d24 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                double d25 = f24;
                double degrees2 = Math.toDegrees(Math.atan2(f19 + (f21 / 2.0f), f18 + (f20 / 2.0f)));
                Double.isNaN(d25);
                Double.isNaN(d24);
                view.setRotation((float) (d24 + d25 + degrees2));
            }
        }
        if (view instanceof c) {
            ((c) view).a(f13, f14, f15 + f13, f14 + f11);
            return;
        }
        float f33 = f13 + 0.5f;
        int i13 = (int) f33;
        float f34 = f14 + 0.5f;
        int i14 = (int) f34;
        int i15 = (int) (f33 + f15);
        int i16 = (int) (f34 + f11);
        int i17 = i15 - i13;
        int i18 = i16 - i14;
        if (i17 != view.getMeasuredWidth() || i18 != view.getMeasuredHeight()) {
            z10 = true;
        }
        if (z10) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i17, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(i18, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
        }
        view.layout(i13, i14, i15, i16);
    }

    public q(int i10, int i11, h hVar, q qVar, q qVar2) {
        int i12 = d.f16863f;
        this.f17115p = i12;
        this.f17116q = i12;
        this.f17117r = Float.NaN;
        this.f17118s = null;
        this.f17119t = new LinkedHashMap<>();
        this.f17120u = 0;
        this.f17121v = new double[18];
        this.f17122w = new double[18];
        if (qVar.f17116q != d.f16863f) {
            m(i10, i11, hVar, qVar, qVar2);
            return;
        }
        int i13 = hVar.f16919q;
        if (i13 == 1) {
            l(hVar, qVar, qVar2);
        } else if (i13 != 2) {
            k(hVar, qVar, qVar2);
        } else {
            n(i10, i11, hVar, qVar, qVar2);
        }
    }
}

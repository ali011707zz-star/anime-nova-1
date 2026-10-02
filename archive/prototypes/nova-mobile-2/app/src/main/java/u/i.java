package u;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.Arrays;

/* compiled from: Oscillator.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: c, reason: collision with root package name */
    public double[] f14251c;

    /* renamed from: d, reason: collision with root package name */
    public String f14252d;

    /* renamed from: e, reason: collision with root package name */
    public h f14253e;

    /* renamed from: f, reason: collision with root package name */
    public int f14254f;

    /* renamed from: a, reason: collision with root package name */
    public float[] f14249a = new float[0];

    /* renamed from: b, reason: collision with root package name */
    public double[] f14250b = new double[0];

    /* renamed from: g, reason: collision with root package name */
    public double f14255g = 6.283185307179586d;

    /* renamed from: h, reason: collision with root package name */
    public boolean f14256h = false;

    public void a(double d10, float f10) {
        int length = this.f14249a.length + 1;
        int binarySearch = Arrays.binarySearch(this.f14250b, d10);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        this.f14250b = Arrays.copyOf(this.f14250b, length);
        this.f14249a = Arrays.copyOf(this.f14249a, length);
        this.f14251c = new double[length];
        double[] dArr = this.f14250b;
        System.arraycopy(dArr, binarySearch, dArr, binarySearch + 1, (length - binarySearch) - 1);
        this.f14250b[binarySearch] = d10;
        this.f14249a[binarySearch] = f10;
        this.f14256h = false;
    }

    public double b(double d10) {
        if (d10 < ShadowDrawableWrapper.COS_45) {
            d10 = 0.0d;
        } else if (d10 > 1.0d) {
            d10 = 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.f14250b, d10);
        if (binarySearch > 0) {
            return 1.0d;
        }
        if (binarySearch == 0) {
            return ShadowDrawableWrapper.COS_45;
        }
        int i10 = (-binarySearch) - 1;
        float[] fArr = this.f14249a;
        int i11 = i10 - 1;
        double d11 = fArr[i10] - fArr[i11];
        double[] dArr = this.f14250b;
        double d12 = dArr[i10] - dArr[i11];
        Double.isNaN(d11);
        double d13 = d11 / d12;
        double d14 = this.f14251c[i11];
        double d15 = fArr[i11];
        double d16 = dArr[i11] * d13;
        Double.isNaN(d15);
        return d14 + ((d15 - d16) * (d10 - dArr[i11])) + ((d13 * ((d10 * d10) - (dArr[i11] * dArr[i11]))) / 2.0d);
    }

    public double c(double d10, double d11) {
        double abs;
        double b10 = b(d10) + d11;
        switch (this.f14254f) {
            case 1:
                return Math.signum(0.5d - (b10 % 1.0d));
            case 2:
                abs = Math.abs((((b10 * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((b10 * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((b10 * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f14255g * (d11 + b10));
            case 6:
                double abs2 = 1.0d - Math.abs(((b10 * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            case 7:
                return this.f14253e.c(b10 % 1.0d, 0);
            default:
                return Math.sin(this.f14255g * b10);
        }
        return 1.0d - abs;
    }

    public void d() {
        double d10 = 0.0d;
        int i10 = 0;
        while (true) {
            float[] fArr = this.f14249a;
            if (i10 >= fArr.length) {
                break;
            }
            double d11 = fArr[i10];
            Double.isNaN(d11);
            d10 += d11;
            i10++;
        }
        double d12 = 0.0d;
        int i11 = 1;
        while (true) {
            float[] fArr2 = this.f14249a;
            if (i11 >= fArr2.length) {
                break;
            }
            int i12 = i11 - 1;
            float f10 = (fArr2[i12] + fArr2[i11]) / 2.0f;
            double[] dArr = this.f14250b;
            double d13 = dArr[i11] - dArr[i12];
            double d14 = f10;
            Double.isNaN(d14);
            d12 += d13 * d14;
            i11++;
        }
        int i13 = 0;
        while (true) {
            float[] fArr3 = this.f14249a;
            if (i13 >= fArr3.length) {
                break;
            }
            double d15 = fArr3[i13];
            Double.isNaN(d15);
            fArr3[i13] = (float) (d15 * (d10 / d12));
            i13++;
        }
        this.f14251c[0] = 0.0d;
        int i14 = 1;
        while (true) {
            float[] fArr4 = this.f14249a;
            if (i14 < fArr4.length) {
                int i15 = i14 - 1;
                float f11 = (fArr4[i15] + fArr4[i14]) / 2.0f;
                double[] dArr2 = this.f14250b;
                double d16 = dArr2[i14] - dArr2[i15];
                double[] dArr3 = this.f14251c;
                double d17 = dArr3[i15];
                double d18 = f11;
                Double.isNaN(d18);
                dArr3[i14] = d17 + (d16 * d18);
                i14++;
            } else {
                this.f14256h = true;
                return;
            }
        }
    }

    public void e(int i10, String str) {
        this.f14254f = i10;
        this.f14252d = str;
        if (str != null) {
            this.f14253e = h.h(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.f14250b) + " period=" + Arrays.toString(this.f14249a);
    }
}

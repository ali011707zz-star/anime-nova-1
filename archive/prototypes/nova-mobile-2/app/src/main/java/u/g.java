package u;

import com.google.android.material.shadow.ShadowDrawableWrapper;

/* compiled from: LinearCurveFit.java */
/* loaded from: classes.dex */
public class g extends b {

    /* renamed from: a, reason: collision with root package name */
    public double[] f14239a;

    /* renamed from: b, reason: collision with root package name */
    public double[][] f14240b;

    /* renamed from: c, reason: collision with root package name */
    public double f14241c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14242d = true;

    /* renamed from: e, reason: collision with root package name */
    public double[] f14243e;

    public g(double[] dArr, double[][] dArr2) {
        this.f14241c = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f14243e = new double[length2];
        this.f14239a = dArr;
        this.f14240b = dArr2;
        if (length2 > 2) {
            double d10 = 0.0d;
            double d11 = 0.0d;
            int i10 = 0;
            while (i10 < dArr.length) {
                double d12 = dArr2[i10][0];
                double d13 = dArr2[i10][0];
                if (i10 > 0) {
                    Math.hypot(d12 - d10, d13 - d11);
                }
                i10++;
                d10 = d12;
                d11 = d13;
            }
            this.f14241c = ShadowDrawableWrapper.COS_45;
        }
    }

    @Override // u.b
    public double c(double d10, int i10) {
        double[] dArr = this.f14239a;
        int length = dArr.length;
        int i11 = 0;
        if (this.f14242d) {
            if (d10 <= dArr[0]) {
                return this.f14240b[0][i10] + ((d10 - dArr[0]) * h(dArr[0], i10));
            }
            int i12 = length - 1;
            if (d10 >= dArr[i12]) {
                return this.f14240b[i12][i10] + ((d10 - dArr[i12]) * h(dArr[i12], i10));
            }
        } else {
            if (d10 <= dArr[0]) {
                return this.f14240b[0][i10];
            }
            int i13 = length - 1;
            if (d10 >= dArr[i13]) {
                return this.f14240b[i13][i10];
            }
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.f14239a;
            if (d10 == dArr2[i11]) {
                return this.f14240b[i11][i10];
            }
            int i14 = i11 + 1;
            if (d10 < dArr2[i14]) {
                double d11 = (d10 - dArr2[i11]) / (dArr2[i14] - dArr2[i11]);
                double[][] dArr3 = this.f14240b;
                return (dArr3[i11][i10] * (1.0d - d11)) + (dArr3[i14][i10] * d11);
            }
            i11 = i14;
        }
        return ShadowDrawableWrapper.COS_45;
    }

    @Override // u.b
    public void d(double d10, double[] dArr) {
        double[] dArr2 = this.f14239a;
        int length = dArr2.length;
        int i10 = 0;
        int length2 = this.f14240b[0].length;
        if (this.f14242d) {
            if (d10 <= dArr2[0]) {
                f(dArr2[0], this.f14243e);
                for (int i11 = 0; i11 < length2; i11++) {
                    dArr[i11] = this.f14240b[0][i11] + ((d10 - this.f14239a[0]) * this.f14243e[i11]);
                }
                return;
            }
            int i12 = length - 1;
            if (d10 >= dArr2[i12]) {
                f(dArr2[i12], this.f14243e);
                while (i10 < length2) {
                    dArr[i10] = this.f14240b[i12][i10] + ((d10 - this.f14239a[i12]) * this.f14243e[i10]);
                    i10++;
                }
                return;
            }
        } else {
            if (d10 <= dArr2[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    dArr[i13] = this.f14240b[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d10 >= dArr2[i14]) {
                while (i10 < length2) {
                    dArr[i10] = this.f14240b[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d10 == this.f14239a[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    dArr[i16] = this.f14240b[i15][i16];
                }
            }
            double[] dArr3 = this.f14239a;
            int i17 = i15 + 1;
            if (d10 < dArr3[i17]) {
                double d11 = (d10 - dArr3[i15]) / (dArr3[i17] - dArr3[i15]);
                while (i10 < length2) {
                    double[][] dArr4 = this.f14240b;
                    dArr[i10] = (dArr4[i15][i10] * (1.0d - d11)) + (dArr4[i17][i10] * d11);
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    @Override // u.b
    public void e(double d10, float[] fArr) {
        double[] dArr = this.f14239a;
        int length = dArr.length;
        int i10 = 0;
        int length2 = this.f14240b[0].length;
        if (this.f14242d) {
            if (d10 <= dArr[0]) {
                f(dArr[0], this.f14243e);
                for (int i11 = 0; i11 < length2; i11++) {
                    fArr[i11] = (float) (this.f14240b[0][i11] + ((d10 - this.f14239a[0]) * this.f14243e[i11]));
                }
                return;
            }
            int i12 = length - 1;
            if (d10 >= dArr[i12]) {
                f(dArr[i12], this.f14243e);
                while (i10 < length2) {
                    fArr[i10] = (float) (this.f14240b[i12][i10] + ((d10 - this.f14239a[i12]) * this.f14243e[i10]));
                    i10++;
                }
                return;
            }
        } else {
            if (d10 <= dArr[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    fArr[i13] = (float) this.f14240b[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d10 >= dArr[i14]) {
                while (i10 < length2) {
                    fArr[i10] = (float) this.f14240b[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d10 == this.f14239a[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    fArr[i16] = (float) this.f14240b[i15][i16];
                }
            }
            double[] dArr2 = this.f14239a;
            int i17 = i15 + 1;
            if (d10 < dArr2[i17]) {
                double d11 = (d10 - dArr2[i15]) / (dArr2[i17] - dArr2[i15]);
                while (i10 < length2) {
                    double[][] dArr3 = this.f14240b;
                    fArr[i10] = (float) ((dArr3[i15][i10] * (1.0d - d11)) + (dArr3[i17][i10] * d11));
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    @Override // u.b
    public void f(double d10, double[] dArr) {
        double[] dArr2 = this.f14239a;
        int length = dArr2.length;
        int length2 = this.f14240b[0].length;
        if (d10 <= dArr2[0]) {
            d10 = dArr2[0];
        } else {
            int i10 = length - 1;
            if (d10 >= dArr2[i10]) {
                d10 = dArr2[i10];
            }
        }
        int i11 = 0;
        while (i11 < length - 1) {
            double[] dArr3 = this.f14239a;
            int i12 = i11 + 1;
            if (d10 <= dArr3[i12]) {
                double d11 = dArr3[i12] - dArr3[i11];
                double d12 = dArr3[i11];
                for (int i13 = 0; i13 < length2; i13++) {
                    double[][] dArr4 = this.f14240b;
                    dArr[i13] = (dArr4[i12][i13] - dArr4[i11][i13]) / d11;
                }
                return;
            }
            i11 = i12;
        }
    }

    @Override // u.b
    public double[] g() {
        return this.f14239a;
    }

    public double h(double d10, int i10) {
        double[] dArr = this.f14239a;
        int length = dArr.length;
        int i11 = 0;
        if (d10 < dArr[0]) {
            d10 = dArr[0];
        } else {
            int i12 = length - 1;
            if (d10 >= dArr[i12]) {
                d10 = dArr[i12];
            }
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.f14239a;
            int i13 = i11 + 1;
            if (d10 <= dArr2[i13]) {
                double d11 = dArr2[i13] - dArr2[i11];
                double d12 = dArr2[i11];
                double[][] dArr3 = this.f14240b;
                return (dArr3[i13][i10] - dArr3[i11][i10]) / d11;
            }
            i11 = i13;
        }
        return ShadowDrawableWrapper.COS_45;
    }
}

package u;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;

/* compiled from: SplineSet.java */
/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public b f14259a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f14260b = new int[10];

    /* renamed from: c, reason: collision with root package name */
    public float[] f14261c = new float[10];

    /* renamed from: d, reason: collision with root package name */
    public int f14262d;

    /* renamed from: e, reason: collision with root package name */
    public String f14263e;

    /* compiled from: SplineSet.java */
    /* loaded from: classes.dex */
    public static class a {
        public static void a(int[] iArr, float[] fArr, int i10, int i11) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i11;
            iArr2[1] = i10;
            int i12 = 2;
            while (i12 > 0) {
                int i13 = i12 - 1;
                int i14 = iArr2[i13];
                i12 = i13 - 1;
                int i15 = iArr2[i12];
                if (i14 < i15) {
                    int b10 = b(iArr, fArr, i14, i15);
                    int i16 = i12 + 1;
                    iArr2[i12] = b10 - 1;
                    int i17 = i16 + 1;
                    iArr2[i16] = i14;
                    int i18 = i17 + 1;
                    iArr2[i17] = i15;
                    i12 = i18 + 1;
                    iArr2[i18] = b10 + 1;
                }
            }
        }

        public static int b(int[] iArr, float[] fArr, int i10, int i11) {
            int i12 = iArr[i11];
            int i13 = i10;
            while (i10 < i11) {
                if (iArr[i10] <= i12) {
                    c(iArr, fArr, i13, i10);
                    i13++;
                }
                i10++;
            }
            c(iArr, fArr, i13, i11);
            return i13;
        }

        public static void c(int[] iArr, float[] fArr, int i10, int i11) {
            int i12 = iArr[i10];
            iArr[i10] = iArr[i11];
            iArr[i11] = i12;
            float f10 = fArr[i10];
            fArr[i10] = fArr[i11];
            fArr[i11] = f10;
        }
    }

    public float a(float f10) {
        return (float) this.f14259a.c(f10, 0);
    }

    public void b(int i10, float f10) {
        int[] iArr = this.f14260b;
        if (iArr.length < this.f14262d + 1) {
            this.f14260b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f14261c;
            this.f14261c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f14260b;
        int i11 = this.f14262d;
        iArr2[i11] = i10;
        this.f14261c[i11] = f10;
        this.f14262d = i11 + 1;
    }

    public void c(String str) {
        this.f14263e = str;
    }

    public void d(int i10) {
        int i11;
        int i12 = this.f14262d;
        if (i12 == 0) {
            return;
        }
        a.a(this.f14260b, this.f14261c, 0, i12 - 1);
        int i13 = 1;
        for (int i14 = 1; i14 < this.f14262d; i14++) {
            int[] iArr = this.f14260b;
            if (iArr[i14 - 1] != iArr[i14]) {
                i13++;
            }
        }
        double[] dArr = new double[i13];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, i13, 1);
        int i15 = 0;
        while (i11 < this.f14262d) {
            if (i11 > 0) {
                int[] iArr2 = this.f14260b;
                i11 = iArr2[i11] == iArr2[i11 + (-1)] ? i11 + 1 : 0;
            }
            double d10 = this.f14260b[i11];
            Double.isNaN(d10);
            dArr[i15] = d10 * 0.01d;
            dArr2[i15][0] = this.f14261c[i11];
            i15++;
        }
        this.f14259a = b.a(i10, dArr, dArr2);
    }

    public String toString() {
        String str = this.f14263e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i10 = 0; i10 < this.f14262d; i10++) {
            str = str + "[" + this.f14260b[i10] + " , " + decimalFormat.format(this.f14261c[i10]) + "] ";
        }
        return str;
    }
}

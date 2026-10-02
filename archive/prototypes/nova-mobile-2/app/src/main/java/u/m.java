package u;

import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* compiled from: TimeCycleSplineSet.java */
/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: k, reason: collision with root package name */
    public static float f14265k = 6.2831855f;

    /* renamed from: a, reason: collision with root package name */
    public b f14266a;

    /* renamed from: e, reason: collision with root package name */
    public int f14270e;

    /* renamed from: f, reason: collision with root package name */
    public String f14271f;

    /* renamed from: i, reason: collision with root package name */
    public long f14274i;

    /* renamed from: b, reason: collision with root package name */
    public int f14267b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int[] f14268c = new int[10];

    /* renamed from: d, reason: collision with root package name */
    public float[][] f14269d = (float[][]) Array.newInstance((Class<?>) float.class, 10, 3);

    /* renamed from: g, reason: collision with root package name */
    public float[] f14272g = new float[3];

    /* renamed from: h, reason: collision with root package name */
    public boolean f14273h = false;

    /* renamed from: j, reason: collision with root package name */
    public float f14275j = Float.NaN;

    /* compiled from: TimeCycleSplineSet.java */
    /* loaded from: classes.dex */
    public static class a {
        public static void a(int[] iArr, float[][] fArr, int i10, int i11) {
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

        public static int b(int[] iArr, float[][] fArr, int i10, int i11) {
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

        public static void c(int[] iArr, float[][] fArr, int i10, int i11) {
            int i12 = iArr[i10];
            iArr[i10] = iArr[i11];
            iArr[i11] = i12;
            float[] fArr2 = fArr[i10];
            fArr[i10] = fArr[i11];
            fArr[i11] = fArr2;
        }
    }

    public float a(float f10) {
        float abs;
        switch (this.f14267b) {
            case 1:
                return Math.signum(f10 * f14265k);
            case 2:
                abs = Math.abs(f10);
                break;
            case 3:
                return (((f10 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f10 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f10 * f14265k);
            case 6:
                float abs2 = 1.0f - Math.abs(((f10 * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f10 * f14265k);
        }
        return 1.0f - abs;
    }

    public void b(int i10, float f10, float f11, int i11, float f12) {
        int[] iArr = this.f14268c;
        int i12 = this.f14270e;
        iArr[i12] = i10;
        float[][] fArr = this.f14269d;
        fArr[i12][0] = f10;
        fArr[i12][1] = f11;
        fArr[i12][2] = f12;
        this.f14267b = Math.max(this.f14267b, i11);
        this.f14270e++;
    }

    public void c(long j10) {
        this.f14274i = j10;
    }

    public void d(String str) {
        this.f14271f = str;
    }

    public void e(int i10) {
        int i11;
        int i12 = this.f14270e;
        if (i12 == 0) {
            System.err.println("Error no points added to " + this.f14271f);
            return;
        }
        a.a(this.f14268c, this.f14269d, 0, i12 - 1);
        int i13 = 1;
        int i14 = 0;
        while (true) {
            int[] iArr = this.f14268c;
            if (i13 >= iArr.length) {
                break;
            }
            if (iArr[i13] != iArr[i13 - 1]) {
                i14++;
            }
            i13++;
        }
        if (i14 == 0) {
            i14 = 1;
        }
        double[] dArr = new double[i14];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, i14, 3);
        int i15 = 0;
        while (i11 < this.f14270e) {
            if (i11 > 0) {
                int[] iArr2 = this.f14268c;
                i11 = iArr2[i11] == iArr2[i11 + (-1)] ? i11 + 1 : 0;
            }
            double d10 = this.f14268c[i11];
            Double.isNaN(d10);
            dArr[i15] = d10 * 0.01d;
            double[] dArr3 = dArr2[i15];
            float[][] fArr = this.f14269d;
            dArr3[0] = fArr[i11][0];
            dArr2[i15][1] = fArr[i11][1];
            dArr2[i15][2] = fArr[i11][2];
            i15++;
        }
        this.f14266a = b.a(i10, dArr, dArr2);
    }

    public String toString() {
        String str = this.f14271f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i10 = 0; i10 < this.f14270e; i10++) {
            str = str + "[" + this.f14268c[i10] + " , " + decimalFormat.format(this.f14269d[i10]) + "] ";
        }
        return str;
    }
}

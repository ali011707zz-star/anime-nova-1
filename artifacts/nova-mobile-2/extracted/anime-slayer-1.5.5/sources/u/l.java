package u;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.lang.reflect.Array;
import java.util.Arrays;

/* compiled from: StepCurve.java */
/* loaded from: classes.dex */
public class l extends c {

    /* renamed from: d, reason: collision with root package name */
    public h f14264d;

    public l(String str) {
        this.f14202a = str;
        double[] dArr = new double[str.length() / 2];
        int indexOf = str.indexOf(40) + 1;
        int indexOf2 = str.indexOf(44, indexOf);
        int i10 = 0;
        while (indexOf2 != -1) {
            dArr[i10] = Double.parseDouble(str.substring(indexOf, indexOf2).trim());
            indexOf = indexOf2 + 1;
            indexOf2 = str.indexOf(44, indexOf);
            i10++;
        }
        dArr[i10] = Double.parseDouble(str.substring(indexOf, str.indexOf(41, indexOf)).trim());
        this.f14264d = d(Arrays.copyOf(dArr, i10 + 1));
    }

    public static h d(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d10 = length2;
        Double.isNaN(d10);
        double d11 = 1.0d / d10;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, length, 1);
        double[] dArr3 = new double[length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double d12 = dArr[i10];
            int i11 = i10 + length2;
            dArr2[i11][0] = d12;
            double d13 = i10;
            Double.isNaN(d13);
            double d14 = d13 * d11;
            dArr3[i11] = d14;
            if (i10 > 0) {
                int i12 = (length2 * 2) + i10;
                dArr2[i12][0] = d12 + 1.0d;
                dArr3[i12] = d14 + 1.0d;
                int i13 = i10 - 1;
                dArr2[i13][0] = (d12 - 1.0d) - d11;
                dArr3[i13] = (d14 - 1.0d) - d11;
            }
        }
        h hVar = new h(dArr3, dArr2);
        System.out.println(" 0 " + hVar.c(ShadowDrawableWrapper.COS_45, 0));
        System.out.println(" 1 " + hVar.c(1.0d, 0));
        return hVar;
    }

    @Override // u.c
    public double a(double d10) {
        return this.f14264d.c(d10, 0);
    }

    @Override // u.c
    public double b(double d10) {
        return this.f14264d.k(d10, 0);
    }
}

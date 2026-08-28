package o3;

import android.graphics.Color;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p3.c;

/* compiled from: GradientColorParser.java */
/* loaded from: classes.dex */
public class o implements m0<l3.d> {

    /* renamed from: a, reason: collision with root package name */
    public int f11717a;

    public o(int i10) {
        this.f11717a = i10;
    }

    public final void b(l3.d dVar, List<Float> list) {
        int i10 = this.f11717a * 4;
        if (list.size() <= i10) {
            return;
        }
        int size = (list.size() - i10) / 2;
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i11 = 0;
        while (i10 < list.size()) {
            if (i10 % 2 == 0) {
                dArr[i11] = list.get(i10).floatValue();
            } else {
                dArr2[i11] = list.get(i10).floatValue();
                i11++;
            }
            i10++;
        }
        for (int i12 = 0; i12 < dVar.c(); i12++) {
            int i13 = dVar.a()[i12];
            dVar.a()[i12] = Color.argb(c(dVar.b()[i12], dArr, dArr2), Color.red(i13), Color.green(i13), Color.blue(i13));
        }
    }

    public final int c(double d10, double[] dArr, double[] dArr2) {
        double d11;
        int i10 = 1;
        while (true) {
            if (i10 < dArr.length) {
                int i11 = i10 - 1;
                double d12 = dArr[i11];
                double d13 = dArr[i10];
                if (dArr[i10] >= d10) {
                    d11 = q3.g.j(dArr2[i11], dArr2[i10], q3.g.b((d10 - d12) / (d13 - d12), ShadowDrawableWrapper.COS_45, 1.0d));
                    break;
                }
                i10++;
            } else {
                d11 = dArr2[dArr2.length - 1];
                break;
            }
        }
        return (int) (d11 * 255.0d);
    }

    @Override // o3.m0
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public l3.d a(p3.c cVar, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z10 = cVar.V() == c.b.BEGIN_ARRAY;
        if (z10) {
            cVar.d();
        }
        while (cVar.z()) {
            arrayList.add(Float.valueOf((float) cVar.G()));
        }
        if (z10) {
            cVar.k();
        }
        if (this.f11717a == -1) {
            this.f11717a = arrayList.size() / 4;
        }
        int i10 = this.f11717a;
        float[] fArr = new float[i10];
        int[] iArr = new int[i10];
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f11717a * 4; i13++) {
            int i14 = i13 / 4;
            double floatValue = arrayList.get(i13).floatValue();
            int i15 = i13 % 4;
            if (i15 == 0) {
                if (i14 > 0) {
                    float f11 = (float) floatValue;
                    if (fArr[i14 - 1] >= f11) {
                        fArr[i14] = f11 + 0.01f;
                    }
                }
                fArr[i14] = (float) floatValue;
            } else if (i15 == 1) {
                Double.isNaN(floatValue);
                i11 = (int) (floatValue * 255.0d);
            } else if (i15 == 2) {
                Double.isNaN(floatValue);
                i12 = (int) (floatValue * 255.0d);
            } else if (i15 == 3) {
                Double.isNaN(floatValue);
                iArr[i14] = Color.argb(BaseProgressIndicator.MAX_ALPHA, i11, i12, (int) (floatValue * 255.0d));
            }
        }
        l3.d dVar = new l3.d(fArr, iArr);
        b(dVar, arrayList);
        return dVar;
    }
}

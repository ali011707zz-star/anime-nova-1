package x1;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

/* compiled from: ViewUtilsApi21.java */
/* loaded from: classes.dex */
public class g0 extends f0 {

    /* renamed from: f, reason: collision with root package name */
    public static boolean f15745f = true;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f15746g = true;

    @Override // x1.k0
    @SuppressLint({"NewApi"})
    public void h(View view, Matrix matrix) {
        if (f15745f) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f15745f = false;
            }
        }
    }

    @Override // x1.k0
    @SuppressLint({"NewApi"})
    public void i(View view, Matrix matrix) {
        if (f15746g) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f15746g = false;
            }
        }
    }
}

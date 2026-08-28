package x1;

import android.graphics.Matrix;
import android.view.View;

/* compiled from: ViewUtilsApi29.java */
/* loaded from: classes.dex */
public class j0 extends i0 {
    @Override // x1.f0, x1.k0
    public float c(View view) {
        return view.getTransitionAlpha();
    }

    @Override // x1.h0, x1.k0
    public void e(View view, int i10, int i11, int i12, int i13) {
        view.setLeftTopRightBottom(i10, i11, i12, i13);
    }

    @Override // x1.f0, x1.k0
    public void f(View view, float f10) {
        view.setTransitionAlpha(f10);
    }

    @Override // x1.i0, x1.k0
    public void g(View view, int i10) {
        view.setTransitionVisibility(i10);
    }

    @Override // x1.g0, x1.k0
    public void h(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // x1.g0, x1.k0
    public void i(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}

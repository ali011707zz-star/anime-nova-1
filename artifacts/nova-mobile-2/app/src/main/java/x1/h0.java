package x1;

import android.annotation.SuppressLint;
import android.view.View;

/* compiled from: ViewUtilsApi22.java */
/* loaded from: classes.dex */
public class h0 extends g0 {

    /* renamed from: h, reason: collision with root package name */
    public static boolean f15753h = true;

    @Override // x1.k0
    @SuppressLint({"NewApi"})
    public void e(View view, int i10, int i11, int i12, int i13) {
        if (f15753h) {
            try {
                view.setLeftTopRightBottom(i10, i11, i12, i13);
            } catch (NoSuchMethodError unused) {
                f15753h = false;
            }
        }
    }
}

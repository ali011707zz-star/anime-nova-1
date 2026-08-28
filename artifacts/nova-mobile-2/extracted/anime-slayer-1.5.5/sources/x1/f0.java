package x1;

import android.annotation.SuppressLint;
import android.view.View;

/* compiled from: ViewUtilsApi19.java */
/* loaded from: classes.dex */
public class f0 extends k0 {

    /* renamed from: e, reason: collision with root package name */
    public static boolean f15744e = true;

    @Override // x1.k0
    public void a(View view) {
    }

    @Override // x1.k0
    @SuppressLint({"NewApi"})
    public float c(View view) {
        if (f15744e) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f15744e = false;
            }
        }
        return view.getAlpha();
    }

    @Override // x1.k0
    public void d(View view) {
    }

    @Override // x1.k0
    @SuppressLint({"NewApi"})
    public void f(View view, float f10) {
        if (f15744e) {
            try {
                view.setTransitionAlpha(f10);
                return;
            } catch (NoSuchMethodError unused) {
                f15744e = false;
            }
        }
        view.setAlpha(f10);
    }
}

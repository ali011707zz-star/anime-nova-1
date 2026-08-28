package x1;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;

/* compiled from: ViewGroupUtils.java */
/* loaded from: classes.dex */
public class z {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f15832a = true;

    public static y a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new x(viewGroup);
        }
        return w.c(viewGroup);
    }

    @SuppressLint({"NewApi"})
    public static void b(ViewGroup viewGroup, boolean z10) {
        if (f15832a) {
            try {
                viewGroup.suppressLayout(z10);
            } catch (NoSuchMethodError unused) {
                f15832a = false;
            }
        }
    }

    public static void c(ViewGroup viewGroup, boolean z10) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            viewGroup.suppressLayout(z10);
        } else if (i10 >= 18) {
            b(viewGroup, z10);
        } else {
            a0.b(viewGroup, z10);
        }
    }
}

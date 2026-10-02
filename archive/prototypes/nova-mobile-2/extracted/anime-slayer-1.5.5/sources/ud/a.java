package ud;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.View;

/* compiled from: Compat.java */
/* loaded from: classes2.dex */
public class a {
    public static int a(int i10) {
        if (Build.VERSION.SDK_INT >= 11) {
            return c(i10);
        }
        return b(i10);
    }

    @TargetApi(5)
    public static int b(int i10) {
        return (i10 & 65280) >> 8;
    }

    @TargetApi(11)
    public static int c(int i10) {
        return (i10 & 65280) >> 8;
    }

    public static void d(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            e(view, runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    @TargetApi(16)
    public static void e(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}

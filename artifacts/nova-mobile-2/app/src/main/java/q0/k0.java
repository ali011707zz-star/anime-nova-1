package q0;

import android.os.Build;
import android.view.View;
import android.view.Window;

/* compiled from: WindowCompat.java */
/* loaded from: classes.dex */
public final class k0 {

    /* compiled from: WindowCompat.java */
    /* loaded from: classes.dex */
    public static class a {
        public static void a(Window window, boolean z10) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z10 ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    /* compiled from: WindowCompat.java */
    /* loaded from: classes.dex */
    public static class b {
        public static void a(Window window, boolean z10) {
            window.setDecorFitsSystemWindows(z10);
        }
    }

    public static void a(Window window, boolean z10) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            b.a(window, z10);
        } else if (i10 >= 16) {
            a.a(window, z10);
        }
    }
}

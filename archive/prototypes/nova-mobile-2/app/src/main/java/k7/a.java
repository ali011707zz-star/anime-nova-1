package k7;

import android.app.Activity;
import android.os.Build;
import jc.l;

/* compiled from: ActivityExtensions.kt */
/* loaded from: classes.dex */
public final class a {
    public static final boolean a(Activity activity, String str, int i10) {
        l.f(activity, "<this>");
        l.f(str, "permission");
        if (Build.VERSION.SDK_INT < 23 || f0.a.a(activity, str) == 0) {
            return true;
        }
        e0.a.t(activity, new String[]{str}, i10);
        return false;
    }

    public static /* synthetic */ boolean b(Activity activity, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 1;
        }
        return a(activity, str, i10);
    }
}

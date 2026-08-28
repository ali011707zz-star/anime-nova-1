package q0;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* compiled from: PointerIconCompat.java */
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public Object f12411a;

    public y(Object obj) {
        this.f12411a = obj;
    }

    public static y b(Context context, int i10) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new y(PointerIcon.getSystemIcon(context, i10));
        }
        return new y(null);
    }

    public Object a() {
        return this.f12411a;
    }
}

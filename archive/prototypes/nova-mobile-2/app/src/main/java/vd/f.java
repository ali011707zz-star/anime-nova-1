package vd;

import android.content.Context;
import android.os.Build;

/* compiled from: VersionedGestureDetector.java */
/* loaded from: classes2.dex */
public final class f {
    public static d a(Context context, e eVar) {
        d cVar;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 5) {
            cVar = new a(context);
        } else if (i10 < 8) {
            cVar = new b(context);
        } else {
            cVar = new c(context);
        }
        cVar.b(eVar);
        return cVar;
    }
}

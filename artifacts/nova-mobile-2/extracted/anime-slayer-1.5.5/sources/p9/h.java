package p9;

import android.content.Context;
import android.os.Build;
import q9.v;

/* compiled from: SchedulingModule.java */
/* loaded from: classes.dex */
public abstract class h {
    public static v a(Context context, r9.c cVar, q9.g gVar, t9.a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new q9.e(context, cVar, gVar);
        }
        return new q9.a(context, cVar, aVar, gVar);
    }
}

package w4;

import android.os.Build;
import jc.l;

/* compiled from: User.kt */
/* loaded from: classes.dex */
public final class f {
    public static final boolean a(e eVar) {
        l.f(eVar, "<this>");
        return !l.a(eVar.o(), "none") && Build.VERSION.SDK_INT >= 21;
    }
}

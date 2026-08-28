package bd;

import jc.l;
import qc.u;

/* compiled from: Logcat.kt */
/* loaded from: classes2.dex */
public final class d {
    public static final String a(Object obj) {
        l.f(obj, "<this>");
        String name = obj.getClass().getName();
        l.e(name, "fullClassName");
        String l02 = u.l0(u.p0(name, '$', null, 2, null), '.', null, 2, null);
        return l02.length() == 0 ? name : u.Z(l02, "Kt");
    }
}

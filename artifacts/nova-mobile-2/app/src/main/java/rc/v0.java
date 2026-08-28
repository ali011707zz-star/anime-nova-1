package rc;

import vb.j;

/* compiled from: DebugStrings.kt */
/* loaded from: classes2.dex */
public final class v0 {
    public static final String a(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(ac.d<?> dVar) {
        Object a10;
        if (dVar instanceof wc.g) {
            return dVar.toString();
        }
        try {
            j.a aVar = vb.j.f15020f;
            a10 = vb.j.a(dVar + '@' + b(dVar));
        } catch (Throwable th) {
            j.a aVar2 = vb.j.f15020f;
            a10 = vb.j.a(vb.k.a(th));
        }
        if (vb.j.b(a10) != null) {
            a10 = ((Object) dVar.getClass().getName()) + '@' + b(dVar);
        }
        return (String) a10;
    }
}

package vb;

import vb.j;

/* compiled from: Result.kt */
/* loaded from: classes2.dex */
public final class k {
    public static final Object a(Throwable th) {
        jc.l.f(th, "exception");
        return new j.b(th);
    }

    public static final void b(Object obj) {
        if (obj instanceof j.b) {
            throw ((j.b) obj).f15021f;
        }
    }
}

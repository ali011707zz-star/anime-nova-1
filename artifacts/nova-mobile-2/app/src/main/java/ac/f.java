package ac;

import ic.p;
import jc.l;
import vb.j;

/* compiled from: Continuation.kt */
/* loaded from: classes2.dex */
public final class f {
    public static final <R, T> void a(p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar) {
        l.f(pVar, "<this>");
        l.f(dVar, "completion");
        d c10 = bc.b.c(bc.b.b(pVar, r10, dVar));
        j.a aVar = j.f15020f;
        c10.resumeWith(j.a(vb.p.f15031a));
    }
}

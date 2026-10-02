package k1;

import k1.h1;

/* compiled from: PageFetcherSnapshot.kt */
/* loaded from: classes.dex */
public final class j0 {
    public static final boolean a(r rVar, r rVar2, y yVar) {
        jc.l.f(rVar, "$this$shouldPrioritizeOver");
        jc.l.f(rVar2, "previous");
        jc.l.f(yVar, "loadType");
        if (rVar.a() <= rVar2.a() && (!(rVar2.b() instanceof h1.b) || !(rVar.b() instanceof h1.a))) {
            if ((rVar.b() instanceof h1.b) && (rVar2.b() instanceof h1.a)) {
                return false;
            }
            if (rVar.b().a() == rVar2.b().a() && rVar.b().b() == rVar2.b().b()) {
                if (yVar == y.PREPEND && rVar2.b().d() < rVar.b().d()) {
                    return false;
                }
                if (yVar == y.APPEND && rVar2.b().c() < rVar.b().c()) {
                    return false;
                }
            }
        }
        return true;
    }
}

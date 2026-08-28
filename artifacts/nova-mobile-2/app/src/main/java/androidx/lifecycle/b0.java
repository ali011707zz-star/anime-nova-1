package androidx.lifecycle;

import rc.g1;

/* compiled from: PausingDispatcher.kt */
/* loaded from: classes.dex */
public final class b0 extends rc.l0 {

    /* renamed from: g, reason: collision with root package name */
    public final g f2451g = new g();

    @Override // rc.l0
    public void H0(ac.g gVar, Runnable runnable) {
        jc.l.f(gVar, "context");
        jc.l.f(runnable, "block");
        this.f2451g.c(gVar, runnable);
    }

    @Override // rc.l0
    public boolean J0(ac.g gVar) {
        jc.l.f(gVar, "context");
        if (g1.c().K0().J0(gVar)) {
            return true;
        }
        return !this.f2451g.b();
    }
}

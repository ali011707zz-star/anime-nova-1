package rc;

/* compiled from: Builders.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class j {
    public static final <T> T a(ac.g gVar, ic.p<? super q0, ? super ac.d<? super T>, ? extends Object> pVar) throws InterruptedException {
        m1 a10;
        ac.g c10;
        Thread currentThread = Thread.currentThread();
        ac.e eVar = (ac.e) gVar.get(ac.e.f540a);
        if (eVar == null) {
            a10 = b3.f13232a.b();
            c10 = k0.c(v1.f13343f, gVar.plus(a10));
        } else {
            m1 m1Var = null;
            m1 m1Var2 = eVar instanceof m1 ? (m1) eVar : null;
            if (m1Var2 != null && m1Var2.V0()) {
                m1Var = m1Var2;
            }
            a10 = m1Var == null ? b3.f13232a.a() : m1Var;
            c10 = k0.c(v1.f13343f, gVar);
        }
        g gVar2 = new g(c10, currentThread, a10);
        gVar2.Q0(s0.DEFAULT, gVar2, pVar);
        return (T) gVar2.R0();
    }

    public static /* synthetic */ Object b(ac.g gVar, ic.p pVar, int i10, Object obj) throws InterruptedException {
        if ((i10 & 1) != 0) {
            gVar = ac.h.f543f;
        }
        return i.e(gVar, pVar);
    }
}

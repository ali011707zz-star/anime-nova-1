package rc;

import ac.e;

/* compiled from: Builders.common.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class k {
    public static final <T> y0<T> a(q0 q0Var, ac.g gVar, s0 s0Var, ic.p<? super q0, ? super ac.d<? super T>, ? extends Object> pVar) {
        z0 z0Var;
        ac.g c10 = k0.c(q0Var, gVar);
        if (s0Var.c()) {
            z0Var = new l2(c10, pVar);
        } else {
            z0Var = new z0(c10, true);
        }
        ((a) z0Var).Q0(s0Var, z0Var, pVar);
        return (y0<T>) z0Var;
    }

    public static /* synthetic */ y0 b(q0 q0Var, ac.g gVar, s0 s0Var, ic.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = ac.h.f543f;
        }
        if ((i10 & 2) != 0) {
            s0Var = s0.DEFAULT;
        }
        return i.a(q0Var, gVar, s0Var, pVar);
    }

    public static final c2 c(q0 q0Var, ac.g gVar, s0 s0Var, ic.p<? super q0, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        a x2Var;
        ac.g c10 = k0.c(q0Var, gVar);
        if (s0Var.c()) {
            x2Var = new m2(c10, pVar);
        } else {
            x2Var = new x2(c10, true);
        }
        x2Var.Q0(s0Var, x2Var, pVar);
        return x2Var;
    }

    public static /* synthetic */ c2 d(q0 q0Var, ac.g gVar, s0 s0Var, ic.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = ac.h.f543f;
        }
        if ((i10 & 2) != 0) {
            s0Var = s0.DEFAULT;
        }
        return i.c(q0Var, gVar, s0Var, pVar);
    }

    public static final <T> Object e(ac.g gVar, ic.p<? super q0, ? super ac.d<? super T>, ? extends Object> pVar, ac.d<? super T> dVar) {
        Object S0;
        ac.g context = dVar.getContext();
        ac.g plus = context.plus(gVar);
        f2.h(plus);
        if (plus == context) {
            wc.y yVar = new wc.y(plus, dVar);
            S0 = xc.b.d(yVar, yVar, pVar);
        } else {
            e.b bVar = ac.e.f540a;
            if (jc.l.a(plus.get(bVar), context.get(bVar))) {
                f3 f3Var = new f3(plus, dVar);
                Object c10 = wc.e0.c(plus, null);
                try {
                    Object d10 = xc.b.d(f3Var, f3Var, pVar);
                    wc.e0.a(plus, c10);
                    S0 = d10;
                } catch (Throwable th) {
                    wc.e0.a(plus, c10);
                    throw th;
                }
            } else {
                c1 c1Var = new c1(plus, dVar);
                xc.a.f(pVar, c1Var, c1Var, null, 4, null);
                S0 = c1Var.S0();
            }
        }
        if (S0 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return S0;
    }
}

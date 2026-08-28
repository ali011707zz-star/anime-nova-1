package rc;

import java.util.concurrent.CancellationException;

/* compiled from: CoroutineScope.kt */
/* loaded from: classes2.dex */
public final class r0 {
    public static final q0 a(ac.g gVar) {
        d0 b10;
        if (gVar.get(c2.f13236c) == null) {
            b10 = h2.b(null, 1, null);
            gVar = gVar.plus(b10);
        }
        return new wc.f(gVar);
    }

    public static final q0 b() {
        return new wc.f(z2.b(null, 1, null).plus(g1.c()));
    }

    public static final void c(q0 q0Var, CancellationException cancellationException) {
        c2 c2Var = (c2) q0Var.getCoroutineContext().get(c2.f13236c);
        if (c2Var != null) {
            c2Var.d(cancellationException);
            return;
        }
        throw new IllegalStateException(jc.l.m("Scope cannot be cancelled because it does not have a job: ", q0Var).toString());
    }

    public static /* synthetic */ void d(q0 q0Var, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        c(q0Var, cancellationException);
    }

    public static final <R> Object e(ic.p<? super q0, ? super ac.d<? super R>, ? extends Object> pVar, ac.d<? super R> dVar) {
        wc.y yVar = new wc.y(dVar.getContext(), dVar);
        Object d10 = xc.b.d(yVar, yVar, pVar);
        if (d10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return d10;
    }

    public static final void f(q0 q0Var) {
        f2.h(q0Var.getCoroutineContext());
    }

    public static final boolean g(q0 q0Var) {
        c2 c2Var = (c2) q0Var.getCoroutineContext().get(c2.f13236c);
        if (c2Var == null) {
            return true;
        }
        return c2Var.b();
    }
}
